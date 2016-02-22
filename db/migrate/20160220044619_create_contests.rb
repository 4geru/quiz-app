class CreateContests < ActiveRecord::Migration
  def change
    create_table :contests do |t|
      		t.integer :user1
      		t.integer :user2
      		t.integer :user3
      		t.integer :user4
      
      		t.integer :problem1
			t.integer :problem2
			t.integer :problem3
			t.integer :problem4
			t.integer :problem5
			t.integer :problem6
			t.integer :problem7
			t.integer :problem8
			t.integer :problem9
			t.integer :problem10
			t.integer :problem11
			t.integer :problem12
			t.integer :problem13
			t.integer :problem14
			t.integer :problem15
			t.integer :problem16
			t.integer :problem17
			t.integer :problem18
			t.integer :problem19
			t.integer :problem20
			t.integer :problem21
			t.integer :problem22
			t.integer :problem23
			t.integer :problem24
			t.integer :problem25

			t.integer :result1
			t.integer :result2
			t.integer :result3
			t.integer :result4
			t.integer :result5
			t.integer :result6
			t.integer :result7
			t.integer :result8
			t.integer :result9
			t.integer :result10
			t.integer :result11
			t.integer :result12
			t.integer :result13
			t.integer :result14
			t.integer :result15
			t.integer :result16
			t.integer :result17
			t.integer :result18
			t.integer :result19
			t.integer :result20
			t.integer :result21
			t.integer :result22
			t.integer :result23
			t.integer :result24
			t.integer :result25
	      	t.timestamps null: false
    end
  end
end
