class ProjectSearch < Searchlight::Search
  search_on Project.all

  searches :memberships, :potential, :archived

  def search_potential
    Project.where(potential: potential)
  end

  def search_archived
    Project.where(archived: archived)
  end

  def search_memberships
    Project.where(:membership_id.in => memberships.only(:_id).map(&:_id))
  end
end