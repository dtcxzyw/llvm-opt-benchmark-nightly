inline.NumInlined: 2
begin_hunk_0_@ztype1encrypt:bb.a
  %i.aa = zext i16 %i.y to i32
  %i.ab = load ptr, ptr %0, align 8, !tbaa !12
  %i.ac = load ptr, ptr %i.i, align 8, !tbaa !12
  %i.ad = call i32 @gs_type1_encrypt(ptr noundef %i.ab, ptr noundef %i.ac, i32 noundef %i.aa, ptr noundef nonnull %i.a) #7, !inline_history !23 ; 0 uses
  %i.ae = load i16, ptr %i.a, align 2, !tbaa !13
  %i.af = zext i16 %i.ae to i64
  store i64 %i.af, ptr %i.b, align 8, !tbaa !12
end_hunk_0
begin_hunk_1_@ztype1decrypt:bb.a
  %i.aa = zext i16 %i.y to i32
  %i.ab = load ptr, ptr %0, align 8, !tbaa !12
  %i.ac = load ptr, ptr %i.i, align 8, !tbaa !12
  %i.ad = call i32 @gs_type1_decrypt(ptr noundef %i.ab, ptr noundef %i.ac, i32 noundef %i.aa, ptr noundef nonnull %i.a) #7, !inline_history !23 ; 0 uses
  %i.ae = load i16, ptr %i.a, align 2, !tbaa !13
  %i.af = zext i16 %i.ae to i64
  store i64 %i.af, ptr %i.b, align 8, !tbaa !12
end_hunk_1
begin_hunk_2_@z_op_init
!20 = distinct !{!20, !19}
!21 = !{!22, !22, i64 0}
!22 = !{!"long", !6, i64 0}
!23 = !{ptr @type1crypt}
end_hunk_2
