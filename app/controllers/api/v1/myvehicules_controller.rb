module Api

    module V1
        class MyvehiculesController < ApplicationController
            def index
                myvehicules = Myvehicule.order('created_at DESC');
                render json: {status:'SUCCESS', message:'Loaded vehicules', data:myvehicules}, status: :ok
            end
            def show
                myvehicule = Myvehicule.find(params[:id])
                render json: {status: 'SUCCESS', message:'Loaded vehicule', data:myvehicule},status: :ok
              end
        
              def create
                myvehicule = Myvehicule.new(vehicule_params)
        
                if myvehicule.save
                  render json: {status: 'SUCCESS', message:'Saved vehicule', data:myvehicule},status: :ok
                else
                  render json: {status: 'ERROR', message:'Vehicule not saved', data:myvehicule.errors},status: :unprocessable_entity
                end
              end
        
              def destroy
                myvehicule = Myvehicule.find(params[:id])
                myvehicule.destroy
                render json: {status: 'SUCCESS', message:'Deleted vehicule', data:myvehicule},status: :ok
              end
        
              def update
                myvehicule = Myvehicule.find(params[:id])
                if myvehicule.update_attributes(vehicule_params)
                  render json: {status: 'SUCCESS', message:'Updated vehicule', data:myvehicule},status: :ok
                else
                  render json: {status: 'ERROR', message:'Vehicule not updated', data:myvehicule.errors},status: :unprocessable_entity
                end
              end
        
              private
        
              def vehicule_params
                params.permit(:brand, :vehicule, :year, :description, :sold)
              end
          
        end
    end

end