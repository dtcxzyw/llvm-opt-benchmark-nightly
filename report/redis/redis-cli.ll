inline.NumInlined: 395
inline.NumDeleted: 110
begin_hunk_0_@clusterManagerCommandCreate:bb.a

bb.bo:                                            ; preds = %.lr.ph593
  %i.nf = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 744), align 8, !tbaa !128
  %.not341 = icmp eq i32 %i.nf, 0                 ; 2 uses
  %spec.select371 = select i1 %.not341, i32 0, i32 2
  %i.ng = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 748), align 4, !tbaa !129
  %.not342 = icmp eq i32 %i.ng, 0
  %5 = select i1 %.not341, i32 4, i32 6
  %.1250 = select i1 %.not342, i32 %spec.select371, i32 %5
  %i.nh = getelementptr inbounds nuw i8, ptr %i.nd, i64 16
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !80
end_hunk_0
begin_hunk_1_@clusterManagerCommandAddNode:bb.a
  %.085191 = phi ptr [ null, %bb.as ], [ %.085199, %.thread194 ], [ null, %bb.ac ] ; 4 uses
  call void (i32, ptr, ...) @clusterManagerLog(i32 noundef 1, ptr noundef nonnull @.str.381, ptr noundef nonnull %i.n, i32 noundef %.013.i145)
  %i.dr = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 744), align 8, !tbaa !128
  %.not130 = icmp eq i32 %i.dr, 0                 ; 2 uses
  %spec.select = select i1 %.not130, i32 0, i32 2
  %i.ds = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 748), align 4, !tbaa !129
  %.not131 = icmp eq i32 %i.ds, 0
  %3 = select i1 %.not130, i32 4, i32 6
  %.1 = select i1 %.not131, i32 %spec.select, i32 %3
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cq, i64 16 ; 2 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !80
end_hunk_1
begin_hunk_2_@repl:bb.a
  %i.ao = trunc i64 %i.an to i32
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !73
  %i.ar = icmp eq i8 %i.aq, 32                    ; 2 uses
  %i.as = select i1 %i.ar, i32 2, i32 5           ; 2 uses
  %5 = select i1 %i.ar, i64 1, i64 4
  %i.at = call ptr @hi_sdsnewlen(ptr noundef nonnull %i.ab, i64 noundef %5) #33
  store ptr %i.at, ptr %i.am, align 8, !tbaa !29
  %i.au = zext nneg i32 %i.as to i64
  %i.av = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.au
end_hunk_2
begin_hunk_3_@repl:bb.a
; Function Attrs: nounwind uwtable
define internal fastcc void @cliFillInCommandHelpEntry(ptr noundef captures(none) initializes((0, 32), (48, 60), (64, 72), (80, 88)) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %2, null                    ; 3 uses
  %i.a = select i1 %.not, i32 1, i32 2
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.a, ptr %i.b, align 4, !tbaa !231
  %3 = select i1 %.not, i64 8, i64 16
  %i.c = tail call noalias ptr @zmalloc(i64 noundef %3) #37
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !229
  %i.e = tail call ptr @hi_sdsnew(ptr noundef %1) #33 ; 2 uses
end_hunk_3
begin_hunk_4_@clusterManagerMigrateKeysInReply:bb.a
  %i.a = alloca [255 x i8], align 16              ; 5 uses
  %i.b = alloca [255 x i8], align 16              ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %.not = icmp eq i32 %3, 0                       ; 3 uses
  %6 = select i1 %.not, i64 7, i64 8
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 16), align 8, !tbaa !183
  %.not102 = icmp eq ptr %i.d, null
  %7 = select i1 %.not, i64 9, i64 10
  %spec.select = select i1 %.not102, i64 %6, i64 %7
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 24), align 8, !tbaa !184
  %.not103 = icmp ne ptr %i.e, null
  %i.f = zext i1 %.not103 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 6 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !33
  %.198 = add i64 %i.h, %spec.select
  %i.i = add i64 %.198, %i.f                      ; 2 uses
  %i.j = shl i64 %i.i, 3                          ; 2 uses
  %i.k = tail call noalias ptr @zcalloc(i64 noundef %i.j) #37 ; 16 uses
  %i.l = tail call noalias ptr @zcalloc(i64 noundef %i.j) #37 ; 15 uses
end_hunk_4
