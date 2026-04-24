inline.NumInlined: 136
inline.NumDeleted: 12
begin_hunk_0
@.str.11 = private unnamed_addr constant [97 x i8] c"(incr >= 0 && sh->alloc-sh->len >= (uint64_t)incr) || (incr < 0 && sh->len >= (uint64_t)(-incr))\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"\\%c\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"\\x%02x\00", align 1
@switch.table.sdsnewplacement.3 = private unnamed_addr constant [5 x i64] [i64 1, i64 3, i64 5, i64 9, i64 17], align 8
@switch.table.sdsResize = private unnamed_addr constant [5 x i32] [i32 1, i32 3, i32 5, i32 9, i32 17], align 4
@switch.table.sdsResize.6 = private unnamed_addr constant [3 x i64] [i64 255, i64 65535, i64 4294967295], align 8
@switch.table.sdstemplate.9 = private unnamed_addr constant [5 x i64] [i64 -1, i64 -3, i64 -5, i64 -9, i64 -17], align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local signext range(i8 0, 5) i8 @sdsReqType(i64 noundef %0) local_unnamed_addr #0 {
end_hunk_0
begin_hunk_1_@_sdsnewlen:bb.a
  %i.f = icmp eq i8 %.0.i, 0
  %i.g = icmp eq i64 %1, 0
  %or.cond = and i1 %i.g, %i.f
  %spec.store.select = select i1 %or.cond, i8 1, i8 %.0.i ; 4 uses
  %i.h = zext nneg i8 %spec.store.select to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.sdsResize, i64 %i.h
  %switch.load = load i32, ptr %switch.gep, align 4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %3 = zext nneg i32 %switch.load to i64
  %i.i = add i64 %1, 1
  %i.j = add i64 %i.i, %3                         ; 3 uses
  %i.k = icmp ugt i64 %i.j, %1
  br i1 %i.k, label %bb.f, label %bb.e, !prof !13

end_hunk_1
begin_hunk_2_@_sdsnewlen:bb.a

bb.j:                                             ; preds = %bb.i
  %i.p = load i64, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %4 = xor i32 %switch.load, -1
  %5 = sext i32 %4 to i64
  %i.q = add i64 %i.p, %5                         ; 3 uses
  %switch.tableidx = add nsw i8 %spec.store.select, -1 ; 2 uses
  %i.r = icmp ult i8 %switch.tableidx, 3
  br i1 %i.r, label %switch.lookup, label %adjustTypeIfNeeded.exit

switch.lookup:                                    ; preds = %bb.j
  %i.s = zext nneg i8 %switch.tableidx to i64
  %switch.gep27.a = getelementptr inbounds nuw [8 x i8], ptr @switch.table.sdsResize.6, i64 %i.s
  %switch.load28.a = load i64, ptr %switch.gep27.a, align 8
  %i.t = icmp ugt i64 %i.q, %switch.load28.a
  br i1 %i.t, label %bb.k, label %adjustTypeIfNeeded.exit
end_hunk_2
begin_hunk_3_@sdsnewplacement:bb.a

switch.lookup:                                    ; preds = %bb.a
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.sdsnewplacement.3, i64 %i.c
  %switch.load = load i64, ptr %switch.gep, align 8
  br label %sdsReqSize.exit

end_hunk_3
begin_hunk_4_@sdsnewplacement:bb.a

switch.lookup57:                                  ; preds = %bb.c
  %i.g = zext nneg i8 %i.a to i64
  %switch.gep58 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.sdsnewplacement.3, i64 %i.g
  %switch.load59 = load i64, ptr %switch.gep58, align 8
  br label %sdsHdrSize.exit

end_hunk_4
begin_hunk_5_@sdsfree:bb.a

switch.lookup:                                    ; preds = %bb.b
  %i.f = zext nneg i8 %i.d to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.sdstemplate.9, i64 %i.f
  %switch.load = load i64, ptr %switch.gep, align 8
  br label %sdsHdrSize.exit

end_hunk_5
begin_hunk_6_@sdsfreeusable:bb.a

switch.lookup:                                    ; preds = %bb.b
  %i.f = zext nneg i8 %i.d to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.sdstemplate.9, i64 %i.f
  %switch.load = load i64, ptr %switch.gep, align 8
  br label %sdsHdrSize.exit

end_hunk_6
begin_hunk_7_@sdsfreegeneric:bb.a

switch.lookup:                                    ; preds = %bb.b
  %i.f = zext nneg i8 %i.d to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.sdstemplate.9, i64 %i.f
  %switch.load = load i64, ptr %switch.gep, align 8
  br label %sdsHdrSize.exit.i

end_hunk_7
begin_hunk_8_@_sdsMakeRoomFor:bb.a
  br label %sdsHdrSize.exit

sdsHdrSize.exit:                                  ; preds = %bb.f, %sdslen.exit.thread107, %sdslen.exit.thread104, %sdslen.exit.thread101, %sdslen.exit.thread98, %sdslen.exit.thread
  %.0.i5697 = phi i64 [ %i.ag, %sdslen.exit.thread98 ], [ %i.aj, %sdslen.exit.thread101 ], [ %i.ad, %sdslen.exit.thread ], [ %i.ao, %sdslen.exit.thread107 ], [ %i.am, %sdslen.exit.thread104 ], [ 0, %bb.f ] ; 15 uses
  %.0.i57.neg = phi i64 [ -3, %sdslen.exit.thread98 ], [ -5, %sdslen.exit.thread101 ], [ -1, %sdslen.exit.thread ], [ -17, %sdslen.exit.thread107 ], [ -9, %sdslen.exit.thread104 ], [ 0, %bb.f ]
  %i.ap = getelementptr inbounds i8, ptr %0, i64 %.0.i57.neg ; 5 uses
  %i.aq = add i64 %.0.i5697, %1                   ; 6 uses
end_hunk_8
begin_hunk_9_@_sdsMakeRoomFor:bb.a
  br i1 %i.ax, label %sdsHdrSize.exit60, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ay = icmp ult i64 %.047, 4294967287          ; 2 uses
  %spec.select = select i1 %i.ay, i8 3, i8 4
  %spec.select189 = select i1 %i.ay, i32 9, i32 17
  br label %sdsHdrSize.exit60

default.unreachable151:                           ; preds = %adjustTypeIfNeeded.exit73
  unreachable

sdsHdrSize.exit60:                                ; preds = %bb.n, %bb.l, %bb.m
  %.0.i58153 = phi i8 [ 2, %bb.m ], [ 1, %bb.l ], [ %spec.select, %bb.n ] ; 6 uses
  %.0.i59 = phi i32 [ 5, %bb.m ], [ 3, %bb.l ], [ %spec.select189, %bb.n ] ; 8 uses
  %3 = zext nneg i32 %.0.i59 to i64               ; 4 uses
  %i.az = add i64 %.047, 1
  %i.ba = add i64 %i.az, %3                       ; 3 uses
  %i.bb = icmp ugt i64 %i.ba, %i.aq
  br i1 %i.bb, label %bb.p, label %bb.o, !prof !13

end_hunk_9
begin_hunk_10_@_sdsMakeRoomFor:bb.a
  unreachable

bb.p:                                             ; preds = %sdsHdrSize.exit60
  %i.bc = icmp eq i8 %i.c, %.0.i58153
  br i1 %i.bc, label %bb.q, label %bb.v

bb.q:                                             ; preds = %bb.p
end_hunk_10
begin_hunk_11_@_sdsMakeRoomFor:bb.a
  br i1 %i.be, label %sdssetalloc.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 %3 ; 4 uses
  %i.bg = load i64, ptr %i.a, align 8, !tbaa !14
  %i.bh = xor i32 %.0.i59, -1
  %i.bi = sext i32 %i.bh to i64
  %i.bj = add i64 %i.bg, %i.bi                    ; 4 uses
  %switch.tableidx = add nsw i8 %i.c, -1          ; 2 uses
end_hunk_11
begin_hunk_12_@_sdsMakeRoomFor:bb.a

switch.lookup:                                    ; preds = %bb.r
  %i.bl = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.sdsResize.6, i64 %i.bl
  %switch.load = load i64, ptr %switch.gep, align 8
  %i.bm = icmp ugt i64 %i.bj, %switch.load
  br i1 %i.bm, label %bb.s, label %adjustTypeIfNeeded.exit.thread
end_hunk_12
begin_hunk_13_@_sdsMakeRoomFor:bb.a
  br label %adjustTypeIfNeeded.exit.thread

bb.v:                                             ; preds = %bb.p
  %i.ca = call ptr @zmalloc_usable(i64 noundef %i.ba, ptr noundef nonnull %i.a) #25 ; 6 uses
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %sdssetalloc.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cc = load i64, ptr %i.a, align 8, !tbaa !14
  %i.cd = xor i32 %.0.i59, -1
  %i.ce = sext i32 %i.cd to i64
  %i.cf = add i64 %i.cc, %i.ce                    ; 3 uses
  %4 = icmp samesign ult i8 %.0.i58153, 4
  br i1 %4, label %switch.lookup191, label %adjustTypeIfNeeded.exit73.thread128

adjustTypeIfNeeded.exit73.thread128:              ; preds = %bb.w
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ca, i64 %3 ; 3 uses
  %i.ch = add nuw i64 %.0.i5697, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.cg, ptr noundef nonnull align 1 dereferenceable(1) %0, i64 %i.ch, i1 false)
  call void @zfree(ptr noundef nonnull %i.ap) #25
  %5 = getelementptr inbounds i8, ptr %i.cg, i64 -1
  store i8 %.0.i58153, ptr %5, align 1, !tbaa !17
  %i.ci = xor i32 %.0.i59, -1
  %i.cj = sext i32 %i.ci to i64
  br label %adjustTypeIfNeeded.exit.thread.thread176

switch.lookup191:                                 ; preds = %bb.w
  %6 = zext nneg i8 %.0.i58153 to i64
  %i.ck = getelementptr [8 x i8], ptr @switch.table.sdsResize.6, i64 %6
  %switch.gep192 = getelementptr i8, ptr %i.ck, i64 -8
  %switch.load193 = load i64, ptr %switch.gep192, align 8
  %i.cl = icmp ugt i64 %i.cf, %switch.load193
  br i1 %i.cl, label %bb.x, label %adjustTypeIfNeeded.exit73

bb.x:                                             ; preds = %switch.lookup191
end_hunk_13
begin_hunk_14_@_sdsMakeRoomFor:bb.a

adjustTypeIfNeeded.exit73.thread:                 ; preds = %bb.x
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ca, i64 5 ; 2 uses
  %7 = add nuw i64 %.0.i5697, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.cn, ptr noundef nonnull align 1 dereferenceable(1) %0, i64 %7, i1 false)
  call void @zfree(ptr noundef nonnull %i.ap) #25
  %i.co = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
end_hunk_14
begin_hunk_15_@_sdsMakeRoomFor:bb.a
  br label %bb.y

sdsReqType.exit.i67:                              ; preds = %bb.x
  %i.cp = icmp ult i64 %i.cf, 4294967287          ; 2 uses
  %.pre = select i1 %i.cp, i64 9, i64 17
  %8 = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.pre ; 4 uses
  %9 = add nuw i64 %.0.i5697, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 1 dereferenceable(1) %0, i64 %9, i1 false)
  call void @zfree(ptr noundef nonnull %i.ap) #25
  %10 = getelementptr inbounds i8, ptr %8, i64 -1 ; 2 uses
  br i1 %i.cp, label %adjustTypeIfNeeded.exit73.thread165, label %adjustTypeIfNeeded.exit73.thread161

adjustTypeIfNeeded.exit73.thread161:              ; preds = %sdsReqType.exit.i67
  store i8 4, ptr %10, align 1, !tbaa !17
  br label %adjustTypeIfNeeded.exit.thread.thread176

adjustTypeIfNeeded.exit73.thread165:              ; preds = %sdsReqType.exit.i67
  store i8 3, ptr %10, align 1, !tbaa !17
  br label %adjustTypeIfNeeded.exit.thread.thread180

adjustTypeIfNeeded.exit73:                        ; preds = %switch.lookup191
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ca, i64 %3 ; 6 uses
  %11 = add nuw i64 %.0.i5697, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.cq, ptr noundef nonnull align 1 dereferenceable(1) %0, i64 %11, i1 false)
  call void @zfree(ptr noundef nonnull %i.ap) #25
  %i.cr = getelementptr inbounds i8, ptr %i.cq, i64 -1
  store i8 %.0.i58153, ptr %i.cr, align 1, !tbaa !17
  switch i8 %.0.i58153, label %default.unreachable151 [
    i8 3, label %adjustTypeIfNeeded.exit.thread.thread180
    i8 1, label %adjustTypeIfNeeded.exit.thread.thread185
    i8 2, label %bb.y
end_hunk_15
begin_hunk_16_@_sdsMakeRoomFor:bb.a
  %i.ct = getelementptr inbounds i8, ptr %i.cq, i64 -3
  store i8 %i.cs, ptr %i.ct, align 1, !tbaa !17
  %i.cu = load i64, ptr %i.a, align 8, !tbaa !14
  %i.cv = xor i32 %.0.i59, -1
  %i.cw = sext i32 %i.cv to i64
  %i.cx = add i64 %i.cu, %i.cw
  br label %sdsTypeMaxSize.exit

bb.y:                                             ; preds = %adjustTypeIfNeeded.exit73.thread, %adjustTypeIfNeeded.exit73
  %i.cy = phi ptr [ %i.cn, %adjustTypeIfNeeded.exit73.thread ], [ %i.cq, %adjustTypeIfNeeded.exit73 ] ; 2 uses
  %.2126 = phi i32 [ 5, %adjustTypeIfNeeded.exit73.thread ], [ %.0.i59, %adjustTypeIfNeeded.exit73 ]
  %i.cz = trunc i64 %.0.i5697 to i16
  %i.da = getelementptr inbounds i8, ptr %i.cy, i64 -5
  store i16 %i.cz, ptr %i.da, align 1, !tbaa !18
end_hunk_16
begin_hunk_17_@_sdsMakeRoomFor:bb.a
  br label %adjustTypeIfNeeded.exit.thread.thread170

adjustTypeIfNeeded.exit.thread.thread180:         ; preds = %adjustTypeIfNeeded.exit73, %adjustTypeIfNeeded.exit73.thread165
  %i.dd = phi ptr [ %8, %adjustTypeIfNeeded.exit73.thread165 ], [ %i.cq, %adjustTypeIfNeeded.exit73 ] ; 2 uses
  %.2169 = phi i32 [ 9, %adjustTypeIfNeeded.exit73.thread165 ], [ %.0.i59, %adjustTypeIfNeeded.exit73 ]
  %i.de = trunc i64 %.0.i5697 to i32
  %i.df = getelementptr inbounds i8, ptr %i.dd, i64 -9
  store i32 %i.de, ptr %i.df, align 1, !tbaa !9
end_hunk_17
begin_hunk_18_@_sdsMakeRoomFor:bb.a
  br label %sdsTypeMaxSize.exit

adjustTypeIfNeeded.exit.thread.thread176:         ; preds = %adjustTypeIfNeeded.exit73.thread128, %adjustTypeIfNeeded.exit73.thread161
  %i.dk = phi ptr [ %i.cg, %adjustTypeIfNeeded.exit73.thread128 ], [ %8, %adjustTypeIfNeeded.exit73.thread161 ] ; 2 uses
  %.2132 = phi i64 [ %i.cj, %adjustTypeIfNeeded.exit73.thread128 ], [ -18, %adjustTypeIfNeeded.exit73.thread161 ]
  %i.dl = getelementptr inbounds i8, ptr %i.dk, i64 -17
  store i64 %.0.i5697, ptr %i.dl, align 1, !tbaa !14
  %i.dm = load i64, ptr %i.a, align 8, !tbaa !14
end_hunk_18
begin_hunk_19_@_sdsMakeRoomFor:bb.a

adjustTypeIfNeeded.exit.thread:                   ; preds = %switch.lookup, %bb.t, %bb.u
  %.093 = phi i8 [ 3, %bb.t ], [ 4, %bb.u ], [ %i.c, %switch.lookup ]
  %.092 = phi i32 [ 9, %bb.t ], [ 17, %bb.u ], [ %.0.i59, %switch.lookup ]
  %.046 = phi ptr [ %i.bu, %bb.t ], [ %i.bu, %bb.u ], [ %i.bf, %switch.lookup ] ; 4 uses
  %i.dq = load i64, ptr %i.a, align 8, !tbaa !14
  %i.dr = xor i32 %.092, -1
end_hunk_19
begin_hunk_20_@sdsResize:bb.a

switch.lookup:                                    ; preds = %bb.m
  %i.bs = zext nneg i8 %switch.tableidx to i64
  %switch.gep175 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.sdsResize.6, i64 %i.bs
  %switch.load176 = load i64, ptr %switch.gep175, align 8
  %i.bt = icmp ugt i64 %i.bq, %switch.load176
  br i1 %i.bt, label %bb.n, label %.thread
end_hunk_20
begin_hunk_21_@sdsResize:bb.a

switch.lookup178:                                 ; preds = %bb.r
  %i.cs = zext nneg i8 %switch.tableidx177 to i64
  %switch.gep179 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.sdsResize.6, i64 %i.cs
  %switch.load180 = load i64, ptr %switch.gep179, align 8
  %i.ct = icmp ugt i64 %i.cq, %switch.load180
  br i1 %i.ct, label %bb.s, label %adjustTypeIfNeeded.exit79
end_hunk_21
begin_hunk_22_@sdsAllocPtr:bb.a

switch.lookup:                                    ; preds = %bb.a
  %i.e = zext nneg i8 %i.c to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.sdstemplate.9, i64 %i.e
  %switch.load = load i64, ptr %switch.gep, align 8
  br label %sdsHdrSize.exit

end_hunk_22
begin_hunk_23_@sdssplitlen:bb.a

switch.lookup:                                    ; preds = %bb.o
  %i.bq = zext nneg i8 %i.bo to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.sdstemplate.9, i64 %i.bq
  %switch.load = load i64, ptr %switch.gep, align 8
  br label %sdsHdrSize.exit.i

end_hunk_23
begin_hunk_24_@sdsfreesplitres:bb.a

switch.lookup:                                    ; preds = %bb.b
  %i.i = zext nneg i8 %i.g to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.sdstemplate.9, i64 %i.i
  %switch.load = load i64, ptr %switch.gep, align 8
  br label %sdsHdrSize.exit.i

end_hunk_24
begin_hunk_25_@sdssplitargs:bb.a

switch.lookup:                                    ; preds = %bb.cq
  %i.jg = zext nneg i8 %i.je to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.sdstemplate.9, i64 %i.jg
  %switch.load = load i64, ptr %switch.gep, align 8
  br label %sdsHdrSize.exit.i

end_hunk_25
begin_hunk_26_@sdssplitargs:bb.a

switch.lookup238:                                 ; preds = %bb.cr
  %i.jo = zext nneg i8 %i.jm to i64
  %switch.gep239 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.sdstemplate.9, i64 %i.jo
  %switch.load240 = load i64, ptr %switch.gep239, align 8
  br label %sdsfree.exit138

end_hunk_26
begin_hunk_27_@sdstemplate:bb.a

switch.lookup:                                    ; preds = %bb.aq
  %i.dq = zext nneg i8 %i.do to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.sdstemplate.9, i64 %i.dq
  %switch.load = load i64, ptr %switch.gep, align 8
  br label %sdsHdrSize.exit.i

end_hunk_27
begin_hunk_28_@sdstemplate:bb.a

switch.lookup112:                                 ; preds = %sdscat.exit64
  %i.fb = zext nneg i8 %i.ez to i64
  %switch.gep113 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.sdstemplate.9, i64 %i.fb
  %switch.load114 = load i64, ptr %switch.gep113, align 8
  br label %sdsfree.exit67

end_hunk_28
begin_hunk_29_@sdstemplate:bb.a

switch.lookup115:                                 ; preds = %bb.be
  %i.fk = zext nneg i8 %i.fi to i64
  %switch.gep116 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.sdstemplate.9, i64 %i.fk
  %switch.load117 = load i64, ptr %switch.gep116, align 8
  br label %sdsHdrSize.exit.i68

end_hunk_29
