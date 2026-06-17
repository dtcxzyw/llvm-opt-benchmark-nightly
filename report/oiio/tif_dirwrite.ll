inline.NumInlined: 125
inline.NumDeleted: 53
begin_hunk_0_@TIFFWriteDirectorySec:bb.a
.thread1570:                                      ; preds = %bb.om
  %i.awd = load i32, ptr %i.dy, align 4, !tbaa !105 ; 2 uses
  %.not7091571 = icmp eq i32 %i.awd, -1
  br i1 %.not7091571, label %bb.oo, label %.thread1572

bb.oo:                                            ; preds = %.thread1570, %bb.on
  %i.awe = call i32 @TIFFNumberOfDirectories(ptr noundef nonnull %0) #8 ; 2 uses
  store i32 %i.awe, ptr %i.dy, align 4, !tbaa !105
  %i.awf = getelementptr inbounds nuw i8, ptr %0, i64 848
  store i32 %i.awe, ptr %i.awf, align 8, !tbaa !112
  call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @TIFFWriteDirectorySec.module, ptr noundef nonnull @.str.31, i32 noundef 1344) #8
  br label %.thread1143

bb.op:                                            ; preds = %bb.on
  %i.awg = getelementptr inbounds nuw i8, ptr %0, i64 848
  store i32 %i.awc, ptr %i.awg, align 8, !tbaa !112
  br label %bb.oq

.thread1572:                                      ; preds = %bb.om, %.thread1570
  %.sink = phi i32 [ %i.awd, %.thread1570 ], [ 0, %bb.om ]
  %i.awh = getelementptr inbounds nuw i8, ptr %0, i64 848
  store i32 %.sink, ptr %i.awh, align 8, !tbaa !112
  %i.awi = load i32, ptr %i.cr, align 4, !tbaa !3
  %i.awj = and i32 %i.awi, 131072
  %.not712 = icmp eq i32 %i.awj, 0
  br i1 %.not712, label %.critedge, label %bb.oq

bb.oq:                                            ; preds = %bb.op, %.thread1572
  %i.awk = load i32, ptr %i.dy, align 4, !tbaa !105
  %i.awl = add i32 %i.awk, 1
  store i32 %i.awl, ptr %i.dy, align 4, !tbaa !105
  br label %.critedge

.critedge:                                        ; preds = %bb.ok, %bb.oj, %bb.oq, %.thread1572
  store i8 1, ptr %i.dx, align 1, !tbaa !104
  br i1 %.not, label %bb.ou, label %bb.or

bb.or:                                            ; preds = %.critedge
  %i.awm = load i32, ptr %i.bw, align 8, !tbaa !27 ; 2 uses
  %i.awn = and i32 %i.awm, 8192
  %.not713 = icmp eq i32 %i.awn, 0
  br i1 %.not713, label %bb.ou, label %bb.os

bb.os:                                            ; preds = %bb.or
  %i.awo = load i16, ptr %i.dj, align 8, !tbaa !74
  %i.awp = icmp eq i16 %i.awo, 0
  br i1 %i.awp, label %bb.ot, label %bb.ou

bb.ot:                                            ; preds = %bb.os
  %i.awq = and i32 %i.awm, -8193
  store i32 %i.awq, ptr %i.bw, align 8, !tbaa !27
  br label %bb.ou

bb.ou:                                            ; preds = %bb.ot, %bb.os, %bb.or, %.critedge
  %i.awr = getelementptr inbounds nuw i8, ptr %0, i64 848 ; 2 uses
  %i.aws = load i32, ptr %i.awr, align 8, !tbaa !112
  %i.awt = load i64, ptr %i.dp, align 8, !tbaa !96
  %i.awu = call i32 @_TIFFCheckDirNumberAndOffset(ptr noundef nonnull %0, i32 noundef %i.aws, i64 noundef %i.awt) #8
  %.not714 = icmp eq i32 %i.awu, 0
  br i1 %.not714, label %bb.ov, label %bb.ow

bb.ov:                                            ; preds = %bb.ou
  %i.awv = load i32, ptr %i.awr, align 8, !tbaa !112
  %i.aww = load i64, ptr %i.dp, align 8, !tbaa !96 ; 2 uses
  call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @TIFFWriteDirectorySec.module, ptr noundef nonnull @.str.32, i32 noundef %i.awv, i64 noundef %i.aww, i64 noundef %i.aww) #8
  br label %bb.ow

bb.ow:                                            ; preds = %bb.ov, %bb.ou
  br i1 %.not, label %bb.oy, label %bb.ox

bb.ox:                                            ; preds = %bb.ow
  call void @TIFFFreeDirectory(ptr noundef nonnull %0) #8
  %i.awx = load i32, ptr %i.bw, align 8, !tbaa !27
  %i.awy = and i32 %i.awx, -2097161
  store i32 %i.awy, ptr %i.bw, align 8, !tbaa !27
  %i.awz = call i32 @TIFFCreateDirectory(ptr noundef nonnull %0) #8 ; 0 uses
  br label %.thread1135

bb.oy:                                            ; preds = %bb.ow
  %i.axa = load i64, ptr %i.bm, align 8, !tbaa !33
  store i64 %i.axa, ptr %i.dq, align 8, !tbaa !107
  br label %.thread1135

TIFFWriteDirectoryTagSubifd.exit:                 ; preds = %bb.dx, %bb.dc, %bb.da, %bb.cy, %bb.cj, %bb.ci, %bb.ce, %bb.cd, %bb.bo, %bb.bm, %bb.bk, %bb.ak, %bb.ae, %bb.ad, %bb.ab, %bb.aa, %bb.y, %bb.x, %bb.v, %bb.u, %bb.im, %TIFFWriteDirectoryTagIfdIfd8Array.exit, %._crit_edge.i934, %._crit_edge222.i, %bb.ka, %bb.jz, %bb.id, %bb.ib, %bb.hp, %.thread1039, %._crit_edge1303, %bb.ex, %bb.ev, %bb.nl, %bb.nd
  %.2 = phi ptr [ %.0564, %.thread1039 ], [ %.0564, %bb.nl ], [ %.0564, %bb.ex ], [ %i.alk, %._crit_edge222.i ], [ %.0564, %bb.im ], [ %.0564, %._crit_edge1303 ], [ %.0564, %bb.id ], [ %i.alk, %bb.nd ], [ %.0564, %bb.ka ], [ %.0564, %bb.ev ], [ %i.alk, %._crit_edge.i934 ], [ %.0564, %bb.jz ], [ %.0564, %bb.hp ], [ %.0564, %bb.ib ], [ %.0564, %TIFFWriteDirectoryTagIfdIfd8Array.exit ], [ %.0564, %bb.u ], [ %.0564, %bb.v ], [ %.0564, %bb.x ], [ %.0564, %bb.y ], [ %.0564, %bb.aa ], [ %.0564, %bb.ab ], [ %.0564, %bb.ad ], [ %.0564, %bb.ae ], [ %.0564, %bb.ak ], [ %.0564, %bb.bk ], [ %.0564, %bb.bm ], [ %.0564, %bb.bo ], [ %.0564, %bb.cd ], [ %.0564, %bb.ce ], [ %.0564, %bb.ci ], [ %.0564, %bb.cj ], [ %.0564, %bb.cy ], [ %.0564, %bb.da ], [ %.0564, %bb.dc ], [ %.0564, %bb.dx ] ; 2 uses
  %.not738 = icmp eq ptr %.2, null
  br i1 %.not738, label %.thread1135, label %TIFFWriteDirectoryTagSubifd.exit.thread1122

TIFFWriteDirectoryTagSubifd.exit.thread1122.sink.split: ; preds = %bb.ee, %bb.co, %bb.iy, %bb.it, %bb.ik, %bb.ia, %bb.ho
  %TIFFWriteDirectoryTagCheckedSrationalArray.module.sink = phi ptr [ @TIFFWriteDirectoryTagCheckedSrationalDoubleArray.module, %bb.it ], [ @TIFFWriteDirectoryTagCheckedRationalDoubleArray.module, %bb.ik ], [ @TIFFWriteDirectoryTagSlong8Array.module, %bb.ia ], [ @TIFFWriteDirectoryTagLong8Array.module, %bb.ho ], [ @TIFFWriteDirectoryTagCheckedSrationalArray.module, %bb.iy ], [ @TIFFWriteDirectoryTagColormap.module, %bb.co ], [ @TIFFWriteDirectoryTagTransferfunction.module, %bb.ee ]
  call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull %TIFFWriteDirectoryTagCheckedSrationalArray.module.sink, ptr noundef nonnull @.str.26) #8
  br label %TIFFWriteDirectoryTagSubifd.exit.thread1122

TIFFWriteDirectoryTagSubifd.exit.thread1122:      ; preds = %bb.fi, %TIFFWriteDirectoryTagLong.exit, %TIFFWriteDirectoryTagShort.exit, %TIFFWriteDirectoryTagShort.exit753, %TIFFWriteDirectoryTagShort.exit756, %TIFFWriteDirectoryTagShort.exit759, %TIFFWriteDirectoryTagShort.exit762, %TIFFWriteDirectoryTagShort.exit765, %TIFFWriteDirectoryTagShort.exit768, %TIFFWriteDirectoryTagShort.exit771, %TIFFWriteDirectoryTagShortArray.exit, %TIFFWriteDirectoryTagColormap.exit, %TIFFWriteDirectoryTagShortArray.exit779, %TIFFWriteDirectoryTagLong.exit782, %TIFFWriteDirectoryTagLong.exit785, %TIFFWriteDirectoryTagShortArray.exit791, %TIFFWriteDirectoryTagShortArray.exit797, %TIFFWriteDirectoryTagShort.exit800, %TIFFWriteDirectoryTagTransferfunction.exit, %TIFFWriteDirectoryTagAscii.exit, %TIFFWriteDirectoryTagShort.exit809, %TIFFLinkDirectory.exit, %TIFFWriteDirectoryTagUndefinedArray.exit, %TIFFWriteDirectoryTagLong.exit825, %TIFFWriteDirectoryTagShort.exit822, %TIFFWriteDirectoryTagAscii.exit819, %TIFFWriteDirectoryTagSrationalArray.exit, %TIFFWriteDirectoryTagSrationalDoubleArray.exit, %TIFFWriteDirectoryTagRationalDoubleArray.exit, %TIFFWriteDirectoryTagDoubleArray.exit, %TIFFWriteDirectoryTagFloatArray.exit, %TIFFWriteDirectoryTagSlong8Array.exit, %TIFFWriteDirectoryTagLong8Array.exit, %TIFFWriteDirectoryTagSlongArray.exit, %TIFFWriteDirectoryTagLongArray.exit, %TIFFWriteDirectoryTagSshortArray.exit, %TIFFWriteDirectoryTagShortArray.exit853, %TIFFWriteDirectoryTagSbyteArray.exit, %TIFFWriteDirectoryTagByteArray.exit, %TIFFWriteDirectoryTagUndefinedArray.exit839, %TIFFWriteDirectoryTagAscii.exit834, %TIFFWriteDirectoryTagIfdArray.exit, %TIFFWriteDirectoryTagSubifd.exit.thread1122.sink.split, %TIFFWriteDirectoryTagSubifd.exit
  %.21128 = phi ptr [ %.2, %TIFFWriteDirectoryTagSubifd.exit ], [ %.0564, %TIFFWriteDirectoryTagSubifd.exit.thread1122.sink.split ], [ %.0564, %TIFFWriteDirectoryTagSrationalArray.exit ], [ %.0564, %TIFFWriteDirectoryTagUndefinedArray.exit ], [ %.0564, %TIFFWriteDirectoryTagIfdArray.exit ], [ %.0564, %TIFFWriteDirectoryTagAscii.exit834 ], [ %.0564, %TIFFWriteDirectoryTagUndefinedArray.exit839 ], [ %.0564, %TIFFWriteDirectoryTagByteArray.exit ], [ %.0564, %TIFFWriteDirectoryTagSbyteArray.exit ], [ %.0564, %TIFFWriteDirectoryTagShortArray.exit853 ], [ %.0564, %TIFFWriteDirectoryTagSshortArray.exit ], [ %.0564, %TIFFWriteDirectoryTagLongArray.exit ], [ %.0564, %TIFFWriteDirectoryTagSlongArray.exit ], [ %.0564, %TIFFWriteDirectoryTagLong8Array.exit ], [ %.0564, %TIFFWriteDirectoryTagSlong8Array.exit ], [ %.0564, %TIFFWriteDirectoryTagFloatArray.exit ], [ %.0564, %TIFFWriteDirectoryTagDoubleArray.exit ], [ %.0564, %TIFFWriteDirectoryTagRationalDoubleArray.exit ], [ %.0564, %TIFFWriteDirectoryTagSrationalDoubleArray.exit ], [ %.0564, %TIFFWriteDirectoryTagAscii.exit819 ], [ %.0564, %TIFFWriteDirectoryTagShort.exit822 ], [ %.0564, %TIFFWriteDirectoryTagLong.exit825 ], [ %.0564, %TIFFWriteDirectoryTagShort.exit771 ], [ %.0564, %TIFFWriteDirectoryTagShort.exit768 ], [ %.0564, %TIFFWriteDirectoryTagShort.exit765 ], [ %.0564, %TIFFWriteDirectoryTagShortArray.exit779 ], [ %.0564, %TIFFWriteDirectoryTagColormap.exit ], [ %.0564, %TIFFWriteDirectoryTagShort.exit762 ], [ %.0564, %TIFFWriteDirectoryTagShort.exit759 ], [ %.0564, %TIFFWriteDirectoryTagShort.exit756 ], [ %.0564, %TIFFWriteDirectoryTagShort.exit753 ], [ %.0564, %TIFFWriteDirectoryTagShort.exit ], [ %i.alk, %TIFFLinkDirectory.exit ], [ %.0564, %TIFFWriteDirectoryTagShortArray.exit797 ], [ %.0564, %TIFFWriteDirectoryTagLong.exit ], [ %.0564, %TIFFWriteDirectoryTagShort.exit809 ], [ %.0564, %TIFFWriteDirectoryTagAscii.exit ], [ %.0564, %bb.fi ], [ %.0564, %TIFFWriteDirectoryTagShort.exit800 ], [ %.0564, %TIFFWriteDirectoryTagTransferfunction.exit ], [ %.0564, %TIFFWriteDirectoryTagShortArray.exit791 ], [ %.0564, %TIFFWriteDirectoryTagLong.exit785 ], [ %.0564, %TIFFWriteDirectoryTagLong.exit782 ], [ %.0564, %TIFFWriteDirectoryTagShortArray.exit ]
  call void @_TIFFfreeExt(ptr noundef %0, ptr noundef nonnull %.21128) #8
  br label %.thread1135

.thread1139:                                      ; preds = %bb.mu, %bb.kj
  br label %.thread1135

bb.oz:                                            ; preds = %bb.og
  call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @TIFFWriteDirectorySec.module, ptr noundef nonnull @.str.29) #8
  br label %.thread1143

.thread1143:                                      ; preds = %bb.oz, %bb.oo, %bb.oi
  call void @_TIFFfreeExt(ptr noundef nonnull %0, ptr noundef nonnull %i.atf) #8
  br label %.thread1135

.thread1135:                                      ; preds = %bb.hi, %bb.hu, %TIFFWriteDirectoryTagSubifd.exit, %TIFFWriteDirectoryTagSubifd.exit.thread1122, %.thread1139, %.thread1143, %bb.ox, %bb.oy, %bb.mu, %bb.a, %bb.h, %bb.e
  %.0563 = phi i32 [ 0, %bb.e ], [ 0, %bb.hi ], [ 1, %bb.a ], [ 0, %bb.h ], [ 1, %bb.ox ], [ 1, %bb.mu ], [ 1, %bb.oy ], [ 0, %.thread1143 ], [ 0, %.thread1139 ], [ 0, %TIFFWriteDirectoryTagSubifd.exit.thread1122 ], [ 0, %TIFFWriteDirectoryTagSubifd.exit ], [ 0, %bb.hu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #8
  ret i32 %.0563
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @TIFFDeferStrileArrayWriting(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !7
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !103
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef %i.d, ptr noundef nonnull @.str) #8
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !96
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @TIFFDeferStrileArrayWriting.module, ptr noundef nonnull @.str.1) #8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 408
  store i8 1, ptr %i.g, align 8, !tbaa !113
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.d ], [ 1, %bb.e ]
  ret i32 %.0
}

declare void @TIFFErrorExtR(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define noundef range(i32 0, 2) i32 @TIFFCheckpointDirectory(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @TIFFSetupStrips(ptr noundef nonnull %0) #8 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = tail call fastcc i32 @TIFFWriteDirectorySec(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 0, ptr noundef null)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1200
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !97
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1176
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !98
  %i.j = tail call i64 %i.g(ptr noundef %i.i, i64 noundef 0, i32 noundef 2) #8
  tail call void @TIFFSetWriteOffset(ptr noundef nonnull %0, i64 noundef %i.j) #8
  ret i32 %i.e
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @TIFFSetupStrips(ptr noundef) local_unnamed_addr #1

declare void @TIFFSetWriteOffset(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define noundef range(i32 0, 2) i32 @TIFFWriteCustomDirectory(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @TIFFWriteDirectorySec(ptr noundef %0, i32 noundef 0, i32 noundef 0, ptr noundef %1)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define noundef range(i32 0, 2) i32 @TIFFRewriteDirectory(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @TIFFRewriteDirectorySec(ptr noundef %0, i32 noundef 1, ptr noundef null)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef range(i32 0, 2) i32 @TIFFRewriteDirectorySec(ptr noundef %0, i32 noundef range(i32 0, 2) %1, ptr nofree noundef writeonly captures(address_is_null) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i16, align 2                      ; 10 uses
  %i.b = alloca i32, align 4                      ; 9 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 7 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !96   ; 5 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = tail call fastcc i32 @TIFFWriteDirectorySec(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 1, ptr noundef null), !inline_history !114
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !27
  %i.m = and i32 %i.l, 524288
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.d, label %bb.t

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 828 ; 3 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !101  ; 3 uses
  %i.p = zext i32 %i.o to i64
  %i.q = icmp eq i64 %i.h, %i.p
  br i1 %i.q, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.n, align 4, !tbaa !101
  store i64 0, ptr %i.g, align 8, !tbaa !96
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1200
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !97
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !98
  %i.v = tail call i64 %i.s(ptr noundef %i.u, i64 noundef 4, i32 noundef 0) #8 ; 0 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1192
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !100
  %i.y = load ptr, ptr %i.t, align 8, !tbaa !98
  %i.z = tail call i64 %i.x(ptr noundef %i.y, ptr noundef nonnull %i.n, i64 noundef 4) #8
  %i.aa = icmp eq i64 %i.z, 4
  br i1 %i.aa, label %.thread112, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = load ptr, ptr %0, align 8, !tbaa !103
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef %i.ab, ptr noundef nonnull @.str.14) #8
  br label %.loopexit

bb.g:                                             ; preds = %bb.d
  %i.ac = icmp ugt i64 %i.h, 4294967295
  br i1 %i.ac, label %bb.h, label %.preheader

.preheader:                                       ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1184 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1200 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1192
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %3 = zext i32 %i.o to i64
  %4 = tail call i32 @_TIFFSeekOK(ptr noundef nonnull %0, i64 noundef %3) #8
  %.not1041 = icmp eq i32 %4, 0
  br i1 %.not1041, label %bb.q, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @TIFFRewriteDirectorySec.module, ptr noundef nonnull @.str.15) #8
  br label %.loopexit

bb.i:                                             ; preds = %.preheader, %bb.r
  %.0922 = phi i32 [ %i.bd, %bb.r ], [ %i.o, %.preheader ]
  %i.ai = load ptr, ptr %i.ad, align 8, !tbaa !106
  %i.aj = load ptr, ptr %i.ae, align 8, !tbaa !98
  %i.ak = call i64 %i.ai(ptr noundef %i.aj, ptr noundef nonnull %i.a, i64 noundef 2) #8
  %i.al = icmp eq i64 %i.ak, 2
  br i1 %i.al, label %bb.j, label %bb.q

bb.j:                                             ; preds = %bb.i
  %i.am = load i32, ptr %i.k, align 8, !tbaa !27
  %i.an = and i32 %i.am, 128
  %.not105 = icmp eq i32 %i.an, 0
  br i1 %.not105, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @TIFFSwabShort(ptr noundef nonnull %i.a) #8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ao = load ptr, ptr %i.af, align 8, !tbaa !97
  %i.ap = load ptr, ptr %i.ae, align 8, !tbaa !98
  %i.aq = add i32 %.0922, 2                       ; 2 uses
  %i.ar = load i16, ptr %i.a, align 2, !tbaa !44
  %i.as = zext i16 %i.ar to i32
  %i.at = mul nuw nsw i32 %i.as, 12
  %i.au = add i32 %i.at, %i.aq
  %i.av = zext i32 %i.au to i64
  %i.aw = call i64 %i.ao(ptr noundef %i.ap, i64 noundef %i.av, i32 noundef 0) #8 ; 0 uses
  %i.ax = load ptr, ptr %i.ad, align 8, !tbaa !106
  %i.ay = load ptr, ptr %i.ae, align 8, !tbaa !98
  %i.az = call i64 %i.ax(ptr noundef %i.ay, ptr noundef nonnull %i.b, i64 noundef 4) #8
  %i.ba = icmp eq i64 %i.az, 4
  br i1 %i.ba, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.bb = load i32, ptr %i.k, align 8, !tbaa !27
  %i.bc = and i32 %i.bb, 128
  %.not106 = icmp eq i32 %i.bc, 0
  br i1 %.not106, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @TIFFSwabLong(ptr noundef nonnull %i.b) #8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bd = load i32, ptr %i.b, align 4, !tbaa !3   ; 3 uses
  %i.be = zext i32 %i.bd to i64
  %i.bf = load i64, ptr %i.g, align 8, !tbaa !96
  %i.bg = icmp eq i64 %i.bf, %i.be
  br i1 %i.bg, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store i32 0, ptr %i.c, align 4, !tbaa !3
  %i.bh = load ptr, ptr %i.af, align 8, !tbaa !97
  %i.bi = load ptr, ptr %i.ae, align 8, !tbaa !98
  %i.bj = load i16, ptr %i.a, align 2, !tbaa !44
  %i.bk = zext i16 %i.bj to i32
  %i.bl = mul nuw nsw i32 %i.bk, 12
  %i.bm = add i32 %i.bl, %i.aq
  %i.bn = zext i32 %i.bm to i64
  %i.bo = call i64 %i.bh(ptr noundef %i.bi, i64 noundef %i.bn, i32 noundef 0) #8 ; 0 uses
  %i.bp = load ptr, ptr %i.ag, align 8, !tbaa !100
  %i.bq = load ptr, ptr %i.ae, align 8, !tbaa !98
  %i.br = call i64 %i.bp(ptr noundef %i.bq, ptr noundef nonnull %i.c, i64 noundef 4) #8
  %i.bs = icmp eq i64 %i.br, 4
  br i1 %i.bs, label %bb.s, label %.thread115

bb.q:                                             ; preds = %bb.i, %bb.r, %bb.l, %.preheader
  %.str.17.sink = phi ptr [ @.str.16, %.preheader ], [ @.str.16, %bb.i ], [ @.str.16, %bb.r ], [ @.str.17, %bb.l ]
  call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @TIFFRewriteDirectorySec.module, ptr noundef nonnull %.str.17.sink) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %.loopexit

bb.r:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %5 = zext i32 %i.bd to i64
  %6 = call i32 @_TIFFSeekOK(ptr noundef nonnull %0, i64 noundef %5) #8
  %.not104 = icmp eq i32 %6, 0
  br i1 %.not104, label %bb.q, label %bb.i

.thread115:                                       ; preds = %bb.p
  call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @TIFFRewriteDirectorySec.module, ptr noundef nonnull @.str.12) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %.loopexit

bb.s:                                             ; preds = %bb.p
  store i64 0, ptr %i.g, align 8, !tbaa !96
  store i64 0, ptr %i.ah, align 8, !tbaa !102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %.thread112

bb.t:                                             ; preds = %bb.c
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 3 uses
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !101 ; 2 uses
  %i.bv = icmp eq i64 %i.bu, %i.h
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 1200 ; 3 uses
  br i1 %i.bv, label %bb.u, label %.preheader128

.preheader128:                                    ; preds = %bb.t
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 1184 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 5 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 1192
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.w

bb.u:                                             ; preds = %bb.t
  store i64 0, ptr %i.bt, align 8, !tbaa !101
  store i64 0, ptr %i.g, align 8, !tbaa !96
  %i.cb = load ptr, ptr %i.bw, align 8, !tbaa !97
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !98
  %i.ce = tail call i64 %i.cb(ptr noundef %i.cd, i64 noundef 8, i32 noundef 0) #8 ; 0 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 1192
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !100
  %i.ch = load ptr, ptr %i.cc, align 8, !tbaa !98
  %i.ci = tail call i64 %i.cg(ptr noundef %i.ch, ptr noundef nonnull %i.bt, i64 noundef 8) #8
  %i.cj = icmp eq i64 %i.ci, 8
  br i1 %i.cj, label %.thread112, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ck = load ptr, ptr %0, align 8, !tbaa !103
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef %i.ck, ptr noundef nonnull @.str.14) #8
  br label %.loopexit

bb.w:                                             ; preds = %.preheader128, %bb.aj
  %.090 = phi i64 [ %.191, %bb.aj ], [ %i.bu, %.preheader128 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  %i.cl = call i32 @_TIFFSeekOK(ptr noundef nonnull %0, i64 noundef %.090) #8
  %.not107 = icmp eq i32 %i.cl, 0
  br i1 %.not107, label %.thread125, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cm = load ptr, ptr %i.bx, align 8, !tbaa !106
  %i.cn = load ptr, ptr %i.by, align 8, !tbaa !98
  %i.co = call i64 %i.cm(ptr noundef %i.cn, ptr noundef nonnull %i.d, i64 noundef 8) #8
  %i.cp = icmp eq i64 %i.co, 8
  br i1 %i.cp, label %bb.y, label %.thread125

bb.y:                                             ; preds = %bb.x
  %i.cq = load i32, ptr %i.k, align 8, !tbaa !27
  %i.cr = and i32 %i.cq, 128
  %.not108 = icmp eq i32 %i.cr, 0
  br i1 %.not108, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @TIFFSwabLong8(ptr noundef nonnull %i.d) #8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.cs = load i64, ptr %i.d, align 8, !tbaa !73  ; 2 uses
  %i.ct = icmp ugt i64 %i.cs, 65535
  br i1 %i.ct, label %.thread125, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cu = load ptr, ptr %i.bw, align 8, !tbaa !97
  %i.cv = load ptr, ptr %i.by, align 8, !tbaa !98
  %i.cw = add i64 %.090, 8
  %i.cx = mul nuw nsw i64 %i.cs, 20
  %i.cy = add i64 %i.cw, %i.cx                    ; 2 uses
  %i.cz = call i64 %i.cu(ptr noundef %i.cv, i64 noundef %i.cy, i32 noundef 0) #8 ; 0 uses
  %i.da = load ptr, ptr %i.bx, align 8, !tbaa !106
  %i.db = load ptr, ptr %i.by, align 8, !tbaa !98
  %i.dc = call i64 %i.da(ptr noundef %i.db, ptr noundef nonnull %i.e, i64 noundef 8) #8
  %i.dd = icmp eq i64 %i.dc, 8
  br i1 %i.dd, label %bb.ac, label %.thread125

bb.ac:                                            ; preds = %bb.ab
  %i.de = load i32, ptr %i.k, align 8, !tbaa !27
  %i.df = and i32 %i.de, 128
  %.not109 = icmp eq i32 %i.df, 0
  br i1 %.not109, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @TIFFSwabLong8(ptr noundef nonnull %i.e) #8
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.dg = load i64, ptr %i.e, align 8, !tbaa !73  ; 2 uses
  %i.dh = load i64, ptr %i.g, align 8, !tbaa !96
  %i.di = icmp eq i64 %i.dg, %i.dh
  br i1 %i.di, label %bb.af, label %bb.aj

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #8
  store i64 0, ptr %i.f, align 8, !tbaa !73
  %i.dj = load ptr, ptr %i.bw, align 8, !tbaa !97
  %i.dk = load ptr, ptr %i.by, align 8, !tbaa !98
  %i.dl = call i64 %i.dj(ptr noundef %i.dk, i64 noundef %i.cy, i32 noundef 0) #8 ; 0 uses
  %i.dm = load ptr, ptr %i.bz, align 8, !tbaa !100
  %i.dn = load ptr, ptr %i.by, align 8, !tbaa !98
  %i.do = call i64 %i.dm(ptr noundef %i.dn, ptr noundef nonnull %i.f, i64 noundef 8) #8
  %i.dp = icmp eq i64 %i.do, 8
  br i1 %i.dp, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @TIFFRewriteDirectorySec.module, ptr noundef nonnull @.str.12) #8
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  store i64 0, ptr %i.g, align 8, !tbaa !96
  store i64 0, ptr %i.ca, align 8, !tbaa !102
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.397 = phi i32 [ 5, %bb.ah ], [ 1, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  br label %bb.aj

.thread125:                                       ; preds = %bb.ab, %bb.aa, %bb.w, %bb.x
  %.str.17.sink135 = phi ptr [ @.str.18, %bb.aa ], [ @.str.16, %bb.w ], [ @.str.16, %bb.x ], [ @.str.17, %bb.ab ]
  call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @TIFFRewriteDirectorySec.module, ptr noundef nonnull %.str.17.sink135) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  br label %.loopexit

bb.aj:                                            ; preds = %bb.ae, %bb.ai
  %.498 = phi i32 [ 0, %bb.ae ], [ %.397, %bb.ai ]
  %.191 = phi i64 [ %i.dg, %bb.ae ], [ %.090, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  switch i32 %.498, label %.loopexit [
    i32 0, label %bb.w
    i32 5, label %.thread112
  ]

.thread112:                                       ; preds = %bb.aj, %bb.u, %bb.e, %bb.s
  %i.dq = call i32 @_TIFFRemoveEntryFromDirectoryListByOffset(ptr noundef nonnull %0, i64 noundef %i.h) #8 ; 0 uses
  %i.dr = call fastcc i32 @TIFFWriteDirectorySec(ptr noundef nonnull %0, i32 noundef 1, i32 noundef %1, ptr noundef %2)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.aj, %.thread115, %.thread125, %bb.q, %bb.f, %bb.h, %bb.v, %.thread112, %bb.b
  %.7 = phi i32 [ %i.j, %bb.b ], [ %i.dr, %.thread112 ], [ 0, %bb.v ], [ 0, %.thread115 ], [ 0, %bb.f ], [ 0, %bb.h ], [ 0, %.thread125 ], [ 0, %bb.q ], [ 0, %bb.aj ]
  ret i32 %.7
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @_TIFFRewriteField(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i16, align 2                      ; 7 uses
  %i.b = alloca [20 x i8], align 16               ; 18 uses
  %i.c = alloca i16, align 2                      ; 7 uses
  %i.d = alloca i16, align 2                      ; 13 uses
  %i.e = alloca i64, align 8                      ; 12 uses
  %i.f = alloca i64, align 8                      ; 17 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %i.h = alloca i32, align 4                      ; 8 uses
  %i.i = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store i16 0, ptr %i.c, align 2, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  store i16 0, ptr %i.d, align 2, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  store i64 0, ptr %i.e, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #8
  store i64 0, ptr %i.f, align 8, !tbaa !73
  %i.j = zext i16 %1 to i32                       ; 2 uses
  %i.k = tail call ptr @TIFFFindField(ptr noundef %0, i32 noundef %i.j, i32 noundef 0) #8 ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 17 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !27
  %i.n = and i32 %i.m, 2048
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @_TIFFRewriteField.module, ptr noundef nonnull @.str.2) #8
  br label %bb.di

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !96   ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @_TIFFRewriteField.module, ptr noundef nonnull @.str.3) #8
  br label %bb.di

bb.e:                                             ; preds = %bb.c
  %i.r = tail call i32 @_TIFFSeekOK(ptr noundef nonnull %0, i64 noundef %i.p) #8
  %.not309 = icmp eq i32 %i.r, 0
  br i1 %.not309, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %0, align 8, !tbaa !103
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @_TIFFRewriteField.module, ptr noundef nonnull @.str.4, ptr noundef %i.s) #8
  br label %bb.di

bb.g:                                             ; preds = %bb.e
  %i.t = load i64, ptr %i.o, align 8, !tbaa !96   ; 2 uses
  %i.u = load i32, ptr %i.l, align 8, !tbaa !27
  %i.v = and i32 %i.u, 524288
  %.not310 = icmp eq i32 %i.v, 0
  br i1 %.not310, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1184
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !106
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1176
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !98
  %i.aa = call i64 %i.x(ptr noundef %i.z, ptr noundef nonnull %i.a, i64 noundef 2) #8
  %i.ab = icmp eq i64 %i.aa, 2
  br i1 %i.ab, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = load ptr, ptr %0, align 8, !tbaa !103
  call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @_TIFFRewriteField.module, ptr noundef nonnull @.str.5, ptr noundef %i.ac) #8
  br label %bb.di

bb.j:                                             ; preds = %bb.h
  %i.ad = load i32, ptr %i.l, align 8, !tbaa !27
  %i.ae = and i32 %i.ad, 128
  %.not311 = icmp eq i32 %i.ae, 0
  br i1 %.not311, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @TIFFSwabShort(ptr noundef nonnull %i.a) #8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.af = add i64 %i.t, 2
  %.pre = load i16, ptr %i.a, align 2, !tbaa !44
  br label %bb.q

bb.m:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1184
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !106
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1176
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !98
  %i.ak = call i64 %i.ah(ptr noundef %i.aj, ptr noundef nonnull %i.g, i64 noundef 8) #8
  %i.al = icmp eq i64 %i.ak, 8
  br i1 %i.al, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.am = load i32, ptr %i.l, align 8, !tbaa !27
  %i.an = and i32 %i.am, 128
  %.not312 = icmp eq i32 %i.an, 0
  br i1 %.not312, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @TIFFSwabLong8(ptr noundef nonnull %i.g) #8
  br label %.thread

.thread:                                          ; preds = %bb.n, %bb.o
  %i.ao = load i64, ptr %i.g, align 8, !tbaa !73
  %i.ap = trunc i64 %i.ao to i16                  ; 2 uses
  store i16 %i.ap, ptr %i.a, align 2, !tbaa !44
  %i.aq = add i64 %i.t, 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #8
  br label %bb.q

bb.p:                                             ; preds = %bb.m
  %i.ar = load ptr, ptr %0, align 8, !tbaa !103
  call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @_TIFFRewriteField.module, ptr noundef nonnull @.str.5, ptr noundef %i.ar) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #8
  br label %bb.di

bb.q:                                             ; preds = %.thread, %bb.l
  %i.as = phi i16 [ %i.ap, %.thread ], [ %.pre, %bb.l ]
  %.1297 = phi i64 [ 20, %.thread ], [ 12, %bb.l ] ; 5 uses
  %.1293 = phi i64 [ %i.aq, %.thread ], [ %i.af, %bb.l ] ; 2 uses
  %.not313380 = icmp eq i16 %i.as, 0
  br i1 %.not313380, label %.._crit_edge_crit_edge, label %.lr.ph

.._crit_edge_crit_edge:                           ; preds = %bb.q
  %.pre399 = load i16, ptr %i.c, align 2, !tbaa !44
  %i.at = icmp eq i16 %.pre399, %1
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.q
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 1184
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 1176
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph, %bb.w
  %.2294381 = phi i64 [ %.1293, %.lr.ph ], [ %i.bg, %bb.w ] ; 2 uses
  %i.aw = load ptr, ptr %i.au, align 8, !tbaa !106
  %i.ax = load ptr, ptr %i.av, align 8, !tbaa !98
  %i.ay = call i64 %i.aw(ptr noundef %i.ax, ptr noundef nonnull %i.b, i64 noundef %.1297) #8
  %i.az = icmp eq i64 %i.ay, %.1297
  br i1 %i.az, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ba = load ptr, ptr %0, align 8, !tbaa !103
  call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @_TIFFRewriteField.module, ptr noundef nonnull @.str.6, ptr noundef %i.ba) #8
  br label %bb.di

bb.t:                                             ; preds = %bb.r
  %i.bb = load i16, ptr %i.b, align 16            ; 2 uses
  store i16 %i.bb, ptr %i.c, align 2
  %i.bc = load i32, ptr %i.l, align 8, !tbaa !27
  %i.bd = and i32 %i.bc, 128
  %.not314 = icmp eq i32 %i.bd, 0
  br i1 %.not314, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @TIFFSwabShort(ptr noundef nonnull %i.c) #8
  %.pre398 = load i16, ptr %i.c, align 2, !tbaa !44
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.be = phi i16 [ %.pre398, %bb.u ], [ %i.bb, %bb.t ]
  %i.bf = icmp eq i16 %i.be, %1                   ; 3 uses
  br i1 %i.bf, label %._crit_edge, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bg = add i64 %.2294381, %.1297               ; 2 uses
  %i.bh = load i16, ptr %i.a, align 2, !tbaa !44
  %.not313 = icmp eq i16 %i.bh, 0
  br i1 %.not313, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %bb.w, %bb.v, %.._crit_edge_crit_edge
  %.not315 = phi i1 [ %i.at, %.._crit_edge_crit_edge ], [ %i.bf, %bb.v ], [ %i.bf, %bb.w ]
  %.2294.lcssa = phi i64 [ %.1293, %.._crit_edge_crit_edge ], [ %i.bg, %bb.w ], [ %.2294381, %bb.v ] ; 2 uses
  br i1 %.not315, label %bb.y, label %bb.x

bb.x:                                             ; preds = %._crit_edge
  %i.bi = load ptr, ptr %0, align 8, !tbaa !103
  call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @_TIFFRewriteField.module, ptr noundef nonnull @.str.7, ptr noundef %i.bi, i32 noundef %i.j) #8
  br label %bb.di

bb.y:                                             ; preds = %._crit_edge
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 2 ; 3 uses
  %i.bk = load i16, ptr %i.bj, align 2
  store i16 %i.bk, ptr %i.d, align 2
  %i.bl = load i32, ptr %i.l, align 8, !tbaa !27  ; 2 uses
  %i.bm = and i32 %i.bl, 128
  %.not316 = icmp eq i32 %i.bm, 0
  br i1 %.not316, label %bb.aa, label %bb.z

end_hunk_0
