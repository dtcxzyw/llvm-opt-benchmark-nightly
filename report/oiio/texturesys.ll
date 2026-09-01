Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/texturesys?download=true
inline.NumInlined: 5128
inline.NumDeleted: 1476
loop-unroll.NumCompletelyUnrolled: 51
loop-unroll.NumRuntimeUnrolled: 52
loop-unroll.NumUnrolled: 108
begin_hunk_0_@_ZN11OpenImageIO4v3_117TextureSystemImpl15missing_textureERNS0_13TextureOpt_v2EiPfS4_S4_S4_:bb.a
  %indvars.iv45 = phi i64 [ %indvars.iv.next46.1, %.lr.ph.split.split.split.split.us ], [ %indvars.iv45.unr, %.lr.ph.split.split.split.split.us.prol.loopexit ] ; 6 uses
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv45
  %i.ip = load float, ptr %i.io, align 4, !tbaa !26
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv45
  store float %i.ip, ptr %i.iq, align 4, !tbaa !26
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv45
  store float 0.000000e+00, ptr %i.ir, align 4, !tbaa !26
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv45
  store float 0.000000e+00, ptr %i.is, align 4, !tbaa !26
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1 ; 4 uses
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.next46
  %i.iu = load float, ptr %i.it, align 4, !tbaa !26
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next46
  store float %i.iu, ptr %i.iv, align 4, !tbaa !26
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next46
  store float 0.000000e+00, ptr %i.iw, align 4, !tbaa !26
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.next46
  store float 0.000000e+00, ptr %i.ix, align 4, !tbaa !26
  %indvars.iv.next46.1 = add nuw nsw i64 %indvars.iv45, 2 ; 2 uses
  %exitcond49.not.1 = icmp eq i64 %indvars.iv.next46.1, %wide.trip.count83
  br i1 %exitcond49.not.1, label %._crit_edge.thread, label %.lr.ph.split.split.split.split.us, !llvm.loop !465

._crit_edge:                                      ; preds = %bb.a
  br i1 %.not27, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %._crit_edge.thread

.lr.ph.split.split.split.split:                   ; preds = %.lr.ph.split.split.split.split.prol.loopexit, %.lr.ph.split.split.split.split
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.split.split.split.split ], [ %indvars.iv.unr, %.lr.ph.split.split.split.split.prol.loopexit ] ; 7 uses
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  %i.iz = load float, ptr %i.iy, align 4, !tbaa !26
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  store float %i.iz, ptr %i.ja, align 4, !tbaa !26
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv
  store float 0.000000e+00, ptr %i.jb, align 4, !tbaa !26
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv
  store float 0.000000e+00, ptr %i.jc, align 4, !tbaa !26
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv
  store float 0.000000e+00, ptr %i.jd, align 4, !tbaa !26
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 5 uses
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.next
  %i.jf = load float, ptr %i.je, align 4, !tbaa !26
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next
  store float %i.jf, ptr %i.jg, align 4, !tbaa !26
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next
  store float 0.000000e+00, ptr %i.jh, align 4, !tbaa !26
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.next
  store float 0.000000e+00, ptr %i.ji, align 4, !tbaa !26
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv.next
  store float 0.000000e+00, ptr %i.jj, align 4, !tbaa !26
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count83
  br i1 %exitcond.not.1, label %._crit_edge.thread, label %.lr.ph.split.split.split.split, !llvm.loop !466

._crit_edge.thread:                               ; preds = %.lr.ph.split.split.split.split.prol.loopexit, %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split.us.prol.loopexit, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.us.split.prol.loopexit, %.lr.ph.split.split.split.us.split, %.lr.ph.split.split.split.us.split.us.prol.loopexit, %.lr.ph.split.split.split.us.split.us, %.lr.ph.split.split.us.split.split.prol.loopexit, %.lr.ph.split.split.us.split.split, %.lr.ph.split.split.us.split.split.us.prol.loopexit, %.lr.ph.split.split.us.split.split.us, %.lr.ph.split.split.us.split.us.split.prol.loopexit, %.lr.ph.split.split.us.split.us.split, %.lr.ph.split.split.us.split.us.split.us.prol.loopexit, %.lr.ph.split.split.us.split.us.split.us, %middle.block, %middle.block152, %middle.block176, %middle.block194, %middle.block218, %middle.block236, %middle.block254, %middle.block268, %._crit_edge
  call void @_ZNK11OpenImageIO4v3_117TextureSystemImpl8geterrorB5cxx11Eb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(188) %0, i1 noundef zeroext true)
  %i.jk = load ptr, ptr %7, align 8, !tbaa !30    ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.jm = icmp eq ptr %i.jk, %i.jl
  br i1 %i.jm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %._crit_edge.thread
  %i.jn = load i64, ptr %i.jl, align 8, !tbaa !34
  %i.jo = add i64 %i.jn, 1
  call void @_ZdlPvm(ptr noundef %i.jk, i64 noundef %i.jo) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %._crit_edge.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %._crit_edge
  %.not95 = phi i1 [ true, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ true, %._crit_edge.thread ], [ false, %._crit_edge ], [ false, %bb.g ]
  ret i1 %.not95
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN11OpenImageIO4v3_117TextureSystemImpl18fill_gray_channelsERKNS0_9ImageSpecEiPfS5_S5_S5_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(160) %1, i32 noundef %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(address_is_null) %4, ptr nofree noundef captures(none) %5, ptr nofree noundef captures(address_is_null) %6) local_unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.b = load i32, ptr %i.a, align 4, !tbaa !227  ; 2 uses
  %i.c = icmp eq i32 %i.b, 1
  %i.d = icmp sgt i32 %2, 2
  %or.cond = and i1 %i.d, %i.c
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = load float, ptr %3, align 4, !tbaa !26   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 4
  store float %i.e, ptr %i.f, align 4, !tbaa !26
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  store float %i.e, ptr %i.g, align 4, !tbaa !26
  %.not59 = icmp eq ptr %4, null
  br i1 %.not59, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load float, ptr %4, align 4, !tbaa !26   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 4
  store float %i.h, ptr %i.i, align 4, !tbaa !26
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  store float %i.h, ptr %i.j, align 4, !tbaa !26
  %i.k = load float, ptr %5, align 4, !tbaa !26   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 4
  store float %i.k, ptr %i.l, align 4, !tbaa !26
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8
  store float %i.k, ptr %i.m, align 4, !tbaa !26
  %.not60 = icmp eq ptr %6, null
  br i1 %.not60, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load float, ptr %6, align 4, !tbaa !26   ; 2 uses
  br label %.sink.split

bb.e:                                             ; preds = %bb.a
  %i.o = icmp eq i32 %i.b, 2
  %i.p = icmp eq i32 %2, 4
  %or.cond3 = and i1 %i.p, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.r = load i32, ptr %i.q, align 8
  %i.s = icmp eq i32 %i.r, 1
  %or.cond63 = select i1 %or.cond3, i1 %i.s, i1 false
  br i1 %or.cond63, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.v = load <2 x float>, ptr %3, align 4, !tbaa !26 ; 2 uses
  %i.w = extractelement <2 x float> %i.v, i64 0
  store float %i.w, ptr %i.t, align 4, !tbaa !26
  store <2 x float> %i.v, ptr %i.u, align 4, !tbaa !26
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.z = load <2 x float>, ptr %4, align 4, !tbaa !26 ; 2 uses
  %i.aa = extractelement <2 x float> %i.z, i64 0
  store float %i.aa, ptr %i.x, align 4, !tbaa !26
  store <2 x float> %i.z, ptr %i.y, align 4, !tbaa !26
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ad = load <2 x float>, ptr %5, align 4, !tbaa !26 ; 2 uses
  %i.ae = extractelement <2 x float> %i.ad, i64 0
  store float %i.ae, ptr %i.ab, align 4, !tbaa !26
  store <2 x float> %i.ad, ptr %i.ac, align 4, !tbaa !26
  %.not58 = icmp eq ptr %6, null
  br i1 %.not58, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  %i.ag = load float, ptr %i.af, align 4, !tbaa !26
  %i.ah = load float, ptr %6, align 4, !tbaa !26  ; 2 uses
  store float %i.ah, ptr %i.af, align 4, !tbaa !26
  br label %.sink.split

.sink.split:                                      ; preds = %bb.d, %bb.h
  %.sink70 = phi i64 [ 8, %bb.h ], [ 4, %bb.d ]
  %.sink68 = phi float [ %i.ah, %bb.h ], [ %i.n, %bb.d ]
  %.sink67 = phi i64 [ 12, %bb.h ], [ 8, %bb.d ]
  %.sink = phi float [ %i.ag, %bb.h ], [ %i.n, %bb.d ]
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 %.sink70
  store float %.sink68, ptr %i.ai, align 4, !tbaa !26
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 %.sink67
  store float %.sink, ptr %i.aj, align 4, !tbaa !26
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.f, %bb.g, %bb.e, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_117TextureSystemImpl14texture_lookupERNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiiffffffPfS8_S8_(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef nonnull align 8 dereferenceable(400) %1, ptr noundef %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(76) %3, i32 noundef %4, i32 noundef %5, float noundef %6, float noundef %7, float noundef %8, float noundef %9, float noundef %10, float noundef %11, ptr nofree noundef writeonly captures(none) %12, ptr nofree noundef writeonly captures(address_is_null) %13, ptr nofree noundef writeonly captures(none) %14) #11 align 2 {
bb.a:
  %i.a = alloca float, align 4                    ; 5 uses
  %i.b = alloca float, align 4                    ; 5 uses
  %i.c = alloca float, align 4                    ; 3 uses
  %15 = alloca %"class.OpenImageIO::v3_1::simd::vfloat4", align 16 ; 16 uses
  %16 = alloca %"class.OpenImageIO::v3_1::simd::vfloat4", align 16 ; 7 uses
  %17 = alloca %"class.OpenImageIO::v3_1::simd::vfloat4", align 16 ; 7 uses
  %i.d = insertelement <2 x float> poison, float %8, i64 0
  %i.e = insertelement <2 x float> %i.d, float %9, i64 1
  %i.f = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.e) ; 2 uses
  %i.g = insertelement <2 x float> poison, float %10, i64 0 ; 2 uses
  %i.h = insertelement <2 x float> %i.g, float %11, i64 1
  %i.i = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.h) ; 2 uses
  %i.j = fcmp olt <2 x float> %i.f, %i.i
  %i.k = select <2 x i1> %i.j, <2 x float> %i.i, <2 x float> %i.f ; 2 uses
  %i.l = fcmp olt <2 x float> %i.k, splat (float f0x322BCC77)
  %i.m = select <2 x i1> %i.l, <2 x float> splat (float f0x322BCC77), <2 x float> %i.k
  %i.n = fdiv <2 x float> splat (float 1.000000e+00), %i.m ; 2 uses
  %i.o = extractelement <2 x float> %i.n, i64 0
  %i.p = fptosi float %i.o to i32
  %i.q = extractelement <2 x float> %i.n, i64 1
  %i.r = fptosi float %i.q to i32
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.t = load float, ptr %i.s, align 8, !tbaa !284 ; 9 uses
  %i.u = fcmp oge float %i.t, 0.000000e+00        ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.w = load i32, ptr %i.v, align 8              ; 2 uses
  %i.x = trunc i32 %i.w to i1
  %i.y = and i32 %i.w, 2
  %i.z = icmp ne i32 %i.y, 0
  %i.aa = select i1 %i.u, i1 %i.x, i1 false
  %i.ab = select i1 %i.u, i1 %i.z, i1 false
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 36
  %18 = load <2 x float>, ptr %i.ac, align 4, !tbaa !26 ; 2 uses
  %i.ad = insertelement <2 x float> %i.g, float %8, i64 1
  %i.ae = shufflevector <2 x float> %18, <2 x float> poison, <2 x i32> zeroinitializer
  %i.af = fmul <2 x float> %i.ad, %i.ae           ; 5 uses
  %i.ag = insertelement <2 x float> poison, float %11, i64 0
  %i.ah = insertelement <2 x float> %i.ag, float %9, i64 1
  %19 = shufflevector <2 x float> %18, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ai = fmul <2 x float> %i.ah, %19             ; 5 uses
  %i.aj = fmul <2 x float> %i.ai, %i.ai
  %i.ak = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.af, <2 x float> %i.af, <2 x float> %i.aj) ; 3 uses
  %i.al = fcmp olt <2 x float> %i.ak, splat (float 1.000000e-16) ; 3 uses
  %i.am = extractelement <2 x i1> %i.al, i64 1
  br i1 %i.am, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.an = extractelement <2 x i1> %i.al, i64 0
  br i1 %i.an, label %_ZN11OpenImageIO4v3_112adjust_widthERfS1_S1_S1_ff.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ao = extractelement <2 x float> %i.ak, i64 0
  %i.ap = tail call float @llvm.sqrt.f32(float %i.ao)
  %i.aq = fdiv float f0x322BCC77, %i.ap           ; 2 uses
  %i.ar = extractelement <2 x float> %i.ai, i64 0 ; 2 uses
  %i.as = fmul float %i.ar, %i.aq
  %i.at = extractelement <2 x float> %i.af, i64 0 ; 2 uses
  %i.au = fneg float %i.at
  %i.av = fmul float %i.aq, %i.au
  br label %_ZN11OpenImageIO4v3_112adjust_widthERfS1_S1_S1_ff.exit

bb.d:                                             ; preds = %bb.a
  %i.aw = extractelement <2 x i1> %i.al, i64 0
  %i.ax = extractelement <2 x float> %i.af, i64 0
  %i.ay = extractelement <2 x float> %i.af, i64 1 ; 3 uses
  %i.az = extractelement <2 x float> %i.ai, i64 0
  %i.ba = extractelement <2 x float> %i.ai, i64 1 ; 3 uses
  br i1 %i.aw, label %bb.e, label %_ZN11OpenImageIO4v3_112adjust_widthERfS1_S1_S1_ff.exit

bb.e:                                             ; preds = %bb.d
  %i.bb = extractelement <2 x float> %i.ak, i64 1
  %i.bc = tail call float @llvm.sqrt.f32(float %i.bb)
  %i.bd = fdiv float f0x322BCC77, %i.bc           ; 2 uses
  %i.be = fneg float %i.ba
  %i.bf = fmul float %i.bd, %i.be
  %i.bg = fmul float %i.ay, %i.bd
  br label %_ZN11OpenImageIO4v3_112adjust_widthERfS1_S1_S1_ff.exit

_ZN11OpenImageIO4v3_112adjust_widthERfS1_S1_S1_ff.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %.0303 = phi float [ %i.az, %bb.d ], [ %i.ar, %bb.c ], [ %i.bg, %bb.e ], [ f0x322BCC77, %bb.b ] ; 3 uses
  %.0302 = phi float [ %i.ax, %bb.d ], [ %i.at, %bb.c ], [ %i.bf, %bb.e ], [ 0.000000e+00, %bb.b ] ; 3 uses
  %.0301 = phi float [ %i.ba, %bb.d ], [ %i.av, %bb.c ], [ %i.ba, %bb.e ], [ 0.000000e+00, %bb.b ] ; 3 uses
  %.0300 = phi float [ %i.ay, %bb.d ], [ %i.as, %bb.c ], [ %i.ay, %bb.e ], [ f0x322BCC77, %bb.b ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  %i.bh = fmul float %.0300, %.0300
  %i.bi = fmul float %.0301, %.0301
  %i.bj = fmul float %.0302, %.0302
  %i.bk = fmul float %.0303, %.0303
  %i.bl = fadd float %i.bk, %i.bi
  %i.bm = fpext float %i.bl to double             ; 2 uses
  %i.bn = fmul float %.0303, %.0302
  %i.bo = tail call float @llvm.fmuladd.f32(float %.0300, float %.0301, float %i.bn)
  %i.bp = fpext float %i.bo to double
  %i.bq = fmul double %i.bp, -2.000000e+00        ; 2 uses
  %i.br = fadd float %i.bj, %i.bh
  %i.bs = fpext float %i.br to double             ; 2 uses
  %i.bt = fsub double %i.bm, %i.bs                ; 3 uses
  %i.bu = tail call double @hypot(double noundef %i.bt, double noundef %i.bq) #50 ; 2 uses
  %i.bv = fadd double %i.bm, %i.bs                ; 2 uses
  %i.bw = fsub double %i.bv, %i.bu
  %i.bx = fadd double %i.bu, %i.bv
  %i.by = insertelement <2 x double> poison, double %i.bw, i64 0
  %i.bz = insertelement <2 x double> %i.by, double %i.bx, i64 1
  %i.ca = fmul <2 x double> %i.bz, splat (double 5.000000e-01) ; 2 uses
  %i.cb = fptrunc <2 x double> %i.ca to <2 x float>
  %i.cc = fcmp ult <2 x double> %i.ca, splat (double f0xB690000000000000)
  %i.cd = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.cb)
  %i.ce = select <2 x i1> %i.cc, <2 x float> zeroinitializer, <2 x float> %i.cd ; 2 uses
  %i.cf = fcmp ogt <2 x float> %i.ce, splat (float 1.000000e+03)
  %i.cg = select <2 x i1> %i.cf, <2 x float> splat (float 1.000000e+03), <2 x float> %i.ce ; 2 uses
  %i.ch = fptrunc double %i.bq to float           ; 3 uses
  %i.ci = fptrunc double %i.bt to float
  %i.cj = tail call float @llvm.fabs.f32(float %i.ci) ; 4 uses
  %i.ck = tail call float @llvm.fabs.f32(float %i.ch) ; 4 uses
  %i.cl = fcmp ogt float %i.ck, %i.cj             ; 2 uses
  %i.cm = fcmp oeq float %i.ch, 0.000000e+00
  br i1 %i.cm, label %_ZN11OpenImageIO4v3_112ellipse_axesEffffRfS1_S1_Pf.exit, label %bb.f

bb.f:                                             ; preds = %_ZN11OpenImageIO4v3_112adjust_widthERfS1_S1_S1_ff.exit
  %i.cn = fcmp oeq float %i.cj, %i.ck
  br i1 %i.cn, label %_ZN11OpenImageIO4v3_112ellipse_axesEffffRfS1_S1_Pf.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %i.cl, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.co = fdiv float %i.cj, %i.ck
  br label %_ZN11OpenImageIO4v3_112ellipse_axesEffffRfS1_S1_Pf.exit

bb.i:                                             ; preds = %bb.g
  %i.cp = fdiv float %i.ck, %i.cj
  br label %_ZN11OpenImageIO4v3_112ellipse_axesEffffRfS1_S1_Pf.exit

_ZN11OpenImageIO4v3_112ellipse_axesEffffRfS1_S1_Pf.exit: ; preds = %_ZN11OpenImageIO4v3_112adjust_widthERfS1_S1_S1_ff.exit, %bb.f, %bb.h, %bb.i
  %i.cq = phi float [ 0.000000e+00, %_ZN11OpenImageIO4v3_112adjust_widthERfS1_S1_S1_ff.exit ], [ 1.000000e+00, %bb.f ], [ %i.co, %bb.h ], [ %i.cp, %bb.i ]
  %i.cr = fadd float %i.cq, -1.000000e+00
  %i.cs = fadd float %i.cr, 1.000000e+00          ; 3 uses
  %i.ct = fmul float %i.cs, %i.cs                 ; 3 uses
  %i.cu = fmul contract float %i.ct, f0x3EDC3EAD
  %i.cv = fadd contract float %i.cu, 1.000000e+00
  %i.cw = fmul float %i.cs, %i.cv
  %i.cx = fmul contract float %i.ct, 5.793550e-02
  %i.cy = fadd contract float %i.cx, f0x3F43547E
  %i.cz = fmul contract float %i.ct, %i.cy
  %i.da = fadd contract float %i.cz, 1.000000e+00
  %i.db = fdiv float %i.cw, %i.da                 ; 2 uses
  %i.dc = fsub float f0x3FC90FDB, %i.db
  %.0.i.i = select i1 %i.cl, float %i.dc, float %i.db ; 2 uses
  %i.dd = bitcast double %i.bt to i64
  %i.de = fsub float f0x40490FDB, %.0.i.i
  %.not.i57.i = icmp slt i64 %i.dd, 0
  %.1.i.i = select i1 %.not.i57.i, float %i.de, float %.0.i.i
  %i.df = tail call noundef float @llvm.copysign.f32(float %.1.i.i, float %i.ch)
  %i.dg = tail call float @llvm.fmuladd.f32(float %i.df, float 5.000000e-01, float f0x3FC90FDB) ; 5 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %3, i64 24
  %20 = load <2 x float>, ptr %i.dh, align 8, !tbaa !26 ; 4 uses
  %21 = shufflevector <2 x float> %20, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %20, %21
  %22 = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.di = fcmp une float %22, 0.000000e+00
  br i1 %i.di, label %bb.j, label %_ZN11OpenImageIO4v3_111adjust_blurERfS1_S1_ff.exit

bb.j:                                             ; preds = %_ZN11OpenImageIO4v3_112ellipse_axesEffffRfS1_S1_Pf.exit
  %i.dj = fmul float %i.dg, f0x3EA2F983           ; 2 uses
  %i.dk = tail call float @llvm.copysign.f32(float 5.000000e-01, float %i.dj)
  %i.dl = fadd float %i.dj, %i.dk
  %i.dm = fptosi float %i.dl to i32               ; 2 uses
  %i.dn = sitofp i32 %i.dm to float               ; 4 uses
  %i.do = fmul nnan contract float %i.dn, f0x40490000
  %i.dp = fsub contract float %i.dg, %i.do
  %i.dq = fmul nnan contract float %i.dn, f0x3A7DA000
  %i.dr = fsub contract float %i.dp, %i.dq
  %i.ds = fmul nnan contract float %i.dn, f0x34222000
  %i.dt = fsub contract float %i.dr, %i.ds
  %i.du = fmul nnan contract float %i.dn, f0x2CB4611A
  %i.dv = fsub contract float %i.dt, %i.du
  %i.dw = fadd float %i.dv, f0xBFC90FDB
  %i.dx = fadd float %i.dw, f0x3FC90FDB           ; 4 uses
  %i.dy = fmul float %i.dx, %i.dx                 ; 9 uses
  %i.dz = and i32 %i.dm, 1
  %.not.i.i = icmp eq i32 %i.dz, 0                ; 2 uses
  %i.ea = fneg float %i.dx
  %.0.i.i202 = select i1 %.not.i.i, float %i.dx, float %i.ea ; 2 uses
  %i.eb = fmul contract float %i.dy, f0x362F0A87
  %i.ec = fadd contract float %i.eb, f0xB94FBAEB
  %i.ed = fmul contract float %i.dy, %i.ec
  %i.ee = fadd contract float %i.ed, f0x3C088777
  %i.ef = fmul contract float %i.dy, %i.ee
  %i.eg = fadd contract float %i.ef, f0xBE2AAAA6
  %i.eh = fmul float %.0.i.i202, %i.eg
  %i.ei = fmul contract float %i.dy, %i.eh
  %i.ej = fadd contract float %.0.i.i202, %i.ei
  %i.ek = fmul contract float %i.dy, f0x3491ED89
  %i.el = fsub contract float f0x37D0078B, %i.ek
  %i.em = fmul contract float %i.dy, %i.el
  %i.en = fadd contract float %i.em, f0xBAB60B58
  %i.eo = fmul contract float %i.dy, %i.en
  %i.ep = fadd contract float %i.eo, f0x3D2AAAAA
  %i.eq = fmul contract float %i.dy, %i.ep
  %i.er = fadd contract float %i.eq, -5.000000e-01
  %i.es = fmul contract float %i.dy, %i.er
  %i.et = fadd contract float %i.es, 1.000000e+00 ; 2 uses
  %i.eu = fneg float %i.et
  %storemerge.i.i = select i1 %.not.i.i, float %i.et, float %i.eu
  %i.ev = insertelement <2 x float> poison, float %i.ej, i64 0
  %i.ew = insertelement <2 x float> %i.ev, float %storemerge.i.i, i64 1 ; 2 uses
  %i.ex = fcmp oge <2 x float> %i.ew, splat (float -1.000000e+00)
  %i.ey = select <2 x i1> %i.ex, <2 x float> %i.ew, <2 x float> splat (float -1.000000e+00) ; 2 uses
  %i.ez = fcmp ogt <2 x float> %i.ey, splat (float 1.000000e+00)
  %i.fa = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ey)
  %i.fb = select <2 x i1> %i.ez, <2 x float> splat (float 1.000000e+00), <2 x float> %i.fa ; 2 uses
  %23 = shufflevector <2 x float> %20, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fc = shufflevector <2 x float> %i.fb, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.fd = fmul <2 x float> %23, %i.fc
  %i.fe = shufflevector <2 x float> %20, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ff = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fe, <2 x float> %i.fb, <2 x float> %i.fd)
  %i.fg = fadd <2 x float> %i.cg, %i.ff           ; 4 uses
  %i.fh = extractelement <2 x float> %i.fg, i64 0
  %i.fi = extractelement <2 x float> %i.fg, i64 1
  %i.fj = fcmp ogt float %i.fh, %i.fi
  br i1 %i.fj, label %bb.k, label %_ZN11OpenImageIO4v3_111adjust_blurERfS1_S1_ff.exit

bb.k:                                             ; preds = %bb.j
  %i.fk = shufflevector <2 x float> %i.fg, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.fl = fpext float %i.dg to double
  %i.fm = fadd double %i.fl, f0x3FF921FB54442D18
  %i.fn = fptrunc double %i.fm to float
  br label %_ZN11OpenImageIO4v3_111adjust_blurERfS1_S1_ff.exit

_ZN11OpenImageIO4v3_111adjust_blurERfS1_S1_ff.exit: ; preds = %_ZN11OpenImageIO4v3_112ellipse_axesEffffRfS1_S1_Pf.exit, %bb.j, %bb.k
  %.0308 = phi float [ %i.fn, %bb.k ], [ %i.dg, %bb.j ], [ %i.dg, %_ZN11OpenImageIO4v3_112ellipse_axesEffffRfS1_S1_Pf.exit ]
  %i.fo = phi <2 x float> [ %i.fk, %bb.k ], [ %i.fg, %bb.j ], [ %i.cg, %_ZN11OpenImageIO4v3_112ellipse_axesEffffRfS1_S1_Pf.exit ] ; 4 uses
  %i.fp = extractelement <2 x float> %i.fo, i64 0 ; 3 uses
  %i.fq = extractelement <2 x float> %i.fo, i64 1 ; 2 uses
  %i.fr = fdiv float %i.fq, %i.fp                 ; 2 uses
  %.inv.i203 = fcmp oge float %i.fr, 1.000000e+00
  %.0.i.i204 = select i1 %.inv.i203, float %i.fr, float 1.000000e+00 ; 2 uses
  %i.fs = fcmp ogt float %.0.i.i204, 1.000000e+06
  %.1.i.i205 = select i1 %i.fs, float 1.000000e+06, float %.0.i.i204 ; 4 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %3, i64 22
  %i.fu = load i16, ptr %i.ft, align 2, !tbaa !273 ; 2 uses
  %i.fv = uitofp i16 %i.fu to float               ; 8 uses
  %i.fw = fcmp ogt float %.1.i.i205, %i.fv
  br i1 %i.fw, label %bb.l, label %_ZN11OpenImageIO4v3_117TextureSystemImpl18anisotropic_aspectERfS2_RNS0_13TextureOpt_v2ES2_.exit

bb.l:                                             ; preds = %_ZN11OpenImageIO4v3_111adjust_blurERfS1_S1_ff.exit
  %i.fx = getelementptr inbounds nuw i8, ptr %3, i64 21
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !275, !range !62, !noundef !63
  %i.fz = trunc nuw i8 %i.fy to i1
  br i1 %i.fz, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ga = tail call float @llvm.fmuladd.f32(float %i.fp, float %i.fv, float %i.fq)
  %i.gb = fmul float %i.ga, 5.000000e-01          ; 2 uses
  %i.gc = fdiv float %i.gb, %i.fv
  %i.gd = insertelement <2 x float> poison, float %i.gc, i64 0
  %i.ge = insertelement <2 x float> %i.gd, float %i.gb, i64 1
  br label %_ZN11OpenImageIO4v3_117TextureSystemImpl18anisotropic_aspectERfS2_RNS0_13TextureOpt_v2ES2_.exit

bb.n:                                             ; preds = %bb.l
  %i.gf = fmul float %i.fp, %i.fv
  %i.gg = insertelement <2 x float> %i.fo, float %i.gf, i64 1
  br label %_ZN11OpenImageIO4v3_117TextureSystemImpl18anisotropic_aspectERfS2_RNS0_13TextureOpt_v2ES2_.exit

_ZN11OpenImageIO4v3_117TextureSystemImpl18anisotropic_aspectERfS2_RNS0_13TextureOpt_v2ES2_.exit: ; preds = %_ZN11OpenImageIO4v3_111adjust_blurERfS1_S1_ff.exit, %bb.m, %bb.n
  %.0.i = phi float [ %i.fv, %bb.m ], [ %i.fv, %bb.n ], [ %.1.i.i205, %_ZN11OpenImageIO4v3_111adjust_blurERfS1_S1_ff.exit ] ; 5 uses
  %i.gh = phi <2 x float> [ %i.ge, %bb.m ], [ %i.gg, %bb.n ], [ %i.fo, %_ZN11OpenImageIO4v3_111adjust_blurERfS1_S1_ff.exit ] ; 4 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !197
  %i.gk = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.gl = sext i32 %i.gj to i64
  %i.gm = load ptr, ptr %i.gk, align 8, !tbaa !198
  %i.gn = getelementptr inbounds nuw [128 x i8], ptr %i.gm, i64 %i.gl ; 4 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 96
  %i.gp = load i32, ptr %i.go, align 8, !tbaa !467 ; 3 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gn, i64 100
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !468 ; 7 uses
  %i.gs = icmp slt i32 %i.gr, %i.gp
  br i1 %i.gs, label %.lr.ph.i, label %.loopexit.i.thread

.lr.ph.i:                                         ; preds = %_ZN11OpenImageIO4v3_117TextureSystemImpl18anisotropic_aspectERfS2_RNS0_13TextureOpt_v2ES2_.exit
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gn, i64 104
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !469
  %i.gv = sext i32 %i.gr to i64
  %i.gw = extractelement <2 x float> %i.gh, i64 0 ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %.critedge.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.gv, %.lr.ph.i ], [ %indvars.iv.next.i, %.critedge.i ] ; 4 uses
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %indvars.iv.i
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !3
  %i.gz = sitofp i32 %i.gy to float
  %i.ha = fmul float %i.gw, %i.gz                 ; 2 uses
  %i.hb = fcmp ugt float %i.ha, 1.000000e+00
  br i1 %i.hb, label %.critedge.i, label %.loopexit.i

.critedge.i:                                      ; preds = %bb.o
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i = icmp eq i32 %i.gp, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %.loopexit.i.thread, label %bb.o, !llvm.loop !470

.loopexit.i:                                      ; preds = %bb.o
  %i.hc = trunc nsw i64 %indvars.iv.i to i32      ; 6 uses
  %i.hd = add nsw i32 %i.hc, -1                   ; 2 uses
  %i.he = tail call float @llvm.fmuladd.f32(float %i.ha, float 2.000000e+00, float -1.000000e+00) ; 2 uses
  %.inv.i208 = fcmp oge float %i.he, 0.000000e+00
  %.0.i77.i = select i1 %.inv.i208, float %i.he, float 0.000000e+00 ; 2 uses
  %i.hf = fcmp ogt float %.0.i77.i, 1.000000e+00
  %.1.i78.i = select i1 %i.hf, float 1.000000e+00, float %.0.i77.i ; 6 uses
  %i.hg = fsub float 1.000000e+00, %.1.i78.i
  %i.hh = icmp slt i64 %indvars.iv.i, 0
  br i1 %i.hh, label %.loopexit.i.thread, label %bb.p

.loopexit.i.thread:                               ; preds = %.critedge.i, %_ZN11OpenImageIO4v3_117TextureSystemImpl18anisotropic_aspectERfS2_RNS0_13TextureOpt_v2ES2_.exit, %.loopexit.i
  %i.hi = add nsw i32 %i.gp, -1                   ; 2 uses
  br label %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit

bb.p:                                             ; preds = %.loopexit.i
  %.not351 = icmp slt i32 %i.gr, %i.hc
  br i1 %.not351, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.hj = getelementptr inbounds nuw i8, ptr %3, i64 19
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !193
  switch i8 %i.hk, label %bb.t [
    i8 1, label %bb.r
    i8 2, label %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit
  ]

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gn, i64 120
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !199 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 36
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hm, i64 40
  %i.hp = load i32, ptr %i.hn, align 4, !tbaa !3
  %i.hq = load i32, ptr %i.ho, align 4, !tbaa !3
  %i.hr = tail call i32 @llvm.smax.i32(i32 %i.hp, i32 %i.hq)
  %i.hs = sitofp i32 %i.hr to float               ; 2 uses
  %i.ht = fmul float %i.gw, %i.hs
  %i.hu = fcmp olt float %i.ht, 5.000000e-01
  br i1 %i.hu, label %bb.s, label %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit

bb.s:                                             ; preds = %bb.r
  %i.hv = extractelement <2 x float> %i.gh, i64 1
  %i.hw = fmul float %i.hv, %i.hs
  %i.hx = fmul float %i.hw, 2.000000e+00          ; 2 uses
  %.inv93.i = fcmp oge float %i.hx, 1.000000e+00
  %.0.i75.i = select i1 %.inv93.i, float %i.hx, float 1.000000e+00 ; 2 uses
  %i.hy = fcmp ogt float %.0.i75.i, %i.fv
  %.1.i76.i = select i1 %i.hy, float %i.fv, float %.0.i75.i
  br label %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit

bb.t:                                             ; preds = %bb.q
  br i1 %i.aa, label %bb.u, label %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit

bb.u:                                             ; preds = %bb.t
  %i.hz = fcmp ult float %i.t, %.1.i78.i          ; 2 uses
  %i.ia = fdiv float %i.t, %.1.i78.i
  %i.ib = fsub float %i.t, %.1.i78.i
  %i.ic = fsub float 1.000000e+00, %.1.i78.i
  %i.id = fdiv float %i.ib, %i.ic
  %.sroa.10.1 = select i1 %i.hz, i32 %i.hc, i32 %i.hd ; 2 uses
  %.sink109.i = select i1 %i.hz, float %i.ia, float %i.id ; 2 uses
  %.inv91.i = fcmp oge float %.sink109.i, 0.000000e+00
  %.0.i.i206 = select i1 %.inv91.i, float %.sink109.i, float 0.000000e+00 ; 2 uses
  %i.ie = fcmp ogt float %.0.i.i206, 1.000000e+00
  %.1.i.i207 = select i1 %i.ie, float 1.000000e+00, float %.0.i.i206 ; 2 uses
  store float %.1.i.i207, ptr %i.s, align 8, !tbaa !284
  br label %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit

_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit: ; preds = %bb.q, %.loopexit.i.thread, %bb.r, %bb.s, %bb.t, %bb.u
  %i.if = phi float [ %i.t, %.loopexit.i.thread ], [ %i.t, %bb.s ], [ %i.t, %bb.r ], [ %.1.i.i207, %bb.u ], [ %i.t, %bb.t ], [ %i.t, %bb.q ]
  %.sroa.10.2 = phi i32 [ %i.hi, %.loopexit.i.thread ], [ %i.gr, %bb.s ], [ %i.gr, %bb.r ], [ %.sroa.10.1, %bb.u ], [ %i.hc, %bb.t ], [ %i.hc, %bb.q ] ; 7 uses
  %.sroa.0328.2 = phi i32 [ %i.hi, %.loopexit.i.thread ], [ %i.gr, %bb.s ], [ %i.gr, %bb.r ], [ %.sroa.10.1, %bb.u ], [ %i.hd, %bb.t ], [ %i.hc, %bb.q ] ; 7 uses
  %.sroa.9.1 = phi float [ 0.000000e+00, %.loopexit.i.thread ], [ 0.000000e+00, %bb.s ], [ 0.000000e+00, %bb.r ], [ 0.000000e+00, %bb.u ], [ %.1.i78.i, %bb.t ], [ 0.000000e+00, %bb.q ] ; 2 uses
  %.sroa.0.1 = phi float [ 1.000000e+00, %.loopexit.i.thread ], [ 1.000000e+00, %bb.s ], [ 1.000000e+00, %bb.r ], [ 1.000000e+00, %bb.u ], [ %i.hg, %bb.t ], [ 1.000000e+00, %bb.q ] ; 2 uses
  %.0309 = phi float [ %.0.i, %.loopexit.i.thread ], [ %.1.i76.i, %bb.s ], [ %.0.i, %bb.r ], [ %.0.i, %bb.u ], [ %.0.i, %bb.t ], [ %.0.i, %bb.q ]
  %i.ig = zext i16 %i.fu to i32
  %i.ih = shl nuw nsw i32 %i.ig, 1
  %i.ii = add nuw nsw i32 %i.ih, 2
  %i.ij = and i32 %i.ii, 262140                   ; 5 uses
  %.not = icmp eq i32 %i.ij, 0
  br i1 %.not, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit
  %i.ik = shl nuw nsw i32 %i.ij, 4
  %i.il = zext nneg i32 %i.ik to i64
  %i.im = alloca i8, i64 %i.il, align 16
  br label %bb.w

bb.w:                                             ; preds = %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit, %bb.v
  %i.in = phi ptr [ %i.im, %bb.v ], [ null, %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit ] ; 14 uses
  %i.io = zext nneg i32 %i.ij to i64
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.in, i64 %i.io ; 4 uses
  %i.iq = shl nuw nsw i32 %i.ij, 1
  %i.ir = zext nneg i32 %i.iq to i64
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.in, i64 %i.ir ; 13 uses
  %i.it = mul nuw nsw i32 %i.ij, 3
  %i.iu = zext nneg i32 %i.it to i64
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.in, i64 %i.iu ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #3
  %i.iw = extractelement <2 x float> %i.gh, i64 0
  %i.ix = extractelement <2 x float> %i.gh, i64 1
  %i.iy = call noundef i32 @_ZN11OpenImageIO4v3_124compute_ellipse_samplingEffffRfS1_S1_PfS2_bf(float noundef %.0309, float noundef %.0308, float noundef %i.ix, float noundef %i.iw, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef %i.in, ptr noundef %i.ip, i1 noundef zeroext %i.ab, float noundef %i.if) ; 16 uses
  %i.iz = load float, ptr %i.a, align 4, !tbaa !26
  %i.ja = fmul float %i.iz, 5.000000e-01          ; 2 uses
  store float %i.ja, ptr %i.a, align 4, !tbaa !26
  %i.jb = load float, ptr %i.b, align 4, !tbaa !26
  %i.jc = fmul float %i.jb, 5.000000e-01          ; 2 uses
  store float %i.jc, ptr %i.b, align 4, !tbaa !26
  %i.jd = icmp sgt i32 %i.iy, 0
  br i1 %i.jd, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.w
end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_117TextureSystemImpl14texture_lookupERNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiiffffffPfS8_S8_:bb.a
  br label %bb.au

bb.at:                                            ; preds = %bb.al
  %i.nl = call noundef zeroext i1 @_ZN11OpenImageIO4v3_117TextureSystemImpl14sample_closestEiPKfS3_iRNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiiS3_PNS0_4simd7vfloat4ESC_SC_(ptr noundef nonnull align 8 dereferenceable(188) %0, i32 noundef %i.iy, ptr noundef %i.is, ptr noundef %i.iv, i32 noundef %.sroa.10.2, ptr noundef nonnull align 8 dereferenceable(400) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(76) %3, i32 noundef %4, i32 noundef %5, ptr noundef %i.in, ptr noundef nonnull %15, ptr noundef null, ptr noundef null)
  %i.nm = and i1 %i.nl, %.2162
  %i.nn = add nuw nsw i32 %.2157, 1
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.al
  %.1161.1 = phi i1 [ %.2162, %bb.al ], [ %i.nm, %bb.at ], [ %i.nj, %bb.as ], [ %i.ng, %bb.ar ], [ %i.nd, %bb.aq ], [ %i.na, %bb.ap ]
  %.1156.1 = phi i32 [ %.2157, %bb.al ], [ %i.nn, %bb.at ], [ %.2157, %bb.as ], [ %.2157, %bb.ar ], [ %.2157, %bb.aq ], [ %.2157, %bb.ap ]
  %.1153.1 = phi i32 [ %.2154, %bb.al ], [ %.2154, %bb.at ], [ %i.nk, %bb.as ], [ %.2154, %bb.ar ], [ %.2154, %bb.aq ], [ %i.nb, %bb.ap ]
  %.1150.1 = phi i32 [ %.2151, %bb.al ], [ %.2151, %bb.at ], [ %.2151, %bb.as ], [ %i.nh, %bb.ar ], [ %i.ne, %bb.aq ], [ %.2151, %bb.ap ]
  %i.no = insertelement <4 x float> poison, float %.sroa.9.1, i64 0
  %i.np = shufflevector <4 x float> %i.no, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.nq = load <4 x float>, ptr %15, align 16, !tbaa !34
  %i.nr = fmul <4 x float> %i.np, %i.nq
  %i.ns = fadd <4 x float> %.sroa.0220.1, %i.nr
  br i1 %.not168, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.nt = load <4 x float>, ptr %16, align 16, !tbaa !34
  %i.nu = fmul <4 x float> %i.np, %i.nt
  %i.nv = fadd <4 x float> %.sroa.0219.3, %i.nu
  %i.nw = load <4 x float>, ptr %17, align 16, !tbaa !34
  %i.nx = fmul <4 x float> %i.np, %i.nw
  %i.ny = fadd <4 x float> %.sroa.0218.3, %i.nx
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.sroa.0219.2.1 = phi <4 x float> [ %.sroa.0219.3, %bb.au ], [ %i.nv, %bb.av ]
  %.sroa.0218.2.1 = phi <4 x float> [ %.sroa.0218.3, %bb.au ], [ %i.ny, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #3
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.ak
  %.sroa.0220.1.1 = phi <4 x float> [ %i.ns, %bb.aw ], [ %.sroa.0220.1, %bb.ak ]
  %.sroa.0219.3.1 = phi <4 x float> [ %.sroa.0219.2.1, %bb.aw ], [ %.sroa.0219.3, %bb.ak ]
  %.sroa.0218.3.1 = phi <4 x float> [ %.sroa.0218.2.1, %bb.aw ], [ %.sroa.0218.3, %bb.ak ]
  %.2162.1 = phi i1 [ %.1161.1, %bb.aw ], [ %.2162, %bb.ak ]
  %.1159.1 = phi i32 [ %i.mf, %bb.aw ], [ %.1159, %bb.ak ] ; 2 uses
  %.2157.1 = phi i32 [ %.1156.1, %bb.aw ], [ %.2157, %bb.ak ]
  %.2154.1 = phi i32 [ %.1153.1, %bb.aw ], [ %.2154, %bb.ak ]
  %.2151.1 = phi i32 [ %.1150.1, %bb.aw ], [ %.2151, %bb.ak ]
  store <4 x float> %.sroa.0220.1.1, ptr %12, align 16, !tbaa !34
  br i1 %.not168, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  store <4 x float> %.sroa.0219.3.1, ptr %13, align 16, !tbaa !34
  store <4 x float> %.sroa.0218.3.1, ptr %14, align 16, !tbaa !34
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.nz = zext nneg i32 %.1159.1 to i64
  %i.oa = getelementptr inbounds nuw i8, ptr %2, i64 280 ; 2 uses
  %i.ob = load i64, ptr %i.oa, align 8, !tbaa !369
  %i.oc = add nsw i64 %i.ob, %i.nz
  store i64 %i.oc, ptr %i.oa, align 8, !tbaa !369
  %i.od = mul nsw i32 %.1159.1, %i.iy
  %i.oe = sext i32 %i.od to i64
  %i.of = getelementptr inbounds nuw i8, ptr %2, i64 288 ; 2 uses
  %i.og = load i64, ptr %i.of, align 8, !tbaa !370
  %i.oh = add nsw i64 %i.og, %i.oe
  store i64 %i.oh, ptr %i.of, align 8, !tbaa !370
  %i.oi = getelementptr inbounds nuw i8, ptr %2, i64 296 ; 2 uses
  %i.oj = load float, ptr %i.oi, align 8, !tbaa !472
  %i.ok = fcmp ogt float %.1.i.i205, %i.oj
  br i1 %i.ok, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  store float %.1.i.i205, ptr %i.oi, align 8, !tbaa !472
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.ol = mul nsw i32 %.2157.1, %i.iy
  %i.om = sext i32 %i.ol to i64
  %i.on = getelementptr inbounds nuw i8, ptr %2, i64 304 ; 2 uses
  %i.oo = load i64, ptr %i.on, align 8, !tbaa !473
  %i.op = add nsw i64 %i.oo, %i.om
  store i64 %i.op, ptr %i.on, align 8, !tbaa !473
  %i.oq = mul nsw i32 %.2154.1, %i.iy
  %i.or = sext i32 %i.oq to i64
  %i.os = getelementptr inbounds nuw i8, ptr %2, i64 312 ; 2 uses
  %i.ot = load i64, ptr %i.os, align 8, !tbaa !474
  %i.ou = add nsw i64 %i.ot, %i.or
  store i64 %i.ou, ptr %i.os, align 8, !tbaa !474
  %i.ov = mul nsw i32 %.2151.1, %i.iy
  %i.ow = sext i32 %i.ov to i64
  %i.ox = getelementptr inbounds nuw i8, ptr %2, i64 320 ; 2 uses
  %i.oy = load i64, ptr %i.ox, align 8, !tbaa !475
  %i.oz = add nsw i64 %i.oy, %i.ow
  store i64 %i.oz, ptr %i.ox, align 8, !tbaa !475
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  ret i1 %.2162.1
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_117TextureSystemImpl20texture_lookup_nomipERNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiiffffffPfS8_S8_(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef nonnull align 8 dereferenceable(400) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(76) %3, i32 noundef %4, i32 noundef %5, float noundef %6, float noundef %7, float %8, float %9, float %10, float %11, ptr noundef initializes((0, 16)) %12, ptr noundef %13, ptr noundef %14) #11 align 2 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 6 uses
  %i.b = alloca [4 x float], align 16             ; 6 uses
  store <4 x float> zeroinitializer, ptr %12, align 16, !tbaa !34
  %.not = icmp eq ptr %13, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store <4 x float> zeroinitializer, ptr %13, align 16, !tbaa !34
  store <4 x float> zeroinitializer, ptr %14, align 16, !tbaa !34
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 2 uses
  %i.d = load i8, ptr %i.c, align 4, !tbaa !271
  %i.e = zext i8 %i.d to i64
  %i.f = getelementptr inbounds nuw [16 x i8], ptr @_ZZN11OpenImageIO4v3_117TextureSystemImpl31texture_lookup_trilinear_mipmapERNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiiffffffPfS8_S8_E16sample_functions, i64 %i.e
  %.unpack = load i64, ptr %i.f, align 16, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  store float %6, ptr %i.a, align 16, !tbaa !26
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store <2 x float> zeroinitializer, ptr %i.g, align 4, !tbaa !26
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store float 0.000000e+00, ptr %i.h, align 4, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  store float %7, ptr %i.b, align 16, !tbaa !26
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store <2 x float> zeroinitializer, ptr %i.i, align 4, !tbaa !26
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store float 0.000000e+00, ptr %i.j, align 4, !tbaa !26
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !197
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.n = sext i32 %i.l to i64
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !198
  %i.p = getelementptr inbounds nuw [128 x i8], ptr %i.o, i64 %i.n
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 100
  %i.r = load i32, ptr %i.q, align 4, !tbaa !468
  %i.s = inttoptr i64 %.unpack to ptr
  %i.t = call noundef zeroext i1 %i.s(ptr noundef nonnull align 8 dereferenceable(188) %0, i32 noundef 1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %i.r, ptr noundef nonnull align 8 dereferenceable(400) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(76) %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull @_ZZN11OpenImageIO4v3_117TextureSystemImpl20texture_lookup_nomipERNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiiffffffPfS8_S8_E6weight, ptr noundef nonnull %12, ptr noundef %13, ptr noundef %14)
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 280 ; 2 uses
  %i.v = load <2 x i64>, ptr %i.u, align 8, !tbaa !195
  %i.w = add nsw <2 x i64> %i.v, splat (i64 1)
  store <2 x i64> %i.w, ptr %i.u, align 8, !tbaa !195
  %i.x = load i8, ptr %i.c, align 4, !tbaa !271   ; 2 uses
  %i.y = icmp ult i8 %i.x, 4
  br i1 %i.y, label %switch.lookup, label %bb.d

switch.lookup:                                    ; preds = %bb.c
  %i.z = zext nneg i8 %i.x to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table._ZN11OpenImageIO4v3_117TextureSystemImpl31texture_lookup_trilinear_mipmapERNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiiffffffPfS8_S8_, i64 %i.z
  %switch.load = load i16, ptr %switch.gep, align 2
  %switch.ext = zext i16 %switch.load to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 %switch.ext ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !195
  %i.ac = add nsw i64 %i.ab, 1
  store i64 %i.ac, ptr %i.aa, align 8, !tbaa !195
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %switch.lookup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  ret i1 %i.t
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_117TextureSystemImpl31texture_lookup_trilinear_mipmapERNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiiffffffPfS8_S8_(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef nonnull align 8 dereferenceable(400) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(76) %3, i32 noundef %4, i32 noundef %5, float noundef %6, float noundef %7, float noundef %8, float noundef %9, float noundef %10, float noundef %11, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %12, ptr nofree noundef writeonly captures(address_is_null) %13, ptr nofree noundef writeonly captures(none) %14) #11 align 2 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 9 uses
  %i.b = alloca [4 x float], align 16             ; 9 uses
  %i.c = alloca [4 x float], align 16             ; 7 uses
  %15 = alloca %"class.OpenImageIO::v3_1::simd::vfloat4", align 16 ; 16 uses
  %16 = alloca %"class.OpenImageIO::v3_1::simd::vfloat4", align 16 ; 12 uses
  %17 = alloca %"class.OpenImageIO::v3_1::simd::vfloat4", align 16 ; 12 uses
  store <4 x float> zeroinitializer, ptr %12, align 16, !tbaa !34
  %.not = icmp eq ptr %13, null                   ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store <4 x float> zeroinitializer, ptr %13, align 16, !tbaa !34
  store <4 x float> zeroinitializer, ptr %14, align 16, !tbaa !34
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.e = load float, ptr %i.d, align 8, !tbaa !284 ; 4 uses
  %i.f = fcmp ult float %i.e, 0.000000e+00
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.h = load i32, ptr %i.g, align 8, !tbaa !114
  %i.i = trunc i32 %i.h to i1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = phi i1 [ false, %bb.c ], [ %i.i, %bb.d ]
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 36
  %18 = load <2 x float>, ptr %i.k, align 4, !tbaa !26 ; 2 uses
  %i.l = insertelement <2 x float> poison, float %10, i64 0
  %i.m = insertelement <2 x float> %i.l, float %8, i64 1
  %i.n = shufflevector <2 x float> %18, <2 x float> poison, <2 x i32> zeroinitializer
  %i.o = fmul <2 x float> %i.m, %i.n              ; 5 uses
  %i.p = insertelement <2 x float> poison, float %11, i64 0
  %i.q = insertelement <2 x float> %i.p, float %9, i64 1
  %19 = shufflevector <2 x float> %18, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.r = fmul <2 x float> %i.q, %19               ; 5 uses
  %i.s = fmul <2 x float> %i.r, %i.r
  %i.t = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.o, <2 x float> %i.o, <2 x float> %i.s) ; 3 uses
  %i.u = fcmp olt <2 x float> %i.t, splat (float 1.000000e-16) ; 3 uses
  %i.v = extractelement <2 x i1> %i.u, i64 1
  br i1 %i.v, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.w = extractelement <2 x i1> %i.u, i64 0
  br i1 %i.w, label %_ZN11OpenImageIO4v3_112adjust_widthERfS1_S1_S1_ff.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = extractelement <2 x float> %i.t, i64 0
  %i.y = tail call float @llvm.sqrt.f32(float %i.x)
  %i.z = fdiv float f0x322BCC77, %i.y             ; 2 uses
  %i.aa = extractelement <2 x float> %i.r, i64 0  ; 2 uses
  %i.ab = fmul float %i.aa, %i.z
  %i.ac = extractelement <2 x float> %i.o, i64 0  ; 2 uses
  %i.ad = fneg float %i.ac
  %i.ae = fmul float %i.z, %i.ad
  br label %_ZN11OpenImageIO4v3_112adjust_widthERfS1_S1_S1_ff.exit

bb.h:                                             ; preds = %bb.e
  %i.af = extractelement <2 x i1> %i.u, i64 0
  %i.ag = extractelement <2 x float> %i.o, i64 0
  %i.ah = extractelement <2 x float> %i.o, i64 1  ; 3 uses
  %i.ai = extractelement <2 x float> %i.r, i64 0
  %i.aj = extractelement <2 x float> %i.r, i64 1  ; 3 uses
  br i1 %i.af, label %bb.i, label %_ZN11OpenImageIO4v3_112adjust_widthERfS1_S1_S1_ff.exit

bb.i:                                             ; preds = %bb.h
  %i.ak = extractelement <2 x float> %i.t, i64 1
  %i.al = tail call float @llvm.sqrt.f32(float %i.ak)
  %i.am = fdiv float f0x322BCC77, %i.al           ; 2 uses
  %i.an = fneg float %i.aj
  %i.ao = fmul float %i.am, %i.an
  %i.ap = fmul float %i.ah, %i.am
  br label %_ZN11OpenImageIO4v3_112adjust_widthERfS1_S1_S1_ff.exit

_ZN11OpenImageIO4v3_112adjust_widthERfS1_S1_S1_ff.exit: ; preds = %bb.f, %bb.g, %bb.h, %bb.i
  %.0122 = phi float [ %i.ai, %bb.h ], [ %i.aa, %bb.g ], [ %i.ap, %bb.i ], [ f0x322BCC77, %bb.f ]
  %.0121 = phi float [ %i.ag, %bb.h ], [ %i.ac, %bb.g ], [ %i.ao, %bb.i ], [ 0.000000e+00, %bb.f ]
  %.0120 = phi float [ %i.aj, %bb.h ], [ %i.ae, %bb.g ], [ %i.aj, %bb.i ], [ 0.000000e+00, %bb.f ]
  %.0119 = phi float [ %i.ah, %bb.h ], [ %i.ab, %bb.g ], [ %i.ah, %bb.i ], [ f0x322BCC77, %bb.f ]
  %i.aq = tail call float @llvm.fabs.f32(float %.0119) ; 2 uses
  %i.ar = tail call float @llvm.fabs.f32(float %.0121) ; 2 uses
  %i.as = fcmp olt float %i.aq, %i.ar
  %.sroa.speculated92 = select i1 %i.as, float %i.ar, float %i.aq ; 4 uses
  %i.at = tail call float @llvm.fabs.f32(float %.0120) ; 2 uses
  %i.au = tail call float @llvm.fabs.f32(float %.0122) ; 2 uses
  %i.av = fcmp olt float %i.at, %i.au
  %.sroa.speculated = select i1 %i.av, float %i.au, float %i.at ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 21
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !275, !range !62, !noundef !63
  %i.ay = trunc nuw i8 %i.ax to i1
  %i.az = fcmp olt float %.sroa.speculated92, %.sroa.speculated
  %i.ba = fcmp olt float %.sroa.speculated, %.sroa.speculated92
  %..i75.val = select i1 %i.az, float %.sroa.speculated, float %.sroa.speculated92
  %..i76.val = select i1 %i.ba, float %.sroa.speculated, float %.sroa.speculated92
  %i.bb = select i1 %i.ay, float %..i75.val, float %..i76.val
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.be = load float, ptr %i.bc, align 8, !tbaa !26 ; 2 uses
  %i.bf = load float, ptr %i.bd, align 4, !tbaa !26 ; 2 uses
  %i.bg = fcmp olt float %i.be, %i.bf
  %i.bh = select i1 %i.bg, float %i.bf, float %i.be
  %i.bi = fadd float %i.bb, %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !197
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bm = sext i32 %i.bk to i64
  %i.bn = load ptr, ptr %i.bl, align 8, !tbaa !198
  %i.bo = getelementptr inbounds nuw [128 x i8], ptr %i.bn, i64 %i.bm ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 96
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !467 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 100
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !468 ; 7 uses
  %i.bt = icmp slt i32 %i.bs, %i.bq
  br i1 %i.bt, label %.lr.ph.i, label %.loopexit.i.thread

.lr.ph.i:                                         ; preds = %_ZN11OpenImageIO4v3_112adjust_widthERfS1_S1_S1_ff.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 104
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !469
  %i.bw = sext i32 %i.bs to i64
  br label %bb.j

bb.j:                                             ; preds = %.critedge.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.bw, %.lr.ph.i ], [ %indvars.iv.next.i, %.critedge.i ] ; 4 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv.i
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !3
  %i.bz = sitofp i32 %i.by to float
  %i.ca = fmul float %i.bi, %i.bz                 ; 2 uses
  %i.cb = fcmp ugt float %i.ca, 1.000000e+00
  br i1 %i.cb, label %.critedge.i, label %.loopexit.i

.critedge.i:                                      ; preds = %bb.j
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i = icmp eq i32 %i.bq, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %.loopexit.i.thread, label %bb.j, !llvm.loop !470

.loopexit.i:                                      ; preds = %bb.j
  %i.cc = trunc nsw i64 %indvars.iv.i to i32      ; 6 uses
  %i.cd = add nsw i32 %i.cc, -1                   ; 2 uses
  %i.ce = tail call float @llvm.fmuladd.f32(float %i.ca, float 2.000000e+00, float -1.000000e+00) ; 2 uses
  %.inv.i = fcmp oge float %i.ce, 0.000000e+00
  %.0.i77.i = select i1 %.inv.i, float %i.ce, float 0.000000e+00 ; 2 uses
  %i.cf = fcmp ogt float %.0.i77.i, 1.000000e+00
  %.1.i78.i = select i1 %i.cf, float 1.000000e+00, float %.0.i77.i ; 6 uses
  %i.cg = fsub float 1.000000e+00, %.1.i78.i
  %i.ch = icmp slt i64 %indvars.iv.i, 0
  br i1 %i.ch, label %.loopexit.i.thread, label %bb.k

.loopexit.i.thread:                               ; preds = %.critedge.i, %_ZN11OpenImageIO4v3_112adjust_widthERfS1_S1_S1_ff.exit, %.loopexit.i
  %i.ci = add nsw i32 %i.bq, -1                   ; 2 uses
  br label %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit

bb.k:                                             ; preds = %.loopexit.i
  %.not175 = icmp slt i32 %i.bs, %i.cc
  br i1 %.not175, label %bb.l, label %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit

bb.l:                                             ; preds = %bb.k
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 19
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !193
  switch i8 %i.ck, label %bb.n [
    i8 1, label %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit
    i8 2, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  br label %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit

bb.n:                                             ; preds = %bb.l
  br i1 %i.j, label %bb.o, label %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit

bb.o:                                             ; preds = %bb.n
  %i.cl = fcmp ult float %i.e, %.1.i78.i          ; 2 uses
  %i.cm = fdiv float %i.e, %.1.i78.i
  %i.cn = fsub float %i.e, %.1.i78.i
  %i.co = fsub float 1.000000e+00, %.1.i78.i
  %i.cp = fdiv float %i.cn, %i.co
  %.sroa.11.1 = select i1 %i.cl, i32 %i.cc, i32 %i.cd ; 2 uses
  %.sink109.i = select i1 %i.cl, float %i.cm, float %i.cp ; 2 uses
  %.inv91.i = fcmp oge float %.sink109.i, 0.000000e+00
  %.0.i.i = select i1 %.inv91.i, float %.sink109.i, float 0.000000e+00 ; 2 uses
  %i.cq = fcmp ogt float %.0.i.i, 1.000000e+00
  %.1.i.i = select i1 %i.cq, float 1.000000e+00, float %.0.i.i
  store float %.1.i.i, ptr %i.d, align 8, !tbaa !284
  br label %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit

_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit: ; preds = %bb.k, %bb.l, %.loopexit.i.thread, %bb.m, %bb.n, %bb.o
  %.sroa.11.2 = phi i32 [ %i.ci, %.loopexit.i.thread ], [ %i.cc, %bb.m ], [ %.sroa.11.1, %bb.o ], [ %i.cc, %bb.n ], [ %i.bs, %bb.l ], [ %i.bs, %bb.k ] ; 2 uses
  %.sroa.0146.2 = phi i32 [ %i.ci, %.loopexit.i.thread ], [ %i.cc, %bb.m ], [ %.sroa.11.1, %bb.o ], [ %i.cd, %bb.n ], [ %i.bs, %bb.l ], [ %i.bs, %bb.k ] ; 2 uses
  %.sroa.10.1 = phi float [ 0.000000e+00, %.loopexit.i.thread ], [ 0.000000e+00, %bb.m ], [ 0.000000e+00, %bb.o ], [ %.1.i78.i, %bb.n ], [ 0.000000e+00, %bb.l ], [ 0.000000e+00, %bb.k ] ; 4 uses
  %.sroa.0.1 = phi float [ 1.000000e+00, %.loopexit.i.thread ], [ 1.000000e+00, %bb.m ], [ 1.000000e+00, %bb.o ], [ %i.cg, %bb.n ], [ 1.000000e+00, %bb.l ], [ 1.000000e+00, %bb.k ] ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 2 uses
  %i.cs = load i8, ptr %i.cr, align 4, !tbaa !271
  %i.ct = zext i8 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [16 x i8], ptr @_ZZN11OpenImageIO4v3_117TextureSystemImpl31texture_lookup_trilinear_mipmapERNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiiffffffPfS8_S8_E16sample_functions, i64 %i.ct
  %.unpack = load i64, ptr %i.cu, align 16, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  store float %6, ptr %i.a, align 16, !tbaa !26
  %i.cv = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store <2 x float> zeroinitializer, ptr %i.cv, align 4, !tbaa !26
  %i.cw = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store float 0.000000e+00, ptr %i.cw, align 4, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  store float %7, ptr %i.b, align 16, !tbaa !26
  %i.cx = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store <2 x float> zeroinitializer, ptr %i.cx, align 4, !tbaa !26
  %i.cy = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store float 0.000000e+00, ptr %i.cy, align 4, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, ptr noundef nonnull align 16 dereferenceable(16) @__const._ZN11OpenImageIO4v3_117TextureSystemImpl31texture_lookup_trilinear_mipmapERNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiiffffffPfS8_S8_.weight, i64 16, i1 false)
  %i.cz = inttoptr i64 %.unpack to ptr            ; 4 uses
  %i.da = fcmp une float %.sroa.0.1, 0.000000e+00 ; 2 uses
  br i1 %.not, label %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.us.preheader, label %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.preheader

_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.preheader: ; preds = %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit
  br i1 %i.da, label %bb.r, label %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.1

_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.us.preheader: ; preds = %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit
  br i1 %i.da, label %bb.p, label %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.us.1

bb.p:                                             ; preds = %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.us.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #3
  %i.db = call noundef zeroext i1 %i.cz(ptr noundef nonnull align 8 dereferenceable(188) %0, i32 noundef 1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %.sroa.0146.2, ptr noundef nonnull align 8 dereferenceable(400) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(76) %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull %i.c, ptr noundef nonnull %15, ptr noundef null, ptr noundef null)
  %i.dc = zext i1 %i.db to i8
  %i.dd = insertelement <4 x float> poison, float %.sroa.0.1, i64 0
  %i.de = shufflevector <4 x float> %i.dd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.df = load <4 x float>, ptr %15, align 16, !tbaa !34
  %i.dg = fmul <4 x float> %i.de, %i.df
  %i.dh = fadd <4 x float> %i.dg, zeroinitializer
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #3
  br label %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.us.1

_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.us.1: ; preds = %bb.p, %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.us.preheader
end_hunk_1
