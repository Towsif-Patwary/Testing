using Post_Entity;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Post.Models.ViewModel
{
    public class PostVM
    {
        public long PostId { get; set; }
        [Required(ErrorMessage = "Name is required.")]
        [Display(Name= "Post Name")]
        public string PostName { get; set; }
        [Display(Name = "Post Date")]
        public Nullable<System.DateTime> PostDate { get; set; }
        public long UserId { get; set; }
        [Display(Name = "Comment Count")]
        public Nullable<int> TotalComments { get; set; }

        public virtual ICollection<tbl_Comment> tbl_Comment { get; set; }
        public virtual tbl_User tbl_User { get; set; }
    }
}