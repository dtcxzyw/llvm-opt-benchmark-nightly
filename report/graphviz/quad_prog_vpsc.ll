Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/quad_prog_vpsc?download=true
inline.NumInlined: 24
inline.NumDeleted: 6
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@get_num_digcola_constraints:bb.a
  %i.p = add i32 %i.o, %i.g
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.s = load i32, ptr %i.r, align 8, !tbaa !54   ; 2 uses
  %i.t = add i32 %i.s, %i.p
  %i.u = add i32 %i.t, %i.n
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  %i.x = load i32, ptr %i.w, align 8, !tbaa !54
  %i.y = add i32 %i.x, %i.u
  %i.z = add i32 %i.y, %i.s                       ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !0

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %.015.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %i.z, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod18 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod18)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %.015.epil = phi i32 [ %.015.epil.init, %.lr.ph.epil.preheader ], [ %i.ag, %.lr.ph.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv.epil ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !54
  %i.ad = getelementptr i8, ptr %i.aa, i64 -8
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !54
  %i.af = add i32 %i.ac, %.015.epil
  %i.ag = add i32 %i.af, %i.ae                    ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !111

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.z, %._crit_edge.loopexit.unr-lcssa ], [ %i.ag, %.lr.ph.epil ]
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !54
  %i.aj = sext i32 %1 to i64
  %i.ak = getelementptr [16 x i8], ptr %0, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.ak, i64 -8
  %i.am = load i32, ptr %i.al, align 8, !tbaa !54
  %i.an = add i32 %i.ai, %.0.lcssa
  %i.ao = add i32 %i.an, %i.am
  ret i32 %i.ao
}

declare void @deleteConstraints(i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @newIncVPSC(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare hidden ptr @unpackMatrix(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @deleteCMajEnvVPSC(ptr noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !30     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31
  tail call void @free(ptr noundef %i.b) #12
  %i.c = load ptr, ptr %0, align 8, !tbaa !30
  tail call void @free(ptr noundef %i.c) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !22
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !29
  tail call void @deleteVPSC(ptr noundef %i.h) #12
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !57   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !47   ; 3 uses
  %.not24 = icmp eq ptr %i.j, %i.l
  %.not25 = icmp eq ptr %i.l, null
  %or.cond = or i1 %.not24, %.not25
  br i1 %or.cond, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @deleteConstraints(i32 noundef 0, ptr noundef nonnull %i.l) #12
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !57
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.m = phi ptr [ %.pre, %bb.e ], [ %i.j, %bb.d ]
  %i.n = load i32, ptr %i.d, align 8, !tbaa !22
  tail call void @deleteConstraints(i32 noundef %i.n, ptr noundef %i.m) #12
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.r = load i32, ptr %i.o, align 8, !tbaa !17
  %i.s = load i32, ptr %i.p, align 4, !tbaa !18
  %i.t = add nsw i32 %i.s, %i.r
  %i.u = load i32, ptr %i.q, align 8, !tbaa !52
  %i.v = add nsw i32 %i.t, %i.u
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !23
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !25
  tail call void @deleteVariable(ptr noundef %i.aa) #12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ab = load i32, ptr %i.o, align 8, !tbaa !17
  %i.ac = load i32, ptr %i.p, align 4, !tbaa !18
  %i.ad = add nsw i32 %i.ac, %i.ab
  %i.ae = load i32, ptr %i.q, align 8, !tbaa !52
  %i.af = add nsw i32 %i.ad, %i.ae
  %i.ag = sext i32 %i.af to i64
  %i.ah = icmp slt i64 %indvars.iv.next, %i.ag
  br i1 %i.ah, label %bb.g, label %._crit_edge, !llvm.loop !112

._crit_edge:                                      ; preds = %bb.g, %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !23
  tail call void @free(ptr noundef %i.aj) #12
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !19
  tail call void @free(ptr noundef %i.al) #12
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !20
  tail call void @free(ptr noundef %i.an) #12
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !21
  tail call void @free(ptr noundef %i.ap) #12
  tail call void @free(ptr noundef nonnull %0) #12
  ret void
}

declare void @deleteVPSC(ptr noundef) local_unnamed_addr #2

declare void @deleteVariable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @generateNonoverlapConstraints(ptr nofree noundef captures(none) %0, float noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i1 noundef zeroext %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !18
  %i.f = add nsw i32 %i.e, %i.c                   ; 6 uses
  %i.g = sext i32 %i.f to i64                     ; 3 uses
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %.thread.i, label %bb.b

.thread.i:                                        ; preds = %bb.a
  %i.h = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 32) #13
  br label %gv_calloc.exit

bb.b:                                             ; preds = %bb.a
  %mul.ov.i = icmp slt i32 %i.f, 0
  br i1 %mul.ov.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr @stderr, align 8, !tbaa !36
  %i.j = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.i, ptr noundef nonnull @.str.4, i64 noundef range(i64 -2147483648, 2147483648) %i.g, i64 noundef 32) #14 ; 0 uses
  tail call fastcc void @graphviz_exit() #15
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.k = tail call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2147483648) %i.g, i64 noundef 32) #13 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %gv_calloc.exit

bb.e:                                             ; preds = %bb.d
  %i.m = load ptr, ptr @stderr, align 8, !tbaa !36
  %i.n = shl nuw nsw i64 %i.g, 5
  %i.o = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.m, ptr noundef nonnull @.str.5, i64 noundef %i.n) #14 ; 0 uses
  tail call fastcc void @graphviz_exit() #15
  unreachable

gv_calloc.exit:                                   ; preds = %.thread.i, %bb.d
  %i.p = phi ptr [ %i.h, %.thread.i ], [ %i.k, %bb.d ] ; 9 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 52 ; 6 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !44   ; 3 uses
  %i.s = icmp sgt i32 %i.r, 0
  %i.t = tail call i32 @llvm.smax.i32(i32 %i.r, i32 0)
  %i.u = shl nuw i32 %i.t, 1
  %.0317 = sub nsw i32 %i.f, %i.u                 ; 5 uses
  %i.v = icmp eq i32 %3, 0                        ; 5 uses
  %i.w = icmp sgt i32 %.0317, 0
  br i1 %i.w, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %gv_calloc.exit
  %i.x = fmul float %1, 1.000100e+00
  %.0315 = select i1 %i.v, float %i.x, float %1
  %i.y = load ptr, ptr %2, align 8, !tbaa !31     ; 2 uses
  %i.z = fpext float %.0315 to double             ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !126 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !31 ; 2 uses
  %i.af = load <2 x double>, ptr %i.ac, align 8, !tbaa !127
  %i.ag = fmul <2 x double> %i.af, splat (double 5.000000e-01) ; 4 uses
  %wide.trip.count = zext nneg i32 %.0317 to i64  ; 3 uses
  %min.iters.check = icmp eq i32 %.0317, 1
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 2147483646   ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.z, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splat546 = shufflevector <2 x double> %i.ag, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splat548 = shufflevector <2 x double> %i.ag, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %index
  %wide.load = load <2 x float>, ptr %i.ah, align 4, !tbaa !27
  %i.ai = fpext <2 x float> %wide.load to <2 x double> ; 2 uses
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.ab, i64 %index
  %wide.vec = load <4 x double>, ptr %i.aj, align 8, !tbaa !127 ; 2 uses
  %strided.vec = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec549 = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.ak = fmul <2 x double> %strided.vec, %broadcast.splat
  %i.al = fmul <2 x double> %i.ak, splat (double 5.000000e-01) ; 2 uses
  %i.am = fsub <2 x double> %i.ai, %i.al
  %i.an = fsub <2 x double> %i.am, %broadcast.splat546
  %i.ao = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %index
  %i.ap = fadd <2 x double> %i.al, %i.ai
  %i.aq = fadd <2 x double> %broadcast.splat546, %i.ap
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %index
  %wide.load550 = load <2 x float>, ptr %i.ar, align 4, !tbaa !27
  %i.as = fpext <2 x float> %wide.load550 to <2 x double> ; 2 uses
  %i.at = fmul <2 x double> %strided.vec549, %broadcast.splat
  %i.au = fmul <2 x double> %i.at, splat (double 5.000000e-01) ; 2 uses
  %i.av = fsub <2 x double> %i.as, %i.au
  %i.aw = fsub <2 x double> %i.av, %broadcast.splat548
  %i.ax = fadd <2 x double> %i.au, %i.as
  %i.ay = fadd <2 x double> %broadcast.splat548, %i.ax
  %i.az = shufflevector <2 x double> %i.an, <2 x double> %i.aw, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ba = shufflevector <2 x double> %i.aq, <2 x double> %i.ay, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %interleaved.vec = shufflevector <4 x double> %i.az, <4 x double> %i.ba, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  store <8 x double> %interleaved.vec, ptr %i.ao, align 8, !tbaa !127
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !113

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %i.bc = insertelement <2 x double> poison, double %i.z, i64 0
  %i.bd = shufflevector <2 x double> %i.bc, <2 x double> poison, <2 x i32> zeroinitializer
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 5 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv
  %i.bf = load float, ptr %i.be, align 4, !tbaa !27
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %i.ab, i64 %indvars.iv
  %i.bh = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %indvars.iv ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !27
  %i.bl = insertelement <2 x float> poison, float %i.bf, i64 0
  %i.bm = insertelement <2 x float> %i.bl, float %i.bk, i64 1
  %i.bn = fpext <2 x float> %i.bm to <2 x double> ; 2 uses
  %i.bo = load <2 x double>, ptr %i.bg, align 8, !tbaa !127
  %i.bp = fmul <2 x double> %i.bo, %i.bd
  %i.bq = fmul <2 x double> %i.bp, splat (double 5.000000e-01) ; 2 uses
  %i.br = fsub <2 x double> %i.bn, %i.bq
  %i.bs = fsub <2 x double> %i.br, %i.ag
  store <2 x double> %i.bs, ptr %i.bh, align 8, !tbaa !127
  %i.bt = fadd <2 x double> %i.bq, %i.bn
  %i.bu = fadd <2 x double> %i.ag, %i.bt
  store <2 x double> %i.bu, ptr %i.bi, align 8, !tbaa !127
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !114

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %gv_calloc.exit
  br i1 %i.s, label %bb.f, label %bb.af

bb.f:                                             ; preds = %._crit_edge
  %i.bv = add nuw nsw i32 %i.r, 1
  %i.bw = zext nneg i32 %i.bv to i64              ; 4 uses
  %i.bx = tail call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2147483648) %i.bw, i64 noundef 8) #13 ; 5 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %bb.g, label %gv_calloc.exit338

bb.g:                                             ; preds = %bb.f
  %i.bz = load ptr, ptr @stderr, align 8, !tbaa !36
  %i.ca = shl nuw nsw i64 %i.bw, 3
  %i.cb = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bz, ptr noundef nonnull @.str.5, i64 noundef %i.ca) #14 ; 0 uses
  tail call fastcc void @graphviz_exit() #15
  unreachable

gv_calloc.exit338:                                ; preds = %bb.f
  %i.cc = tail call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2147483648) %i.bw, i64 noundef 4) #13 ; 6 uses
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %bb.h, label %.lr.ph409

.lr.ph409:                                        ; preds = %gv_calloc.exit338
  %i.ce = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.cf = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.ci = sext i32 %.0317 to i64
  br label %bb.i

bb.h:                                             ; preds = %gv_calloc.exit338
  %i.cj = load ptr, ptr @stderr, align 8, !tbaa !36
  %i.ck = shl nuw nsw i64 %i.bw, 2
  %i.cl = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cj, ptr noundef nonnull @.str.5, i64 noundef %i.ck) #14 ; 0 uses
  tail call fastcc void @graphviz_exit() #15
  unreachable

bb.i:                                             ; preds = %.lr.ph409, %gv_calloc.exit343
  %indvars.iv455 = phi i64 [ 0, %.lr.ph409 ], [ %indvars.iv.next456, %gv_calloc.exit343 ] ; 7 uses
  %.0318408 = phi i32 [ 0, %.lr.ph409 ], [ %i.fm, %gv_calloc.exit343 ]
  %i.cm = load ptr, ptr %i.ce, align 8, !tbaa !55
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv455
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !48 ; 6 uses
  %i.cp = add nsw i32 %i.co, 2                    ; 4 uses
  %i.cq = sext i32 %i.cp to i64                   ; 5 uses
  %.not.i344 = icmp eq i32 %i.cp, 0
  br i1 %.not.i344, label %gv_calloc.exit353.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %mul.ov.i346 = icmp slt i32 %i.co, -2
  br i1 %mul.ov.i346, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cr = load ptr, ptr @stderr, align 8, !tbaa !36
  %i.cs = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cr, ptr noundef nonnull @.str.4, i64 noundef range(i64 -2147483648, 2147483648) %i.cq, i64 noundef 8) #14 ; 0 uses
  tail call fastcc void @graphviz_exit() #15
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ct = tail call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2147483648) %i.cq, i64 noundef 8) #13 ; 4 uses
  %i.cu = icmp eq ptr %i.ct, null
  br i1 %i.cu, label %bb.m, label %gv_calloc.exit348

bb.m:                                             ; preds = %bb.l
  %i.cv = load ptr, ptr @stderr, align 8, !tbaa !36
  %i.cw = shl nuw nsw i64 %i.cq, 3
  %i.cx = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cv, ptr noundef nonnull @.str.5, i64 noundef %i.cw) #14 ; 0 uses
  tail call fastcc void @graphviz_exit() #15
  unreachable

gv_calloc.exit353.thread:                         ; preds = %bb.i
  %i.cy = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 8) #13
  %i.cz = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 32) #13
  %.pre511 = load ptr, ptr %i.cg, align 8, !tbaa !23
  br label %._crit_edge403

gv_calloc.exit348:                                ; preds = %bb.l
  %i.da = tail call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2147483648) %i.cq, i64 noundef 32) #13 ; 4 uses
  %i.db = icmp eq ptr %i.da, null
  br i1 %i.db, label %bb.n, label %gv_calloc.exit353

bb.n:                                             ; preds = %gv_calloc.exit348
  %i.dc = load ptr, ptr @stderr, align 8, !tbaa !36
  %i.dd = shl nuw nsw i64 %i.cq, 5
  %i.de = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dc, ptr noundef nonnull @.str.5, i64 noundef %i.dd) #14 ; 0 uses
  tail call fastcc void @graphviz_exit() #15
  unreachable

gv_calloc.exit353:                                ; preds = %gv_calloc.exit348
  %i.df = icmp sgt i32 %i.co, 0
  %.pre = load ptr, ptr %i.cg, align 8, !tbaa !23 ; 3 uses
  br i1 %i.df, label %.lr.ph402, label %._crit_edge403

.lr.ph402:                                        ; preds = %gv_calloc.exit353
  %i.dg = load ptr, ptr %i.cf, align 8, !tbaa !56
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %indvars.iv455
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !51
  %wide.trip.count453 = zext nneg i32 %i.co to i64
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph402, %bb.o
  %indvars.iv450 = phi i64 [ 0, %.lr.ph402 ], [ %indvars.iv.next451, %bb.o ] ; 4 uses
  %i.dj = phi <2 x double> [ splat (double f0xFFEFFFFFFFFFFFFF), %.lr.ph402 ], [ %i.dy, %bb.o ]
  %i.dk = phi <2 x double> [ splat (double f0x7FEFFFFFFFFFFFFF), %.lr.ph402 ], [ %i.dx, %bb.o ]
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %indvars.iv450
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !48
  %i.dn = sext i32 %i.dm to i64                   ; 2 uses
  %i.do = getelementptr inbounds [8 x i8], ptr %.pre, i64 %i.dn
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !25
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %indvars.iv450
  store ptr %i.dp, ptr %i.dq, align 8, !tbaa !25
  %i.dr = getelementptr inbounds [32 x i8], ptr %i.p, i64 %i.dn ; 2 uses
  %i.ds = getelementptr inbounds nuw [32 x i8], ptr %i.da, i64 %indvars.iv450 ; 2 uses
  %i.dt = load <2 x double>, ptr %i.dr, align 8, !tbaa !127 ; 2 uses
  store <2 x double> %i.dt, ptr %i.ds, align 8, !tbaa !127
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %i.dw = load <2 x double>, ptr %i.du, align 8, !tbaa !127 ; 2 uses
  store <2 x double> %i.dw, ptr %i.dv, align 8, !tbaa !127
  %i.dx = tail call nsz <2 x double> @llvm.minnum.v2f64(<2 x double> %i.dk, <2 x double> %i.dt) ; 2 uses
  %i.dy = tail call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %i.dj, <2 x double> %i.dw) ; 2 uses
  %indvars.iv.next451 = add nuw nsw i64 %indvars.iv450, 1 ; 2 uses
  %exitcond454.not = icmp eq i64 %indvars.iv.next451, %wide.trip.count453
  br i1 %exitcond454.not, label %._crit_edge403, label %bb.o, !llvm.loop !115

._crit_edge403:                                   ; preds = %bb.o, %gv_calloc.exit353.thread, %gv_calloc.exit353
  %.pre512 = phi ptr [ %.pre, %gv_calloc.exit353 ], [ %.pre511, %gv_calloc.exit353.thread ], [ %.pre, %bb.o ]
  %i.dz = phi ptr [ %i.da, %gv_calloc.exit353 ], [ %i.cz, %gv_calloc.exit353.thread ], [ %i.da, %bb.o ] ; 5 uses
  %i.ea = phi ptr [ %i.ct, %gv_calloc.exit353 ], [ %i.cy, %gv_calloc.exit353.thread ], [ %i.ct, %bb.o ] ; 5 uses
  %i.eb = phi <2 x double> [ splat (double f0xFFEFFFFFFFFFFFFF), %gv_calloc.exit353 ], [ splat (double f0xFFEFFFFFFFFFFFFF), %gv_calloc.exit353.thread ], [ %i.dy, %bb.o ] ; 2 uses
  %i.ec = phi <2 x double> [ splat (double f0x7FEFFFFFFFFFFFFF), %gv_calloc.exit353 ], [ splat (double f0x7FEFFFFFFFFFFFFF), %gv_calloc.exit353.thread ], [ %i.dx, %bb.o ] ; 2 uses
  %i.ed = load ptr, ptr %i.ch, align 8, !tbaa !128
  %i.ee = getelementptr inbounds nuw [32 x i8], ptr %i.ed, i64 %indvars.iv455 ; 4 uses
  %i.ef = extractelement <2 x double> %i.ec, i64 0 ; 4 uses
  store double %i.ef, ptr %i.ee, align 8, !tbaa !130
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.eh = extractelement <2 x double> %i.ec, i64 1 ; 4 uses
  store double %i.eh, ptr %i.eg, align 8, !tbaa !131
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.ej = extractelement <2 x double> %i.eb, i64 0 ; 4 uses
  store double %i.ej, ptr %i.ei, align 8, !tbaa !132
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ee, i64 24
  %i.el = extractelement <2 x double> %i.eb, i64 1 ; 4 uses
  store double %i.el, ptr %i.ek, align 8, !tbaa !133
  %.idx = shl i64 %indvars.iv455, 4
  %i.em = getelementptr i8, ptr %.pre512, i64 %.idx
  %i.en = getelementptr [8 x i8], ptr %i.em, i64 %i.ci ; 2 uses
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !25
  %i.ep = sext i32 %i.co to i64                   ; 2 uses
  %i.eq = getelementptr inbounds [8 x i8], ptr %i.ea, i64 %i.ep
  store ptr %i.eo, ptr %i.eq, align 8, !tbaa !25
  %i.er = getelementptr i8, ptr %i.en, i64 8
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !25
  %i.et = add nsw i32 %i.co, 1
  %i.eu = sext i32 %i.et to i64                   ; 2 uses
  %i.ev = getelementptr inbounds [8 x i8], ptr %i.ea, i64 %i.eu
  store ptr %i.es, ptr %i.ev, align 8, !tbaa !25
  %i.ew = getelementptr inbounds [32 x i8], ptr %i.dz, i64 %i.ep ; 4 uses
  store double %i.ef, ptr %i.ew, align 8, !tbaa !130
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  store double %i.eh, ptr %i.ex, align 8, !tbaa !131
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 16 ; 2 uses
  store double %i.ej, ptr %i.ey, align 8, !tbaa !132
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ew, i64 24 ; 2 uses
  store double %i.el, ptr %i.ez, align 8, !tbaa !133
  %i.fa = getelementptr inbounds [32 x i8], ptr %i.dz, i64 %i.eu ; 5 uses
  store double %i.ef, ptr %i.fa, align 8, !tbaa !130
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8 ; 2 uses
  store double %i.eh, ptr %i.fb, align 8, !tbaa !131
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  store double %i.ej, ptr %i.fc, align 8, !tbaa !132
end_hunk_0
begin_hunk_1_@removeoverlaps:bb.a
  %indvars.iv31 = phi i64 [ 0, %._crit_edge ], [ %indvars.iv.next32, %bb.c ] ; 3 uses
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !23
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv31
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !25
  %i.s = tail call double @getVariablePos(ptr noundef %i.r) #12
  %i.t = fptrunc double %i.s to float
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !31
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv31
  store float %i.t, ptr %i.v, align 4, !tbaa !27
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1 ; 2 uses
  %exitcond35.not = icmp eq i64 %indvars.iv.next32, %wide.trip.count34
  br i1 %exitcond35.not, label %._crit_edge29, label %bb.c, !llvm.loop !138

._crit_edge29.critedge:                           ; preds = %bb.a
  tail call void @generateNonoverlapConstraints(ptr noundef nonnull %i.a, float noundef 1.000000e+00, ptr noundef %1, i32 noundef 1, i1 noundef zeroext false, ptr noundef %2)
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !29
  tail call void @solveVPSC(ptr noundef %i.w) #12
  br label %._crit_edge29

._crit_edge29:                                    ; preds = %bb.c, %._crit_edge29.critedge
  tail call void @deleteCMajEnvVPSC(ptr noundef nonnull %i.a)
  ret void
}

declare void @solveVPSC(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold inlinehint nofree noreturn nounwind uwtable
define internal fastcc void @graphviz_exit() unnamed_addr #7 {
bb.a:
  tail call void @exit(i32 noundef 1) #17
  unreachable
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.maxnum.v2f64(<2 x double>, <2 x double>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.minnum.v2f64(<2 x double>, <2 x double>) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold inlinehint nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(0,1) }
attributes #14 = { cold nounwind }
attributes #15 = { noreturn }
attributes #16 = { cold }
attributes #17 = { cold noreturn nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !28}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"any p2 pointer", !9, i64 0}
!11 = !{!"p2 float", !10, i64 0}
!12 = !{!"p2 _ZTS8Variable", !10, i64 0}
!13 = !{!"p2 _ZTS10Constraint", !10, i64 0}
!14 = !{!"p1 _ZTS4VPSC", !9, i64 0}
!15 = !{!"p1 float", !9, i64 0}
!16 = !{!"CMajEnvVPSC", !11, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !12, i64 24, !6, i64 32, !6, i64 36, !13, i64 40, !13, i64 48, !14, i64 56, !15, i64 64, !15, i64 72, !15, i64 80}
!17 = !{!16, !6, i64 8}
!18 = !{!16, !6, i64 12}
!19 = !{!16, !15, i64 64}
!20 = !{!16, !15, i64 72}
!21 = !{!16, !15, i64 80}
!22 = !{!16, !6, i64 32}
!23 = !{!16, !12, i64 24}
!24 = !{!"p1 _ZTS8Variable", !9, i64 0}
!25 = !{!24, !24, i64 0}
!26 = !{!"float", !5, i64 0}
!27 = !{!26, !26, i64 0}
!28 = !{!"llvm.loop.mustprogress"}
!29 = !{!16, !14, i64 56}
!30 = !{!16, !11, i64 0}
!31 = !{!15, !15, i64 0}
!32 = !{!"llvm.loop.unroll.disable"}
!33 = !{!"llvm.loop.isvectorized", i32 1}
!34 = !{!"llvm.loop.unroll.runtime.disable"}
!35 = !{!"p1 _ZTS8_IO_FILE", !9, i64 0}
!36 = !{!35, !35, i64 0}
!37 = !{!"double", !5, i64 0}
!38 = !{!"pointf_s", !37, i64 0, !37, i64 8}
!39 = !{!"p1 _ZTS8pointf_s", !9, i64 0}
!40 = !{!"p1 int", !9, i64 0}
!41 = !{!"p2 int", !10, i64 0}
!42 = !{!"cluster_data", !6, i64 0, !6, i64 4, !40, i64 8, !41, i64 16, !6, i64 24, !40, i64 32, !9, i64 40}
!43 = !{!"ipsep_options", !6, i64 0, !37, i64 8, !6, i64 16, !38, i64 24, !39, i64 40, !42, i64 48}
!44 = !{!43, !6, i64 52}
!45 = !{!16, !6, i64 36}
!46 = !{!5, !5, i64 0}
!47 = !{!16, !13, i64 48}
!48 = !{!6, !6, i64 0}
!49 = !{!"p1 _ZTS10Constraint", !9, i64 0}
!50 = !{!49, !49, i64 0}
!51 = !{!40, !40, i64 0}
!52 = !{!16, !6, i64 16}
!53 = !{!"", !40, i64 0, !6, i64 8}
!54 = !{!53, !6, i64 8}
!55 = !{!43, !40, i64 56}
!56 = !{!43, !41, i64 64}
!57 = !{!16, !13, i64 40}
!58 = distinct !{!58, !28}
!59 = distinct !{!59, !28}
!60 = distinct !{!60, !28}
!61 = distinct !{!61, !28}
!62 = distinct !{!62, !28}
!63 = distinct !{!63, !32}
!64 = distinct !{!64, !28}
!65 = distinct !{!65, i1 false, !"LVerDomain"}
!66 = distinct !{!66, !65}
!67 = distinct !{!67, !65}
!68 = distinct !{!68, !28, !33, !34}
!69 = distinct !{!69, !28, !33}
!70 = distinct !{!70, !28}
!71 = distinct !{!71, !28}
!72 = distinct !{!72, !28, !33, !34}
!73 = distinct !{!73, !32}
!74 = distinct !{!74, !28, !33}
!75 = distinct !{!75, !28}
!76 = distinct !{!76, !32}
!77 = distinct !{!77, !28}
!78 = distinct !{!78, !28}
!79 = distinct !{!79, !28}
!80 = !{!66}
!81 = !{!67}
!82 = distinct !{!82, !28}
!83 = distinct !{!83, !28}
!84 = distinct !{!84, !28}
!85 = distinct !{!85, !28}
!86 = distinct !{!86, !28}
!87 = distinct !{!87, !28}
!88 = distinct !{!88, !32}
!89 = distinct !{!89, !28, !33, !34}
!90 = distinct !{!90, !32}
!91 = distinct !{!91, !28, !33}
!92 = distinct !{!92, !28}
!93 = distinct !{!93, !28}
!94 = distinct !{!94, !28}
!95 = distinct !{!95, !28}
!96 = distinct !{!96, !28}
!97 = distinct !{!97, !28, !33, !34}
!98 = distinct !{!98, !32}
!99 = distinct !{!99, !28, !33}
!100 = distinct !{!100, !28}
!101 = distinct !{!101, !28}
!102 = !{!"long", !5, i64 0}
!103 = !{!"p1 omnipotent char", !9, i64 0}
!104 = !{!"", !102, i64 0, !40, i64 8, !15, i64 16, !15, i64 24, !103, i64 32}
!105 = !{!104, !102, i64 0}
!106 = !{!104, !103, i64 32}
!107 = !{!104, !40, i64 8}
!108 = !{!43, !37, i64 8}
!109 = !{!53, !40, i64 0}
!110 = !{!43, !6, i64 48}
!111 = distinct !{!111, !32}
!112 = distinct !{!112, !28}
!113 = distinct !{!113, !28, !33, !34}
!114 = distinct !{!114, !28, !34, !33}
!115 = distinct !{!115, !28}
!116 = distinct !{!116, !28}
!117 = distinct !{!117, !28}
!118 = distinct !{!118, !28}
!119 = distinct !{!119, !28}
!120 = distinct !{!120, !28, !33, !34}
!121 = distinct !{!121, !32}
!122 = distinct !{!122, !28, !33}
!123 = distinct !{!123, !28}
!124 = distinct !{!124, !28}
!125 = distinct !{!125, !28}
!126 = !{!43, !39, i64 40}
!127 = !{!37, !37, i64 0}
!128 = !{!43, !9, i64 88}
!129 = !{!"", !38, i64 0, !38, i64 16}
!130 = !{!129, !37, i64 0}
!131 = !{!129, !37, i64 8}
!132 = !{!129, !37, i64 16}
!133 = !{!129, !37, i64 24}
!134 = !{!43, !6, i64 72}
!135 = !{!43, !40, i64 80}
!136 = !{!13, !13, i64 0}
!137 = distinct !{!137, !28}
!138 = distinct !{!138, !28}
end_hunk_1
