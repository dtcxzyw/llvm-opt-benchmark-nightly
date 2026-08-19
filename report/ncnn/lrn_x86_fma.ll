inline.NumInlined: 35
inline.NumDeleted: 29
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZNK4ncnn11LRN_x86_fma15forward_inplaceERNS_3MatERKNS_6OptionE.omp_outlined.1:bb.a
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph281.preheader383

.lr.ph281.preheader383:                           ; preds = %vector.memcheck, %.lr.ph281.preheader, %middle.block
  %.1280.ph = phi i32 [ %.0.lcssa, %vector.memcheck ], [ %.0.lcssa, %.lr.ph281.preheader ], [ %i.ez, %middle.block ] ; 4 uses
  %.162279.ph = phi ptr [ %.061.lcssa, %vector.memcheck ], [ %.061.lcssa, %.lr.ph281.preheader ], [ %i.fb, %middle.block ] ; 3 uses
  %.164278.ph = phi ptr [ %.063.lcssa, %vector.memcheck ], [ %.063.lcssa, %.lr.ph281.preheader ], [ %i.fc, %middle.block ] ; 4 uses
  %i.fo = sub i32 %.lcssa256, %.1280.ph
  %.neg395 = add i32 %.1280.ph, 1
  %xtraiter392 = and i32 %i.fo, 1
  %lcmp.mod393.not = icmp eq i32 %xtraiter392, 0
  br i1 %lcmp.mod393.not, label %.lr.ph281.prol.loopexit, label %.lr.ph281.prol

.lr.ph281.prol:                                   ; preds = %.lr.ph281.preheader383
  %i.fp = load float, ptr %.164278.ph, align 4, !tbaa !46
  %i.fq = load float, ptr %i.s, align 8, !tbaa !88
  %i.fr = load float, ptr %8, align 4, !tbaa !46
  %i.fs = load float, ptr %.162279.ph, align 4, !tbaa !46
  %i.ft = fmul fast float %i.fs, %i.fr
  %i.fu = fadd fast float %i.ft, %i.fq
  %i.fv = load float, ptr %i.t, align 4, !tbaa !89
  %i.fw = fneg fast float %i.fv
  %i.fx = call fast float @llvm.pow.f32(float %i.fu, float %i.fw)
  %i.fy = fmul fast float %i.fx, %i.fp
  store float %i.fy, ptr %.164278.ph, align 4, !tbaa !46
  %i.fz = getelementptr inbounds nuw i8, ptr %.162279.ph, i64 4
  %i.ga = getelementptr inbounds nuw i8, ptr %.164278.ph, i64 4
  %i.gb = add nuw nsw i32 %.1280.ph, 1
  br label %.lr.ph281.prol.loopexit

.lr.ph281.prol.loopexit:                          ; preds = %.lr.ph281.prol, %.lr.ph281.preheader383
  %.1280.unr = phi i32 [ %.1280.ph, %.lr.ph281.preheader383 ], [ %i.gb, %.lr.ph281.prol ]
  %.162279.unr = phi ptr [ %.162279.ph, %.lr.ph281.preheader383 ], [ %i.fz, %.lr.ph281.prol ]
  %.164278.unr = phi ptr [ %.164278.ph, %.lr.ph281.preheader383 ], [ %i.ga, %.lr.ph281.prol ]
  %i.gc = icmp eq i32 %.lcssa256, %.neg395
  br i1 %i.gc, label %._crit_edge, label %.lr.ph281

.lr.ph273:                                        ; preds = %.noexc75, %.lr.ph273
  %.0272 = phi i32 [ %i.in, %.lr.ph273 ], [ 0, %.noexc75 ]
  %.061271 = phi ptr [ %i.il, %.lr.ph273 ], [ %i.al, %.noexc75 ] ; 2 uses
  %.063270 = phi ptr [ %i.im, %.lr.ph273 ], [ %i.af, %.noexc75 ] ; 3 uses
  %i.gd = load <8 x float>, ptr %.063270, align 1, !tbaa !54
  %i.ge = load <8 x float>, ptr %.061271, align 1, !tbaa !54
  %i.gf = fmul fast <8 x float> %i.ge, %i.ar
  %i.gg = fadd fast <8 x float> %i.gf, %i.ao
  %i.gh = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.gg, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.gi = bitcast <8 x float> %i.gh to <8 x i32>
  %i.gj = bitcast <8 x float> %i.gh to <8 x i32>
  %i.gk = and <8 x i32> %i.gj, splat (i32 -2139095041)
  %i.gl = or disjoint <8 x i32> %i.gk, splat (i32 1056964608)
  %i.gm = bitcast <8 x i32> %i.gl to <8 x float>  ; 3 uses
  %i.gn = lshr <8 x i32> %i.gi, splat (i32 23)
  %i.go = add nsw <8 x i32> %i.gn, splat (i32 -127)
  %i.gp = sitofp fast <8 x i32> %i.go to <8 x float> ; 2 uses
  %i.gq = fadd fast <8 x float> %i.gp, splat (float 1.000000e+00)
  %i.gr = fcmp fast olt <8 x float> %i.gm, splat (float f0x3F3504F3) ; 2 uses
  %i.gs = select <8 x i1> %i.gr, <8 x float> %i.gm, <8 x float> zeroinitializer
  %i.gt = fadd fast <8 x float> %i.gm, splat (float -1.000000e+00)
  %i.gu = select fast <8 x i1> %i.gr, <8 x float> %i.gp, <8 x float> %i.gq ; 2 uses
  %i.gv = fadd fast <8 x float> %i.gt, %i.gs      ; 12 uses
  %i.gw = fmul fast <8 x float> %i.gv, %i.gv      ; 2 uses
  %i.gx = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gv, <8 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <8 x float> splat (float f0xBDEBD1B8))
  %i.gy = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gx, <8 x float> nofpclass(nan inf) %i.gv, <8 x float> splat (float f0x3DEF251A))
  %i.gz = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gy, <8 x float> nofpclass(nan inf) %i.gv, <8 x float> splat (float f0xBDFE5D4F))
  %i.ha = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gz, <8 x float> nofpclass(nan inf) %i.gv, <8 x float> splat (float f0x3E11E9BF))
  %i.hb = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ha, <8 x float> nofpclass(nan inf) %i.gv, <8 x float> splat (float f0xBE2AAE50))
  %i.hc = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hb, <8 x float> nofpclass(nan inf) %i.gv, <8 x float> splat (float f0x3E4CCEAC))
  %i.hd = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hc, <8 x float> nofpclass(nan inf) %i.gv, <8 x float> splat (float f0xBE7FFFFC))
  %i.he = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hd, <8 x float> nofpclass(nan inf) %i.gv, <8 x float> splat (float f0x3EAAAAAA))
  %i.hf = fmul fast <8 x float> %i.gw, %i.gv
  %i.hg = fmul fast <8 x float> %i.hf, %i.he
  %i.hh = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gu, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.hg)
  %i.hi = fneg fast <8 x float> %i.gw
  %i.hj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.hi, <8 x float> splat (float 5.000000e-01), <8 x float> nofpclass(nan inf) %i.hh)
  %i.hk = fadd fast <8 x float> %i.hj, %i.gv
  %i.hl = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gu, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.hk)
  %i.hm = fmul fast <8 x float> %i.hl, %i.av
  %i.hn = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.hm, <8 x float> splat (float f0x42B0C0A5))
  %i.ho = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.hn, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.hp = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ho, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.hq = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.hp, i32 1) ; 2 uses
  %i.hr = fcmp fast ogt <8 x float> %i.hq, %i.hp
  %i.hs = select <8 x i1> %i.hr, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.ht = fsub fast <8 x float> %i.hq, %i.hs      ; 2 uses
  %i.hu = fneg fast <8 x float> %i.ht             ; 2 uses
  %i.hv = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.hu, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.ho)
  %i.hw = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.hu, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.hv) ; 8 uses
  %i.hx = fmul fast <8 x float> %i.hw, %i.hw
  %i.hy = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hw, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.hz = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hy, <8 x float> nofpclass(nan inf) %i.hw, <8 x float> splat (float f0x3C088908))
  %i.ia = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hz, <8 x float> nofpclass(nan inf) %i.hw, <8 x float> splat (float f0x3D2AA9C1))
  %i.ib = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ia, <8 x float> nofpclass(nan inf) %i.hw, <8 x float> splat (float f0x3E2AAAAA))
  %i.ic = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ib, <8 x float> nofpclass(nan inf) %i.hw, <8 x float> splat (float 5.000000e-01))
  %i.id = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ic, <8 x float> nofpclass(nan inf) %i.hx, <8 x float> nofpclass(nan inf) %i.hw)
  %i.ie = fadd fast <8 x float> %i.id, splat (float 1.000000e+00)
  %i.if = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ht)
  %i.ig = shl <8 x i32> %i.if, splat (i32 23)
  %i.ih = add <8 x i32> %i.ig, splat (i32 1065353216)
  %i.ii = bitcast <8 x i32> %i.ih to <8 x float>
  %i.ij = fmul fast <8 x float> %i.gd, %i.ii
  %i.ik = fmul fast <8 x float> %i.ij, %i.ie
  store <8 x float> %i.ik, ptr %.063270, align 1, !tbaa !54
  %i.il = getelementptr inbounds nuw i8, ptr %.061271, i64 32 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %.063270, i64 32 ; 2 uses
  %i.in = add nuw nsw i32 %.0272, 8               ; 3 uses
  %i.io = or disjoint i32 %i.in, 7
  %i.ip = load i32, ptr %6, align 4, !tbaa !17    ; 2 uses
  %i.iq = icmp slt i32 %i.io, %i.ip
  br i1 %i.iq, label %.lr.ph273, label %.preheader255, !llvm.loop !118

.lr.ph281:                                        ; preds = %.lr.ph281.prol.loopexit, %.lr.ph281
  %.1280 = phi i32 [ %i.jp, %.lr.ph281 ], [ %.1280.unr, %.lr.ph281.prol.loopexit ]
  %.162279 = phi ptr [ %i.jn, %.lr.ph281 ], [ %.162279.unr, %.lr.ph281.prol.loopexit ] ; 3 uses
  %.164278 = phi ptr [ %i.jo, %.lr.ph281 ], [ %.164278.unr, %.lr.ph281.prol.loopexit ] ; 4 uses
  %i.ir = load float, ptr %.164278, align 4, !tbaa !46
  %i.is = load float, ptr %i.s, align 8, !tbaa !88
  %i.it = load float, ptr %8, align 4, !tbaa !46
  %i.iu = load float, ptr %.162279, align 4, !tbaa !46
  %i.iv = fmul fast float %i.iu, %i.it
  %i.iw = fadd fast float %i.iv, %i.is
  %i.ix = load float, ptr %i.t, align 4, !tbaa !89
  %i.iy = fneg fast float %i.ix
  %i.iz = call fast float @llvm.pow.f32(float %i.iw, float %i.iy)
  %i.ja = fmul fast float %i.iz, %i.ir
  store float %i.ja, ptr %.164278, align 4, !tbaa !46
  %i.jb = getelementptr inbounds nuw i8, ptr %.162279, i64 4
  %i.jc = getelementptr inbounds nuw i8, ptr %.164278, i64 4 ; 2 uses
  %i.jd = load float, ptr %i.jc, align 4, !tbaa !46
  %i.je = load float, ptr %i.s, align 8, !tbaa !88
  %i.jf = load float, ptr %8, align 4, !tbaa !46
  %i.jg = load float, ptr %i.jb, align 4, !tbaa !46
  %i.jh = fmul fast float %i.jg, %i.jf
  %i.ji = fadd fast float %i.jh, %i.je
  %i.jj = load float, ptr %i.t, align 4, !tbaa !89
  %i.jk = fneg fast float %i.jj
  %i.jl = call fast float @llvm.pow.f32(float %i.ji, float %i.jk)
  %i.jm = fmul fast float %i.jl, %i.jd
  store float %i.jm, ptr %i.jc, align 4, !tbaa !46
  %i.jn = getelementptr inbounds nuw i8, ptr %.162279, i64 8
  %i.jo = getelementptr inbounds nuw i8, ptr %.164278, i64 8
  %i.jp = add nuw nsw i32 %.1280, 2               ; 2 uses
  %exitcond295.not.1 = icmp eq i32 %i.jp, %.lcssa256
  br i1 %exitcond295.not.1, label %._crit_edge, label %.lr.ph281, !llvm.loop !119

._crit_edge:                                      ; preds = %.lr.ph281.prol.loopexit, %.lr.ph281, %middle.block, %.preheader255
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond297.not = icmp eq i32 %i.v, %lftr.wideiv
  br i1 %exitcond297.not, label %._crit_edge286, label %bb.c

._crit_edge286:                                   ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge286, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.pow.f32(float, float) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

declare void @_ZN4ncnn16copy_make_borderERKNS_3MatERS0_iiiiifRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, float noundef nofpclass(nan inf), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn11LRN_x86_fma15forward_inplaceERNS_3MatERKNS_6OptionE.omp_outlined.2(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %8, ptr nofree noundef readonly captures(none) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10) #10 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !17     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !17
  %i.h = load i32, ptr %0, align 4, !tbaa !17     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !17
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 4 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !17
  %i.k = load i32, ptr %i.a, align 4, !tbaa !17   ; 3 uses
  %.not84 = icmp sgt i32 %i.k, %i.j
  br i1 %.not84, label %._crit_edge.split, label %.noexc45.lr.ph

.noexc45.lr.ph:                                   ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !23, !noalias !120 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !19, !noalias !120 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !18, !noalias !120 ; 3 uses
  %factor.op.mul = mul i64 %i.n, %i.p             ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.r = load i32, ptr %i.q, align 4, !tbaa !9, !noalias !123
  %i.s = load ptr, ptr %4, align 8, !tbaa !23, !noalias !123
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.u = load i64, ptr %i.t, align 8, !tbaa !19, !noalias !123
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !18, !noalias !123 ; 2 uses
  %factor.op.mul86 = mul i64 %i.u, %i.w
  %i.x = sext i32 %i.r to i64
  %i.y = load i32, ptr %5, align 4, !tbaa !17     ; 4 uses
  %i.z = icmp sgt i32 %i.y, 0
  %i.aa = mul i64 %i.w, %i.x
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 224 ; 6 uses
  %i.ac = getelementptr i8, ptr %9, i64 220       ; 7 uses
  br i1 %i.z, label %.noexc45.lr.ph.split, label %._crit_edge.split

.noexc45.lr.ph.split:                             ; preds = %.noexc45.lr.ph
  %i.ad = load i32, ptr %6, align 4, !tbaa !17    ; 6 uses
  %i.ae = icmp sgt i32 %i.ad, 0
  %i.af = sext i32 %i.ad to i64                   ; 3 uses
  br i1 %i.ae, label %.noexc45.lr.ph.split.split, label %._crit_edge.split

.noexc45.lr.ph.split.split:                       ; preds = %.noexc45.lr.ph.split
  %i.ag = load i32, ptr %7, align 4, !tbaa !17    ; 3 uses
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %.noexc45.lr.ph.split.split.split.us, label %.noexc45.preheader

.noexc45.preheader:                               ; preds = %.noexc45.lr.ph.split.split
  %i.ai = sext i32 %i.k to i64                    ; 2 uses
  %i.aj = add nsw i32 %i.j, 1
  %wide.trip.count = zext nneg i32 %i.ad to i64   ; 9 uses
  %i.ak = mul i64 %i.n, %i.p
  %11 = mul i64 %i.ak, %i.ai                      ; 2 uses
  %i.al = mul i64 %i.n, %i.p
  %i.am = add nsw i32 %i.y, -1
  %i.an = zext i32 %i.am to i64
  %i.ao = mul nuw nsw i64 %i.af, %i.an
  %i.ap = add nuw i64 %i.ao, %wide.trip.count
  %i.aq = shl i64 %i.ap, 2
  %scevgep127 = getelementptr i8, ptr %9, i64 228
  %i.ar = getelementptr i8, ptr %i.l, i64 %11
  %i.as = getelementptr i8, ptr %i.l, i64 %i.aq
  %i.at = getelementptr i8, ptr %i.as, i64 %11
  %min.iters.check = icmp ult i32 %i.ad, 4
  %min.iters.check128 = icmp ult i32 %i.ad, 32
  %i.au = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.au, 0
  %n.vec132 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n138 = icmp eq i64 %n.vec132, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.av = add nsw i64 %wide.trip.count, -1
  br label %.noexc45

.noexc45.lr.ph.split.split.split.us:              ; preds = %.noexc45.lr.ph.split.split
  %i.aw = load ptr, ptr %8, align 8, !tbaa !56    ; 5 uses
  %i.ax = sext i32 %i.k to i64
  %i.ay = add nsw i32 %i.j, 1
  %wide.trip.count111 = zext nneg i32 %i.y to i64
  %wide.trip.count106 = zext nneg i32 %i.ad to i64
  %wide.trip.count101 = zext nneg i32 %i.ag to i64 ; 2 uses
  %xtraiter141 = and i64 %wide.trip.count101, 3   ; 3 uses
  %i.az = icmp ult i32 %i.ag, 4
  %unroll_iter = and i64 %wide.trip.count101, 2147483644
  %lcmp.mod142.not = icmp eq i64 %xtraiter141, 0
  %lcmp.mod144 = icmp ne i64 %xtraiter141, 0
  br label %.noexc45.us

.noexc45.us:                                      ; preds = %._ZN4ncnn3MatD2Ev.exit_crit_edge.split83.us.us, %.noexc45.lr.ph.split.split.split.us
  %indvars.iv113 = phi i64 [ %indvars.iv.next114, %._ZN4ncnn3MatD2Ev.exit_crit_edge.split83.us.us ], [ %i.ax, %.noexc45.lr.ph.split.split.split.us ] ; 3 uses
  %.reass.us = mul i64 %factor.op.mul, %indvars.iv113
  %i.ba = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass.us
  %.reass87.us = mul i64 %factor.op.mul86, %indvars.iv113
  %i.bb = getelementptr inbounds nuw i8, ptr %i.s, i64 %.reass87.us
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %._crit_edge77.split.us.us.us, %.noexc45.us
  %indvars.iv108 = phi i64 [ %indvars.iv.next109, %._crit_edge77.split.us.us.us ], [ 0, %.noexc45.us ] ; 2 uses
  %.04379.us.us = phi ptr [ %i.cw, %._crit_edge77.split.us.us.us ], [ %i.ba, %.noexc45.us ] ; 2 uses
  %i.bc = mul i64 %i.aa, %indvars.iv108
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bc
  br label %.lr.ph.us.us.us

.lr.ph.us.us.us:                                  ; preds = %._crit_edge.us.us.us, %.preheader.us.us
  %indvars.iv103 = phi i64 [ %indvars.iv.next104, %._crit_edge.us.us.us ], [ 0, %.preheader.us.us ] ; 3 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv103 ; 5 uses
  br i1 %i.az, label %.epil.preheader, label %.lr.ph.us.us.us.new

.lr.ph.us.us.us.new:                              ; preds = %.lr.ph.us.us.us, %.lr.ph.us.us.us.new
  %indvars.iv98 = phi i64 [ %indvars.iv.next99.3, %.lr.ph.us.us.us.new ], [ 0, %.lr.ph.us.us.us ] ; 5 uses
  %.04073.us.us.us = phi float [ %i.cf, %.lr.ph.us.us.us.new ], [ 0.000000e+00, %.lr.ph.us.us.us ]
  %niter = phi i64 [ %niter.next.3, %.lr.ph.us.us.us.new ], [ 0, %.lr.ph.us.us.us ]
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv98
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !17
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.be, i64 %i.bh
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !46
  %i.bk = fadd fast float %i.bj, %.04073.us.us.us
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv98
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !17
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.be, i64 %i.bo
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !46
  %i.br = fadd fast float %i.bq, %i.bk
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv98
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !17
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds [4 x i8], ptr %i.be, i64 %i.bv
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !46
  %i.by = fadd fast float %i.bx, %i.br
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv98
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 12
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !17
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds [4 x i8], ptr %i.be, i64 %i.cc
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !46
  %i.cf = fadd fast float %i.ce, %i.by            ; 3 uses
  %indvars.iv.next99.3 = add nuw nsw i64 %indvars.iv98, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.us.us.unr-lcssa, label %.lr.ph.us.us.us.new, !llvm.loop !126

._crit_edge.us.us.us.unr-lcssa:                   ; preds = %.lr.ph.us.us.us.new
  br i1 %lcmp.mod142.not, label %._crit_edge.us.us.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.us.us.unr-lcssa, %.lr.ph.us.us.us
  %indvars.iv98.epil.init = phi i64 [ 0, %.lr.ph.us.us.us ], [ %indvars.iv.next99.3, %._crit_edge.us.us.us.unr-lcssa ]
  %.04073.us.us.us.epil.init = phi float [ 0.000000e+00, %.lr.ph.us.us.us ], [ %i.cf, %._crit_edge.us.us.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod144)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv98.epil = phi i64 [ %indvars.iv.next99.epil, %bb.c ], [ %indvars.iv98.epil.init, %.epil.preheader ] ; 2 uses
  %.04073.us.us.us.epil = phi float [ %i.cl, %bb.c ], [ %.04073.us.us.us.epil.init, %.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %bb.c ], [ 0, %.epil.preheader ]
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv98.epil
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !17
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds [4 x i8], ptr %i.be, i64 %i.ci
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !46
  %i.cl = fadd fast float %i.ck, %.04073.us.us.us.epil ; 2 uses
  %indvars.iv.next99.epil = add nuw nsw i64 %indvars.iv98.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter141
  br i1 %epil.iter.cmp.not, label %._crit_edge.us.us.us, label %bb.c, !llvm.loop !127

._crit_edge.us.us.us:                             ; preds = %bb.c, %._crit_edge.us.us.us.unr-lcssa
  %.lcssa = phi float [ %i.cf, %._crit_edge.us.us.us.unr-lcssa ], [ %i.cl, %bb.c ]
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %.04379.us.us, i64 %indvars.iv103 ; 2 uses
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !46
  %i.co = load float, ptr %i.ab, align 8, !tbaa !88
  %i.cp = load float, ptr %10, align 4, !tbaa !46
  %i.cq = fmul fast float %i.cp, %.lcssa
  %i.cr = fadd fast float %i.cq, %i.co
  %i.cs = load float, ptr %i.ac, align 4, !tbaa !89
  %i.ct = fneg fast float %i.cs
  %i.cu = call fast float @llvm.pow.f32(float %i.cr, float %i.ct)
  %i.cv = fmul fast float %i.cu, %i.cn
  store float %i.cv, ptr %i.cm, align 4, !tbaa !46
  %indvars.iv.next104 = add nuw nsw i64 %indvars.iv103, 1 ; 2 uses
  %exitcond107.not = icmp eq i64 %indvars.iv.next104, %wide.trip.count106
  br i1 %exitcond107.not, label %._crit_edge77.split.us.us.us, label %.lr.ph.us.us.us, !llvm.loop !128

._crit_edge77.split.us.us.us:                     ; preds = %._crit_edge.us.us.us
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %.04379.us.us, i64 %i.af
  %indvars.iv.next109 = add nuw nsw i64 %indvars.iv108, 1 ; 2 uses
  %exitcond112.not = icmp eq i64 %indvars.iv.next109, %wide.trip.count111
  br i1 %exitcond112.not, label %._ZN4ncnn3MatD2Ev.exit_crit_edge.split83.us.us, label %.preheader.us.us, !llvm.loop !129

._ZN4ncnn3MatD2Ev.exit_crit_edge.split83.us.us:   ; preds = %._crit_edge77.split.us.us.us
  %indvars.iv.next114 = add nsw i64 %indvars.iv113, 1 ; 2 uses
  %lftr.wideiv116 = trunc i64 %indvars.iv.next114 to i32
  %exitcond117.not = icmp eq i32 %i.ay, %lftr.wideiv116
  br i1 %exitcond117.not, label %._crit_edge.split, label %.noexc45.us

.noexc45:                                         ; preds = %.noexc45.preheader, %._ZN4ncnn3MatD2Ev.exit_crit_edge.split83
  %indvar = phi i64 [ 0, %.noexc45.preheader ], [ %indvar.next, %._ZN4ncnn3MatD2Ev.exit_crit_edge.split83 ] ; 2 uses
  %indvars.iv94 = phi i64 [ %i.ai, %.noexc45.preheader ], [ %indvars.iv.next95, %._ZN4ncnn3MatD2Ev.exit_crit_edge.split83 ] ; 2 uses
  %i.cx = mul i64 %i.al, %indvar                  ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ar, i64 %i.cx
  %scevgep126 = getelementptr i8, ptr %i.at, i64 %i.cx
  %.reass = mul i64 %factor.op.mul, %indvars.iv94
  %i.cy = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass
  %bound0 = icmp ult ptr %scevgep, %scevgep127
  %bound1 = icmp ult ptr %i.ac, %scevgep126
  %found.conflict = and i1 %bound0, %bound1
  br label %iter.check

iter.check:                                       ; preds = %.noexc45, %._crit_edge77.split
  %.04281 = phi i32 [ 0, %.noexc45 ], [ %i.ew, %._crit_edge77.split ]
  %.04379 = phi ptr [ %i.cy, %.noexc45 ], [ %i.ev, %._crit_edge77.split ] ; 6 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %found.conflict
  br i1 %brmerge, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check128, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cz = load float, ptr %i.ab, align 8, !tbaa !88, !alias.scope !130 ; 8 uses
  %i.da = load float, ptr %i.ac, align 4, !tbaa !89, !alias.scope !130
  %.scalar = fneg fast float %i.da                ; 8 uses
  %i.db = call fast float @llvm.pow.f32(float %i.cz, float %.scalar)
  %i.dc = call fast float @llvm.pow.f32(float %i.cz, float %.scalar)
  %i.dd = call fast float @llvm.pow.f32(float %i.cz, float %.scalar)
  %i.de = call fast float @llvm.pow.f32(float %i.cz, float %.scalar)
  %i.df = call fast float @llvm.pow.f32(float %i.cz, float %.scalar)
  %i.dg = call fast float @llvm.pow.f32(float %i.cz, float %.scalar)
  %i.dh = call fast float @llvm.pow.f32(float %i.cz, float %.scalar)
  %i.di = call fast float @llvm.pow.f32(float %i.cz, float %.scalar)
  %i.dj = insertelement <8 x float> poison, float %i.db, i64 0
  %i.dk = insertelement <8 x float> %i.dj, float %i.dc, i64 1
  %i.dl = insertelement <8 x float> %i.dk, float %i.dd, i64 2
  %i.dm = insertelement <8 x float> %i.dl, float %i.de, i64 3
  %i.dn = insertelement <8 x float> %i.dm, float %i.df, i64 4
  %i.do = insertelement <8 x float> %i.dn, float %i.dg, i64 5
  %i.dp = insertelement <8 x float> %i.do, float %i.dh, i64 6
  %i.dq = insertelement <8 x float> %i.dp, float %i.di, i64 7 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %.04379, i64 %index ; 5 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 32 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 64 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 96 ; 2 uses
  %wide.load = load <8 x float>, ptr %i.dr, align 4, !tbaa !46, !alias.scope !133, !noalias !130
  %wide.load129.a = load <8 x float>, ptr %i.ds, align 4, !tbaa !46, !alias.scope !133, !noalias !130
  %wide.load130.a = load <8 x float>, ptr %i.dt, align 4, !tbaa !46, !alias.scope !133, !noalias !130
  %wide.load131 = load <8 x float>, ptr %i.du, align 4, !tbaa !46, !alias.scope !133, !noalias !130
  %i.dv = fmul fast <8 x float> %i.dq, %wide.load
  %i.dw = fmul fast <8 x float> %i.dq, %wide.load129.a
  %i.dx = fmul fast <8 x float> %i.dq, %wide.load130.a
  %i.dy = fmul fast <8 x float> %i.dq, %wide.load131
  store <8 x float> %i.dv, ptr %i.dr, align 4, !tbaa !46, !alias.scope !133, !noalias !130
  store <8 x float> %i.dw, ptr %i.ds, align 4, !tbaa !46, !alias.scope !133, !noalias !130
  store <8 x float> %i.dx, ptr %i.dt, align 4, !tbaa !46, !alias.scope !133, !noalias !130
  store <8 x float> %i.dy, ptr %i.du, align 4, !tbaa !46, !alias.scope !133, !noalias !130
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.dz = icmp eq i64 %index.next, %n.vec
  br i1 %i.dz, label %middle.block, label %vector.body, !llvm.loop !135

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge77.split, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !61

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.ea = load float, ptr %i.ab, align 8, !tbaa !88, !alias.scope !130 ; 4 uses
  %i.eb = load float, ptr %i.ac, align 4, !tbaa !89, !alias.scope !130
  %.scalar139 = fneg fast float %i.eb             ; 4 uses
  %i.ec = call fast float @llvm.pow.f32(float %i.ea, float %.scalar139)
  %i.ed = call fast float @llvm.pow.f32(float %i.ea, float %.scalar139)
  %i.ee = call fast float @llvm.pow.f32(float %i.ea, float %.scalar139)
  %i.ef = call fast float @llvm.pow.f32(float %i.ea, float %.scalar139)
  %i.eg = insertelement <4 x float> poison, float %i.ec, i64 0
  %i.eh = insertelement <4 x float> %i.eg, float %i.ed, i64 1
  %i.ei = insertelement <4 x float> %i.eh, float %i.ee, i64 2
  %i.ej = insertelement <4 x float> %i.ei, float %i.ef, i64 3
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index135 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next137, %vec.epilog.vector.body ] ; 2 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %.04379, i64 %index135 ; 2 uses
  %wide.load136 = load <4 x float>, ptr %i.ek, align 4, !tbaa !46, !alias.scope !133, !noalias !130
  %i.el = fmul fast <4 x float> %i.ej, %wide.load136
  store <4 x float> %i.el, ptr %i.ek, align 4, !tbaa !46, !alias.scope !133, !noalias !130
  %index.next137 = add nuw i64 %index135, 4       ; 2 uses
  %i.em = icmp eq i64 %index.next137, %n.vec132
  br i1 %i.em, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !136

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n138, label %._crit_edge77.split, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec132, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ] ; 4 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %.04379, i64 %indvars.iv.ph ; 2 uses
  %i.eo = load float, ptr %i.en, align 4, !tbaa !46
  %i.ep = load float, ptr %i.ab, align 8, !tbaa !88
  %i.eq = load float, ptr %i.ac, align 4, !tbaa !89
  %i.er = fneg fast float %i.eq
  %i.es = call fast float @llvm.pow.f32(float %i.ep, float %i.er)
  %i.et = fmul fast float %i.es, %i.eo
  store float %i.et, ptr %i.en, align 4, !tbaa !46
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.eu = icmp eq i64 %indvars.iv.ph, %i.av
  br i1 %i.eu, label %._crit_edge77.split, label %vec.epilog.scalar.ph

._ZN4ncnn3MatD2Ev.exit_crit_edge.split83:         ; preds = %._crit_edge77.split
  %indvars.iv.next95 = add nsw i64 %indvars.iv94, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next95 to i32
  %exitcond97.not = icmp eq i32 %i.aj, %lftr.wideiv
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond97.not, label %._crit_edge.split, label %.noexc45

._crit_edge77.split:                              ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %.04379, i64 %i.af
  %i.ew = add nuw nsw i32 %.04281, 1              ; 2 uses
  %exitcond93.not = icmp eq i32 %i.ew, %i.y
  br i1 %exitcond93.not, label %._ZN4ncnn3MatD2Ev.exit_crit_edge.split83, label %iter.check, !llvm.loop !129

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 3 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %.04379, i64 %indvars.iv ; 2 uses
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !46
  %i.ez = load float, ptr %i.ab, align 8, !tbaa !88
  %i.fa = load float, ptr %i.ac, align 4, !tbaa !89
  %i.fb = fneg fast float %i.fa
  %i.fc = call fast float @llvm.pow.f32(float %i.ez, float %i.fb)
  %i.fd = fmul fast float %i.fc, %i.ey
  store float %i.fd, ptr %i.ex, align 4, !tbaa !46
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %.04379, i64 %indvars.iv
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 4 ; 2 uses
  %i.fg = load float, ptr %i.ff, align 4, !tbaa !46
  %i.fh = load float, ptr %i.ab, align 8, !tbaa !88
  %i.fi = load float, ptr %i.ac, align 4, !tbaa !89
  %i.fj = fneg fast float %i.fi
  %i.fk = call fast float @llvm.pow.f32(float %i.fh, float %i.fj)
  %i.fl = fmul fast float %i.fk, %i.fg
  store float %i.fl, ptr %i.ff, align 4, !tbaa !46
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge77.split, label %vec.epilog.scalar.ph, !llvm.loop !137

._crit_edge.split:                                ; preds = %._ZN4ncnn3MatD2Ev.exit_crit_edge.split83, %._ZN4ncnn3MatD2Ev.exit_crit_edge.split83.us.us, %.noexc45.lr.ph, %.noexc45.lr.ph.split, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.split, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.round.ps.256(<8 x float>, i32 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.min.ps.256(<8 x float>, <8 x float>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.max.ps.256(<8 x float>, <8 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fma.v8f32(<8 x float>, <8 x float>, <8 x float>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float>) #12

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #13

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.pow.v8f32(<8 x float>, <8 x float>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

attributes #0 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
end_hunk_0
