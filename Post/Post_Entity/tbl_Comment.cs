//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Post_Entity
{
    using System;
    using System.Collections.Generic;
    
    public partial class tbl_Comment
    {
        public long CommentId { get; set; }
        public string CommentDescription { get; set; }
        public Nullable<System.DateTime> CommentDate { get; set; }
        public long UserId { get; set; }
        public Nullable<int> LikeCount { get; set; }
        public Nullable<int> DislikeCount { get; set; }
        public long PostId { get; set; }
    
        public virtual tbl_Post tbl_Post { get; set; }
        public virtual tbl_User tbl_User { get; set; }
    }
}
