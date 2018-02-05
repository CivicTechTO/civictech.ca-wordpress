<div class="meetup-hero" style="background-color: #000; color: #FFF;">

  <?php
    global $events;
      foreach ( $events as $event ) {
        $regex = "/.+ #(?<number>\d+)(?: with (?<speaker>[\w &']+))?(?:: (?<topic>.+))?/";
        preg_match($regex, $event->name, $matches);
        $hacknight_number = $matches['number'];
        $speaker = $matches['speaker'];
        $topic = $matches['topic'];
      }
    ?>

  <div class="container meetup-details">

    <div class="meetup-number">
      <?php
        global $events;
        foreach ( $events as $event ) {
          echo str_replace(" ", "/", $hacknight_number);
        }
      ?>
    </div>
    <div class="col-sm-4">
    </div>
    <div class="col-sm-8">
      <?php
      global $events;

      foreach ( $events as $event ) {
        $venue = $event->venue->name.' '.$event->venue->address_1 . ', ' . $event->venue->city . ', ' . $event->venue->state;
        //PATCON: the var here expects meetup event name to end with "with <speaker or topic>"
        $description = substr($event->description, 0, strpos($event->description, "About the Hacknight"));
      	printf(
      		'<h5 class="meetup-eyebrow">Next Civic Tech Toronto Hacknight</h5>
          <h2><div class="calendar-icon"></div>%1$s</h2>
          <h1 class="meetup-topic" style="margin-bottom: 0;">%6$s</h1>
          <h3 class="meetup-speaker">%2$s</h3>
          <div class="meetup-descriptor">%3$s</div>
          <div class="meetup-rsvp">
            <a class="btn btn-primary custom-button red-btn" style="margin-right: 20px; margin-left: 0; padding-left: 50px; padding-right: 50px;" href="%4$s">RSVP</a><span class="going-icon"></span><span style="font-weight: 300;">%5$s going</span></div>',
          date( 'l F d, g:ia', intval( $event->time / 1000 + $event->utc_offset / 1000 ) ),
          $speaker,
          strip_tags($description, '<p>'),
      		esc_url( $event->event_url ),
          ($event->yes_rsvp_count),
          $topic
      	);
      }
      ?>
    </div>
  </div>
</div>
