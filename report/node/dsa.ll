begin_hunk_0_@dsa_main:bb.a
bb.u:                                             ; preds = %bb.t
  %.not114 = icmp eq i32 %.077, 0                 ; 4 uses
  %.not107 = icmp eq i32 %.075, 0
  %3 = icmp ne i32 %.083, 0
  %4 = or i1 %.not107, %3
  %narrow = and i1 %.not114, %4
  %5 = zext i1 %narrow to i32
  %i.aa = call i32 @app_passwd(ptr noundef %.088, ptr noundef %.086, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #6
  %.not108 = icmp eq i32 %i.aa, 0
  %i.ab = load ptr, ptr @bio_err, align 8, !tbaa !16 ; 2 uses
end_hunk_0
begin_hunk_1_@dsa_main:bb.a

bb.ad:                                            ; preds = %bb.ab
  %i.ap = load i32, ptr %i.e, align 4, !tbaa !5
  %i.aq = call ptr @bio_open_owner(ptr noundef %.091, i32 noundef %i.ap, i32 noundef %5) #6 ; 16 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %.loopexit148, label %bb.ae

end_hunk_1
