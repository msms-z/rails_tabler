
class EnablePgExtension < ActiveRecord::Migration[7.0]
    def change

        # enable postgre extension.
        #
        enable_extension 'hstore' unless extension_enabled?('hstore')
        enable_extension 'pgcrypto' unless extension_enabled?('pgcrypto')
        enable_extension 'plpgsql' unless extension_enabled?('plpgsql')
        enable_extension 'uuid-ossp' unless extension_enabled?('uuid-ossp')

    end
end
