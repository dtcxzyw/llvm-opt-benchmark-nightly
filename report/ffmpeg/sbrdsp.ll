Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/sbrdsp?download=true
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 10
begin_hunk_0_@sbr_hf_gen_c:bb.a
.lr.ph:                                           ; preds = %bb.a
  %i.n = fneg nsz float %i.g                      ; 2 uses
  %i.o = sext i32 %5 to i64                       ; 9 uses
  %wide.trip.count = sext i32 %6 to i64           ; 4 uses
  %i.p = sub nsw i64 %wide.trip.count, %i.o       ; 3 uses
  %min.iters.check = icmp ult i64 %i.p, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph
  %i.q = xor i64 %i.o, -1
  %i.r = add nsw i64 %i.q, %wide.trip.count       ; 2 uses
  %i.s = shl nsw i64 %i.o, 3                      ; 5 uses
  %i.t = getelementptr i8, ptr %1, i64 %i.s
  %scevgep = getelementptr i8, ptr %i.t, i64 -16  ; 2 uses
  %mul.result = shl nsw i64 %i.r, 3               ; 5 uses
  %mul.overflow = icmp ugt i64 %i.r, 2305843009213693951
  %i.u = getelementptr i8, ptr %scevgep, i64 %mul.result
  %i.v = icmp ult ptr %i.u, %scevgep
  %i.w = getelementptr i8, ptr %1, i64 %i.s
  %scevgep44 = getelementptr i8, ptr %i.w, i64 -12 ; 2 uses
  %i.x = getelementptr i8, ptr %scevgep44, i64 %mul.result
  %i.y = icmp ult ptr %i.x, %scevgep44
  %i.z = getelementptr i8, ptr %1, i64 %i.s
  %scevgep45 = getelementptr i8, ptr %i.z, i64 -8 ; 2 uses
  %i.aa = getelementptr i8, ptr %scevgep45, i64 %mul.result
  %i.ab = icmp ult ptr %i.aa, %scevgep45
  %i.ac = or i1 %i.ab, %mul.overflow
  %i.ad = getelementptr i8, ptr %1, i64 %i.s
  %scevgep46 = getelementptr i8, ptr %i.ad, i64 -4 ; 2 uses
  %i.ae = getelementptr i8, ptr %scevgep46, i64 %mul.result
  %i.af = icmp ult ptr %i.ae, %scevgep46
  %scevgep47 = getelementptr i8, ptr %1, i64 %i.s ; 2 uses
  %i.ag = getelementptr i8, ptr %scevgep47, i64 %mul.result
  %i.ah = icmp ult ptr %i.ag, %scevgep47
  %i.ai = or i1 %i.y, %i.v
  %i.aj = or i1 %i.ai, %i.ac
  %i.ak = or i1 %i.af, %i.aj
  %i.al = or i1 %i.ah, %i.ak
  br i1 %i.al, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.am = shl nsw i64 %i.o, 3                     ; 2 uses
  %scevgep48 = getelementptr i8, ptr %0, i64 %i.am
  %i.an = shl nsw i64 %wide.trip.count, 3         ; 2 uses
  %scevgep49 = getelementptr i8, ptr %0, i64 %i.an
  %i.ao = getelementptr i8, ptr %1, i64 %i.am
  %scevgep50 = getelementptr i8, ptr %i.ao, i64 -16
  %scevgep51 = getelementptr i8, ptr %1, i64 %i.an
  %bound0 = icmp ult ptr %scevgep48, %scevgep51
  %bound1 = icmp ult ptr %scevgep50, %scevgep49
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.p, -4                       ; 3 uses
  %i.ap = add nsw i64 %n.vec, %i.o
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.n, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert52 = insertelement <4 x float> poison, float %i.c, i64 0
  %broadcast.splat53 = shufflevector <4 x float> %broadcast.splatinsert52, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert54 = insertelement <4 x float> poison, float %i.i, i64 0
  %broadcast.splat55 = shufflevector <4 x float> %broadcast.splatinsert54, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert56 = insertelement <4 x float> poison, float %i.l, i64 0
  %broadcast.splat57 = shufflevector <4 x float> %broadcast.splatinsert56, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert58 = insertelement <4 x float> poison, float %i.g, i64 0
  %broadcast.splat59 = shufflevector <4 x float> %broadcast.splatinsert58, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aq = add i64 %index, %i.o                    ; 2 uses
  %i.ar = getelementptr [8 x i8], ptr %1, i64 %i.aq ; 3 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 -16    ; 2 uses
  %wide.vec = load <8 x float>, ptr %i.as, align 4, !tbaa !11, !alias.scope !40 ; 2 uses
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec60 = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.at = fmul nsz <4 x float> %strided.vec60, %broadcast.splat
  %i.au = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %strided.vec, <4 x float> %broadcast.splat53, <4 x float> %i.at)
  %i.av = getelementptr i8, ptr %i.ar, i64 -8     ; 2 uses
  %wide.vec61 = load <8 x float>, ptr %i.av, align 4, !tbaa !11, !alias.scope !40 ; 2 uses
  %strided.vec62 = shufflevector <8 x float> %wide.vec61, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.aw = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %strided.vec62, <4 x float> %broadcast.splat55, <4 x float> %i.au)
  %i.ax = fneg nsz <8 x float> %wide.vec61
  %i.ay = shufflevector <8 x float> %i.ax, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.az = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ay, <4 x float> %broadcast.splat57, <4 x float> %i.aw)
  %wide.vec64 = load <8 x float>, ptr %i.ar, align 4, !tbaa !11, !alias.scope !40 ; 2 uses
  %strided.vec65 = shufflevector <8 x float> %wide.vec64, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec66 = shufflevector <8 x float> %wide.vec64, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ba = fadd nsz <4 x float> %strided.vec65, %i.az
  %i.bb = getelementptr inbounds [8 x i8], ptr %0, i64 %i.aq
  %wide.vec67 = load <8 x float>, ptr %i.as, align 4, !tbaa !11, !alias.scope !40 ; 2 uses
  %strided.vec68 = shufflevector <8 x float> %wide.vec67, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec69 = shufflevector <8 x float> %wide.vec67, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.bc = fmul nsz <4 x float> %broadcast.splat59, %strided.vec68
  %i.bd = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %strided.vec69, <4 x float> %broadcast.splat53, <4 x float> %i.bc)
  %wide.vec70 = load <8 x float>, ptr %i.av, align 4, !tbaa !11, !alias.scope !40 ; 2 uses
  %strided.vec71 = shufflevector <8 x float> %wide.vec70, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec72 = shufflevector <8 x float> %wide.vec70, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.be = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %strided.vec72, <4 x float> %broadcast.splat55, <4 x float> %i.bd)
  %i.bf = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %strided.vec71, <4 x float> %broadcast.splat57, <4 x float> %i.be)
  %i.bg = fadd nsz <4 x float> %strided.vec66, %i.bf
  %interleaved.vec = shufflevector <4 x float> %i.ba, <4 x float> %i.bg, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec, ptr %i.bb, align 4, !tbaa !11, !alias.scope !41, !noalias !40
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bh = icmp eq i64 %index.next, %n.vec
  br i1 %i.bh, label %middle.block, label %vector.body, !llvm.loop !38

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %i.o, %vector.memcheck ], [ %i.o, %vector.scevcheck ], [ %i.o, %.lr.ph ], [ %i.ap, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.bi = getelementptr [8 x i8], ptr %1, i64 %indvars.iv ; 6 uses
  %i.bj = getelementptr i8, ptr %i.bi, i64 -16    ; 2 uses
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !11
  %i.bl = getelementptr i8, ptr %i.bi, i64 -12    ; 2 uses
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !11
  %i.bn = fmul nsz float %i.bm, %i.n
  %i.bo = tail call nsz float @llvm.fmuladd.f32(float %i.bk, float %i.c, float %i.bn)
  %i.bp = getelementptr i8, ptr %i.bi, i64 -8     ; 2 uses
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !11
  %i.br = tail call nsz float @llvm.fmuladd.f32(float %i.bq, float %i.i, float %i.bo)
  %i.bs = getelementptr i8, ptr %i.bi, i64 -4     ; 2 uses
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !11
  %i.bu = fneg nsz float %i.bt
  %i.bv = tail call nsz float @llvm.fmuladd.f32(float %i.bu, float %i.l, float %i.br)
  %i.bw = load float, ptr %i.bi, align 4, !tbaa !11
  %i.bx = fadd nsz float %i.bw, %i.bv
  %i.by = getelementptr inbounds [8 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  store float %i.bx, ptr %i.by, align 4, !tbaa !11
  %i.bz = load float, ptr %i.bl, align 4, !tbaa !11
  %i.ca = load float, ptr %i.bj, align 4, !tbaa !11
  %i.cb = fmul nsz float %i.g, %i.ca
  %i.cc = tail call nsz float @llvm.fmuladd.f32(float %i.bz, float %i.c, float %i.cb)
  %i.cd = load float, ptr %i.bs, align 4, !tbaa !11
  %i.ce = tail call nsz float @llvm.fmuladd.f32(float %i.cd, float %i.i, float %i.cc)
  %i.cf = load float, ptr %i.bp, align 4, !tbaa !11
  %i.cg = tail call nsz float @llvm.fmuladd.f32(float %i.cf, float %i.l, float %i.ce)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !11
  %i.cj = fadd nsz float %i.ci, %i.cg
  %i.ck = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  store float %i.cj, ptr %i.ck, align 4, !tbaa !11
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !39

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @sbr_hf_g_filt_c(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i64 noundef %4) #1 {
bb.a:
  %invariant.gep = getelementptr [8 x i8], ptr %1, i64 %4 ; 6 uses
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %3 to i64      ; 8 uses
  %min.iters.check = icmp ult i32 %3, 12
  br i1 %min.iters.check, label %.lr.ph.preheader24, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.b = shl nuw nsw i64 %wide.trip.count, 3
  %scevgep = getelementptr i8, ptr %0, i64 %i.b   ; 2 uses
  %i.c = mul nuw nsw i64 %wide.trip.count, 320
  %i.d = shl i64 %4, 3
  %i.e = getelementptr i8, ptr %1, i64 %i.c
  %i.f = getelementptr i8, ptr %i.e, i64 %i.d
  %scevgep18 = getelementptr i8, ptr %i.f, i64 -312
  %i.g = shl nuw nsw i64 %wide.trip.count, 2
  %scevgep19 = getelementptr i8, ptr %2, i64 %i.g
  %bound0 = icmp ult ptr %0, %scevgep18
  %bound1 = icmp ult ptr %invariant.gep, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound020 = icmp ult ptr %0, %scevgep19
  %bound121 = icmp ult ptr %2, %scevgep
  %found.conflict22 = and i1 %bound020, %bound121
  %conflict.rdx = or i1 %found.conflict, %found.conflict22
  br i1 %conflict.rdx, label %.lr.ph.preheader24, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483646   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.h = getelementptr [320 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.i = getelementptr [320 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 320
  %i.k = load float, ptr %i.h, align 4, !tbaa !11, !alias.scope !48
  %i.l = load float, ptr %i.j, align 4, !tbaa !11, !alias.scope !48
  %i.m = insertelement <2 x float> poison, float %i.k, i64 0
  %i.n = insertelement <2 x float> %i.m, float %i.l, i64 1
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index
  %wide.load = load <2 x float>, ptr %i.o, align 4, !tbaa !11, !alias.scope !49
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.r = getelementptr i8, ptr %i.i, i64 324
  %i.s = load float, ptr %i.q, align 4, !tbaa !11, !alias.scope !48
  %i.t = load float, ptr %i.r, align 4, !tbaa !11, !alias.scope !48
  %i.u = insertelement <2 x float> poison, float %i.s, i64 0
  %i.v = insertelement <2 x float> %i.u, float %i.t, i64 1
  %i.w = shufflevector <2 x float> %i.n, <2 x float> %i.v, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %5 = shufflevector <2 x float> %wide.load, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %interleaved.vec = fmul nsz <4 x float> %i.w, %5
  store <4 x float> %interleaved.vec, ptr %i.p, align 4, !tbaa !11, !alias.scope !50, !noalias !51
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !46

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader24

.lr.ph.preheader24:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 6 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader24
  %gep.prol = getelementptr [320 x i8], ptr %invariant.gep, i64 %indvars.iv.ph ; 2 uses
  %i.y = load float, ptr %gep.prol, align 4, !tbaa !11
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.ph ; 2 uses
  %i.aa = load float, ptr %i.z, align 4, !tbaa !11
  %i.ab = fmul nsz float %i.y, %i.aa
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.ph ; 2 uses
  store float %i.ab, ptr %i.ac, align 4, !tbaa !11
  %i.ad = getelementptr inbounds nuw i8, ptr %gep.prol, i64 4
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !11
  %i.af = load float, ptr %i.z, align 4, !tbaa !11
  %i.ag = fmul nsz float %i.ae, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  store float %i.ag, ptr %i.ah, align 4, !tbaa !11
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader24
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader24 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.ai = add nsw i64 %wide.trip.count, -1
  %i.aj = icmp eq i64 %indvars.iv.ph, %i.ai
  br i1 %i.aj, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %gep = getelementptr [320 x i8], ptr %invariant.gep, i64 %indvars.iv ; 2 uses
  %i.ak = load float, ptr %gep, align 4, !tbaa !11
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.am = load float, ptr %i.al, align 4, !tbaa !11
  %i.an = fmul nsz float %i.ak, %i.am
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  store float %i.an, ptr %i.ao, align 4, !tbaa !11
  %i.ap = getelementptr inbounds nuw i8, ptr %gep, i64 4
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !11
  %i.ar = load float, ptr %i.al, align 4, !tbaa !11
  %i.as = fmul nsz float %i.aq, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  store float %i.as, ptr %i.at, align 4, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %gep.1 = getelementptr [320 x i8], ptr %invariant.gep, i64 %indvars.iv.next ; 2 uses
  %i.au = load float, ptr %gep.1, align 4, !tbaa !11
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next ; 2 uses
  %i.aw = load float, ptr %i.av, align 4, !tbaa !11
  %i.ax = fmul nsz float %i.au, %i.aw
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next ; 2 uses
  store float %i.ax, ptr %i.ay, align 4, !tbaa !11
  %i.az = getelementptr inbounds nuw i8, ptr %gep.1, i64 4
  %i.ba = load float, ptr %i.az, align 4, !tbaa !11
  %i.bb = load float, ptr %i.av, align 4, !tbaa !11
  %i.bc = fmul nsz float %i.ba, %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  store float %i.bc, ptr %i.bd, align 4, !tbaa !11
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !47

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @sbr_hf_apply_noise_0(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 %4, i32 noundef %5) #1 {
bb.a:
  %i.a = icmp sgt i32 %5, 0
  br i1 %i.a, label %.lr.ph.preheader, label %sbr_hf_apply_noise.exit

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %5 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.d ] ; 4 uses
  %.034.i5 = phi i32 [ %3, %.lr.ph.preheader ], [ %i.e, %bb.d ]
  %.035.i4 = phi float [ 0.000000e+00, %.lr.ph.preheader ], [ %i.x, %bb.d ] ; 2 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.c = load <2 x float>, ptr %i.b, align 4, !tbaa !11 ; 3 uses
  %i.d = add nsw i32 %.034.i5, 1
  %i.e = and i32 %i.d, 511                        ; 2 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.g = load float, ptr %i.f, align 4, !tbaa !11 ; 3 uses
  %i.h = fcmp nsz une float %i.g, 0.000000e+00
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.i = extractelement <2 x float> %i.c, i64 0
  %i.j = fadd nsz float %i.i, %i.g
  %i.k = extractelement <2 x float> %i.c, i64 1
  %i.l = tail call nsz float @llvm.fmuladd.f32(float %i.g, float %.035.i4, float %i.k)
  %i.m = insertelement <2 x float> poison, float %i.j, i64 0
  %i.n = insertelement <2 x float> %i.m, float %i.l, i64 1
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.p = load float, ptr %i.o, align 4, !tbaa !11
  %i.q = zext nneg i32 %i.e to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr @ff_sbr_noise_table, i64 %i.q
  %i.s = load <2 x float>, ptr %i.r, align 8, !tbaa !11
  %i.t = insertelement <2 x float> poison, float %i.p, i64 0
  %i.u = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> zeroinitializer
  %i.v = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.u, <2 x float> %i.s, <2 x float> %i.c)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.w = phi <2 x float> [ %i.n, %bb.b ], [ %i.v, %bb.c ]
  store <2 x float> %i.w, ptr %i.b, align 4, !tbaa !11
  %i.x = fneg nsz float %.035.i4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %sbr_hf_apply_noise.exit, label %.lr.ph, !llvm.loop !0

sbr_hf_apply_noise.exit:                          ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @sbr_hf_apply_noise_1(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #1 {
bb.a:
  %i.a = icmp sgt i32 %5, 0
  br i1 %i.a, label %.lr.ph.preheader, label %sbr_hf_apply_noise.exit

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = shl i32 %4, 1
  %i.c = and i32 %i.b, 2
  %i.d = sub nsw i32 1, %i.c
  %i.e = sitofp nsz i32 %i.d to float
  %wide.trip.count = zext nneg i32 %5 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.d ] ; 4 uses
  %.034.i7 = phi i32 [ %3, %.lr.ph.preheader ], [ %i.i, %bb.d ]
  %.035.i6 = phi float [ %i.e, %.lr.ph.preheader ], [ %i.z, %bb.d ] ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.g = load <2 x float>, ptr %i.f, align 4, !tbaa !11 ; 2 uses
  %i.h = add nsw i32 %.034.i7, 1
  %i.i = and i32 %i.h, 511                        ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.k = load float, ptr %i.j, align 4, !tbaa !11 ; 2 uses
  %i.l = fcmp nsz une float %i.k, 0.000000e+00
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.m = insertelement <2 x float> poison, float %i.k, i64 0
  %i.n = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> zeroinitializer
  %i.o = insertelement <2 x float> <float 0.000000e+00, float poison>, float %.035.i6, i64 1
  %i.p = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.n, <2 x float> %i.o, <2 x float> %i.g)
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.r = load float, ptr %i.q, align 4, !tbaa !11
  %i.s = zext nneg i32 %i.i to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr @ff_sbr_noise_table, i64 %i.s
  %i.u = load <2 x float>, ptr %i.t, align 8, !tbaa !11
  %i.v = insertelement <2 x float> poison, float %i.r, i64 0
  %i.w = shufflevector <2 x float> %i.v, <2 x float> poison, <2 x i32> zeroinitializer
  %i.x = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.w, <2 x float> %i.u, <2 x float> %i.g)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.y = phi <2 x float> [ %i.p, %bb.b ], [ %i.x, %bb.c ]
  store <2 x float> %i.y, ptr %i.f, align 4, !tbaa !11
  %i.z = fneg nsz float %.035.i6
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %sbr_hf_apply_noise.exit, label %.lr.ph, !llvm.loop !0

sbr_hf_apply_noise.exit:                          ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @sbr_hf_apply_noise_2(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 %4, i32 noundef %5) #1 {
bb.a:
  %i.a = icmp sgt i32 %5, 0
  br i1 %i.a, label %.lr.ph.preheader, label %sbr_hf_apply_noise.exit

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %5 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.d ] ; 4 uses
end_hunk_0
