<% content_for :head do %>
  <meta name="turbolinks-cache-control" content="no-cache">
<% end %>
<!-- main content here -->
<div class="container-fluid">
  <div class="row bio-container">
    <div class="col-md-12 col-lg-4">
      <div class="row agent-bio">
        <div class="col-sm-12 col-md-3 agent-profile-image">
          <% if @page_user.avatar.url == '/avatars/original/missing.png' %>
            <%= image_tag 'placeholder_user.jpg', :class => "img-fluid profile-img" %>
          <% else %>
            <%= image_tag @page_user.avatar.url(:medium), :class => "img-fluid profile-img", :onerror => 'this.src="placeholder_user.jpg"' %>
          <% end %>
        </div>
        <div class="col-sm-12 col-md-9 agent-bio-info">
          <h1><%= @page_user.first.titleize %>
            <%= @page_user.last.titleize %></h1>
          <p class="agent-id">Agent ID:
            <%= @page_user.agent_id %></p>
          <p><%= @page_user.about %></p>
          <p class="bio-contact">
            <i class="fas fa-envelope"></i>
            <%= @page_user.email %>
            <i class="fas fa-phone"></i>
            <%= @page_user.phone_number %>
          </p>
          <p>
            <% if @page_user.facebook? || @page_user.twitter? || @page_user.instagram? || @page_user.youtube? || @page_user.linkedin? %>
              Let's Connect:
            <% end %>
            <% if @page_user.facebook? %>
              <a href="<%= @page_user.facebook %>">
                <i class="fa-lg fab fa-facebook-f"></i>
              </a>
            <% end %>
            <% if @page_user.twitter? %>
              <a href="<%= @page_user.twitter %>">
                <i class="fa-lg fab fa-twitter"></i>
              </a>
            <% end %>
            <% if @page_user.instagram? %>
              <a href="<%= @page_user.instagram %>">
                <i class="fa-lg fab fa-instagram"></i>
              </a>
            <% end %>
            <% if @page_user.youtube? %>
              <a href="<%= @page_user.youtube %>">
                <i class="fa-lg fab fa-youtube"></i>
              </a>
            <% end %>
            <% if @page_user.linkedin? %>
              <a href="<%= @page_user.linkedin %>">
                <i class="fa-lg fab fa-linkedin-in"></i>
              </a>
            <% end %>
          </p>
        </div>
      </div>
    </div>

    <div class="col-md-12 col-lg-4">
      <div class="vacation-quote">
        <%= image_tag 'lightbulb.png', :class => "img-fluid" %>
        <div class="vacation-quote-text">
          <h4>
            Need ideas for your next vacation?</h4>
          <p>
            Tell me your details, and I’ll give you great ideas and prices!</p>
        </div>
        <h5>
          <a href="<%= @page_user.username %>/quote" class="button">Vacation Quote Request</a>
        </h5>
      </div>
    </div>

<div class="col-md-12 col-lg-4">
      <div class="vacation-quote">
        <%= image_tag 'lightbulb.png', :class => "img-fluid" %>
        <div class="vacation-quote-text">
          <h4>
            Need ideas for your next vacation?</h4>
          <p>
            Tell me your details, and I’ll give you great ideas and prices!</p>
        </div>
        <h5>
          <a href="<%= @page_user.username %>/quote" class="button">Vacation Quote Request</a>
        </h5>
      </div>
    </div>


  </div>


  <div class="row">
    <div class="col-xl-6 col-lg-12">

      <% if @specials %>
        <div class="featured-deals shadow-pop">
          <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
              <% @specials.each_with_index do |image, index| %>
                <li data-target="#demo" data-slide-to="#{index}" <%= index == 0 ? 'class="active"' : '' %>></li>
              <% end %>
            </ol>
            <div class="carousel-inner">
              <% @specials.each_with_index do |special, index| %>
                <div class="carousel-item  <%= index == 0 ? 'active' : '' %>" style="background-image: url('<%= special.image.url %>')">
                  <div class="quote-overlay"></div>
                  <div class="carousel-caption d-md-flex">
                    <h6>My Featured Deals</h6>
                    <h3><%= special.title %></h3>
                    <p class="carousel-description"><%= special.description %></p>
                    <h4>Starting From
                      <%= number_to_currency(special.price) %>
                      pp</h4>
                    <a class="button orange-button" href="<%= special.link %>">LEARN MORE</a>
                  </div>
                </div>
              <% end %>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="sr-only">Next</span>
            </a>
          </div>
        </div>
      <% end %>
    </div>



<div id="blog" class="col-xl-6 col-lg-12">
  <h1>Travel Tips & Inspiration</h1>
  <p > Read about various destination that will inspire you to travel to parts unknown, the evolution way!   </p>
  <a href="https://evotravelagent.com/blogs">
    <input id="button" type="button" value="READ MORE"> </a>
</div>

 <div class="col-md-12 row-title">
      <h3>Book your next journey</h3>
</div>

<%# FAREGRABBR %>
<div class="col-lg-6 faregrabbr">
  <%= render "/users/faregrabbr" %>
</div>

<%# SEARCH CRUISE %>
<div class=" col-lg-6 ppo-search-container">
    <h4 class="ppo-PageElement-Title">Cruises/Vacations</h4>
<div class="contentrow">
    <form name="VPSearchForm3383" id="frmSearchBox3383" method="post" action="https://secure.vacationport.net/TravelContent/SearchLoading" target="_self">
        <input type="hidden" name="host" value="archertravel.vacationport.net">



        <fieldset class="ppo-fieldset">
                        <div>
                            <label class="labell" for="ddTravelType3383">Travel Type:</label>

                            <select id="ddTravelType3383" name="selTravelType" onchange="SetTravelTypeFilter('', '3383', true)">
                                    <option> Select Your Cruise Option</option>
                                    <option value="24*Cruises and Vacation Packages">Cruises and Vacation Pkgs</option>
                                    <option value="3*Cruises Only">Cruises Only</option>
                            </select>
                        </div>
                        <input name="TravelTypeFilter" id="TravelTypeFilter3383" type="hidden" value="">
            <div>
                                    <div>
                                        <label class="labell" for="ddTravelDestination3383">Destination:</label>
                                        <select id="ddTravelDestination3383" name="selTextDestination">
                                            <option value="">Any Destination</option>
                                                <option value="Africa*Africa">Africa</option>
                                                <option value="Alaska*Alaska">Alaska</option>
                                                <option value="Antarctica*Antarctica">Antarctica</option>
                                                <option value="Arctic*Arctic">Arctic</option>
                                                <option value="Aruba*Aruba">Aruba</option>
                                                <option value="Asia*Asia">Asia</option>
                                                <option value="Australia*Australia">Australia</option>
                                                <option value="Bahamas*Bahamas">Bahamas</option>
                                                <option value="Baltic*Baltic">Baltic</option>
                                                <option value="Bermuda*Bermuda">Bermuda</option>
                                                <option value="Britain and Ireland*Britain and Ireland">Britain and Ireland</option>
                                                <option value="California*California">California</option>
                                                <option value="Canada and New England*Canada and New England">Canada and New England</option>
                                                <option value="Western Canada*Western Canada">Canada (Western)</option>
                                                <option value="Cancun*Cancun">Cancun</option>
                                                <option value="Caribbean*Caribbean">Caribbean</option>
                                                <option value="Western Caribbean*Western Caribbean">Caribbean (Western)</option>
                                                <option value="Eastern Caribbean*Eastern Caribbean">Caribbean (Eastern)</option>
                                                <option value="Southern Caribbean*Southern Caribbean">Caribbean (Southern)</option>
                                                <option value="Central America*Central America">Central America</option>
                                                <option value="Europe*Europe">Europe</option>
                                                <option value="Florida*Florida">Florida</option>
                                                <option value="Hawaii*Hawaii">Hawaii</option>
                                                <option value="Jamaica*Jamaica">Jamaica</option>
                                                <option value="Las Vegas*Las Vegas">Las Vegas</option>
                                                <option value="Mediterranean*Mediterranean">Mediterranean</option>
                                                <option value="Mexican Riviera*Mexican Riviera">Mexican Riviera</option>
                                                <option value="Mexico*Mexico">Mexico</option>
                                                <option value="Middle East*Middle East">Middle East</option>
                                                <option value="New Zealand*New Zealand">New Zealand</option>
                                                <option value="Northern Europe*Northern Europe">Northern Europe</option>
                                                <option value="Panama Canal*Panama Canal">Panama Canal</option>
                                                <option value="South America*South America">South America</option>
                                                <option value="South Pacific*South Pacific">South Pacific</option>
                                                <option value="Transatlantic*Transatlantic">Transatlantic</option>
                                                <option value="USA*USA">USA</option>
                                                <option value="Eastern US*Eastern US">USA (Eastern)</option>
                                                <option value="Western US*Western US">USA (Western)</option>
                                        </select>
                                       
                                        or<br>
                                        <label class="labell" for="txtTravelDestination3383">Type In Destination:</label>
                                        <input onkeyup="typeInDestinationChanged(3383);" id="txtTravelDestination3383" name="txtDestination" type="text" placeholder="Type in Destination">
                                        <div id="destinationMatchesDiv3383" class="ppo-destinationMatchesClass"></div>
                                    </div>
                            <div>
                                <label class="labell" for="ddTravelDate3383">Departure Date:</label>
                                <select id="ddTravelDate3383" name="selWhen">
                                    <option value="">Any Date</option>
                                        <option value="06*2020*June 2020">June 2020</option>
                                        <option value="07*2020*July 2020">July 2020</option>
                                        <option value="08*2020*August 2020">August 2020</option>
                                        <option value="09*2020*September 2020">September 2020</option>
                                        <option value="10*2020*October 2020">October 2020</option>
                                        <option value="11*2020*November 2020">November 2020</option>
                                        <option value="12*2020*December 2020">December 2020</option>
                                        <option value="01*2021*January 2021">January 2021</option>
                                        <option value="02*2021*February 2021">February 2021</option>
                                        <option value="03*2021*March 2021">March 2021</option>
                                        <option value="04*2021*April 2021">April 2021</option>
                                        <option value="05*2021*May 2021">May 2021</option>
                                        <option value="06*2021*June 2021">June 2021</option>
                                        <option value="07*2021*July 2021">July 2021</option>
                                        <option value="08*2021*August 2021">August 2021</option>
                                        <option value="09*2021*September 2021">September 2021</option>
                                        <option value="10*2021*October 2021">October 2021</option>
                                        <option value="11*2021*November 2021">November 2021</option>
                                        <option value="12*2021*December 2021">December 2021</option>
                                        <option value="01*2022*January 2022">January 2022</option>
                                        <option value="02*2022*February 2022">February 2022</option>
                                        <option value="03*2022*March 2022">March 2022</option>
                                        <option value="04*2022*April 2022">April 2022</option>
                                        <option value="05*2022*May 2022">May 2022</option>
                                        <option value="06*2022*June 2022">June 2022</option>
                                </select>
                            </div>
                            <div>
                                <label class="labell" for="ddTravelLength3383">Travel Length:</label>
                                <select id="ddTravelLength3383" name="selLength">
                                    <option value="">Any Length</option>
                                    <option value="0*2*0-2 nights">0-2 nights</option>
                                    <option value="3*6*3-6 nights">3-6 nights</option>
                                    <option value="7*9*7-9 nights">7-9 nights</option>
                                    <option value="10*14*10-14 nights">10-14 nights</option>
                                    <option value="14**over 14 nights">over 14 nights</option>
                                </select>
                            </div>
                <div>

                    <div style="float: right">
                        <button class="ppo-button-default ppo-button-go " type="submit">Go&nbsp;►</button>
                    </div>
                </div>
            </div>
        </fieldset>
 </form>
</div>
</div>


    
  </div>

  <div class="row journey">

    <div class="col-md-12 row-title">
      <h3>Where's your next journey?</h3>
    </div>

    <div class="col-sm-12 col-md-6 col-lg-3 journey-wrapper">
      <div>
        <div class="item item-1">
          <a href="http://archertravel.vacationport.net/TravelContent/SearchResults?SearchId=52619&account=Hot+Deals+Cruises">
            <div class="featured-image shadow-pop">
              <%= image_tag "cruise.jpg", class: "img-fluid" %>
              <div class="journey-title">
                <img class="img-fluid wave-line" src="/assets/wavy-line-024904b62cc71ec3bf803887e17a8e62635837887a47597386abe258435f00d2.png" alt="Wavy line">
                <h3 class="journey-name">Cruises</h3>
              </div>
            </div>
          </a>

        </div>
      </div>
    </div>
    <div class="col-sm-12 col-md-6 col-lg-3 journey-wrapper">
      <div>
        <div class="item item-3">
          <a href="https://www.latesttraveloffers.net/lton/ltonclct.asp?distributorcode=VTHARC&distributoraccount=South+America&searchid=57118">
            <div class="featured-image shadow-pop">
              <img class="img-fluid" src="/assets/Caribbean-3136eecc33b3c21226e9bd82ab2ef2ab2d5a207103c04b099a72906b79b479c3.jpg" alt="Caribbean">
              <div class="journey-title">
                <img class="img-fluid wave-line" src="/assets/wavy-line-024904b62cc71ec3bf803887e17a8e62635837887a47597386abe258435f00d2.png" alt="Wavy line">
                <h3 class="journey-name">South America</h3>
              </div>
            </div>
          </a>

        </div>
      </div>
    </div>

    <div class="col-sm-12 col-md-6 col-lg-3 journey-wrapper">
      <div>
        <div class="item item-2">
          <a href="https://www.latesttraveloffers.net/lton/ltonclct.asp?distributorcode=VTHARC&distributoraccount=Hawaii&searchid=57112">
            <div class="featured-image shadow-pop">
              <%= image_tag "hawai.jpg", class: "img-fluid" %>
              <div class="journey-title">
                <img class="img-fluid wave-line" src="/assets/wavy-line-024904b62cc71ec3bf803887e17a8e62635837887a47597386abe258435f00d2.png" alt="Wavy line">
                <h3 class="journey-name">Hawaii</h3>
              </div>
            </div>
          </a>
        </div>
      </div>
    </div>
    <div class="col-sm-12 col-md-6 col-lg-3 journey-wrapper">
      <div>
        <div class="item item-2">
          <a href="https://www.latesttraveloffers.net/lton/ltonclct.asp?distributorcode=VTHARC&distributoraccount=Europe&searchid=57113">
            <div class="featured-image shadow-pop">

              <img class="img-fluid" src="/assets/Europe-a622ac805c8d05d73817a1345352877823a6ced835304490768f8d41194dcc30.jpg" alt="Europe">
              <div class="journey-title">
                <img class="img-fluid wave-line" src="/assets/wavy-line-024904b62cc71ec3bf803887e17a8e62635837887a47597386abe258435f00d2.png" alt="Wavy line">
                <h3 class="journey-name">Europe</h3>
              </div>
            </div>
          </a>
        </div>
      </div>
    </div>

    <div class="col-sm-12 col-md-6 col-lg-3 journey-wrapper">
      <div>
        <div class="item item-2">
          <a href="https://www.latesttraveloffers.net/lton/ltonclct.asp?distributorcode=VTHARC&distributoraccount=Caribbean&searchid=57114">
            <div class="featured-image shadow-pop">
              <%= image_tag "carri.jpg", class: "img-fluid" %>
              <div class="journey-title">
                <img class="img-fluid wave-line" src="/assets/wavy-line-024904b62cc71ec3bf803887e17a8e62635837887a47597386abe258435f00d2.png" alt="Wavy line">
                <h3 class="journey-name">Caribbean</h3>
              </div>
            </div>
          </a>
        </div>
      </div>
    </div>
    <div class="col-sm-12 col-md-6 col-lg-3 journey-wrapper">
      <div>
        <div class="item item-1">
          <a href="https://www.latesttraveloffers.net/lton/ltonclct.asp?distributorcode=VTHARC&distributoraccount=Asia&searchid=57115">
            <div class="featured-image shadow-pop">

              <%= image_tag "asia.jpg", class: "img-fluid" %>
              <div class="journey-title">
                <img class="img-fluid wave-line" src="/assets/wavy-line-024904b62cc71ec3bf803887e17a8e62635837887a47597386abe258435f00d2.png" alt="Wavy line">
                <h3 class="journey-name">Asia</h3>
              </div>
            </div>
          </a>
        </div>
      </div>
    </div>

    <div class="col-sm-12 col-md-6 col-lg-3 journey-wrapper">
      <div>
        <div class="item item-2">
          <a href="https://www.latesttraveloffers.net/lton/ltonclct.asp?distributorcode=VTHARC&distributoraccount=USA&searchid=57116">
            <div class="featured-image shadow-pop">

              <%= image_tag "usa.jpg", class: "img-fluid" %>
              <div class="journey-title">
                <img class="img-fluid wave-line" src="/assets/wavy-line-024904b62cc71ec3bf803887e17a8e62635837887a47597386abe258435f00d2.png" alt="Wavy line">
                <h3 class="journey-name">USA</h3>
              </div>
            </div>
          </a>
        </div>
      </div>
    </div>
    <div class="col-sm-12 col-md-6 col-lg-3 journey-wrapper">
      <div>
        <div class="item item-3">
          <a href="https://www.latesttraveloffers.net/lton/ltonclct.asp?distributorcode=VTHARC&distributoraccount=Mexico&searchid=57117">
            <div class="featured-image shadow-pop">

              <img class="img-fluid" src="/assets/Hawaii-37c674e2ee800f4ea97a94bf8fd5c985a8c046d4297ab6695a6fb5bf3e896c98.jpg" alt="Hawaii">
              <div class="journey-title">
                <img class="img-fluid wave-line" src="/assets/wavy-line-024904b62cc71ec3bf803887e17a8e62635837887a47597386abe258435f00d2.png" alt="Wavy line">
                <h3 class="journey-name">Mexico</h3>
              </div>
            </div>
          </a>
        </div>
      </div>
    </div>
  </div>

  <% if @weekly %>
    <div class="row weekly-specials">
      <div class="col-md-12 row-title">
        <h3>Weekly travel specials</h3>
      </div>
      <% @weekly.each do |weekly| %>
        <div class="col-sm-12 col-md-6 col-xl-3 d-flex align-items-stretch row-content">
          <div class="card">
            <div class="card-top" style="background-image: url('<%= weekly.image.url %>')">
              <div class="quote-overlay-sm"></div>
              <div class="special-title-image">
                <% if weekly.upper_text %>
                  <h3 class="special-header"><%= weekly.upper_text %></h3>
                <% end %>
              </div>
              <div class="pricing-info">
                <p class="special-title-desc">Per Person</p>
                <p class="special-title-price">
                  <%= number_to_currency(weekly.prices) %>
                </p>
              </div>
            </div>
            <div class="card-body d-flex flex-column align-items-center">
              <h5 class="card-title"><%= weekly.title %></h5>
              <% if weekly.supplier %>
                <p class="card-text"><%= weekly.supplier %></p>
              <% end %>
              <a href="/weeklies/<%= @page_user.username %>/<%= weekly.id %>" class="btn mt-auto button blue-button">VIEW MORE</a>
            </div>
          </div>
        </div>
      <% end %>
    <% end %>
  </div> 

  <!-- <div class="row travel blog"> <div class="col-md-12 row-title"> <h3>Travel tips &amp; inspiration</h3> </div> <div class="col-sm-12 col-md-6 col-xl-3 d-flex align-items-stretch"> <div class="card"> <img class="card-img-top"
  src="/assets/sunscreen-aed8817478d8bb060ad62e4c463dbc200c8426a3ce54c111980e4ba72577eddf.jpg" alt="Sunscreen"> <div class="card-body d-flex flex-column align-items-center"> <h5 class="card-title">Summer travel tips: <br> More than just wearing
  Sunscreen</h5> <a href="/blogs/11" class="btn mt-auto button">Read More</a> </div> </div> </div> <div class="col-sm-12 col-md-6 col-xl-3 d-flex align-items-stretch"> <div class="card"> <img class="card-img-top"
  src="/assets/pafis-c631a6598f91ba5cc3758e9f5b94d13735e5c70195daecb29d54b0087cf705a2.jpg" alt="Pafis"> <div class="card-body d-flex flex-column align-items-center"> <h5 class="card-title">6 things you never knew about Paris, France</h5> <a
  href="/blogs/11" class="btn mt-auto button">Read More</a> </div> </div> </div> <div class="col-sm-12 col-md-6 col-xl-3 d-flex align-items-stretch"> <div class="card"> <img class="card-img-top"
  src="/assets/gourmet-733b29451d153af26ca273043453ce0b505d4db043de265b86b1bbc718b18c2b.jpg" alt="Gourmet"> <div class="card-body d-flex flex-column align-items-center"> <h5 class="card-title">This city in Mexico has the most Michelin Stars</h5> <a
  href="/blogs/11" class="btn mt-auto button">Read More</a> </div> </div> </div> <div class="col-sm-12 col-md-6 col-xl-3 d-flex align-items-stretch"> <div class="card"> <img class="card-img-top"
  src="/assets/pafis-c631a6598f91ba5cc3758e9f5b94d13735e5c70195daecb29d54b0087cf705a2.jpg" alt="Pafis"> <div class="card-body d-flex flex-column align-items-center"> <h5 class="card-title">Why all inclusives should be your next vacation</h5> <a
  href="/blogs/11" class="btn mt-auto button">Read More</a> </div> </div> </div> </div> -->
  <div class="interested-agent row">
    <div class="col-sm-12 col-lg-1">
      <%= image_tag "travel-agent-star.png", class: "img-fluid" %>
    </div>
    <div class="col-md-12 col-lg-7">
      <div class="interested-agent-text">
        <h4>
          Interested in becoming a travel agent?</h4>
        <p>
          Find out more about how to make money and travel!</p>
      </div>
    </div>
    <div class="col-md-12 col-lg-4 find-out-more">
      <h5>
        <a href="http://myevolutiontravel.com/" class="button">FIND OUT MORE</a>
      </h5>
    </div>

  </div>

</div>

<datalist id="origin-list"></datalist>

<datalist id="dest-list"></datalist>

<datalist id="place-list"></datalist>

<datalist id="pickup-list"></datalist>

<datalist id="dropoff-list"></datalist>

<!-- Confirm Modal -->
<div class="modal fade" id="confirmModal" tabindex="-1" role="dialog" aria-labelledby="confirmModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header" id="confirm-header">
        <h3 class="modal-title" id="confirmModalLabel">Thanks! We'll be in touch</h3>
        <button type="button" class="close confirm-close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
    </div>
  </div>
</div>