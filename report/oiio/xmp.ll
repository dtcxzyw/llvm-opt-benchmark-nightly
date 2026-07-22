inline.NumInlined: 4181
inline.NumDeleted: 1184
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN11OpenImageIO4v3_14pugi12xml_documentD2Ev:bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !42   ; 2 uses
  %.not1419.i = icmp eq ptr %i.l, null
  br i1 %.not1419.i, label %.loopexit3, label %.lr.ph22.i

.lr.ph.i:                                         ; preds = %bb.c, %.noexc1
  %.018.i = phi ptr [ %.0.i, %.noexc1 ], [ %.016.i, %bb.c ] ; 2 uses
  %i.m = load ptr, ptr %.018.i, align 8, !tbaa !43 ; 2 uses
  %.not15.i = icmp eq ptr %i.m, null
  br i1 %.not15.i, label %.noexc1, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.n = load ptr, ptr @_ZN11OpenImageIO4v3_14pugi4impl38xml_memory_management_function_storageIiE10deallocateE, align 8, !tbaa !12
  invoke void %i.n(ptr noundef nonnull %i.m)
          to label %.noexc1 unwind label %.loopexit.split-lp.loopexit, !inline_history !39

.noexc1:                                          ; preds = %bb.d, %.lr.ph.i
  %i.o = getelementptr inbounds nuw i8, ptr %.018.i, i64 8
  %.0.i = load ptr, ptr %i.o, align 8, !tbaa !40  ; 2 uses
  %.not13.i = icmp eq ptr %.0.i, null
  br i1 %.not13.i, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !45

.lr.ph22.i:                                       ; preds = %._crit_edge.i, %.noexc2
  %.01020.i = phi ptr [ %i.q, %.noexc2 ], [ %i.l, %._crit_edge.i ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.01020.i, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !42   ; 2 uses
  %i.r = load ptr, ptr @_ZN11OpenImageIO4v3_14pugi4impl38xml_memory_management_function_storageIiE10deallocateE, align 8, !tbaa !12
  invoke void %i.r(ptr noundef nonnull %.01020.i)
          to label %.noexc2 unwind label %.loopexit, !inline_history !39

.noexc2:                                          ; preds = %.lr.ph22.i
  %.not14.i = icmp eq ptr %i.q, null
  br i1 %.not14.i, label %.loopexit3, label %.lr.ph22.i, !llvm.loop !47

.loopexit3:                                       ; preds = %.noexc2, %._crit_edge.i
  store ptr null, ptr %0, align 8, !tbaa !32
  ret void

.loopexit:                                        ; preds = %.lr.ph22.i
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.d
  %lpad.loopexit4 = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.b
  %lpad.loopexit.split-lp5 = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit4, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp5, %.loopexit.split-lp.loopexit.split-lp ]
  %i.s = extractvalue { ptr, i32 } %lpad.phi, 0
  tail call void @__clang_call_terminate(ptr %i.s) #28
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN11OpenImageIO4v3_110encode_xmpB5cxx11ERKNS0_9ImageSpecEb(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(160) %1, i1 noundef zeroext %2) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"struct.fmt::v12::detail::format_arg_store", align 16 ; 5 uses
  %4 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %5 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %7 = alloca %"class.std::vector.16", align 8    ; 33 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 136
  %.val = load ptr, ptr %i.e, align 8, !tbaa !84  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 144
  %.val77 = load ptr, ptr %i.f, align 8, !tbaa !84 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %.not1220.i = icmp eq ptr %.val, %.val77
  br i1 %.not1220.i, label %bb.ah, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.ag, %.lr.ph.i
  %i.n = phi ptr [ null, %.lr.ph.i ], [ %i.fo, %bb.ag ] ; 16 uses
  %i.o = phi ptr [ null, %.lr.ph.i ], [ %i.fp, %bb.ag ] ; 15 uses
  %i.p = phi ptr [ null, %.lr.ph.i ], [ %i.fq, %bb.ag ] ; 16 uses
  %.sroa.07.021.i = phi ptr [ %.val, %.lr.ph.i ], [ %i.fr, %bb.ag ] ; 9 uses
  %i.q = load atomic i8, ptr @_ZGVZN11OpenImageIO4v3_112_GLOBAL__N_114xmp_tagmap_refEvE1T acquire, align 8
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.c, label %_ZN11OpenImageIO4v3_112_GLOBAL__N_114xmp_tagmap_refEv.exit.i, !prof !86

bb.c:                                             ; preds = %bb.b
  %i.s = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN11OpenImageIO4v3_112_GLOBAL__N_114xmp_tagmap_refEvE1T) #29
  %.not.i.i = icmp eq i32 %i.s, 0
  br i1 %.not.i.i, label %_ZN11OpenImageIO4v3_112_GLOBAL__N_114xmp_tagmap_refEv.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @_ZN11OpenImageIO4v3_112_GLOBAL__N_19XMPtagMapC2EPKNS1_6XMPtagE()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = call i32 @__cxa_atexit(ptr nonnull @_ZN11OpenImageIO4v3_112_GLOBAL__N_19XMPtagMapD2Ev, ptr nonnull @_ZZN11OpenImageIO4v3_112_GLOBAL__N_114xmp_tagmap_refEvE1T, ptr nonnull @__dso_handle) #29 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN11OpenImageIO4v3_112_GLOBAL__N_114xmp_tagmap_refEvE1T) #29
  br label %_ZN11OpenImageIO4v3_112_GLOBAL__N_114xmp_tagmap_refEv.exit.i

bb.f:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          cleanup
  store ptr %i.p, ptr %i.l, align 8
  store ptr %i.o, ptr %i.m, align 8
  store ptr %i.n, ptr %7, align 8
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN11OpenImageIO4v3_112_GLOBAL__N_114xmp_tagmap_refEvE1T) #29
  br label %.body

_ZN11OpenImageIO4v3_112_GLOBAL__N_114xmp_tagmap_refEv.exit.i: ; preds = %bb.e, %bb.c, %bb.b
  %.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.07.021.i, align 8, !tbaa !63 ; 3 uses
  %.not.i.i.i = icmp eq ptr %.sroa.0.0.copyload.i.i, null
  br i1 %.not.i.i.i, label %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZN11OpenImageIO4v3_112_GLOBAL__N_114xmp_tagmap_refEv.exit.i
  %i.v = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i, i64 -24
  %i.w = load i64, ptr %i.v, align 8, !tbaa !87, !noalias !89
  br label %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit.i

_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit.i: ; preds = %bb.g, %_ZN11OpenImageIO4v3_112_GLOBAL__N_114xmp_tagmap_refEv.exit.i
  %.0.i.i.i = phi i64 [ %i.w, %bb.g ], [ 0, %_ZN11OpenImageIO4v3_112_GLOBAL__N_114xmp_tagmap_refEv.exit.i ]
  %i.x = invoke fastcc noundef ptr @_ZNK11OpenImageIO4v3_112_GLOBAL__N_19XMPtagMap4findENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr %.sroa.0.0.copyload.i.i, i64 %.0.i.i.i)
          to label %.noexc unwind label %bb.cb    ; 5 uses

.noexc:                                           ; preds = %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit.i
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %bb.ag, label %bb.h

bb.h:                                             ; preds = %.noexc
  %.sroa.0.0.copyload.i15.i = load ptr, ptr %.sroa.07.021.i, align 8, !tbaa !63 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !92)
  %.not.i.i16.i = icmp eq ptr %.sroa.0.0.copyload.i15.i, null
  br i1 %.not.i.i16.i, label %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit18.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i15.i, i64 -24
  %i.z = load i64, ptr %i.y, align 8, !tbaa !87, !noalias !92
  br label %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit18.i

_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit18.i: ; preds = %bb.i, %bb.h
  %.0.i.i17.i = phi i64 [ %i.z, %bb.i ], [ 0, %bb.h ]
  store ptr %.sroa.0.0.copyload.i15.i, ptr %4, align 8, !tbaa !13, !alias.scope !92
  store i64 %.0.i.i17.i, ptr %i.g, align 8, !tbaa !17, !alias.scope !92
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !95 ; 3 uses
  store ptr %i.ab, ptr %5, align 8, !tbaa !13
  %.not.i19.i = icmp eq ptr %i.ab, null
  br i1 %.not.i19.i, label %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit18.i
  %i.ac = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ab) #29
  br label %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.i

_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.i: ; preds = %bb.j, %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit18.i
  %i.ad = phi i64 [ %i.ac, %bb.j ], [ 0, %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit18.i ]
  store i64 %i.ad, ptr %i.h, align 8, !tbaa !17
  %i.ae = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil7iequalsENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull dead_on_return %4, ptr noundef nonnull dead_on_return %5)
          to label %.noexc78 unwind label %bb.cb

.noexc78:                                         ; preds = %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.i
  br i1 %i.ae, label %bb.k, label %bb.ag

bb.k:                                             ; preds = %.noexc78
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !98 ; 3 uses
  %i.ah = and i32 %i.ag, 16
  %.not10.i = icmp eq i32 %i.ah, 0
  br i1 %.not10.i, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !99)
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.07.021.i, i64 8
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.ai, align 8, !noalias !99
  %i.aj = and i64 %.sroa.0.0.copyload.i.i.i, -4294901761
  switch i64 %i.aj, label %_ZN11OpenImageIO4v3_1L9stringizeB5cxx11ERKNS0_10ParamValueERKNS0_12_GLOBAL__N_16XMPtagE.exit.thread.i [
    i64 269, label %.invoke
    i64 263, label %bb.m
    i64 267, label %bb.n
  ]

bb.m:                                             ; preds = %bb.l
  %i.ak = and i32 %i.ag, 128
  %.not12.i.i = icmp eq i32 %i.ak, 0
  br i1 %.not12.i.i, label %.invoke, label %_ZN11OpenImageIO4v3_1L9stringizeB5cxx11ERKNS0_10ParamValueERKNS0_12_GLOBAL__N_16XMPtagE.exit.thread42.i

_ZN11OpenImageIO4v3_1L9stringizeB5cxx11ERKNS0_10ParamValueERKNS0_12_GLOBAL__N_16XMPtagE.exit.thread42.i: ; preds = %bb.m
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.07.021.i, i64 38
  %i.am = load i8, ptr %i.al, align 2, !tbaa !102, !range !106, !noalias !99, !noundef !107
  %i.an = trunc nuw i8 %i.am to i1
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.07.021.i, i64 16 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !noalias !99
  %i.aq = select i1 %i.an, ptr %i.ap, ptr %i.ao
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !3, !noalias !99
  %.not13.i.i = icmp eq i32 %i.ar, 0              ; 3 uses
  %i.as = select i1 %.not13.i.i, ptr @.str.248, ptr @.str.247
  store ptr %i.j, ptr %6, align 8, !tbaa !70, !alias.scope !99
  %i.at = select i1 %.not13.i.i, i64 5, i64 4     ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(4) %i.j, ptr noundef nonnull align 1 dereferenceable(4) %i.as, i64 %i.at, i1 false)
  store i64 %i.at, ptr %i.k, align 8, !tbaa !72, !alias.scope !99
  %.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.not13.i.i, i64 21, i64 20
  %.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %6, i64 %.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v
  store i8 0, ptr %.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 1, !tbaa !74, !alias.scope !99
  br label %bb.r

bb.n:                                             ; preds = %bb.l
  %i.au = and i32 %i.ag, 1
  %.not.i20.i = icmp eq i32 %i.au, 0
  br i1 %.not.i20.i, label %.invoke, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.07.021.i, i64 38
  %i.aw = load i8, ptr %i.av, align 2, !tbaa !102, !range !106, !noalias !99, !noundef !107
  %i.ax = trunc nuw i8 %i.aw to i1
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.07.021.i, i64 16 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !noalias !99
  %i.ba = select i1 %i.ax, ptr %i.az, ptr %i.ay
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !108, !noalias !99 ; 5 uses
  %i.bc = fcmp ugt float %i.bb, 0.000000e+00
  br i1 %i.bc, label %bb.p, label %_ZN11OpenImageIO4v3_117float_to_rationalEfRjS1_.exit.i.i

bb.p:                                             ; preds = %bb.o
  %i.bd = fpext float %i.bb to double
  %i.be = fdiv double 1.000000e+00, %i.bd         ; 2 uses
  %i.bf = fptosi double %i.be to i32
  %i.bg = sitofp i32 %i.bf to double
  %i.bh = fcmp oeq double %i.be, %i.bg
  %i.bi = fptosi float %i.bb to i32               ; 3 uses
  br i1 %i.bh, label %_ZN11OpenImageIO4v3_117float_to_rationalEfRjS1_.exit.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bj = uitofp i32 %i.bi to float
  %i.bk = fsub float %i.bb, %i.bj
  %i.bl = call float @llvm.fabs.f32(float %i.bk)
  %i.bm = fcmp ogt float %i.bl, f0x3727C5AC
  br i1 %i.bm, label %.lr.ph.i.preheader.i.i, label %_ZN11OpenImageIO4v3_117float_to_rationalEfRjS1_.exit.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %bb.q
  %i.bn = fmul float %i.bb, 1.000000e+01          ; 3 uses
  %i.bo = fptosi float %i.bn to i32               ; 2 uses
  %i.bp = uitofp i32 %i.bo to float
  %i.bq = fsub float %i.bn, %i.bp
  %i.br = call float @llvm.fabs.f32(float %i.bq)
  %i.bs = fcmp ogt float %i.br, f0x3727C5AC
  br i1 %i.bs, label %.lr.ph.i.preheader.i.i.1, label %_ZN11OpenImageIO4v3_117float_to_rationalEfRjS1_.exit.i.i

.lr.ph.i.preheader.i.i.1:                         ; preds = %.lr.ph.i.preheader.i.i
  %i.bt = fmul float %i.bn, 1.000000e+01          ; 3 uses
  %i.bu = fptosi float %i.bt to i32               ; 2 uses
  %i.bv = uitofp i32 %i.bu to float
  %i.bw = fsub float %i.bt, %i.bv
  %i.bx = call float @llvm.fabs.f32(float %i.bw)
  %i.by = fcmp ogt float %i.bx, f0x3727C5AC
  br i1 %i.by, label %.lr.ph.i.preheader.i.i.2, label %_ZN11OpenImageIO4v3_117float_to_rationalEfRjS1_.exit.i.i

.lr.ph.i.preheader.i.i.2:                         ; preds = %.lr.ph.i.preheader.i.i.1
  %i.bz = fmul float %i.bt, 1.000000e+01          ; 3 uses
  %i.ca = fptosi float %i.bz to i32               ; 2 uses
  %i.cb = uitofp i32 %i.ca to float
  %i.cc = fsub float %i.bz, %i.cb
  %i.cd = call float @llvm.fabs.f32(float %i.cc)
  %i.ce = fcmp ogt float %i.cd, f0x3727C5AC
  br i1 %i.ce, label %.lr.ph.i.preheader.i.i.3, label %_ZN11OpenImageIO4v3_117float_to_rationalEfRjS1_.exit.i.i

.lr.ph.i.preheader.i.i.3:                         ; preds = %.lr.ph.i.preheader.i.i.2
  %i.cf = fmul float %i.bz, 1.000000e+01          ; 3 uses
  %i.cg = fptosi float %i.cf to i32               ; 2 uses
  %i.ch = uitofp i32 %i.cg to float
  %i.ci = fsub float %i.cf, %i.ch
  %i.cj = call float @llvm.fabs.f32(float %i.ci)
  %i.ck = fcmp ogt float %i.cj, f0x3727C5AC
  br i1 %i.ck, label %.lr.ph.i.preheader.i.i.4, label %_ZN11OpenImageIO4v3_117float_to_rationalEfRjS1_.exit.i.i

.lr.ph.i.preheader.i.i.4:                         ; preds = %.lr.ph.i.preheader.i.i.3
  %i.cl = fmul float %i.cf, 1.000000e+01          ; 3 uses
  %i.cm = fptosi float %i.cl to i32               ; 2 uses
  %i.cn = uitofp i32 %i.cm to float
  %i.co = fsub float %i.cl, %i.cn
  %i.cp = call float @llvm.fabs.f32(float %i.co)
  %i.cq = fcmp ogt float %i.cp, f0x3727C5AC
  br i1 %i.cq, label %.lr.ph.i.preheader.i.i.5, label %_ZN11OpenImageIO4v3_117float_to_rationalEfRjS1_.exit.i.i

.lr.ph.i.preheader.i.i.5:                         ; preds = %.lr.ph.i.preheader.i.i.4
  %i.cr = fmul float %i.cl, 1.000000e+01
  %i.cs = fptosi float %i.cr to i32
  br label %_ZN11OpenImageIO4v3_117float_to_rationalEfRjS1_.exit.i.i

_ZN11OpenImageIO4v3_117float_to_rationalEfRjS1_.exit.i.i: ; preds = %.lr.ph.i.preheader.i.i, %.lr.ph.i.preheader.i.i.1, %.lr.ph.i.preheader.i.i.2, %.lr.ph.i.preheader.i.i.3, %.lr.ph.i.preheader.i.i.4, %.lr.ph.i.preheader.i.i.5, %bb.q, %bb.p, %bb.o
  %.2.i.i = phi i32 [ %i.bi, %bb.q ], [ 1, %bb.p ], [ 0, %bb.o ], [ %i.bo, %.lr.ph.i.preheader.i.i ], [ %i.bu, %.lr.ph.i.preheader.i.i.1 ], [ %i.ca, %.lr.ph.i.preheader.i.i.2 ], [ %i.cg, %.lr.ph.i.preheader.i.i.3 ], [ %i.cm, %.lr.ph.i.preheader.i.i.4 ], [ %i.cs, %.lr.ph.i.preheader.i.i.5 ]
  %.1.i.i = phi i32 [ 1, %bb.q ], [ %i.bi, %bb.p ], [ 1, %bb.o ], [ 10, %.lr.ph.i.preheader.i.i ], [ 100, %.lr.ph.i.preheader.i.i.1 ], [ 1000, %.lr.ph.i.preheader.i.i.2 ], [ 10000, %.lr.ph.i.preheader.i.i.3 ], [ 100000, %.lr.ph.i.preheader.i.i.4 ], [ 1000000, %.lr.ph.i.preheader.i.i.5 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29, !noalias !110
  store i32 %.2.i.i, ptr %3, align 16, !tbaa !74, !noalias !110
  store i32 %.1.i.i, ptr %i.i, align 16, !tbaa !74, !noalias !110
  invoke void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nonnull @.str.249, i64 5, i64 34, ptr nonnull %3)
          to label %.noexc81 unwind label %bb.cb

.noexc81:                                         ; preds = %_ZN11OpenImageIO4v3_117float_to_rationalEfRjS1_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29, !noalias !110
  br label %_ZN11OpenImageIO4v3_1L9stringizeB5cxx11ERKNS0_10ParamValueERKNS0_12_GLOBAL__N_16XMPtagE.exit.i

.invoke:                                          ; preds = %bb.n, %bb.m, %bb.l
  invoke void @_ZNK11OpenImageIO4v3_110ParamValue10get_stringB5cxx11Ei(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(39) %.sroa.07.021.i, i32 noundef 64)
          to label %_ZN11OpenImageIO4v3_1L9stringizeB5cxx11ERKNS0_10ParamValueERKNS0_12_GLOBAL__N_16XMPtagE.exit.i unwind label %bb.cb

_ZN11OpenImageIO4v3_1L9stringizeB5cxx11ERKNS0_10ParamValueERKNS0_12_GLOBAL__N_16XMPtagE.exit.thread.i: ; preds = %bb.l
  store ptr %i.j, ptr %6, align 8, !tbaa !70, !alias.scope !99
  store i64 0, ptr %i.k, align 8, !tbaa !72, !alias.scope !99
  store i8 0, ptr %i.j, align 8, !tbaa !74, !alias.scope !99
  br label %_ZNSt6vectorISt4pairIPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISD_EE12emplace_backIJRS6_RSC_EEERSD_DpOT_.exit.i

_ZN11OpenImageIO4v3_1L9stringizeB5cxx11ERKNS0_10ParamValueERKNS0_12_GLOBAL__N_16XMPtagE.exit.i: ; preds = %.invoke, %.noexc81
  %.pr.i = load i64, ptr %i.k, align 8, !tbaa !72 ; 2 uses
  %.not11.i = icmp eq i64 %.pr.i, 0
  br i1 %.not11.i, label %_ZNSt6vectorISt4pairIPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISD_EE12emplace_backIJRS6_RSC_EEERSD_DpOT_.exit.i, label %bb.r

bb.r:                                             ; preds = %_ZN11OpenImageIO4v3_1L9stringizeB5cxx11ERKNS0_10ParamValueERKNS0_12_GLOBAL__N_16XMPtagE.exit.i, %_ZN11OpenImageIO4v3_1L9stringizeB5cxx11ERKNS0_10ParamValueERKNS0_12_GLOBAL__N_16XMPtagE.exit.thread42.i
  %i.ct = phi i64 [ %i.at, %_ZN11OpenImageIO4v3_1L9stringizeB5cxx11ERKNS0_10ParamValueERKNS0_12_GLOBAL__N_16XMPtagE.exit.thread42.i ], [ %.pr.i, %_ZN11OpenImageIO4v3_1L9stringizeB5cxx11ERKNS0_10ParamValueERKNS0_12_GLOBAL__N_16XMPtagE.exit.i ] ; 8 uses
  %.not.i21.i = icmp eq ptr %i.p, %i.o
  br i1 %.not.i21.i, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  store ptr %i.x, ptr %i.p, align 8, !tbaa !113
  %i.cu = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 5 uses
  store ptr %i.cv, ptr %i.cu, align 8, !tbaa !70
  %i.cw = load ptr, ptr %6, align 8, !tbaa !83    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #29
  store i64 %i.ct, ptr %i.d, align 8, !tbaa !64
  %i.cx = icmp ugt i64 %i.ct, 15
  br i1 %i.cx, label %.noexc.i.i.i.i, label %._crit_edge.i.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %bb.s
  %i.cy = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.cu, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %._crit_edge.i.i.i.i.thread.i unwind label %.loopexit.i ; 2 uses

._crit_edge.i.i.i.i.thread.i:                     ; preds = %.noexc.i.i.i.i
  store ptr %i.cy, ptr %i.cu, align 8, !tbaa !83
  %i.cz = load i64, ptr %i.d, align 8, !tbaa !64
  store i64 %i.cz, ptr %i.cv, align 8, !tbaa !74
  br label %bb.u

._crit_edge.i.i.i.i.i:                            ; preds = %bb.s
  %cond11.i = icmp eq i64 %i.ct, 1
  br i1 %cond11.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.da = load i8, ptr %i.cw, align 1, !tbaa !74
  store i8 %i.da, ptr %i.cv, align 8, !tbaa !74
  br label %_ZNSt4pairIPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRS5_RSB_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISH_SI_EEEbE4typeELb1EEEOSH_OSI_.exit.i.i

bb.u:                                             ; preds = %._crit_edge.i.i.i.i.i, %._crit_edge.i.i.i.i.thread.i
  %i.db = phi ptr [ %i.cy, %._crit_edge.i.i.i.i.thread.i ], [ %i.cv, %._crit_edge.i.i.i.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.db, ptr noundef nonnull align 1 dereferenceable(1) %i.cw, i64 %i.ct, i1 false)
  %.pre = load i64, ptr %i.d, align 8, !tbaa !64
  %.pre333 = load ptr, ptr %i.cu, align 8, !tbaa !83
  br label %_ZNSt4pairIPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRS5_RSB_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISH_SI_EEEbE4typeELb1EEEOSH_OSI_.exit.i.i

_ZNSt4pairIPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRS5_RSB_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISH_SI_EEEbE4typeELb1EEEOSH_OSI_.exit.i.i: ; preds = %bb.u, %bb.t
  %29 = phi ptr [ %.pre333, %bb.u ], [ %i.cv, %bb.t ]
  %i.dc = phi i64 [ %.pre, %bb.u ], [ 1, %bb.t ]  ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 %i.dc, ptr %i.dd, align 8, !tbaa !72
  %i.de = getelementptr inbounds nuw i8, ptr %29, i64 %i.dc
  store i8 0, ptr %i.de, align 1, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #29
  %i.df = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  br label %_ZNSt6vectorISt4pairIPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISD_EE12emplace_backIJRS6_RSC_EEERSD_DpOT_.exit.i

bb.v:                                             ; preds = %bb.r
  %.val7.i.i = load ptr, ptr %6, align 8          ; 2 uses
  %i.dg = ptrtoint ptr %i.o to i64
  %i.dh = ptrtoint ptr %i.n to i64
  %i.di = sub i64 %i.dg, %i.dh                    ; 4 uses
  %i.dj = icmp eq i64 %i.di, 9223372036854775800
  br i1 %i.dj, label %bb.w, label %_ZNKSt6vectorISt4pairIPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i

bb.w:                                             ; preds = %bb.v
  store ptr %i.p, ptr %i.l, align 8
  store ptr %i.o, ptr %i.m, align 8
  store ptr %i.n, ptr %7, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.242) #30
          to label %.noexc22.i unwind label %.loopexit.split-lp.i

.noexc22.i:                                       ; preds = %bb.w
  unreachable

_ZNKSt6vectorISt4pairIPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.v
  %i.dk = sdiv exact i64 %i.di, 40                ; 3 uses
  %i.dl = icmp eq ptr %i.o, %i.n                  ; 2 uses
  %.sroa.speculated.i.i.i.i = select i1 %i.dl, i64 1, i64 %i.dk
  %i.dm = add nsw i64 %.sroa.speculated.i.i.i.i, %i.dk ; 2 uses
  %i.dn = icmp ult i64 %i.dm, %i.dk
  %i.do = call i64 @llvm.umin.i64(i64 %i.dm, i64 230584300921369395)
  %i.dp = select i1 %i.dn, i64 230584300921369395, i64 %i.do ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.dp, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.dq = mul nuw nsw i64 %i.dp, 40               ; 2 uses
  %i.dr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dq) #32
          to label %.noexc23.i unwind label %.loopexit.i ; 6 uses

.noexc23.i:                                       ; preds = %_ZNKSt6vectorISt4pairIPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.di ; 4 uses
  store ptr %i.x, ptr %i.ds, align 8, !tbaa !113
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8 ; 4 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 24 ; 5 uses
  store ptr %i.du, ptr %i.dt, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #29
  store i64 %i.ct, ptr %i.c, align 8, !tbaa !64
  %i.dv = icmp ugt i64 %i.ct, 15
  br i1 %i.dv, label %.noexc.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.noexc.i.i.i.i.i:                                 ; preds = %.noexc23.i
  %i.dw = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.dt, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %._crit_edge.i.i.i.i.i.thread.i unwind label %bb.ad ; 2 uses

._crit_edge.i.i.i.i.i.thread.i:                   ; preds = %.noexc.i.i.i.i.i
  store ptr %i.dw, ptr %i.dt, align 8, !tbaa !83
  %i.dx = load i64, ptr %i.c, align 8, !tbaa !64
  store i64 %i.dx, ptr %i.du, align 8, !tbaa !74
  br label %bb.y

._crit_edge.i.i.i.i.i.i:                          ; preds = %.noexc23.i
  %cond.i = icmp eq i64 %i.ct, 1
  br i1 %cond.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.dy = load i8, ptr %.val7.i.i, align 1, !tbaa !74
  store i8 %i.dy, ptr %i.du, align 8, !tbaa !74
  br label %bb.z

bb.y:                                             ; preds = %._crit_edge.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.thread.i
  %i.dz = phi ptr [ %i.dw, %._crit_edge.i.i.i.i.i.thread.i ], [ %i.du, %._crit_edge.i.i.i.i.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.dz, ptr noundef nonnull readonly align 1 dereferenceable(1) %.val7.i.i, i64 %i.ct, i1 false)
  %.pre334.a = load i64, ptr %i.c, align 8, !tbaa !64
  %.pre335 = load ptr, ptr %i.dt, align 8, !tbaa !83
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.ea = phi ptr [ %.pre335, %bb.y ], [ %i.du, %bb.x ]
  %i.eb = phi i64 [ %.pre334.a, %bb.y ], [ 1, %bb.x ] ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  store i64 %i.eb, ptr %i.ec, align 8, !tbaa !72
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.eb
  store i8 0, ptr %i.ed, align 1, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #29
  br i1 %i.dl, label %_ZNSt6vectorISt4pairIPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit42.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.z, %_ZSt19__relocate_object_aISt4pairIPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESD_SaISD_EEvPT_PT0_RT1_.exit.i.i.i.i.i.i
  %.03.i.i.i.i.i.i = phi ptr [ %i.eu, %_ZSt19__relocate_object_aISt4pairIPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESD_SaISD_EEvPT_PT0_RT1_.exit.i.i.i.i.i.i ], [ %i.dr, %bb.z ] ; 5 uses
  %.092.i.i.i.i.i.i = phi ptr [ %i.et, %_ZSt19__relocate_object_aISt4pairIPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESD_SaISD_EEvPT_PT0_RT1_.exit.i.i.i.i.i.i ], [ %i.n, %bb.z ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !116)
  call void @llvm.experimental.noalias.scope.decl(metadata !119)
  %i.ee = load ptr, ptr %.092.i.i.i.i.i.i, align 8, !tbaa !113, !alias.scope !119, !noalias !116
  store ptr %i.ee, ptr %.03.i.i.i.i.i.i, align 8, !tbaa !113, !alias.scope !116, !noalias !119
  %i.ef = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i, i64 24 ; 3 uses
  store ptr %i.eh, ptr %i.ef, align 8, !tbaa !70, !alias.scope !116, !noalias !119
  %i.ei = load ptr, ptr %i.eg, align 8, !tbaa !83, !alias.scope !119, !noalias !116 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 24 ; 5 uses
  %i.ek = icmp eq ptr %i.ei, %i.ej
  br i1 %i.ek, label %bb.aa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

bb.aa:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.el = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 16
  %i.em = load i64, ptr %i.el, align 8, !tbaa !72, !alias.scope !119, !noalias !116 ; 3 uses
  %i.en = icmp ult i64 %i.em, 16
  call void @llvm.assume(i1 %i.en)
  %i.eo = add nuw nsw i64 %i.em, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.eh, ptr noundef nonnull align 8 dereferenceable(1) %i.ej, i64 %i.eo, i1 false), !alias.scope !121
  br label %_ZSt19__relocate_object_aISt4pairIPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESD_SaISD_EEvPT_PT0_RT1_.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  store ptr %i.ei, ptr %i.ef, align 8, !tbaa !83, !alias.scope !116, !noalias !119
  %i.ep = load i64, ptr %i.ej, align 8, !tbaa !74, !alias.scope !119, !noalias !116
  store i64 %i.ep, ptr %i.eh, align 8, !tbaa !74, !alias.scope !116, !noalias !119
  %.phi.trans.insert.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 16
  %.pre.i.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i.i, align 8, !tbaa !72, !alias.scope !119, !noalias !116
  br label %_ZSt19__relocate_object_aISt4pairIPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESD_SaISD_EEvPT_PT0_RT1_.exit.i.i.i.i.i.i

_ZSt19__relocate_object_aISt4pairIPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESD_SaISD_EEvPT_PT0_RT1_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i, %bb.aa
  %i.eq = phi i64 [ %i.em, %bb.aa ], [ %.pre.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i ]
  %i.er = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 16
  %i.es = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i, i64 16
  store i64 %i.eq, ptr %i.es, align 8, !tbaa !72, !alias.scope !116, !noalias !119
  store ptr %i.ej, ptr %i.eg, align 8, !tbaa !83, !alias.scope !119, !noalias !116
  store i64 0, ptr %i.er, align 8, !tbaa !72, !alias.scope !119, !noalias !116
  store i8 0, ptr %i.ej, align 8, !tbaa !74, !alias.scope !119, !noalias !116
  %i.et = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 40 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.et, %i.o
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairIPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit42.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !122

_ZNSt6vectorISt4pairIPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit42.i.i.i: ; preds = %_ZSt19__relocate_object_aISt4pairIPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESD_SaISD_EEvPT_PT0_RT1_.exit.i.i.i.i.i.i, %bb.z
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.dr, %bb.z ], [ %i.eu, %_ZSt19__relocate_object_aISt4pairIPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESD_SaISD_EEvPT_PT0_RT1_.exit.i.i.i.i.i.i ]
  %i.ev = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 40
  %.not.i43.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i43.i.i.i, label %_ZNSt6vectorISt4pairIPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISD_EE17_M_realloc_insertIJRS6_RSC_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit.i.i, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorISt4pairIPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit42.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.di) #31
  br label %_ZNSt6vectorISt4pairIPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISD_EE17_M_realloc_insertIJRS6_RSC_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit.i.i

bb.ac:                                            ; preds = %bb.ad
  %i.ew = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.i unwind label %bb.ae

bb.ad:                                            ; preds = %.noexc.i.i.i.i.i
  %i.ex = landingpad { ptr, i32 }
          catch ptr null
  store ptr %i.p, ptr %i.l, align 8
  store ptr %i.o, ptr %i.m, align 8
  store ptr %i.n, ptr %7, align 8
  %i.ey = extractvalue { ptr, i32 } %i.ex, 0
  %i.ez = call ptr @__cxa_begin_catch(ptr %i.ey) #29 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.dr, i64 noundef %i.dq) #31
  invoke void @__cxa_rethrow() #30
          to label %bb.af unwind label %bb.ac

bb.ae:                                            ; preds = %bb.ac
  %i.fa = landingpad { ptr, i32 }
          catch ptr null
  %i.fb = extractvalue { ptr, i32 } %i.fa, 0
  call void @__clang_call_terminate(ptr %i.fb) #28
  unreachable

bb.af:                                            ; preds = %bb.ad
  unreachable

_ZNSt6vectorISt4pairIPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISD_EE17_M_realloc_insertIJRS6_RSC_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit.i.i: ; preds = %bb.ab, %_ZNSt6vectorISt4pairIPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit42.i.i.i
  %i.fc = getelementptr inbounds nuw [40 x i8], ptr %i.dr, i64 %i.dp
  br label %_ZNSt6vectorISt4pairIPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISD_EE12emplace_backIJRS6_RSC_EEERSD_DpOT_.exit.i

.loopexit.i:                                      ; preds = %_ZNKSt6vectorISt4pairIPKN11OpenImageIO4v3_112_GLOBAL__N_16XMPtagENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i, %.noexc.i.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store ptr %i.p, ptr %i.l, align 8
  store ptr %i.o, ptr %i.m, align 8
  store ptr %i.n, ptr %7, align 8
  br label %.body.i

.loopexit.split-lp.i:                             ; preds = %bb.w
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.loopexit.split-lp.i, %.loopexit.i, %bb.ac
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ew, %bb.ac ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.fd = load ptr, ptr %6, align 8, !tbaa !83    ; 2 uses
  %i.fe = icmp eq ptr %i.fd, %i.j
  br i1 %i.fe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.body.i
  %i.ff = load i64, ptr %i.j, align 8, !tbaa !74
  %i.fg = add i64 %i.ff, 1
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.fg) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %.body.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
end_hunk_0
