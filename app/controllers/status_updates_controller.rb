#
# microphisher - a spear phishing support tool
#
# Created by Ulisses Albuquerque & Joaquim Espinhara
# Copyright (C) 2013 Trustwave Holdings, Inc.
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# 
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#

class StatusUpdatesController < ApplicationController
  before_filter :load_data_source
  
  def load_data_source
    @unknown_subject = UnknownSubject.find(params[:unknown_subject_id])
    @data_source = @unknown_subject.data_sources.find(params[:data_source_id])
  end

  def show
    @status_update = @data_source.status_updates.find(params[:id])
  end
end
