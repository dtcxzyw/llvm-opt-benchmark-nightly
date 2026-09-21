Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolutiondepthwise?download=true
inline.NumInlined: 58
inline.NumDeleted: 35
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN4ncnnL20convolutiondepthwiseERKNS_3MatERS0_S2_S2_iiiiiiiiS2_RKNS_6OptionE.omp_outlined.1:bb.a
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %.074124.us, i64 %indvars.iv
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !62
  %i.ci = fmul fast float %i.ch, %i.cf
  %i.cj = fadd fast float %i.ci, %.2120.us
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv.next
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !58
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds [4 x i8], ptr %gep128.us, i64 %i.cm
  %i.co = load float, ptr %i.cn, align 4, !tbaa !62
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %.074124.us, i64 %indvars.iv.next
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !62
  %i.cr = fmul fast float %i.cq, %i.co
  %i.cs = fadd fast float %i.cr, %i.cj
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv.next.1
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !58
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr inbounds [4 x i8], ptr %gep128.us, i64 %i.cv
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !62
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %.074124.us, i64 %indvars.iv.next.1
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !62
  %i.da = fmul fast float %i.cz, %i.cx
  %i.db = fadd fast float %i.da, %i.cs
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv.next.2
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !58
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr inbounds [4 x i8], ptr %gep128.us, i64 %i.de
  %i.dg = load float, ptr %i.df, align 4, !tbaa !62
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %.074124.us, i64 %indvars.iv.next.2
  %i.di = load float, ptr %i.dh, align 4, !tbaa !62
  %i.dj = fmul fast float %i.di, %i.dg
  %i.dk = fadd fast float %i.dj, %i.db            ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._ZN4ncnn3MatD2Ev.exit_crit_edge.us.unr-lcssa, label %_ZNK4ncnn3Mat7channelEi.exit.us.new, !llvm.loop !134

._ZN4ncnn3MatD2Ev.exit_crit_edge.us.unr-lcssa:    ; preds = %_ZNK4ncnn3Mat7channelEi.exit.us.new
  br i1 %lcmp.mod.not, label %._ZN4ncnn3MatD2Ev.exit_crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._ZN4ncnn3MatD2Ev.exit_crit_edge.us.unr-lcssa, %_ZNK4ncnn3Mat7channelEi.exit.us
  %indvars.iv.epil.init = phi i64 [ 0, %_ZNK4ncnn3Mat7channelEi.exit.us ], [ %indvars.iv.next.3, %._ZN4ncnn3MatD2Ev.exit_crit_edge.us.unr-lcssa ]
  %.2120.us.epil.init = phi float [ %.1123.us, %_ZNK4ncnn3Mat7channelEi.exit.us ], [ %i.dk, %._ZN4ncnn3MatD2Ev.exit_crit_edge.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod168)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.f ] ; 3 uses
  %.2120.us.epil = phi float [ %.2120.us.epil.init, %.epil.preheader ], [ %i.dt, %bb.f ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.f ]
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv.epil
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !58
  %i.dn = sext i32 %i.dm to i64
  %i.do = getelementptr inbounds [4 x i8], ptr %gep128.us, i64 %i.dn
  %i.dp = load float, ptr %i.do, align 4, !tbaa !62
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %.074124.us, i64 %indvars.iv.epil
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !62
  %i.ds = fmul fast float %i.dr, %i.dp
  %i.dt = fadd fast float %i.ds, %.2120.us.epil   ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._ZN4ncnn3MatD2Ev.exit_crit_edge.us, label %bb.f, !llvm.loop !135

._ZN4ncnn3MatD2Ev.exit_crit_edge.us:              ; preds = %bb.f, %._ZN4ncnn3MatD2Ev.exit_crit_edge.us.unr-lcssa
  %.lcssa = phi float [ %i.dk, %._ZN4ncnn3MatD2Ev.exit_crit_edge.us.unr-lcssa ], [ %i.dt, %bb.f ] ; 2 uses
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %.074124.us, i64 %i.ao
  %indvars.iv.next146 = add nuw nsw i64 %indvars.iv145, 1 ; 2 uses
  %exitcond149.not = icmp eq i64 %indvars.iv.next146, %wide.trip.count148
  br i1 %exitcond149.not, label %._crit_edge, label %_ZNK4ncnn3Mat7channelEi.exit.us, !llvm.loop !136

._crit_edge:                                      ; preds = %._ZN4ncnn3MatD2Ev.exit_crit_edge.us, %_ZNK4ncnn3Mat7channelEi.exit.lr.ph, %bb.e
  %.1.lcssa = phi float [ %.075, %bb.e ], [ %.075, %_ZNK4ncnn3Mat7channelEi.exit.lr.ph ], [ %.lcssa, %._ZN4ncnn3MatD2Ev.exit_crit_edge.us ] ; 13 uses
  switch i32 %i.am, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit [
    i32 1, label %bb.g
    i32 2, label %bb.h
    i32 3, label %bb.i
    i32 4, label %bb.k
    i32 5, label %bb.l
    i32 6, label %bb.m
  ]

bb.g:                                             ; preds = %._crit_edge
  %i.dv = call fast float @llvm.maxnum.f32(float nofpclass(nan inf) %.1.lcssa, float 0.000000e+00)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.h:                                             ; preds = %._crit_edge
  %i.dw = load ptr, ptr %15, align 8, !tbaa !20
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !62
  %i.dy = fcmp fast ogt float %.1.lcssa, 0.000000e+00
  %i.dz = select fast i1 %i.dy, float 1.000000e+00, float %i.dx
  %i.ea = fmul fast float %i.dz, %.1.lcssa
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.i:                                             ; preds = %._crit_edge
  %i.eb = load ptr, ptr %15, align 8, !tbaa !20   ; 2 uses
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !62
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 4
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !62 ; 2 uses
  %.0118 = call nnan ninf nsz float @llvm.maxnum.f32(float %.1.lcssa, float %i.ec) ; 2 uses
  %i.ef = fcmp fast ogt float %.0118, %i.ee
  br i1 %i.ef, label %bb.j, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.j:                                             ; preds = %bb.i
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.k:                                             ; preds = %._crit_edge
  %.sroa.speculated109 = call nnan ninf nsz float @llvm.minnum.f32(float %.1.lcssa, float f0x42B0C0A5)
  %.sroa.speculated = call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated109, float f0xC2B0C0A5)
  %i.eg = fneg fast float %.sroa.speculated
  %i.eh = call fast float @llvm.exp.f32(float %i.eg)
  %i.ei = fadd fast float %i.eh, 1.000000e+00
  %i.ej = fdiv fast float 1.000000e+00, %i.ei
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.l:                                             ; preds = %._crit_edge
  %i.ek = call fast float @llvm.exp.f32(float nofpclass(nan inf) %.1.lcssa)
  %i.el = fadd fast float %i.ek, 1.000000e+00
  %i.em = call fast float @llvm.log.f32(float %i.el)
  %i.en = call fast float @llvm.tanh.f32(float %i.em)
  %i.eo = fmul fast float %i.en, %.1.lcssa
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.m:                                             ; preds = %._crit_edge
  %i.ep = load ptr, ptr %15, align 8, !tbaa !20   ; 2 uses
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !62 ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 4
  %i.es = load float, ptr %i.er, align 4, !tbaa !62 ; 2 uses
  %i.et = fneg fast float %i.es
  %i.eu = fdiv fast float %i.et, %i.eq            ; 2 uses
  %i.ev = fcmp fast olt float %.1.lcssa, %i.eu
  br i1 %i.ev, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ew = fdiv fast float 1.000000e+00, %i.eq
  %i.ex = fadd fast float %i.eu, %i.ew
  %i.ey = fcmp fast ogt float %.1.lcssa, %i.ex
  br i1 %i.ey, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ez = fmul fast float %i.eq, %.1.lcssa
  %i.fa = fadd fast float %i.ez, %i.es
  %i.fb = fmul fast float %i.fa, %.1.lcssa
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

_ZL13activation_ssfiRKN4ncnn3MatE.exit:           ; preds = %bb.o, %bb.n, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %._crit_edge, %bb.m
  %.1119 = phi nsz float [ %.1.lcssa, %._crit_edge ], [ %i.dv, %bb.g ], [ %i.ea, %bb.h ], [ %i.ee, %bb.j ], [ %.0118, %bb.i ], [ %i.ej, %bb.k ], [ %i.eo, %bb.l ], [ %i.fb, %bb.o ], [ %.1.lcssa, %bb.n ], [ 0.000000e+00, %bb.m ]
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %.078131, i64 %indvars.iv150
  store float %.1119, ptr %i.fc, align 4, !tbaa !62
  %indvars.iv.next151 = add nuw nsw i64 %indvars.iv150, 1 ; 2 uses
  %exitcond154.not = icmp eq i64 %indvars.iv.next151, %wide.trip.count153
  br i1 %exitcond154.not, label %._crit_edge130, label %bb.c, !llvm.loop !137

._crit_edge136.split:                             ; preds = %._crit_edge133, %_ZN4ncnn3MatD2Ev.exit82.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge136.split, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_8(ptr, i32, i32, ptr, ptr, ptr, ptr, i64, i64) local_unnamed_addr #9

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #10

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #11

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp.f32(float) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log.f32(float) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.tanh.f32(float) #14

declare void @_ZN4ncnn7flattenERKNS_3MatERS0_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK4ncnn20ConvolutionDepthWise12make_paddingERKNS_3MatERS1_iiRKNS_6OptionE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(720) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %5) local_unnamed_addr #1 align 2 {
bb.a:
  %6 = alloca %"class.ncnn::Option", align 8      ; 5 uses
  %7 = alloca %"class.ncnn::Option", align 8      ; 5 uses
  %8 = alloca %"class.ncnn::Option", align 8      ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %9 = load <2 x i32>, ptr %i.a, align 4, !tbaa !58
  %10 = freeze <2 x i32> %9                       ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.c = add nsw i32 %3, -1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.e = load i32, ptr %i.b, align 4, !tbaa !41
  %i.f = load i32, ptr %i.d, align 8, !tbaa !42
  %i.g = mul nsw i32 %i.e, %i.c                   ; 2 uses
  %i.h = add nsw i32 %4, -1
  %i.i = mul nsw i32 %i.f, %i.h                   ; 2 uses
  %i.j = icmp eq ptr %2, %1
  br i1 %i.j, label %_ZN4ncnn3MataSERKS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !18   ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = atomicrmw add ptr %i.l, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !18   ; 2 uses
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %_ZN4ncnn3Mat7releaseEv.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = atomicrmw add ptr %i.o, i32 -1 acq_rel, align 4
  %i.q = icmp eq i32 %i.p, 1
  br i1 %i.q, label %bb.f, label %_ZN4ncnn3Mat7releaseEv.exit.i

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !19   ; 3 uses
  %.not3.i.i = icmp eq ptr %i.s, null
  %i.t = load ptr, ptr %2, align 8, !tbaa !20     ; 3 uses
  br i1 %.not3.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !12
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef %i.t), !inline_history !140
  br label %_ZN4ncnn3Mat7releaseEv.exit.i

bb.h:                                             ; preds = %bb.f
  %.not.i18.i = icmp eq ptr %i.t, null
  br i1 %.not.i18.i, label %_ZN4ncnn3Mat7releaseEv.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @free(ptr noundef nonnull %i.t) #9
  br label %_ZN4ncnn3Mat7releaseEv.exit.i

_ZN4ncnn3Mat7releaseEv.exit.i:                    ; preds = %bb.h, %bb.i, %bb.g, %bb.e, %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  store i64 0, ptr %i.ab, align 8, !tbaa !21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %2, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.z, i8 0, i64 20, i1 false)
  %i.ac = load <2 x ptr>, ptr %1, align 8, !tbaa !55
  store <2 x ptr> %i.ac, ptr %2, align 8, !tbaa !55
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !56
  store i64 %i.ae, ptr %i.x, align 8, !tbaa !56
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !57
  store i32 %i.ag, ptr %i.y, align 8, !tbaa !57
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !19
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !19
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.al = load <4 x i32>, ptr %i.ak, align 8, !tbaa !58
  store <4 x i32> %i.al, ptr %i.z, align 8, !tbaa !58
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.an = load i32, ptr %i.am, align 8, !tbaa !59
  store i32 %i.an, ptr %i.aa, align 8, !tbaa !59
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !21
  store i64 %i.ap, ptr %i.ab, align 8, !tbaa !21
  br label %_ZN4ncnn3MataSERKS0_.exit

_ZN4ncnn3MataSERKS0_.exit:                        ; preds = %bb.a, %_ZN4ncnn3Mat7releaseEv.exit.i
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !45 ; 4 uses
  %i.as = icmp sgt i32 %i.ar, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 240
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !46 ; 4 uses
  %i.at = icmp sgt i32 %.pre, 0
  %or.cond69 = select i1 %i.as, i1 true, i1 %i.at
  br i1 %or.cond69, label %_ZN4ncnn3MataSERKS0_.exit._crit_edge, label %bb.j

bb.j:                                             ; preds = %_ZN4ncnn3MataSERKS0_.exit
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.av = load i32, ptr %i.au, align 4, !tbaa !47 ; 3 uses
  %i.aw = icmp sgt i32 %i.av, 0
  br i1 %i.aw, label %_ZN4ncnn3MataSERKS0_.exit._crit_edge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !48 ; 3 uses
  %i.az = icmp sgt i32 %i.ay, 0
  br i1 %i.az, label %_ZN4ncnn3MataSERKS0_.exit._crit_edge, label %bb.l

_ZN4ncnn3MataSERKS0_.exit._crit_edge:             ; preds = %_ZN4ncnn3MataSERKS0_.exit, %bb.k, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 8 dereferenceable(64) %5, i64 64, i1 false), !tbaa.struct !76
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !77
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !68
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !47
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !48
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !49
  call void @_ZN4ncnn16copy_make_borderERKNS_3MatERS0_iiiiifRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.be, i32 noundef %i.bg, i32 noundef %i.ar, i32 noundef %.pre, i32 noundef 0, float noundef nofpclass(nan inf) %i.bi, ptr noundef nonnull align 8 dereferenceable(64) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  br label %bb.r

bb.l:                                             ; preds = %bb.k
  %i.bj = icmp eq i32 %i.ar, -233
  %i.bk = icmp eq i32 %.pre, -233
  %or.cond54 = and i1 %i.bj, %i.bk
  %i.bl = icmp eq i32 %i.av, -233
  %or.cond55 = and i1 %or.cond54, %i.bl
  %i.bm = icmp eq i32 %i.ay, -233
  %or.cond56 = and i1 %or.cond55, %i.bm
  br i1 %or.cond56, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bn = add nsw <2 x i32> %10, splat (i32 -1)
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.bp = load <2 x i32>, ptr %i.bo, align 4, !tbaa !58
  %i.bq = srem <2 x i32> %i.bn, %i.bp             ; 2 uses
  %11 = extractelement <2 x i32> %i.bq, i64 0
  %12 = sub i32 %i.g, %11                         ; 3 uses
  %13 = extractelement <2 x i32> %i.bq, i64 1
  %14 = sub i32 %i.i, %13                         ; 3 uses
  %15 = icmp sgt i32 %12, 0
  %16 = icmp sgt i32 %14, 0
  %or.cond = select i1 %15, i1 true, i1 %16
  br i1 %or.cond, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull align 8 dereferenceable(64) %5, i64 64, i1 false), !tbaa.struct !76
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !77
  %i.bt = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.bs, ptr %i.bt, align 8, !tbaa !68
  %17 = sdiv i32 %14, 2                           ; 2 uses
  %18 = sub nsw i32 %14, %17
  %19 = sdiv i32 %12, 2                           ; 2 uses
  %20 = sub nsw i32 %12, %19
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 252
  %22 = load float, ptr %21, align 4, !tbaa !49
  call void @_ZN4ncnn16copy_make_borderERKNS_3MatERS0_iiiiifRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %17, i32 noundef %18, i32 noundef %19, i32 noundef %20, i32 noundef 0, float noundef nofpclass(nan inf) %22, ptr noundef nonnull align 8 dereferenceable(64) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  br label %bb.r

bb.o:                                             ; preds = %bb.l
  %i.bu = icmp eq i32 %i.ar, -234
  %i.bv = icmp eq i32 %.pre, -234
  %or.cond57 = and i1 %i.bu, %i.bv
  %i.bw = icmp eq i32 %i.av, -234
  %or.cond58 = and i1 %or.cond57, %i.bw
  %i.bx = icmp eq i32 %i.ay, -234
  %or.cond59 = and i1 %or.cond58, %i.bx
  br i1 %or.cond59, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.bz = add <2 x i32> %10, splat (i32 -1)
  %i.ca = load <2 x i32>, ptr %i.by, align 4, !tbaa !58
  %i.cb = srem <2 x i32> %i.bz, %i.ca
  %i.cc = insertelement <2 x i32> poison, i32 %i.g, i64 0
  %i.cd = insertelement <2 x i32> %i.cc, i32 %i.i, i64 1
  %i.ce = sub <2 x i32> %i.cd, %i.cb              ; 3 uses
  %i.cf = icmp sgt <2 x i32> %i.ce, zeroinitializer ; 2 uses
  %i.cg = extractelement <2 x i1> %i.cf, i64 0
  %i.ch = extractelement <2 x i1> %i.cf, i64 1
  %or.cond3 = select i1 %i.cg, i1 true, i1 %i.ch
  br i1 %or.cond3, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %8, ptr noundef nonnull align 8 dereferenceable(64) %5, i64 64, i1 false), !tbaa.struct !76
  %i.ci = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !77
  %i.ck = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.cj, ptr %i.ck, align 8, !tbaa !68
  %i.cl = sdiv <2 x i32> %i.ce, splat (i32 2)     ; 3 uses
  %i.cm = sub nsw <2 x i32> %i.ce, %i.cl          ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.co = load float, ptr %i.cn, align 4, !tbaa !49
  %i.cp = extractelement <2 x i32> %i.cm, i64 0
  %i.cq = extractelement <2 x i32> %i.cm, i64 1
  %i.cr = extractelement <2 x i32> %i.cl, i64 0
  %i.cs = extractelement <2 x i32> %i.cl, i64 1
  call void @_ZN4ncnn16copy_make_borderERKNS_3MatERS0_iiiiifRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.cq, i32 noundef %i.cs, i32 noundef %i.cp, i32 noundef %i.cr, i32 noundef 0, float noundef nofpclass(nan inf) %i.co, ptr noundef nonnull align 8 dereferenceable(64) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.n, %bb.m, %bb.o, %_ZN4ncnn3MataSERKS0_.exit._crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #7

declare void @_ZN4ncnn16copy_make_borderERKNS_3MatERS0_iiiiifRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, float noundef nofpclass(nan inf), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn20ConvolutionDepthWise12forward_int8ERKNS_3MatERS1_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %8, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %9) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 264
  %i.f = load i32, ptr %i.e, align 8, !tbaa !52   ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.u

bb.b:                                             ; preds = %bb.a
  %i.h = add nsw i32 %i.f, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.h, ptr %i.b, align 4, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !58
  %i.i = load i32, ptr %0, align 4, !tbaa !58     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.i, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.j = load i32, ptr %i.b, align 4, !tbaa !58
  %i.k = call i32 @llvm.smin.i32(i32 %i.j, i32 %i.h) ; 3 uses
  store i32 %i.k, ptr %i.b, align 4, !tbaa !58
  %i.l = load i32, ptr %i.a, align 4, !tbaa !58   ; 2 uses
  %.not109 = icmp sgt i32 %i.l, %i.k
  br i1 %.not109, label %._crit_edge111, label %_ZN4ncnn3MatD2Ev.exit61.lr.ph

_ZN4ncnn3MatD2Ev.exit61.lr.ph:                    ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 360
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 232
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 228
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 504
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 576
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 432
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 272
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 280 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 648
  %i.ab = load i32, ptr %6, align 4, !tbaa !58    ; 3 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %_ZN4ncnn3MatD2Ev.exit61.preheader, label %._crit_edge111

_ZN4ncnn3MatD2Ev.exit61.preheader:                ; preds = %_ZN4ncnn3MatD2Ev.exit61.lr.ph
  %i.ad = sext i32 %i.l to i64
  br label %_ZN4ncnn3MatD2Ev.exit61

_ZN4ncnn3MatD2Ev.exit61:                          ; preds = %_ZN4ncnn3MatD2Ev.exit61.preheader, %_ZN4ncnn3MatD2Ev.exit
  %i.ae = phi i32 [ %i.k, %_ZN4ncnn3MatD2Ev.exit61.preheader ], [ %i.bi, %_ZN4ncnn3MatD2Ev.exit ] ; 2 uses
  %i.af = phi i32 [ %i.ab, %_ZN4ncnn3MatD2Ev.exit61.preheader ], [ %i.bj, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.ag = phi i32 [ %i.ab, %_ZN4ncnn3MatD2Ev.exit61.preheader ], [ %i.bk, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %indvars.iv115 = phi i64 [ %i.ad, %_ZN4ncnn3MatD2Ev.exit61.preheader ], [ %indvars.iv.next116, %_ZN4ncnn3MatD2Ev.exit ] ; 9 uses
  %i.ah = load ptr, ptr %i.o, align 8, !tbaa !20
  %i.ai = load i32, ptr %4, align 4, !tbaa !58
  %i.aj = sext i32 %i.ai to i64
  %i.ak = mul nsw i64 %indvars.iv115, %i.aj
  %i.al = getelementptr inbounds i8, ptr %i.ah, i64 %i.ak ; 5 uses
  %i.am = load ptr, ptr %5, align 8, !tbaa !20, !noalias !150
  %i.an = load i64, ptr %i.q, align 8, !tbaa !21, !noalias !150
  %i.ao = mul i64 %i.an, %indvars.iv115
  %i.ap = load i64, ptr %i.r, align 8, !tbaa !56, !noalias !150 ; 2 uses
  %i.aq = mul i64 %i.ao, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.aq
  %i.as = icmp sgt i32 %i.ag, 0
  br i1 %i.as, label %.preheader.lr.ph, label %_ZN4ncnn3MatD2Ev.exit

.preheader.lr.ph:                                 ; preds = %_ZN4ncnn3MatD2Ev.exit61
  %i.at = load i32, ptr %i.p, align 4, !tbaa !69, !noalias !150
  %i.au = sext i32 %i.at to i64
  %i.av = mul i64 %i.ap, %i.au
  %i.aw = load i32, ptr %7, align 4, !tbaa !58    ; 3 uses
  %i.ax = icmp sgt i32 %i.aw, 0
  br i1 %i.ax, label %.preheader.preheader, label %_ZN4ncnn3MatD2Ev.exit

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.ay = load ptr, ptr %3, align 8, !tbaa !20, !noalias !151
  %i.az = load i64, ptr %i.m, align 8, !tbaa !21, !noalias !151
  %i.ba = mul i64 %i.az, %indvars.iv115
  %i.bb = load i64, ptr %i.n, align 8, !tbaa !56, !noalias !151
  %i.bc = mul i64 %i.ba, %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bc
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge105
  %i.be = phi i32 [ %i.bm, %._crit_edge105 ], [ %i.af, %.preheader.preheader ]
  %i.bf = phi i32 [ %i.bn, %._crit_edge105 ], [ %i.aw, %.preheader.preheader ] ; 2 uses
  %i.bg = phi i32 [ %i.bo, %._crit_edge105 ], [ %i.aw, %.preheader.preheader ] ; 2 uses
  %.058108 = phi i32 [ %i.bp, %._crit_edge105 ], [ 0, %.preheader.preheader ] ; 2 uses
  %.059107 = phi ptr [ %.1.lcssa, %._crit_edge105 ], [ %i.bd, %.preheader.preheader ] ; 2 uses
  %i.bh = icmp sgt i32 %i.bg, 0
  br i1 %i.bh, label %.lr.ph104, label %._crit_edge105

_ZN4ncnn3MatD2Ev.exit.loopexit:                   ; preds = %._crit_edge105
  %.pre119 = load i32, ptr %i.b, align 4, !tbaa !58
  br label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %.preheader.lr.ph, %_ZN4ncnn3MatD2Ev.exit.loopexit, %_ZN4ncnn3MatD2Ev.exit61
  %i.bi = phi i32 [ %i.ae, %_ZN4ncnn3MatD2Ev.exit61 ], [ %.pre119, %_ZN4ncnn3MatD2Ev.exit.loopexit ], [ %i.ae, %.preheader.lr.ph ] ; 2 uses
  %i.bj = phi i32 [ %i.af, %_ZN4ncnn3MatD2Ev.exit61 ], [ %i.bm, %_ZN4ncnn3MatD2Ev.exit.loopexit ], [ %i.af, %.preheader.lr.ph ]
  %i.bk = phi i32 [ %i.ag, %_ZN4ncnn3MatD2Ev.exit61 ], [ %i.bm, %_ZN4ncnn3MatD2Ev.exit.loopexit ], [ %i.ag, %.preheader.lr.ph ]
  %indvars.iv.next116 = add nsw i64 %indvars.iv115, 1
  %i.bl = sext i32 %i.bi to i64
  %.not.not = icmp slt i64 %indvars.iv115, %i.bl
  br i1 %.not.not, label %_ZN4ncnn3MatD2Ev.exit61, label %._crit_edge111, !llvm.loop !145

._crit_edge105.loopexit:                          ; preds = %bb.t
  %.pre118 = load i32, ptr %6, align 4, !tbaa !58
  br label %._crit_edge105

._crit_edge105:                                   ; preds = %._crit_edge105.loopexit, %.preheader
  %i.bm = phi i32 [ %i.be, %.preheader ], [ %.pre118, %._crit_edge105.loopexit ] ; 4 uses
  %i.bn = phi i32 [ %i.bf, %.preheader ], [ %i.gp, %._crit_edge105.loopexit ]
  %i.bo = phi i32 [ %i.bg, %.preheader ], [ %i.gp, %._crit_edge105.loopexit ]
  %.1.lcssa = phi ptr [ %.059107, %.preheader ], [ %.2, %._crit_edge105.loopexit ]
  %i.bp = add nuw nsw i32 %.058108, 1             ; 2 uses
  %i.bq = icmp slt i32 %i.bp, %i.bm
  br i1 %i.bq, label %.preheader, label %_ZN4ncnn3MatD2Ev.exit.loopexit, !llvm.loop !146

.lr.ph104:                                        ; preds = %.preheader, %bb.t
  %i.br = phi i32 [ %i.gp, %bb.t ], [ %i.bf, %.preheader ]
  %.057103 = phi i32 [ %i.gq, %bb.t ], [ 0, %.preheader ] ; 2 uses
  %.1102 = phi ptr [ %.2, %bb.t ], [ %.059107, %.preheader ] ; 4 uses
  %i.bs = load i32, ptr %i.s, align 8, !tbaa !44
  %i.bt = mul nsw i32 %i.bs, %.058108
  %i.bu = sext i32 %i.bt to i64
  %i.bv = mul i64 %i.av, %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.bv
  %i.bx = load i32, ptr %i.t, align 4, !tbaa !43
  %i.by = mul nsw i32 %i.bx, %.057103
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds i8, ptr %i.bw, i64 %i.bz ; 5 uses
  %i.cb = load i32, ptr %4, align 4, !tbaa !58    ; 3 uses
  %i.cc = icmp sgt i32 %i.cb, 0
  br i1 %i.cc, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph104
  %i.cd = load ptr, ptr %8, align 8, !tbaa !78    ; 5 uses
end_hunk_0
