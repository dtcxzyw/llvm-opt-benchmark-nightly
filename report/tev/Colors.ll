Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/Colors?download=true
inline.NumInlined: 6649
inline.NumDeleted: 2185
loop-unroll.NumCompletelyUnrolled: 34
loop-unroll.NumRuntimeUnrolled: 53
loop-unroll.NumUnrolled: 87
begin_hunk_0_@_ZN3tev8toStringENS_12EWpPrimariesE:bb.a
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext range(i8 1, 19) i8 @_ZN3tev8ituth27314fromWpTransferEi(i32 noundef %0) local_unnamed_addr #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.fmt::v12::detail::format_arg_store.282", align 16 ; 4 uses
  %2 = alloca %"class.std::__1::basic_string", align 8 ; 9 uses
  %switch.tableidx = add i32 %0, -1               ; 2 uses
  %i.a = icmp ult i32 %switch.tableidx, 13
  br i1 %i.a, label %switch.lookup, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #31 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31, !noalias !593
  store i32 %0, ptr %1, align 16, !tbaa !88, !noalias !593
  invoke void @_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::basic_string") align 8 %2, ptr nonnull @.str.91, i64 55, i64 1, ptr nonnull %1)
          to label %bb.c unwind label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31, !noalias !593
  invoke void @_ZNSt11logic_errorC2ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt16invalid_argument, i64 16), ptr %i.b, align 8, !tbaa !65
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #47
          to label %bb.h unwind label %bb.e

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load i8, ptr %2, align 8
  %i.f = trunc i8 %i.e to i1
  br i1 %i.f, label %.split, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

.split:                                           ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !88
  %i.i = load i64, ptr %2, align 8
  %i.j = and i64 %i.i, -2
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.j) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br i1 %.0, label %bb.f, label %bb.g

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br i1 %.0, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.split, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit
  %.pn10 = phi { ptr, i32 } [ %i.c, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread ], [ %i.d, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit ], [ %i.d, %.split ]
  call void @__cxa_free_exception(ptr %i.b) #31
  br label %bb.g

switch.lookup:                                    ; preds = %bb.a
  %i.k = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN3tev8ituth27314fromWpTransferEi, i64 %i.k
  %switch.load = load i8, ptr %switch.gep, align 1
  ret i8 %switch.load

bb.g:                                             ; preds = %.split, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit, %bb.f
  %.pn9 = phi { ptr, i32 } [ %i.d, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit ], [ %.pn10, %bb.f ], [ %i.d, %.split ]
  resume { ptr, i32 } %.pn9

bb.h:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN3tev12ColorProfileD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(32) dereferenceable(32) %0) unnamed_addr #13 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !83     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = invoke i32 @cmsCloseProfile(ptr noundef nonnull %i.a)
          to label %bb.c unwind label %bb.e       ; 0 uses

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8
  %i.e = trunc i8 %i.d to i1
  br i1 %i.e, label %bb.d, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !88
  %i.h = load i64, ptr %i.c, align 8
  %i.i = and i64 %i.h, -2
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.i) #48
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit: ; preds = %bb.c, %bb.d
  ret void

bb.e:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #46
  unreachable
}

declare i32 @cmsCloseProfile(ptr noundef) local_unnamed_addr #6

declare ptr @cmsReadTag(ptr noundef, i32 noundef) local_unnamed_addr #6

declare i32 @cmsGetHeaderRenderingIntent(ptr noundef) local_unnamed_addr #6

declare i32 @cmsIsIntentSupported(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK3tev12ColorProfile6chromaEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::__1::optional.124") align 4 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !83
  %i.b = tail call ptr @cmsReadTag(ptr noundef %i.a, i32 noundef 1667851120) ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNK3tev12ColorProfile4cicpEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %i.b, align 1, !tbaa !158   ; 2 uses
  %.not = icmp eq i8 %i.c, 2
  br i1 %.not, label %_ZNK3tev12ColorProfile4cicpEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN3tev8ituth2736chromaENS0_15EColorPrimariesE(ptr dead_on_unwind nonnull writable sret(%"struct.std::__1::array") align 4 %0, i8 noundef zeroext %i.c)
  br label %bb.l

_ZNK3tev12ColorProfile4cicpEv.exit:               ; preds = %bb.a, %bb.b
  %i.d = load ptr, ptr %1, align 8, !tbaa !83     ; 6 uses
  %i.e = tail call ptr @cmsD50_XYZ()              ; 2 uses
  %i.f = load <2 x double>, ptr %i.e, align 8, !tbaa !154
  %i.g = fptrunc <2 x double> %i.f to <2 x float> ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.i = load double, ptr %i.h, align 8, !tbaa !597
  %i.j = fptrunc double %i.i to float             ; 3 uses
  %i.k = tail call ptr @cmsReadTag(ptr noundef %i.d, i32 noundef 1667785060) ; 7 uses
  %.not66 = icmp eq ptr %i.k, null
  br i1 %.not66, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZNK3tev12ColorProfile4cicpEv.exit
  %i.l = load double, ptr %i.k, align 8, !tbaa !154, !noalias !598 ; 2 uses
  %gep.1.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load double, ptr %gep.1.i, align 8, !tbaa !154, !noalias !598
  %invariant.gep.1.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = load double, ptr %invariant.gep.1.i, align 8, !tbaa !154, !noalias !598
  %gep.1.1.i = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.o = load double, ptr %gep.1.1.i, align 8, !tbaa !154, !noalias !598
  %i.p = insertelement <2 x double> poison, double %i.n, i64 0
  %i.q = insertelement <2 x double> %i.p, double %i.o, i64 1
  %i.r = fptrunc <2 x double> %i.q to <2 x float> ; 4 uses
  %invariant.gep.2.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.s = load double, ptr %invariant.gep.2.i, align 8, !tbaa !154, !noalias !598
  %i.t = fptrunc double %i.s to float
  %gep.1.2.i = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.u = load <4 x double>, ptr %gep.1.2.i, align 8, !tbaa !154, !noalias !598 ; 3 uses
  %i.v = shufflevector <4 x double> %i.u, <4 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.w = insertelement <2 x double> %i.v, double %i.m, i64 1
  %i.x = shufflevector <2 x double> %i.w, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0> ; 3 uses
  %i.y = fptrunc <4 x double> %i.x to <4 x float> ; 2 uses
  %i.z = shufflevector <4 x double> %i.x, <4 x double> %i.u, <4 x i32> <i32 1, i32 4, i32 poison, i32 6> ; 2 uses
  %i.aa = insertelement <4 x double> poison, double %i.l, i64 0
  %i.ab = insertelement <4 x double> %i.z, double %i.l, i64 2 ; 2 uses
  %i.ac = fptrunc <4 x double> %i.ab to <4 x float> ; 6 uses
  %i.ad = shufflevector <4 x double> %i.u, <4 x double> %i.aa, <2 x i32> <i32 3, i32 4>
  %i.ae = fptrunc <2 x double> %i.ad to <2 x float> ; 2 uses
  %i.af = extractelement <4 x float> %i.ac, i64 1 ; 2 uses
  %i.ag = fneg float %i.af                        ; 2 uses
  %i.ah = extractelement <4 x float> %i.ac, i64 3 ; 2 uses
  %i.ai = fmul float %i.ah, %i.ag
  %i.aj = extractelement <2 x float> %i.ae, i64 0 ; 2 uses
  %i.ak = extractelement <2 x float> %i.r, i64 1  ; 2 uses
  %i.al = tail call float @llvm.fmuladd.f32(float %i.ak, float %i.aj, float %i.ai) ; 2 uses
  %i.am = fneg float %i.t                         ; 3 uses
  %i.an = fmul float %i.ah, %i.am
  %i.ao = extractelement <2 x float> %i.r, i64 0  ; 2 uses
  %i.ap = tail call float @llvm.fmuladd.f32(float %i.ao, float %i.aj, float %i.an)
  %i.aq = fmul float %i.ak, %i.am
  %i.ar = tail call float @llvm.fmuladd.f32(float %i.ao, float %i.af, float %i.aq) ; 2 uses
  %i.as = fneg float %i.ap                        ; 2 uses
  %i.at = extractelement <4 x float> %i.ac, i64 0
  %i.au = fmul float %i.at, %i.as
  %i.av = extractelement <4 x float> %i.ac, i64 2
  %i.aw = tail call float @llvm.fmuladd.f32(float %i.av, float %i.al, float %i.au)
  %i.ax = extractelement <4 x float> %i.y, i64 0
  %i.ay = tail call float @llvm.fmuladd.f32(float %i.ax, float %i.ar, float %i.aw) ; 2 uses
  %i.az = fcmp oeq float %i.ay, 0.000000e+00
  br i1 %i.az, label %_ZN7nanogui7inverseERKNS_6MatrixIfLm3EEE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ba = shufflevector <2 x float> %i.ae, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bb = fdiv float 1.000000e+00, %i.ay          ; 4 uses
  %i.bc = fneg <2 x float> %i.r                   ; 2 uses
  %i.bd = insertelement <2 x float> poison, float %i.al, i64 0
  %i.be = insertelement <2 x float> poison, float %i.bb, i64 0
  %i.bf = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.bg = insertelement <4 x float> poison, float %i.ag, i64 0
  %i.bh = insertelement <4 x float> %i.bg, float %i.am, i64 1
  %i.bi = shufflevector <2 x float> %i.bc, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.bj = shufflevector <4 x float> %i.bh, <4 x float> %i.bi, <4 x i32> <i32 0, i32 1, i32 1, i32 4>
  %i.bk = fmul <4 x float> %i.bj, %i.y
  %i.bl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ac, <4 x float> %i.ba, <4 x float> %i.bk) ; 3 uses
  %i.bm = fneg <4 x float> %i.bl
  %i.bn = shufflevector <4 x float> %i.bm, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.bo = shufflevector <2 x float> %i.bd, <2 x float> %i.bn, <2 x i32> <i32 0, i32 2>
  %i.bp = fmul <2 x float> %i.bo, %i.bf
  %i.bq = shufflevector <4 x double> %i.z, <4 x double> %i.x, <2 x i32> <i32 0, i32 4>
  %i.br = fptrunc <2 x double> %i.bq to <2 x float>
  %i.bs = fmul <2 x float> %i.br, %i.bc
  %i.bt = shufflevector <4 x double> %i.ab, <4 x double> poison, <2 x i32> <i32 2, i32 3>
  %i.bu = fptrunc <2 x double> %i.bt to <2 x float>
  %i.bv = shufflevector <4 x float> %i.ac, <4 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bw = shufflevector <2 x float> %i.bv, <2 x float> %i.r, <2 x i32> <i32 3, i32 1>
  %i.bx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bu, <2 x float> %i.bw, <2 x float> %i.bs) ; 2 uses
  %2 = extractelement <2 x float> %i.bx, i64 1
  %3 = fmul float %2, %i.bb
  %i.by = shufflevector <4 x float> %i.bl, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.bz = insertelement <2 x float> %i.by, float %i.as, i64 0
  %i.ca = fmul <2 x float> %i.bf, %i.bz
  %i.cb = fneg <4 x float> %i.bl                  ; 2 uses
  %4 = shufflevector <4 x float> %i.cb, <4 x float> poison, <2 x i32> <i32 poison, i32 1>
  %5 = extractelement <4 x float> %i.cb, i64 3
  %6 = fmul float %i.bb, %5
  %7 = insertelement <2 x float> %4, float %i.ar, i64 0
  %8 = fmul <2 x float> %7, %i.bf
  %9 = extractelement <2 x float> %i.bx, i64 0
  %10 = fmul float %9, %i.bb
  br label %_ZN7nanogui7inverseERKNS_6MatrixIfLm3EEE.exit

_ZN7nanogui7inverseERKNS_6MatrixIfLm3EEE.exit:    ; preds = %bb.d, %bb.e
  %.sroa.6127.0 = phi float [ %3, %bb.e ], [ 0.000000e+00, %bb.d ] ; 2 uses
  %.sink64.i = phi float [ %6, %bb.e ], [ 0.000000e+00, %bb.d ] ; 2 uses
  %.sink.i = phi float [ %10, %bb.e ], [ 0.000000e+00, %bb.d ] ; 2 uses
  %i.cc = phi <2 x float> [ %8, %bb.e ], [ zeroinitializer, %bb.d ] ; 2 uses
  %11 = phi <2 x float> [ %i.bp, %bb.e ], [ zeroinitializer, %bb.d ] ; 2 uses
  %12 = phi <2 x float> [ %i.ca, %bb.e ], [ zeroinitializer, %bb.d ] ; 2 uses
  %i.cd = extractelement <2 x float> %i.g, i64 0
  %i.ce = tail call float @llvm.fmuladd.f32(float %.sroa.6127.0, float %i.cd, float 0.000000e+00)
  %i.cf = extractelement <2 x float> %i.g, i64 1
  %i.cg = tail call float @llvm.fmuladd.f32(float %.sink64.i, float %i.cf, float %i.ce)
  %i.ch = shufflevector <2 x float> %i.g, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ci = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %11, <2 x float> %i.ch, <2 x float> zeroinitializer)
  %i.cj = shufflevector <2 x float> %i.g, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ck = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %12, <2 x float> %i.cj, <2 x float> %i.ci)
  %i.cl = insertelement <2 x float> poison, float %i.j, i64 0
  %i.cm = shufflevector <2 x float> %i.cl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cc, <2 x float> %i.cm, <2 x float> %i.ck)
  %i.co = tail call float @llvm.fmuladd.f32(float %.sink.i, float %i.j, float %i.cg)
  br label %bb.h

bb.f:                                             ; preds = %_ZNK3tev12ColorProfile4cicpEv.exit
  %i.cp = tail call ptr @cmsReadTag(ptr noundef %i.d, i32 noundef 2004119668) ; 3 uses
  %.not67 = icmp eq ptr %i.cp, null
  br i1 %.not67, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cq = load <2 x double>, ptr %i.cp, align 8, !tbaa !154
  %i.cr = fptrunc <2 x double> %i.cq to <2 x float>
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !597
  %i.cu = fptrunc double %i.ct to float
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %_ZN7nanogui7inverseERKNS_6MatrixIfLm3EEE.exit
  %.sroa.14141.0 = phi float [ 0.000000e+00, %bb.f ], [ 0.000000e+00, %bb.g ], [ %.sroa.6127.0, %_ZN7nanogui7inverseERKNS_6MatrixIfLm3EEE.exit ] ; 2 uses
  %.sroa.32.0 = phi float [ 0.000000e+00, %bb.f ], [ 0.000000e+00, %bb.g ], [ %.sink64.i, %_ZN7nanogui7inverseERKNS_6MatrixIfLm3EEE.exit ] ; 2 uses
  %.sroa.50.0 = phi float [ 1.000000e+00, %bb.f ], [ 1.000000e+00, %bb.g ], [ %.sink.i, %_ZN7nanogui7inverseERKNS_6MatrixIfLm3EEE.exit ] ; 2 uses
  %.sroa.0163.0 = phi <2 x float> [ %i.g, %bb.f ], [ %i.cr, %bb.g ], [ %i.cn, %_ZN7nanogui7inverseERKNS_6MatrixIfLm3EEE.exit ] ; 3 uses
  %.sroa.13.0 = phi float [ %i.j, %bb.f ], [ %i.cu, %bb.g ], [ %i.co, %_ZN7nanogui7inverseERKNS_6MatrixIfLm3EEE.exit ]
  %i.cv = phi <2 x float> [ zeroinitializer, %bb.f ], [ zeroinitializer, %bb.g ], [ %i.cc, %_ZN7nanogui7inverseERKNS_6MatrixIfLm3EEE.exit ] ; 2 uses
  %i.cw = phi <2 x float> [ <float 0.000000e+00, float 1.000000e+00>, %bb.f ], [ <float 0.000000e+00, float 1.000000e+00>, %bb.g ], [ %12, %_ZN7nanogui7inverseERKNS_6MatrixIfLm3EEE.exit ] ; 2 uses
  %i.cx = phi <2 x float> [ <float 1.000000e+00, float 0.000000e+00>, %bb.f ], [ <float 1.000000e+00, float 0.000000e+00>, %bb.g ], [ %11, %_ZN7nanogui7inverseERKNS_6MatrixIfLm3EEE.exit ] ; 2 uses
  %shift = shufflevector <2 x float> %.sroa.0163.0, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %.sroa.0163.0, %shift
  %i.cy = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.cz = fadd float %.sroa.13.0, %i.cy
  %i.da = insertelement <2 x float> poison, float %i.cz, i64 0
  %i.db = shufflevector <2 x float> %i.da, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dc = fdiv <2 x float> %.sroa.0163.0, %i.db   ; 4 uses
  %i.dd = tail call ptr @cmsReadTag(ptr noundef %i.d, i32 noundef 1918392666) ; 3 uses
  %i.de = tail call ptr @cmsReadTag(ptr noundef %i.d, i32 noundef 1733843290) ; 3 uses
  %i.df = tail call ptr @cmsReadTag(ptr noundef %i.d, i32 noundef 1649957210) ; 4 uses
  %i.dg = icmp ne ptr %i.dd, null
  %i.dh = icmp ne ptr %i.de, null
  %or.cond = select i1 %i.dg, i1 %i.dh, i1 false
  %i.di = icmp ne ptr %i.df, null
  %or.cond3 = select i1 %or.cond, i1 %i.di, i1 false
  br i1 %or.cond3, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.dj = shufflevector <2 x float> %i.cv, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.dk = shufflevector <2 x float> %i.cx, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !597
  %i.dn = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.do = load double, ptr %i.dn, align 8, !tbaa !597
  %i.dp = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %bc207 = bitcast <2 x float> %i.dc to <2 x i32>
  %i.dr = extractelement <2 x i32> %bc207, i64 0
  %bc208 = bitcast <2 x float> %i.dc to <2 x i32>
  %i.ds = extractelement <2 x i32> %bc208, i64 1
  %i.dt = load <2 x double>, ptr %i.dd, align 8, !tbaa !154 ; 2 uses
  %i.du = load <2 x double>, ptr %i.de, align 8, !tbaa !154 ; 2 uses
  %i.dv = shufflevector <2 x double> %i.dt, <2 x double> %i.du, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.dw = fptrunc <4 x double> %i.dv to <4 x float> ; 2 uses
  %i.dx = shufflevector <2 x double> %i.dt, <2 x double> %i.du, <4 x i32> <i32 1, i32 1, i32 3, i32 3>
  %i.dy = fptrunc <4 x double> %i.dx to <4 x float> ; 2 uses
  %i.dz = insertelement <4 x double> poison, double %i.dm, i64 0
  %i.ea = insertelement <4 x double> %i.dz, double %i.do, i64 1
  %i.eb = shufflevector <4 x double> %i.ea, <4 x double> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ec = fptrunc <4 x double> %i.eb to <4 x float> ; 2 uses
  %i.ed = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dk, <4 x float> %i.dw, <4 x float> zeroinitializer)
  %13 = insertelement <2 x float> poison, float %.sroa.14141.0, i64 0
  %14 = shufflevector <2 x float> %13, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ee = shufflevector <4 x float> %i.dw, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.ef = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %14, <2 x float> %i.ee, <2 x float> zeroinitializer)
  %i.eg = shufflevector <2 x float> %i.cw, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.eh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eg, <4 x float> %i.dy, <4 x float> %i.ed)
  %15 = insertelement <2 x float> poison, float %.sroa.32.0, i64 0
  %16 = shufflevector <2 x float> %15, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ei = shufflevector <4 x float> %i.dy, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.ej = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %16, <2 x float> %i.ei, <2 x float> %i.ef)
  %i.ek = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dj, <4 x float> %i.ec, <4 x float> %i.eh) ; 3 uses
  %17 = insertelement <2 x float> poison, float %.sroa.50.0, i64 0
  %i.el = shufflevector <2 x float> %17, <2 x float> poison, <2 x i32> zeroinitializer
  %i.em = shufflevector <4 x float> %i.ec, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.en = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.el, <2 x float> %i.em, <2 x float> %i.ej)
  %i.eo = shufflevector <4 x float> %i.ek, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.ep = shufflevector <4 x float> %i.ek, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.eq = fadd <2 x float> %i.eo, %i.ep
  %i.er = fadd <2 x float> %i.en, %i.eq
  %i.es = shufflevector <2 x float> %i.er, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.et = fdiv <4 x float> %i.ek, %i.es
  store <4 x float> %i.et, ptr %0, align 4
  %.sroa.783.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.eu = load double, ptr %i.df, align 8, !tbaa !599
  %i.ev = load double, ptr %i.dp, align 8, !tbaa !600
  %i.ew = load double, ptr %i.dq, align 8, !tbaa !597
  %i.ex = fptrunc double %i.eu to float           ; 2 uses
  %i.ey = fptrunc double %i.ev to float           ; 2 uses
  %i.ez = fptrunc double %i.ew to float           ; 2 uses
  %i.fa = insertelement <2 x float> poison, float %i.ex, i64 0
  %i.fb = shufflevector <2 x float> %i.fa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cx, <2 x float> %i.fb, <2 x float> zeroinitializer)
  %i.fd = tail call float @llvm.fmuladd.f32(float %.sroa.14141.0, float %i.ex, float 0.000000e+00)
  %i.fe = insertelement <2 x float> poison, float %i.ey, i64 0
  %i.ff = shufflevector <2 x float> %i.fe, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cw, <2 x float> %i.ff, <2 x float> %i.fc)
  %i.fh = tail call float @llvm.fmuladd.f32(float %.sroa.32.0, float %i.ey, float %i.fd)
  %i.fi = insertelement <2 x float> poison, float %i.ez, i64 0
  %i.fj = shufflevector <2 x float> %i.fi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cv, <2 x float> %i.fj, <2 x float> %i.fg) ; 3 uses
  %i.fl = tail call float @llvm.fmuladd.f32(float %.sroa.50.0, float %i.ez, float %i.fh)
  %shift203 = shufflevector <2 x float> %i.fk, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop204 = fadd <2 x float> %i.fk, %shift203
  %i.fm = extractelement <2 x float> %foldExtExtBinop204, i64 0
  %i.fn = fadd float %i.fl, %i.fm
  %i.fo = insertelement <2 x float> poison, float %i.fn, i64 0
  %i.fp = shufflevector <2 x float> %i.fo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fq = fdiv <2 x float> %i.fk, %i.fp
  store <2 x float> %i.fq, ptr %.sroa.783.0..sroa_idx, align 4
  %.sroa.985.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.985.sroa.4.0.insert.ext = zext i32 %i.ds to i64
  %.sroa.985.sroa.4.0.insert.shift = shl nuw i64 %.sroa.985.sroa.4.0.insert.ext, 32
  %.sroa.985.sroa.0.0.insert.ext = zext i32 %i.dr to i64
  %.sroa.985.sroa.0.0.insert.insert = or disjoint i64 %.sroa.985.sroa.4.0.insert.shift, %.sroa.985.sroa.0.0.insert.ext
  store i64 %.sroa.985.sroa.0.0.insert.insert, ptr %.sroa.985.0..sroa_idx, align 4, !tbaa !88
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.fr = tail call ptr @cmsReadTag(ptr noundef %i.d, i32 noundef 1667789421) ; 4 uses
  %.not68 = icmp eq ptr %i.fr, null
  br i1 %.not68, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 24
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fr, i64 48
  %bc = bitcast <2 x float> %i.dc to <2 x i32>
  %i.fu = extractelement <2 x i32> %bc, i64 0
  %bc206 = bitcast <2 x float> %i.dc to <2 x i32>
  %i.fv = extractelement <2 x i32> %bc206, i64 1
  %i.fw = load <2 x double>, ptr %i.fr, align 8, !tbaa !154
  %i.fx = load <2 x double>, ptr %i.fs, align 8, !tbaa !154
  %i.fy = shufflevector <2 x double> %i.fw, <2 x double> %i.fx, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.fz = fptrunc <4 x double> %i.fy to <4 x float>
  store <4 x float> %i.fz, ptr %0, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ga = load <2 x double>, ptr %i.ft, align 8, !tbaa !154
  %i.gb = fptrunc <2 x double> %i.ga to <2 x float>
  store <2 x float> %i.gb, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.9.sroa.4.0.insert.ext = zext i32 %i.fv to i64
  %.sroa.9.sroa.4.0.insert.shift = shl nuw i64 %.sroa.9.sroa.4.0.insert.ext, 32
  %.sroa.9.sroa.0.0.insert.ext = zext i32 %i.fu to i64
  %.sroa.9.sroa.0.0.insert.insert = or disjoint i64 %.sroa.9.sroa.4.0.insert.shift, %.sroa.9.sroa.0.0.insert.ext
  store i64 %.sroa.9.sroa.0.0.insert.insert, ptr %.sroa.9.0..sroa_idx, align 4, !tbaa !88
  br label %bb.l

.critedge:                                        ; preds = %bb.j
  store i8 0, ptr %0, align 4, !tbaa !88
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %.critedge, %bb.k, %bb.c
  %.sink = phi i8 [ 1, %bb.i ], [ 0, %.critedge ], [ 1, %bb.k ], [ 1, %bb.c ]
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sink, ptr %i.gc, align 4, !tbaa !602
  ret void
}

declare ptr @cmsD50_XYZ() local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3tev12ColorProfile7fromIccENSt3__14spanIKhLm18446744073709551615EEE(ptr dead_on_unwind noalias writable sret(%"class.tev::ColorProfile") align 8 %0, ptr %1, i64 %2) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__1::basic_string_view", align 8 ; 6 uses
  %i.a = load i8, ptr @_ZGVZN3tev10CmsContext11threadLocalEvE9threadCtx, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN3tev10CmsContext11threadLocalEv.exit, !prof !133

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3tev10CmsContextC2Ev(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN3tev10CmsContext11threadLocalEvE9threadCtx)
  %i.c = tail call i32 @__cxa_thread_atexit(ptr nonnull @_ZN3tev10CmsContextD2Ev, ptr nonnull @_ZZN3tev10CmsContext11threadLocalEvE9threadCtx, ptr nonnull @__dso_handle) #31 ; 0 uses
  store i8 1, ptr @_ZGVZN3tev10CmsContext11threadLocalEvE9threadCtx, align 8
  br label %_ZN3tev10CmsContext11threadLocalEv.exit

_ZN3tev10CmsContext11threadLocalEv.exit:          ; preds = %bb.a, %bb.b
  %i.d = tail call noundef nonnull align 8 dereferenceable(24) ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN3tev10CmsContext11threadLocalEvE9threadCtx)
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !136
  %i.f = trunc i64 %2 to i32
  %i.g = tail call ptr @cmsOpenProfileFromMemTHR(ptr noundef %i.e, ptr noundef %1, i32 noundef %i.f) ; 4 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.c, label %bb.f

bb.c:                                             ; preds = %_ZN3tev10CmsContext11threadLocalEv.exit
  %i.h = tail call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull @.str.93)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #47
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.h) #31
  br label %bb.m

bb.f:                                             ; preds = %_ZN3tev10CmsContext11threadLocalEv.exit
  store ptr %i.g, ptr %0, align 8, !tbaa !83
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i8 0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 3 uses
  store i8 0, ptr %i.k, align 1, !tbaa !88
  %i.l = invoke i32 @cmsGetProfileInfoUTF8(ptr noundef nonnull %i.g, i32 noundef 0, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95, ptr noundef null, i32 noundef 0)
          to label %bb.g unwind label %bb.i       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %.not12 = icmp eq i32 %i.l, 0
  br i1 %.not12, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = zext i32 %i.l to i64
  %i.n = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEmc(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 noundef %i.m, i8 noundef signext 0)
          to label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6resizeB8ne180100Em.exit unwind label %bb.i ; 0 uses

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6resizeB8ne180100Em.exit: ; preds = %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre18 = load i64, ptr %i.o, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre17 = load ptr, ptr %.phi.trans.insert, align 8
  %.pre = load i8, ptr %i.j, align 8              ; 2 uses
  %i.p = trunc i8 %.pre to i1                     ; 2 uses
  %i.q = select i1 %i.p, ptr %.pre17, ptr %i.k
  %i.r = lshr i8 %.pre, 1
  %i.s = zext nneg i8 %i.r to i64
  %i.t = select i1 %i.p, i64 %.pre18, i64 %i.s
  %i.u = trunc i64 %i.t to i32
  %i.v = invoke i32 @cmsGetProfileInfoUTF8(ptr noundef nonnull %i.g, i32 noundef 0, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95, ptr noundef %i.q, i32 noundef %i.u)
          to label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6resizeB8ne180100Em.exit._crit_edge unwind label %bb.i ; 0 uses

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6resizeB8ne180100Em.exit._crit_edge: ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6resizeB8ne180100Em.exit
  %.pre19 = load i8, ptr %i.j, align 8
  br label %bb.j

bb.i:                                             ; preds = %bb.h, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6resizeB8ne180100Em.exit, %bb.f
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.j:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6resizeB8ne180100Em.exit._crit_edge, %bb.g
  %i.x = phi i8 [ %.pre19, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6resizeB8ne180100Em.exit._crit_edge ], [ 0, %bb.g ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.y = trunc i8 %i.x to i1                      ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = select i1 %i.y, ptr %i.aa, ptr %i.k
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = lshr i8 %i.x, 1
  %i.af = zext nneg i8 %i.ae to i64
  %i.ag = select i1 %i.y, i64 %i.ad, i64 %i.af
  store ptr %i.ab, ptr %3, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.ag, ptr %i.ah, align 8
  %i.ai = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc15 unwind label %bb.k

.noexc15:                                         ; preds = %bb.j
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !96
  invoke void @_ZN4tlog6Logger3logIJNSt3__117basic_string_viewIcNS2_11char_traitsIcEEEEEEEvNS_9ESeverityEN3fmt3v127fstringIJDpT_EE1tEDpOSB_(ptr noundef nonnull align 8 dereferenceable(56) %i.aj, i32 noundef 4, ptr nonnull @.str.96, i64 24, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZN4tlog5debugIJNSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS9_.exit unwind label %bb.k

_ZN4tlog5debugIJNSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS9_.exit: ; preds = %.noexc15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  ret void

bb.k:                                             ; preds = %.noexc15, %bb.j
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i
  %.pn = phi { ptr, i32 } [ %i.ak, %bb.k ], [ %i.w, %bb.i ]
end_hunk_0
