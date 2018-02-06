<div class="meetup-hero" style="background-color: #000; color: #FFF;">

  <?php
    global $events;
      foreach ( $events as $event ) {
        //PATCON: the var here expects meetup event name to end with "Blah blah hacknight #123 [with <speaker(s)>][: <topic>]
        //
        // For example:
        //   - Civic Hacknight #123 with Alice Smith & Bob Smith: Some Topic
        //   - Civic Hacknight #123: Some Topic
        //   - Civic Hacknight #123 with Alice Smith
        //
        // Note: You can test strings via: http://www.phpliveregex.com/
        $regex = "/.+ #(?<number>\d+)(?: with (?<speaker>[\w &']+))?(?:: (?<topic>.+))?/";
        preg_match($regex, $event->name, $matches);
        $hacknight_number = $matches['number'];
        $title = array_key_exists('topic', $matches) ? $matches['topic'] : $matches['speaker'];
        $subtitle = array_key_exists('speaker', $matches) ? $matches['speaker'] : null;
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
        $description = substr($event->description, 0, strpos($event->description, "About the Hacknight"));
      	printf(
      		'<h5 class="meetup-eyebrow">Next Civic Tech Toronto Hacknight</h5>
          <h2><div class="calendar-icon"></div>%1$s</h2>
          <h1 class="meetup-title" style="margin-bottom: 0;">%2$s</h1>
          <h3 class="meetup-subtitle">%3$s</h3>
          <div class="meetup-descriptor">%4$s</div>
          <div class="meetup-rsvp">
            <a class="btn btn-primary custom-button red-btn" style="margin-right: 20px; margin-left: 0; padding-left: 50px; padding-right: 50px;" href="%5$s">RSVP</a><span class="going-icon"></span><span style="font-weight: 300;">%6$s going</span></div>',
          date( 'l F d, g:ia', intval( $event->time / 1000 + $event->utc_offset / 1000 ) ),
          $title,
          $subtitle,
          strip_tags($description, '<p>'),
      		esc_url( $event->event_url ),
          ($event->yes_rsvp_count)
      	);
      }
      ?>
    </div>
  </div>
</div>
