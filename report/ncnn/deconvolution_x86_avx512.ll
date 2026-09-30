Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/deconvolution_x86_avx512?download=true
inline.NumInlined: 20
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 96
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 115
begin_hunk_0_@_ZNK4ncnn24Deconvolution_x86_avx5127forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.2:bb.a
  %i.cg = load i32, ptr %i.w, align 8, !tbaa !48  ; 2 uses
  %i.ch = icmp sgt i32 %i.cg, 0
  br i1 %i.ch, label %.preheader63.lr.ph, label %_ZN4ncnn3MatD2Ev.exit

.preheader63.lr.ph:                               ; preds = %_ZN4ncnn3Mat4fillERKDv4_f.exit50
  %i.ci = mul i64 %i.at, %i.aw
  %i.cj = load i32, ptr %i.x, align 4, !tbaa !47  ; 3 uses
  %i.ck = icmp sgt i32 %i.cj, 0
  br i1 %i.ck, label %.preheader63, label %_ZN4ncnn3MatD2Ev.exit

.preheader63:                                     ; preds = %.preheader63.lr.ph, %._crit_edge83
  %i.cl = phi i32 [ %i.cr, %._crit_edge83 ], [ %i.cg, %.preheader63.lr.ph ] ; 2 uses
  %i.cm = phi i32 [ %i.cs, %._crit_edge83 ], [ %i.cj, %.preheader63.lr.ph ] ; 3 uses
  %i.cn = phi i32 [ %i.ct, %._crit_edge83 ], [ %i.cj, %.preheader63.lr.ph ] ; 3 uses
  %.04387 = phi i32 [ %i.cu, %._crit_edge83 ], [ 0, %.preheader63.lr.ph ] ; 2 uses
  %.04486 = phi ptr [ %.145.lcssa, %._crit_edge83 ], [ %i.am, %.preheader63.lr.ph ] ; 3 uses
  %i.co = icmp sgt i32 %i.cn, 0
  br i1 %i.co, label %.lr.ph82, label %._crit_edge83

.lr.ph82:                                         ; preds = %.preheader63
  %i.cp = load i32, ptr %7, align 4, !tbaa !63    ; 3 uses
  %i.cq = icmp sgt i32 %i.cp, 0
  br i1 %i.cq, label %.lr.ph82.split, label %._crit_edge83

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %._crit_edge83, %.preheader63.lr.ph, %_ZN4ncnn3Mat4fillERKDv4_f.exit50
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond99.not = icmp eq i32 %i.ac, %lftr.wideiv
  br i1 %exitcond99.not, label %._crit_edge92, label %.noexc47

._crit_edge83.loopexit:                           ; preds = %._crit_edge78
  %.pre101 = load i32, ptr %i.w, align 8, !tbaa !48
  br label %._crit_edge83

._crit_edge83:                                    ; preds = %.lr.ph82, %._crit_edge83.loopexit, %.preheader63
  %i.cr = phi i32 [ %i.cl, %.preheader63 ], [ %.pre101, %._crit_edge83.loopexit ], [ %i.cl, %.lr.ph82 ] ; 2 uses
  %i.cs = phi i32 [ %i.cm, %.preheader63 ], [ %i.dp, %._crit_edge83.loopexit ], [ %i.cm, %.lr.ph82 ]
  %i.ct = phi i32 [ %i.cn, %.preheader63 ], [ %i.dp, %._crit_edge83.loopexit ], [ %i.cn, %.lr.ph82 ]
  %.145.lcssa = phi ptr [ %.04486, %.preheader63 ], [ %.2.lcssa, %._crit_edge83.loopexit ], [ %.04486, %.lr.ph82 ]
  %i.cu = add nuw nsw i32 %.04387, 1              ; 2 uses
  %i.cv = icmp slt i32 %i.cu, %i.cr
  br i1 %i.cv, label %.preheader63, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !1259

.lr.ph82.split:                                   ; preds = %.lr.ph82, %._crit_edge78
  %i.cw = phi i32 [ %i.dp, %._crit_edge78 ], [ %i.cm, %.lr.ph82 ] ; 2 uses
  %i.cx = phi i32 [ %i.dq, %._crit_edge78 ], [ %i.cp, %.lr.ph82 ] ; 3 uses
  %i.cy = phi i32 [ %i.dr, %._crit_edge78 ], [ %i.cp, %.lr.ph82 ] ; 3 uses
  %.04281 = phi i32 [ %i.ds, %._crit_edge78 ], [ 0, %.lr.ph82 ] ; 2 uses
  %.14580 = phi ptr [ %.2.lcssa, %._crit_edge78 ], [ %.04486, %.lr.ph82 ] ; 3 uses
  %i.cz = icmp sgt i32 %i.cy, 0
  br i1 %i.cz, label %.preheader.lr.ph, label %._crit_edge78

.preheader.lr.ph:                                 ; preds = %.lr.ph82.split
  %i.da = load i32, ptr %8, align 4, !tbaa !63    ; 2 uses
  %i.db = icmp sgt i32 %i.da, 0
  br i1 %i.db, label %.preheader.preheader, label %._crit_edge78

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.dc = load i32, ptr %i.y, align 8, !tbaa !70
  %i.dd = mul nsw i32 %i.dc, %.04387
  %i.de = sext i32 %i.dd to i64
  %i.df = mul i64 %i.ci, %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.df
  %i.dh = shl i32 %.04281, 2
  %i.di = load i32, ptr %i.z, align 4, !tbaa !69
  %i.dj = mul i32 %i.dh, %i.di
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr inbounds [4 x i8], ptr %i.dg, i64 %i.dk
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %i.dm = phi i32 [ %i.du, %._crit_edge ], [ %i.cx, %.preheader.preheader ]
  %i.dn = phi i32 [ %i.dv, %._crit_edge ], [ %i.da, %.preheader.preheader ] ; 2 uses
  %.04077 = phi i32 [ %i.dz, %._crit_edge ], [ 0, %.preheader.preheader ]
  %.04176 = phi ptr [ %i.dy, %._crit_edge ], [ %i.dl, %.preheader.preheader ] ; 2 uses
  %.275 = phi ptr [ %.3.lcssa, %._crit_edge ], [ %.14580, %.preheader.preheader ] ; 2 uses
  %i.do = icmp sgt i32 %i.dn, 0
  br i1 %i.do, label %.lr.ph73, label %._crit_edge

._crit_edge78.loopexit:                           ; preds = %._crit_edge
  %.pre100 = load i32, ptr %i.x, align 4, !tbaa !47
  br label %._crit_edge78

._crit_edge78:                                    ; preds = %.preheader.lr.ph, %._crit_edge78.loopexit, %.lr.ph82.split
  %i.dp = phi i32 [ %i.cw, %.lr.ph82.split ], [ %.pre100, %._crit_edge78.loopexit ], [ %i.cw, %.preheader.lr.ph ] ; 4 uses
  %i.dq = phi i32 [ %i.cx, %.lr.ph82.split ], [ %i.du, %._crit_edge78.loopexit ], [ %i.cx, %.preheader.lr.ph ]
  %i.dr = phi i32 [ %i.cy, %.lr.ph82.split ], [ %i.du, %._crit_edge78.loopexit ], [ %i.cy, %.preheader.lr.ph ]
  %.2.lcssa = phi ptr [ %.14580, %.lr.ph82.split ], [ %.3.lcssa, %._crit_edge78.loopexit ], [ %.14580, %.preheader.lr.ph ] ; 2 uses
  %i.ds = add nuw nsw i32 %.04281, 1              ; 2 uses
  %i.dt = icmp slt i32 %i.ds, %i.dp
  br i1 %i.dt, label %.lr.ph82.split, label %._crit_edge83.loopexit, !llvm.loop !1260

._crit_edge.loopexit:                             ; preds = %.lr.ph73
  %.pre = load i32, ptr %7, align 4, !tbaa !63
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.du = phi i32 [ %i.dm, %.preheader ], [ %.pre, %._crit_edge.loopexit ] ; 4 uses
  %i.dv = phi i32 [ %i.dn, %.preheader ], [ %i.ek, %._crit_edge.loopexit ]
  %.3.lcssa = phi ptr [ %.275, %.preheader ], [ %i.ei, %._crit_edge.loopexit ] ; 2 uses
  %.1.lcssa = phi ptr [ %.04176, %.preheader ], [ %i.eh, %._crit_edge.loopexit ]
  %i.dw = load i32, ptr %9, align 4, !tbaa !63
  %i.dx = sext i32 %i.dw to i64
  %i.dy = getelementptr inbounds [4 x i8], ptr %.1.lcssa, i64 %i.dx
  %i.dz = add nuw nsw i32 %.04077, 1              ; 2 uses
  %i.ea = icmp slt i32 %i.dz, %i.du
  br i1 %i.ea, label %.preheader, label %._crit_edge78.loopexit, !llvm.loop !1261

.lr.ph73:                                         ; preds = %.preheader, %.lr.ph73
  %.03972 = phi i32 [ %i.ej, %.lr.ph73 ], [ 0, %.preheader ]
  %.171 = phi ptr [ %i.eh, %.lr.ph73 ], [ %.04176, %.preheader ] ; 3 uses
  %.370 = phi ptr [ %i.ei, %.lr.ph73 ], [ %.275, %.preheader ] ; 2 uses
  %i.eb = load <4 x float>, ptr %.171, align 16, !tbaa !82
  %i.ec = load <4 x float>, ptr %.370, align 16, !tbaa !82
  %i.ed = fadd fast <4 x float> %i.ec, %i.eb
  store <4 x float> %i.ed, ptr %.171, align 16, !tbaa !82
  %i.ee = load i32, ptr %i.aa, align 4, !tbaa !71
  %i.ef = shl nsw i32 %i.ee, 2
  %i.eg = sext i32 %i.ef to i64
  %i.eh = getelementptr inbounds [4 x i8], ptr %.171, i64 %i.eg ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.370, i64 16 ; 2 uses
  %i.ej = add nuw nsw i32 %.03972, 1              ; 2 uses
  %i.ek = load i32, ptr %8, align 4, !tbaa !63    ; 2 uses
  %i.el = icmp slt i32 %i.ej, %i.ek
  br i1 %i.el, label %.lr.ph73, label %._crit_edge.loopexit, !llvm.loop !1262

._crit_edge92:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge92, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn24Deconvolution_x86_avx5127forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.3(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9) #12 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !63     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.g, ptr %i.b, align 4, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !63
  %i.h = load i32, ptr %0, align 4, !tbaa !63     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !63
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 10 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !63
  %i.k = load i32, ptr %i.a, align 4, !tbaa !63   ; 9 uses
  %.not84 = icmp sgt i32 %i.k, %i.j
  br i1 %.not84, label %._crit_edge, label %.noexc44.lr.ph

.noexc44.lr.ph:                                   ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !20
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.n = load i32, ptr %i.m, align 4, !tbaa !55, !noalias !1279
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.p = load i32, ptr %i.o, align 8, !tbaa !67, !noalias !1279
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 52
  %i.r = load i32, ptr %i.q, align 4, !tbaa !68, !noalias !1279
  %i.s = load ptr, ptr %5, align 8, !tbaa !20, !noalias !1279 ; 20 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.u = load i64, ptr %i.t, align 8, !tbaa !21, !noalias !1279
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !56, !noalias !1279 ; 4 uses
  %factor.op.mul86 = mul i64 %i.u, %i.w           ; 20 uses
  %i.x = sext i32 %i.n to i64                     ; 2 uses
  %i.y = sext i32 %i.p to i64
  %i.z = mul nsw i64 %i.y, %i.x                   ; 2 uses
  %i.aa = mul i64 %i.w, %i.z
  %i.ab = add i64 %i.aa, 15
  %i.ac = and i64 %i.ab, -16
  %i.ad = udiv i64 %i.ac, %i.w
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !84, !noalias !1279
  %i.ag = icmp eq i32 %i.af, 4
  %spec.select = select i1 %i.ag, i64 %i.z, i64 %i.ad
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 432
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !20 ; 3 uses
  %i.aj = icmp eq ptr %i.ai, null                 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 496 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 488 ; 2 uses
  %i.am = trunc i64 %spec.select to i32
  %i.an = mul i32 %i.r, %i.am                     ; 11 uses
  %i.ao = icmp sgt i32 %i.an, 0                   ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 216
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !48 ; 2 uses
  %i.ar = icmp sgt i32 %i.aq, 0
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 224
  %i.at = mul i64 %i.w, %i.x
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 220
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 228
  br i1 %i.ar, label %.noexc44.lr.ph.split.us, label %.noexc44.lr.ph.split

.noexc44.lr.ph.split.us:                          ; preds = %.noexc44.lr.ph
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !56
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !55
  %i.ba = sext i32 %i.az to i64
  %factor.op.mul = mul i64 %i.ax, %i.ba
  %i.bb = load i32, ptr %4, align 4, !tbaa !63
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 212
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !47 ; 2 uses
  %i.be = icmp sgt i32 %i.bd, 0
  %i.bf = sext i32 %i.k to i64
  %i.bg = sext i32 %i.bb to i64
  %i.bh = add nsw i32 %i.j, 1
  %factor.op.mul169 = mul i64 %factor.op.mul, %i.bg
  %wide.trip.count147 = zext nneg i32 %i.aq to i64
  %wide.trip.count = zext nneg i32 %i.bd to i64
  %i.bi = zext i32 %i.an to i64                   ; 5 uses
  %min.iters.check186 = icmp ult i32 %i.an, 8
  %min.iters.check188 = icmp ult i32 %i.an, 64
  %i.bj = and i64 %i.bi, 56
  %n.vec190 = and i64 %i.bi, 2147483584           ; 5 uses
  %i.bk = trunc nuw nsw i64 %n.vec190 to i32
  %i.bl = shl nuw nsw i64 %n.vec190, 2
  %cmp.n198 = icmp eq i64 %n.vec190, %i.bi
  %min.epilog.iters.check204 = icmp eq i64 %i.bj, 0
  %n.vec206 = and i64 %i.bi, 2147483640           ; 4 uses
  %i.bm = trunc nuw nsw i64 %n.vec206 to i32
  %i.bn = shl nuw nsw i64 %n.vec206, 2
  %cmp.n214 = icmp eq i64 %n.vec206, %i.bi
  br label %.noexc44.us

.noexc44.us:                                      ; preds = %_ZN4ncnn3Mat4fillEf.exit._ZN4ncnn3MatD2Ev.exit_crit_edge.split.us, %.noexc44.lr.ph.split.us
  %indvars.iv149 = phi i64 [ %indvars.iv.next150, %_ZN4ncnn3Mat4fillEf.exit._ZN4ncnn3MatD2Ev.exit_crit_edge.split.us ], [ %i.bf, %.noexc44.lr.ph.split.us ] ; 4 uses
  %.reass170 = mul i64 %indvars.iv149, %factor.op.mul169
  %i.bo = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass170
  %.reass87.us = mul i64 %factor.op.mul86, %indvars.iv149
  %i.bp = getelementptr inbounds nuw i8, ptr %i.s, i64 %.reass87.us ; 6 uses
  br i1 %i.aj, label %_ZNK4ncnn3Mat5emptyEv.exit.thread.us, label %_ZNK4ncnn3Mat5emptyEv.exit.us

_ZNK4ncnn3Mat5emptyEv.exit.us:                    ; preds = %.noexc44.us
  %i.bq = load i64, ptr %i.ak, align 8, !tbaa !21
  %i.br = load i32, ptr %i.al, align 8, !tbaa !64
  %i.bs = sext i32 %i.br to i64
  %i.bt = mul i64 %i.bq, %i.bs
  %i.bu = icmp eq i64 %i.bt, 0
  br i1 %i.bu, label %_ZNK4ncnn3Mat5emptyEv.exit.thread.us, label %bb.c

bb.c:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit.us
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv149
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !39
  br label %_ZNK4ncnn3Mat5emptyEv.exit.thread.us

_ZNK4ncnn3Mat5emptyEv.exit.thread.us:             ; preds = %bb.c, %_ZNK4ncnn3Mat5emptyEv.exit.us, %.noexc44.us
  %i.bx = phi fast float [ %i.bw, %bb.c ], [ 0.000000e+00, %_ZNK4ncnn3Mat5emptyEv.exit.us ], [ 0.000000e+00, %.noexc44.us ] ; 3 uses
  br i1 %i.ao, label %iter.check201, label %_ZN4ncnn3Mat4fillEf.exit.preheader.us

iter.check201:                                    ; preds = %_ZNK4ncnn3Mat5emptyEv.exit.thread.us
  br i1 %min.iters.check186, label %.lr.ph.us.preheader, label %vector.main.loop.iter.check187

vector.main.loop.iter.check187:                   ; preds = %iter.check201
  br i1 %min.iters.check188, label %vec.epilog.ph205, label %vector.ph189

vector.ph189:                                     ; preds = %vector.main.loop.iter.check187
  %i.by = getelementptr i8, ptr %i.bp, i64 %i.bl
  %broadcast.splatinsert191 = insertelement <16 x float> poison, float %i.bx, i64 0
  %broadcast.splat192 = shufflevector <16 x float> %broadcast.splatinsert191, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  br label %vector.body193

vector.body193:                                   ; preds = %vector.ph189, %vector.body193
  %index194 = phi i64 [ 0, %vector.ph189 ], [ %index.next196, %vector.body193 ] ; 2 uses
  %i.bz = shl i64 %index194, 2
  %next.gep195 = getelementptr i8, ptr %i.bp, i64 %i.bz ; 4 uses
  %i.ca = getelementptr i8, ptr %next.gep195, i64 64
  %i.cb = getelementptr i8, ptr %next.gep195, i64 128
  %i.cc = getelementptr i8, ptr %next.gep195, i64 192
  store <16 x float> %broadcast.splat192, ptr %next.gep195, align 4, !tbaa !39
  store <16 x float> %broadcast.splat192, ptr %i.ca, align 4, !tbaa !39
  store <16 x float> %broadcast.splat192, ptr %i.cb, align 4, !tbaa !39
  store <16 x float> %broadcast.splat192, ptr %i.cc, align 4, !tbaa !39
  %index.next196 = add nuw i64 %index194, 64      ; 2 uses
  %i.cd = icmp eq i64 %index.next196, %n.vec190
  br i1 %i.cd, label %middle.block197, label %vector.body193, !llvm.loop !1266

middle.block197:                                  ; preds = %vector.body193
  br i1 %cmp.n198, label %_ZN4ncnn3Mat4fillEf.exit.preheader.us, label %vec.epilog.iter.check203

vec.epilog.iter.check203:                         ; preds = %middle.block197
  br i1 %min.epilog.iters.check204, label %.lr.ph.us.preheader, label %vec.epilog.ph205, !prof !65

vec.epilog.ph205:                                 ; preds = %vector.main.loop.iter.check187, %vec.epilog.iter.check203
  %vec.epilog.resume.val199 = phi i64 [ %n.vec190, %vec.epilog.iter.check203 ], [ 0, %vector.main.loop.iter.check187 ]
  %i.ce = getelementptr i8, ptr %i.bp, i64 %i.bn
  %broadcast.splatinsert207 = insertelement <8 x float> poison, float %i.bx, i64 0
  %broadcast.splat208 = shufflevector <8 x float> %broadcast.splatinsert207, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body209

vec.epilog.vector.body209:                        ; preds = %vec.epilog.vector.body209, %vec.epilog.ph205
  %index210 = phi i64 [ %vec.epilog.resume.val199, %vec.epilog.ph205 ], [ %index.next212, %vec.epilog.vector.body209 ] ; 2 uses
  %i.cf = shl i64 %index210, 2
  %next.gep211 = getelementptr i8, ptr %i.bp, i64 %i.cf
  store <8 x float> %broadcast.splat208, ptr %next.gep211, align 4, !tbaa !39
  %index.next212 = add nuw i64 %index210, 8       ; 2 uses
  %i.cg = icmp eq i64 %index.next212, %n.vec206
  br i1 %i.cg, label %vec.epilog.middle.block213, label %vec.epilog.vector.body209, !llvm.loop !1267

vec.epilog.middle.block213:                       ; preds = %vec.epilog.vector.body209
  br i1 %cmp.n214, label %_ZN4ncnn3Mat4fillEf.exit.preheader.us, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %iter.check201, %vec.epilog.iter.check203, %vec.epilog.middle.block213
  %.0.i55.us.ph = phi i32 [ 0, %iter.check201 ], [ %i.bk, %vec.epilog.iter.check203 ], [ %i.bm, %vec.epilog.middle.block213 ]
  %.05.i54.us.ph = phi ptr [ %i.bp, %iter.check201 ], [ %i.by, %vec.epilog.iter.check203 ], [ %i.ce, %vec.epilog.middle.block213 ]
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %.lr.ph.us
  %.0.i55.us = phi i32 [ %i.ci, %.lr.ph.us ], [ %.0.i55.us.ph, %.lr.ph.us.preheader ]
  %.05.i54.us = phi ptr [ %i.ch, %.lr.ph.us ], [ %.05.i54.us.ph, %.lr.ph.us.preheader ] ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.05.i54.us, i64 4
  store float %i.bx, ptr %.05.i54.us, align 4, !tbaa !39
  %i.ci = add nuw nsw i32 %.0.i55.us, 1           ; 2 uses
  %exitcond137.not = icmp eq i32 %i.ci, %i.an
  br i1 %exitcond137.not, label %_ZN4ncnn3Mat4fillEf.exit.preheader.us, label %.lr.ph.us, !llvm.loop !1268

_ZN4ncnn3Mat4fillEf.exit.preheader.us:            ; preds = %.lr.ph.us, %middle.block197, %vec.epilog.middle.block213, %_ZNK4ncnn3Mat5emptyEv.exit.thread.us
  br i1 %i.be, label %.preheader53.lr.ph.split.us, label %_ZN4ncnn3Mat4fillEf.exit._ZN4ncnn3MatD2Ev.exit_crit_edge.split.us

.preheader53.lr.ph.split.us:                      ; preds = %_ZN4ncnn3Mat4fillEf.exit.preheader.us
  %i.cj = load i32, ptr %i.as, align 8, !tbaa !70
  %i.ck = load i32, ptr %i.au, align 4, !tbaa !69
  %i.cl = load i32, ptr %7, align 4, !tbaa !63    ; 2 uses
  %i.cm = icmp sgt i32 %i.cl, 0
  br i1 %i.cm, label %.preheader53.lr.ph.split.split.us.us, label %_ZN4ncnn3Mat4fillEf.exit._ZN4ncnn3MatD2Ev.exit_crit_edge.split.us

.preheader53.lr.ph.split.split.us.us:             ; preds = %.preheader53.lr.ph.split.us
  %i.cn = load i32, ptr %8, align 4, !tbaa !63    ; 4 uses
  %i.co = icmp sgt i32 %i.cn, 0
  %i.cp = load i32, ptr %9, align 4, !tbaa !63
  %i.cq = sext i32 %i.cp to i64
  br i1 %i.co, label %.preheader53.lr.ph.split.split.us.split.us.us, label %_ZN4ncnn3Mat4fillEf.exit._ZN4ncnn3MatD2Ev.exit_crit_edge.split.us

.preheader53.lr.ph.split.split.us.split.us.us:    ; preds = %.preheader53.lr.ph.split.split.us.us
  %i.cr = load i32, ptr %i.av, align 4, !tbaa !71
  %i.cs = sext i32 %i.cr to i64                   ; 6 uses
  %i.ct = sext i32 %i.ck to i64
  %i.cu = sext i32 %i.cj to i64
  %factor.op.mul168 = mul i64 %i.at, %i.cu
  %xtraiter224 = and i32 %i.cn, 3                 ; 3 uses
  %i.cv = icmp ult i32 %i.cn, 4
  %unroll_iter = and i32 %i.cn, 2147483644
  %lcmp.mod225.not = icmp eq i32 %xtraiter224, 0
  %lcmp.mod228 = icmp ne i32 %xtraiter224, 0
  br label %.preheader53.us.us.us

.preheader53.us.us.us:                            ; preds = %._crit_edge.split.us.split.us.us.us.us, %.preheader53.lr.ph.split.split.us.split.us.us
  %indvars.iv144 = phi i64 [ %indvars.iv.next145, %._crit_edge.split.us.split.us.us.us.us ], [ 0, %.preheader53.lr.ph.split.split.us.split.us.us ] ; 2 uses
  %.04076.us.us.us = phi ptr [ %.lcssa, %._crit_edge.split.us.split.us.us.us.us ], [ %i.bo, %.preheader53.lr.ph.split.split.us.split.us.us ]
  %.reass = mul i64 %indvars.iv144, %factor.op.mul168
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.reass
  br label %.preheader.lr.ph.us.us.us.us.us

.preheader.lr.ph.us.us.us.us.us:                  ; preds = %._crit_edge64.split.us.us.us.us.us.us, %.preheader53.us.us.us
  %indvars.iv140 = phi i64 [ %indvars.iv.next141, %._crit_edge64.split.us.us.us.us.us.us ], [ 0, %.preheader53.us.us.us ] ; 2 uses
  %.14166.us.us.us.us.us = phi ptr [ %.lcssa, %._crit_edge64.split.us.us.us.us.us.us ], [ %.04076.us.us.us, %.preheader53.us.us.us ]
  %i.cx = mul nsw i64 %indvars.iv140, %i.ct
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.cw, i64 %i.cx
  br label %.preheader.us.us.us.us.us.us

.preheader.us.us.us.us.us.us:                     ; preds = %._crit_edge.us.us.us.us.us.us, %.preheader.lr.ph.us.us.us.us.us
  %.03663.us.us.us.us.us.us = phi i32 [ 0, %.preheader.lr.ph.us.us.us.us.us ], [ %i.eb, %._crit_edge.us.us.us.us.us.us ]
  %.03762.us.us.us.us.us.us = phi ptr [ %i.cy, %.preheader.lr.ph.us.us.us.us.us ], [ %i.ea, %._crit_edge.us.us.us.us.us.us ] ; 2 uses
  %.261.us.us.us.us.us.us = phi ptr [ %.14166.us.us.us.us.us, %.preheader.lr.ph.us.us.us.us.us ], [ %.lcssa, %._crit_edge.us.us.us.us.us.us ] ; 2 uses
  br i1 %i.cv, label %.epil.preheader, label %.preheader.us.us.us.us.us.us.new

.preheader.us.us.us.us.us.us.new:                 ; preds = %.preheader.us.us.us.us.us.us, %.preheader.us.us.us.us.us.us.new
  %.157.us.us.us.us.us.us = phi ptr [ %i.dr, %.preheader.us.us.us.us.us.us.new ], [ %.03762.us.us.us.us.us.us, %.preheader.us.us.us.us.us.us ] ; 3 uses
  %.356.us.us.us.us.us.us = phi ptr [ %i.ds, %.preheader.us.us.us.us.us.us.new ], [ %.261.us.us.us.us.us.us, %.preheader.us.us.us.us.us.us ] ; 5 uses
  %niter = phi i32 [ %niter.next.3, %.preheader.us.us.us.us.us.us.new ], [ 0, %.preheader.us.us.us.us.us.us ]
  %i.cz = load float, ptr %.356.us.us.us.us.us.us, align 4, !tbaa !39
  %i.da = load float, ptr %.157.us.us.us.us.us.us, align 4, !tbaa !39
  %i.db = fadd fast float %i.da, %i.cz
  store float %i.db, ptr %.157.us.us.us.us.us.us, align 4, !tbaa !39
  %i.dc = getelementptr inbounds [4 x i8], ptr %.157.us.us.us.us.us.us, i64 %i.cs ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.356.us.us.us.us.us.us, i64 4
  %i.de = load float, ptr %i.dd, align 4, !tbaa !39
  %i.df = load float, ptr %i.dc, align 4, !tbaa !39
  %i.dg = fadd fast float %i.df, %i.de
  store float %i.dg, ptr %i.dc, align 4, !tbaa !39
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.dc, i64 %i.cs ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.356.us.us.us.us.us.us, i64 8
  %i.dj = load float, ptr %i.di, align 4, !tbaa !39
  %i.dk = load float, ptr %i.dh, align 4, !tbaa !39
  %i.dl = fadd fast float %i.dk, %i.dj
  store float %i.dl, ptr %i.dh, align 4, !tbaa !39
  %i.dm = getelementptr inbounds [4 x i8], ptr %i.dh, i64 %i.cs ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.356.us.us.us.us.us.us, i64 12
  %i.do = load float, ptr %i.dn, align 4, !tbaa !39
  %i.dp = load float, ptr %i.dm, align 4, !tbaa !39
  %i.dq = fadd fast float %i.dp, %i.do
  store float %i.dq, ptr %i.dm, align 4, !tbaa !39
  %i.dr = getelementptr inbounds [4 x i8], ptr %i.dm, i64 %i.cs ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.356.us.us.us.us.us.us, i64 16 ; 3 uses
  %niter.next.3 = add nuw nsw i32 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.us.us.us.us.us.unr-lcssa, label %.preheader.us.us.us.us.us.us.new, !llvm.loop !1269

._crit_edge.us.us.us.us.us.us.unr-lcssa:          ; preds = %.preheader.us.us.us.us.us.us.new
  br i1 %lcmp.mod225.not, label %._crit_edge.us.us.us.us.us.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.us.us.us.us.us.unr-lcssa, %.preheader.us.us.us.us.us.us
  %.157.us.us.us.us.us.us.epil.init = phi ptr [ %.03762.us.us.us.us.us.us, %.preheader.us.us.us.us.us.us ], [ %i.dr, %._crit_edge.us.us.us.us.us.us.unr-lcssa ]
  %.356.us.us.us.us.us.us.epil.init = phi ptr [ %.261.us.us.us.us.us.us, %.preheader.us.us.us.us.us.us ], [ %i.ds, %._crit_edge.us.us.us.us.us.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod228)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %.157.us.us.us.us.us.us.epil = phi ptr [ %.157.us.us.us.us.us.us.epil.init, %.epil.preheader ], [ %i.dw, %bb.d ] ; 4 uses
  %.356.us.us.us.us.us.us.epil = phi ptr [ %.356.us.us.us.us.us.us.epil.init, %.epil.preheader ], [ %i.dx, %bb.d ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.dt = load float, ptr %.356.us.us.us.us.us.us.epil, align 4, !tbaa !39
  %i.du = load float, ptr %.157.us.us.us.us.us.us.epil, align 4, !tbaa !39
  %i.dv = fadd fast float %i.du, %i.dt
  store float %i.dv, ptr %.157.us.us.us.us.us.us.epil, align 4, !tbaa !39
  %i.dw = getelementptr inbounds [4 x i8], ptr %.157.us.us.us.us.us.us.epil, i64 %i.cs
  %i.dx = getelementptr inbounds nuw i8, ptr %.356.us.us.us.us.us.us.epil, i64 4 ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter224
  br i1 %epil.iter.cmp.not, label %._crit_edge.us.us.us.us.us.us, label %bb.d, !llvm.loop !1270

._crit_edge.us.us.us.us.us.us:                    ; preds = %bb.d, %._crit_edge.us.us.us.us.us.us.unr-lcssa
  %i.dy = phi ptr [ %i.dm, %._crit_edge.us.us.us.us.us.us.unr-lcssa ], [ %.157.us.us.us.us.us.us.epil, %bb.d ]
  %.lcssa = phi ptr [ %i.ds, %._crit_edge.us.us.us.us.us.us.unr-lcssa ], [ %i.dx, %bb.d ] ; 3 uses
  %i.dz = getelementptr inbounds [4 x i8], ptr %i.dy, i64 %i.cs
  %i.ea = getelementptr inbounds [4 x i8], ptr %i.dz, i64 %i.cq
  %i.eb = add nuw nsw i32 %.03663.us.us.us.us.us.us, 1 ; 2 uses
  %exitcond139.not = icmp eq i32 %i.eb, %i.cl
  br i1 %exitcond139.not, label %._crit_edge64.split.us.us.us.us.us.us, label %.preheader.us.us.us.us.us.us, !llvm.loop !1271

._crit_edge64.split.us.us.us.us.us.us:            ; preds = %._crit_edge.us.us.us.us.us.us
  %indvars.iv.next141 = add nuw nsw i64 %indvars.iv140, 1 ; 2 uses
  %exitcond143.not = icmp eq i64 %indvars.iv.next141, %wide.trip.count
  br i1 %exitcond143.not, label %._crit_edge.split.us.split.us.us.us.us, label %.preheader.lr.ph.us.us.us.us.us, !llvm.loop !1272

._crit_edge.split.us.split.us.us.us.us:           ; preds = %._crit_edge64.split.us.us.us.us.us.us
  %indvars.iv.next145 = add nuw nsw i64 %indvars.iv144, 1 ; 2 uses
  %exitcond148.not = icmp eq i64 %indvars.iv.next145, %wide.trip.count147
  br i1 %exitcond148.not, label %_ZN4ncnn3Mat4fillEf.exit._ZN4ncnn3MatD2Ev.exit_crit_edge.split.us, label %.preheader53.us.us.us, !llvm.loop !1273

_ZN4ncnn3Mat4fillEf.exit._ZN4ncnn3MatD2Ev.exit_crit_edge.split.us: ; preds = %._crit_edge.split.us.split.us.us.us.us, %.preheader53.lr.ph.split.split.us.us, %.preheader53.lr.ph.split.us, %_ZN4ncnn3Mat4fillEf.exit.preheader.us
  %indvars.iv.next150 = add nsw i64 %indvars.iv149, 1 ; 2 uses
  %lftr.wideiv152 = trunc i64 %indvars.iv.next150 to i32
  %exitcond153.not = icmp eq i32 %i.bh, %lftr.wideiv152
  br i1 %exitcond153.not, label %._crit_edge, label %.noexc44.us

.noexc44.lr.ph.split:                             ; preds = %.noexc44.lr.ph
  br i1 %i.aj, label %.noexc44.lr.ph.split.split.us, label %.noexc44.lr.ph.split.split

.noexc44.lr.ph.split.split.us:                    ; preds = %.noexc44.lr.ph.split
  br i1 %i.ao, label %.noexc44.us98.preheader, label %._crit_edge

.noexc44.us98.preheader:                          ; preds = %.noexc44.lr.ph.split.split.us
  %i.ec = zext nneg i32 %i.an to i64
  %i.ed = shl nuw nsw i64 %i.ec, 2                ; 9 uses
  %i.ee = sext i32 %i.k to i64                    ; 2 uses
  %i.ef = add nsw i32 %i.j, 1
  %i.eg = add i32 %i.j, 1
  %i.eh = sub i32 %i.eg, %i.k
  %i.ei = sub i32 %i.j, %i.k
  %xtraiter221 = and i32 %i.eh, 7                 ; 2 uses
  %lcmp.mod222.not = icmp eq i32 %xtraiter221, 0
  br i1 %lcmp.mod222.not, label %.noexc44.us98.prol.loopexit, label %.noexc44.us98.prol

.noexc44.us98.prol:                               ; preds = %.noexc44.us98.preheader, %.noexc44.us98.prol
  %indvars.iv132.prol = phi i64 [ %indvars.iv.next133.prol, %.noexc44.us98.prol ], [ %i.ee, %.noexc44.us98.preheader ] ; 2 uses
  %prol.iter223 = phi i32 [ %prol.iter223.next, %.noexc44.us98.prol ], [ 0, %.noexc44.us98.preheader ]
  %.reass87.us100.prol = mul i64 %factor.op.mul86, %indvars.iv132.prol
  %i.ej = getelementptr i8, ptr %i.s, i64 %.reass87.us100.prol
  call void @llvm.memset.p0.i64(ptr align 4 %i.ej, i8 0, i64 %i.ed, i1 false), !tbaa !39
  %indvars.iv.next133.prol = add nsw i64 %indvars.iv132.prol, 1 ; 2 uses
  %prol.iter223.next = add i32 %prol.iter223, 1   ; 2 uses
  %prol.iter223.cmp.not = icmp eq i32 %prol.iter223.next, %xtraiter221
  br i1 %prol.iter223.cmp.not, label %.noexc44.us98.prol.loopexit, label %.noexc44.us98.prol, !llvm.loop !1274

.noexc44.us98.prol.loopexit:                      ; preds = %.noexc44.us98.prol, %.noexc44.us98.preheader
  %indvars.iv132.unr = phi i64 [ %i.ee, %.noexc44.us98.preheader ], [ %indvars.iv.next133.prol, %.noexc44.us98.prol ]
  %i.ek = icmp ult i32 %i.ei, 7
  br i1 %i.ek, label %._crit_edge, label %.noexc44.us98

.noexc44.us98:                                    ; preds = %.noexc44.us98.prol.loopexit, %.noexc44.us98
  %indvars.iv132 = phi i64 [ %indvars.iv.next133.7, %.noexc44.us98 ], [ %indvars.iv132.unr, %.noexc44.us98.prol.loopexit ] ; 9 uses
  %.reass87.us100 = mul i64 %factor.op.mul86, %indvars.iv132
  %i.el = getelementptr i8, ptr %i.s, i64 %.reass87.us100
  call void @llvm.memset.p0.i64(ptr align 4 %i.el, i8 0, i64 %i.ed, i1 false), !tbaa !39
  %indvars.iv.next133 = add nsw i64 %indvars.iv132, 1
  %.reass87.us100.1 = mul i64 %factor.op.mul86, %indvars.iv.next133
  %i.em = getelementptr i8, ptr %i.s, i64 %.reass87.us100.1
  call void @llvm.memset.p0.i64(ptr align 4 %i.em, i8 0, i64 %i.ed, i1 false), !tbaa !39
  %indvars.iv.next133.1 = add nsw i64 %indvars.iv132, 2
  %.reass87.us100.2 = mul i64 %factor.op.mul86, %indvars.iv.next133.1
  %i.en = getelementptr i8, ptr %i.s, i64 %.reass87.us100.2
  call void @llvm.memset.p0.i64(ptr align 4 %i.en, i8 0, i64 %i.ed, i1 false), !tbaa !39
  %indvars.iv.next133.2 = add nsw i64 %indvars.iv132, 3
  %.reass87.us100.3 = mul i64 %factor.op.mul86, %indvars.iv.next133.2
  %i.eo = getelementptr i8, ptr %i.s, i64 %.reass87.us100.3
  call void @llvm.memset.p0.i64(ptr align 4 %i.eo, i8 0, i64 %i.ed, i1 false), !tbaa !39
  %indvars.iv.next133.3 = add nsw i64 %indvars.iv132, 4
  %.reass87.us100.4 = mul i64 %factor.op.mul86, %indvars.iv.next133.3
  %i.ep = getelementptr i8, ptr %i.s, i64 %.reass87.us100.4
  call void @llvm.memset.p0.i64(ptr align 4 %i.ep, i8 0, i64 %i.ed, i1 false), !tbaa !39
  %indvars.iv.next133.4 = add nsw i64 %indvars.iv132, 5
  %.reass87.us100.5 = mul i64 %factor.op.mul86, %indvars.iv.next133.4
  %i.eq = getelementptr i8, ptr %i.s, i64 %.reass87.us100.5
  call void @llvm.memset.p0.i64(ptr align 4 %i.eq, i8 0, i64 %i.ed, i1 false), !tbaa !39
  %indvars.iv.next133.5 = add nsw i64 %indvars.iv132, 6
  %.reass87.us100.6 = mul i64 %factor.op.mul86, %indvars.iv.next133.5
  %i.er = getelementptr i8, ptr %i.s, i64 %.reass87.us100.6
  call void @llvm.memset.p0.i64(ptr align 4 %i.er, i8 0, i64 %i.ed, i1 false), !tbaa !39
  %indvars.iv.next133.6 = add nsw i64 %indvars.iv132, 7
  %.reass87.us100.7 = mul i64 %factor.op.mul86, %indvars.iv.next133.6
  %i.es = getelementptr i8, ptr %i.s, i64 %.reass87.us100.7
  call void @llvm.memset.p0.i64(ptr align 4 %i.es, i8 0, i64 %i.ed, i1 false), !tbaa !39
  %indvars.iv.next133.7 = add nsw i64 %indvars.iv132, 8 ; 2 uses
  %lftr.wideiv135.7 = trunc i64 %indvars.iv.next133.7 to i32
  %exitcond136.not.7 = icmp eq i32 %i.ef, %lftr.wideiv135.7
  br i1 %exitcond136.not.7, label %._crit_edge, label %.noexc44.us98

.noexc44.lr.ph.split.split:                       ; preds = %.noexc44.lr.ph.split
  br i1 %i.ao, label %.noexc44.lr.ph.split.split.split.us, label %._crit_edge

.noexc44.lr.ph.split.split.split.us:              ; preds = %.noexc44.lr.ph.split.split
  %i.et = load i64, ptr %i.ak, align 8, !tbaa !21
  %i.eu = load i32, ptr %i.al, align 8, !tbaa !64
  %i.ev = sext i32 %i.eu to i64
  %i.ew = mul i64 %i.et, %i.ev
  %i.ex = icmp eq i64 %i.ew, 0
  br i1 %i.ex, label %.noexc44.us108.us.preheader, label %.noexc44.us108.preheader

.noexc44.us108.preheader:                         ; preds = %.noexc44.lr.ph.split.split.split.us
  %i.ey = sext i32 %i.k to i64
  %i.ez = add nsw i32 %i.j, 1
  %i.fa = zext nneg i32 %i.an to i64              ; 5 uses
  %min.iters.check = icmp ult i32 %i.an, 8
  %min.iters.check175 = icmp ult i32 %i.an, 64
  %i.fb = and i64 %i.fa, 56
  %n.vec = and i64 %i.fa, 2147483584              ; 5 uses
  %i.fc = trunc nuw nsw i64 %n.vec to i32
  %i.fd = shl nuw nsw i64 %n.vec, 2
  %cmp.n = icmp eq i64 %n.vec, %i.fa
  %min.epilog.iters.check = icmp eq i64 %i.fb, 0
  %n.vec177 = and i64 %i.fa, 2147483640           ; 4 uses
  %i.fe = trunc nuw nsw i64 %n.vec177 to i32
  %i.ff = shl nuw nsw i64 %n.vec177, 2
  %cmp.n183 = icmp eq i64 %n.vec177, %i.fa
  br label %iter.check

.noexc44.us108.us.preheader:                      ; preds = %.noexc44.lr.ph.split.split.split.us
  %i.fg = zext nneg i32 %i.an to i64
  %i.fh = shl nuw nsw i64 %i.fg, 2                ; 9 uses
  %i.fi = sext i32 %i.k to i64                    ; 2 uses
  %i.fj = add nsw i32 %i.j, 1
  %i.fk = add i32 %i.j, 1
  %i.fl = sub i32 %i.fk, %i.k
  %i.fm = sub i32 %i.j, %i.k
  %xtraiter = and i32 %i.fl, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.noexc44.us108.us.prol.loopexit, label %.noexc44.us108.us.prol

.noexc44.us108.us.prol:                           ; preds = %.noexc44.us108.us.preheader, %.noexc44.us108.us.prol
  %indvars.iv127.prol = phi i64 [ %indvars.iv.next128.prol, %.noexc44.us108.us.prol ], [ %i.fi, %.noexc44.us108.us.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.noexc44.us108.us.prol ], [ 0, %.noexc44.us108.us.preheader ]
  %.reass87.us110.us.prol = mul i64 %factor.op.mul86, %indvars.iv127.prol
  %i.fn = getelementptr i8, ptr %i.s, i64 %.reass87.us110.us.prol
  call void @llvm.memset.p0.i64(ptr align 4 %i.fn, i8 0, i64 %i.fh, i1 false), !tbaa !39
  %indvars.iv.next128.prol = add nsw i64 %indvars.iv127.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.noexc44.us108.us.prol.loopexit, label %.noexc44.us108.us.prol, !llvm.loop !1275

.noexc44.us108.us.prol.loopexit:                  ; preds = %.noexc44.us108.us.prol, %.noexc44.us108.us.preheader
  %indvars.iv127.unr = phi i64 [ %i.fi, %.noexc44.us108.us.preheader ], [ %indvars.iv.next128.prol, %.noexc44.us108.us.prol ]
  %i.fo = icmp ult i32 %i.fm, 7
  br i1 %i.fo, label %._crit_edge, label %.noexc44.us108.us

.noexc44.us108.us:                                ; preds = %.noexc44.us108.us.prol.loopexit, %.noexc44.us108.us
  %indvars.iv127 = phi i64 [ %indvars.iv.next128.7, %.noexc44.us108.us ], [ %indvars.iv127.unr, %.noexc44.us108.us.prol.loopexit ] ; 9 uses
  %.reass87.us110.us = mul i64 %factor.op.mul86, %indvars.iv127
  %i.fp = getelementptr i8, ptr %i.s, i64 %.reass87.us110.us
  call void @llvm.memset.p0.i64(ptr align 4 %i.fp, i8 0, i64 %i.fh, i1 false), !tbaa !39
  %indvars.iv.next128 = add nsw i64 %indvars.iv127, 1
  %.reass87.us110.us.1 = mul i64 %factor.op.mul86, %indvars.iv.next128
  %i.fq = getelementptr i8, ptr %i.s, i64 %.reass87.us110.us.1
  call void @llvm.memset.p0.i64(ptr align 4 %i.fq, i8 0, i64 %i.fh, i1 false), !tbaa !39
  %indvars.iv.next128.1 = add nsw i64 %indvars.iv127, 2
  %.reass87.us110.us.2 = mul i64 %factor.op.mul86, %indvars.iv.next128.1
  %i.fr = getelementptr i8, ptr %i.s, i64 %.reass87.us110.us.2
  call void @llvm.memset.p0.i64(ptr align 4 %i.fr, i8 0, i64 %i.fh, i1 false), !tbaa !39
  %indvars.iv.next128.2 = add nsw i64 %indvars.iv127, 3
  %.reass87.us110.us.3 = mul i64 %factor.op.mul86, %indvars.iv.next128.2
  %i.fs = getelementptr i8, ptr %i.s, i64 %.reass87.us110.us.3
  call void @llvm.memset.p0.i64(ptr align 4 %i.fs, i8 0, i64 %i.fh, i1 false), !tbaa !39
  %indvars.iv.next128.3 = add nsw i64 %indvars.iv127, 4
  %.reass87.us110.us.4 = mul i64 %factor.op.mul86, %indvars.iv.next128.3
  %i.ft = getelementptr i8, ptr %i.s, i64 %.reass87.us110.us.4
  call void @llvm.memset.p0.i64(ptr align 4 %i.ft, i8 0, i64 %i.fh, i1 false), !tbaa !39
  %indvars.iv.next128.4 = add nsw i64 %indvars.iv127, 5
  %.reass87.us110.us.5 = mul i64 %factor.op.mul86, %indvars.iv.next128.4
  %i.fu = getelementptr i8, ptr %i.s, i64 %.reass87.us110.us.5
  call void @llvm.memset.p0.i64(ptr align 4 %i.fu, i8 0, i64 %i.fh, i1 false), !tbaa !39
  %indvars.iv.next128.5 = add nsw i64 %indvars.iv127, 6
  %.reass87.us110.us.6 = mul i64 %factor.op.mul86, %indvars.iv.next128.5
  %i.fv = getelementptr i8, ptr %i.s, i64 %.reass87.us110.us.6
  call void @llvm.memset.p0.i64(ptr align 4 %i.fv, i8 0, i64 %i.fh, i1 false), !tbaa !39
  %indvars.iv.next128.6 = add nsw i64 %indvars.iv127, 7
  %.reass87.us110.us.7 = mul i64 %factor.op.mul86, %indvars.iv.next128.6
  %i.fw = getelementptr i8, ptr %i.s, i64 %.reass87.us110.us.7
  call void @llvm.memset.p0.i64(ptr align 4 %i.fw, i8 0, i64 %i.fh, i1 false), !tbaa !39
  %indvars.iv.next128.7 = add nsw i64 %indvars.iv127, 8 ; 2 uses
  %lftr.wideiv130.7 = trunc i64 %indvars.iv.next128.7 to i32
  %exitcond131.not.7 = icmp eq i32 %i.fj, %lftr.wideiv130.7
  br i1 %exitcond131.not.7, label %._crit_edge, label %.noexc44.us108.us

iter.check:                                       ; preds = %.noexc44.us108.preheader, %._ZN4ncnn3Mat4fillEf.exit.preheader_crit_edge.us115
  %indvars.iv = phi i64 [ %i.ey, %.noexc44.us108.preheader ], [ %indvars.iv.next, %._ZN4ncnn3Mat4fillEf.exit.preheader_crit_edge.us115 ] ; 3 uses
  %.reass87.us110 = mul i64 %factor.op.mul86, %indvars.iv
  %i.fx = getelementptr inbounds nuw i8, ptr %i.s, i64 %.reass87.us110 ; 5 uses
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !39 ; 3 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check175, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ga = getelementptr i8, ptr %i.fx, i64 %i.fd
  %broadcast.splatinsert = insertelement <16 x float> poison, float %i.fz, i64 0
  %broadcast.splat = shufflevector <16 x float> %broadcast.splatinsert, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gb = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.fx, i64 %i.gb ; 4 uses
  %i.gc = getelementptr i8, ptr %next.gep, i64 64
  %i.gd = getelementptr i8, ptr %next.gep, i64 128
  %i.ge = getelementptr i8, ptr %next.gep, i64 192
  store <16 x float> %broadcast.splat, ptr %next.gep, align 4, !tbaa !39
  store <16 x float> %broadcast.splat, ptr %i.gc, align 4, !tbaa !39
  store <16 x float> %broadcast.splat, ptr %i.gd, align 4, !tbaa !39
  store <16 x float> %broadcast.splat, ptr %i.ge, align 4, !tbaa !39
  %index.next = add nuw i64 %index, 64            ; 2 uses
  %i.gf = icmp eq i64 %index.next, %n.vec
  br i1 %i.gf, label %middle.block, label %vector.body, !llvm.loop !1276

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._ZN4ncnn3Mat4fillEf.exit.preheader_crit_edge.us115, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !65

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.gg = getelementptr i8, ptr %i.fx, i64 %i.ff
  %broadcast.splatinsert178 = insertelement <8 x float> poison, float %i.fz, i64 0
  %broadcast.splat179 = shufflevector <8 x float> %broadcast.splatinsert178, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index180 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next182, %vec.epilog.vector.body ] ; 2 uses
  %i.gh = shl i64 %index180, 2
  %next.gep181 = getelementptr i8, ptr %i.fx, i64 %i.gh
  store <8 x float> %broadcast.splat179, ptr %next.gep181, align 4, !tbaa !39
  %index.next182 = add nuw i64 %index180, 8       ; 2 uses
  %i.gi = icmp eq i64 %index.next182, %n.vec177
  br i1 %i.gi, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1277

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n183, label %._ZN4ncnn3Mat4fillEf.exit.preheader_crit_edge.us115, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0.i55.us113.ph = phi i32 [ 0, %iter.check ], [ %i.fc, %vec.epilog.iter.check ], [ %i.fe, %vec.epilog.middle.block ]
  %.05.i54.us114.ph = phi ptr [ %i.fx, %iter.check ], [ %i.ga, %vec.epilog.iter.check ], [ %i.gg, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.0.i55.us113 = phi i32 [ %i.gk, %vec.epilog.scalar.ph ], [ %.0.i55.us113.ph, %vec.epilog.scalar.ph.preheader ]
  %.05.i54.us114 = phi ptr [ %i.gj, %vec.epilog.scalar.ph ], [ %.05.i54.us114.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.05.i54.us114, i64 4
  store float %i.fz, ptr %.05.i54.us114, align 4, !tbaa !39
  %i.gk = add nuw nsw i32 %.0.i55.us113, 1        ; 2 uses
  %exitcond.not = icmp eq i32 %i.gk, %i.an
  br i1 %exitcond.not, label %._ZN4ncnn3Mat4fillEf.exit.preheader_crit_edge.us115, label %vec.epilog.scalar.ph, !llvm.loop !1278

._ZN4ncnn3Mat4fillEf.exit.preheader_crit_edge.us115: ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond126.not = icmp eq i32 %i.ez, %lftr.wideiv
  br i1 %exitcond126.not, label %._crit_edge, label %iter.check

._crit_edge:                                      ; preds = %._ZN4ncnn3Mat4fillEf.exit.preheader_crit_edge.us115, %.noexc44.us108.us.prol.loopexit, %.noexc44.us108.us, %.noexc44.us98.prol.loopexit, %.noexc44.us98, %_ZN4ncnn3Mat4fillEf.exit._ZN4ncnn3MatD2Ev.exit_crit_edge.split.us, %.noexc44.lr.ph.split.split, %.noexc44.lr.ph.split.split.us, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN4ncnnL20deconvolution_packedERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, ptr noundef nonnull align 8 dereferenceable(72) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %12) unnamed_addr #13 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 22 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 22 uses
  %i.d = alloca i32, align 4                      ; 22 uses
  %i.e = alloca i32, align 4                      ; 22 uses
  %i.f = alloca i32, align 4                      ; 22 uses
  %i.g = alloca i32, align 4                      ; 6 uses
  %i.h = alloca i64, align 8                      ; 6 uses
  %i.i = alloca i32, align 4                      ; 24 uses
  %i.j = alloca i32, align 4                      ; 24 uses
  %i.k = alloca i32, align 4                      ; 8 uses
  %i.l = alloca ptr, align 8                      ; 8 uses
  %i.m = alloca i32, align 4                      ; 8 uses
  %i.n = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store i32 %4, ptr %i.a, align 4, !tbaa !63
  store i32 %5, ptr %i.b, align 4, !tbaa !63
  store i32 %6, ptr %i.c, align 4, !tbaa !63
  store i32 %7, ptr %i.d, align 4, !tbaa !63
  store i32 %8, ptr %i.e, align 4, !tbaa !63
  store i32 %9, ptr %i.f, align 4, !tbaa !63
  store i32 %10, ptr %i.g, align 4, !tbaa !63
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !62   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.r = load i32, ptr %i.q, align 8, !tbaa !64
  %i.s = mul i32 %i.r, %i.p                       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #9
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 5 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !21
  %i.v = sext i32 %i.p to i64
  %i.w = mul i64 %i.u, %i.v
  store i64 %i.w, ptr %i.h, align 8, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #9
  %i.x = add nsw i32 %4, -1
  %i.y = mul nsw i32 %6, %i.x
  %i.z = add nsw i32 %i.y, 1
  store i32 %i.z, ptr %i.i, align 4, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #9
  %i.aa = add nsw i32 %5, -1
  %i.ab = mul nsw i32 %7, %i.aa
  %i.ac = add nsw i32 %i.ab, 1
  store i32 %i.ac, ptr %i.j, align 4, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #9
  %i.ad = mul nsw i32 %5, %4
  store i32 %i.ad, ptr %i.k, align 4, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #9
  %i.ae = load ptr, ptr %3, align 8, !tbaa !20
  store ptr %i.ae, ptr %i.l, align 8, !tbaa !90
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #9
  %i.af = sdiv i32 %i.s, 16
  store i32 %i.af, ptr %i.m, align 4, !tbaa !63
  %i.ag = getelementptr inbounds nuw i8, ptr %12, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !83
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.n, i32 %i.ah)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 17, ptr nonnull @_ZN4ncnnL20deconvolution_packedERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE.omp_outlined, ptr nonnull %i.m, ptr nonnull %0, ptr nonnull %1, ptr nonnull %i.l, ptr nonnull %2, ptr nonnull %i.b, ptr nonnull %i.d, ptr nonnull %i.j, ptr nonnull %i.f, ptr nonnull %i.a, ptr nonnull %i.c, ptr nonnull %i.i, ptr nonnull %i.e, ptr nonnull %i.k, ptr nonnull %i.g, ptr nonnull %11, ptr nonnull %i.h)
  %i.ai = load i32, ptr %i.m, align 4, !tbaa !63
  %i.aj = shl nsw i32 %i.ai, 4                    ; 3 uses
  %i.ak = sub nsw i32 %i.s, %i.aj                 ; 2 uses
  %i.al = sdiv i32 %i.ak, 8                       ; 3 uses
  store i32 %i.al, ptr %i.m, align 4, !tbaa !63
  %i.am = icmp sgt i32 %i.ak, 7
  br i1 %i.am, label %_ZN4ncnn3MatD2Ev.exit2274.lr.ph, label %._crit_edge6760

_ZN4ncnn3MatD2Ev.exit2274.lr.ph:                  ; preds = %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 13 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 12 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 12 uses
  %i.ay = sext i32 %i.aj to i64
  %wide.trip.count7801 = zext nneg i32 %i.al to i64
  br label %_ZN4ncnn3MatD2Ev.exit2274

._crit_edge6760:                                  ; preds = %._crit_edge6758.split, %bb.a
  %i.az = shl nsw i32 %i.al, 3
  %i.ba = add nsw i32 %i.az, %i.aj                ; 3 uses
  %i.bb = sub nsw i32 %i.s, %i.ba                 ; 2 uses
  %i.bc = sdiv i32 %i.bb, 4                       ; 3 uses
  store i32 %i.bc, ptr %i.m, align 4, !tbaa !63
  %i.bd = icmp sgt i32 %i.bb, 3
  br i1 %i.bd, label %_ZN4ncnn3MatD2Ev.exit2230.lr.ph, label %._crit_edge7053

_ZN4ncnn3MatD2Ev.exit2230.lr.ph:                  ; preds = %._crit_edge6760
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 13 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 12 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 12 uses
  %i.bp = sext i32 %i.ba to i64
  %wide.trip.count7884 = zext nneg i32 %i.bc to i64
  br label %_ZN4ncnn3MatD2Ev.exit2230

_ZN4ncnn3MatD2Ev.exit2274:                        ; preds = %_ZN4ncnn3MatD2Ev.exit2274.lr.ph, %._crit_edge6758.split
  %indvars.iv7798 = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit2274.lr.ph ], [ %indvars.iv.next7799, %._crit_edge6758.split ] ; 2 uses
  %i.bq = load i32, ptr %i.an, align 8, !tbaa !62
  %.fr = freeze i32 %i.bq                         ; 8 uses
  %i.br = load i32, ptr %i.ao, align 8, !tbaa !64
  %i.bs = mul i32 %i.br, %.fr                     ; 14 uses
  %i.bt = load i32, ptr %i.ap, align 4, !tbaa !55 ; 6 uses
  %i.bu = load i32, ptr %i.aq, align 8, !tbaa !67 ; 5 uses
  %i.bv = load i32, ptr %i.ar, align 4, !tbaa !55 ; 2 uses
  %i.bw = load i32, ptr %i.as, align 8, !tbaa !67 ; 2 uses
  %i.bx = load i32, ptr %i.o, align 8, !tbaa !62  ; 2 uses
  %i.by = icmp sgt i32 %i.bw, 0
  br i1 %i.by, label %.preheader6474.lr.ph, label %._crit_edge6758.split

.preheader6474.lr.ph:                             ; preds = %_ZN4ncnn3MatD2Ev.exit2274
  %i.bz = shl nuw nsw i64 %indvars.iv7798, 3
  %i.ca = add nsw i64 %i.bz, %i.ay                ; 2 uses
  %i.cb = trunc nsw i64 %i.ca to i32              ; 3 uses
  %i.cc = icmp sgt i32 %i.bv, 0
  %i.cd = load ptr, ptr %i.l, align 8             ; 2 uses
  %.not2121 = icmp eq ptr %i.cd, null
  %i.ce = getelementptr inbounds [4 x i8], ptr %i.cd, i64 %i.ca
  %i.cf = sdiv i32 %i.cb, 16
  %i.cg = srem i32 %i.cb, 16
  %i.ch = ashr exact i32 %i.cg, 3
  %i.ci = add nsw i32 %i.ch, %i.cf
  %i.cj = sext i32 %i.ci to i64
  %i.ck = icmp sgt i32 %i.bs, 15
  %i.cl = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %.fr)
  %i.cm = icmp eq i32 %i.cl, 1
  %i.cn = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.fr, i1 true)
  %i.co = icmp eq i32 %.fr, 1
  %i.cp = load i32, ptr %i.g, align 4
  br i1 %i.cc, label %.preheader6474.preheader, label %._crit_edge6758.split

.preheader6474.preheader:                         ; preds = %.preheader6474.lr.ph
  %i.cq = load ptr, ptr %1, align 8, !tbaa !20, !noalias !1464
  %i.cr = load i64, ptr %i.t, align 8, !tbaa !21, !noalias !1464
  %i.cs = sdiv i32 %i.cb, %i.bx
  %i.ct = sext i32 %i.cs to i64
  %i.cu = mul i64 %i.cr, %i.ct
  %i.cv = load i64, ptr %i.at, align 8, !tbaa !56, !noalias !1464
  %i.cw = mul i64 %i.cu, %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cw
  %i.cy = add i32 %i.bs, -16                      ; 3 uses
  %i.cz = lshr i32 %i.cy, 2
  %i.da = and i32 %i.cz, 1073741820
  %narrow = add nuw nsw i32 %i.da, 4
  %i.db = zext nneg i32 %narrow to i64
  %i.dc = and i32 %i.cy, -16
  %i.dd = add nuw i32 %i.dc, 16
  %i.de = sext i32 %i.bs to i64
  %i.df = and i32 %i.cy, -16
  %i.dg = add i32 %i.df, 16
  %i.dh = add i32 %i.bs, -8
  %i.di = add i32 %i.bs, -4
  %i.dj = add i32 %i.bs, -2                       ; 2 uses
  %invariant.op8351 = add nsw i64 %i.de, -15
  br label %.preheader6474

.preheader6474:                                   ; preds = %.preheader6474.preheader, %._crit_edge
  %.018066757 = phi ptr [ %.4, %._crit_edge ], [ %i.cx, %.preheader6474.preheader ]
  %.018076756 = phi i32 [ %.neg6398, %._crit_edge ], [ 0, %.preheader6474.preheader ]
  %i.dk = load i32, ptr %i.b, align 4             ; 6 uses
  %i.dl = icmp sgt i32 %i.dk, 0                   ; 5 uses
  %.neg6398 = add nuw nsw i32 %.018076756, 1      ; 7 uses
  %i.dm = load i32, ptr %i.k, align 4             ; 5 uses
  %i.dn = shl i32 %i.dm, 7
  %i.do = sext i32 %i.dn to i64                   ; 2 uses
  %i.dp = shl i32 %i.dm, 6
  %i.dq = sext i32 %i.dp to i64                   ; 2 uses
  %i.dr = shl i32 %i.dm, 5
  %i.ds = sext i32 %i.dr to i64                   ; 2 uses
  %i.dt = shl i32 %i.dm, 4
  %i.du = sext i32 %i.dt to i64                   ; 3 uses
  %i.dv = shl nsw i32 %i.dm, 3
  %i.dw = sext i32 %i.dv to i64
  %i.dx = load i64, ptr %i.h, align 8             ; 8 uses
  %.idx2122 = shl i64 %i.dx, 3
  %.idx2123 = mul i64 %i.dx, 12
  %.idx2124 = shl i64 %i.dx, 4
  %.idx2125 = mul i64 %i.dx, 20
end_hunk_0
