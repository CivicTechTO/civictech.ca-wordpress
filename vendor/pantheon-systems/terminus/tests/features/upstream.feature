Feature: Listing upstreams
  In order to decide on which upstream I can use
  As a user
  I need to be able to list available Pantheon upstreams.

  Background: I am logged in
    Given I am authenticated

  @vcr upstream-list.yml
  Scenario: List my custom and core upstreams
    When I run "terminus upstream:list"
    Then I should get: "-------------------------------------- --------------------------------------------- ------------------------ -------- ----------- -----------------"
    And I should get: "ID                                     Name                                          Machine Name             Type     Framework   Organization"
    And I should get: "-------------------------------------- --------------------------------------------- ------------------------ -------- ----------- -----------------"
    And I should get: "cbdeadf3-669f-4848-94f5-c2354f256de8   Advostarter D8                                advostarter-d8           custom   drupal8"
    And I should get: "b1057113-272a-4509-b0b0-1362ec31d71c   Demo Upstream                                 demo-upstream            custom   drupal"
    And I should get: "4fa4f7d1-e341-48f7-9594-4e7c21b9bb68   Drupal8 PHP                                   drupal8-php7             custom   drupal8     The Upstreamers"
    And I should get: "feb5fe01-bd8b-45dd-a753-e7d48b72b2e6   EasterEgg Kit                                 easteregg-kit            custom   drupal8"
    And I should get: "f575e77a-ff49-4bab-a53c-dbf8f59247bc   Empty Drupal 7                                empty-7                  custom   drupal"
    And I should get: "53711c64-41eb-4f42-9ca9-a370f8e1e36f   Empty WordPress                               empty-wordpress          custom   wordpress"
    And I should get: "c28628b2-6b8f-4962-9838-69295c3fff68   Fairfax County Public Schools                 fcpsschools              custom   drupal8"
    And I should get: "1f3b2569-b4f6-43ca-a8ae-11c38d90778e   Inaccessible Upstream                         inaccessible-upstream    custom   wordpress   The Upstreamers"
    And I should get: "595003f1-e82e-4af8-ac18-65d09da2f6c5   Mindgrub Test                                 mindgrub-test            custom   drupal      The Upstreamers"
    And I should get: "66665092-2d26-47c8-b7c3-a920a37fb805   My Demo Upstream                              my-demo-upstream         custom   drupal8     The Upstreamers"
    And I should get: "745bfede-0557-42ea-a115-246e3b60e8e0   My Upstream for Demo                          my-upstream-for-demo     custom   drupal8     The Upstreamers"
    And I should get: "ba06828d-9507-4217-b7ed-7acb7f9812cf   Pivate Github Upstream                        pivate-github-upstream   custom   wordpress   The Upstreamers"
    And I should get: "c9f1311f-4cae-41ca-8276-cca230c25f37   Protected Upstream                            protected-upstream       custom   drupal      The Upstreamers"
    And I should get: "3a821c48-63b1-4e29-b0f7-8d6a5cafb953   Pubsub Test 2                                 pubsub-test-2            custom   drupal8     The Upstreamers"
    And I should get: "2375d5c6-8dc2-467f-836b-2ddab05ebe28   Ronan's Drops 8                               ronans-drops-8           custom   drupal8     The Upstreamers"
    And I should get: "5de11c12-e5aa-4125-bc07-b0e14b1fd112   Ronan's Drops 8                               ronans-drops-8-sfz       custom   drupal8     The Upstreamers"
    And I should get: "e44da442-2b1e-639a-f790-edf7cb26c9a0   Rutgers School Website - Wordpress            rutgers_wp_custom        custom   wordpress"
    And I should get: "64408272-2d4b-614a-753b-334a2baf4263   Rutgers Unit/Department Website - Wordpress   ruwwpucd                 custom   wordpress"
    And I should get: "158e2876-13a4-427f-96cf-d29a3daa538b   Sprowt                                        sprowt-09022016          custom   drupal"
    And I should get: "de858279-cb87-4664-825c-fcb4c2928717   Static HTML                                   static_html              custom   unknown"
    And I should get: "8ed60b88-e3bb-4981-9701-777ee9e40435   Test PS Digital                               test-ps-digital          custom   wordpress"
    And I should get: "11111111-1111-1111-1111-111111111111   Wordpress Class                               wordpress-class          custom   wordpress"
    And I should get: "bf703821-4c18-45a1-88b8-3d9ec302273d   Backdrop                                      backdrop                 core     backdrop"
    And I should get: "35b0e365-a191-4c70-adbe-9d02d01343f3   Drops 8 Composer                              drops-8-composer         core     drupal8"
    And I should get: "974b75c2-4ba7-49f8-8a54-3a45c07dfe02   Drupal 6                                      drupal6                  core     drupal"
    And I should get: "21e1fada-199c-492b-97bd-0b36b53a9da0   Drupal 7                                      drupal7                  core     drupal"
    And I should get: "8a129104-9d37-4082-aaf8-e6f31154644e   Drupal 8                                      drupal8                  core     drupal8"
    And I should get: "4c7176de-e079-eed1-154d-44d5a9945b65   Empty Upstream                                empty                    core     drupal8"
    And I should get: "e8fe8550-1ab9-4964-8838-2b9abdccf4bf   WordPress                                     wordpress                core     wordpress"
    And I should get: "-------------------------------------- --------------------------------------------- ------------------------ -------- ----------- -----------------"

  @vcr upstream-list.yml
  Scenario: List all of my upstreams
    When I run "terminus upstream:list --all"
    Then I should get: "-------------------------------------- --------------------------------------------- ------------------------ --------- ----------- -----------------"
    And I should get: "ID                                     Name                                          Machine Name             Type      Framework   Organization"
    And I should get: "-------------------------------------- --------------------------------------------- ------------------------ --------- ----------- -----------------"
    And I should get: "bf703821-4c18-45a1-88b8-3d9ec302273d   Backdrop                                      backdrop                 core      backdrop"
    And I should get: "35b0e365-a191-4c70-adbe-9d02d01343f3   Drops 8 Composer                              drops-8-composer         core      drupal8"
    And I should get: "974b75c2-4ba7-49f8-8a54-3a45c07dfe02   Drupal 6                                      drupal6                  core      drupal"
    And I should get: "21e1fada-199c-492b-97bd-0b36b53a9da0   Drupal 7                                      drupal7                  core      drupal"
    And I should get: "8a129104-9d37-4082-aaf8-e6f31154644e   Drupal 8                                      drupal8                  core      drupal8"
    And I should get: "4c7176de-e079-eed1-154d-44d5a9945b65   Empty Upstream                                empty                    core      drupal8"
    And I should get: "e8fe8550-1ab9-4964-8838-2b9abdccf4bf   WordPress                                     wordpress                core      wordpress"
    And I should get: "cbdeadf3-669f-4848-94f5-c2354f256de8   Advostarter D8                                advostarter-d8           custom    drupal8"
    And I should get: "b1057113-272a-4509-b0b0-1362ec31d71c   Demo Upstream                                 demo-upstream            custom    drupal"
    And I should get: "4fa4f7d1-e341-48f7-9594-4e7c21b9bb68   Drupal8 PHP                                   drupal8-php7             custom    drupal8     The Upstreamers"
    And I should get: "feb5fe01-bd8b-45dd-a753-e7d48b72b2e6   EasterEgg Kit                                 easteregg-kit            custom    drupal8"
    And I should get: "f575e77a-ff49-4bab-a53c-dbf8f59247bc   Empty Drupal 7                                empty-7                  custom    drupal"
    And I should get: "53711c64-41eb-4f42-9ca9-a370f8e1e36f   Empty WordPress                               empty-wordpress          custom    wordpress"
    And I should get: "c28628b2-6b8f-4962-9838-69295c3fff68   Fairfax County Public Schools                 fcpsschools              custom    drupal8"
    And I should get: "1f3b2569-b4f6-43ca-a8ae-11c38d90778e   Inaccessible Upstream                         inaccessible-upstream    custom    wordpress   The Upstreamers"
    And I should get: "595003f1-e82e-4af8-ac18-65d09da2f6c5   Mindgrub Test                                 mindgrub-test            custom    drupal      The Upstreamers"
    And I should get: "66665092-2d26-47c8-b7c3-a920a37fb805   My Demo Upstream                              my-demo-upstream         custom    drupal8     The Upstreamers"
    And I should get: "745bfede-0557-42ea-a115-246e3b60e8e0   My Upstream for Demo                          my-upstream-for-demo     custom    drupal8     The Upstreamers"
    And I should get: "ba06828d-9507-4217-b7ed-7acb7f9812cf   Pivate Github Upstream                        pivate-github-upstream   custom    wordpress   The Upstreamers"
    And I should get: "c9f1311f-4cae-41ca-8276-cca230c25f37   Protected Upstream                            protected-upstream       custom    drupal      The Upstreamers"
    And I should get: "3a821c48-63b1-4e29-b0f7-8d6a5cafb953   Pubsub Test 2                                 pubsub-test-2            custom    drupal8     The Upstreamers"
    And I should get: "2375d5c6-8dc2-467f-836b-2ddab05ebe28   Ronan's Drops 8                               ronans-drops-8           custom    drupal8     The Upstreamers"
    And I should get: "5de11c12-e5aa-4125-bc07-b0e14b1fd112   Ronan's Drops 8                               ronans-drops-8-sfz       custom    drupal8     The Upstreamers"
    And I should get: "e44da442-2b1e-639a-f790-edf7cb26c9a0   Rutgers School Website - Wordpress            rutgers_wp_custom        custom    wordpress"
    And I should get: "64408272-2d4b-614a-753b-334a2baf4263   Rutgers Unit/Department Website - Wordpress   ruwwpucd                 custom    wordpress"
    And I should get: "158e2876-13a4-427f-96cf-d29a3daa538b   Sprowt                                        sprowt-09022016          custom    drupal"
    And I should get: "de858279-cb87-4664-825c-fcb4c2928717   Static HTML                                   static_html              custom    unknown"
    And I should get: "8ed60b88-e3bb-4981-9701-777ee9e40435   Test PS Digital                               test-ps-digital          custom    wordpress"
    And I should get: "11111111-1111-1111-1111-111111111111   Wordpress Class                               wordpress-class          custom    wordpress"
    And I should get: "31bc4254-be20-4e8d-afe6-6c585e58435a   Atrium                                        openatrium2              product   drupal"
    And I should get: "6413825e-7c23-3549-bbf1-c797251bf6e9   CU Express 3                                  cuexpress                product   drupal8"
    And I should get: "3b754bc2-48f8-4388-b5b5-2631098d03de   CiviCRM Starter Kit                           civicrm_starterkit       product   drupal"
    And I should get: "8a662dde-53d6-4fdb-8eac-eea9f5848d00   Commerce Kickstart                            kickstart                product   drupal"
    And I should get: "d7370d7e-46fb-4b10-b79f-942b5abf51de   DKAN                                          dkan                     product   drupal"
    And I should get: "0fce9338-bd6f-4b87-a489-e9928a027696   Elephant Ventures Drupal Patterns             drupal-patterns          product   drupal"
    And I should get: "4c17f505-05d0-4b79-b38a-0bc548405a10   Open Outreach                                 openoutreach             product   drupal"
    And I should get: "6eb1ad36-afef-46d7-90d1-3a1bd4296863   Open Restaurant                               openrestaurant           product   drupal"
    And I should get: "2adff196-4672-44c9-af2a-4590963b90d8   OpenAid                                       openaid                  product   drupal"
    And I should get: "86112161-4cb2-410f-8bb1-8a1fb4f56dae   OpenIdeaL                                     openideal                product   drupal"
    And I should get: "b459145b-8771-4597-8b84-684a3d93dce0   OpenPublic                                    openpublic               product   drupal"
    And I should get: "bc77fa2f-2235-4eec-8e6b-4d69d1cf5908   OpenPublish                                   openpublish              product   drupal"
    And I should get: "175cce4f-fa3f-4426-b1a6-e0fae9e19f2e   Panopoly                                      try_panopoly             product   drupal"
    And I should get: "8ad1efe0-0231-42ae-9520-c96241495b82   Panopoly                                      panopoly                 product   drupal"
    And I should get: "216f85b2-620b-470d-9597-f64ade76dc9a   Plato Típico                                  plato_tipico             product   drupal"
    And I should get: "f141b5e0-a614-4294-a86c-6c24df9bf6c5   Pushtape                                      pushtape                 product   drupal"
    And I should get: "10d6937e-1dd2-4490-9950-11867ba43597   RedHen Raiser                                 redhen_raiser            product   drupal"
    And I should get: "10d2f3a5-728a-460f-afa9-dbaee10eef3b   Ruby Test Upstream                            rtupstream               product   wordpress   Reng, Test"
    And I should get: "-------------------------------------- --------------------------------------------- ------------------------ --------- ----------- -----------------"

  @vcr upstream-list.yml
  Scenario: List my custom and core upstreams, filtered by framework
    When I run "terminus upstream:list --framework=drupal8"
    Then I should get: "-------------------------------------- ------------------------------- ---------------------- -------- ----------- -----------------"
    And I should get: "ID                                     Name                            Machine Name           Type     Framework   Organization"
    And I should get: "-------------------------------------- ------------------------------- ---------------------- -------- ----------- -----------------"
    And I should get: "cbdeadf3-669f-4848-94f5-c2354f256de8   Advostarter D8                  advostarter-d8         custom   drupal8"
    And I should get: "4fa4f7d1-e341-48f7-9594-4e7c21b9bb68   Drupal8 PHP                     drupal8-php7           custom   drupal8     The Upstreamers"
    And I should get: "feb5fe01-bd8b-45dd-a753-e7d48b72b2e6   EasterEgg Kit                   easteregg-kit          custom   drupal8"
    And I should get: "c28628b2-6b8f-4962-9838-69295c3fff68   Fairfax County Public Schools   fcpsschools            custom   drupal8"
    And I should get: "66665092-2d26-47c8-b7c3-a920a37fb805   My Demo Upstream                my-demo-upstream       custom   drupal8     The Upstreamers"
    And I should get: "745bfede-0557-42ea-a115-246e3b60e8e0   My Upstream for Demo            my-upstream-for-demo   custom   drupal8     The Upstreamers"
    And I should get: "3a821c48-63b1-4e29-b0f7-8d6a5cafb953   Pubsub Test 2                   pubsub-test-2          custom   drupal8     The Upstreamers"
    And I should get: "5de11c12-e5aa-4125-bc07-b0e14b1fd112   Ronan's Drops 8                 ronans-drops-8-sfz     custom   drupal8     The Upstreamers"
    And I should get: "2375d5c6-8dc2-467f-836b-2ddab05ebe28   Ronan's Drops 8                 ronans-drops-8         custom   drupal8     The Upstreamers"
    And I should get: "35b0e365-a191-4c70-adbe-9d02d01343f3   Drops 8 Composer                drops-8-composer       core     drupal8"
    And I should get: "8a129104-9d37-4082-aaf8-e6f31154644e   Drupal 8                        drupal8                core     drupal8"
    And I should get: "4c7176de-e079-eed1-154d-44d5a9945b65   Empty Upstream                  empty                  core     drupal8"
    And I should get: "-------------------------------------- ------------------------------- ---------------------- -------- ----------- -----------------"

  @vcr upstream-list.yml
  Scenario: List my custom and core upstreams, filtered by name
    When I run "terminus upstream:list --name=Drops"
    Then I should get: "-------------------------------------- ------------------ -------------------- -------- ----------- -----------------"
    And I should get: "ID                                     Name               Machine Name         Type     Framework   Organization"
    And I should get: "-------------------------------------- ------------------ -------------------- -------- ----------- -----------------"
    And I should get: "2375d5c6-8dc2-467f-836b-2ddab05ebe28   Ronan's Drops 8    ronans-drops-8       custom   drupal8     The Upstreamers"
    And I should get: "5de11c12-e5aa-4125-bc07-b0e14b1fd112   Ronan's Drops 8    ronans-drops-8-sfz   custom   drupal8     The Upstreamers"
    And I should get: "35b0e365-a191-4c70-adbe-9d02d01343f3   Drops 8 Composer   drops-8-composer     core     drupal8"
    And I should get: "-------------------------------------- ------------------ -------------------- -------- ----------- -----------------"

  @vcr upstream-list.yml
  Scenario: Get info on an upstream
    When I run "terminus upstream:info WordPress"
    Then I should get: "-------------- ------------------------------------------------------------------------------------------"
    And I should get: "ID             e8fe8550-1ab9-4964-8838-2b9abdccf4bf"
    And I should get: "Name           WordPress"
    And I should get: "Machine Name   wordpress"
    And I should get: "Type           core"
    And I should get: "Framework      wordpress"
    And I should get: "Description    Open source software with powerful features, and the freedom to build anything you want."
    And I should get: "Organization"
    And I should get: "-------------- ------------------------------------------------------------------------------------------"

  @vcr org-upstream-list.yml
  Scenario: List my organization's core and custom upstreams
    When I run "terminus upstream:list --org=the-upstreamers"
    Then I should get: "-------------------------------------- ------------------------ ------------------------ -------- ----------- -----------------"
    And I should get: "ID                                     Name                     Machine Name             Type     Framework   Organization"
    And I should get: "-------------------------------------- ------------------------ ------------------------ -------- ----------- -----------------"
    And I should get: "4fa4f7d1-e341-48f7-9594-4e7c21b9bb68   Drupal8 PHP              drupal8-php7             custom   drupal8     The Upstreamers"
    And I should get: "1f3b2569-b4f6-43ca-a8ae-11c38d90778e   Inaccessible Upstream    inaccessible-upstream    custom   wordpress   The Upstreamers"
    And I should get: "595003f1-e82e-4af8-ac18-65d09da2f6c5   Mindgrub Test            mindgrub-test            custom   drupal      The Upstreamers"
    And I should get: "66665092-2d26-47c8-b7c3-a920a37fb805   My Demo Upstream         my-demo-upstream         custom   drupal8     The Upstreamers"
    And I should get: "745bfede-0557-42ea-a115-246e3b60e8e0   My Upstream for Demo     my-upstream-for-demo     custom   drupal8     The Upstreamers"
    And I should get: "ba06828d-9507-4217-b7ed-7acb7f9812cf   Pivate Github Upstream   pivate-github-upstream   custom   wordpress   The Upstreamers"
    And I should get: "c9f1311f-4cae-41ca-8276-cca230c25f37   Protected Upstream       protected-upstream       custom   drupal      The Upstreamers"
    And I should get: "3a821c48-63b1-4e29-b0f7-8d6a5cafb953   Pubsub Test 2            pubsub-test-2            custom   drupal8     The Upstreamers"
    And I should get: "5de11c12-e5aa-4125-bc07-b0e14b1fd112   Ronan's Drops 8          ronans-drops-8-sfz       custom   drupal8     The Upstreamers"
    And I should get: "2375d5c6-8dc2-467f-836b-2ddab05ebe28   Ronan's Drops 8          ronans-drops-8           custom   drupal8     The Upstreamers"
    And I should get: "-------------------------------------- ------------------------ ------------------------ -------- ----------- -----------------"