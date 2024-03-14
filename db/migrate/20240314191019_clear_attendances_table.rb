class ClearAttendancesTable < ActiveRecord::Migration[6.0]
  def up
    Attendance.delete_all
  end

  def down
    # Optionally, you can leave this empty if you're okay with not being able to reverse this migration.
  end
end
