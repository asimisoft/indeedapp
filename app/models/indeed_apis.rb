class IndeedApis

        API_ROOT = 'http://api.indeed.com/ads'
        DEFAULT_FORMAT = 'json'

        API_SEARCH = {
            :end_point => "#{API_ROOT}/apisearch",
            :required_fields => [:userip, :useragent, [:q, :l]],
        }

        API_JOBS = {
            :end_point => "#{API_ROOT}/apigetjobs",
            :required_fields => [:jobkeys],
        }

        def initialize(publisher, version = "2")
            @publisher = publisher
            @version = version
        end


	def self.search
		@search_res = HTTParty.get("http://api.indeed.com/ads/apisearch?publisher=7260941144511308&q=java&l=austin%2C+tx&sort=&radius=&st=&jt=&start=&limit=&fromage=&filter=&latlong=1&co=us&chnl=&userip=1.2.3.4&useragent=Mozilla/%2F4.0%28Firefox%29&v=2")
	end

	def self.get_job
		@job_res = HTTParty.get("http://api.indeed.com/ads/apigetjobs?publisher=7260941144511308&jobkeys=11af1810d61208fa&v=2&format=json")
	end
end