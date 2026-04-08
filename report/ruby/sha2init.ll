inline.NumInlined: 7
inline.NumDeleted: 4
begin_hunk_0_@Init_sha2:bb.a

rb_digest_make_metadata.exit:                     ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.h, %bb.b ], [ %i.g, %bb.a ]
  %i.k = tail call i64 %i.j(ptr noundef nonnull @sha256) #3
  %i.l = tail call i64 @rb_ivar_set(i64 noundef %i.f, i64 noundef %i.a, i64 noundef %i.k) #3 ; 0 uses
  %i.m = tail call i64 @rb_define_class_under(i64 noundef %i.c, ptr noundef nonnull @.str.2, i64 noundef %i.e) #3
  %i.n = load ptr, ptr @rb_digest_make_metadata.wrapper, align 8, !tbaa !10 ; 2 uses
end_hunk_0
begin_hunk_1_@Init_sha2:bb.a

rb_digest_make_metadata.exit15:                   ; preds = %rb_digest_make_metadata.exit, %bb.d
  %i.q = phi ptr [ %i.o, %bb.d ], [ %i.n, %rb_digest_make_metadata.exit ]
  %i.r = tail call i64 %i.q(ptr noundef nonnull @sha384) #3
  %i.s = tail call i64 @rb_ivar_set(i64 noundef %i.m, i64 noundef %i.a, i64 noundef %i.r) #3 ; 0 uses
  %i.t = tail call i64 @rb_define_class_under(i64 noundef %i.c, ptr noundef nonnull @.str.3, i64 noundef %i.e) #3
  %i.u = load ptr, ptr @rb_digest_make_metadata.wrapper, align 8, !tbaa !10 ; 2 uses
end_hunk_1
begin_hunk_2_@Init_sha2:bb.a

rb_digest_make_metadata.exit18:                   ; preds = %rb_digest_make_metadata.exit15, %bb.f
  %i.x = phi ptr [ %i.v, %bb.f ], [ %i.u, %rb_digest_make_metadata.exit15 ]
  %i.y = tail call i64 %i.x(ptr noundef nonnull @sha512) #3
  %i.z = tail call i64 @rb_ivar_set(i64 noundef %i.t, i64 noundef %i.a, i64 noundef %i.y) #3 ; 0 uses
  ret void
}
end_hunk_2
begin_hunk_3_@rb_Digest_SHA512_Finish
!11 = !{!"any pointer", !8, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"long", !8, i64 0}
end_hunk_3
