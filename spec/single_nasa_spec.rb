describe 'Testing Nasa API' do

  before(:all) do
    @nasa_feedback = NasaInfo.new.single_nasa_info
  end

  it "should have a results hash" do
    expect(@nasa_feedback.get_nasa_data).to be_kind_of Hash
  end

  it "should have copyright has a string" do
    expect(@nasa_feedback.get_copyright_value).to be_kind_of String
  end

  it "should return date as a string" do
    expect(@nasa_feedback.get_date).to be_kind_of String
  end

  it "should return explanation as a string" do
    expect(@nasa_feedback.get_explanation).to be_kind_of String
  end

  it "should return hdurl as a string" do
    expect(@nasa_feedback.get_hdurl).to be_kind_of String
  end

  it "should return media_type as a string" do
    expect(@nasa_feedback.get_media_type).to be_kind_of String
  end

  it "should return service_version as a string" do
    expect(@nasa_feedback.get_service_version).to be_kind_of String
  end

  it "should return title as a string" do
    expect(@nasa_feedback.get_title).to be_kind_of String
  end

  it "should return url as a string" do
    expect(@nasa_feedback.get_url).to be_kind_of String
  end

  it "should have hdurl as a link" do
    expect(@nasa_feedback.is_hdurl_a_link?).to be true
  end

  it "should have png within the hdurl" do
    expect(@nasa_feedback.is_hdurl_a_jpg_file?).to be true
  end

  it "should have url as a link" do
    expect(@nasa_feedback.is_url_a_link?).to be true
  end

  it "should have png within the url" do
    expect(@nasa_feedback.is_url_a_jpg_file?).to be true
  end



end
