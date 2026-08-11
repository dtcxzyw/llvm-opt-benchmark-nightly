inline.NumInlined: 335
inline.NumDeleted: 77
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 25
begin_hunk_0_@Ifn_NtkTtBits:bb.a
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !56

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.bc, %i.bb
  %i.be = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %i.g, %.lr.ph ], [ %i.i, %middle.block ]
  %.014.ph = phi i32 [ 0, %.lr.ph ], [ %i.be, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.014 = phi i32 [ %.1, %scalar.ph ], [ %.014.ph, %scalar.ph.preheader ]
  %i.bf = getelementptr inbounds [48 x i8], ptr %i.f, i64 %indvars.iv
  %i.bg = load i32, ptr %i.bf, align 8            ; 2 uses
  %i.bh = and i32 %i.bg, 7
  %i.bi = icmp eq i32 %i.bh, 6
  %i.bj = lshr i32 %i.bg, 3
  %i.bk = and i32 %i.bj, 31
  %i.bl = shl nuw i32 1, %i.bk
  %i.bm = select i1 %i.bi, i32 %i.bl, i32 0
  %.1 = add nsw i32 %i.bm, %.014                  ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !57

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.be, %middle.block ], [ %.1, %scalar.ph ]
  tail call void @free(ptr noundef nonnull %i.a) #26
  ret i32 %.0.lcssa
}

; Function Attrs: nounwind uwtable
define ptr @Ifn_ManStrFindModel(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca [256 x i32], align 16             ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1564 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !18
  %i.d = sext i32 %i.c to i64
  %i.e = shl nsw i64 %i.d, 2                      ; 2 uses
  %i.f = tail call noalias ptr @malloc(i64 noundef %i.e) #28 ; 16 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.f, i8 -1, i64 %i.e, i1 false)
  %i.g = tail call ptr @Gia_ManStart(i32 noundef 1000) #26 ; 11 uses
  %i.h = tail call noalias dereferenceable_or_null(6) ptr @malloc(i64 noundef 6) #28 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.h, ptr noundef nonnull align 1 dereferenceable(6) @.str.24, i64 6, i1 false) #26
  store ptr %i.h, ptr %i.g, align 8, !tbaa !58
  tail call void @Gia_ManHashStart(ptr noundef nonnull %i.g) #26
  %i.i = load i32, ptr %0, align 8, !tbaa !15     ; 2 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %i.k = tail call fastcc i32 @Gia_ManAppendCi(ptr noundef nonnull %i.g)
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  store i32 %i.k, ptr %i.l, align 4, !tbaa !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.m = load i32, ptr %0, align 8, !tbaa !15     ; 2 uses
  %i.n = sext i32 %i.m to i64
  %i.o = icmp slt i64 %indvars.iv.next, %i.n
  br i1 %i.o, label %.lr.ph, label %._crit_edge, !llvm.loop !77

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.p = phi i32 [ %i.i, %bb.a ], [ %i.m, %.lr.ph ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !14   ; 3 uses
  %i.s = load i32, ptr %i.b, align 4, !tbaa !18
  %i.t = icmp slt i32 %i.r, %i.s
  br i1 %i.t, label %.lr.ph114.preheader, label %._crit_edge115

.lr.ph114.preheader:                              ; preds = %._crit_edge
  %i.u = sext i32 %i.r to i64
  br label %.lr.ph114

.lr.ph114:                                        ; preds = %.lr.ph114.preheader, %.lr.ph114
  %indvars.iv145 = phi i64 [ %i.u, %.lr.ph114.preheader ], [ %indvars.iv.next146, %.lr.ph114 ] ; 2 uses
  %i.v = tail call fastcc i32 @Gia_ManAppendCi(ptr noundef nonnull %i.g)
  %i.w = getelementptr inbounds [4 x i8], ptr %i.f, i64 %indvars.iv145
  store i32 %i.v, ptr %i.w, align 4, !tbaa !24
  %indvars.iv.next146 = add nsw i64 %indvars.iv145, 1 ; 2 uses
  %i.x = load i32, ptr %i.b, align 4, !tbaa !18
  %i.y = sext i32 %i.x to i64
  %i.z = icmp slt i64 %indvars.iv.next146, %i.y
  br i1 %i.z, label %.lr.ph114, label %._crit_edge115.loopexit, !llvm.loop !78

._crit_edge115.loopexit:                          ; preds = %.lr.ph114
  %.pre = load i32, ptr %0, align 8, !tbaa !15
  %.pre170 = load i32, ptr %i.q, align 4, !tbaa !14
  br label %._crit_edge115

._crit_edge115:                                   ; preds = %._crit_edge115.loopexit, %._crit_edge
  %i.aa = phi i32 [ %.pre170, %._crit_edge115.loopexit ], [ %i.r, %._crit_edge ] ; 2 uses
  %i.ab = phi i32 [ %.pre, %._crit_edge115.loopexit ], [ %i.p, %._crit_edge ] ; 2 uses
  %i.ac = icmp slt i32 %i.ab, %i.aa
  br i1 %i.ac, label %.lr.ph136, label %._crit_edge115.._crit_edge137_crit_edge

._crit_edge115.._crit_edge137_crit_edge:          ; preds = %._crit_edge115
  %.pre171 = sext i32 %i.aa to i64
  br label %._crit_edge137

.lr.ph136:                                        ; preds = %._crit_edge115
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = sext i32 %i.ab to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph136, %bb.f
  %indvars.iv167 = phi i64 [ %i.ae, %.lr.ph136 ], [ %indvars.iv.next168, %bb.f ] ; 6 uses
  %i.af = getelementptr inbounds [48 x i8], ptr %i.ad, i64 %indvars.iv167 ; 4 uses
  %i.ag = load i32, ptr %i.af, align 8            ; 3 uses
  %i.ah = and i32 %i.ag, 7
  %i.ai = lshr i32 %i.ag, 3
  %i.aj = and i32 %i.ai, 31                       ; 8 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 4 ; 4 uses
  switch i32 %i.ah, label %bb.f [
    i32 3, label %.preheader108
    i32 4, label %.preheader109
    i32 5, label %bb.c
    i32 6, label %bb.d
  ]

.preheader109:                                    ; preds = %bb.b
  %.not139 = icmp eq i32 %i.aj, 0
  br i1 %.not139, label %._crit_edge128, label %.lr.ph127.preheader

.lr.ph127.preheader:                              ; preds = %.preheader109
  %wide.trip.count160 = zext nneg i32 %i.aj to i64
  br label %.lr.ph127

.preheader108:                                    ; preds = %bb.b
  %.not140 = icmp eq i32 %i.aj, 0
  br i1 %.not140, label %._crit_edge132, label %.lr.ph131.preheader

.lr.ph131.preheader:                              ; preds = %.preheader108
  %wide.trip.count165 = zext nneg i32 %i.aj to i64
  br label %.lr.ph131

.lr.ph131:                                        ; preds = %.lr.ph131.preheader, %.lr.ph131
  %indvars.iv162 = phi i64 [ 0, %.lr.ph131.preheader ], [ %indvars.iv.next163, %.lr.ph131 ] ; 2 uses
  %.0102129 = phi i32 [ 1, %.lr.ph131.preheader ], [ %i.aq, %.lr.ph131 ]
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv162
  %i.am = load i32, ptr %i.al, align 4, !tbaa !24
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !24
  %i.aq = tail call i32 @Gia_ManHashAnd(ptr noundef nonnull %i.g, i32 noundef %.0102129, i32 noundef %i.ap) #26 ; 2 uses
  %indvars.iv.next163 = add nuw nsw i64 %indvars.iv162, 1 ; 2 uses
  %exitcond166.not = icmp eq i64 %indvars.iv.next163, %wide.trip.count165
  br i1 %exitcond166.not, label %._crit_edge132, label %.lr.ph131, !llvm.loop !79

._crit_edge132:                                   ; preds = %.lr.ph131, %.preheader108
  %.0102.lcssa = phi i32 [ 1, %.preheader108 ], [ %i.aq, %.lr.ph131 ]
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.f, i64 %indvars.iv167
  store i32 %.0102.lcssa, ptr %i.ar, align 4, !tbaa !24
  br label %bb.f

.lr.ph127:                                        ; preds = %.lr.ph127.preheader, %.lr.ph127
  %indvars.iv157 = phi i64 [ 0, %.lr.ph127.preheader ], [ %indvars.iv.next158, %.lr.ph127 ] ; 2 uses
  %.1103125 = phi i32 [ 0, %.lr.ph127.preheader ], [ %i.ax, %.lr.ph127 ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv157
  %i.at = load i32, ptr %i.as, align 4, !tbaa !24
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !24
  %i.ax = tail call i32 @Gia_ManHashXor(ptr noundef nonnull %i.g, i32 noundef %.1103125, i32 noundef %i.aw) #26 ; 2 uses
  %indvars.iv.next158 = add nuw nsw i64 %indvars.iv157, 1 ; 2 uses
  %exitcond161.not = icmp eq i64 %indvars.iv.next158, %wide.trip.count160
  br i1 %exitcond161.not, label %._crit_edge128, label %.lr.ph127, !llvm.loop !80

._crit_edge128:                                   ; preds = %.lr.ph127, %.preheader109
  %.1103.lcssa = phi i32 [ 0, %.preheader109 ], [ %i.ax, %.lr.ph127 ]
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.f, i64 %indvars.iv167
  store i32 %.1103.lcssa, ptr %i.ay, align 4, !tbaa !24
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.az = load i32, ptr %i.ak, align 4, !tbaa !24
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !24
  %i.bd = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !24
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !24
  %i.bi = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !24
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !24
  %i.bn = tail call i32 @Gia_ManHashMux(ptr noundef nonnull %i.g, i32 noundef %i.bc, i32 noundef %i.bh, i32 noundef %i.bm) #26
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.f, i64 %indvars.iv167
  store i32 %i.bn, ptr %i.bo, align 4, !tbaa !24
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.bp = shl nuw i32 1, %i.aj                    ; 2 uses
  %.not = icmp eq i32 %i.aj, 31
  br i1 %.not, label %._crit_edge124.split, label %.preheader110

.preheader110:                                    ; preds = %bb.d
  %i.bq = lshr i32 %i.ag, 6
  %i.br = and i32 %i.bq, 1020
  %i.bs = zext nneg i32 %i.br to i64
  %scevgep = getelementptr i8, ptr %i.f, i64 %i.bs
  %smax = tail call i32 @llvm.smax.i32(i32 %i.bp, i32 1)
  %i.bt = zext nneg i32 %smax to i64
  %i.bu = shl nuw nsw i64 %i.bt, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i64 %i.bu, i1 false), !tbaa !24
  %.not182 = icmp eq i32 %i.aj, 0
  br i1 %.not182, label %._crit_edge124.split, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader110
  %1 = sext i32 %i.bp to i64
  %wide.trip.count = zext nneg i32 %i.aj to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge121
  %indvars.iv154 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next155, %._crit_edge121 ] ; 2 uses
  %.0123 = phi i32 [ 1, %.preheader.preheader ], [ %i.bw, %._crit_edge121 ] ; 2 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv154
  %i.bw = shl nuw i32 %.0123, 1                   ; 2 uses
  %i.bx = sext i32 %i.bw to i64
  %i.by = sext i32 %.0123 to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.a, i64 %i.by
  br label %bb.e

bb.e:                                             ; preds = %.preheader, %bb.e
  %indvars.iv151 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next152, %bb.e ] ; 3 uses
  %i.bz = load i32, ptr %i.bv, align 4, !tbaa !24
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.ca
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !24
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv151
  %i.cd = load i32, ptr %gep, align 4, !tbaa !24
  %i.ce = getelementptr inbounds [4 x i8], ptr %i.a, i64 %indvars.iv151 ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !24
  %i.cg = tail call i32 @Gia_ManHashMux(ptr noundef nonnull %i.g, i32 noundef %i.cc, i32 noundef %i.cd, i32 noundef %i.cf) #26
  store i32 %i.cg, ptr %i.ce, align 8, !tbaa !24
  %indvars.iv.next152 = add nsw i64 %indvars.iv151, %i.bx ; 2 uses
  %i.ch = icmp slt i64 %indvars.iv.next152, %1
  br i1 %i.ch, label %bb.e, label %._crit_edge121, !llvm.loop !81

._crit_edge121:                                   ; preds = %bb.e
  %indvars.iv.next155 = add nuw nsw i64 %indvars.iv154, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next155, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge124.split, label %.preheader, !llvm.loop !82

._crit_edge124.split:                             ; preds = %._crit_edge121, %bb.d, %.preheader110
  %i.ci = load i32, ptr %i.a, align 16, !tbaa !24
  %i.cj = getelementptr inbounds [4 x i8], ptr %i.f, i64 %indvars.iv167
  store i32 %i.ci, ptr %i.cj, align 4, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %._crit_edge128, %._crit_edge124.split, %bb.c, %._crit_edge132
  %indvars.iv.next168 = add nsw i64 %indvars.iv167, 1 ; 2 uses
  %i.ck = load i32, ptr %i.q, align 4, !tbaa !14
  %i.cl = sext i32 %i.ck to i64                   ; 2 uses
  %i.cm = icmp slt i64 %indvars.iv.next168, %i.cl
  br i1 %i.cm, label %bb.b, label %._crit_edge137, !llvm.loop !83

._crit_edge137:                                   ; preds = %bb.f, %._crit_edge115.._crit_edge137_crit_edge
  %.pre-phi = phi i64 [ %.pre171, %._crit_edge115.._crit_edge137_crit_edge ], [ %i.cl, %bb.f ]
  %i.cn = getelementptr [4 x i8], ptr %i.f, i64 %.pre-phi
  %i.co = getelementptr i8, ptr %i.cn, i64 -4
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !24
  %i.cq = tail call fastcc i32 @Gia_ManAppendCo(ptr noundef nonnull %i.g, i32 noundef %i.cp) ; 0 uses
  tail call void @free(ptr noundef %i.f) #26
  %i.cr = tail call ptr @Gia_ManCleanup(ptr noundef nonnull %i.g) #26
  tail call void @Gia_ManStop(ptr noundef nonnull %i.g) #26
  ret ptr %i.cr
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #12

declare ptr @Gia_ManStart(i32 noundef) local_unnamed_addr #9

declare void @Gia_ManHashStart(ptr noundef) local_unnamed_addr #9

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc range(i32 0, -1) i32 @Gia_ManAppendCi(ptr nofree noundef captures(none) %0) unnamed_addr #13 {
bb.a:
  %i.a = tail call fastcc ptr @Gia_ManAppendObj(ptr noundef %0) ; 4 uses
  %i.b = load i64, ptr %i.a, align 4
  %i.c = or i64 %i.b, 2684354559                  ; 2 uses
  store i64 %i.c, ptr %i.a, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !84
  %i.f = getelementptr i8, ptr %i.e, i64 4
  %.val = load i32, ptr %i.f, align 4, !tbaa !85
  %i.g = and i32 %.val, 536870911
  %i.h = zext nneg i32 %i.g to i64
  %i.i = shl nuw nsw i64 %i.h, 32
  %i.j = and i64 %i.c, -2305843004918726657
  %i.k = or disjoint i64 %i.i, %i.j
  store i64 %i.k, ptr %i.a, align 4
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !84   ; 6 uses
  %i.m = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %.val11 = load ptr, ptr %i.m, align 8, !tbaa !86 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 3 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !85   ; 7 uses
  %i.p = load i32, ptr %i.l, align 8, !tbaa !87
  %i.q = icmp eq i32 %i.o, %i.p
  br i1 %i.q, label %bb.b, label %Vec_IntPush.exit

bb.b:                                             ; preds = %bb.a
  %i.r = icmp slt i32 %i.o, 16
  br i1 %i.r, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !88   ; 2 uses
  %.not9.i.i = icmp eq ptr %i.t, null
  br i1 %.not9.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.t, i64 noundef 64) #29
  br label %Vec_IntGrow.exit.i

bb.e:                                             ; preds = %bb.c
  %i.v = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.e, %bb.d
  %i.w = phi ptr [ %i.u, %bb.d ], [ %i.v, %bb.e ]
  store ptr %i.w, ptr %i.s, align 8, !tbaa !88
  br label %Vec_IntGrow.exit11.sink.split.i

bb.f:                                             ; preds = %bb.b
  %i.x = icmp samesign ult i32 %i.o, 1073741823
  %i.y = shl nuw nsw i32 %i.o, 1
  %spec.select.i = select i1 %i.x, i32 %i.y, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.o, %spec.select.i
  br i1 %.not.i9.i, label %bb.g, label %Vec_IntPush.exit

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !88  ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.aa, null
  %i.ab = zext nneg i32 %spec.select.i to i64
  %i.ac = shl nuw nsw i64 %i.ab, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = tail call ptr @realloc(ptr noundef nonnull %i.aa, i64 noundef %i.ac) #29
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ae = tail call noalias ptr @malloc(i64 noundef %i.ac) #28
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.af = phi ptr [ %i.ad, %bb.h ], [ %i.ae, %bb.i ]
  store ptr %i.af, ptr %i.z, align 8, !tbaa !88
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.j, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.j ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %i.l, align 8, !tbaa !87
  %.pre = load i32, ptr %i.n, align 4, !tbaa !85
  %.val10.pre = load ptr, ptr %i.m, align 8, !tbaa !86
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.a, %bb.f, %Vec_IntGrow.exit11.sink.split.i
  %.val10 = phi ptr [ %.val11, %bb.a ], [ %.val11, %bb.f ], [ %.val10.pre, %Vec_IntGrow.exit11.sink.split.i ]
  %i.ag = phi i32 [ %i.o, %bb.a ], [ %i.o, %bb.f ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.ah = ptrtoint ptr %i.a to i64                ; 2 uses
  %i.ai = ptrtoint ptr %.val11 to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = sdiv exact i64 %i.aj, 12
  %i.al = trunc i64 %i.ak to i32
  %i.am = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !88
  %i.ao = add nsw i32 %i.ag, 1
  store i32 %i.ao, ptr %i.n, align 4, !tbaa !85
  %i.ap = sext i32 %i.ag to i64
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.an, i64 %i.ap
  store i32 %i.al, ptr %i.aq, align 4, !tbaa !24
  %i.ar = ptrtoint ptr %.val10 to i64
  %i.as = sub i64 %i.ah, %i.ar
  %i.at = sdiv exact i64 %i.as, 12
  %i.au = trunc i64 %i.at to i32
  %i.av = shl i32 %i.au, 1
  ret i32 %i.av
}

declare i32 @Gia_ManHashAnd(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

declare i32 @Gia_ManHashXor(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

declare i32 @Gia_ManHashMux(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc range(i32 0, -1) i32 @Gia_ManAppendCo(ptr noundef %0, i32 noundef %1) unnamed_addr #13 {
bb.a:
  %i.a = tail call fastcc ptr @Gia_ManAppendObj(ptr noundef %0) ; 8 uses
  %i.b = load i64, ptr %i.a, align 4
  %i.c = or i64 %i.b, 2147483648                  ; 2 uses
  store i64 %i.c, ptr %i.a, align 4
  %i.d = getelementptr i8, ptr %0, i64 32         ; 3 uses
  %.val20 = load ptr, ptr %i.d, align 8, !tbaa !86
  %i.e = ptrtoint ptr %i.a to i64                 ; 3 uses
  %i.f = ptrtoint ptr %.val20 to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 12
  %i.i = trunc i64 %i.h to i32
  %i.j = lshr i32 %1, 1
  %i.k = sub i32 %i.i, %i.j
  %i.l = and i32 %i.k, 536870911
  %i.m = zext nneg i32 %i.l to i64
  %i.n = and i64 %i.c, -1073741824
  %i.o = shl i32 %1, 29
end_hunk_0
begin_hunk_1_@Ifn_ManStrFindSolver:bb.a
  %i.dd = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28
  br label %Vec_IntGrow.exit.i60

Vec_IntGrow.exit.i60:                             ; preds = %bb.u, %bb.t
  %i.de = phi ptr [ %i.dc, %bb.t ], [ %i.dd, %bb.u ]
  store ptr %i.de, ptr %i.da, align 8, !tbaa !88
  br label %Vec_IntGrow.exit11.sink.split.i57

bb.v:                                             ; preds = %bb.r
  %i.df = icmp samesign ult i32 %i.cw, 1073741823
  %i.dg = shl nuw nsw i32 %i.cw, 1
  %spec.select.i54 = select i1 %i.df, i32 %i.dg, i32 2147483647 ; 3 uses
  %.not.i9.i55 = icmp samesign ult i32 %i.cw, %spec.select.i54
  br i1 %.not.i9.i55, label %bb.w, label %Vec_IntPush.exit61

bb.w:                                             ; preds = %bb.v
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !88 ; 2 uses
  %.not9.i10.i56 = icmp eq ptr %i.di, null
  %i.dj = zext nneg i32 %spec.select.i54 to i64
  %i.dk = shl nuw nsw i64 %i.dj, 2                ; 2 uses
  br i1 %.not9.i10.i56, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dl = tail call ptr @realloc(ptr noundef nonnull %i.di, i64 noundef %i.dk) #29
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.dm = tail call noalias ptr @malloc(i64 noundef %i.dk) #28
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.dn = phi ptr [ %i.dl, %bb.x ], [ %i.dm, %bb.y ]
  store ptr %i.dn, ptr %i.dh, align 8, !tbaa !88
  br label %Vec_IntGrow.exit11.sink.split.i57

Vec_IntGrow.exit11.sink.split.i57:                ; preds = %bb.z, %Vec_IntGrow.exit.i60
  %spec.select.sink.i58 = phi i32 [ %spec.select.i54, %bb.z ], [ 16, %Vec_IntGrow.exit.i60 ]
  store i32 %spec.select.sink.i58, ptr %i.cq, align 8, !tbaa !87
  %.pre80 = load i32, ptr %i.cv, align 4, !tbaa !85
  %.pre81 = load ptr, ptr %i.bx, align 8, !tbaa !89
  br label %Vec_IntPush.exit61

Vec_IntPush.exit61:                               ; preds = %bb.q, %bb.v, %Vec_IntGrow.exit11.sink.split.i57
  %i.do = phi ptr [ %i.cm, %bb.q ], [ %i.cm, %bb.v ], [ %.pre81, %Vec_IntGrow.exit11.sink.split.i57 ] ; 2 uses
  %i.dp = phi i32 [ %i.cw, %bb.q ], [ %i.cw, %bb.v ], [ %.pre80, %Vec_IntGrow.exit11.sink.split.i57 ] ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !88
  %i.ds = add nsw i32 %i.dp, 1
  store i32 %i.ds, ptr %i.cv, align 4, !tbaa !85
  %i.dt = sext i32 %i.dp to i64
  %i.du = getelementptr inbounds [4 x i8], ptr %i.dr, i64 %i.dt
  store i32 %i.cu, ptr %i.du, align 4, !tbaa !24
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1 ; 2 uses
  %i.dv = getelementptr i8, ptr %i.do, i64 4
  %.val = load i32, ptr %i.dv, align 4, !tbaa !85
  %i.dw = sext i32 %.val to i64
  %i.dx = icmp slt i64 %indvars.iv.next76, %i.dw
  br i1 %i.dx, label %bb.p, label %.critedge2, !llvm.loop !118

.critedge2:                                       ; preds = %bb.p, %Vec_IntPush.exit61, %Vec_IntAlloc.exit53
  tail call void @Cnf_DataFree(ptr noundef %i.d) #26
  ret ptr %i.e
}

declare ptr @sat_solver_new() local_unnamed_addr #9

declare void @sat_solver_setnvars(ptr noundef, i32 noundef) local_unnamed_addr #9

declare i32 @sat_solver_addclause(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

declare void @Cnf_DataFree(ptr noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define noundef ptr @Ifn_ManSatBuild(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) initializes((0, 8)) %1, ptr nofree noundef captures(none) initializes((0, 8)) %2) local_unnamed_addr #7 {
bb.a:
  store ptr null, ptr %2, align 8, !tbaa !115
  store ptr null, ptr %1, align 8, !tbaa !115
  %i.a = tail call ptr @Ifn_ManStrFindModel(ptr noundef %0) ; 2 uses
  %i.b = load i32, ptr %0, align 8, !tbaa !15
  %i.c = tail call ptr @Ifn_ManStrFindCofactors(i32 noundef %i.b, ptr noundef %i.a) ; 2 uses
  tail call void @Gia_ManStop(ptr noundef %i.a) #26
  %i.d = tail call ptr @Ifn_ManStrFindSolver(ptr noundef %i.c, ptr noundef nonnull %1, ptr noundef nonnull %2)
  tail call void @Gia_ManStop(ptr noundef %i.c) #26
  ret ptr %i.d
}

; Function Attrs: nounwind uwtable
define noundef ptr @If_ManSatBuildFromCell(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #7 {
bb.a:
  %i.a = tail call ptr @Ifn_NtkParse(ptr noundef %0) ; 13 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !15   ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 1576
  store ptr null, ptr %i.c, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 1552
  store i32 %i.b, ptr %i.d, align 8, !tbaa !12
  %i.e = icmp slt i32 %i.b, 7
  %i.f = add nsw i32 %i.b, -6
  %i.g = shl nuw i32 1, %i.f
  %i.h = select i1 %i.e, i32 1, i32 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1556
  store i32 %i.h, ptr %i.i, align 4, !tbaa !13
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !14   ; 4 uses
  %i.l = icmp slt i32 %i.b, %i.k
  br i1 %i.l, label %.lr.ph.i, label %Ifn_Prepare.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.n = sext i32 %i.b to i64
  %wide.trip.count.i = sext i32 %i.k to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i
  %i.o = phi i32 [ %i.k, %.lr.ph.i ], [ %i.aa, %bb.d ] ; 3 uses
  %indvars.iv.i = phi i64 [ %i.n, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.d ] ; 2 uses
  %i.p = getelementptr inbounds [48 x i8], ptr %i.m, i64 %indvars.iv.i ; 2 uses
  %i.q = load i32, ptr %i.p, align 8              ; 3 uses
  %i.r = and i32 %i.q, 7
  %.not.i = icmp eq i32 %i.r, 6
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.s = shl i32 %i.o, 8
  %i.t = and i32 %i.s, 65280
  %i.u = and i32 %i.q, -65282
  %i.v = or disjoint i32 %i.u, %i.t
  store i32 %i.v, ptr %i.p, align 8
  %i.w = lshr i32 %i.q, 3
  %i.x = and i32 %i.w, 31
  %i.y = shl nuw i32 1, %i.x
  %i.z = add nsw i32 %i.y, %i.o
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.aa = phi i32 [ %i.z, %bb.c ], [ %i.o, %bb.b ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Ifn_Prepare.exit, label %bb.b, !llvm.loop !16

Ifn_Prepare.exit:                                 ; preds = %bb.d, %bb.a
  %i.ab = phi i32 [ %i.k, %bb.a ], [ %i.aa, %bb.d ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 1568
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 1564
  store i32 %i.ab, ptr %i.ad, align 4, !tbaa !18
  %i.ae = icmp ult i32 %i.b, 2
  %i.af = add i32 %i.b, -1
  %i.ag = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.af, i1 true)
  %i.ah = sub nuw nsw i32 32, %i.ag
  %.09.i.i = select i1 %i.ae, i32 %i.b, i32 %i.ah ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 1560
  store i32 %.09.i.i, ptr %i.ai, align 8, !tbaa !19
  %i.aj = mul nsw i32 %.09.i.i, %i.b
  %i.ak = add nsw i32 %i.ab, %i.aj                ; 2 uses
  store i32 %i.ak, ptr %i.ac, align 8, !tbaa !20
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 1584
  %i.am = sext i32 %i.ak to i64
  %i.an = shl nsw i64 %i.am, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.al, i8 -1, i64 %i.an, i1 false)
  store ptr %i.a, ptr %3, align 8, !tbaa !119
  store ptr null, ptr %2, align 8, !tbaa !115
  store ptr null, ptr %1, align 8, !tbaa !115
  %i.ao = tail call ptr @Ifn_ManStrFindModel(ptr noundef nonnull readonly %i.a) ; 2 uses
  %i.ap = load i32, ptr %i.a, align 8, !tbaa !15
  %i.aq = tail call ptr @Ifn_ManStrFindCofactors(i32 noundef %i.ap, ptr noundef %i.ao) ; 2 uses
  tail call void @Gia_ManStop(ptr noundef %i.ao) #26
  %i.ar = tail call ptr @Ifn_ManStrFindSolver(ptr noundef %i.aq, ptr noundef nonnull %1, ptr noundef nonnull %2)
  tail call void @Gia_ManStop(ptr noundef %i.aq) #26
  ret ptr %i.ar
}

; Function Attrs: nofree nounwind uwtable
define void @Ifn_ManSatPrintPerm(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.c = load i8, ptr %i.b, align 1, !tbaa !23
  %i.d = sext i8 %i.c to i32
  %i.e = add nsw i32 %i.d, 97
  %putchar4 = tail call i32 @putchar(i32 %i.e)    ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !121

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @Ifn_ManSatCheckOne(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5, ptr nofree noundef captures(none) initializes((4, 8)) %6) local_unnamed_addr #7 {
bb.a:
  %i.a = shl nuw i32 1, %3
  %i.b = getelementptr i8, ptr %1, i64 4
  %.val42 = load i32, ptr %i.b, align 4, !tbaa !85 ; 7 uses
  %i.c = load i32, ptr %6, align 8, !tbaa !87
  %.not.i.i = icmp slt i32 %i.c, %.val42
  br i1 %.not.i.i, label %bb.b, label %Vec_IntGrow.exit.i

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !88   ; 2 uses
  %.not9.i.i = icmp eq ptr %i.e, null
  %i.f = sext i32 %.val42 to i64
  %i.g = shl nsw i64 %i.f, 2                      ; 2 uses
  br i1 %.not9.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call ptr @realloc(ptr noundef nonnull %i.e, i64 noundef %i.g) #29
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.g) #28
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = phi ptr [ %i.h, %bb.c ], [ %i.i, %bb.d ]
  store ptr %i.j, ptr %i.d, align 8, !tbaa !88
  store i32 %.val42, ptr %6, align 8, !tbaa !87
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.e, %bb.a
  %i.k = icmp sgt i32 %.val42, 0
  br i1 %i.k, label %.lr.ph.i, label %Vec_IntFill.exit

.lr.ph.i:                                         ; preds = %Vec_IntGrow.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !88
  %i.n = zext nneg i32 %.val42 to i64
  %i.o = shl nuw nsw i64 %i.n, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.m, i8 -1, i64 %i.o, i1 false), !tbaa !24
  br label %Vec_IntFill.exit

Vec_IntFill.exit:                                 ; preds = %Vec_IntGrow.exit.i, %.lr.ph.i
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 4 uses
  store i32 %.val42, ptr %i.p, align 4, !tbaa !85
  %.not61 = icmp eq i32 %3, 31
  br i1 %.not61, label %.preheader, label %.preheader49.lr.ph

.preheader49.lr.ph:                               ; preds = %Vec_IntFill.exit
  %i.q = icmp sgt i32 %5, 0
  %i.r = getelementptr i8, ptr %6, i64 8
  %.val46 = load ptr, ptr %i.r, align 8, !tbaa !88 ; 2 uses
  %smax63 = tail call i32 @llvm.smax.i32(i32 %i.a, i32 1) ; 2 uses
  br i1 %i.q, label %.preheader49.us.preheader, label %.preheader49.preheader

.preheader49.preheader:                           ; preds = %.preheader49.lr.ph
  %i.s = add nsw i32 %smax63, -1                  ; 2 uses
  %i.t = lshr i32 %i.s, 6
  %i.u = zext nneg i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.u
  %i.w = load i64, ptr %i.v, align 8, !tbaa !49
  %i.x = and i32 %i.s, 63
  %i.y = zext nneg i32 %i.x to i64
  %i.z = lshr i64 %i.w, %i.y
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.aa, 1
  store i32 %i.ab, ptr %.val46, align 4, !tbaa !24
  br label %.preheaderthread-pre-split

.preheader49.us.preheader:                        ; preds = %.preheader49.lr.ph
  %wide.trip.count = zext nneg i32 %5 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ac = icmp eq i32 %5, 1
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod75 = trunc i32 %5 to i1
  br label %.preheader49.us

.preheader49.us:                                  ; preds = %.preheader49.us.preheader, %._crit_edge.us
  %.03752.us = phi i32 [ %i.bj, %._crit_edge.us ], [ 0, %.preheader49.us.preheader ] ; 6 uses
  br i1 %i.ac, label %.epil.preheader, label %.preheader49.us.new

.preheader49.us.new:                              ; preds = %.preheader49.us, %.preheader49.us.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader49.us.new ], [ 0, %.preheader49.us ] ; 4 uses
  %.03550.us = phi i32 [ %.136.us.1, %.preheader49.us.new ], [ 0, %.preheader49.us ]
  %niter = phi i64 [ %niter.next.1, %.preheader49.us.new ], [ 0, %.preheader49.us ]
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !24
  %i.af = shl nuw i32 1, %i.ae
  %i.ag = and i32 %i.af, %.03752.us
  %.not40.us = icmp eq i32 %i.ag, 0
  %i.ah = trunc nuw nsw i64 %indvars.iv to i32
  %i.ai = shl nuw i32 1, %i.ah
  %i.aj = select i1 %.not40.us, i32 0, i32 %i.ai
  %.136.us = or i32 %i.aj, %.03550.us
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !24
  %i.am = shl nuw i32 1, %i.al
  %i.an = and i32 %i.am, %.03752.us
  %.not40.us.1 = icmp eq i32 %i.an, 0
  %i.ao = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.ap = shl nuw i32 1, %i.ao
  %i.aq = select i1 %.not40.us.1, i32 0, i32 %i.ap
  %.136.us.1 = or i32 %i.aq, %.136.us             ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.unr-lcssa, label %.preheader49.us.new, !llvm.loop !122

._crit_edge.us.unr-lcssa:                         ; preds = %.preheader49.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.preheader49.us
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader49.us ], [ %indvars.iv.next.1, %._crit_edge.us.unr-lcssa ] ; 2 uses
  %.03550.us.epil.init = phi i32 [ 0, %.preheader49.us ], [ %.136.us.1, %._crit_edge.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod75)
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.epil.init
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !24
  %i.at = shl nuw i32 1, %i.as
  %i.au = and i32 %i.at, %.03752.us
  %.not40.us.epil = icmp eq i32 %i.au, 0
  %i.av = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  %i.aw = shl nuw i32 1, %i.av
  %i.ax = select i1 %.not40.us.epil, i32 0, i32 %i.aw
  %.136.us.epil = or i32 %i.ax, %.03550.us.epil.init
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %._crit_edge.us.unr-lcssa, %.epil.preheader
  %.136.us.lcssa = phi i32 [ %.136.us.1, %._crit_edge.us.unr-lcssa ], [ %.136.us.epil, %.epil.preheader ]
  %i.ay = lshr i32 %.03752.us, 6
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.az
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !49
  %i.bc = and i32 %.03752.us, 63
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = lshr i64 %i.bb, %i.bd
  %i.bf = trunc i64 %i.be to i32
  %i.bg = and i32 %i.bf, 1
  %i.bh = sext i32 %.136.us.lcssa to i64
  %i.bi = getelementptr inbounds [4 x i8], ptr %.val46, i64 %i.bh
  store i32 %i.bg, ptr %i.bi, align 4, !tbaa !24
  %i.bj = add nuw nsw i32 %.03752.us, 1           ; 2 uses
  %exitcond64.not = icmp eq i32 %i.bj, %smax63
  br i1 %exitcond64.not, label %.preheaderthread-pre-split, label %.preheader49.us, !llvm.loop !123

.preheaderthread-pre-split:                       ; preds = %._crit_edge.us, %.preheader49.preheader
  %.val4158.pr = load i32, ptr %i.p, align 4, !tbaa !85
  br label %.preheader

.preheader:                                       ; preds = %.preheaderthread-pre-split, %Vec_IntFill.exit
  %.val4158 = phi i32 [ %.val4158.pr, %.preheaderthread-pre-split ], [ %.val42, %Vec_IntFill.exit ] ; 2 uses
  %i.bk = icmp sgt i32 %.val4158, 0
  %i.bl = getelementptr i8, ptr %6, i64 8
  %.val44 = load ptr, ptr %i.bl, align 8, !tbaa !88 ; 4 uses
  br i1 %i.bk, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.preheader
  %i.bm = getelementptr i8, ptr %1, i64 8
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.h
  %.val4168 = phi i32 [ %.val4158, %.lr.ph ], [ %.val41, %bb.h ]
  %indvars.iv65 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next66, %bb.h ] ; 3 uses
  %.160 = phi i32 [ 0, %.lr.ph ], [ %.2, %bb.h ]  ; 3 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %.val44, i64 %indvars.iv65
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !24 ; 2 uses
  %i.bp = icmp sgt i32 %i.bo, -1
  br i1 %i.bp, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bq = add nsw i32 %.160, 1
  %.val43 = load ptr, ptr %i.bm, align 8, !tbaa !88
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %.val43, i64 %indvars.iv65
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !24
  %.not = icmp eq i32 %i.bo, 0
  %i.bt = zext i1 %.not to i32
  %i.bu = shl nsw i32 %i.bs, 1
  %i.bv = or disjoint i32 %i.bu, %i.bt
  %i.bw = sext i32 %.160 to i64
  %i.bx = getelementptr inbounds [4 x i8], ptr %.val44, i64 %i.bw
  store i32 %i.bv, ptr %i.bx, align 4, !tbaa !24
  %.val41.pre = load i32, ptr %i.p, align 4, !tbaa !85
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.val41 = phi i32 [ %.val41.pre, %bb.g ], [ %.val4168, %bb.f ] ; 2 uses
  %.2 = phi i32 [ %i.bq, %bb.g ], [ %.160, %bb.f ] ; 2 uses
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, 1 ; 2 uses
  %i.by = sext i32 %.val41 to i64
  %i.bz = icmp slt i64 %indvars.iv.next66, %i.by
  br i1 %i.bz, label %bb.f, label %.critedge, !llvm.loop !124

.critedge:                                        ; preds = %bb.h, %.preheader
  %.1.lcssa = phi i32 [ 0, %.preheader ], [ %.2, %bb.h ] ; 2 uses
  store i32 %.1.lcssa, ptr %i.p, align 4, !tbaa !85
  %i.ca = sext i32 %.1.lcssa to i64
  %i.cb = getelementptr inbounds [4 x i8], ptr %.val44, i64 %i.ca
  %i.cc = tail call i32 @sat_solver_solve(ptr noundef %0, ptr noundef %.val44, ptr noundef %i.cb, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0) #26
  %i.cd = icmp eq i32 %i.cc, 1
  %i.ce = zext i1 %i.cd to i32
  ret i32 %i.ce
}

declare i32 @sat_solver_solve(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @Ifn_ManSatDeriveOne(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) initializes((4, 8)) %2) local_unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 4 uses
  store i32 0, ptr %i.a, align 4, !tbaa !85
  %i.b = getelementptr i8, ptr %1, i64 4          ; 2 uses
  %.val10 = load i32, ptr %i.b, align 4, !tbaa !85
  %i.c = icmp sgt i32 %.val10, 0
  br i1 %i.c, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 8
  %i.e = getelementptr i8, ptr %0, i64 328
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %Vec_IntPush.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %Vec_IntPush.exit ] ; 2 uses
  %.val8 = load ptr, ptr %i.d, align 8, !tbaa !88
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %.val8, i64 %indvars.iv
  %i.h = load i32, ptr %i.g, align 4, !tbaa !24
  %.val9 = load ptr, ptr %i.e, align 8, !tbaa !125
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds [4 x i8], ptr %.val9, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !24
  %i.l = icmp eq i32 %i.k, 1
  %i.m = zext i1 %i.l to i32
  %i.n = load i32, ptr %i.a, align 4, !tbaa !85   ; 7 uses
  %i.o = load i32, ptr %2, align 8, !tbaa !87
  %i.p = icmp eq i32 %i.n, %i.o
  br i1 %i.p, label %bb.c, label %.Vec_IntPush.exit_crit_edge

.Vec_IntPush.exit_crit_edge:                      ; preds = %bb.b
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !88
  br label %Vec_IntPush.exit

bb.c:                                             ; preds = %bb.b
  %i.q = icmp slt i32 %i.n, 16
  br i1 %i.q, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.f, align 8, !tbaa !88   ; 2 uses
  %.not9.i.i = icmp eq ptr %i.r, null
  br i1 %.not9.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.r, i64 noundef 64) #29
  br label %Vec_IntGrow.exit11.sink.split.i

bb.f:                                             ; preds = %bb.d
  %i.t = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28
  br label %Vec_IntGrow.exit11.sink.split.i

bb.g:                                             ; preds = %bb.c
  %i.u = icmp samesign ult i32 %i.n, 1073741823
  %i.v = shl nuw nsw i32 %i.n, 1
  %spec.select.i = select i1 %i.u, i32 %i.v, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %i.n, %spec.select.i
  %.pre13 = load ptr, ptr %i.f, align 8, !tbaa !88 ; 3 uses
  br i1 %.not.i9.i, label %bb.h, label %Vec_IntPush.exit

bb.h:                                             ; preds = %bb.g
  %.not9.i10.i = icmp eq ptr %.pre13, null
  %i.w = zext nneg i32 %spec.select.i to i64
  %i.x = shl nuw nsw i64 %i.w, 2                  ; 2 uses
  br i1 %.not9.i10.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = tail call ptr @realloc(ptr noundef nonnull %.pre13, i64 noundef %i.x) #29
  br label %Vec_IntGrow.exit11.sink.split.i

bb.j:                                             ; preds = %bb.h
  %i.z = tail call noalias ptr @malloc(i64 noundef %i.x) #28
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.i, %bb.j, %bb.e, %bb.f
  %i.aa = phi ptr [ %i.t, %bb.f ], [ %i.s, %bb.e ], [ %i.y, %bb.i ], [ %i.z, %bb.j ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.f ], [ 16, %bb.e ], [ %spec.select.i, %bb.i ], [ %spec.select.i, %bb.j ]
  store ptr %i.aa, ptr %i.f, align 8, !tbaa !88
  store i32 %spec.select.sink.i, ptr %2, align 8, !tbaa !87
  %.pre14 = load i32, ptr %i.a, align 4, !tbaa !85
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %.Vec_IntPush.exit_crit_edge, %bb.g, %Vec_IntGrow.exit11.sink.split.i
  %i.ab = phi i32 [ %i.n, %.Vec_IntPush.exit_crit_edge ], [ %i.n, %bb.g ], [ %.pre14, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.ac = phi ptr [ %.pre, %.Vec_IntPush.exit_crit_edge ], [ %.pre13, %bb.g ], [ %i.aa, %Vec_IntGrow.exit11.sink.split.i ]
  %i.ad = add nsw i32 %i.ab, 1
  store i32 %i.ad, ptr %i.a, align 4, !tbaa !85
  %i.ae = sext i32 %i.ab to i64
  %i.af = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.ae
  store i32 %i.m, ptr %i.af, align 4, !tbaa !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val = load i32, ptr %i.b, align 4, !tbaa !85
  %i.ag = sext i32 %.val to i64
  %i.ah = icmp slt i64 %indvars.iv.next, %i.ag
  br i1 %i.ah, label %bb.b, label %.critedge, !llvm.loop !135

.critedge:                                        ; preds = %Vec_IntPush.exit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @If_ManSatFindCofigBits(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i64 noundef %5, i32 noundef %6, ptr nofree noundef captures(none) %7) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca [15 x i32], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.b = icmp sgt i32 %6, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %6 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %6, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %5, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.c = shl <4 x i64> %vec.ind, splat (i64 2)
  %step.add = shl <4 x i64> %vec.ind, splat (i64 2)
  %i.d = add <4 x i64> %step.add, splat (i64 16)
  %i.e = and <4 x i64> %i.c, splat (i64 60)
  %i.f = and <4 x i64> %i.d, splat (i64 60)
  %i.g = lshr <4 x i64> %broadcast.splat, %i.e
  %i.h = lshr <4 x i64> %broadcast.splat, %i.f
  %i.i = trunc <4 x i64> %i.g to <4 x i32>
  %i.j = trunc <4 x i64> %i.h to <4 x i32>
  %i.k = and <4 x i32> %i.i, splat (i32 15)
  %i.l = and <4 x i32> %i.j, splat (i32 15)
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store <4 x i32> %i.k, ptr %i.m, align 16, !tbaa !24
  store <4 x i32> %i.l, ptr %i.n, align 16, !tbaa !24
end_hunk_1
