<?php
/*
 * Template Name: Projects
 * Template Post Type: page
 */

get_header();  ?>
<div class="clear"></div>
</header> <!-- / END HOME SECTION  -->

<div id="content" class="site-content">
	<div class="container">
    <div class="content-left-wrap col-md-12">
      <div id="primary" class="content-area">
        <main id="main" class="site-main" role="main">
          <article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
            <header class="entry-header">
              <h1 class="entry-title"><?php the_title(); ?></h1>
            </header><!-- .entry-header -->
            <div class="entry-content">

              <div style="border: 2px solid #ccc; padding: 30px;">
                <h3 class="project-page-header">Every Tuesday evening, citizens meet at Civic Tech Toronto to collaborate on projects aimed at finding solutions to civic challenges.</h3>
                <h3 class="project-page-header no-margin">Listed below are a snippet of the projects you can contribute to.</h3>
              </div>
              &nbsp;

              <template v-if="featuredCards.length > 0">
                <template v-for="card in featuredCards">
                  <div class="clear">
                    <div class="project-image">
                      <img v-if="coverAttachment(card)" class="size-thumbnail alignleft wp-image-566" :src="coverAttachment(card).previews[3].url" :alt="coverAttachment(card).name | cleanAttachmentName" :title="coverAttachment(card).name | cleanAttachmentName" />
                    </div>
                    <div class="project-content">
                      <h1>
                        {{ card.name }}
                        <span v-if="projectStageLabel(card)" class="project-phase">{{ projectStageLabel(card).normalized }}</span>
                        <a v-bind:href="'http://trello.com/c/' + card.shortLink">
                          <i class="fa fa-pencil" aria-hidden="true" style="float: right; color: #CCCCCC;"></i>
                        </a>
                      </h1>
                      <p v-html="$options.filters.markdownify(card.desc)" class="m-b-1 project-copy">
                      </p>
                      <p class="m-b-1">
                        Leads: <span v-for="member in members(card)" class="member">{{ member.fullName }}<template v-if="!$last(member, members(card))">, </template></span>
                      </p>
                      <p v-if="chatLink(card)" class="m-b-2">
                        Chat: <a :href="chatLink(card).url">{{chatLink(card).name | cleanAttachmentName}}</a>
                      </p>
                      <div>
                        <a v-if="primaryLink(card)" class="btn red-btn btn-primary custom-button no-margin margin-r-1 m-b-1" :href="primaryLink(card).url">
                          {{ primaryLink(card).name | cleanAttachmentName }}
                        </a>
                        <a v-for="link in secondaryLinks(card)" class="btn green-btn btn-primary custom-button no-margin margin-r-1 m-b-1" :href="link.url">
                          {{ link.name | cleanAttachmentName }}
                        </a>
                      </div>
                      <div>
                        <a v-if="attributionAttachment(card)" class="attribution" :href="attributionAttachment(card).url">
                          {{ attributionAttachment(card).name | cleanAttachmentName }}
                        </a>
                      </div>
                    </div>
                  </div>
                  <hr class="spacious" />
                </template>
              </template>
              <template v-else><h1>Loading...</h1></template>

              <div style="border: 2px solid #ccc; padding: 30px; margin-bottom: 40px;">
                <h2>Interested in contributing to one of the groups?</h2>
                <h2 style="margin-bottom: 0;"><a href="http://www.meetup.com/Civic-Tech-Toronto/">Come to one of our hacknights to meet the project team.</a></h2>
              </div>
            </div><!-- .entry-content -->

          </article>
        </main><!-- #main -->
      </div><!-- #primary -->
    </div><!-- .content-left-wrap -->
	</div><!-- .container -->

<?php get_footer(); ?>
