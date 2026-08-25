Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/texturesys?download=true
inline.NumInlined: 5128
inline.NumDeleted: 1476
loop-unroll.NumCompletelyUnrolled: 51
loop-unroll.NumRuntimeUnrolled: 52
loop-unroll.NumUnrolled: 108
begin_hunk_0_@_ZN11OpenImageIO4v3_117TextureSystemImpl15missing_textureERNS0_13TextureOpt_v2EiPfS4_S4_S4_:bb.a
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
  %i.ad = load <4 x float>, ptr %i.ac, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 40
  %18 = load float, ptr %i.ae, align 8, !tbaa !283
  %i.af = insertelement <2 x float> %i.g, float %8, i64 1
  %i.ag = shufflevector <4 x float> %i.ad, <4 x float> poison, <2 x i32> zeroinitializer
  %i.ah = fmul <2 x float> %i.af, %i.ag           ; 5 uses
  %i.ai = insertelement <2 x float> poison, float %11, i64 0
  %19 = insertelement <2 x float> %i.ai, float %9, i64 1
  %i.aj = insertelement <2 x float> poison, float %18, i64 0
  %i.ak = shufflevector <2 x float> %i.aj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.al = fmul <2 x float> %19, %i.ak             ; 5 uses
  %i.am = fmul <2 x float> %i.al, %i.al
  %i.an = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ah, <2 x float> %i.ah, <2 x float> %i.am) ; 3 uses
  %i.ao = fcmp olt <2 x float> %i.an, splat (float 1.000000e-16) ; 3 uses
  %i.ap = extractelement <2 x i1> %i.ao, i64 1
  br i1 %i.ap, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.aq = extractelement <2 x i1> %i.ao, i64 0
  br i1 %i.aq, label %_ZN11OpenImageIO4v3_112adjust_widthERfS1_S1_S1_ff.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ar = extractelement <2 x float> %i.an, i64 0
  %i.as = tail call float @llvm.sqrt.f32(float %i.ar)
  %i.at = fdiv float f0x322BCC77, %i.as           ; 2 uses
  %i.au = extractelement <2 x float> %i.al, i64 0 ; 2 uses
  %i.av = fmul float %i.au, %i.at
  %i.aw = extractelement <2 x float> %i.ah, i64 0 ; 2 uses
  %i.ax = fneg float %i.aw
  %i.ay = fmul float %i.at, %i.ax
  br label %_ZN11OpenImageIO4v3_112adjust_widthERfS1_S1_S1_ff.exit

bb.d:                                             ; preds = %bb.a
  %i.az = extractelement <2 x i1> %i.ao, i64 0
  %i.ba = extractelement <2 x float> %i.ah, i64 0
  %i.bb = extractelement <2 x float> %i.ah, i64 1 ; 3 uses
  %i.bc = extractelement <2 x float> %i.al, i64 0
  %i.bd = extractelement <2 x float> %i.al, i64 1 ; 3 uses
  br i1 %i.az, label %bb.e, label %_ZN11OpenImageIO4v3_112adjust_widthERfS1_S1_S1_ff.exit

bb.e:                                             ; preds = %bb.d
  %i.be = extractelement <2 x float> %i.an, i64 1
  %i.bf = tail call float @llvm.sqrt.f32(float %i.be)
  %i.bg = fdiv float f0x322BCC77, %i.bf           ; 2 uses
  %i.bh = fneg float %i.bd
  %i.bi = fmul float %i.bg, %i.bh
  %i.bj = fmul float %i.bb, %i.bg
  br label %_ZN11OpenImageIO4v3_112adjust_widthERfS1_S1_S1_ff.exit

_ZN11OpenImageIO4v3_112adjust_widthERfS1_S1_S1_ff.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %.0303 = phi float [ %i.bc, %bb.d ], [ %i.au, %bb.c ], [ %i.bj, %bb.e ], [ f0x322BCC77, %bb.b ] ; 3 uses
  %.0302 = phi float [ %i.ba, %bb.d ], [ %i.aw, %bb.c ], [ %i.bi, %bb.e ], [ 0.000000e+00, %bb.b ] ; 3 uses
  %.0301 = phi float [ %i.bd, %bb.d ], [ %i.ay, %bb.c ], [ %i.bd, %bb.e ], [ 0.000000e+00, %bb.b ] ; 3 uses
  %.0300 = phi float [ %i.bb, %bb.d ], [ %i.av, %bb.c ], [ %i.bb, %bb.e ], [ f0x322BCC77, %bb.b ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  %i.bk = fmul float %.0300, %.0300
  %i.bl = fmul float %.0301, %.0301
  %i.bm = fmul float %.0302, %.0302
  %i.bn = fmul float %.0303, %.0303
  %i.bo = fadd float %i.bn, %i.bl
  %i.bp = fpext float %i.bo to double             ; 2 uses
  %i.bq = fmul float %.0303, %.0302
  %i.br = tail call float @llvm.fmuladd.f32(float %.0300, float %.0301, float %i.bq)
  %i.bs = fpext float %i.br to double
  %i.bt = fmul double %i.bs, -2.000000e+00        ; 2 uses
  %i.bu = fadd float %i.bm, %i.bk
  %i.bv = fpext float %i.bu to double             ; 2 uses
  %i.bw = fsub double %i.bp, %i.bv                ; 3 uses
  %i.bx = tail call double @hypot(double noundef %i.bw, double noundef %i.bt) #50 ; 2 uses
  %i.by = fadd double %i.bp, %i.bv                ; 2 uses
  %i.bz = fsub double %i.by, %i.bx
  %i.ca = fadd double %i.bx, %i.by
  %i.cb = insertelement <2 x double> poison, double %i.bz, i64 0
  %i.cc = insertelement <2 x double> %i.cb, double %i.ca, i64 1
  %i.cd = fmul <2 x double> %i.cc, splat (double 5.000000e-01) ; 2 uses
  %i.ce = fptrunc <2 x double> %i.cd to <2 x float>
  %i.cf = fcmp ult <2 x double> %i.cd, splat (double f0xB690000000000000)
  %i.cg = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.ce)
  %i.ch = select <2 x i1> %i.cf, <2 x float> zeroinitializer, <2 x float> %i.cg ; 2 uses
  %i.ci = fcmp ogt <2 x float> %i.ch, splat (float 1.000000e+03)
  %i.cj = select <2 x i1> %i.ci, <2 x float> splat (float 1.000000e+03), <2 x float> %i.ch ; 2 uses
  %i.ck = fptrunc double %i.bt to float           ; 3 uses
  %i.cl = fptrunc double %i.bw to float
  %i.cm = tail call float @llvm.fabs.f32(float %i.cl) ; 4 uses
  %i.cn = tail call float @llvm.fabs.f32(float %i.ck) ; 4 uses
  %i.co = fcmp ogt float %i.cn, %i.cm             ; 2 uses
  %i.cp = fcmp oeq float %i.ck, 0.000000e+00
  br i1 %i.cp, label %_ZN11OpenImageIO4v3_112ellipse_axesEffffRfS1_S1_Pf.exit, label %bb.f

bb.f:                                             ; preds = %_ZN11OpenImageIO4v3_112adjust_widthERfS1_S1_S1_ff.exit
  %i.cq = fcmp oeq float %i.cm, %i.cn
  br i1 %i.cq, label %_ZN11OpenImageIO4v3_112ellipse_axesEffffRfS1_S1_Pf.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %i.co, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cr = fdiv float %i.cm, %i.cn
  br label %_ZN11OpenImageIO4v3_112ellipse_axesEffffRfS1_S1_Pf.exit

bb.i:                                             ; preds = %bb.g
  %i.cs = fdiv float %i.cn, %i.cm
  br label %_ZN11OpenImageIO4v3_112ellipse_axesEffffRfS1_S1_Pf.exit

_ZN11OpenImageIO4v3_112ellipse_axesEffffRfS1_S1_Pf.exit: ; preds = %_ZN11OpenImageIO4v3_112adjust_widthERfS1_S1_S1_ff.exit, %bb.f, %bb.h, %bb.i
  %i.ct = phi float [ 0.000000e+00, %_ZN11OpenImageIO4v3_112adjust_widthERfS1_S1_S1_ff.exit ], [ 1.000000e+00, %bb.f ], [ %i.cr, %bb.h ], [ %i.cs, %bb.i ]
  %i.cu = fadd float %i.ct, -1.000000e+00
  %i.cv = fadd float %i.cu, 1.000000e+00          ; 3 uses
  %i.cw = fmul float %i.cv, %i.cv                 ; 3 uses
  %i.cx = fmul contract float %i.cw, f0x3EDC3EAD
  %i.cy = fadd contract float %i.cx, 1.000000e+00
  %i.cz = fmul float %i.cv, %i.cy
  %i.da = fmul contract float %i.cw, 5.793550e-02
  %i.db = fadd contract float %i.da, f0x3F43547E
  %i.dc = fmul contract float %i.cw, %i.db
  %i.dd = fadd contract float %i.dc, 1.000000e+00
  %i.de = fdiv float %i.cz, %i.dd                 ; 2 uses
  %i.df = fsub float f0x3FC90FDB, %i.de
  %.0.i.i = select i1 %i.co, float %i.df, float %i.de ; 2 uses
  %i.dg = bitcast double %i.bw to i64
  %i.dh = fsub float f0x40490FDB, %.0.i.i
  %.not.i57.i = icmp slt i64 %i.dg, 0
  %.1.i.i = select i1 %.not.i57.i, float %i.dh, float %.0.i.i
  %i.di = tail call noundef float @llvm.copysign.f32(float %.1.i.i, float %i.ck)
  %i.dj = tail call float @llvm.fmuladd.f32(float %i.di, float 5.000000e-01, float f0x3FC90FDB) ; 5 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.dl = load float, ptr %i.dk, align 8, !tbaa !280 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !281 ; 2 uses
  %i.do = fadd float %i.dl, %i.dn
  %i.dp = fcmp une float %i.do, 0.000000e+00
  br i1 %i.dp, label %bb.j, label %_ZN11OpenImageIO4v3_111adjust_blurERfS1_S1_ff.exit

bb.j:                                             ; preds = %_ZN11OpenImageIO4v3_112ellipse_axesEffffRfS1_S1_Pf.exit
  %i.dq = fmul float %i.dj, f0x3EA2F983           ; 2 uses
  %i.dr = tail call float @llvm.copysign.f32(float 5.000000e-01, float %i.dq)
  %i.ds = fadd float %i.dq, %i.dr
  %i.dt = fptosi float %i.ds to i32               ; 2 uses
  %i.du = sitofp i32 %i.dt to float               ; 4 uses
  %i.dv = fmul nnan contract float %i.du, f0x40490000
  %i.dw = fsub contract float %i.dj, %i.dv
  %i.dx = fmul nnan contract float %i.du, f0x3A7DA000
  %i.dy = fsub contract float %i.dw, %i.dx
  %i.dz = fmul nnan contract float %i.du, f0x34222000
  %i.ea = fsub contract float %i.dy, %i.dz
  %i.eb = fmul nnan contract float %i.du, f0x2CB4611A
  %i.ec = fsub contract float %i.ea, %i.eb
  %i.ed = fadd float %i.ec, f0xBFC90FDB
  %i.ee = fadd float %i.ed, f0x3FC90FDB           ; 4 uses
  %i.ef = fmul float %i.ee, %i.ee                 ; 9 uses
  %i.eg = and i32 %i.dt, 1
  %.not.i.i = icmp eq i32 %i.eg, 0                ; 2 uses
  %i.eh = fneg float %i.ee
  %.0.i.i202 = select i1 %.not.i.i, float %i.ee, float %i.eh ; 2 uses
  %i.ei = fmul contract float %i.ef, f0x362F0A87
  %i.ej = fadd contract float %i.ei, f0xB94FBAEB
  %i.ek = fmul contract float %i.ef, %i.ej
  %i.el = fadd contract float %i.ek, f0x3C088777
  %i.em = fmul contract float %i.ef, %i.el
  %i.en = fadd contract float %i.em, f0xBE2AAAA6
  %i.eo = fmul float %.0.i.i202, %i.en
  %i.ep = fmul contract float %i.ef, %i.eo
  %i.eq = fadd contract float %.0.i.i202, %i.ep
  %i.er = fmul contract float %i.ef, f0x3491ED89
  %i.es = fsub contract float f0x37D0078B, %i.er
  %i.et = fmul contract float %i.ef, %i.es
  %i.eu = fadd contract float %i.et, f0xBAB60B58
  %i.ev = fmul contract float %i.ef, %i.eu
  %i.ew = fadd contract float %i.ev, f0x3D2AAAAA
  %i.ex = fmul contract float %i.ef, %i.ew
  %i.ey = fadd contract float %i.ex, -5.000000e-01
  %i.ez = fmul contract float %i.ef, %i.ey
  %i.fa = fadd contract float %i.ez, 1.000000e+00 ; 2 uses
  %i.fb = fneg float %i.fa
  %storemerge.i.i = select i1 %.not.i.i, float %i.fa, float %i.fb
  %i.fc = insertelement <2 x float> poison, float %i.eq, i64 0
  %i.fd = insertelement <2 x float> %i.fc, float %storemerge.i.i, i64 1 ; 2 uses
  %i.fe = fcmp oge <2 x float> %i.fd, splat (float -1.000000e+00)
  %i.ff = select <2 x i1> %i.fe, <2 x float> %i.fd, <2 x float> splat (float -1.000000e+00) ; 2 uses
  %i.fg = fcmp ogt <2 x float> %i.ff, splat (float 1.000000e+00)
  %i.fh = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ff)
  %i.fi = select <2 x i1> %i.fg, <2 x float> splat (float 1.000000e+00), <2 x float> %i.fh ; 2 uses
  %i.fj = insertelement <2 x float> poison, float %i.dn, i64 0
  %i.fk = shufflevector <2 x float> %i.fj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fl = shufflevector <2 x float> %i.fi, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.fm = fmul <2 x float> %i.fk, %i.fl
  %i.fn = insertelement <2 x float> poison, float %i.dl, i64 0
  %i.fo = shufflevector <2 x float> %i.fn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fo, <2 x float> %i.fi, <2 x float> %i.fm)
  %i.fq = fadd <2 x float> %i.cj, %i.fp           ; 4 uses
  %i.fr = extractelement <2 x float> %i.fq, i64 0
  %i.fs = extractelement <2 x float> %i.fq, i64 1
  %i.ft = fcmp ogt float %i.fr, %i.fs
  br i1 %i.ft, label %bb.k, label %_ZN11OpenImageIO4v3_111adjust_blurERfS1_S1_ff.exit

bb.k:                                             ; preds = %bb.j
  %i.fu = shufflevector <2 x float> %i.fq, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.fv = fpext float %i.dj to double
  %i.fw = fadd double %i.fv, f0x3FF921FB54442D18
  %i.fx = fptrunc double %i.fw to float
  br label %_ZN11OpenImageIO4v3_111adjust_blurERfS1_S1_ff.exit

_ZN11OpenImageIO4v3_111adjust_blurERfS1_S1_ff.exit: ; preds = %_ZN11OpenImageIO4v3_112ellipse_axesEffffRfS1_S1_Pf.exit, %bb.j, %bb.k
  %.0308 = phi float [ %i.fx, %bb.k ], [ %i.dj, %bb.j ], [ %i.dj, %_ZN11OpenImageIO4v3_112ellipse_axesEffffRfS1_S1_Pf.exit ]
  %i.fy = phi <2 x float> [ %i.fu, %bb.k ], [ %i.fq, %bb.j ], [ %i.cj, %_ZN11OpenImageIO4v3_112ellipse_axesEffffRfS1_S1_Pf.exit ] ; 4 uses
  %i.fz = extractelement <2 x float> %i.fy, i64 0 ; 3 uses
  %i.ga = extractelement <2 x float> %i.fy, i64 1 ; 2 uses
  %i.gb = fdiv float %i.ga, %i.fz                 ; 2 uses
  %.inv.i203 = fcmp oge float %i.gb, 1.000000e+00
  %.0.i.i204 = select i1 %.inv.i203, float %i.gb, float 1.000000e+00 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_117TextureSystemImpl14texture_lookupERNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiiffffffPfS8_S8_:bb.a
  br label %bb.au

bb.at:                                            ; preds = %bb.al
  %i.nv = call noundef zeroext i1 @_ZN11OpenImageIO4v3_117TextureSystemImpl14sample_closestEiPKfS3_iRNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiiS3_PNS0_4simd7vfloat4ESC_SC_(ptr noundef nonnull align 8 dereferenceable(188) %0, i32 noundef %i.ji, ptr noundef %i.jc, ptr noundef %i.jf, i32 noundef %.sroa.10.2, ptr noundef nonnull align 8 dereferenceable(400) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(76) %3, i32 noundef %4, i32 noundef %5, ptr noundef %i.ix, ptr noundef nonnull %15, ptr noundef null, ptr noundef null)
  %i.nw = and i1 %i.nv, %.2162
  %i.nx = add nuw nsw i32 %.2157, 1
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.al
  %.1161.1 = phi i1 [ %.2162, %bb.al ], [ %i.nw, %bb.at ], [ %i.nt, %bb.as ], [ %i.nq, %bb.ar ], [ %i.nn, %bb.aq ], [ %i.nk, %bb.ap ]
  %.1156.1 = phi i32 [ %.2157, %bb.al ], [ %i.nx, %bb.at ], [ %.2157, %bb.as ], [ %.2157, %bb.ar ], [ %.2157, %bb.aq ], [ %.2157, %bb.ap ]
  %.1153.1 = phi i32 [ %.2154, %bb.al ], [ %.2154, %bb.at ], [ %i.nu, %bb.as ], [ %.2154, %bb.ar ], [ %.2154, %bb.aq ], [ %i.nl, %bb.ap ]
  %.1150.1 = phi i32 [ %.2151, %bb.al ], [ %.2151, %bb.at ], [ %.2151, %bb.as ], [ %i.nr, %bb.ar ], [ %i.no, %bb.aq ], [ %.2151, %bb.ap ]
  %i.ny = insertelement <4 x float> poison, float %.sroa.9.1, i64 0
  %i.nz = shufflevector <4 x float> %i.ny, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.oa = load <4 x float>, ptr %15, align 16, !tbaa !34
  %i.ob = fmul <4 x float> %i.nz, %i.oa
  %i.oc = fadd <4 x float> %.sroa.0220.1, %i.ob
  br i1 %.not168, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.od = load <4 x float>, ptr %16, align 16, !tbaa !34
  %i.oe = fmul <4 x float> %i.nz, %i.od
  %i.of = fadd <4 x float> %.sroa.0219.3, %i.oe
  %i.og = load <4 x float>, ptr %17, align 16, !tbaa !34
  %i.oh = fmul <4 x float> %i.nz, %i.og
  %i.oi = fadd <4 x float> %.sroa.0218.3, %i.oh
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.sroa.0219.2.1 = phi <4 x float> [ %.sroa.0219.3, %bb.au ], [ %i.of, %bb.av ]
  %.sroa.0218.2.1 = phi <4 x float> [ %.sroa.0218.3, %bb.au ], [ %i.oi, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #3
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.ak
  %.sroa.0220.1.1 = phi <4 x float> [ %i.oc, %bb.aw ], [ %.sroa.0220.1, %bb.ak ]
  %.sroa.0219.3.1 = phi <4 x float> [ %.sroa.0219.2.1, %bb.aw ], [ %.sroa.0219.3, %bb.ak ]
  %.sroa.0218.3.1 = phi <4 x float> [ %.sroa.0218.2.1, %bb.aw ], [ %.sroa.0218.3, %bb.ak ]
  %.2162.1 = phi i1 [ %.1161.1, %bb.aw ], [ %.2162, %bb.ak ]
  %.1159.1 = phi i32 [ %i.mp, %bb.aw ], [ %.1159, %bb.ak ] ; 2 uses
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
  %i.oj = zext nneg i32 %.1159.1 to i64
  %i.ok = getelementptr inbounds nuw i8, ptr %2, i64 280 ; 2 uses
  %i.ol = load i64, ptr %i.ok, align 8, !tbaa !369
  %i.om = add nsw i64 %i.ol, %i.oj
  store i64 %i.om, ptr %i.ok, align 8, !tbaa !369
  %i.on = mul nsw i32 %.1159.1, %i.ji
  %i.oo = sext i32 %i.on to i64
  %i.op = getelementptr inbounds nuw i8, ptr %2, i64 288 ; 2 uses
  %i.oq = load i64, ptr %i.op, align 8, !tbaa !370
  %i.or = add nsw i64 %i.oq, %i.oo
  store i64 %i.or, ptr %i.op, align 8, !tbaa !370
  %i.os = getelementptr inbounds nuw i8, ptr %2, i64 296 ; 2 uses
  %i.ot = load float, ptr %i.os, align 8, !tbaa !472
  %i.ou = fcmp ogt float %.1.i.i205, %i.ot
  br i1 %i.ou, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  store float %.1.i.i205, ptr %i.os, align 8, !tbaa !472
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.ov = mul nsw i32 %.2157.1, %i.ji
  %i.ow = sext i32 %i.ov to i64
  %i.ox = getelementptr inbounds nuw i8, ptr %2, i64 304 ; 2 uses
  %i.oy = load i64, ptr %i.ox, align 8, !tbaa !473
  %i.oz = add nsw i64 %i.oy, %i.ow
  store i64 %i.oz, ptr %i.ox, align 8, !tbaa !473
  %i.pa = mul nsw i32 %.2154.1, %i.ji
  %i.pb = sext i32 %i.pa to i64
  %i.pc = getelementptr inbounds nuw i8, ptr %2, i64 312 ; 2 uses
  %i.pd = load i64, ptr %i.pc, align 8, !tbaa !474
  %i.pe = add nsw i64 %i.pd, %i.pb
  store i64 %i.pe, ptr %i.pc, align 8, !tbaa !474
  %i.pf = mul nsw i32 %.2151.1, %i.ji
  %i.pg = sext i32 %i.pf to i64
  %i.ph = getelementptr inbounds nuw i8, ptr %2, i64 320 ; 2 uses
  %i.pi = load i64, ptr %i.ph, align 8, !tbaa !475
  %i.pj = add nsw i64 %i.pi, %i.pg
  store i64 %i.pj, ptr %i.ph, align 8, !tbaa !475
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
  %18 = load float, ptr %i.k, align 4, !tbaa !282
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 40
  %19 = load float, ptr %i.l, align 8, !tbaa !283
  %i.m = insertelement <2 x float> poison, float %10, i64 0
  %20 = insertelement <2 x float> %i.m, float %8, i64 1
  %i.n = insertelement <2 x float> poison, float %18, i64 0
  %i.o = shufflevector <2 x float> %i.n, <2 x float> poison, <2 x i32> zeroinitializer
  %i.p = fmul <2 x float> %20, %i.o               ; 5 uses
  %i.q = insertelement <2 x float> poison, float %11, i64 0
  %21 = insertelement <2 x float> %i.q, float %9, i64 1
  %i.r = insertelement <2 x float> poison, float %19, i64 0
  %i.s = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> zeroinitializer
  %i.t = fmul <2 x float> %21, %i.s               ; 5 uses
  %i.u = fmul <2 x float> %i.t, %i.t
  %i.v = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.p, <2 x float> %i.p, <2 x float> %i.u) ; 3 uses
  %i.w = fcmp olt <2 x float> %i.v, splat (float 1.000000e-16) ; 3 uses
  %i.x = extractelement <2 x i1> %i.w, i64 1
  br i1 %i.x, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.y = extractelement <2 x i1> %i.w, i64 0
  br i1 %i.y, label %_ZN11OpenImageIO4v3_112adjust_widthERfS1_S1_S1_ff.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = extractelement <2 x float> %i.v, i64 0
  %i.aa = tail call float @llvm.sqrt.f32(float %i.z)
  %i.ab = fdiv float f0x322BCC77, %i.aa           ; 2 uses
  %i.ac = extractelement <2 x float> %i.t, i64 0  ; 2 uses
  %i.ad = fmul float %i.ac, %i.ab
  %i.ae = extractelement <2 x float> %i.p, i64 0  ; 2 uses
  %i.af = fneg float %i.ae
  %i.ag = fmul float %i.ab, %i.af
  br label %_ZN11OpenImageIO4v3_112adjust_widthERfS1_S1_S1_ff.exit

bb.h:                                             ; preds = %bb.e
  %i.ah = extractelement <2 x i1> %i.w, i64 0
  %i.ai = extractelement <2 x float> %i.p, i64 0
  %i.aj = extractelement <2 x float> %i.p, i64 1  ; 3 uses
  %i.ak = extractelement <2 x float> %i.t, i64 0
  %i.al = extractelement <2 x float> %i.t, i64 1  ; 3 uses
  br i1 %i.ah, label %bb.i, label %_ZN11OpenImageIO4v3_112adjust_widthERfS1_S1_S1_ff.exit

bb.i:                                             ; preds = %bb.h
  %i.am = extractelement <2 x float> %i.v, i64 1
  %i.an = tail call float @llvm.sqrt.f32(float %i.am)
  %i.ao = fdiv float f0x322BCC77, %i.an           ; 2 uses
  %i.ap = fneg float %i.al
  %i.aq = fmul float %i.ao, %i.ap
  %i.ar = fmul float %i.aj, %i.ao
  br label %_ZN11OpenImageIO4v3_112adjust_widthERfS1_S1_S1_ff.exit

_ZN11OpenImageIO4v3_112adjust_widthERfS1_S1_S1_ff.exit: ; preds = %bb.f, %bb.g, %bb.h, %bb.i
  %.0122 = phi float [ %i.ak, %bb.h ], [ %i.ac, %bb.g ], [ %i.ar, %bb.i ], [ f0x322BCC77, %bb.f ]
  %.0121 = phi float [ %i.ai, %bb.h ], [ %i.ae, %bb.g ], [ %i.aq, %bb.i ], [ 0.000000e+00, %bb.f ]
  %.0120 = phi float [ %i.al, %bb.h ], [ %i.ag, %bb.g ], [ %i.al, %bb.i ], [ 0.000000e+00, %bb.f ]
  %.0119 = phi float [ %i.aj, %bb.h ], [ %i.ad, %bb.g ], [ %i.aj, %bb.i ], [ f0x322BCC77, %bb.f ]
  %i.as = tail call float @llvm.fabs.f32(float %.0119) ; 2 uses
  %i.at = tail call float @llvm.fabs.f32(float %.0121) ; 2 uses
  %i.au = fcmp olt float %i.as, %i.at
  %.sroa.speculated92 = select i1 %i.au, float %i.at, float %i.as ; 4 uses
  %i.av = tail call float @llvm.fabs.f32(float %.0120) ; 2 uses
  %i.aw = tail call float @llvm.fabs.f32(float %.0122) ; 2 uses
  %i.ax = fcmp olt float %i.av, %i.aw
  %.sroa.speculated = select i1 %i.ax, float %i.aw, float %i.av ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 21
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !275, !range !62, !noundef !63
  %i.ba = trunc nuw i8 %i.az to i1
  %i.bb = fcmp olt float %.sroa.speculated92, %.sroa.speculated
  %i.bc = fcmp olt float %.sroa.speculated, %.sroa.speculated92
  %..i75.val = select i1 %i.bb, float %.sroa.speculated, float %.sroa.speculated92
  %..i76.val = select i1 %i.bc, float %.sroa.speculated, float %.sroa.speculated92
  %i.bd = select i1 %i.ba, float %..i75.val, float %..i76.val
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.bg = load float, ptr %i.be, align 8, !tbaa !26 ; 2 uses
  %i.bh = load float, ptr %i.bf, align 4, !tbaa !26 ; 2 uses
  %i.bi = fcmp olt float %i.bg, %i.bh
  %i.bj = select i1 %i.bi, float %i.bh, float %i.bg
  %i.bk = fadd float %i.bd, %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !197
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bo = sext i32 %i.bm to i64
  %i.bp = load ptr, ptr %i.bn, align 8, !tbaa !198
  %i.bq = getelementptr inbounds nuw [128 x i8], ptr %i.bp, i64 %i.bo ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 96
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !467 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 100
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !468 ; 7 uses
  %i.bv = icmp slt i32 %i.bu, %i.bs
  br i1 %i.bv, label %.lr.ph.i, label %.loopexit.i.thread

.lr.ph.i:                                         ; preds = %_ZN11OpenImageIO4v3_112adjust_widthERfS1_S1_S1_ff.exit
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 104
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !469
  %i.by = sext i32 %i.bu to i64
  br label %bb.j

bb.j:                                             ; preds = %.critedge.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.by, %.lr.ph.i ], [ %indvars.iv.next.i, %.critedge.i ] ; 4 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %indvars.iv.i
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !3
  %i.cb = sitofp i32 %i.ca to float
  %i.cc = fmul float %i.bk, %i.cb                 ; 2 uses
  %i.cd = fcmp ugt float %i.cc, 1.000000e+00
  br i1 %i.cd, label %.critedge.i, label %.loopexit.i

.critedge.i:                                      ; preds = %bb.j
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i = icmp eq i32 %i.bs, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %.loopexit.i.thread, label %bb.j, !llvm.loop !470

.loopexit.i:                                      ; preds = %bb.j
  %i.ce = trunc nsw i64 %indvars.iv.i to i32      ; 6 uses
  %i.cf = add nsw i32 %i.ce, -1                   ; 2 uses
  %i.cg = tail call float @llvm.fmuladd.f32(float %i.cc, float 2.000000e+00, float -1.000000e+00) ; 2 uses
  %.inv.i = fcmp oge float %i.cg, 0.000000e+00
  %.0.i77.i = select i1 %.inv.i, float %i.cg, float 0.000000e+00 ; 2 uses
  %i.ch = fcmp ogt float %.0.i77.i, 1.000000e+00
  %.1.i78.i = select i1 %i.ch, float 1.000000e+00, float %.0.i77.i ; 6 uses
  %i.ci = fsub float 1.000000e+00, %.1.i78.i
  %i.cj = icmp slt i64 %indvars.iv.i, 0
  br i1 %i.cj, label %.loopexit.i.thread, label %bb.k

.loopexit.i.thread:                               ; preds = %.critedge.i, %_ZN11OpenImageIO4v3_112adjust_widthERfS1_S1_S1_ff.exit, %.loopexit.i
  %i.ck = add nsw i32 %i.bs, -1                   ; 2 uses
  br label %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit

bb.k:                                             ; preds = %.loopexit.i
  %.not175 = icmp slt i32 %i.bu, %i.ce
  br i1 %.not175, label %bb.l, label %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit

bb.l:                                             ; preds = %bb.k
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 19
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !193
  switch i8 %i.cm, label %bb.n [
    i8 1, label %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit
    i8 2, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  br label %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit

bb.n:                                             ; preds = %bb.l
  br i1 %i.j, label %bb.o, label %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit

bb.o:                                             ; preds = %bb.n
  %i.cn = fcmp ult float %i.e, %.1.i78.i          ; 2 uses
  %i.co = fdiv float %i.e, %.1.i78.i
  %i.cp = fsub float %i.e, %.1.i78.i
  %i.cq = fsub float 1.000000e+00, %.1.i78.i
  %i.cr = fdiv float %i.cp, %i.cq
  %.sroa.11.1 = select i1 %i.cn, i32 %i.ce, i32 %i.cf ; 2 uses
  %.sink109.i = select i1 %i.cn, float %i.co, float %i.cr ; 2 uses
  %.inv91.i = fcmp oge float %.sink109.i, 0.000000e+00
  %.0.i.i = select i1 %.inv91.i, float %.sink109.i, float 0.000000e+00 ; 2 uses
  %i.cs = fcmp ogt float %.0.i.i, 1.000000e+00
  %.1.i.i = select i1 %i.cs, float 1.000000e+00, float %.0.i.i
  store float %.1.i.i, ptr %i.d, align 8, !tbaa !284
  br label %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit

_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit: ; preds = %bb.k, %bb.l, %.loopexit.i.thread, %bb.m, %bb.n, %bb.o
  %.sroa.11.2 = phi i32 [ %i.ck, %.loopexit.i.thread ], [ %i.ce, %bb.m ], [ %.sroa.11.1, %bb.o ], [ %i.ce, %bb.n ], [ %i.bu, %bb.l ], [ %i.bu, %bb.k ] ; 2 uses
  %.sroa.0146.2 = phi i32 [ %i.ck, %.loopexit.i.thread ], [ %i.ce, %bb.m ], [ %.sroa.11.1, %bb.o ], [ %i.cf, %bb.n ], [ %i.bu, %bb.l ], [ %i.bu, %bb.k ] ; 2 uses
  %.sroa.10.1 = phi float [ 0.000000e+00, %.loopexit.i.thread ], [ 0.000000e+00, %bb.m ], [ 0.000000e+00, %bb.o ], [ %.1.i78.i, %bb.n ], [ 0.000000e+00, %bb.l ], [ 0.000000e+00, %bb.k ] ; 4 uses
  %.sroa.0.1 = phi float [ 1.000000e+00, %.loopexit.i.thread ], [ 1.000000e+00, %bb.m ], [ 1.000000e+00, %bb.o ], [ %i.ci, %bb.n ], [ 1.000000e+00, %bb.l ], [ 1.000000e+00, %bb.k ] ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 2 uses
  %i.cu = load i8, ptr %i.ct, align 4, !tbaa !271
  %i.cv = zext i8 %i.cu to i64
  %i.cw = getelementptr inbounds nuw [16 x i8], ptr @_ZZN11OpenImageIO4v3_117TextureSystemImpl31texture_lookup_trilinear_mipmapERNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiiffffffPfS8_S8_E16sample_functions, i64 %i.cv
  %.unpack = load i64, ptr %i.cw, align 16, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  store float %6, ptr %i.a, align 16, !tbaa !26
  %i.cx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store <2 x float> zeroinitializer, ptr %i.cx, align 4, !tbaa !26
  %i.cy = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store float 0.000000e+00, ptr %i.cy, align 4, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  store float %7, ptr %i.b, align 16, !tbaa !26
  %i.cz = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store <2 x float> zeroinitializer, ptr %i.cz, align 4, !tbaa !26
  %i.da = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store float 0.000000e+00, ptr %i.da, align 4, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, ptr noundef nonnull align 16 dereferenceable(16) @__const._ZN11OpenImageIO4v3_117TextureSystemImpl31texture_lookup_trilinear_mipmapERNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiiffffffPfS8_S8_.weight, i64 16, i1 false)
  %i.db = inttoptr i64 %.unpack to ptr            ; 4 uses
  %i.dc = fcmp une float %.sroa.0.1, 0.000000e+00 ; 2 uses
  br i1 %.not, label %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.us.preheader, label %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.preheader

_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.preheader: ; preds = %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit
  br i1 %i.dc, label %bb.r, label %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.1

_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.us.preheader: ; preds = %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit
  br i1 %i.dc, label %bb.p, label %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.us.1

bb.p:                                             ; preds = %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.us.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #3
  %i.dd = call noundef zeroext i1 %i.db(ptr noundef nonnull align 8 dereferenceable(188) %0, i32 noundef 1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %.sroa.0146.2, ptr noundef nonnull align 8 dereferenceable(400) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(76) %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull %i.c, ptr noundef nonnull %15, ptr noundef null, ptr noundef null)
  %i.de = zext i1 %i.dd to i8
  %i.df = insertelement <4 x float> poison, float %.sroa.0.1, i64 0
  %i.dg = shufflevector <4 x float> %i.df, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dh = load <4 x float>, ptr %15, align 16, !tbaa !34
  %i.di = fmul <4 x float> %i.dg, %i.dh
  %i.dj = fadd <4 x float> %i.di, zeroinitializer
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #3
  br label %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.us.1

_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.us.1: ; preds = %bb.p, %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.us.preheader
end_hunk_1
