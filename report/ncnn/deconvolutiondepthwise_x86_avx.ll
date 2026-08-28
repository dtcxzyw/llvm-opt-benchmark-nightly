Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/deconvolutiondepthwise_x86_avx?download=true
inline.NumInlined: 74
inline.NumDeleted: 43
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZNK4ncnn30DeconvolutionDepthWise_x86_avx7forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.1:bb.a
  %i.je = getelementptr inbounds [4 x i8], ptr %i.it, i64 %i.jd
  %i.jf = load <4 x float>, ptr %i.je, align 1, !tbaa !116
  %i.jg = trunc i64 %indvars.iv to i32
  %i.jh = add i32 %i.iu, %i.jg
  %i.ji = shl nsw i32 %i.jh, 2
  %i.jj = zext nneg i32 %i.ji to i64
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.jj
  %i.jl = load <4 x float>, ptr %i.jk, align 1, !tbaa !116
  %i.jm = fmul fast <4 x float> %i.jl, %i.jf
  %i.jn = fadd fast <4 x float> %i.jm, %.2220
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.k, %bb.l
  %.3 = phi nsz <4 x float> [ %.2220, %bb.k ], [ %i.jn, %bb.n ], [ %.2220, %bb.m ], [ %.2220, %bb.l ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.k, !llvm.loop !157

.loopexit:                                        ; preds = %bb.o, %.preheader, %bb.j, %bb.h, %bb.i
  %.4 = phi nsz <4 x float> [ %.1211222, %bb.h ], [ %.1211222, %bb.i ], [ %.1211222, %bb.j ], [ %.1211222, %.preheader ], [ %.3, %bb.o ] ; 2 uses
  %i.jo = add nuw nsw i32 %.054223, 1             ; 2 uses
  %exitcond241.not = icmp eq i32 %i.jo, %i.bs
  br i1 %exitcond241.not, label %._crit_edge, label %bb.h, !llvm.loop !158

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit:      ; preds = %bb.g, %.noexc78, %.noexc77, %bb.f, %.noexc76, %bb.e, %._crit_edge
  %.0.i = phi nsz <4 x float> [ %i.ig, %bb.g ], [ %i.bx, %bb.e ], [ %i.cf, %.noexc76 ], [ %i.cp, %bb.f ], [ %i.dw, %.noexc77 ], [ %i.ht, %.noexc78 ], [ %.1211.lcssa, %._crit_edge ]
  store <4 x float> %.0.i, ptr %.1228, align 1, !tbaa !116
  %i.jp = getelementptr inbounds nuw i8, ptr %.1228, i64 16 ; 2 uses
  %i.jq = add nuw nsw i32 %.055229, 1             ; 2 uses
  %i.jr = load i32, ptr %8, align 4, !tbaa !74    ; 2 uses
  %i.js = icmp slt i32 %i.jq, %i.jr
  br i1 %i.js, label %.lr.ph230, label %._crit_edge231.loopexit, !llvm.loop !159

._crit_edge237:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit, %_ZN4ncnn3MatD2Ev.exit68.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge237, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn30DeconvolutionDepthWise_x86_avx7forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.2(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %12) #14 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !74     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.w

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !74
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 %i.g, ptr %i.b, align 4, !tbaa !74
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 1, ptr %i.c, align 4, !tbaa !74
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !74
  %i.h = load i32, ptr %0, align 4, !tbaa !74     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !74
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !74
  %i.k = load i32, ptr %i.a, align 4, !tbaa !74   ; 2 uses
  %.not132 = icmp sgt i32 %i.k, %i.j
  br i1 %.not132, label %._crit_edge134.split, label %_ZN4ncnn3MatD2Ev.exit76.lr.ph

_ZN4ncnn3MatD2Ev.exit76.lr.ph:                    ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !18, !noalias !160
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !160
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !72, !noalias !160
  %factor.op.mul = mul i64 %i.n, %i.p
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 536
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !18
  %i.s = load i32, ptr %5, align 4, !tbaa !74
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 44
  %i.u = load i32, ptr %i.t, align 4, !tbaa !82, !noalias !163
  %i.v = load ptr, ptr %6, align 8, !tbaa !18, !noalias !163
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.x = load i64, ptr %i.w, align 8, !tbaa !20, !noalias !163
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !72, !noalias !163 ; 2 uses
  %factor.op.mul136 = mul i64 %i.x, %i.z
  %i.aa = sext i32 %i.u to i64
  %i.ab = load i32, ptr %7, align 4, !tbaa !74    ; 2 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 268
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 440
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 216
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 224
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 232
  %i.ai = mul i64 %i.z, %i.aa
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 212
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 220
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 228
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 280
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 288 ; 3 uses
  br i1 %i.ac, label %_ZN4ncnn3MatD2Ev.exit76.lr.ph.split, label %._crit_edge134.split

_ZN4ncnn3MatD2Ev.exit76.lr.ph.split:              ; preds = %_ZN4ncnn3MatD2Ev.exit76.lr.ph
  %i.ao = load i32, ptr %8, align 4, !tbaa !74    ; 2 uses
  %i.ap = icmp sgt i32 %i.ao, 0
  br i1 %i.ap, label %_ZN4ncnn3MatD2Ev.exit76.lr.ph.split.split, label %._crit_edge134.split

_ZN4ncnn3MatD2Ev.exit76.lr.ph.split.split:        ; preds = %_ZN4ncnn3MatD2Ev.exit76.lr.ph.split
  %i.aq = load i32, ptr %i.ad, align 4, !tbaa !86
  %.not71 = icmp eq i32 %i.aq, 0
  %i.ar = load i32, ptr %i.af, align 8, !tbaa !44 ; 2 uses
  %i.as = icmp sgt i32 %i.ar, 0
  %i.at = load i32, ptr %i.am, align 8, !tbaa !112
  %i.au = sext i32 %i.k to i64
  %i.av = sext i32 %i.s to i64
  %i.aw = add nsw i32 %i.j, 1
  br label %_ZN4ncnn3MatD2Ev.exit76

_ZN4ncnn3MatD2Ev.exit76:                          ; preds = %_ZN4ncnn3MatD2Ev.exit76.lr.ph.split.split, %._ZN4ncnn3MatD2Ev.exit_crit_edge
  %indvars.iv143 = phi i64 [ %i.au, %_ZN4ncnn3MatD2Ev.exit76.lr.ph.split.split ], [ %indvars.iv.next144, %._ZN4ncnn3MatD2Ev.exit_crit_edge ] ; 5 uses
  %.reass135 = mul i64 %factor.op.mul, %indvars.iv143
  %i.ax = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass135
  %i.ay = mul nsw i64 %indvars.iv143, %i.av
  %i.az = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.ay
  %.reass137 = mul i64 %factor.op.mul136, %indvars.iv143
  %i.ba = getelementptr inbounds nuw i8, ptr %i.v, i64 %.reass137
  br label %.preheader

.preheader:                                       ; preds = %_ZN4ncnn3MatD2Ev.exit76, %._crit_edge128
  %.063131 = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit76 ], [ %.neg114, %._crit_edge128 ]
  %.064130 = phi ptr [ %i.ax, %_ZN4ncnn3MatD2Ev.exit76 ], [ %i.dp, %._crit_edge128 ]
  %.neg114 = add nuw nsw i32 %.063131, 1          ; 3 uses
  br label %bb.c

._ZN4ncnn3MatD2Ev.exit_crit_edge:                 ; preds = %._crit_edge128
  %indvars.iv.next144 = add nsw i64 %indvars.iv143, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next144 to i32
  %exitcond146.not = icmp eq i32 %i.aw, %lftr.wideiv
  br i1 %exitcond146.not, label %._crit_edge134.split, label %_ZN4ncnn3MatD2Ev.exit76

._crit_edge128:                                   ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit
  %exitcond142.not.a = icmp eq i32 %.neg114, %i.ab
  br i1 %exitcond142.not.a, label %._ZN4ncnn3MatD2Ev.exit_crit_edge, label %.preheader, !llvm.loop !166

bb.c:                                             ; preds = %.preheader, %_ZL13activation_ssfiRKN4ncnn3MatE.exit
  %.062126 = phi i32 [ 0, %.preheader ], [ %i.dq, %_ZL13activation_ssfiRKN4ncnn3MatE.exit ] ; 2 uses
  %.165125 = phi ptr [ %.064130, %.preheader ], [ %i.dp, %_ZL13activation_ssfiRKN4ncnn3MatE.exit ] ; 2 uses
  br i1 %.not71, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bb = load ptr, ptr %i.ae, align 8, !tbaa !18
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv143
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !53
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.061 = phi nsz float [ %i.bd, %bb.d ], [ 0.000000e+00, %bb.c ] ; 2 uses
  br i1 %i.as, label %.lr.ph121, label %._crit_edge

.lr.ph121:                                        ; preds = %bb.e
  %i.be = load i32, ptr %i.ag, align 8, !tbaa !101
  %i.bf = load i32, ptr %9, align 4, !tbaa !74
  %invariant.op123 = sub i32 %.neg114, %i.bf
  %.neg116 = add nuw nsw i32 %.062126, 1
  br label %bb.n

._crit_edge:                                      ; preds = %.loopexit, %bb.e
  %.1.lcssa = phi float [ %.061, %bb.e ], [ %.6, %.loopexit ] ; 13 uses
  switch i32 %i.at, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit [
    i32 1, label %bb.f
    i32 2, label %bb.g
    i32 3, label %bb.h
    i32 4, label %bb.i
    i32 5, label %bb.j
    i32 6, label %bb.k
  ]

bb.f:                                             ; preds = %._crit_edge
  %i.bg = call fast float @llvm.maxnum.f32(float nofpclass(nan inf) %.1.lcssa, float 0.000000e+00)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.g:                                             ; preds = %._crit_edge
  %i.bh = load ptr, ptr %i.an, align 8, !tbaa !18
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !53
  %i.bj = fcmp fast ogt float %.1.lcssa, 0.000000e+00
  %i.bk = select fast i1 %i.bj, float 1.000000e+00, float %i.bi
  %i.bl = fmul fast float %i.bk, %.1.lcssa
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.h:                                             ; preds = %._crit_edge
  %i.bm = load ptr, ptr %i.an, align 8, !tbaa !18 ; 2 uses
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !53
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !53 ; 2 uses
  %.0112 = call nnan ninf nsz float @llvm.maxnum.f32(float %.1.lcssa, float %i.bn) ; 2 uses
  %13 = fcmp fast ogt float %.0112, %i.bp
  br i1 %13, label %14, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

14:                                               ; preds = %bb.h
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.i:                                             ; preds = %._crit_edge
  %.sroa.speculated103 = call nnan ninf nsz float @llvm.minnum.f32(float %.1.lcssa, float f0x42B0C0A5)
  %.sroa.speculated = call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated103, float f0xC2B0C0A5)
  %i.bq = fneg fast float %.sroa.speculated
  %i.br = call fast float @llvm.exp.f32(float %i.bq)
  %i.bs = fadd fast float %i.br, 1.000000e+00
  %i.bt = fdiv fast float 1.000000e+00, %i.bs
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.j:                                             ; preds = %._crit_edge
  %i.bu = call fast float @llvm.exp.f32(float nofpclass(nan inf) %.1.lcssa)
  %i.bv = fadd fast float %i.bu, 1.000000e+00
  %i.bw = call fast float @llvm.log.f32(float %i.bv)
  %i.bx = call fast float @llvm.tanh.f32(float %i.bw)
  %i.by = fmul fast float %i.bx, %.1.lcssa
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.k:                                             ; preds = %._crit_edge
  %i.bz = load ptr, ptr %i.an, align 8, !tbaa !18 ; 2 uses
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !53 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !53 ; 2 uses
  %i.cd = fneg fast float %i.cc
  %i.ce = fdiv fast float %i.cd, %i.ca            ; 2 uses
  %i.cf = fcmp fast olt float %.1.lcssa, %i.ce
  br i1 %i.cf, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cg = fdiv fast float 1.000000e+00, %i.ca
  %i.ch = fadd fast float %i.ce, %i.cg
  %i.ci = fcmp fast ogt float %.1.lcssa, %i.ch
  br i1 %i.ci, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cj = fmul fast float %i.ca, %.1.lcssa
  %i.ck = fadd fast float %i.cj, %i.cc
  %i.cl = fmul fast float %i.ck, %.1.lcssa
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.n:                                             ; preds = %.lr.ph121, %.loopexit
  %.060120 = phi i32 [ 0, %.lr.ph121 ], [ %i.do, %.loopexit ] ; 3 uses
  %.1119 = phi float [ %.061, %.lr.ph121 ], [ %.6, %.loopexit ] ; 5 uses
  %i.cm = mul nsw i32 %i.be, %.060120
  %.reass124 = add i32 %i.cm, %invariant.op123    ; 3 uses
  %i.cn = icmp slt i32 %.reass124, 0
  br i1 %i.cn, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.co = load i32, ptr %i.ah, align 8, !tbaa !103 ; 2 uses
  %i.cp = srem i32 %.reass124, %i.co
  %i.cq = sdiv i32 %.reass124, %i.co              ; 2 uses
  %.not72 = icmp eq i32 %i.cp, 0
  br i1 %.not72, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %bb.o
  %i.cr = load i32, ptr %10, align 4, !tbaa !74
  %.not73 = icmp slt i32 %i.cq, %i.cr
  br i1 %.not73, label %bb.q, label %.loopexit

bb.q:                                             ; preds = %bb.p
  %i.cs = sext i32 %i.cq to i64
  %i.ct = mul i64 %i.ai, %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.ct
  %i.cv = load i32, ptr %i.aj, align 4, !tbaa !43 ; 3 uses
  %i.cw = icmp sgt i32 %i.cv, 0
  br i1 %i.cw, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.q
  %i.cx = load i32, ptr %i.ak, align 4, !tbaa !100
  %i.cy = load i32, ptr %11, align 4, !tbaa !74
  %invariant.op = sub i32 %.neg116, %i.cy
  %i.cz = mul nuw nsw i32 %i.cv, %.060120
  %i.da = zext nneg i32 %i.cz to i64
  %wide.trip.count = zext nneg i32 %i.cv to i64
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.da
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph, %bb.v
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.v ] ; 3 uses
  %.2117 = phi float [ %.1119, %.lr.ph ], [ %.4, %bb.v ] ; 4 uses
  %i.db = trunc i64 %indvars.iv to i32
  %i.dc = mul i32 %i.cx, %i.db
  %.reass = add i32 %i.dc, %invariant.op          ; 3 uses
  %i.dd = icmp slt i32 %.reass, 0
  br i1 %i.dd, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.de = load i32, ptr %i.al, align 4, !tbaa !102 ; 2 uses
  %i.df = srem i32 %.reass, %i.de
  %i.dg = sdiv i32 %.reass, %i.de                 ; 2 uses
  %.not74 = icmp eq i32 %i.df, 0
  br i1 %.not74, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.dh = load i32, ptr %12, align 4, !tbaa !74
  %.not75 = icmp slt i32 %i.dg, %i.dh
  br i1 %.not75, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.di = sext i32 %i.dg to i64
  %i.dj = getelementptr inbounds [4 x i8], ptr %i.cu, i64 %i.di
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !53
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.dl = load float, ptr %gep, align 4, !tbaa !53
  %i.dm = fmul fast float %i.dl, %i.dk
  %i.dn = fadd fast float %i.dm, %.2117
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.r, %bb.s
  %.4 = phi nsz float [ %.2117, %bb.r ], [ %.2117, %bb.s ], [ %i.dn, %bb.u ], [ %.2117, %bb.t ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.r, !llvm.loop !167

.loopexit:                                        ; preds = %bb.v, %bb.q, %bb.p, %bb.n, %bb.o
  %.6 = phi nsz float [ %.1119, %bb.n ], [ %.1119, %bb.o ], [ %.1119, %bb.p ], [ %.1119, %bb.q ], [ %.4, %bb.v ] ; 2 uses
  %i.do = add nuw nsw i32 %.060120, 1             ; 2 uses
  %exitcond140.not = icmp eq i32 %i.do, %i.ar
  br i1 %exitcond140.not, label %._crit_edge, label %bb.n, !llvm.loop !168

_ZL13activation_ssfiRKN4ncnn3MatE.exit:           ; preds = %bb.m, %bb.l, %bb.j, %bb.i, %14, %bb.h, %bb.g, %bb.f, %._crit_edge, %bb.k
  %.1113 = phi nsz float [ %.1.lcssa, %._crit_edge ], [ %i.bg, %bb.f ], [ %i.bl, %bb.g ], [ %i.bp, %14 ], [ %.0112, %bb.h ], [ %i.bt, %bb.i ], [ %i.by, %bb.j ], [ %i.cl, %bb.m ], [ %.1.lcssa, %bb.l ], [ 0.000000e+00, %bb.k ]
  store float %.1113, ptr %.165125, align 4, !tbaa !53
  %i.dp = getelementptr inbounds nuw i8, ptr %.165125, i64 4 ; 2 uses
  %i.dq = add nuw nsw i32 %.062126, 1             ; 2 uses
  %exitcond141.not = icmp eq i32 %i.dq, %i.ao
  br i1 %exitcond141.not, label %._crit_edge128, label %bb.c, !llvm.loop !169

._crit_edge134.split:                             ; preds = %._ZN4ncnn3MatD2Ev.exit_crit_edge, %_ZN4ncnn3MatD2Ev.exit76.lr.ph, %_ZN4ncnn3MatD2Ev.exit76.lr.ph.split, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge134.split, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #8

declare void @_ZNK4ncnn22DeconvolutionDepthWise11cut_paddingERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(512), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.max.ps.256(<8 x float>, <8 x float>) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.min.ps.256(<8 x float>, <8 x float>) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.round.ps.256(<8 x float>, i32 immarg) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float>) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.max.ps(<4 x float>, <4 x float>) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.min.ps(<4 x float>, <4 x float>) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp.f32(float) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log.f32(float) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.tanh.f32(float) #17

declare void @_ZN4ncnn7flattenERKNS_3MatERS0_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

attributes #0 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn }
attributes #5 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { noreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { nobuiltin allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="256" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #12 = { nounwind }
attributes #13 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #14 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #21 = { noreturn nounwind }
attributes #22 = { builtin nounwind }
attributes #23 = { noreturn }
attributes #24 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"vtable pointer", !8, i64 0}
!11 = !{!12, !14, i64 8}
!12 = !{!"_ZTSN4ncnn3MatE", !13, i64 0, !14, i64 8, !15, i64 16, !6, i64 24, !16, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !15, i64 64}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!"p1 int", !13, i64 0}
!15 = !{!"long", !7, i64 0}
!16 = !{!"p1 _ZTSN4ncnn9AllocatorE", !13, i64 0}
!17 = !{!12, !16, i64 32}
!18 = !{!12, !13, i64 0}
!19 = distinct !{null}
!20 = !{!12, !15, i64 64}
!21 = !{!22, !23, i64 0}
!22 = !{!"_ZTSNSt12_Vector_baseIPN4ncnn5LayerESaIS2_EE17_Vector_impl_dataE", !23, i64 0, !23, i64 8, !23, i64 16}
!23 = !{!"p2 _ZTSN4ncnn5LayerE", !24, i64 0}
!24 = !{!"any p2 pointer", !13, i64 0}
!25 = !{!22, !23, i64 16}
!26 = !{ptr @_ZN4ncnn30DeconvolutionDepthWise_x86_avxD2Ev}
!27 = !{!28, !6, i64 360}
!28 = !{!"_ZTSN4ncnn22DeconvolutionDepthWiseE", !29, i64 0, !6, i64 208, !6, i64 212, !6, i64 216, !6, i64 220, !6, i64 224, !6, i64 228, !6, i64 232, !6, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !12, i64 288, !6, i64 360, !12, i64 368, !12, i64 440}
!29 = !{!"_ZTSN4ncnn5LayerE", !30, i64 8, !30, i64 9, !30, i64 10, !30, i64 11, !30, i64 12, !30, i64 13, !30, i64 14, !30, i64 15, !30, i64 16, !30, i64 17, !30, i64 18, !30, i64 19, !30, i64 20, !30, i64 21, !30, i64 22, !30, i64 23, !30, i64 24, !30, i64 25, !30, i64 26, !30, i64 27, !6, i64 28, !13, i64 32, !6, i64 40, !31, i64 48, !31, i64 80, !34, i64 112, !34, i64 136, !38, i64 160, !38, i64 184}
!30 = !{!"bool", !7, i64 0}
!31 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !32, i64 0, !15, i64 8, !7, i64 16}
!32 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !33, i64 0}
!33 = !{!"p1 omnipotent char", !13, i64 0}
!34 = !{!"_ZTSSt6vectorIiSaIiEE", !35, i64 0}
!35 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !36, i64 0}
!36 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !37, i64 0}
!37 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !14, i64 0, !14, i64 8, !14, i64 16}
!38 = !{!"_ZTSSt6vectorIN4ncnn3MatESaIS1_EE", !39, i64 0}
!39 = !{!"_ZTSSt12_Vector_baseIN4ncnn3MatESaIS1_EE", !40, i64 0}
!40 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE12_Vector_implE", !41, i64 0}
!41 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE17_Vector_impl_dataE", !42, i64 0, !42, i64 8, !42, i64 16}
!42 = !{!"p1 _ZTSN4ncnn3MatE", !13, i64 0}
!43 = !{!28, !6, i64 212}
!44 = !{!28, !6, i64 216}
!45 = !{!28, !6, i64 272}
!46 = !{!28, !6, i64 276}
!47 = !{!28, !6, i64 208}
!48 = !{!49, !30, i64 39}
!49 = !{!"_ZTSN4ncnn6OptionE", !30, i64 0, !30, i64 1, !30, i64 2, !30, i64 3, !6, i64 4, !16, i64 8, !16, i64 16, !6, i64 24, !30, i64 28, !30, i64 29, !30, i64 30, !30, i64 31, !30, i64 32, !30, i64 33, !30, i64 34, !30, i64 35, !30, i64 36, !30, i64 37, !30, i64 38, !30, i64 39, !6, i64 40, !30, i64 44, !30, i64 45, !30, i64 46, !30, i64 47, !7, i64 48, !30, i64 49, !30, i64 50, !30, i64 51, !30, i64 52, !30, i64 53, !30, i64 54, !30, i64 55, !30, i64 56, !30, i64 57, !30, i64 58, !30, i64 59, !30, i64 60, !30, i64 61, !30, i64 62, !30, i64 63}
!50 = !{i8 0, i8 2}
!51 = !{}
!52 = !{!28, !6, i64 412}
!53 = !{!54, !54, i64 0}
!54 = !{!"float", !7, i64 0}
!55 = !{!56}
!56 = distinct !{!56, !57}
!57 = distinct !{!57, !"LVerDomain"}
!58 = !{!59}
!59 = distinct !{!59, !57}
!60 = distinct !{!60, !61, !62, !63}
!61 = !{!"llvm.loop.mustprogress"}
!62 = !{!"llvm.loop.isvectorized", i32 1}
!63 = !{!"llvm.loop.unroll.runtime.disable"}
!64 = !{!"branch_weights", i32 8, i32 24}
!65 = distinct !{!65, !61, !62, !63}
!66 = distinct !{!66, !67}
!67 = !{!"llvm.loop.unroll.disable"}
!68 = distinct !{!68, !61}
!69 = distinct !{!69, !61, !62}
!70 = distinct !{null}
!71 = !{!13, !13, i64 0}
!72 = !{!12, !15, i64 16}
!73 = !{!12, !6, i64 24}
!74 = !{!6, !6, i64 0}
!75 = !{!12, !6, i64 56}
!76 = !{!49, !30, i64 0}
!77 = !{!22, !23, i64 8}
!78 = !{!79, !79, i64 0}
!79 = !{!"p1 _ZTSN4ncnn5LayerE", !13, i64 0}
!80 = distinct !{!80, !61}
!81 = !{!41, !42, i64 0}
!82 = !{!12, !6, i64 44}
!83 = !{!12, !6, i64 48}
!84 = !{!12, !6, i64 52}
!85 = !{!49, !16, i64 16}
!86 = !{!28, !6, i64 268}
!87 = distinct !{!87, !61}
!88 = !{!89}
!89 = distinct !{!89, !90}
!90 = distinct !{!90, !"LVerDomain"}
end_hunk_0
