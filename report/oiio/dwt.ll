inline.NumInlined: 158
inline.NumDeleted: 40
loop-unroll.NumCompletelyUnrolled: 33
loop-unroll.NumRuntimeUnrolled: 45
loop-unroll.NumUnrolled: 78
begin_hunk_0_@opj_dwt_encode_v_func:bb.a
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.025 = phi i32 [ %i.b, %.lr.ph ], [ %i.l, %bb.b ] ; 3 uses
  %i.l = add i32 %.025, 8                         ; 2 uses
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !47
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !44
  %i.o = zext i32 %.025 to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.o
  %i.q = load ptr, ptr %0, align 8, !tbaa !36
  %i.r = load i32, ptr %i.i, align 8, !tbaa !42
  %i.s = load i32, ptr %i.j, align 8, !tbaa !41
  %i.t = icmp eq i32 %i.s, 0
  %i.u = zext i1 %i.t to i32
  %i.v = load i32, ptr %i.k, align 4, !tbaa !43
  tail call void %i.m(ptr noundef %i.p, ptr noundef %i.q, i32 noundef %i.r, i32 noundef %i.u, i32 noundef %i.v, i32 noundef 8) #15
  %i.w = add i32 %.025, 15
  %i.x = load i32, ptr %i.c, align 4, !tbaa !46   ; 2 uses
  %i.y = icmp ult i32 %i.w, %i.x
  br i1 %i.y, label %bb.b, label %._crit_edge, !llvm.loop !322

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.0.lcssa = phi i32 [ %i.b, %bb.a ], [ %i.l, %bb.b ] ; 3 uses
  %.lcssa = phi i32 [ %i.e, %bb.a ], [ %i.x, %bb.b ] ; 2 uses
  %i.z = icmp ult i32 %.0.lcssa, %.lcssa
  br i1 %i.z, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !47
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !44
  %i.ae = zext i32 %.0.lcssa to i64
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ae
  %i.ag = load ptr, ptr %0, align 8, !tbaa !36
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !42
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !41
  %i.al = icmp eq i32 %i.ak, 0
  %i.am = zext i1 %i.al to i32
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !43
  %i.ap = sub nuw i32 %.lcssa, %.0.lcssa
  tail call void %i.ab(ptr noundef %i.af, ptr noundef %i.ag, i32 noundef %i.ai, i32 noundef %i.am, i32 noundef %i.ao, i32 noundef %i.ap) #15
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %i.aq = load ptr, ptr %0, align 8, !tbaa !36
  tail call void @opj_aligned_free(ptr noundef %i.aq) #15
  tail call void @opj_free(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @opj_dwt_encode_h_func(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !45   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !46
  %i.e = icmp ult i32 %i.b, %i.d
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.014 = phi i32 [ %i.b, %.lr.ph ], [ %i.v, %bb.b ] ; 2 uses
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !44
  %i.l = load i32, ptr %i.g, align 4, !tbaa !43
  %i.m = mul i32 %i.l, %.014
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.n
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !47
  %i.q = load ptr, ptr %0, align 8, !tbaa !36
  %i.r = load i32, ptr %i.i, align 8, !tbaa !42
  %i.s = load i32, ptr %i.j, align 8, !tbaa !41
  %i.t = icmp eq i32 %i.s, 0
  %i.u = zext i1 %i.t to i32
  tail call void %i.p(ptr noundef %i.o, ptr noundef %i.q, i32 noundef %i.r, i32 noundef %i.u) #15
  %i.v = add nuw i32 %.014, 1                     ; 2 uses
  %i.w = load i32, ptr %i.c, align 4, !tbaa !46
  %i.x = icmp ult i32 %i.v, %i.w
  br i1 %i.x, label %bb.b, label %._crit_edge, !llvm.loop !323

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.y = load ptr, ptr %0, align 8, !tbaa !36
  tail call void @opj_aligned_free(ptr noundef %i.y) #15
  tail call void @opj_free(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @opj_idwt53_h(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !109  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !110
  %i.e = add nsw i32 %i.d, %i.b                   ; 13 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !111
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.i = icmp sgt i32 %i.e, 1
  br i1 %i.i, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %0, align 8, !tbaa !108    ; 9 uses
  %i.k = sext i32 %i.b to i64                     ; 2 uses
  %i.l = getelementptr inbounds [4 x i8], ptr %1, i64 %i.k ; 3 uses
  %i.m = load i32, ptr %1, align 4, !tbaa !3
  %i.n = load i32, ptr %i.l, align 4, !tbaa !3    ; 5 uses
  %i.o = add nsw i32 %i.n, 1
  %i.p = ashr i32 %i.o, 1
  %i.q = sub nsw i32 %i.m, %i.p                   ; 4 uses
  %i.r = icmp samesign ugt i32 %i.e, 3
  br i1 %i.r, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.s = add nsw i32 %i.e, -4                     ; 4 uses
  %i.t = lshr i32 %i.s, 1
  %i.u = add nuw nsw i32 %i.t, 2
  %wide.trip.count.i = zext nneg i32 %i.u to i64
  %i.v = lshr i32 %i.s, 1
  %narrow100 = add nuw i32 %i.v, 1
  %i.w = zext i32 %narrow100 to i64               ; 3 uses
  %min.iters.check78 = icmp ult i32 %i.s, 22
  br i1 %min.iters.check78, label %.lr.ph.i.preheader, label %vector.memcheck64

vector.memcheck64:                                ; preds = %.lr.ph.preheader.i
  %i.x = lshr i32 %i.s, 1
  %i.y = zext nneg i32 %i.x to i64                ; 2 uses
  %i.z = shl nuw nsw i64 %i.y, 3
  %i.aa = getelementptr i8, ptr %i.j, i64 %i.z
  %scevgep65 = getelementptr i8, ptr %i.aa, i64 8 ; 2 uses
  %i.ab = shl nsw i64 %i.k, 2                     ; 2 uses
  %i.ac = getelementptr i8, ptr %1, i64 %i.ab
  %scevgep66 = getelementptr i8, ptr %i.ac, i64 4
  %i.ad = shl nuw nsw i64 %i.y, 2                 ; 2 uses
  %i.ae = getelementptr i8, ptr %1, i64 %i.ad
  %i.af = getelementptr i8, ptr %i.ae, i64 %i.ab
  %scevgep67 = getelementptr i8, ptr %i.af, i64 8
  %scevgep68 = getelementptr i8, ptr %1, i64 4
  %i.ag = getelementptr i8, ptr %1, i64 %i.ad
  %scevgep69 = getelementptr i8, ptr %i.ag, i64 8
  %bound070 = icmp ult ptr %i.j, %scevgep67
  %bound171 = icmp ult ptr %scevgep66, %scevgep65
  %found.conflict72 = and i1 %bound070, %bound171
  %bound073 = icmp ult ptr %i.j, %scevgep69
  %bound174 = icmp ult ptr %scevgep68, %scevgep65
  %found.conflict75 = and i1 %bound073, %bound174
  %conflict.rdx76 = or i1 %found.conflict72, %found.conflict75
  br i1 %conflict.rdx76, label %.lr.ph.i.preheader, label %vector.ph79

vector.ph79:                                      ; preds = %vector.memcheck64
  %n.vec81 = and i64 %i.w, 4294967294             ; 3 uses
  %i.ah = or i64 %i.w, 1
  %i.ai = shl nuw nsw i64 %n.vec81, 1             ; 2 uses
  %vector.recur.init84 = insertelement <2 x i32> poison, i32 %i.q, i64 1
  %vector.recur.init86 = insertelement <2 x i32> poison, i32 %i.n, i64 1
  br label %vector.body82

vector.body82:                                    ; preds = %vector.body82, %vector.ph79
  %index83 = phi i64 [ 0, %vector.ph79 ], [ %index.next91, %vector.body82 ] ; 3 uses
  %vector.recur85 = phi <2 x i32> [ %vector.recur.init84, %vector.ph79 ], [ %i.aq, %vector.body82 ]
  %vector.recur87 = phi <2 x i32> [ %vector.recur.init86, %vector.ph79 ], [ %wide.load89, %vector.body82 ]
  %i.aj = or disjoint i64 %index83, 1             ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.aj
  %wide.load88 = load <2 x i32>, ptr %i.ak, align 4, !tbaa !3, !alias.scope !324
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.aj
  %wide.load89 = load <2 x i32>, ptr %i.al, align 4, !tbaa !3, !alias.scope !327 ; 4 uses
  %i.am = shufflevector <2 x i32> %vector.recur87, <2 x i32> %wide.load89, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.an = add <2 x i32> %i.am, splat (i32 2)
  %i.ao = add <2 x i32> %i.an, %wide.load89
  %i.ap = ashr <2 x i32> %i.ao, splat (i32 2)
  %i.aq = sub nsw <2 x i32> %wide.load88, %i.ap   ; 4 uses
  %i.ar = shufflevector <2 x i32> %vector.recur85, <2 x i32> %i.aq, <2 x i32> <i32 1, i32 2> ; 2 uses
  %.idx101 = shl nuw i64 %index83, 3
  %i.as = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx101
  %i.at = add <2 x i32> %i.aq, %i.ar
  %i.au = ashr <2 x i32> %i.at, splat (i32 1)
  %i.av = add <2 x i32> %i.au, %i.am
  %interleaved.vec90 = shufflevector <2 x i32> %i.ar, <2 x i32> %i.av, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec90, ptr %i.as, align 4, !tbaa !3, !alias.scope !329, !noalias !331
  %index.next91 = add nuw i64 %index83, 2         ; 2 uses
  %i.aw = icmp eq i64 %index.next91, %n.vec81
  br i1 %i.aw, label %middle.block92, label %vector.body82, !llvm.loop !332

middle.block92:                                   ; preds = %vector.body82
  %vector.recur.extract93 = extractelement <2 x i32> %i.aq, i64 1 ; 2 uses
  %vector.recur.extract94 = extractelement <2 x i32> %wide.load89, i64 1 ; 2 uses
  %cmp.n95 = icmp eq i64 %n.vec81, %i.w
  br i1 %cmp.n95, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck64, %.lr.ph.preheader.i, %middle.block92
  %indvars.iv60.i.ph = phi i64 [ 1, %vector.memcheck64 ], [ 1, %.lr.ph.preheader.i ], [ %i.ah, %middle.block92 ]
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck64 ], [ 0, %.lr.ph.preheader.i ], [ %i.ai, %middle.block92 ]
  %.055.i.ph = phi i32 [ %i.q, %vector.memcheck64 ], [ %i.q, %.lr.ph.preheader.i ], [ %vector.recur.extract93, %middle.block92 ]
  %.05053.i.ph = phi i32 [ %i.n, %vector.memcheck64 ], [ %i.n, %.lr.ph.preheader.i ], [ %vector.recur.extract94, %middle.block92 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv60.i = phi i64 [ %indvars.iv.next61.i, %.lr.ph.i ], [ %indvars.iv60.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.055.i = phi i32 [ %i.be, %.lr.ph.i ], [ %.055.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.05053.i = phi i32 [ %i.ba, %.lr.ph.i ], [ %.05053.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv60.i
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !3
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv60.i
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !3  ; 3 uses
  %i.bb = add i32 %.05053.i, 2
  %i.bc = add i32 %i.bb, %i.ba
  %i.bd = ashr i32 %i.bc, 2
  %i.be = sub nsw i32 %i.ay, %i.bd                ; 3 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.i ; 2 uses
  store i32 %.055.i, ptr %i.bf, align 4, !tbaa !3
  %i.bg = add i32 %i.be, %.055.i
  %i.bh = ashr i32 %i.bg, 1
  %i.bi = add i32 %i.bh, %.05053.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  store i32 %i.bi, ptr %i.bj, align 4, !tbaa !3
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %indvars.iv.next61.i = add nuw nsw i64 %indvars.iv60.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next61.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !333

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block92, %bb.c
  %.050.lcssa.i = phi i32 [ %i.n, %bb.c ], [ %vector.recur.extract94, %middle.block92 ], [ %i.ba, %.lr.ph.i ] ; 2 uses
  %.049.lcssa.i = phi i64 [ 0, %bb.c ], [ %i.ai, %middle.block92 ], [ %indvars.iv.next.i, %.lr.ph.i ]
  %.0.lcssa.i = phi i32 [ %i.q, %bb.c ], [ %vector.recur.extract93, %middle.block92 ], [ %i.be, %.lr.ph.i ] ; 3 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.049.lcssa.i
  store i32 %.0.lcssa.i, ptr %i.bk, align 4, !tbaa !3
  %i.bl = and i32 %i.e, 1
  %.not.i = icmp eq i32 %i.bl, 0
  br i1 %.not.i, label %opj_idwt53_h_cas0.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge.i
  %i.bm = add nsw i32 %i.e, -1                    ; 2 uses
  %i.bn = lshr exact i32 %i.bm, 1
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !3
  %i.br = add nsw i32 %.050.lcssa.i, 1
  %i.bs = ashr i32 %i.br, 1
  %i.bt = sub nsw i32 %i.bq, %i.bs                ; 2 uses
  %i.bu = zext nneg i32 %i.bm to i64
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.bu
  store i32 %i.bt, ptr %i.bv, align 4, !tbaa !3
  %i.bw = add nsw i32 %i.bt, %.0.lcssa.i
  %i.bx = ashr i32 %i.bw, 1
  br label %opj_idwt53_h_cas0.exit

opj_idwt53_h_cas0.exit:                           ; preds = %._crit_edge.i, %bb.d
  %.0.lcssa.sink.i = phi i32 [ %i.bx, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ]
  %.sink68.i = phi i64 [ -8, %bb.d ], [ -4, %._crit_edge.i ]
  %i.by = add nsw i32 %.0.lcssa.sink.i, %.050.lcssa.i
  %i.bz = zext nneg i32 %i.e to i64               ; 2 uses
  %i.ca = getelementptr [4 x i8], ptr %i.j, i64 %i.bz
  %i.cb = getelementptr i8, ptr %i.ca, i64 %.sink68.i
  store i32 %i.by, ptr %i.cb, align 4, !tbaa !3
  %i.cc = shl nuw nsw i64 %i.bz, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %1, ptr noundef nonnull align 4 dereferenceable(1) %i.j, i64 %i.cc, i1 false)
  br label %bb.l

bb.e:                                             ; preds = %bb.a
  switch i32 %i.e, label %bb.h [
    i32 1, label %bb.f
    i32 2, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.cd = load i32, ptr %1, align 4, !tbaa !3
  %i.ce = sdiv i32 %i.cd, 2
  store i32 %i.ce, ptr %1, align 4, !tbaa !3
  br label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.cf = load ptr, ptr %0, align 8, !tbaa !108   ; 3 uses
  %i.cg = sext i32 %i.b to i64
  %i.ch = getelementptr inbounds [4 x i8], ptr %1, i64 %i.cg ; 2 uses
  %i.ci = load i32, ptr %1, align 4, !tbaa !3
  %i.cj = load i32, ptr %i.ch, align 4, !tbaa !3
  %i.ck = add nsw i32 %i.cj, 1
  %i.cl = ashr i32 %i.ck, 1
  %i.cm = sub nsw i32 %i.ci, %i.cl                ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  store i32 %i.cm, ptr %i.cn, align 4, !tbaa !3
  %i.co = load i32, ptr %i.ch, align 4, !tbaa !3
  %i.cp = add nsw i32 %i.cm, %i.co
  store i32 %i.cp, ptr %i.cf, align 4, !tbaa !3
  %i.cq = load i64, ptr %i.cf, align 4
  store i64 %i.cq, ptr %1, align 4
  br label %bb.l

bb.h:                                             ; preds = %bb.e
  %i.cr = icmp sgt i32 %i.e, 2
  br i1 %i.cr, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.cs = load ptr, ptr %0, align 8, !tbaa !108   ; 9 uses
  %i.ct = sext i32 %i.b to i64                    ; 2 uses
  %i.cu = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ct ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 4
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !3  ; 5 uses
  %i.cx = load i32, ptr %1, align 4, !tbaa !3
  %i.cy = load i32, ptr %i.cu, align 4, !tbaa !3  ; 2 uses
  %i.cz = add i32 %i.cw, 2
  %i.da = add i32 %i.cz, %i.cy
  %i.db = ashr i32 %i.da, 2
  %i.dc = sub nsw i32 %i.cx, %i.db                ; 5 uses
  %i.dd = add nsw i32 %i.dc, %i.cy
  store i32 %i.dd, ptr %i.cs, align 4, !tbaa !3
  %i.de = add nsw i32 %i.e, -2                    ; 2 uses
  %i.df = and i32 %i.e, 1                         ; 2 uses
  %i.dg = xor i32 %i.df, 1                        ; 2 uses
  %i.dh = sub nuw nsw i32 %i.de, %i.dg
  %i.di = icmp samesign ugt i32 %i.dh, 1
  br i1 %i.di, label %.lr.ph.preheader.i32, label %._crit_edge.i29

.lr.ph.preheader.i32:                             ; preds = %bb.i
  %i.dj = add nsw i32 %i.e, -4
  %i.dk = sub nsw i32 %i.dj, %i.dg                ; 4 uses
  %i.dl = lshr i32 %i.dk, 1
  %i.dm = add nuw i32 %i.dl, 2
  %wide.trip.count.i33 = zext i32 %i.dm to i64
  %i.dn = lshr i32 %i.dk, 1
  %narrow = add nuw i32 %i.dn, 1
  %i.do = zext i32 %narrow to i64                 ; 3 uses
  %min.iters.check = icmp ult i32 %i.dk, 22
  br i1 %min.iters.check, label %.lr.ph.i34.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i32
  %scevgep = getelementptr i8, ptr %i.cs, i64 4   ; 2 uses
  %i.dp = lshr i32 %i.dk, 1
  %i.dq = zext nneg i32 %i.dp to i64              ; 2 uses
  %i.dr = shl nuw nsw i64 %i.dq, 3
  %i.ds = getelementptr i8, ptr %i.cs, i64 %i.dr
  %scevgep50 = getelementptr i8, ptr %i.ds, i64 12 ; 2 uses
  %scevgep51 = getelementptr i8, ptr %1, i64 4
  %i.dt = shl nuw nsw i64 %i.dq, 2                ; 2 uses
  %i.du = getelementptr i8, ptr %1, i64 %i.dt
  %scevgep52 = getelementptr i8, ptr %i.du, i64 8
  %i.dv = shl nsw i64 %i.ct, 2                    ; 2 uses
  %i.dw = getelementptr i8, ptr %1, i64 %i.dv
  %scevgep53 = getelementptr i8, ptr %i.dw, i64 8
  %i.dx = getelementptr i8, ptr %1, i64 %i.dt
  %i.dy = getelementptr i8, ptr %i.dx, i64 %i.dv
  %scevgep54 = getelementptr i8, ptr %i.dy, i64 12
  %bound0 = icmp ult ptr %scevgep, %scevgep52
  %bound1 = icmp ult ptr %scevgep51, %scevgep50
  %found.conflict = and i1 %bound0, %bound1
  %bound055 = icmp ult ptr %scevgep, %scevgep54
  %bound156 = icmp ult ptr %scevgep53, %scevgep50
  %found.conflict57 = and i1 %bound055, %bound156
  %conflict.rdx = or i1 %found.conflict, %found.conflict57
  br i1 %conflict.rdx, label %.lr.ph.i34.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.do, 4294967294              ; 3 uses
  %i.dz = or i64 %i.do, 1
  %i.ea = shl nuw nsw i64 %n.vec, 1
  %i.eb = or disjoint i64 %i.ea, 1                ; 2 uses
  %vector.recur.init = insertelement <2 x i32> poison, i32 %i.dc, i64 1
  %vector.recur.init58 = insertelement <2 x i32> poison, i32 %i.cw, i64 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %vector.recur = phi <2 x i32> [ %vector.recur.init, %vector.ph ], [ %i.ek, %vector.body ]
  %vector.recur59 = phi <2 x i32> [ %vector.recur.init58, %vector.ph ], [ %wide.load, %vector.body ]
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %index
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %wide.load = load <2 x i32>, ptr %i.ed, align 4, !tbaa !3, !alias.scope !334 ; 4 uses
  %i.ee = shufflevector <2 x i32> %vector.recur59, <2 x i32> %wide.load, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 4
  %wide.load60 = load <2 x i32>, ptr %i.eg, align 4, !tbaa !3, !alias.scope !337
  %i.eh = add <2 x i32> %i.ee, splat (i32 2)
  %i.ei = add <2 x i32> %i.eh, %wide.load
  %i.ej = ashr <2 x i32> %i.ei, splat (i32 2)
  %i.ek = sub nsw <2 x i32> %wide.load60, %i.ej   ; 4 uses
  %i.el = shufflevector <2 x i32> %vector.recur, <2 x i32> %i.ek, <2 x i32> <i32 1, i32 2> ; 2 uses
  %.idx = shl nuw i64 %index, 3
  %i.em = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.idx
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 4
  %i.eo = add <2 x i32> %i.ek, %i.el
  %i.ep = ashr <2 x i32> %i.eo, splat (i32 1)
  %i.eq = add <2 x i32> %i.ep, %i.ee
  %interleaved.vec = shufflevector <2 x i32> %i.el, <2 x i32> %i.eq, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec, ptr %i.en, align 4, !tbaa !3, !alias.scope !339, !noalias !341
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.er = icmp eq i64 %index.next, %n.vec
  br i1 %i.er, label %middle.block, label %vector.body, !llvm.loop !342

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <2 x i32> %i.ek, i64 1 ; 2 uses
  %vector.recur.extract61 = extractelement <2 x i32> %wide.load, i64 1 ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.do
  br i1 %cmp.n, label %._crit_edge.i29, label %.lr.ph.i34.preheader

.lr.ph.i34.preheader:                             ; preds = %vector.memcheck, %.lr.ph.preheader.i32, %middle.block
  %indvars.iv66.i.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph.preheader.i32 ], [ %i.dz, %middle.block ]
  %indvars.iv.i35.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph.preheader.i32 ], [ %i.eb, %middle.block ]
  %.059.i.ph = phi i32 [ %i.dc, %vector.memcheck ], [ %i.dc, %.lr.ph.preheader.i32 ], [ %vector.recur.extract, %middle.block ]
  %.05357.i.ph = phi i32 [ %i.cw, %vector.memcheck ], [ %i.cw, %.lr.ph.preheader.i32 ], [ %vector.recur.extract61, %middle.block ]
  br label %.lr.ph.i34

.lr.ph.i34:                                       ; preds = %.lr.ph.i34.preheader, %.lr.ph.i34
  %indvars.iv66.i = phi i64 [ %indvars.iv.next67.i, %.lr.ph.i34 ], [ %indvars.iv66.i.ph, %.lr.ph.i34.preheader ] ; 2 uses
  %indvars.iv.i35 = phi i64 [ %indvars.iv.next.i36, %.lr.ph.i34 ], [ %indvars.iv.i35.ph, %.lr.ph.i34.preheader ] ; 2 uses
  %.059.i = phi i32 [ %i.ez, %.lr.ph.i34 ], [ %.059.i.ph, %.lr.ph.i34.preheader ] ; 2 uses
  %.05357.i = phi i32 [ %i.et, %.lr.ph.i34 ], [ %.05357.i.ph, %.lr.ph.i34.preheader ] ; 2 uses
  %indvars.iv.next67.i = add nuw nsw i64 %indvars.iv66.i, 1 ; 3 uses
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %indvars.iv.next67.i
  %i.et = load i32, ptr %i.es, align 4, !tbaa !3  ; 3 uses
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv66.i
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !3
  %i.ew = add i32 %.05357.i, 2
  %i.ex = add i32 %i.ew, %i.et
  %i.ey = ashr i32 %i.ex, 2
  %i.ez = sub nsw i32 %i.ev, %i.ey                ; 3 uses
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %indvars.iv.i35 ; 2 uses
  store i32 %.059.i, ptr %i.fa, align 4, !tbaa !3
  %i.fb = add i32 %i.ez, %.059.i
  %i.fc = ashr i32 %i.fb, 1
  %i.fd = add i32 %i.fc, %.05357.i
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fa, i64 4
  store i32 %i.fd, ptr %i.fe, align 4, !tbaa !3
  %indvars.iv.next.i36 = add nuw nsw i64 %indvars.iv.i35, 2 ; 2 uses
  %exitcond.not.i37 = icmp eq i64 %indvars.iv.next67.i, %wide.trip.count.i33
  br i1 %exitcond.not.i37, label %._crit_edge.i29, label %.lr.ph.i34, !llvm.loop !343

._crit_edge.i29:                                  ; preds = %.lr.ph.i34, %middle.block, %bb.i
  %.053.lcssa.i = phi i32 [ %i.cw, %bb.i ], [ %vector.recur.extract61, %middle.block ], [ %i.et, %.lr.ph.i34 ] ; 3 uses
  %.052.lcssa.i = phi i64 [ 1, %bb.i ], [ %i.eb, %middle.block ], [ %indvars.iv.next.i36, %.lr.ph.i34 ]
  %.0.lcssa.i30 = phi i32 [ %i.dc, %bb.i ], [ %vector.recur.extract, %middle.block ], [ %i.ez, %.lr.ph.i34 ] ; 3 uses
  %.not.i31 = icmp eq i32 %i.df, 0
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %.052.lcssa.i
  store i32 %.0.lcssa.i30, ptr %i.ff, align 4, !tbaa !3
  br i1 %.not.i31, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge.i29
  %i.fg = lshr exact i32 %i.e, 1
  %i.fh = zext nneg i32 %i.fg to i64
  %i.fi = getelementptr [4 x i8], ptr %1, i64 %i.fh
  %i.fj = getelementptr i8, ptr %i.fi, i64 -4
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !3
  %i.fl = add nsw i32 %.053.lcssa.i, 1
  %i.fm = ashr i32 %i.fl, 1
  %i.fn = sub nsw i32 %i.fk, %i.fm                ; 2 uses
  %i.fo = add nsw i32 %i.fn, %.0.lcssa.i30
  %i.fp = ashr i32 %i.fo, 1
  %i.fq = add nsw i32 %i.fp, %.053.lcssa.i
  %i.fr = zext nneg i32 %i.de to i64
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.fr
  store i32 %i.fq, ptr %i.fs, align 4, !tbaa !3
  br label %opj_idwt53_h_cas1.exit

bb.k:                                             ; preds = %._crit_edge.i29
  %i.ft = add nsw i32 %.0.lcssa.i30, %.053.lcssa.i
  br label %opj_idwt53_h_cas1.exit

opj_idwt53_h_cas1.exit:                           ; preds = %bb.j, %bb.k
  %.sink.i = phi i32 [ %i.ft, %bb.k ], [ %i.fn, %bb.j ]
  %i.fu = zext nneg i32 %i.e to i64               ; 2 uses
  %i.fv = getelementptr [4 x i8], ptr %i.cs, i64 %i.fu
  %i.fw = getelementptr i8, ptr %i.fv, i64 -4
  store i32 %.sink.i, ptr %i.fw, align 4, !tbaa !3
  %i.fx = shl nuw nsw i64 %i.fu, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %1, ptr noundef nonnull align 4 dereferenceable(1) %i.cs, i64 %i.fx, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.f, %bb.h, %opj_idwt53_h_cas1.exit, %bb.g, %opj_idwt53_h_cas0.exit, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @opj_dwt_decode_h_func(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !119  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !120
  %i.e = icmp ult i32 %i.b, %i.d
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.010 = phi i32 [ %i.b, %.lr.ph ], [ %i.m, %bb.b ] ; 2 uses
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !118
  %i.i = load i32, ptr %i.g, align 4, !tbaa !117
  %i.j = mul i32 %i.i, %.010
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.k
  tail call fastcc void @opj_idwt53_h(ptr noundef nonnull %0, ptr noundef %i.l)
  %i.m = add nuw i32 %.010, 1                     ; 2 uses
  %i.n = load i32, ptr %i.c, align 4, !tbaa !120
  %i.o = icmp ult i32 %i.m, %i.n
  br i1 %i.o, label %bb.b, label %._crit_edge, !llvm.loop !344

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.p = load ptr, ptr %0, align 8, !tbaa !121
  tail call void @opj_aligned_free(ptr noundef %i.p) #15
  tail call void @opj_free(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @opj_idwt53_v(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, i64 noundef range(i64 0, 4294967296) %2, i32 noundef %3) unnamed_addr #10 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.c = load i32, ptr %i.b, align 4, !tbaa !109  ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !110
  %i.f = add i32 %i.e, %i.c                       ; 31 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i32, ptr %i.g, align 8, !tbaa !111
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.j = icmp sgt i32 %i.f, 1                     ; 2 uses
  %i.k = icmp eq i32 %3, 8
  %or.cond = and i1 %i.k, %i.j
  br i1 %or.cond, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %0, align 8, !tbaa !108    ; 8 uses
  %i.m = sext i32 %i.c to i64
  %i.n = mul nsw i64 %2, %i.m
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.n ; 3 uses
  %i.p = load <4 x i32>, ptr %1, align 1, !tbaa !62
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load <4 x i32>, ptr %i.q, align 1, !tbaa !62
  %i.s = load <2 x i64>, ptr %i.o, align 1, !tbaa !62 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.u = load <2 x i64>, ptr %i.t, align 1, !tbaa !62 ; 3 uses
  %i.v = bitcast <2 x i64> %i.s to <4 x i32>
  %i.w = shl <4 x i32> %i.v, splat (i32 1)
  %i.x = add <4 x i32> %i.w, splat (i32 2)
  %i.y = ashr <4 x i32> %i.x, splat (i32 2)
  %i.z = sub <4 x i32> %i.p, %i.y                 ; 2 uses
  %i.aa = bitcast <2 x i64> %i.u to <4 x i32>
  %i.ab = shl <4 x i32> %i.aa, splat (i32 1)
  %i.ac = add <4 x i32> %i.ab, splat (i32 2)
  %i.ad = ashr <4 x i32> %i.ac, splat (i32 2)
  %i.ae = sub <4 x i32> %i.r, %i.ad               ; 2 uses
  %i.af = icmp samesign ugt i32 %i.f, 3
  br i1 %i.af, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.ag = add nsw i32 %i.f, -4
  %i.ah = lshr i32 %i.ag, 1
  %i.ai = add nuw nsw i32 %i.ah, 2
  %wide.trip.count.i = zext nneg i32 %i.ai to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %.0108117.i = phi i64 [ 1, %.lr.ph.preheader.i ], [ %i.bo, %.lr.ph.i ] ; 2 uses
  %.0109.in116.i = phi <4 x i32> [ %i.ae, %.lr.ph.preheader.i ], [ %i.bd, %.lr.ph.i ] ; 2 uses
  %.0110115.i = phi <2 x i64> [ %i.s, %.lr.ph.preheader.i ], [ %i.ap, %.lr.ph.i ]
  %.0111114.i = phi <2 x i64> [ %i.u, %.lr.ph.preheader.i ], [ %i.ar, %.lr.ph.i ]
  %.0112.in113.i = phi <4 x i32> [ %i.z, %.lr.ph.preheader.i ], [ %i.ax, %.lr.ph.i ] ; 2 uses
  %i.aj = mul nuw nsw i64 %.0108117.i, %2         ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.aj ; 2 uses
  %i.al = load <4 x i32>, ptr %i.ak, align 1, !tbaa !62
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.an = load <4 x i32>, ptr %i.am, align 1, !tbaa !62
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.aj ; 2 uses
  %i.ap = load <2 x i64>, ptr %i.ao, align 1, !tbaa !62 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.ar = load <2 x i64>, ptr %i.aq, align 1, !tbaa !62 ; 3 uses
  %i.as = bitcast <2 x i64> %.0110115.i to <4 x i32> ; 2 uses
  %i.at = bitcast <2 x i64> %i.ap to <4 x i32>
  %i.au = add <4 x i32> %i.as, splat (i32 2)
  %i.av = add <4 x i32> %i.au, %i.at
  %i.aw = ashr <4 x i32> %i.av, splat (i32 2)
end_hunk_0
begin_hunk_1_@opj_idwt53_v:bb.a
  %i.ca = bitcast <2 x i64> %.0110.lcssa.i to <4 x i32> ; 2 uses
  %i.cb = shl <4 x i32> %i.ca, splat (i32 1)
  %i.cc = add <4 x i32> %i.cb, splat (i32 2)
  %i.cd = ashr <4 x i32> %i.cc, splat (i32 2)
  %i.ce = sub <4 x i32> %i.bz, %i.cd              ; 2 uses
  %i.cf = shl nsw i32 %i.bu, 3
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.cg ; 2 uses
  store <4 x i32> %i.ce, ptr %i.ch, align 16, !tbaa !62
  %i.ci = shl i32 %i.f, 3
  %i.cj = add i32 %i.ci, -16
  %i.ck = zext nneg i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.ck ; 2 uses
  %i.cm = add <4 x i32> %i.ce, %.0112.in.lcssa.i
  %i.cn = ashr <4 x i32> %i.cm, splat (i32 1)
  %i.co = add <4 x i32> %i.cn, %i.ca
  store <4 x i32> %i.co, ptr %i.cl, align 16, !tbaa !62
  %i.cp = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.cq = load <4 x i32>, ptr %i.cp, align 1, !tbaa !62
  %i.cr = bitcast <2 x i64> %.0111.lcssa.i to <4 x i32> ; 2 uses
  %i.cs = shl <4 x i32> %i.cr, splat (i32 1)
  %i.ct = add <4 x i32> %i.cs, splat (i32 2)
  %i.cu = ashr <4 x i32> %i.ct, splat (i32 2)
  %i.cv = sub <4 x i32> %i.cq, %i.cu              ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store <4 x i32> %i.cv, ptr %i.cw, align 16, !tbaa !62
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cy = add <4 x i32> %i.cv, %.0109.in.lcssa.i
  %i.cz = ashr <4 x i32> %i.cy, splat (i32 1)
  %i.da = add <4 x i32> %i.cz, %i.cr
  store <4 x i32> %i.da, ptr %i.cx, align 16, !tbaa !62
  br label %.new337

bb.e:                                             ; preds = %._crit_edge.i
  %i.db = shl i32 %i.f, 3
  %i.dc = add i32 %i.db, -8
  %i.dd = zext nneg i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.dd ; 2 uses
  %i.df = bitcast <2 x i64> %.0110.lcssa.i to <4 x i32>
  %i.dg = add <4 x i32> %.0112.in.lcssa.i, %i.df
  store <4 x i32> %i.dg, ptr %i.de, align 16, !tbaa !62
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.di = bitcast <2 x i64> %.0111.lcssa.i to <4 x i32>
  %i.dj = add <4 x i32> %.0109.in.lcssa.i, %i.di
  store <4 x i32> %i.dj, ptr %i.dh, align 16, !tbaa !62
  br label %.new337

.new337:                                          ; preds = %bb.e, %bb.d
  %wide.trip.count.i.i = zext nneg i32 %i.f to i64 ; 2 uses
  %xtraiter339 = and i64 %wide.trip.count.i.i, 1
  %unroll_iter342 = and i64 %wide.trip.count.i.i, 2147483646
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.new337
  %indvars.iv.i.i = phi i64 [ 0, %.new337 ], [ %indvars.iv.next.i.i.1, %bb.f ] ; 4 uses
  %niter343 = phi i64 [ 0, %.new337 ], [ %niter343.next.1, %bb.f ]
  %i.dk = mul nuw nsw i64 %indvars.iv.i.i, %2
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.dk ; 2 uses
  %.idx.i.i = shl nuw nsw i64 %indvars.iv.i.i, 5
  %i.dm = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx.i.i ; 2 uses
  %i.dn = load <2 x i64>, ptr %i.dm, align 16, !tbaa !62
  store <2 x i64> %i.dn, ptr %i.dl, align 1, !tbaa !62
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.dq = load <2 x i64>, ptr %i.dp, align 16, !tbaa !62
  store <2 x i64> %i.dq, ptr %i.do, align 1, !tbaa !62
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.dr = mul nuw nsw i64 %indvars.iv.next.i.i, %2
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.dr ; 2 uses
  %.idx.i.i.1 = shl nuw nsw i64 %indvars.iv.next.i.i, 5
  %i.dt = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx.i.i.1 ; 2 uses
  %i.du = load <2 x i64>, ptr %i.dt, align 16, !tbaa !62
  store <2 x i64> %i.du, ptr %i.ds, align 1, !tbaa !62
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.dx = load <2 x i64>, ptr %i.dw, align 16, !tbaa !62
  store <2 x i64> %i.dx, ptr %i.dv, align 1, !tbaa !62
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 3 uses
  %niter343.next.1 = add i64 %niter343, 2         ; 2 uses
  %niter343.ncmp.1 = icmp eq i64 %niter343.next.1, %unroll_iter342
  br i1 %niter343.ncmp.1, label %opj_idwt53_v_cas0_mcols_SSE2_OR_AVX2.exit.loopexit.unr-lcssa, label %bb.f, !llvm.loop !346

bb.g:                                             ; preds = %bb.b
  %i.dy = icmp sgt i32 %3, 0
  %or.cond142 = and i1 %i.j, %i.dy
  br i1 %or.cond142, label %.lr.ph141, label %opj_idwt53_v_cas0_mcols_SSE2_OR_AVX2.exit

.lr.ph141:                                        ; preds = %bb.g
  %i.dz = load ptr, ptr %0, align 8, !tbaa !108   ; 15 uses
  %i.ea = ptrtoaddr ptr %i.dz to i64
  %i.eb = sext i32 %i.c to i64
  %i.ec = mul nsw i64 %2, %i.eb
  %i.ed = icmp samesign ugt i32 %i.f, 3
  %i.ee = add i32 %i.c, 1                         ; 5 uses
  %i.ef = add nsw i32 %i.f, -4                    ; 4 uses
  %i.eg = lshr i32 %i.ef, 1
  %i.eh = add nuw i32 %i.eg, 1
  %wide.trip.count.i82 = zext i32 %i.eh to i64    ; 3 uses
  %i.ei = and i32 %i.f, 1
  %.not.i80 = icmp eq i32 %i.ei, 0
  %i.ej = add nsw i32 %i.f, -1                    ; 2 uses
  %i.ek = lshr exact i32 %i.ej, 1
  %i.el = zext nneg i32 %i.ek to i64
  %i.em = mul nuw nsw i64 %2, %i.el
  %i.en = zext nneg i32 %i.ej to i64
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %i.en
  %i.ep = zext nneg i32 %i.f to i64               ; 6 uses
  %i.eq = getelementptr [4 x i8], ptr %i.dz, i64 %i.ep
  %i.er = sub i64 %i.a, %i.ea
  %i.es = lshr i32 %i.ef, 1
  %i.et = lshr i32 %i.ef, 1
  %i.eu = zext nneg i32 %i.et to i64              ; 2 uses
  %i.ev = shl nuw nsw i64 %i.eu, 3
  %i.ew = getelementptr i8, ptr %i.dz, i64 %i.ev
  %scevgep267 = getelementptr i8, ptr %i.ew, i64 8 ; 2 uses
  %i.ex = sext i32 %i.ee to i64
  %i.ey = shl nsw i64 %i.ex, 2                    ; 2 uses
  %scevgep268 = getelementptr i8, ptr %1, i64 %i.ey
  %i.ez = shl nuw nsw i64 %i.eu, 2                ; 2 uses
  %i.fa = add nsw i32 %3, -1
  %i.fb = zext i32 %i.fa to i64
  %i.fc = shl nuw nsw i64 %i.fb, 2                ; 2 uses
  %i.fd = getelementptr i8, ptr %1, i64 %i.ez
  %i.fe = getelementptr i8, ptr %i.fd, i64 %i.ey
  %i.ff = getelementptr i8, ptr %i.fe, i64 %i.fc
  %scevgep269 = getelementptr i8, ptr %i.ff, i64 4
  %scevgep270 = getelementptr i8, ptr %1, i64 4
  %i.fg = getelementptr i8, ptr %1, i64 %i.ez
  %i.fh = getelementptr i8, ptr %i.fg, i64 %i.fc
  %scevgep271 = getelementptr i8, ptr %i.fh, i64 8
  %min.iters.check280 = icmp ult i32 %i.ef, 10
  %ident.check265 = icmp ne i64 %2, 1
  %i.fi = add i32 %i.ee, %i.es
  %i.fj = icmp slt i32 %i.fi, %i.ee
  %i.fk = or i1 %ident.check265, %i.fj
  %bound0272 = icmp ult ptr %i.dz, %scevgep269
  %bound1273 = icmp ult ptr %scevgep268, %scevgep267
  %found.conflict274 = and i1 %bound0272, %bound1273
  %bound0275 = icmp ult ptr %i.dz, %scevgep271
  %bound1276 = icmp ult ptr %scevgep270, %scevgep267
  %found.conflict277 = and i1 %bound0275, %bound1276
  %conflict.rdx278 = or i1 %found.conflict274, %found.conflict277
  %n.vec283 = and i64 %wide.trip.count.i82, 4294967294 ; 4 uses
  %i.fl = shl nuw nsw i64 %n.vec283, 1            ; 2 uses
  %cmp.n297 = icmp eq i64 %n.vec283, %wide.trip.count.i82
  %min.iters.check252 = icmp ult i32 %i.f, 8
  %ident.check246.not = icmp ne i64 %2, 1
  %or.cond303.not309 = or i1 %min.iters.check252, %ident.check246.not
  %invariant.op357 = add i64 %i.er, -1
  %n.vec255 = and i64 %i.ep, 2147483640           ; 3 uses
  %cmp.n262 = icmp eq i64 %n.vec255, %i.ep
  %xtraiter334 = and i64 %i.ep, 3                 ; 2 uses
  %lcmp.mod335.not = icmp eq i64 %xtraiter334, 0
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph141, %opj_idwt3_v_cas0.exit
  %indvar248 = phi i64 [ 0, %.lr.ph141 ], [ %indvar.next249, %opj_idwt3_v_cas0.exit ] ; 2 uses
  %.070140 = phi ptr [ %1, %.lr.ph141 ], [ %i.io, %opj_idwt3_v_cas0.exit ] ; 14 uses
  %.072139 = phi i32 [ 0, %.lr.ph141 ], [ %i.in, %opj_idwt3_v_cas0.exit ]
  %i.fm = shl nuw nsw i64 %indvar248, 2
  %i.fn = load i32, ptr %.070140, align 4, !tbaa !3
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %.070140, i64 %i.ec
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !3  ; 6 uses
  %i.fq = add nsw i32 %i.fp, 1
  %i.fr = ashr i32 %i.fq, 1
  %i.fs = sub nsw i32 %i.fn, %i.fr                ; 5 uses
  br i1 %i.ed, label %.lr.ph.i81.preheader, label %._crit_edge.i78

.lr.ph.i81.preheader:                             ; preds = %bb.h
  br i1 %min.iters.check280, label %.lr.ph.i81.preheader313, label %vector.scevcheck264

vector.scevcheck264:                              ; preds = %.lr.ph.i81.preheader
  br i1 %i.fk, label %.lr.ph.i81.preheader313, label %vector.memcheck266

vector.memcheck266:                               ; preds = %vector.scevcheck264
  br i1 %conflict.rdx278, label %.lr.ph.i81.preheader313, label %vector.ph281

vector.ph281:                                     ; preds = %vector.memcheck266
  %vector.recur.init286 = insertelement <2 x i32> poison, i32 %i.fs, i64 1
  %vector.recur.init288 = insertelement <2 x i32> poison, i32 %i.fp, i64 1
  br label %vector.body284

vector.body284:                                   ; preds = %vector.body284, %vector.ph281
  %index285 = phi i64 [ 0, %vector.ph281 ], [ %index.next293, %vector.body284 ] ; 4 uses
  %vector.recur287 = phi <2 x i32> [ %vector.recur.init286, %vector.ph281 ], [ %i.gd, %vector.body284 ]
  %vector.recur289 = phi <2 x i32> [ %vector.recur.init288, %vector.ph281 ], [ %wide.load291, %vector.body284 ]
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %.070140, i64 %index285
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 4
  %wide.load290 = load <2 x i32>, ptr %i.fu, align 4, !tbaa !3, !alias.scope !347
  %i.fv = trunc nuw nsw i64 %index285 to i32
  %i.fw = add i32 %i.ee, %i.fv
  %i.fx = sext i32 %i.fw to i64
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %.070140, i64 %i.fx
  %wide.load291 = load <2 x i32>, ptr %i.fy, align 4, !tbaa !3, !alias.scope !350 ; 4 uses
  %i.fz = shufflevector <2 x i32> %vector.recur289, <2 x i32> %wide.load291, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.ga = add <2 x i32> %i.fz, splat (i32 2)
  %i.gb = add <2 x i32> %i.ga, %wide.load291
  %i.gc = ashr <2 x i32> %i.gb, splat (i32 2)
  %i.gd = sub <2 x i32> %wide.load290, %i.gc      ; 4 uses
  %i.ge = shufflevector <2 x i32> %vector.recur287, <2 x i32> %i.gd, <2 x i32> <i32 1, i32 2> ; 2 uses
  %.idx302 = shl nuw i64 %index285, 3
  %i.gf = getelementptr inbounds nuw i8, ptr %i.dz, i64 %.idx302
  %i.gg = add <2 x i32> %i.gd, %i.ge
  %i.gh = ashr <2 x i32> %i.gg, splat (i32 1)
  %i.gi = add <2 x i32> %i.gh, %i.fz
  %interleaved.vec292 = shufflevector <2 x i32> %i.ge, <2 x i32> %i.gi, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec292, ptr %i.gf, align 4, !tbaa !3, !alias.scope !352, !noalias !354
  %index.next293 = add nuw i64 %index285, 2       ; 2 uses
  %i.gj = icmp eq i64 %index.next293, %n.vec283
  br i1 %i.gj, label %middle.block294, label %vector.body284, !llvm.loop !355

middle.block294:                                  ; preds = %vector.body284
  %vector.recur.extract295 = extractelement <2 x i32> %i.gd, i64 1 ; 2 uses
  %vector.recur.extract296 = extractelement <2 x i32> %wide.load291, i64 1 ; 2 uses
  br i1 %cmp.n297, label %._crit_edge.i78, label %.lr.ph.i81.preheader313

.lr.ph.i81.preheader313:                          ; preds = %vector.memcheck266, %vector.scevcheck264, %.lr.ph.i81.preheader, %middle.block294
  %indvars.iv69.i.ph = phi i64 [ 0, %vector.memcheck266 ], [ 0, %vector.scevcheck264 ], [ 0, %.lr.ph.i81.preheader ], [ %n.vec283, %middle.block294 ]
  %indvars.iv.i83.ph = phi i64 [ 0, %vector.memcheck266 ], [ 0, %vector.scevcheck264 ], [ 0, %.lr.ph.i81.preheader ], [ %i.fl, %middle.block294 ]
  %.063.i.ph = phi i32 [ %i.fs, %vector.memcheck266 ], [ %i.fs, %vector.scevcheck264 ], [ %i.fs, %.lr.ph.i81.preheader ], [ %vector.recur.extract295, %middle.block294 ]
  %.05861.i.ph = phi i32 [ %i.fp, %vector.memcheck266 ], [ %i.fp, %vector.scevcheck264 ], [ %i.fp, %.lr.ph.i81.preheader ], [ %vector.recur.extract296, %middle.block294 ]
  br label %.lr.ph.i81

.lr.ph.i81:                                       ; preds = %.lr.ph.i81.preheader313, %.lr.ph.i81
  %indvars.iv69.i = phi i64 [ %indvars.iv.next70.i, %.lr.ph.i81 ], [ %indvars.iv69.i.ph, %.lr.ph.i81.preheader313 ] ; 2 uses
  %indvars.iv.i83 = phi i64 [ %indvars.iv.next.i84, %.lr.ph.i81 ], [ %indvars.iv.i83.ph, %.lr.ph.i81.preheader313 ] ; 2 uses
  %.063.i = phi i32 [ %i.gw, %.lr.ph.i81 ], [ %.063.i.ph, %.lr.ph.i81.preheader313 ] ; 2 uses
  %.05861.i = phi i32 [ %i.gs, %.lr.ph.i81 ], [ %.05861.i.ph, %.lr.ph.i81.preheader313 ] ; 2 uses
  %indvars.iv.next70.i = add nuw nsw i64 %indvars.iv69.i, 1 ; 3 uses
  %i.gk = mul nuw nsw i64 %indvars.iv.next70.i, %2
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %.070140, i64 %i.gk
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !3
  %i.gn = trunc nuw nsw i64 %indvars.iv69.i to i32
  %i.go = add i32 %i.ee, %i.gn
  %i.gp = sext i32 %i.go to i64
  %i.gq = mul nsw i64 %2, %i.gp
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %.070140, i64 %i.gq
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !3  ; 3 uses
  %i.gt = add i32 %.05861.i, 2
  %i.gu = add i32 %i.gt, %i.gs
  %i.gv = ashr i32 %i.gu, 2
  %i.gw = sub i32 %i.gm, %i.gv                    ; 3 uses
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %indvars.iv.i83 ; 2 uses
  store i32 %.063.i, ptr %i.gx, align 4, !tbaa !3
  %i.gy = add i32 %i.gw, %.063.i
  %i.gz = ashr i32 %i.gy, 1
  %i.ha = add i32 %i.gz, %.05861.i
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gx, i64 4
  store i32 %i.ha, ptr %i.hb, align 4, !tbaa !3
  %indvars.iv.next.i84 = add nuw nsw i64 %indvars.iv.i83, 2 ; 2 uses
  %exitcond.not.i85 = icmp eq i64 %indvars.iv.next70.i, %wide.trip.count.i82
  br i1 %exitcond.not.i85, label %._crit_edge.i78, label %.lr.ph.i81, !llvm.loop !356

._crit_edge.i78:                                  ; preds = %.lr.ph.i81, %middle.block294, %bb.h
  %.058.lcssa.i = phi i32 [ %i.fp, %bb.h ], [ %vector.recur.extract296, %middle.block294 ], [ %i.gs, %.lr.ph.i81 ] ; 2 uses
  %.057.lcssa.i = phi i64 [ 0, %bb.h ], [ %i.fl, %middle.block294 ], [ %indvars.iv.next.i84, %.lr.ph.i81 ]
  %.0.lcssa.i79 = phi i32 [ %i.fs, %bb.h ], [ %vector.recur.extract295, %middle.block294 ], [ %i.gw, %.lr.ph.i81 ] ; 3 uses
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %.057.lcssa.i
  store i32 %.0.lcssa.i79, ptr %i.hc, align 4, !tbaa !3
  br i1 %.not.i80, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge.i78
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %.070140, i64 %i.em
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !3
  %i.hf = add nsw i32 %.058.lcssa.i, 1
  %i.hg = ashr i32 %i.hf, 1
  %i.hh = sub nsw i32 %i.he, %i.hg                ; 2 uses
  store i32 %i.hh, ptr %i.eo, align 4, !tbaa !3
  %i.hi = add nsw i32 %i.hh, %.0.lcssa.i79
  %i.hj = ashr i32 %i.hi, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i78
  %.0.lcssa.sink.i = phi i32 [ %i.hj, %bb.i ], [ %.0.lcssa.i79, %._crit_edge.i78 ]
  %.sink82.i = phi i64 [ -8, %bb.i ], [ -4, %._crit_edge.i78 ]
  %i.hk = add nsw i32 %.0.lcssa.sink.i, %.058.lcssa.i
  %i.hl = getelementptr i8, ptr %i.eq, i64 %.sink82.i
  store i32 %i.hk, ptr %i.hl, align 4, !tbaa !3
  %.reass358 = add i64 %i.fm, %invariant.op357
  %diff.check250 = icmp ult i64 %.reass358, 31
  %or.cond304 = select i1 %or.cond303.not309, i1 true, i1 %diff.check250
  br i1 %or.cond304, label %scalar.ph251.preheader, label %vector.body256

vector.body256:                                   ; preds = %bb.j, %vector.body256
  %index257 = phi i64 [ %index.next260, %vector.body256 ], [ 0, %bb.j ] ; 3 uses
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %index257 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 16
  %wide.load258 = load <4 x i32>, ptr %i.hm, align 4, !tbaa !3
  %wide.load259 = load <4 x i32>, ptr %i.hn, align 4, !tbaa !3
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %.070140, i64 %index257 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 16
  store <4 x i32> %wide.load258, ptr %i.ho, align 4, !tbaa !3
  store <4 x i32> %wide.load259, ptr %i.hp, align 4, !tbaa !3
  %index.next260 = add nuw i64 %index257, 8       ; 2 uses
  %i.hq = icmp eq i64 %index.next260, %n.vec255
  br i1 %i.hq, label %middle.block261, label %vector.body256, !llvm.loop !357

middle.block261:                                  ; preds = %vector.body256
  br i1 %cmp.n262, label %opj_idwt3_v_cas0.exit, label %scalar.ph251.preheader

scalar.ph251.preheader:                           ; preds = %bb.j, %middle.block261
  %indvars.iv74.i.ph = phi i64 [ 0, %bb.j ], [ %n.vec255, %middle.block261 ] ; 3 uses
  br i1 %lcmp.mod335.not, label %scalar.ph251.prol.loopexit, label %scalar.ph251.prol

scalar.ph251.prol:                                ; preds = %scalar.ph251.preheader, %scalar.ph251.prol
  %indvars.iv74.i.prol = phi i64 [ %indvars.iv.next75.i.prol, %scalar.ph251.prol ], [ %indvars.iv74.i.ph, %scalar.ph251.preheader ] ; 3 uses
  %prol.iter336 = phi i64 [ %prol.iter336.next, %scalar.ph251.prol ], [ 0, %scalar.ph251.preheader ]
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %indvars.iv74.i.prol
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !3
  %i.ht = mul nuw nsw i64 %indvars.iv74.i.prol, %2
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %.070140, i64 %i.ht
  store i32 %i.hs, ptr %i.hu, align 4, !tbaa !3
  %indvars.iv.next75.i.prol = add nuw nsw i64 %indvars.iv74.i.prol, 1 ; 2 uses
  %prol.iter336.next = add i64 %prol.iter336, 1   ; 2 uses
  %prol.iter336.cmp.not = icmp eq i64 %prol.iter336.next, %xtraiter334
  br i1 %prol.iter336.cmp.not, label %scalar.ph251.prol.loopexit, label %scalar.ph251.prol, !llvm.loop !358

scalar.ph251.prol.loopexit:                       ; preds = %scalar.ph251.prol, %scalar.ph251.preheader
  %indvars.iv74.i.unr = phi i64 [ %indvars.iv74.i.ph, %scalar.ph251.preheader ], [ %indvars.iv.next75.i.prol, %scalar.ph251.prol ]
  %i.hv = sub nsw i64 %indvars.iv74.i.ph, %i.ep
  %i.hw = icmp ugt i64 %i.hv, -4
  br i1 %i.hw, label %opj_idwt3_v_cas0.exit, label %scalar.ph251

scalar.ph251:                                     ; preds = %scalar.ph251.prol.loopexit, %scalar.ph251
  %indvars.iv74.i = phi i64 [ %indvars.iv.next75.i.3, %scalar.ph251 ], [ %indvars.iv74.i.unr, %scalar.ph251.prol.loopexit ] ; 6 uses
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %indvars.iv74.i
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !3
  %i.hz = mul nuw nsw i64 %indvars.iv74.i, %2
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %.070140, i64 %i.hz
  store i32 %i.hy, ptr %i.ia, align 4, !tbaa !3
  %indvars.iv.next75.i = add nuw nsw i64 %indvars.iv74.i, 1 ; 2 uses
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %indvars.iv.next75.i
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !3
  %i.id = mul nuw nsw i64 %indvars.iv.next75.i, %2
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %.070140, i64 %i.id
  store i32 %i.ic, ptr %i.ie, align 4, !tbaa !3
  %indvars.iv.next75.i.1 = add nuw nsw i64 %indvars.iv74.i, 2 ; 2 uses
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %indvars.iv.next75.i.1
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !3
  %i.ih = mul nuw nsw i64 %indvars.iv.next75.i.1, %2
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %.070140, i64 %i.ih
  store i32 %i.ig, ptr %i.ii, align 4, !tbaa !3
  %indvars.iv.next75.i.2 = add nuw nsw i64 %indvars.iv74.i, 3 ; 2 uses
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %indvars.iv.next75.i.2
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !3
  %i.il = mul nuw nsw i64 %indvars.iv.next75.i.2, %2
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %.070140, i64 %i.il
  store i32 %i.ik, ptr %i.im, align 4, !tbaa !3
  %indvars.iv.next75.i.3 = add nuw nsw i64 %indvars.iv74.i, 4 ; 2 uses
  %exitcond78.not.i.3 = icmp eq i64 %indvars.iv.next75.i.3, %i.ep
  br i1 %exitcond78.not.i.3, label %opj_idwt3_v_cas0.exit, label %scalar.ph251, !llvm.loop !359

opj_idwt3_v_cas0.exit:                            ; preds = %scalar.ph251.prol.loopexit, %scalar.ph251, %middle.block261
  %i.in = add nuw nsw i32 %.072139, 1             ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %.070140, i64 4
  %exitcond163.not = icmp eq i32 %i.in, %3
  %indvar.next249 = add i64 %indvar248, 1
  br i1 %exitcond163.not, label %opj_idwt53_v_cas0_mcols_SSE2_OR_AVX2.exit, label %bb.h, !llvm.loop !360

bb.k:                                             ; preds = %bb.a
  switch i32 %i.f, label %bb.n [
    i32 1, label %.preheader116
    i32 2, label %bb.l
  ]

.preheader116:                                    ; preds = %bb.k
  %i.ip = icmp sgt i32 %3, 0
  br i1 %i.ip, label %.lr.ph135.preheader, label %opj_idwt53_v_cas0_mcols_SSE2_OR_AVX2.exit

.lr.ph135.preheader:                              ; preds = %.preheader116
  %i.iq = zext nneg i32 %3 to i64                 ; 2 uses
  %min.iters.check = icmp ult i32 %3, 8
  br i1 %min.iters.check, label %.lr.ph135.preheader328, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph135.preheader
  %n.vec = and i64 %i.iq, 2147483640              ; 4 uses
  %i.ir = shl nuw nsw i64 %n.vec, 2
  %i.is = getelementptr i8, ptr %1, i64 %i.ir
  %i.it = trunc nuw nsw i64 %n.vec to i32
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.iu = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %1, i64 %i.iu ; 3 uses
  %i.iv = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !3
  %wide.load201 = load <4 x i32>, ptr %i.iv, align 4, !tbaa !3
  %i.iw = sdiv <4 x i32> %wide.load, splat (i32 2)
  %i.ix = sdiv <4 x i32> %wide.load201, splat (i32 2)
  store <4 x i32> %i.iw, ptr %next.gep, align 4, !tbaa !3
  store <4 x i32> %i.ix, ptr %i.iv, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.iy = icmp eq i64 %index.next, %n.vec
  br i1 %i.iy, label %middle.block, label %vector.body, !llvm.loop !361

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.iq
  br i1 %cmp.n, label %opj_idwt53_v_cas0_mcols_SSE2_OR_AVX2.exit, label %.lr.ph135.preheader328

.lr.ph135.preheader328:                           ; preds = %.lr.ph135.preheader, %middle.block
end_hunk_1
begin_hunk_2_@opj_idwt53_v:bb.a
  %i.ng = bitcast <2 x i64> %.0115.lcssa.i to <4 x i32> ; 2 uses
  %i.nh = shl <4 x i32> %i.ng, splat (i32 1)
  %i.ni = add <4 x i32> %i.nh, splat (i32 2)
  %i.nj = ashr <4 x i32> %i.ni, splat (i32 2)
  %i.nk = sub <4 x i32> %i.nf, %i.nj              ; 2 uses
  %i.nl = shl nsw i32 %i.kx, 3
  %i.nm = zext nneg i32 %i.nl to i64
  %i.nn = getelementptr inbounds nuw [4 x i8], ptr %i.jw, i64 %i.nm ; 2 uses
  %i.no = add <4 x i32> %i.nd, %.0114.in.lcssa.i
  %i.np = ashr <4 x i32> %i.no, splat (i32 1)
  %i.nq = add <4 x i32> %i.np, %i.mz
  store <4 x i32> %i.nq, ptr %i.nn, align 16, !tbaa !62
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nn, i64 16
  %i.ns = add <4 x i32> %i.nk, %.0113.in.lcssa.i
  %i.nt = ashr <4 x i32> %i.ns, splat (i32 1)
  %i.nu = add <4 x i32> %i.nt, %i.ng
  store <4 x i32> %i.nu, ptr %i.nr, align 16, !tbaa !62
  %i.nv = shl i32 %i.f, 3
  %i.nw = add i32 %i.nv, -8
  %i.nx = zext nneg i32 %i.nw to i64
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %i.jw, i64 %i.nx ; 2 uses
  store <4 x i32> %i.nd, ptr %i.ny, align 16, !tbaa !62
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 16
  store <4 x i32> %i.nk, ptr %i.nz, align 16, !tbaa !62
  br label %.new

bb.q:                                             ; preds = %._crit_edge.i86
  %i.oa = shl i32 %i.f, 3
  %i.ob = sext i32 %i.oa to i64
  %i.oc = getelementptr [4 x i8], ptr %i.jw, i64 %i.ob ; 2 uses
  %i.od = getelementptr i8, ptr %i.oc, i64 -32
  %i.oe = bitcast <2 x i64> %.0112.lcssa.i to <4 x i32>
  %i.of = add <4 x i32> %.0114.in.lcssa.i, %i.oe
  store <4 x i32> %i.of, ptr %i.od, align 16, !tbaa !62
  %i.og = getelementptr i8, ptr %i.oc, i64 -16
  %i.oh = bitcast <2 x i64> %.0115.lcssa.i to <4 x i32>
  %i.oi = add <4 x i32> %.0113.in.lcssa.i, %i.oh
  store <4 x i32> %i.oi, ptr %i.og, align 16, !tbaa !62
  br label %.new

.new:                                             ; preds = %bb.q, %bb.p
  %wide.trip.count.i.i89 = zext nneg i32 %i.f to i64 ; 2 uses
  %xtraiter331 = and i64 %wide.trip.count.i.i89, 1
  %unroll_iter = and i64 %wide.trip.count.i.i89, 2147483646
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.new
  %indvars.iv.i.i90 = phi i64 [ 0, %.new ], [ %indvars.iv.next.i.i92.1, %bb.r ] ; 4 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.r ]
  %i.oj = mul nuw nsw i64 %indvars.iv.i.i90, %2
  %i.ok = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.oj ; 2 uses
  %.idx.i.i91 = shl nuw nsw i64 %indvars.iv.i.i90, 5
  %i.ol = getelementptr inbounds nuw i8, ptr %i.jw, i64 %.idx.i.i91 ; 2 uses
  %i.om = load <2 x i64>, ptr %i.ol, align 16, !tbaa !62
  store <2 x i64> %i.om, ptr %i.ok, align 1, !tbaa !62
  %i.on = getelementptr inbounds nuw i8, ptr %i.ok, i64 16
  %i.oo = getelementptr inbounds nuw i8, ptr %i.ol, i64 16
  %i.op = load <2 x i64>, ptr %i.oo, align 16, !tbaa !62
  store <2 x i64> %i.op, ptr %i.on, align 1, !tbaa !62
  %indvars.iv.next.i.i92 = or disjoint i64 %indvars.iv.i.i90, 1 ; 2 uses
  %i.oq = mul nuw nsw i64 %indvars.iv.next.i.i92, %2
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.oq ; 2 uses
  %.idx.i.i91.1 = shl nuw nsw i64 %indvars.iv.next.i.i92, 5
  %i.os = getelementptr inbounds nuw i8, ptr %i.jw, i64 %.idx.i.i91.1 ; 2 uses
  %i.ot = load <2 x i64>, ptr %i.os, align 16, !tbaa !62
  store <2 x i64> %i.ot, ptr %i.or, align 1, !tbaa !62
  %i.ou = getelementptr inbounds nuw i8, ptr %i.or, i64 16
  %i.ov = getelementptr inbounds nuw i8, ptr %i.os, i64 16
  %i.ow = load <2 x i64>, ptr %i.ov, align 16, !tbaa !62
  store <2 x i64> %i.ow, ptr %i.ou, align 1, !tbaa !62
  %indvars.iv.next.i.i92.1 = add nuw nsw i64 %indvars.iv.i.i90, 2 ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %opj_idwt53_v_cas0_mcols_SSE2_OR_AVX2.exit.loopexit318.unr-lcssa, label %bb.r, !llvm.loop !346

bb.s:                                             ; preds = %bb.n
  %i.ox = icmp sgt i32 %3, 0
  %or.cond143 = and i1 %i.ju, %i.ox
  br i1 %or.cond143, label %.lr.ph138, label %opj_idwt53_v_cas0_mcols_SSE2_OR_AVX2.exit

.lr.ph138:                                        ; preds = %bb.s
  %i.oy = load ptr, ptr %0, align 8, !tbaa !108   ; 15 uses
  %i.oz = ptrtoaddr ptr %i.oy to i64
  %i.pa = sext i32 %i.c to i64                    ; 2 uses
  %i.pb = mul nsw i64 %2, %i.pa
  %i.pc = add nsw i32 %i.f, -2                    ; 2 uses
  %i.pd = and i32 %i.f, 1                         ; 2 uses
  %i.pe = xor i32 %i.pd, 1                        ; 2 uses
  %i.pf = sub nuw nsw i32 %i.pc, %i.pe
  %i.pg = icmp samesign ugt i32 %i.pf, 1
  %i.ph = add nsw i32 %i.f, -4
  %i.pi = sub i32 %i.ph, %i.pe                    ; 4 uses
  %i.pj = lshr i32 %i.pi, 1
  %i.pk = add nuw i32 %i.pj, 2
  %wide.trip.count.i106 = zext i32 %i.pk to i64
  %.not.i104 = icmp eq i32 %i.pd, 0
  %i.pl = lshr exact i32 %i.f, 1
  %i.pm = add nsw i32 %i.pl, -1
  %i.pn = zext nneg i32 %i.pm to i64
  %i.po = mul nuw nsw i64 %2, %i.pn
  %i.pp = zext nneg i32 %i.pc to i64
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr %i.oy, i64 %i.pp
  %i.pr = zext nneg i32 %i.f to i64               ; 6 uses
  %i.ps = getelementptr [4 x i8], ptr %i.oy, i64 %i.pr
  %i.pt = getelementptr i8, ptr %i.ps, i64 -4
  %i.pu = sub i64 %i.a, %i.oz
  %scevgep = getelementptr i8, ptr %i.oy, i64 4   ; 2 uses
  %i.pv = lshr i32 %i.pi, 1
  %i.pw = zext nneg i32 %i.pv to i64              ; 2 uses
  %i.px = shl nuw nsw i64 %i.pw, 3
  %i.py = getelementptr i8, ptr %i.oy, i64 %i.px
  %scevgep219 = getelementptr i8, ptr %i.py, i64 12 ; 2 uses
  %scevgep220 = getelementptr i8, ptr %1, i64 4
  %i.pz = shl nuw nsw i64 %i.pw, 2                ; 2 uses
  %i.qa = add nsw i32 %3, -1
  %i.qb = zext i32 %i.qa to i64
  %i.qc = shl nuw nsw i64 %i.qb, 2                ; 2 uses
  %i.qd = getelementptr i8, ptr %1, i64 %i.pz
  %i.qe = getelementptr i8, ptr %i.qd, i64 %i.qc
  %scevgep221 = getelementptr i8, ptr %i.qe, i64 8
  %i.qf = shl nsw i64 %i.pa, 2                    ; 2 uses
  %i.qg = getelementptr i8, ptr %1, i64 %i.qf
  %scevgep222 = getelementptr i8, ptr %i.qg, i64 8
  %i.qh = getelementptr i8, ptr %1, i64 %i.pz
  %i.qi = getelementptr i8, ptr %i.qh, i64 %i.qf
  %i.qj = getelementptr i8, ptr %i.qi, i64 %i.qc
  %scevgep223 = getelementptr i8, ptr %i.qj, i64 12
  %i.qk = lshr i32 %i.pi, 1
  %narrow = add nuw i32 %i.qk, 1
  %i.ql = zext i32 %narrow to i64                 ; 3 uses
  %min.iters.check228 = icmp ugt i32 %i.pi, 5
  %ident.check217.not = icmp eq i64 %2, 1
  %or.cond305 = and i1 %min.iters.check228, %ident.check217.not
  %bound0 = icmp ult ptr %scevgep, %scevgep221
  %bound1 = icmp ult ptr %scevgep220, %scevgep219
  %found.conflict = and i1 %bound0, %bound1
  %bound0224 = icmp ult ptr %scevgep, %scevgep223
  %bound1225 = icmp ult ptr %scevgep222, %scevgep219
  %found.conflict226 = and i1 %bound0224, %bound1225
  %conflict.rdx = or i1 %found.conflict, %found.conflict226
  %n.vec231 = and i64 %i.ql, 4294967294           ; 3 uses
  %i.qm = or i64 %i.ql, 1
  %i.qn = shl nuw nsw i64 %n.vec231, 1
  %i.qo = or disjoint i64 %i.qn, 1                ; 2 uses
  %cmp.n241 = icmp eq i64 %n.vec231, %i.ql
  %min.iters.check204 = icmp ult i32 %i.f, 8
  %ident.check.not = icmp ne i64 %2, 1
  %or.cond306.not308 = or i1 %min.iters.check204, %ident.check.not
  %invariant.op = add i64 %i.pu, -1
  %n.vec207 = and i64 %i.pr, 2147483640           ; 3 uses
  %cmp.n214 = icmp eq i64 %n.vec207, %i.pr
  %xtraiter = and i64 %i.pr, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph138, %opj_idwt3_v_cas1.exit
  %indvar = phi i64 [ 0, %.lr.ph138 ], [ %indvar.next, %opj_idwt3_v_cas1.exit ] ; 2 uses
  %.0137 = phi i32 [ 0, %.lr.ph138 ], [ %i.tq, %opj_idwt3_v_cas1.exit ]
  %.3136 = phi ptr [ %1, %.lr.ph138 ], [ %i.tr, %opj_idwt3_v_cas1.exit ] ; 12 uses
  %i.qp = shl nuw nsw i64 %indvar, 2
  %i.qq = getelementptr inbounds nuw [4 x i8], ptr %.3136, i64 %i.pb ; 4 uses
  %i.qr = getelementptr inbounds nuw [4 x i8], ptr %i.qq, i64 %2
  %i.qs = load i32, ptr %i.qr, align 4, !tbaa !3  ; 5 uses
  %i.qt = load i32, ptr %.3136, align 4, !tbaa !3
  %i.qu = load i32, ptr %i.qq, align 4, !tbaa !3  ; 2 uses
  %i.qv = add i32 %i.qs, 2
  %i.qw = add i32 %i.qv, %i.qu
  %i.qx = ashr i32 %i.qw, 2
  %i.qy = sub nsw i32 %i.qt, %i.qx                ; 5 uses
  %i.qz = add nsw i32 %i.qy, %i.qu
  store i32 %i.qz, ptr %i.oy, align 4, !tbaa !3
  br i1 %i.pg, label %.lr.ph.i107.preheader, label %._crit_edge.i102

.lr.ph.i107.preheader:                            ; preds = %bb.t
  br i1 %or.cond305, label %vector.memcheck218, label %.lr.ph.i107.preheader323

vector.memcheck218:                               ; preds = %.lr.ph.i107.preheader
  br i1 %conflict.rdx, label %.lr.ph.i107.preheader323, label %vector.ph229

vector.ph229:                                     ; preds = %vector.memcheck218
  %vector.recur.init = insertelement <2 x i32> poison, i32 %i.qy, i64 1
  %vector.recur.init234 = insertelement <2 x i32> poison, i32 %i.qs, i64 1
  br label %vector.body232

vector.body232:                                   ; preds = %vector.body232, %vector.ph229
  %index233 = phi i64 [ 0, %vector.ph229 ], [ %index.next238, %vector.body232 ] ; 4 uses
  %vector.recur = phi <2 x i32> [ %vector.recur.init, %vector.ph229 ], [ %i.ri, %vector.body232 ]
  %vector.recur235 = phi <2 x i32> [ %vector.recur.init234, %vector.ph229 ], [ %wide.load236, %vector.body232 ]
  %i.ra = getelementptr inbounds nuw [4 x i8], ptr %i.qq, i64 %index233
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 8
  %wide.load236 = load <2 x i32>, ptr %i.rb, align 4, !tbaa !3, !alias.scope !365 ; 4 uses
  %i.rc = shufflevector <2 x i32> %vector.recur235, <2 x i32> %wide.load236, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.rd = getelementptr inbounds nuw [4 x i8], ptr %.3136, i64 %index233
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 4
  %wide.load237 = load <2 x i32>, ptr %i.re, align 4, !tbaa !3, !alias.scope !368
  %i.rf = add <2 x i32> %i.rc, splat (i32 2)
  %i.rg = add <2 x i32> %i.rf, %wide.load236
  %i.rh = ashr <2 x i32> %i.rg, splat (i32 2)
  %i.ri = sub nsw <2 x i32> %wide.load237, %i.rh  ; 4 uses
  %i.rj = shufflevector <2 x i32> %vector.recur, <2 x i32> %i.ri, <2 x i32> <i32 1, i32 2> ; 2 uses
  %.idx = shl nuw i64 %index233, 3
  %i.rk = getelementptr inbounds nuw i8, ptr %i.oy, i64 %.idx
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rk, i64 4
  %i.rm = add nsw <2 x i32> %i.ri, %i.rj
  %i.rn = ashr <2 x i32> %i.rm, splat (i32 1)
  %i.ro = add nsw <2 x i32> %i.rn, %i.rc
  %interleaved.vec = shufflevector <2 x i32> %i.rj, <2 x i32> %i.ro, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec, ptr %i.rl, align 4, !tbaa !3, !alias.scope !370, !noalias !372
  %index.next238 = add nuw i64 %index233, 2       ; 2 uses
  %i.rp = icmp eq i64 %index.next238, %n.vec231
  br i1 %i.rp, label %middle.block239, label %vector.body232, !llvm.loop !373

middle.block239:                                  ; preds = %vector.body232
  %vector.recur.extract = extractelement <2 x i32> %i.ri, i64 1 ; 2 uses
  %vector.recur.extract240 = extractelement <2 x i32> %wide.load236, i64 1 ; 2 uses
  br i1 %cmp.n241, label %._crit_edge.i102, label %.lr.ph.i107.preheader323

.lr.ph.i107.preheader323:                         ; preds = %vector.memcheck218, %.lr.ph.i107.preheader, %middle.block239
  %indvars.iv77.i.ph = phi i64 [ 1, %vector.memcheck218 ], [ 1, %.lr.ph.i107.preheader ], [ %i.qm, %middle.block239 ]
  %indvars.iv.i108.ph = phi i64 [ 1, %vector.memcheck218 ], [ 1, %.lr.ph.i107.preheader ], [ %i.qo, %middle.block239 ]
  %.06367.i.ph = phi i32 [ %i.qy, %vector.memcheck218 ], [ %i.qy, %.lr.ph.i107.preheader ], [ %vector.recur.extract, %middle.block239 ]
  %.06466.i.ph = phi i32 [ %i.qs, %vector.memcheck218 ], [ %i.qs, %.lr.ph.i107.preheader ], [ %vector.recur.extract240, %middle.block239 ]
  br label %.lr.ph.i107

.lr.ph.i107:                                      ; preds = %.lr.ph.i107.preheader323, %.lr.ph.i107
  %indvars.iv77.i = phi i64 [ %indvars.iv.next78.i, %.lr.ph.i107 ], [ %indvars.iv77.i.ph, %.lr.ph.i107.preheader323 ] ; 2 uses
  %indvars.iv.i108 = phi i64 [ %indvars.iv.next.i109, %.lr.ph.i107 ], [ %indvars.iv.i108.ph, %.lr.ph.i107.preheader323 ] ; 2 uses
  %.06367.i = phi i32 [ %i.rz, %.lr.ph.i107 ], [ %.06367.i.ph, %.lr.ph.i107.preheader323 ] ; 2 uses
  %.06466.i = phi i32 [ %i.rs, %.lr.ph.i107 ], [ %.06466.i.ph, %.lr.ph.i107.preheader323 ] ; 2 uses
  %indvars.iv.next78.i = add nuw nsw i64 %indvars.iv77.i, 1 ; 3 uses
  %i.rq = mul nuw nsw i64 %indvars.iv.next78.i, %2
  %i.rr = getelementptr inbounds nuw [4 x i8], ptr %i.qq, i64 %i.rq
  %i.rs = load i32, ptr %i.rr, align 4, !tbaa !3  ; 3 uses
  %i.rt = mul nuw nsw i64 %indvars.iv77.i, %2
  %i.ru = getelementptr inbounds nuw [4 x i8], ptr %.3136, i64 %i.rt
  %i.rv = load i32, ptr %i.ru, align 4, !tbaa !3
  %i.rw = add i32 %.06466.i, 2
  %i.rx = add i32 %i.rw, %i.rs
  %i.ry = ashr i32 %i.rx, 2
  %i.rz = sub nsw i32 %i.rv, %i.ry                ; 3 uses
  %i.sa = getelementptr inbounds nuw [4 x i8], ptr %i.oy, i64 %indvars.iv.i108 ; 2 uses
  store i32 %.06367.i, ptr %i.sa, align 4, !tbaa !3
  %i.sb = add nsw i32 %i.rz, %.06367.i
  %i.sc = ashr i32 %i.sb, 1
  %i.sd = add nsw i32 %i.sc, %.06466.i
  %i.se = getelementptr inbounds nuw i8, ptr %i.sa, i64 4
  store i32 %i.sd, ptr %i.se, align 4, !tbaa !3
  %indvars.iv.next.i109 = add nuw nsw i64 %indvars.iv.i108, 2 ; 2 uses
  %exitcond.not.i110 = icmp eq i64 %indvars.iv.next78.i, %wide.trip.count.i106
  br i1 %exitcond.not.i110, label %._crit_edge.i102, label %.lr.ph.i107, !llvm.loop !374

._crit_edge.i102:                                 ; preds = %.lr.ph.i107, %middle.block239, %bb.t
  %.064.lcssa.i = phi i32 [ %i.qs, %bb.t ], [ %vector.recur.extract240, %middle.block239 ], [ %i.rs, %.lr.ph.i107 ] ; 3 uses
  %.063.lcssa.i = phi i32 [ %i.qy, %bb.t ], [ %vector.recur.extract, %middle.block239 ], [ %i.rz, %.lr.ph.i107 ] ; 3 uses
  %.0.lcssa.i103 = phi i64 [ 1, %bb.t ], [ %i.qo, %middle.block239 ], [ %indvars.iv.next.i109, %.lr.ph.i107 ]
  %i.sf = getelementptr inbounds nuw [4 x i8], ptr %i.oy, i64 %.0.lcssa.i103
  store i32 %.063.lcssa.i, ptr %i.sf, align 4, !tbaa !3
  br i1 %.not.i104, label %bb.u, label %bb.v

bb.u:                                             ; preds = %._crit_edge.i102
  %i.sg = getelementptr inbounds nuw [4 x i8], ptr %.3136, i64 %i.po
  %i.sh = load i32, ptr %i.sg, align 4, !tbaa !3
  %i.si = add nsw i32 %.064.lcssa.i, 1
  %i.sj = ashr i32 %i.si, 1
  %i.sk = sub nsw i32 %i.sh, %i.sj                ; 2 uses
  %i.sl = add nsw i32 %i.sk, %.063.lcssa.i
  %i.sm = ashr i32 %i.sl, 1
  %i.sn = add nsw i32 %i.sm, %.064.lcssa.i
  store i32 %i.sn, ptr %i.pq, align 4, !tbaa !3
  br label %bb.w

bb.v:                                             ; preds = %._crit_edge.i102
  %i.so = add nsw i32 %.063.lcssa.i, %.064.lcssa.i
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.sink.i = phi i32 [ %i.so, %bb.v ], [ %i.sk, %bb.u ]
  store i32 %.sink.i, ptr %i.pt, align 4, !tbaa !3
  %.reass = add i64 %i.qp, %invariant.op
  %diff.check = icmp ult i64 %.reass, 31
  %or.cond307 = select i1 %or.cond306.not308, i1 true, i1 %diff.check
  br i1 %or.cond307, label %scalar.ph203.preheader, label %vector.body208

vector.body208:                                   ; preds = %bb.w, %vector.body208
  %index209 = phi i64 [ %index.next212, %vector.body208 ], [ 0, %bb.w ] ; 3 uses
  %i.sp = getelementptr inbounds nuw [4 x i8], ptr %i.oy, i64 %index209 ; 2 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 16
  %wide.load210 = load <4 x i32>, ptr %i.sp, align 4, !tbaa !3
  %wide.load211 = load <4 x i32>, ptr %i.sq, align 4, !tbaa !3
  %i.sr = getelementptr inbounds nuw [4 x i8], ptr %.3136, i64 %index209 ; 2 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sr, i64 16
  store <4 x i32> %wide.load210, ptr %i.sr, align 4, !tbaa !3
  store <4 x i32> %wide.load211, ptr %i.ss, align 4, !tbaa !3
  %index.next212 = add nuw i64 %index209, 8       ; 2 uses
  %i.st = icmp eq i64 %index.next212, %n.vec207
  br i1 %i.st, label %middle.block213, label %vector.body208, !llvm.loop !375

middle.block213:                                  ; preds = %vector.body208
  br i1 %cmp.n214, label %opj_idwt3_v_cas1.exit, label %scalar.ph203.preheader

scalar.ph203.preheader:                           ; preds = %bb.w, %middle.block213
  %indvars.iv82.i.ph = phi i64 [ 0, %bb.w ], [ %n.vec207, %middle.block213 ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph203.prol.loopexit, label %scalar.ph203.prol

scalar.ph203.prol:                                ; preds = %scalar.ph203.preheader, %scalar.ph203.prol
  %indvars.iv82.i.prol = phi i64 [ %indvars.iv.next83.i.prol, %scalar.ph203.prol ], [ %indvars.iv82.i.ph, %scalar.ph203.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph203.prol ], [ 0, %scalar.ph203.preheader ]
  %i.su = getelementptr inbounds nuw [4 x i8], ptr %i.oy, i64 %indvars.iv82.i.prol
  %i.sv = load i32, ptr %i.su, align 4, !tbaa !3
  %i.sw = mul nuw nsw i64 %indvars.iv82.i.prol, %2
  %i.sx = getelementptr inbounds nuw [4 x i8], ptr %.3136, i64 %i.sw
  store i32 %i.sv, ptr %i.sx, align 4, !tbaa !3
  %indvars.iv.next83.i.prol = add nuw nsw i64 %indvars.iv82.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph203.prol.loopexit, label %scalar.ph203.prol, !llvm.loop !376

scalar.ph203.prol.loopexit:                       ; preds = %scalar.ph203.prol, %scalar.ph203.preheader
  %indvars.iv82.i.unr = phi i64 [ %indvars.iv82.i.ph, %scalar.ph203.preheader ], [ %indvars.iv.next83.i.prol, %scalar.ph203.prol ]
  %i.sy = sub nsw i64 %indvars.iv82.i.ph, %i.pr
  %i.sz = icmp ugt i64 %i.sy, -4
  br i1 %i.sz, label %opj_idwt3_v_cas1.exit, label %scalar.ph203

scalar.ph203:                                     ; preds = %scalar.ph203.prol.loopexit, %scalar.ph203
  %indvars.iv82.i = phi i64 [ %indvars.iv.next83.i.3, %scalar.ph203 ], [ %indvars.iv82.i.unr, %scalar.ph203.prol.loopexit ] ; 6 uses
  %i.ta = getelementptr inbounds nuw [4 x i8], ptr %i.oy, i64 %indvars.iv82.i
  %i.tb = load i32, ptr %i.ta, align 4, !tbaa !3
  %i.tc = mul nuw nsw i64 %indvars.iv82.i, %2
  %i.td = getelementptr inbounds nuw [4 x i8], ptr %.3136, i64 %i.tc
  store i32 %i.tb, ptr %i.td, align 4, !tbaa !3
  %indvars.iv.next83.i = add nuw nsw i64 %indvars.iv82.i, 1 ; 2 uses
  %i.te = getelementptr inbounds nuw [4 x i8], ptr %i.oy, i64 %indvars.iv.next83.i
  %i.tf = load i32, ptr %i.te, align 4, !tbaa !3
  %i.tg = mul nuw nsw i64 %indvars.iv.next83.i, %2
  %i.th = getelementptr inbounds nuw [4 x i8], ptr %.3136, i64 %i.tg
  store i32 %i.tf, ptr %i.th, align 4, !tbaa !3
  %indvars.iv.next83.i.1 = add nuw nsw i64 %indvars.iv82.i, 2 ; 2 uses
  %i.ti = getelementptr inbounds nuw [4 x i8], ptr %i.oy, i64 %indvars.iv.next83.i.1
  %i.tj = load i32, ptr %i.ti, align 4, !tbaa !3
  %i.tk = mul nuw nsw i64 %indvars.iv.next83.i.1, %2
  %i.tl = getelementptr inbounds nuw [4 x i8], ptr %.3136, i64 %i.tk
  store i32 %i.tj, ptr %i.tl, align 4, !tbaa !3
  %indvars.iv.next83.i.2 = add nuw nsw i64 %indvars.iv82.i, 3 ; 2 uses
  %i.tm = getelementptr inbounds nuw [4 x i8], ptr %i.oy, i64 %indvars.iv.next83.i.2
  %i.tn = load i32, ptr %i.tm, align 4, !tbaa !3
  %i.to = mul nuw nsw i64 %indvars.iv.next83.i.2, %2
  %i.tp = getelementptr inbounds nuw [4 x i8], ptr %.3136, i64 %i.to
  store i32 %i.tn, ptr %i.tp, align 4, !tbaa !3
  %indvars.iv.next83.i.3 = add nuw nsw i64 %indvars.iv82.i, 4 ; 2 uses
  %exitcond86.not.i.3 = icmp eq i64 %indvars.iv.next83.i.3, %i.pr
  br i1 %exitcond86.not.i.3, label %opj_idwt3_v_cas1.exit, label %scalar.ph203, !llvm.loop !377

opj_idwt3_v_cas1.exit:                            ; preds = %scalar.ph203.prol.loopexit, %scalar.ph203, %middle.block213
  %i.tq = add nuw nsw i32 %.0137, 1               ; 2 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %.3136, i64 4
  %exitcond162.not = icmp eq i32 %i.tq, %3
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond162.not, label %opj_idwt53_v_cas0_mcols_SSE2_OR_AVX2.exit, label %bb.t, !llvm.loop !378

opj_idwt53_v_cas0_mcols_SSE2_OR_AVX2.exit.loopexit.unr-lcssa: ; preds = %bb.f
  %lcmp.mod340.not = icmp eq i64 %xtraiter339, 0
  br i1 %lcmp.mod340.not, label %opj_idwt53_v_cas0_mcols_SSE2_OR_AVX2.exit, label %.epil.preheader338

.epil.preheader338:                               ; preds = %opj_idwt53_v_cas0_mcols_SSE2_OR_AVX2.exit.loopexit.unr-lcssa
  %lcmp.mod341 = trunc i32 %i.f to i1
  tail call void @llvm.assume(i1 %lcmp.mod341)
  %i.ts = mul nuw nsw i64 %indvars.iv.next.i.i.1, %2
  %i.tt = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ts ; 2 uses
  %.idx.i.i.epil = shl nuw nsw i64 %indvars.iv.next.i.i.1, 5
  %i.tu = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx.i.i.epil ; 2 uses
  %i.tv = load <2 x i64>, ptr %i.tu, align 16, !tbaa !62
  store <2 x i64> %i.tv, ptr %i.tt, align 1, !tbaa !62
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tt, i64 16
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tu, i64 16
  %i.ty = load <2 x i64>, ptr %i.tx, align 16, !tbaa !62
  store <2 x i64> %i.ty, ptr %i.tw, align 1, !tbaa !62
  br label %opj_idwt53_v_cas0_mcols_SSE2_OR_AVX2.exit

opj_idwt53_v_cas0_mcols_SSE2_OR_AVX2.exit.loopexit318.unr-lcssa: ; preds = %bb.r
  %lcmp.mod332.not = icmp eq i64 %xtraiter331, 0
  br i1 %lcmp.mod332.not, label %opj_idwt53_v_cas0_mcols_SSE2_OR_AVX2.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %opj_idwt53_v_cas0_mcols_SSE2_OR_AVX2.exit.loopexit318.unr-lcssa
  %lcmp.mod333 = trunc i32 %i.f to i1
  tail call void @llvm.assume(i1 %lcmp.mod333)
  %i.tz = mul nuw nsw i64 %indvars.iv.next.i.i92.1, %2
  %i.ua = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.tz ; 2 uses
  %.idx.i.i91.epil = shl nuw nsw i64 %indvars.iv.next.i.i92.1, 5
  %i.ub = getelementptr inbounds nuw i8, ptr %i.jw, i64 %.idx.i.i91.epil ; 2 uses
  %i.uc = load <2 x i64>, ptr %i.ub, align 16, !tbaa !62
  store <2 x i64> %i.uc, ptr %i.ua, align 1, !tbaa !62
  %i.ud = getelementptr inbounds nuw i8, ptr %i.ua, i64 16
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ub, i64 16
  %i.uf = load <2 x i64>, ptr %i.ue, align 16, !tbaa !62
  store <2 x i64> %i.uf, ptr %i.ud, align 1, !tbaa !62
  br label %opj_idwt53_v_cas0_mcols_SSE2_OR_AVX2.exit

opj_idwt53_v_cas0_mcols_SSE2_OR_AVX2.exit:        ; preds = %bb.m, %.lr.ph135, %opj_idwt3_v_cas1.exit, %.epil.preheader, %opj_idwt53_v_cas0_mcols_SSE2_OR_AVX2.exit.loopexit318.unr-lcssa, %opj_idwt3_v_cas0.exit, %.epil.preheader338, %opj_idwt53_v_cas0_mcols_SSE2_OR_AVX2.exit.loopexit.unr-lcssa, %middle.block, %bb.l, %.preheader116, %bb.g, %bb.s
  ret void
}

end_hunk_2
