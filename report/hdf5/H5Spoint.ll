inline.NumInlined: 6
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 15
begin_hunk_0_@H5S__point_offset:bb.a
; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @H5S__point_unlim_dim(ptr nofree readnone captures(none) %0) #2 {
bb.a:
  ret i32 -1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -1, 2) i32 @H5S__point_is_contiguous(ptr nofree noundef readonly captures(none) %0) #3 {
bb.a:
  %i.a = load i8, ptr @H5S_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.h = load i64, ptr %i.g, align 8, !tbaa !33
  %i.i = icmp eq i64 %i.h, 1
  %. = zext i1 %i.i to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %., %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -1, 2) i32 @H5S__point_is_single(ptr nofree noundef readonly captures(none) %0) #3 {
bb.a:
  %i.a = load i8, ptr @H5S_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.h = load i64, ptr %i.g, align 8, !tbaa !33
  %i.i = icmp eq i64 %i.h, 1
  %. = zext i1 %i.i to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %., %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -1, 2) i32 @H5S__point_is_regular(ptr nofree noundef readonly captures(none) %0) #3 {
bb.a:
  %i.a = load i8, ptr @H5S_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.h = load i64, ptr %i.g, align 8, !tbaa !33
  %i.i = icmp eq i64 %i.h, 1
  %. = zext i1 %i.i to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %., %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 2) i32 @H5S__point_shape_same(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #4 {
bb.a:
  %i.a = alloca [32 x i64], align 16              ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.b = load i8, ptr @H5S_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = xor i1 %i.e, true
  %i.g = select i1 %i.c, i1 true, i1 %i.f
  br i1 %i.g, label %bb.b, label %.loopexit46, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load i32, ptr %i.h, align 8, !tbaa !14   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.k = load i32, ptr %i.j, align 8, !tbaa !14   ; 6 uses
  %i.l = add i32 %i.i, -1                         ; 5 uses
  %i.m = add i32 %i.k, -1                         ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !13
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 512
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !24   ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 360
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !13
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 512
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !24   ; 2 uses
  %i.v = icmp sgt i32 %i.k, 0                     ; 2 uses
  br i1 %i.v, label %.lr.ph, label %.preheader51

.lr.ph:                                           ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.y = zext i32 %i.m to i64                     ; 3 uses
  %i.z = sext i32 %i.l to i64                     ; 3 uses
  %i.aa = zext nneg i32 %i.k to i64               ; 2 uses
  %min.iters.check = icmp ult i32 %i.k, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.aa, 2147483644              ; 4 uses
  %i.ab = sub nsw i64 %i.z, %n.vec                ; 2 uses
  %i.ac = sub nsw i64 %i.y, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ad = sub i64 %i.z, %index                    ; 2 uses
  %i.ae = sub i64 %i.y, %index
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.ae ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 -8
  %i.ah = getelementptr inbounds i8, ptr %i.af, i64 -24
  %wide.load = load <2 x i64>, ptr %i.ag, align 8, !tbaa !23
  %wide.load103 = load <2 x i64>, ptr %i.ah, align 8, !tbaa !23
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.ad ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 -8
  %i.ak = getelementptr inbounds i8, ptr %i.ai, i64 -24
  %wide.load104 = load <2 x i64>, ptr %i.aj, align 8, !tbaa !23
  %wide.load105 = load <2 x i64>, ptr %i.ak, align 8, !tbaa !23
  %i.al = sub nsw <2 x i64> %wide.load, %wide.load104
  %i.am = sub nsw <2 x i64> %wide.load103, %wide.load105
  %i.an = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.ad ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 -8
  %i.ap = getelementptr inbounds i8, ptr %i.an, i64 -24
  store <2 x i64> %i.al, ptr %i.ao, align 8, !tbaa !23
  store <2 x i64> %i.am, ptr %i.ap, align 8, !tbaa !23
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !55

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.aa
  br i1 %cmp.n, label %.preheader51.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv84.ph = phi i64 [ %i.z, %.lr.ph ], [ %i.ab, %middle.block ]
  %indvars.iv.ph = phi i64 [ %i.y, %.lr.ph ], [ %i.ac, %middle.block ]
  br label %scalar.ph

.preheader51.loopexit:                            ; preds = %scalar.ph, %middle.block
  %indvars.iv.next85.lcssa = phi i64 [ %i.ab, %middle.block ], [ %indvars.iv.next85, %scalar.ph ]
  %i.ar = trunc nsw i64 %indvars.iv.next85.lcssa to i32
  br label %.preheader51

.preheader51:                                     ; preds = %.preheader51.loopexit, %bb.b
  %.041.lcssa = phi i32 [ %i.l, %bb.b ], [ %i.ar, %.preheader51.loopexit ] ; 2 uses
  %i.as = icmp sgt i32 %.041.lcssa, -1
  br i1 %i.as, label %.lr.ph56, label %.preheader49

.lr.ph56:                                         ; preds = %.preheader51
  %i.at = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.au = add nuw i32 %.041.lcssa, 1
  %i.av = zext i32 %i.au to i64
  %i.aw = shl nuw nsw i64 %i.av, 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(1) %i.at, i64 %i.aw, i1 false), !tbaa !23
  br label %.preheader49

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv84 = phi i64 [ %indvars.iv.next85, %scalar.ph ], [ %indvars.iv84.ph, %scalar.ph.preheader ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !23
  %i.az = getelementptr inbounds [8 x i8], ptr %i.x, i64 %indvars.iv84
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !23
  %i.bb = sub nsw i64 %i.ay, %i.ba
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.a, i64 %indvars.iv84
  store i64 %i.bb, ptr %i.bc, align 8, !tbaa !23
  %indvars.iv.next85 = add nsw i64 %indvars.iv84, -1 ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not = icmp eq i64 %indvars.iv, 0
  br i1 %.not, label %.preheader51.loopexit, label %scalar.ph, !llvm.loop !58

.preheader49:                                     ; preds = %.lr.ph56, %.preheader51
  %.04363 = load ptr, ptr %i.u, align 8, !tbaa !27 ; 3 uses
  %.04464 = load ptr, ptr %i.q, align 8, !tbaa !27 ; 3 uses
  %i.bd = icmp ne ptr %.04464, null
  %i.be = icmp ne ptr %.04363, null
  %i.bf = select i1 %i.bd, i1 %i.be, i1 false
  br i1 %i.bf, label %.preheader47.lr.ph, label %.loopexit46

.preheader47.lr.ph:                               ; preds = %.preheader49
  br i1 %i.v, label %.preheader47.us.preheader, label %.preheader47.lr.ph.split

.preheader47.us.preheader:                        ; preds = %.preheader47.lr.ph
  %2 = zext nneg i32 %i.m to i64
  %i.bg = sext i32 %i.l to i64
  %3 = sub i32 %i.i, %i.k
  %i.bh = sub i32 %i.l, %i.k
  %4 = zext i32 %i.bh to i64
  %i.bi = icmp sgt i32 %3, 0
  br label %.preheader47.us

.preheader47.us:                                  ; preds = %.preheader47.us.preheader, %.loopexit.us
  %.04466.us = phi ptr [ %.044.us, %.loopexit.us ], [ %.04464, %.preheader47.us.preheader ] ; 2 uses
  %.04365.us = phi ptr [ %.043.us, %.loopexit.us ], [ %.04363, %.preheader47.us.preheader ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.04466.us, i64 8 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.04365.us, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.preheader47.us, %bb.d
  %indvars.iv92.a = phi i64 [ %i.bg, %.preheader47.us ], [ %indvars.iv.next93.a, %bb.d ] ; 3 uses
  %indvars.iv95 = phi i64 [ %2, %.preheader47.us ], [ %indvars.iv.next96, %bb.d ] ; 3 uses
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %indvars.iv92.a
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !23
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.a, i64 %indvars.iv92.a
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !23
  %i.bp = add nsw i64 %i.bo, %i.bm
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv95
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !23
  %.not45.us = icmp eq i64 %i.bp, %i.br
  br i1 %.not45.us, label %bb.d, label %.loopexit46

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next93.a = add nsw i64 %indvars.iv92.a, -1
  %indvars.iv.next96 = add nsw i64 %indvars.iv95, -1
  %i.bs = icmp sgt i64 %indvars.iv95, 0
  br i1 %i.bs, label %bb.c, label %..preheader_crit_edge.us, !llvm.loop !59

bb.e:                                             ; preds = %.lr.ph62.us
  %indvars.iv.next103 = add nsw i64 %indvars.iv102, -1
  %i.bt = icmp sgt i64 %indvars.iv102, 0
  br i1 %i.bt, label %.lr.ph62.us, label %.loopexit.us, !llvm.loop !60

.lr.ph62.us:                                      ; preds = %..preheader_crit_edge.us, %bb.e
  %indvars.iv102 = phi i64 [ %indvars.iv.next103, %bb.e ], [ %4, %..preheader_crit_edge.us ] ; 4 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv102
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !23
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv102
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !23
  %.not.us = icmp eq i64 %i.bv, %i.bx
  br i1 %.not.us, label %bb.e, label %.loopexit46

.loopexit.us:                                     ; preds = %bb.e, %..preheader_crit_edge.us
  %.043.us = load ptr, ptr %.04365.us, align 8, !tbaa !27 ; 2 uses
  %.044.us = load ptr, ptr %.04466.us, align 8, !tbaa !27 ; 2 uses
  %i.by = icmp ne ptr %.044.us, null
  %i.bz = icmp ne ptr %.043.us, null
  %i.ca = select i1 %i.by, i1 %i.bz, i1 false
  br i1 %i.ca, label %.preheader47.us, label %.loopexit46, !llvm.loop !61

..preheader_crit_edge.us:                         ; preds = %bb.d
  br i1 %i.bi, label %.lr.ph62.us, label %.loopexit.us

.preheader47.lr.ph.split:                         ; preds = %.preheader47.lr.ph
  %i.cb = icmp sgt i32 %i.i, 0
  br i1 %i.cb, label %.preheader47.us67.preheader, label %.loopexit46

.preheader47.us67.preheader:                      ; preds = %.preheader47.lr.ph.split
  %5 = zext nneg i32 %i.l to i64
  br label %.preheader47.us67

.preheader47.us67:                                ; preds = %.preheader47.us67.preheader, %..loopexit_crit_edge.us76
  %.04466.us68 = phi ptr [ %.044.us74, %..loopexit_crit_edge.us76 ], [ %.04464, %.preheader47.us67.preheader ] ; 2 uses
  %.04365.us69 = phi ptr [ %.043.us73, %..loopexit_crit_edge.us76 ], [ %.04363, %.preheader47.us67.preheader ]
  %i.cc = getelementptr inbounds nuw i8, ptr %.04466.us68, i64 8
  br label %bb.g

bb.f:                                             ; preds = %bb.g
  %indvars.iv.next93 = add nsw i64 %indvars.iv92, -1
  %i.cd = icmp sgt i64 %indvars.iv92, 0
  br i1 %i.cd, label %bb.g, label %..loopexit_crit_edge.us76, !llvm.loop !60

bb.g:                                             ; preds = %.preheader47.us67, %bb.f
  %indvars.iv92 = phi i64 [ %5, %.preheader47.us67 ], [ %indvars.iv.next93, %bb.f ] ; 4 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %indvars.iv92
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !23
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv92
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !23
  %.not.us71 = icmp eq i64 %i.cf, %i.ch
  br i1 %.not.us71, label %bb.f, label %.loopexit46

..loopexit_crit_edge.us76:                        ; preds = %bb.f
  %.043.us73 = load ptr, ptr %.04365.us69, align 8, !tbaa !27 ; 2 uses
  %.044.us74 = load ptr, ptr %.04466.us68, align 8, !tbaa !27 ; 2 uses
  %i.ci = icmp ne ptr %.044.us74, null
  %i.cj = icmp ne ptr %.043.us73, null
  %i.ck = select i1 %i.ci, i1 %i.cj, i1 false
  br i1 %i.ck, label %.preheader47.us67, label %.loopexit46, !llvm.loop !61

.loopexit46:                                      ; preds = %..loopexit_crit_edge.us76, %bb.g, %.loopexit.us, %bb.c, %.lr.ph62.us, %.preheader47.lr.ph.split, %.preheader49, %bb.a
  %.0 = phi i32 [ 1, %bb.a ], [ 1, %.preheader47.lr.ph.split ], [ 1, %.preheader49 ], [ 0, %bb.g ], [ 1, %.loopexit.us ], [ 0, %bb.c ], [ 0, %.lr.ph62.us ], [ 1, %..loopexit_crit_edge.us76 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 2) i32 @H5S__point_intersect_block(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #1 {
bb.a:
  %i.a = load i8, ptr @H5S_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %.thread, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !13
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 512
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %.020.in = phi ptr [ %i.i, %bb.b ], [ %.020, %._crit_edge ]
  %.020 = load ptr, ptr %.020.in, align 8, !tbaa !27 ; 3 uses
  %.not = icmp eq ptr %.020, null
  br i1 %.not, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.020, i64 8
  %i.l = load i32, ptr %i.j, align 8, !tbaa !14   ; 3 uses
  %.not35 = icmp eq i32 %i.l, 0
  br i1 %.not35, label %.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext i32 %i.l to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.e ] ; 5 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  %i.n = load i64, ptr %i.m, align 8, !tbaa !23   ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.p = load i64, ptr %i.o, align 8, !tbaa !23
  %i.q = icmp ult i64 %i.n, %i.p
  br i1 %i.q, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.s = load i64, ptr %i.r, align 8, !tbaa !23
  %i.t = icmp ugt i64 %i.n, %i.s
  br i1 %i.t, label %._crit_edge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !62

._crit_edge:                                      ; preds = %bb.d, %.lr.ph
  %i.u = trunc nuw i64 %indvars.iv to i32
  %i.v = icmp eq i32 %i.l, %i.u
  br i1 %i.v, label %.thread, label %bb.c

.thread:                                          ; preds = %.preheader, %._crit_edge, %bb.c, %bb.e, %bb.a
  %.2 = phi i32 [ 0, %bb.a ], [ 1, %bb.e ], [ 1, %.preheader ], [ 1, %._crit_edge ], [ 0, %bb.c ]
  ret i32 %.2
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @H5S__point_adjust_u(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #4 {
bb.a:
  %i.a = load i8, ptr @H5S_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %.preheader31, label %.critedge, !prof !12

.preheader31:                                     ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load i32, ptr %i.g, align 8, !tbaa !14   ; 5 uses
  %.not40 = icmp eq i32 %i.h, 0
  br i1 %.not40, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader31
  %wide.trip.count = zext i32 %i.h to i64         ; 9 uses
  br label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !63

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.j = load i64, ptr %i.i, align 8, !tbaa !23
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 7 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !13
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 512
  %.02736 = load ptr, ptr %i.m, align 8, !tbaa !27 ; 2 uses
  %.not2937 = icmp eq ptr %.02736, null
  br i1 %.not2937, label %.preheader.preheader, label %.preheader30.preheader

.preheader.preheader:                             ; preds = %.loopexit, %bb.c
  %xtraiter60 = and i64 %wide.trip.count, 1
  %i.n = icmp eq i32 %i.h, 1
  br i1 %i.n, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  br label %.preheader

.preheader30.preheader:                           ; preds = %bb.c
  %i.o = shl nuw nsw i64 %wide.trip.count, 3      ; 2 uses
  %scevgep55 = getelementptr i8, ptr %1, i64 %i.o
  %min.iters.check = icmp ult i32 %i.h, 4
  %n.vec = and i64 %wide.trip.count, 4294967292   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader30

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.027 = load ptr, ptr %.02738, align 8, !tbaa !27 ; 2 uses
  %.not29 = icmp eq ptr %.027, null
  br i1 %.not29, label %.preheader.preheader, label %.preheader30, !llvm.loop !64

.preheader30:                                     ; preds = %.preheader30.preheader, %.loopexit
  %.02738 = phi ptr [ %.027, %.loopexit ], [ %.02736, %.preheader30.preheader ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.02738, i64 8 ; 7 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader30
  %i.q = getelementptr i8, ptr %.02738, i64 %i.o
  %scevgep = getelementptr i8, ptr %i.q, i64 8
  %bound0 = icmp ult ptr %i.p, %scevgep55
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %wide.load = load <2 x i64>, ptr %i.r, align 8, !tbaa !23, !alias.scope !65
  %wide.load56 = load <2 x i64>, ptr %i.s, align 8, !tbaa !23, !alias.scope !65
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %index ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %wide.load57 = load <2 x i64>, ptr %i.t, align 8, !tbaa !23, !alias.scope !68, !noalias !65
  %wide.load58 = load <2 x i64>, ptr %i.u, align 8, !tbaa !23, !alias.scope !68, !noalias !65
  %i.v = sub <2 x i64> %wide.load57, %wide.load
  %i.w = sub <2 x i64> %wide.load58, %wide.load56
  store <2 x i64> %i.v, ptr %i.t, align 8, !tbaa !23, !alias.scope !68, !noalias !65
  store <2 x i64> %i.w, ptr %i.u, align 8, !tbaa !23, !alias.scope !68, !noalias !65
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !70

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader30, %middle.block
  %indvars.iv43.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader30 ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv43.prol = phi i64 [ %indvars.iv.next44.prol, %scalar.ph.prol ], [ %indvars.iv43.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv43.prol
  %i.z = load i64, ptr %i.y, align 8, !tbaa !23
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv43.prol ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !23
  %i.ac = sub i64 %i.ab, %i.z
  store i64 %i.ac, ptr %i.aa, align 8, !tbaa !23
  %indvars.iv.next44.prol = add nuw nsw i64 %indvars.iv43.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !71

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
end_hunk_0
