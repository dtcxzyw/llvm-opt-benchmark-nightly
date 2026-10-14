Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/data?download=true
inline.NumInlined: 10971
inline.NumDeleted: 3124
loop-unroll.NumCompletelyUnrolled: 40
loop-unroll.NumRuntimeUnrolled: 110
loop-unroll.NumUnrolled: 150
begin_hunk_0_@_ZN7xgboost9JsonArrayD2Ev:bb.a
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN7xgboost9JsonArrayE, i64 16), ptr %0, align 8, !tbaa !70
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !272  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !271  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN7xgboost4JsonES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN7xgboost4JsonEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.l, %_ZSt8_DestroyIN7xgboost4JsonEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8, !tbaa !223 ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN7xgboost4JsonEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = atomicrmw sub ptr %i.f, i32 1 release, align 4
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.c, label %_ZSt8_DestroyIN7xgboost4JsonEEvPT_.exit.i.i.i

bb.c:                                             ; preds = %bb.b
  fence acquire
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !70
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(24) %i.e) #20, !inline_history !19
  br label %_ZSt8_DestroyIN7xgboost4JsonEEvPT_.exit.i.i.i

_ZSt8_DestroyIN7xgboost4JsonEEvPT_.exit.i.i.i:    ; preds = %bb.c, %bb.b, %.lr.ph.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.l, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN7xgboost4JsonES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !20

_ZSt8_DestroyIPN7xgboost4JsonES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN7xgboost4JsonEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !272
  br label %_ZSt8_DestroyIPN7xgboost4JsonES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN7xgboost4JsonES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN7xgboost4JsonES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.m = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN7xgboost4JsonES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN7xgboost4JsonESaIS1_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN7xgboost4JsonES1_EvT_S3_RSaIT0_E.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !345
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.r) #39
  br label %_ZNSt6vectorIN7xgboost4JsonESaIS1_EED2Ev.exit

_ZNSt6vectorIN7xgboost4JsonESaIS1_EED2Ev.exit:    ; preds = %_ZSt8_DestroyIPN7xgboost4JsonES1_EvT_S3_RSaIT0_E.exit.i, %bb.d
  ret void
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #6

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN7xgboost13DispatchDTypeIZNS_13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EfEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdESA_EUlSD_E_EEDaNS_21ArrayInterfaceHandler4TypeESD_(i8 noundef signext %0, ptr nofree readonly captures(none) %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %1 = alloca %"class.std::unique_ptr", align 8   ; 8 uses
  %2 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %3 = alloca %"class.std::unique_ptr", align 8   ; 8 uses
  %4 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %5 = alloca %"class.std::unique_ptr", align 8   ; 8 uses
  %6 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %7 = alloca %"class.std::unique_ptr", align 8   ; 8 uses
  %8 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %i.j = alloca i32, align 4                      ; 5 uses
  %9 = alloca %"class.std::unique_ptr", align 8   ; 8 uses
  %10 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %i.k = alloca i32, align 4                      ; 5 uses
  %i.l = alloca i32, align 4                      ; 5 uses
  %11 = alloca %"class.std::unique_ptr", align 8  ; 8 uses
  %12 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %i.m = alloca i32, align 4                      ; 5 uses
  %i.n = alloca i32, align 4                      ; 5 uses
  %13 = alloca %"class.std::unique_ptr", align 8  ; 8 uses
  %14 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %i.o = alloca i32, align 4                      ; 5 uses
  %i.p = alloca i32, align 4                      ; 5 uses
  %15 = alloca %"class.std::unique_ptr", align 8  ; 8 uses
  %16 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %i.q = alloca i32, align 4                      ; 5 uses
  %i.r = alloca i32, align 4                      ; 5 uses
  %17 = alloca %"class.std::unique_ptr", align 8  ; 8 uses
  %18 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %i.s = alloca i32, align 4                      ; 5 uses
  %i.t = alloca i32, align 4                      ; 5 uses
  %19 = alloca %"class.std::unique_ptr", align 8  ; 8 uses
  %20 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %i.u = alloca i32, align 4                      ; 5 uses
  %i.v = alloca i32, align 4                      ; 5 uses
  %21 = alloca %"class.std::unique_ptr", align 8  ; 8 uses
  %22 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %i.w = alloca i32, align 4                      ; 5 uses
  %i.x = alloca i32, align 4                      ; 5 uses
  %23 = alloca %"class.std::unique_ptr", align 8  ; 8 uses
  %24 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %i.y = alloca i32, align 4                      ; 5 uses
  %i.z = alloca i32, align 4                      ; 5 uses
  %25 = alloca %"class.std::unique_ptr", align 8  ; 8 uses
  %26 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %i.aa = alloca i32, align 4                     ; 5 uses
  %i.ab = alloca i32, align 4                     ; 5 uses
  %27 = alloca %"class.std::unique_ptr", align 8  ; 8 uses
  %28 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %i.ac = alloca i32, align 4                     ; 5 uses
  %i.ad = alloca i32, align 4                     ; 5 uses
  %29 = alloca %"class.std::unique_ptr", align 8  ; 8 uses
  %30 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %i.ae = alloca i32, align 4                     ; 5 uses
  %i.af = alloca i32, align 4                     ; 5 uses
  %31 = alloca %"class.std::unique_ptr", align 8  ; 8 uses
  %32 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %i.ag = alloca i32, align 4                     ; 5 uses
  %i.ah = alloca i32, align 4                     ; 5 uses
  %33 = alloca %"class.std::unique_ptr", align 8  ; 8 uses
  %34 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %i.ai = alloca i32, align 4                     ; 5 uses
  %i.aj = alloca i32, align 4                     ; 5 uses
  %35 = alloca %"class.std::unique_ptr", align 8  ; 8 uses
  %36 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %i.ak = alloca i32, align 4                     ; 5 uses
  %i.al = alloca i32, align 4                     ; 5 uses
  %37 = alloca %"class.std::unique_ptr", align 8  ; 8 uses
  %38 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %i.am = alloca i32, align 4                     ; 5 uses
  %i.an = alloca i32, align 4                     ; 5 uses
  %39 = alloca %"class.std::unique_ptr", align 8  ; 8 uses
  %40 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %i.ao = alloca i32, align 4                     ; 5 uses
  %i.ap = alloca i32, align 4                     ; 5 uses
  %41 = alloca %"class.std::unique_ptr", align 8  ; 8 uses
  %42 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %i.aq = alloca i32, align 4                     ; 5 uses
  %i.ar = alloca i32, align 4                     ; 5 uses
  %43 = alloca %"class.std::unique_ptr", align 8  ; 8 uses
  %44 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %45 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  switch i8 %0, label %_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EfEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit [
    i8 0, label %bb.b
    i8 1, label %bb.e
    i8 2, label %bb.y
    i8 3, label %bb.as
    i8 4, label %bb.bm
    i8 5, label %bb.cg
    i8 6, label %bb.da
    i8 7, label %bb.du
    i8 8, label %bb.eo
    i8 9, label %bb.fi
    i8 10, label %bb.gc
    i8 11, label %bb.gw
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #20
  %i.as = call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %45)
  call void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.as, ptr noundef nonnull @.str.129, i32 noundef 621)
  %i.at = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %45)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.c

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %bb.b
  %i.au = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.at, ptr noundef nonnull @.str.199, i64 noundef 43)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  call void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %45)
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #20
  br label %_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EfEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit

bb.c:                                             ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %bb.b
  %i.av = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %45)
          to label %bb.d unwind label %bb.hq

common.resume:                                    ; preds = %bb.hd, %bb.hm, %bb.gj, %bb.gs, %bb.fp, %bb.fy, %bb.ev, %bb.fe, %bb.eb, %bb.ek, %bb.dh, %bb.dq, %bb.cn, %bb.cw, %bb.bt, %bb.cc, %bb.az, %bb.bi, %bb.af, %bb.ao, %bb.l, %bb.u, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.av, %bb.d ], [ %.pn.i.i11.i.i.i584, %bb.gs ], [ %.pn.i.i11.i.i.i, %bb.u ], [ %.pn.i.i11.i.i.i24, %bb.ao ], [ %.pn.i.i11.i.i.i94, %bb.bi ], [ %.pn.i.i11.i.i.i164, %bb.cc ], [ %.pn.i.i11.i.i.i234, %bb.cw ], [ %.pn.i.i11.i.i.i304, %bb.dq ], [ %.pn.i.i11.i.i.i374, %bb.ek ], [ %.pn.i.i11.i.i.i444, %bb.fe ], [ %.pn.i.i11.i.i.i514, %bb.fy ], [ %.pn.i.i.i.i.i, %bb.l ], [ %.pn.i.i.i.i.i54, %bb.af ], [ %.pn.i.i.i.i.i124, %bb.az ], [ %.pn.i.i.i.i.i194, %bb.bt ], [ %.pn.i.i.i.i.i264, %bb.cn ], [ %.pn.i.i.i.i.i334, %bb.dh ], [ %.pn.i.i.i.i.i404, %bb.eb ], [ %.pn.i.i.i.i.i474, %bb.ev ], [ %.pn.i.i.i.i.i544, %bb.fp ], [ %.pn.i.i.i.i.i614, %bb.gj ], [ %.pn.i.i.i.i.i684, %bb.hd ], [ %.pn.i.i11.i.i.i654, %bb.hm ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #20
  br label %common.resume

bb.e:                                             ; preds = %bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %.8.val, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !149 ; 24 uses
  %46 = ptrtoaddr ptr %i.ax to i64                ; 2 uses
  %.not.i = icmp eq ptr %i.ax, null
  br i1 %.not.i, label %bb.f, label %_ZN7xgboost6common4SpanIKfLm18446744073709551615EEC2EPS2_m.exit.i, !prof !71

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt9terminatev() #38
  unreachable

_ZN7xgboost6common4SpanIKfLm18446744073709551615EEC2EPS2_m.exit.i: ; preds = %bb.e
  %i.ay = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !74 ; 22 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !1065, !nonnull !111, !align !121 ; 5 uses
  %.sroa.05.0.copyload.i.i = load i64, ptr %i.bb, align 8, !tbaa !57 ; 11 uses
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %.sroa.3.0.copyload.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !tbaa !74
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %.sroa.46.0.copyload.i.i = load ptr, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !tbaa !102 ; 13 uses
  %.sroa.46.0.copyload.i.i854 = ptrtoaddr ptr %.sroa.46.0.copyload.i.i to i64 ; 2 uses
  %.sroa.57.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %.sroa.57.0.copyload.i.i = load ptr, ptr %.sroa.57.0..sroa_idx.i.i, align 8, !tbaa !102 ; 10 uses
  %.sroa.68.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  %.sroa.68.0.copyload.i.i = load i64, ptr %.sroa.68.0..sroa_idx.i.i, align 8, !tbaa !74 ; 23 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !1066, !nonnull !111, !align !121
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !274
  %i.bf = tail call noundef i32 @_ZNK7xgboost7Context7ThreadsEv(ptr noundef nonnull align 8 dereferenceable(5084) %i.be) ; 5 uses
  %i.bg = icmp eq i64 %.sroa.3.0.copyload.i.i, %.sroa.68.0.copyload.i.i
  %.not4.i.le.i.i.i.i.i = icmp eq i64 %.sroa.05.0.copyload.i.i, 1
  %or.cond.i.i.i.i = select i1 %i.bg, i1 true, i1 %.not4.i.le.i.i.i.i.i
  %i.bh = icmp eq i32 %i.bf, 1                    ; 2 uses
  br i1 %or.cond.i.i.i.i, label %bb.g, label %bb.p

bb.g:                                             ; preds = %_ZN7xgboost6common4SpanIKfLm18446744073709551615EEC2EPS2_m.exit.i
  br i1 %i.bh, label %.preheader.i.i.i.i.i, label %bb.h

.preheader.i.i.i.i.i:                             ; preds = %bb.g
  %.not137.i.i.i.i.i = icmp eq i64 %.sroa.68.0.copyload.i.i, 0
  br i1 %.not137.i.i.i.i.i, label %_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EfEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit, label %.lr.ph130.i.i.i.i.i.preheader

.lr.ph130.i.i.i.i.i.preheader:                    ; preds = %.preheader.i.i.i.i.i
  %min.iters.check873 = icmp ult i64 %.sroa.68.0.copyload.i.i, 12
  %ident.check869.not = icmp ne i64 %i.az, 1
  %or.cond.not904 = select i1 %min.iters.check873, i1 true, i1 %ident.check869.not
  %i.bi = sub i64 %46, %.sroa.46.0.copyload.i.i854
  %diff.check871 = icmp ugt i64 %i.bi, -32
  %or.cond884 = select i1 %or.cond.not904, i1 true, i1 %diff.check871
  br i1 %or.cond884, label %.lr.ph130.i.i.i.i.i.preheader905, label %vector.ph874

vector.ph874:                                     ; preds = %.lr.ph130.i.i.i.i.i.preheader
  %n.vec875 = and i64 %.sroa.68.0.copyload.i.i, -8 ; 3 uses
  br label %vector.body876

vector.body876:                                   ; preds = %vector.body876, %vector.ph874
  %index877 = phi i64 [ 0, %vector.ph874 ], [ %index.next880, %vector.body876 ] ; 3 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.46.0.copyload.i.i, i64 %index877 ; 2 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %index877 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %wide.load878 = load <4 x float>, ptr %i.bk, align 4, !tbaa !73
  %wide.load879 = load <4 x float>, ptr %i.bl, align 4, !tbaa !73
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  store <4 x float> %wide.load878, ptr %i.bj, align 4, !tbaa !73
  store <4 x float> %wide.load879, ptr %i.bm, align 4, !tbaa !73
  %index.next880 = add nuw i64 %index877, 8       ; 2 uses
  %i.bn = icmp eq i64 %index.next880, %n.vec875
  br i1 %i.bn, label %middle.block881, label %vector.body876, !llvm.loop !921

middle.block881:                                  ; preds = %vector.body876
  %cmp.n882 = icmp eq i64 %.sroa.68.0.copyload.i.i, %n.vec875
  br i1 %cmp.n882, label %_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EfEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit, label %.lr.ph130.i.i.i.i.i.preheader905

.lr.ph130.i.i.i.i.i.preheader905:                 ; preds = %.lr.ph130.i.i.i.i.i.preheader, %middle.block881
  %.0129.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph130.i.i.i.i.i.preheader ], [ %n.vec875, %middle.block881 ] ; 3 uses
  %xtraiter1139 = and i64 %.sroa.68.0.copyload.i.i, 3 ; 2 uses
  %lcmp.mod1140.not = icmp eq i64 %xtraiter1139, 0
  br i1 %lcmp.mod1140.not, label %.lr.ph130.i.i.i.i.i.prol.loopexit, label %.lr.ph130.i.i.i.i.i.prol

.lr.ph130.i.i.i.i.i.prol:                         ; preds = %.lr.ph130.i.i.i.i.i.preheader905, %.lr.ph130.i.i.i.i.i.prol
  %.0129.i.i.i.i.i.prol = phi i64 [ %i.bs, %.lr.ph130.i.i.i.i.i.prol ], [ %.0129.i.i.i.i.i.ph, %.lr.ph130.i.i.i.i.i.preheader905 ] ; 3 uses
  %prol.iter1141 = phi i64 [ %prol.iter1141.next, %.lr.ph130.i.i.i.i.i.prol ], [ 0, %.lr.ph130.i.i.i.i.i.preheader905 ]
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.46.0.copyload.i.i, i64 %.0129.i.i.i.i.i.prol
  %i.bp = mul i64 %.0129.i.i.i.i.i.prol, %i.az
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.bp
  %i.br = load float, ptr %i.bq, align 4, !tbaa !73
  store float %i.br, ptr %i.bo, align 4, !tbaa !73
  %i.bs = add nuw i64 %.0129.i.i.i.i.i.prol, 1    ; 2 uses
  %prol.iter1141.next = add i64 %prol.iter1141, 1 ; 2 uses
  %prol.iter1141.cmp.not = icmp eq i64 %prol.iter1141.next, %xtraiter1139
  br i1 %prol.iter1141.cmp.not, label %.lr.ph130.i.i.i.i.i.prol.loopexit, label %.lr.ph130.i.i.i.i.i.prol, !llvm.loop !922

.lr.ph130.i.i.i.i.i.prol.loopexit:                ; preds = %.lr.ph130.i.i.i.i.i.prol, %.lr.ph130.i.i.i.i.i.preheader905
  %.0129.i.i.i.i.i.unr = phi i64 [ %.0129.i.i.i.i.i.ph, %.lr.ph130.i.i.i.i.i.preheader905 ], [ %i.bs, %.lr.ph130.i.i.i.i.i.prol ]
  %i.bt = sub i64 %.0129.i.i.i.i.i.ph, %.sroa.68.0.copyload.i.i
  %i.bu = icmp ugt i64 %i.bt, -4
  br i1 %i.bu, label %_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EfEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit, label %.lr.ph130.i.i.i.i.i

.lr.ph130.i.i.i.i.i:                              ; preds = %.lr.ph130.i.i.i.i.i.prol.loopexit, %.lr.ph130.i.i.i.i.i
  %.0129.i.i.i.i.i = phi i64 [ %i.co, %.lr.ph130.i.i.i.i.i ], [ %.0129.i.i.i.i.i.unr, %.lr.ph130.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.46.0.copyload.i.i, i64 %.0129.i.i.i.i.i
  %i.bw = mul i64 %.0129.i.i.i.i.i, %i.az
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.bw
  %i.by = load float, ptr %i.bx, align 4, !tbaa !73
  store float %i.by, ptr %i.bv, align 4, !tbaa !73
  %i.bz = add nuw i64 %.0129.i.i.i.i.i, 1         ; 2 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %.sroa.46.0.copyload.i.i, i64 %i.bz
  %i.cb = mul i64 %i.bz, %i.az
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.cb
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !73
  store float %i.cd, ptr %i.ca, align 4, !tbaa !73
  %i.ce = add nuw i64 %.0129.i.i.i.i.i, 2         ; 2 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.46.0.copyload.i.i, i64 %i.ce
  %i.cg = mul i64 %i.ce, %i.az
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.cg
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !73
  store float %i.ci, ptr %i.cf, align 4, !tbaa !73
  %i.cj = add nuw i64 %.0129.i.i.i.i.i, 3         ; 2 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %.sroa.46.0.copyload.i.i, i64 %i.cj
  %i.cl = mul i64 %i.cj, %i.az
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.cl
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !73
  store float %i.cn, ptr %i.ck, align 4, !tbaa !73
  %i.co = add nuw i64 %.0129.i.i.i.i.i, 4         ; 2 uses
  %exitcond149.not.i.i.i.i.i.3 = icmp eq i64 %i.co, %.sroa.68.0.copyload.i.i
  br i1 %exitcond149.not.i.i.i.i.i.3, label %_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EfEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit, label %.lr.ph130.i.i.i.i.i, !llvm.loop !923

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  store i32 %i.bf, ptr %i.aq, align 4, !tbaa !65, !noalias !1067
  store i32 1, ptr %i.ar, align 4, !tbaa !65, !noalias !1067
  %.not.i.i.i.i.i.i = icmp slt i32 %i.bf, 1
  br i1 %.not.i.i.i.i.i.i, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i.i, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i.i.i.i

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i.i.i.i: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  br label %.preheader112.i.i.i.i.i

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i.i: ; preds = %bb.h
  call void @_ZN4dmlc14LogCheckFormatIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %43, ptr noundef nonnull align 4 dereferenceable(4) %i.aq, ptr noundef nonnull align 4 dereferenceable(4) %i.ar)
  %.pr.i.i.i.i.i = load ptr, ptr %43, align 8, !tbaa !169
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  %.not.i.i.i.i.i = icmp eq ptr %.pr.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %.preheader112.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #20
  %i.cp = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %44)
          to label %.noexc.i.i.i.i.i unwind label %bb.j

.noexc.i.i.i.i.i:                                 ; preds = %bb.i
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.cp, ptr noundef nonnull @.str.200, i32 noundef 196)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i.i unwind label %bb.j

_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i.i:  ; preds = %.noexc.i.i.i.i.i
  %i.cq = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %44)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i.i unwind label %bb.k ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i.i: ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i.i
  %i.cr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cq, ptr noundef nonnull @.str.3, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i.i unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i.i: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i.i
  %i.cs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cq, ptr noundef nonnull @.str.201, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74.i.i.i.i.i unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74.i.i.i.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i.i
  %i.ct = load ptr, ptr %43, align 8, !tbaa !169  ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !56
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !120
  %i.cx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cq, ptr noundef %i.cu, i64 noundef %i.cw)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i.i unwind label %bb.k

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74.i.i.i.i.i
  %i.cy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cx, ptr noundef nonnull @.str.2, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77.i.i.i.i.i unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77.i.i.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i.i
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %44)
          to label %bb.m unwind label %bb.j

bb.j:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77.i.i.i.i.i, %.noexc.i.i.i.i.i, %bb.i
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74.i.i.i.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i.i, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i.i, %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i.i
  %i.da = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %44)
          to label %bb.l unwind label %bb.o

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn.i.i.i.i.i = phi { ptr, i32 } [ %i.cz, %bb.j ], [ %i.da, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #20
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %43) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #20
  br label %common.resume

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #20
  %.pr104.i.i.i.i.i = load ptr, ptr %43, align 8, !tbaa !169 ; 4 uses
  %.not.i78.i.i.i.i.i = icmp eq ptr %.pr104.i.i.i.i.i, null
  br i1 %.not.i78.i.i.i.i.i, label %.preheader112.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.db = load ptr, ptr %.pr104.i.i.i.i.i, align 8, !tbaa !56 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.pr104.i.i.i.i.i, i64 16 ; 2 uses
  %i.dd = icmp eq ptr %i.db, %i.dc
  br i1 %i.dd, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.n
  %i.de = load i64, ptr %i.dc, align 8, !tbaa !57
  %i.df = add i64 %i.de, 1
  call void @_ZdlPvm(ptr noundef %i.db, i64 noundef %i.df) #39
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i.i: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr104.i.i.i.i.i, i64 noundef 32) #39
  br label %.preheader112.i.i.i.i.i

.preheader112.i.i.i.i.i:                          ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i.i, %bb.m, %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i.i, %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #20
  %.not133.i.i.i.i.i = icmp eq i64 %.sroa.68.0.copyload.i.i, 0
  br i1 %.not133.i.i.i.i.i, label %_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EfEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit, label %.lr.ph122.i.i.i.i.i.preheader

.lr.ph122.i.i.i.i.i.preheader:                    ; preds = %.preheader112.i.i.i.i.i
  %min.iters.check857 = icmp ult i64 %.sroa.68.0.copyload.i.i, 12
  %ident.check852.not = icmp ne i64 %i.az, 1
  %or.cond885.not903 = select i1 %min.iters.check857, i1 true, i1 %ident.check852.not
  %i.dg = sub i64 %46, %.sroa.46.0.copyload.i.i854
  %diff.check855 = icmp ugt i64 %i.dg, -32
  %or.cond886 = select i1 %or.cond885.not903, i1 true, i1 %diff.check855
  br i1 %or.cond886, label %.lr.ph122.i.i.i.i.i.preheader906, label %vector.ph858

vector.ph858:                                     ; preds = %.lr.ph122.i.i.i.i.i.preheader
  %n.vec859 = and i64 %.sroa.68.0.copyload.i.i, -8 ; 3 uses
  br label %vector.body860

vector.body860:                                   ; preds = %vector.body860, %vector.ph858
  %index861 = phi i64 [ 0, %vector.ph858 ], [ %index.next864, %vector.body860 ] ; 3 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.46.0.copyload.i.i, i64 %index861 ; 2 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %index861 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %wide.load862 = load <4 x float>, ptr %i.di, align 4, !tbaa !73
  %wide.load863 = load <4 x float>, ptr %i.dj, align 4, !tbaa !73
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  store <4 x float> %wide.load862, ptr %i.dh, align 4, !tbaa !73
  store <4 x float> %wide.load863, ptr %i.dk, align 4, !tbaa !73
  %index.next864 = add nuw i64 %index861, 8       ; 2 uses
  %i.dl = icmp eq i64 %index.next864, %n.vec859
  br i1 %i.dl, label %middle.block865, label %vector.body860, !llvm.loop !926

middle.block865:                                  ; preds = %vector.body860
  %cmp.n866 = icmp eq i64 %.sroa.68.0.copyload.i.i, %n.vec859
  br i1 %cmp.n866, label %_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EfEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit, label %.lr.ph122.i.i.i.i.i.preheader906

.lr.ph122.i.i.i.i.i.preheader906:                 ; preds = %.lr.ph122.i.i.i.i.i.preheader, %middle.block865
  %.060121.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph122.i.i.i.i.i.preheader ], [ %n.vec859, %middle.block865 ] ; 3 uses
  %xtraiter1136 = and i64 %.sroa.68.0.copyload.i.i, 3 ; 2 uses
  %lcmp.mod1137.not = icmp eq i64 %xtraiter1136, 0
  br i1 %lcmp.mod1137.not, label %.lr.ph122.i.i.i.i.i.prol.loopexit, label %.lr.ph122.i.i.i.i.i.prol

.lr.ph122.i.i.i.i.i.prol:                         ; preds = %.lr.ph122.i.i.i.i.i.preheader906, %.lr.ph122.i.i.i.i.i.prol
  %.060121.i.i.i.i.i.prol = phi i64 [ %i.dq, %.lr.ph122.i.i.i.i.i.prol ], [ %.060121.i.i.i.i.i.ph, %.lr.ph122.i.i.i.i.i.preheader906 ] ; 3 uses
  %prol.iter1138 = phi i64 [ %prol.iter1138.next, %.lr.ph122.i.i.i.i.i.prol ], [ 0, %.lr.ph122.i.i.i.i.i.preheader906 ]
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.46.0.copyload.i.i, i64 %.060121.i.i.i.i.i.prol
  %i.dn = mul i64 %.060121.i.i.i.i.i.prol, %i.az
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.dn
  %i.dp = load float, ptr %i.do, align 4, !tbaa !73
  store float %i.dp, ptr %i.dm, align 4, !tbaa !73
  %i.dq = add nuw i64 %.060121.i.i.i.i.i.prol, 1  ; 2 uses
  %prol.iter1138.next = add i64 %prol.iter1138, 1 ; 2 uses
  %prol.iter1138.cmp.not = icmp eq i64 %prol.iter1138.next, %xtraiter1136
  br i1 %prol.iter1138.cmp.not, label %.lr.ph122.i.i.i.i.i.prol.loopexit, label %.lr.ph122.i.i.i.i.i.prol, !llvm.loop !927

.lr.ph122.i.i.i.i.i.prol.loopexit:                ; preds = %.lr.ph122.i.i.i.i.i.prol, %.lr.ph122.i.i.i.i.i.preheader906
  %.060121.i.i.i.i.i.unr = phi i64 [ %.060121.i.i.i.i.i.ph, %.lr.ph122.i.i.i.i.i.preheader906 ], [ %i.dq, %.lr.ph122.i.i.i.i.i.prol ]
  %i.dr = sub i64 %.060121.i.i.i.i.i.ph, %.sroa.68.0.copyload.i.i
  %i.ds = icmp ugt i64 %i.dr, -4
  br i1 %i.ds, label %_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EfEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit, label %.lr.ph122.i.i.i.i.i

.lr.ph122.i.i.i.i.i:                              ; preds = %.lr.ph122.i.i.i.i.i.prol.loopexit, %.lr.ph122.i.i.i.i.i
  %.060121.i.i.i.i.i = phi i64 [ %i.em, %.lr.ph122.i.i.i.i.i ], [ %.060121.i.i.i.i.i.unr, %.lr.ph122.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %.sroa.46.0.copyload.i.i, i64 %.060121.i.i.i.i.i
  %i.du = mul i64 %.060121.i.i.i.i.i, %i.az
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.du
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !73
  store float %i.dw, ptr %i.dt, align 4, !tbaa !73
  %i.dx = add nuw i64 %.060121.i.i.i.i.i, 1       ; 2 uses
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %.sroa.46.0.copyload.i.i, i64 %i.dx
  %i.dz = mul i64 %i.dx, %i.az
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.dz
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !73
  store float %i.eb, ptr %i.dy, align 4, !tbaa !73
  %i.ec = add nuw i64 %.060121.i.i.i.i.i, 2       ; 2 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %.sroa.46.0.copyload.i.i, i64 %i.ec
  %i.ee = mul i64 %i.ec, %i.az
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.ee
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !73
  store float %i.eg, ptr %i.ed, align 4, !tbaa !73
  %i.eh = add nuw i64 %.060121.i.i.i.i.i, 3       ; 2 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %.sroa.46.0.copyload.i.i, i64 %i.eh
  %i.ej = mul i64 %i.eh, %i.az
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.ej
  %i.el = load float, ptr %i.ek, align 4, !tbaa !73
  store float %i.el, ptr %i.ei, align 4, !tbaa !73
  %i.em = add nuw i64 %.060121.i.i.i.i.i, 4       ; 2 uses
  %exitcond145.not.i.i.i.i.i.3 = icmp eq i64 %i.em, %.sroa.68.0.copyload.i.i
  br i1 %exitcond145.not.i.i.i.i.i.3, label %_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EfEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit, label %.lr.ph122.i.i.i.i.i, !llvm.loop !928

bb.o:                                             ; preds = %bb.k
  %i.en = landingpad { ptr, i32 }
          catch ptr null
  %i.eo = extractvalue { ptr, i32 } %i.en, 0
  call void @__clang_call_terminate(ptr %i.eo) #38
  unreachable

bb.p:                                             ; preds = %_ZN7xgboost6common4SpanIKfLm18446744073709551615EEC2EPS2_m.exit.i
  br i1 %i.bh, label %.preheader.i.i23.i.i.i, label %bb.q

.preheader.i.i23.i.i.i:                           ; preds = %bb.p
  %.not132.i.i.i.i.i = icmp eq i64 %.sroa.68.0.copyload.i.i, 0
  br i1 %.not132.i.i.i.i.i, label %_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EfEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit, label %.lr.ph125.i.i.i.i.i.preheader

.lr.ph125.i.i.i.i.i.preheader:                    ; preds = %.preheader.i.i23.i.i.i
  %xtraiter1130 = and i64 %.sroa.68.0.copyload.i.i, 3 ; 3 uses
  %i.ep = icmp ult i64 %.sroa.68.0.copyload.i.i, 4
  br i1 %i.ep, label %.lr.ph125.i.i.i.i.i.epil.preheader, label %.lr.ph125.i.i.i.i.i.preheader.new

.lr.ph125.i.i.i.i.i.preheader.new:                ; preds = %.lr.ph125.i.i.i.i.i.preheader
  %unroll_iter1134 = and i64 %.sroa.68.0.copyload.i.i, -4
  br label %.lr.ph125.i.i.i.i.i

.lr.ph125.i.i.i.i.i:                              ; preds = %.lr.ph125.i.i.i.i.i, %.lr.ph125.i.i.i.i.i.preheader.new
  %.0124.i.i.i.i.i = phi i64 [ 0, %.lr.ph125.i.i.i.i.i.preheader.new ], [ %i.fn, %.lr.ph125.i.i.i.i.i ] ; 6 uses
  %niter1135 = phi i64 [ 0, %.lr.ph125.i.i.i.i.i.preheader.new ], [ %niter1135.next.3, %.lr.ph125.i.i.i.i.i ]
  %i.eq = mul i64 %.0124.i.i.i.i.i, %.sroa.05.0.copyload.i.i
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %.sroa.57.0.copyload.i.i, i64 %i.eq
  %i.es = mul i64 %.0124.i.i.i.i.i, %i.az
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.es
  %i.eu = load float, ptr %i.et, align 4, !tbaa !73
  store float %i.eu, ptr %i.er, align 4, !tbaa !73
  %i.ev = or disjoint i64 %.0124.i.i.i.i.i, 1     ; 2 uses
  %i.ew = mul i64 %i.ev, %.sroa.05.0.copyload.i.i
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %.sroa.57.0.copyload.i.i, i64 %i.ew
  %i.ey = mul i64 %i.ev, %i.az
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.ey
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !73
  store float %i.fa, ptr %i.ex, align 4, !tbaa !73
  %i.fb = or disjoint i64 %.0124.i.i.i.i.i, 2     ; 2 uses
  %i.fc = mul i64 %i.fb, %.sroa.05.0.copyload.i.i
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.57.0.copyload.i.i, i64 %i.fc
  %i.fe = mul i64 %i.fb, %i.az
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.fe
  %i.fg = load float, ptr %i.ff, align 4, !tbaa !73
  store float %i.fg, ptr %i.fd, align 4, !tbaa !73
  %i.fh = or disjoint i64 %.0124.i.i.i.i.i, 3     ; 2 uses
  %i.fi = mul i64 %i.fh, %.sroa.05.0.copyload.i.i
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.57.0.copyload.i.i, i64 %i.fi
  %i.fk = mul i64 %i.fh, %i.az
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.fk
  %i.fm = load float, ptr %i.fl, align 4, !tbaa !73
  store float %i.fm, ptr %i.fj, align 4, !tbaa !73
  %i.fn = add nuw i64 %.0124.i.i.i.i.i, 4         ; 2 uses
  %niter1135.next.3 = add nuw i64 %niter1135, 4   ; 2 uses
  %niter1135.ncmp.3 = icmp eq i64 %niter1135.next.3, %unroll_iter1134
  br i1 %niter1135.ncmp.3, label %_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EfEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit.loopexit908.unr-lcssa, label %.lr.ph125.i.i.i.i.i, !llvm.loop !929

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  store i32 %i.bf, ptr %i.ao, align 4, !tbaa !65, !noalias !1068
  store i32 1, ptr %i.ap, align 4, !tbaa !65, !noalias !1068
  %.not.i.i.i6.i.i.i = icmp slt i32 %i.bf, 1
  br i1 %.not.i.i.i6.i.i.i, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i8.i.i.i, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i7.i.i.i

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i7.i.i.i: ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  br label %.preheader107.i.i.i.i.i

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i8.i.i.i: ; preds = %bb.q
  call void @_ZN4dmlc14LogCheckFormatIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %41, ptr noundef nonnull align 4 dereferenceable(4) %i.ao, ptr noundef nonnull align 4 dereferenceable(4) %i.ap)
  %.pr.i.i9.i.i.i = load ptr, ptr %41, align 8, !tbaa !169
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  %.not.i.i10.i.i.i = icmp eq ptr %.pr.i.i9.i.i.i, null
  br i1 %.not.i.i10.i.i.i, label %.preheader107.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i8.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #20
  %i.fo = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %42)
          to label %.noexc.i.i12.i.i.i unwind label %bb.s

.noexc.i.i12.i.i.i:                               ; preds = %bb.r
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.fo, ptr noundef nonnull @.str.200, i32 noundef 196)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i13.i.i.i unwind label %bb.s

_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i13.i.i.i: ; preds = %.noexc.i.i12.i.i.i
  %i.fp = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %42)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i14.i.i.i unwind label %bb.t ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i14.i.i.i: ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i13.i.i.i
  %i.fq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fp, ptr noundef nonnull @.str.3, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i15.i.i.i unwind label %bb.t ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i15.i.i.i: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i14.i.i.i
  %i.fr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fp, ptr noundef nonnull @.str.201, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74.i.i16.i.i.i unwind label %bb.t ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74.i.i16.i.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i15.i.i.i
  %i.fs = load ptr, ptr %41, align 8, !tbaa !169  ; 2 uses
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !56
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !120
  %i.fw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fp, ptr noundef %i.ft, i64 noundef %i.fv)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i17.i.i.i unwind label %bb.t

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i17.i.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74.i.i16.i.i.i
  %i.fx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fw, ptr noundef nonnull @.str.2, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77.i.i18.i.i.i unwind label %bb.t ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77.i.i18.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i17.i.i.i
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %42)
          to label %bb.v unwind label %bb.s

bb.s:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77.i.i18.i.i.i, %.noexc.i.i12.i.i.i, %bb.r
  %i.fy = landingpad { ptr, i32 }
          cleanup
end_hunk_0
begin_hunk_1_@_ZN7xgboost13DispatchDTypeIZNS_13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EjEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdESA_EUlSD_E_EEDaNS_21ArrayInterfaceHandler4TypeESD_:bb.a
.lr.ph125.i.i.i.i.i251:                           ; preds = %.lr.ph125.i.i.i.i.i251, %.lr.ph125.i.i.i.i.i251.preheader.new
  %.0124.i.i.i.i.i252 = phi i64 [ 0, %.lr.ph125.i.i.i.i.i251.preheader.new ], [ %i.adv, %.lr.ph125.i.i.i.i.i251 ] ; 6 uses
  %niter1102 = phi i64 [ 0, %.lr.ph125.i.i.i.i.i251.preheader.new ], [ %niter1102.next.3, %.lr.ph125.i.i.i.i.i251 ]
  %i.acu = mul i64 %.0124.i.i.i.i.i252, %.sroa.05.0.copyload.i.i213
  %i.acv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.57.0.copyload.i.i219, i64 %i.acu
  %i.acw = mul i64 %.0124.i.i.i.i.i252, %i.yr
  %i.acx = getelementptr inbounds nuw [2 x i8], ptr %i.yp, i64 %i.acw
  %i.acy = load i16, ptr %i.acx, align 2, !tbaa !155
  %i.acz = sext i16 %i.acy to i32
  store i32 %i.acz, ptr %i.acv, align 4, !tbaa !65
  %i.ada = or disjoint i64 %.0124.i.i.i.i.i252, 1 ; 2 uses
  %i.adb = mul i64 %i.ada, %.sroa.05.0.copyload.i.i213
  %i.adc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.57.0.copyload.i.i219, i64 %i.adb
  %i.add = mul i64 %i.ada, %i.yr
  %i.ade = getelementptr inbounds nuw [2 x i8], ptr %i.yp, i64 %i.add
  %i.adf = load i16, ptr %i.ade, align 2, !tbaa !155
  %i.adg = sext i16 %i.adf to i32
  store i32 %i.adg, ptr %i.adc, align 4, !tbaa !65
  %i.adh = or disjoint i64 %.0124.i.i.i.i.i252, 2 ; 2 uses
  %i.adi = mul i64 %i.adh, %.sroa.05.0.copyload.i.i213
  %i.adj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.57.0.copyload.i.i219, i64 %i.adi
  %i.adk = mul i64 %i.adh, %i.yr
  %i.adl = getelementptr inbounds nuw [2 x i8], ptr %i.yp, i64 %i.adk
  %i.adm = load i16, ptr %i.adl, align 2, !tbaa !155
  %i.adn = sext i16 %i.adm to i32
  store i32 %i.adn, ptr %i.adj, align 4, !tbaa !65
  %i.ado = or disjoint i64 %.0124.i.i.i.i.i252, 3 ; 2 uses
  %i.adp = mul i64 %i.ado, %.sroa.05.0.copyload.i.i213
  %i.adq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.57.0.copyload.i.i219, i64 %i.adp
  %i.adr = mul i64 %i.ado, %i.yr
  %i.ads = getelementptr inbounds nuw [2 x i8], ptr %i.yp, i64 %i.adr
  %i.adt = load i16, ptr %i.ads, align 2, !tbaa !155
  %i.adu = sext i16 %i.adt to i32
  store i32 %i.adu, ptr %i.adq, align 4, !tbaa !65
  %i.adv = add nuw i64 %.0124.i.i.i.i.i252, 4     ; 2 uses
  %niter1102.next.3 = add nuw i64 %niter1102, 4   ; 2 uses
  %niter1102.ncmp.3 = icmp eq i64 %niter1102.next.3, %unroll_iter1101
  br i1 %niter1102.ncmp.3, label %_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EjEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit.loopexit951.unr-lcssa, label %.lr.ph125.i.i.i.i.i251, !llvm.loop !1731

bb.cs:                                            ; preds = %bb.cr
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store i32 %i.yx, ptr %i.y, align 4, !tbaa !65, !noalias !1846
  store i32 1, ptr %i.z, align 4, !tbaa !65, !noalias !1846
  %.not.i.i.i6.i.i.i224 = icmp slt i32 %i.yx, 1
  br i1 %.not.i.i.i6.i.i.i224, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i8.i.i.i231, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i7.i.i.i225

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i7.i.i.i225: ; preds = %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %.preheader107.i.i.i.i.i226

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i8.i.i.i231: ; preds = %bb.cs
  call void @_ZN4dmlc14LogCheckFormatIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %25, ptr noundef nonnull align 4 dereferenceable(4) %i.y, ptr noundef nonnull align 4 dereferenceable(4) %i.z)
  %.pr.i.i9.i.i.i232 = load ptr, ptr %25, align 8, !tbaa !169
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  %.not.i.i10.i.i.i233 = icmp eq ptr %.pr.i.i9.i.i.i232, null
  br i1 %.not.i.i10.i.i.i233, label %.preheader107.i.i.i.i.i226, label %bb.ct

bb.ct:                                            ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i8.i.i.i231
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #20
  %i.adw = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %26)
          to label %.noexc.i.i12.i.i.i237 unwind label %bb.cu

.noexc.i.i12.i.i.i237:                            ; preds = %bb.ct
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.adw, ptr noundef nonnull @.str.200, i32 noundef 196)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i13.i.i.i238 unwind label %bb.cu

_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i13.i.i.i238: ; preds = %.noexc.i.i12.i.i.i237
  %i.adx = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %26)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i14.i.i.i239 unwind label %bb.cv ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i14.i.i.i239: ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i13.i.i.i238
  %i.ady = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.adx, ptr noundef nonnull @.str.3, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i15.i.i.i240 unwind label %bb.cv ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i15.i.i.i240: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i14.i.i.i239
  %i.adz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.adx, ptr noundef nonnull @.str.201, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74.i.i16.i.i.i241 unwind label %bb.cv ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74.i.i16.i.i.i241: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i15.i.i.i240
  %i.aea = load ptr, ptr %25, align 8, !tbaa !169 ; 2 uses
  %i.aeb = load ptr, ptr %i.aea, align 8, !tbaa !56
  %i.aec = getelementptr inbounds nuw i8, ptr %i.aea, i64 8
  %i.aed = load i64, ptr %i.aec, align 8, !tbaa !120
  %i.aee = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.adx, ptr noundef %i.aeb, i64 noundef %i.aed)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i17.i.i.i242 unwind label %bb.cv

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i17.i.i.i242: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74.i.i16.i.i.i241
  %i.aef = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aee, ptr noundef nonnull @.str.2, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77.i.i18.i.i.i243 unwind label %bb.cv ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77.i.i18.i.i.i243: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i17.i.i.i242
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %26)
          to label %bb.cx unwind label %bb.cu

bb.cu:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77.i.i18.i.i.i243, %.noexc.i.i12.i.i.i237, %bb.ct
  %i.aeg = landingpad { ptr, i32 }
          cleanup
  br label %bb.cw

bb.cv:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i17.i.i.i242, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74.i.i16.i.i.i241, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i15.i.i.i240, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i14.i.i.i239, %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i13.i.i.i238
  %i.aeh = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %26)
          to label %bb.cw unwind label %bb.cz

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %.pn.i.i11.i.i.i234 = phi { ptr, i32 } [ %i.aeg, %bb.cu ], [ %i.aeh, %bb.cv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #20
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %25) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #20
  br label %common.resume

bb.cx:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77.i.i18.i.i.i243
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #20
  %.pr99.i.i.i.i.i244 = load ptr, ptr %25, align 8, !tbaa !169 ; 4 uses
  %.not.i78.i.i19.i.i.i245 = icmp eq ptr %.pr99.i.i.i.i.i244, null
  br i1 %.not.i78.i.i19.i.i.i245, label %.preheader107.i.i.i.i.i226, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.aei = load ptr, ptr %.pr99.i.i.i.i.i244, align 8, !tbaa !56 ; 2 uses
  %i.aej = getelementptr inbounds nuw i8, ptr %.pr99.i.i.i.i.i244, i64 16 ; 2 uses
  %i.aek = icmp eq ptr %i.aei, %i.aej
  br i1 %i.aek, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i21.i.i.i247, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20.i.i.i246

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20.i.i.i246: ; preds = %bb.cy
  %i.ael = load i64, ptr %i.aej, align 8, !tbaa !57
  %i.aem = add i64 %i.ael, 1
  call void @_ZdlPvm(ptr noundef %i.aei, i64 noundef %i.aem) #39
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i21.i.i.i247

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i21.i.i.i247: ; preds = %bb.cy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20.i.i.i246
  call void @_ZdlPvm(ptr noundef nonnull %.pr99.i.i.i.i.i244, i64 noundef 32) #39
  br label %.preheader107.i.i.i.i.i226

.preheader107.i.i.i.i.i226:                       ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i21.i.i.i247, %bb.cx, %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i8.i.i.i231, %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i7.i.i.i225
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #20
  %.not128.i.i.i.i.i227 = icmp eq i64 %.sroa.68.0.copyload.i.i221, 0
  br i1 %.not128.i.i.i.i.i227, label %_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EjEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit, label %.lr.ph117.i.i.i.i.i228.preheader

.lr.ph117.i.i.i.i.i228.preheader:                 ; preds = %.preheader107.i.i.i.i.i226
  %xtraiter1091 = and i64 %.sroa.68.0.copyload.i.i221, 3 ; 3 uses
  %i.aen = icmp ult i64 %.sroa.68.0.copyload.i.i221, 4
  br i1 %i.aen, label %.lr.ph117.i.i.i.i.i228.epil.preheader, label %.lr.ph117.i.i.i.i.i228.preheader.new

.lr.ph117.i.i.i.i.i228.preheader.new:             ; preds = %.lr.ph117.i.i.i.i.i228.preheader
  %unroll_iter1095 = and i64 %.sroa.68.0.copyload.i.i221, -4
  br label %.lr.ph117.i.i.i.i.i228

.lr.ph117.i.i.i.i.i228:                           ; preds = %.lr.ph117.i.i.i.i.i228, %.lr.ph117.i.i.i.i.i228.preheader.new
  %.060116.i.i.i.i.i229 = phi i64 [ 0, %.lr.ph117.i.i.i.i.i228.preheader.new ], [ %i.afp, %.lr.ph117.i.i.i.i.i228 ] ; 6 uses
  %niter1096 = phi i64 [ 0, %.lr.ph117.i.i.i.i.i228.preheader.new ], [ %niter1096.next.3, %.lr.ph117.i.i.i.i.i228 ]
  %i.aeo = mul i64 %.060116.i.i.i.i.i229, %.sroa.05.0.copyload.i.i213
  %i.aep = getelementptr inbounds nuw [4 x i8], ptr %.sroa.57.0.copyload.i.i219, i64 %i.aeo
  %i.aeq = mul i64 %.060116.i.i.i.i.i229, %i.yr
  %i.aer = getelementptr inbounds nuw [2 x i8], ptr %i.yp, i64 %i.aeq
  %i.aes = load i16, ptr %i.aer, align 2, !tbaa !155
  %i.aet = sext i16 %i.aes to i32
  store i32 %i.aet, ptr %i.aep, align 4, !tbaa !65
  %i.aeu = or disjoint i64 %.060116.i.i.i.i.i229, 1 ; 2 uses
  %i.aev = mul i64 %i.aeu, %.sroa.05.0.copyload.i.i213
  %i.aew = getelementptr inbounds nuw [4 x i8], ptr %.sroa.57.0.copyload.i.i219, i64 %i.aev
  %i.aex = mul i64 %i.aeu, %i.yr
  %i.aey = getelementptr inbounds nuw [2 x i8], ptr %i.yp, i64 %i.aex
  %i.aez = load i16, ptr %i.aey, align 2, !tbaa !155
  %i.afa = sext i16 %i.aez to i32
  store i32 %i.afa, ptr %i.aew, align 4, !tbaa !65
  %i.afb = or disjoint i64 %.060116.i.i.i.i.i229, 2 ; 2 uses
  %i.afc = mul i64 %i.afb, %.sroa.05.0.copyload.i.i213
  %i.afd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.57.0.copyload.i.i219, i64 %i.afc
  %i.afe = mul i64 %i.afb, %i.yr
  %i.aff = getelementptr inbounds nuw [2 x i8], ptr %i.yp, i64 %i.afe
  %i.afg = load i16, ptr %i.aff, align 2, !tbaa !155
  %i.afh = sext i16 %i.afg to i32
  store i32 %i.afh, ptr %i.afd, align 4, !tbaa !65
  %i.afi = or disjoint i64 %.060116.i.i.i.i.i229, 3 ; 2 uses
  %i.afj = mul i64 %i.afi, %.sroa.05.0.copyload.i.i213
  %i.afk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.57.0.copyload.i.i219, i64 %i.afj
  %i.afl = mul i64 %i.afi, %i.yr
  %i.afm = getelementptr inbounds nuw [2 x i8], ptr %i.yp, i64 %i.afl
  %i.afn = load i16, ptr %i.afm, align 2, !tbaa !155
  %i.afo = sext i16 %i.afn to i32
  store i32 %i.afo, ptr %i.afk, align 4, !tbaa !65
  %i.afp = add nuw i64 %.060116.i.i.i.i.i229, 4   ; 2 uses
  %niter1096.next.3 = add nuw i64 %niter1096, 4   ; 2 uses
  %niter1096.ncmp.3 = icmp eq i64 %niter1096.next.3, %unroll_iter1095
  br i1 %niter1096.ncmp.3, label %_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EjEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit.loopexit952.unr-lcssa, label %.lr.ph117.i.i.i.i.i228, !llvm.loop !1734

bb.cz:                                            ; preds = %bb.cv
  %i.afq = landingpad { ptr, i32 }
          catch ptr null
  %i.afr = extractvalue { ptr, i32 } %i.afq, 0
  call void @__clang_call_terminate(ptr %i.afr) #38
  unreachable

bb.da:                                            ; preds = %bb.a
  %i.afs = getelementptr inbounds nuw i8, ptr %.8.val, i64 32
  %i.aft = load ptr, ptr %i.afs, align 8, !tbaa !149 ; 24 uses
  %46 = ptrtoaddr ptr %i.aft to i64               ; 2 uses
  %.not.i282 = icmp eq ptr %i.aft, null
  br i1 %.not.i282, label %bb.db, label %_ZN7xgboost6common4SpanIKiLm18446744073709551615EEC2EPS2_m.exit.i, !prof !71

bb.db:                                            ; preds = %bb.da
  tail call void @_ZSt9terminatev() #38
  unreachable

_ZN7xgboost6common4SpanIKiLm18446744073709551615EEC2EPS2_m.exit.i: ; preds = %bb.da
  %i.afu = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.afv = load i64, ptr %i.afu, align 8, !tbaa !74 ; 22 uses
  %i.afw = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %i.afx = load ptr, ptr %i.afw, align 8, !tbaa !1831, !nonnull !111, !align !121 ; 5 uses
  %.sroa.05.0.copyload.i.i283 = load i64, ptr %i.afx, align 8, !tbaa !57 ; 11 uses
  %.sroa.3.0..sroa_idx.i.i284 = getelementptr inbounds nuw i8, ptr %i.afx, i64 16
  %.sroa.3.0.copyload.i.i285 = load i64, ptr %.sroa.3.0..sroa_idx.i.i284, align 8, !tbaa !74
  %.sroa.46.0..sroa_idx.i.i286 = getelementptr inbounds nuw i8, ptr %i.afx, i64 24
  %.sroa.46.0.copyload.i.i287 = load ptr, ptr %.sroa.46.0..sroa_idx.i.i286, align 8, !tbaa !97 ; 13 uses
  %.sroa.46.0.copyload.i.i287601 = ptrtoaddr ptr %.sroa.46.0.copyload.i.i287 to i64 ; 2 uses
  %.sroa.57.0..sroa_idx.i.i288 = getelementptr inbounds nuw i8, ptr %i.afx, i64 32
  %.sroa.57.0.copyload.i.i289 = load ptr, ptr %.sroa.57.0..sroa_idx.i.i288, align 8, !tbaa !97 ; 10 uses
  %.sroa.68.0..sroa_idx.i.i290 = getelementptr inbounds nuw i8, ptr %i.afx, i64 40
  %.sroa.68.0.copyload.i.i291 = load i64, ptr %.sroa.68.0..sroa_idx.i.i290, align 8, !tbaa !74 ; 23 uses
  %i.afy = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.afz = load ptr, ptr %i.afy, align 8, !tbaa !1832, !nonnull !111, !align !121
  %i.aga = load ptr, ptr %i.afz, align 8, !tbaa !274
  %i.agb = tail call noundef i32 @_ZNK7xgboost7Context7ThreadsEv(ptr noundef nonnull align 8 dereferenceable(5084) %i.aga) ; 5 uses
  %i.agc = icmp eq i64 %.sroa.3.0.copyload.i.i285, %.sroa.68.0.copyload.i.i291
  %.not4.i.le.i.i.i.i.i292 = icmp eq i64 %.sroa.05.0.copyload.i.i283, 1
  %or.cond.i.i.i.i293 = select i1 %i.agc, i1 true, i1 %.not4.i.le.i.i.i.i.i292
  %i.agd = icmp eq i32 %i.agb, 1                  ; 2 uses
  br i1 %or.cond.i.i.i.i293, label %bb.dc, label %bb.dl

bb.dc:                                            ; preds = %_ZN7xgboost6common4SpanIKiLm18446744073709551615EEC2EPS2_m.exit.i
  br i1 %i.agd, label %.preheader.i.i.i.i.i347, label %bb.dd

.preheader.i.i.i.i.i347:                          ; preds = %bb.dc
  %.not137.i.i.i.i.i348 = icmp eq i64 %.sroa.68.0.copyload.i.i291, 0
  br i1 %.not137.i.i.i.i.i348, label %_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EjEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit, label %.lr.ph130.i.i.i.i.i349.preheader

.lr.ph130.i.i.i.i.i349.preheader:                 ; preds = %.preheader.i.i.i.i.i347
  %min.iters.check620 = icmp ult i64 %.sroa.68.0.copyload.i.i291, 12
  %ident.check616.not = icmp ne i64 %i.afv, 1
  %or.cond906.not925 = select i1 %min.iters.check620, i1 true, i1 %ident.check616.not
  %i.age = sub i64 %46, %.sroa.46.0.copyload.i.i287601
  %diff.check618 = icmp ugt i64 %i.age, -32
  %or.cond907 = select i1 %or.cond906.not925, i1 true, i1 %diff.check618
  br i1 %or.cond907, label %.lr.ph130.i.i.i.i.i349.preheader953, label %vector.ph621

vector.ph621:                                     ; preds = %.lr.ph130.i.i.i.i.i349.preheader
  %n.vec622 = and i64 %.sroa.68.0.copyload.i.i291, -8 ; 3 uses
  br label %vector.body623

vector.body623:                                   ; preds = %vector.body623, %vector.ph621
  %index624 = phi i64 [ 0, %vector.ph621 ], [ %index.next627, %vector.body623 ] ; 3 uses
  %i.agf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.46.0.copyload.i.i287, i64 %index624 ; 2 uses
  %i.agg = getelementptr inbounds nuw [4 x i8], ptr %i.aft, i64 %index624 ; 2 uses
  %i.agh = getelementptr inbounds nuw i8, ptr %i.agg, i64 16
  %wide.load625.a = load <4 x i32>, ptr %i.agg, align 4, !tbaa !65
  %wide.load626 = load <4 x i32>, ptr %i.agh, align 4, !tbaa !65
  %i.agi = getelementptr inbounds nuw i8, ptr %i.agf, i64 16
  store <4 x i32> %wide.load625.a, ptr %i.agf, align 4, !tbaa !65
  store <4 x i32> %wide.load626, ptr %i.agi, align 4, !tbaa !65
  %index.next627 = add nuw i64 %index624, 8       ; 2 uses
  %i.agj = icmp eq i64 %index.next627, %n.vec622
  br i1 %i.agj, label %middle.block628, label %vector.body623, !llvm.loop !1735

middle.block628:                                  ; preds = %vector.body623
  %cmp.n629 = icmp eq i64 %.sroa.68.0.copyload.i.i291, %n.vec622
  br i1 %cmp.n629, label %_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EjEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit, label %.lr.ph130.i.i.i.i.i349.preheader953

.lr.ph130.i.i.i.i.i349.preheader953:              ; preds = %.lr.ph130.i.i.i.i.i349.preheader, %middle.block628
  %.0129.i.i.i.i.i350.ph = phi i64 [ 0, %.lr.ph130.i.i.i.i.i349.preheader ], [ %n.vec622, %middle.block628 ] ; 3 uses
  %xtraiter1088 = and i64 %.sroa.68.0.copyload.i.i291, 3 ; 2 uses
  %lcmp.mod1089.not.a = icmp eq i64 %xtraiter1088, 0
  br i1 %lcmp.mod1089.not.a, label %.lr.ph130.i.i.i.i.i349.prol.loopexit, label %.lr.ph130.i.i.i.i.i349.prol

.lr.ph130.i.i.i.i.i349.prol:                      ; preds = %.lr.ph130.i.i.i.i.i349.preheader953, %.lr.ph130.i.i.i.i.i349.prol
  %.0129.i.i.i.i.i350.prol = phi i64 [ %i.ago, %.lr.ph130.i.i.i.i.i349.prol ], [ %.0129.i.i.i.i.i350.ph, %.lr.ph130.i.i.i.i.i349.preheader953 ] ; 3 uses
  %prol.iter1090 = phi i64 [ %prol.iter1090.next, %.lr.ph130.i.i.i.i.i349.prol ], [ 0, %.lr.ph130.i.i.i.i.i349.preheader953 ]
  %i.agk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.46.0.copyload.i.i287, i64 %.0129.i.i.i.i.i350.prol
  %i.agl = mul i64 %.0129.i.i.i.i.i350.prol, %i.afv
  %i.agm = getelementptr inbounds nuw [4 x i8], ptr %i.aft, i64 %i.agl
  %i.agn = load i32, ptr %i.agm, align 4, !tbaa !65
  store i32 %i.agn, ptr %i.agk, align 4, !tbaa !65
  %i.ago = add nuw i64 %.0129.i.i.i.i.i350.prol, 1 ; 2 uses
  %prol.iter1090.next = add i64 %prol.iter1090, 1 ; 2 uses
  %prol.iter1090.cmp.not = icmp eq i64 %prol.iter1090.next, %xtraiter1088
  br i1 %prol.iter1090.cmp.not, label %.lr.ph130.i.i.i.i.i349.prol.loopexit, label %.lr.ph130.i.i.i.i.i349.prol, !llvm.loop !1736

.lr.ph130.i.i.i.i.i349.prol.loopexit:             ; preds = %.lr.ph130.i.i.i.i.i349.prol, %.lr.ph130.i.i.i.i.i349.preheader953
  %.0129.i.i.i.i.i350.unr = phi i64 [ %.0129.i.i.i.i.i350.ph, %.lr.ph130.i.i.i.i.i349.preheader953 ], [ %i.ago, %.lr.ph130.i.i.i.i.i349.prol ]
  %i.agp = sub i64 %.0129.i.i.i.i.i350.ph, %.sroa.68.0.copyload.i.i291
  %i.agq = icmp ugt i64 %i.agp, -4
  br i1 %i.agq, label %_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EjEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit, label %.lr.ph130.i.i.i.i.i349

.lr.ph130.i.i.i.i.i349:                           ; preds = %.lr.ph130.i.i.i.i.i349.prol.loopexit, %.lr.ph130.i.i.i.i.i349
  %.0129.i.i.i.i.i350 = phi i64 [ %i.ahk, %.lr.ph130.i.i.i.i.i349 ], [ %.0129.i.i.i.i.i350.unr, %.lr.ph130.i.i.i.i.i349.prol.loopexit ] ; 6 uses
  %i.agr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.46.0.copyload.i.i287, i64 %.0129.i.i.i.i.i350
  %i.ags = mul i64 %.0129.i.i.i.i.i350, %i.afv
  %i.agt = getelementptr inbounds nuw [4 x i8], ptr %i.aft, i64 %i.ags
  %i.agu = load i32, ptr %i.agt, align 4, !tbaa !65
  store i32 %i.agu, ptr %i.agr, align 4, !tbaa !65
  %i.agv = add nuw i64 %.0129.i.i.i.i.i350, 1     ; 2 uses
  %i.agw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.46.0.copyload.i.i287, i64 %i.agv
  %i.agx = mul i64 %i.agv, %i.afv
  %i.agy = getelementptr inbounds nuw [4 x i8], ptr %i.aft, i64 %i.agx
  %i.agz = load i32, ptr %i.agy, align 4, !tbaa !65
  store i32 %i.agz, ptr %i.agw, align 4, !tbaa !65
  %i.aha = add nuw i64 %.0129.i.i.i.i.i350, 2     ; 2 uses
  %i.ahb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.46.0.copyload.i.i287, i64 %i.aha
  %i.ahc = mul i64 %i.aha, %i.afv
  %i.ahd = getelementptr inbounds nuw [4 x i8], ptr %i.aft, i64 %i.ahc
  %i.ahe = load i32, ptr %i.ahd, align 4, !tbaa !65
  store i32 %i.ahe, ptr %i.ahb, align 4, !tbaa !65
  %i.ahf = add nuw i64 %.0129.i.i.i.i.i350, 3     ; 2 uses
  %i.ahg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.46.0.copyload.i.i287, i64 %i.ahf
  %i.ahh = mul i64 %i.ahf, %i.afv
  %i.ahi = getelementptr inbounds nuw [4 x i8], ptr %i.aft, i64 %i.ahh
  %i.ahj = load i32, ptr %i.ahi, align 4, !tbaa !65
  store i32 %i.ahj, ptr %i.ahg, align 4, !tbaa !65
  %i.ahk = add nuw i64 %.0129.i.i.i.i.i350, 4     ; 2 uses
  %exitcond149.not.i.i.i.i.i351.3 = icmp eq i64 %i.ahk, %.sroa.68.0.copyload.i.i291
  br i1 %exitcond149.not.i.i.i.i.i351.3, label %_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EjEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit, label %.lr.ph130.i.i.i.i.i349, !llvm.loop !1737

bb.dd:                                            ; preds = %bb.dc
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  store i32 %i.agb, ptr %i.w, align 4, !tbaa !65, !noalias !1847
  store i32 1, ptr %i.x, align 4, !tbaa !65, !noalias !1847
  %.not.i.i.i.i.i.i324 = icmp slt i32 %i.agb, 1
  br i1 %.not.i.i.i.i.i.i324, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i.i331, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i.i.i.i325

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i.i.i.i325: ; preds = %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %.preheader112.i.i.i.i.i326

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i.i331: ; preds = %bb.dd
  call void @_ZN4dmlc14LogCheckFormatIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %23, ptr noundef nonnull align 4 dereferenceable(4) %i.w, ptr noundef nonnull align 4 dereferenceable(4) %i.x)
  %.pr.i.i.i.i.i332 = load ptr, ptr %23, align 8, !tbaa !169
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  %.not.i.i.i.i.i333 = icmp eq ptr %.pr.i.i.i.i.i332, null
  br i1 %.not.i.i.i.i.i333, label %.preheader112.i.i.i.i.i326, label %bb.de

bb.de:                                            ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i.i331
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #20
  %i.ahl = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %24)
          to label %.noexc.i.i.i.i.i335 unwind label %bb.df

.noexc.i.i.i.i.i335:                              ; preds = %bb.de
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.ahl, ptr noundef nonnull @.str.200, i32 noundef 196)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i.i336 unwind label %bb.df

_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i.i336: ; preds = %.noexc.i.i.i.i.i335
  %i.ahm = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %24)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i.i337 unwind label %bb.dg ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i.i337: ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i.i336
  %i.ahn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ahm, ptr noundef nonnull @.str.3, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i.i338 unwind label %bb.dg ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i.i338: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i.i337
  %i.aho = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ahm, ptr noundef nonnull @.str.201, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74.i.i.i.i.i339 unwind label %bb.dg ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74.i.i.i.i.i339: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i.i338
  %i.ahp = load ptr, ptr %23, align 8, !tbaa !169 ; 2 uses
  %i.ahq = load ptr, ptr %i.ahp, align 8, !tbaa !56
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.ahp, i64 8
  %i.ahs = load i64, ptr %i.ahr, align 8, !tbaa !120
  %i.aht = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ahm, ptr noundef %i.ahq, i64 noundef %i.ahs)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i.i340 unwind label %bb.dg

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i.i340: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74.i.i.i.i.i339
  %i.ahu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aht, ptr noundef nonnull @.str.2, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77.i.i.i.i.i341 unwind label %bb.dg ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77.i.i.i.i.i341: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i.i340
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %24)
          to label %bb.di unwind label %bb.df

bb.df:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77.i.i.i.i.i341, %.noexc.i.i.i.i.i335, %bb.de
  %i.ahv = landingpad { ptr, i32 }
          cleanup
  br label %bb.dh

bb.dg:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i.i340, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74.i.i.i.i.i339, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i.i338, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i.i337, %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i.i336
  %i.ahw = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %24)
          to label %bb.dh unwind label %bb.dk

bb.dh:                                            ; preds = %bb.dg, %bb.df
  %.pn.i.i.i.i.i334 = phi { ptr, i32 } [ %i.ahv, %bb.df ], [ %i.ahw, %bb.dg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #20
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %23) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #20
  br label %common.resume

bb.di:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77.i.i.i.i.i341
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #20
  %.pr104.i.i.i.i.i342 = load ptr, ptr %23, align 8, !tbaa !169 ; 4 uses
  %.not.i78.i.i.i.i.i343 = icmp eq ptr %.pr104.i.i.i.i.i342, null
  br i1 %.not.i78.i.i.i.i.i343, label %.preheader112.i.i.i.i.i326, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.ahx = load ptr, ptr %.pr104.i.i.i.i.i342, align 8, !tbaa !56 ; 2 uses
  %i.ahy = getelementptr inbounds nuw i8, ptr %.pr104.i.i.i.i.i342, i64 16 ; 2 uses
  %i.ahz = icmp eq ptr %i.ahx, %i.ahy
  br i1 %i.ahz, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i.i345, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i344

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i344: ; preds = %bb.dj
  %i.aia = load i64, ptr %i.ahy, align 8, !tbaa !57
  %i.aib = add i64 %i.aia, 1
  call void @_ZdlPvm(ptr noundef %i.ahx, i64 noundef %i.aib) #39
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i.i345

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i.i345: ; preds = %bb.dj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i344
  call void @_ZdlPvm(ptr noundef nonnull %.pr104.i.i.i.i.i342, i64 noundef 32) #39
  br label %.preheader112.i.i.i.i.i326

.preheader112.i.i.i.i.i326:                       ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i.i345, %bb.di, %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i.i331, %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i.i.i.i325
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #20
  %.not133.i.i.i.i.i327 = icmp eq i64 %.sroa.68.0.copyload.i.i291, 0
  br i1 %.not133.i.i.i.i.i327, label %_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EjEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit, label %.lr.ph122.i.i.i.i.i328.preheader

.lr.ph122.i.i.i.i.i328.preheader:                 ; preds = %.preheader112.i.i.i.i.i326
  %min.iters.check604 = icmp ult i64 %.sroa.68.0.copyload.i.i291, 12
  %ident.check599.not = icmp ne i64 %i.afv, 1
  %or.cond908.not924 = select i1 %min.iters.check604, i1 true, i1 %ident.check599.not
  %i.aic = sub i64 %46, %.sroa.46.0.copyload.i.i287601
  %diff.check602 = icmp ugt i64 %i.aic, -32
  %or.cond909 = select i1 %or.cond908.not924, i1 true, i1 %diff.check602
  br i1 %or.cond909, label %.lr.ph122.i.i.i.i.i328.preheader955, label %vector.ph605

vector.ph605:                                     ; preds = %.lr.ph122.i.i.i.i.i328.preheader
  %n.vec606 = and i64 %.sroa.68.0.copyload.i.i291, -8 ; 3 uses
  br label %vector.body607

vector.body607:                                   ; preds = %vector.body607, %vector.ph605
  %index608 = phi i64 [ 0, %vector.ph605 ], [ %index.next611, %vector.body607 ] ; 3 uses
  %i.aid = getelementptr inbounds nuw [4 x i8], ptr %.sroa.46.0.copyload.i.i287, i64 %index608 ; 2 uses
  %i.aie = getelementptr inbounds nuw [4 x i8], ptr %i.aft, i64 %index608 ; 2 uses
  %i.aif = getelementptr inbounds nuw i8, ptr %i.aie, i64 16
  %wide.load609 = load <4 x i32>, ptr %i.aie, align 4, !tbaa !65
  %wide.load610 = load <4 x i32>, ptr %i.aif, align 4, !tbaa !65
  %i.aig = getelementptr inbounds nuw i8, ptr %i.aid, i64 16
  store <4 x i32> %wide.load609, ptr %i.aid, align 4, !tbaa !65
  store <4 x i32> %wide.load610, ptr %i.aig, align 4, !tbaa !65
  %index.next611 = add nuw i64 %index608, 8       ; 2 uses
  %i.aih = icmp eq i64 %index.next611, %n.vec606
  br i1 %i.aih, label %middle.block612, label %vector.body607, !llvm.loop !1740

middle.block612:                                  ; preds = %vector.body607
  %cmp.n613 = icmp eq i64 %.sroa.68.0.copyload.i.i291, %n.vec606
  br i1 %cmp.n613, label %_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EjEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit, label %.lr.ph122.i.i.i.i.i328.preheader955

.lr.ph122.i.i.i.i.i328.preheader955:              ; preds = %.lr.ph122.i.i.i.i.i328.preheader, %middle.block612
  %.060121.i.i.i.i.i329.ph = phi i64 [ 0, %.lr.ph122.i.i.i.i.i328.preheader ], [ %n.vec606, %middle.block612 ] ; 3 uses
  %xtraiter1085 = and i64 %.sroa.68.0.copyload.i.i291, 3 ; 2 uses
  %lcmp.mod1086.not = icmp eq i64 %xtraiter1085, 0
  br i1 %lcmp.mod1086.not, label %.lr.ph122.i.i.i.i.i328.prol.loopexit, label %.lr.ph122.i.i.i.i.i328.prol

.lr.ph122.i.i.i.i.i328.prol:                      ; preds = %.lr.ph122.i.i.i.i.i328.preheader955, %.lr.ph122.i.i.i.i.i328.prol
  %.060121.i.i.i.i.i329.prol = phi i64 [ %i.aim, %.lr.ph122.i.i.i.i.i328.prol ], [ %.060121.i.i.i.i.i329.ph, %.lr.ph122.i.i.i.i.i328.preheader955 ] ; 3 uses
  %prol.iter1087 = phi i64 [ %prol.iter1087.next, %.lr.ph122.i.i.i.i.i328.prol ], [ 0, %.lr.ph122.i.i.i.i.i328.preheader955 ]
  %i.aii = getelementptr inbounds nuw [4 x i8], ptr %.sroa.46.0.copyload.i.i287, i64 %.060121.i.i.i.i.i329.prol
  %i.aij = mul i64 %.060121.i.i.i.i.i329.prol, %i.afv
  %i.aik = getelementptr inbounds nuw [4 x i8], ptr %i.aft, i64 %i.aij
  %i.ail = load i32, ptr %i.aik, align 4, !tbaa !65
  store i32 %i.ail, ptr %i.aii, align 4, !tbaa !65
  %i.aim = add nuw i64 %.060121.i.i.i.i.i329.prol, 1 ; 2 uses
  %prol.iter1087.next = add i64 %prol.iter1087, 1 ; 2 uses
  %prol.iter1087.cmp.not = icmp eq i64 %prol.iter1087.next, %xtraiter1085
  br i1 %prol.iter1087.cmp.not, label %.lr.ph122.i.i.i.i.i328.prol.loopexit, label %.lr.ph122.i.i.i.i.i328.prol, !llvm.loop !1741

.lr.ph122.i.i.i.i.i328.prol.loopexit:             ; preds = %.lr.ph122.i.i.i.i.i328.prol, %.lr.ph122.i.i.i.i.i328.preheader955
  %.060121.i.i.i.i.i329.unr = phi i64 [ %.060121.i.i.i.i.i329.ph, %.lr.ph122.i.i.i.i.i328.preheader955 ], [ %i.aim, %.lr.ph122.i.i.i.i.i328.prol ]
  %i.ain = sub i64 %.060121.i.i.i.i.i329.ph, %.sroa.68.0.copyload.i.i291
  %i.aio = icmp ugt i64 %i.ain, -4
  br i1 %i.aio, label %_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EjEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit, label %.lr.ph122.i.i.i.i.i328

.lr.ph122.i.i.i.i.i328:                           ; preds = %.lr.ph122.i.i.i.i.i328.prol.loopexit, %.lr.ph122.i.i.i.i.i328
  %.060121.i.i.i.i.i329 = phi i64 [ %i.aji, %.lr.ph122.i.i.i.i.i328 ], [ %.060121.i.i.i.i.i329.unr, %.lr.ph122.i.i.i.i.i328.prol.loopexit ] ; 6 uses
  %i.aip = getelementptr inbounds nuw [4 x i8], ptr %.sroa.46.0.copyload.i.i287, i64 %.060121.i.i.i.i.i329
  %i.aiq = mul i64 %.060121.i.i.i.i.i329, %i.afv
  %i.air = getelementptr inbounds nuw [4 x i8], ptr %i.aft, i64 %i.aiq
  %i.ais = load i32, ptr %i.air, align 4, !tbaa !65
  store i32 %i.ais, ptr %i.aip, align 4, !tbaa !65
  %i.ait = add nuw i64 %.060121.i.i.i.i.i329, 1   ; 2 uses
  %i.aiu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.46.0.copyload.i.i287, i64 %i.ait
  %i.aiv = mul i64 %i.ait, %i.afv
  %i.aiw = getelementptr inbounds nuw [4 x i8], ptr %i.aft, i64 %i.aiv
  %i.aix = load i32, ptr %i.aiw, align 4, !tbaa !65
  store i32 %i.aix, ptr %i.aiu, align 4, !tbaa !65
  %i.aiy = add nuw i64 %.060121.i.i.i.i.i329, 2   ; 2 uses
  %i.aiz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.46.0.copyload.i.i287, i64 %i.aiy
  %i.aja = mul i64 %i.aiy, %i.afv
  %i.ajb = getelementptr inbounds nuw [4 x i8], ptr %i.aft, i64 %i.aja
  %i.ajc = load i32, ptr %i.ajb, align 4, !tbaa !65
  store i32 %i.ajc, ptr %i.aiz, align 4, !tbaa !65
  %i.ajd = add nuw i64 %.060121.i.i.i.i.i329, 3   ; 2 uses
  %i.aje = getelementptr inbounds nuw [4 x i8], ptr %.sroa.46.0.copyload.i.i287, i64 %i.ajd
  %i.ajf = mul i64 %i.ajd, %i.afv
  %i.ajg = getelementptr inbounds nuw [4 x i8], ptr %i.aft, i64 %i.ajf
  %i.ajh = load i32, ptr %i.ajg, align 4, !tbaa !65
  store i32 %i.ajh, ptr %i.aje, align 4, !tbaa !65
  %i.aji = add nuw i64 %.060121.i.i.i.i.i329, 4   ; 2 uses
  %exitcond145.not.i.i.i.i.i330.3 = icmp eq i64 %i.aji, %.sroa.68.0.copyload.i.i291
  br i1 %exitcond145.not.i.i.i.i.i330.3, label %_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EjEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit, label %.lr.ph122.i.i.i.i.i328, !llvm.loop !1742

bb.dk:                                            ; preds = %bb.dg
  %i.ajj = landingpad { ptr, i32 }
          catch ptr null
  %i.ajk = extractvalue { ptr, i32 } %i.ajj, 0
  call void @__clang_call_terminate(ptr %i.ajk) #38
  unreachable

bb.dl:                                            ; preds = %_ZN7xgboost6common4SpanIKiLm18446744073709551615EEC2EPS2_m.exit.i
  br i1 %i.agd, label %.preheader.i.i23.i.i.i319, label %bb.dm

.preheader.i.i23.i.i.i319:                        ; preds = %bb.dl
  %.not132.i.i.i.i.i320 = icmp eq i64 %.sroa.68.0.copyload.i.i291, 0
  br i1 %.not132.i.i.i.i.i320, label %_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EjEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit, label %.lr.ph125.i.i.i.i.i321.preheader

.lr.ph125.i.i.i.i.i321.preheader:                 ; preds = %.preheader.i.i23.i.i.i319
  %xtraiter1079 = and i64 %.sroa.68.0.copyload.i.i291, 3 ; 3 uses
  %i.ajl = icmp ult i64 %.sroa.68.0.copyload.i.i291, 4
  br i1 %i.ajl, label %.lr.ph125.i.i.i.i.i321.epil.preheader, label %.lr.ph125.i.i.i.i.i321.preheader.new

.lr.ph125.i.i.i.i.i321.preheader.new:             ; preds = %.lr.ph125.i.i.i.i.i321.preheader
  %unroll_iter1083 = and i64 %.sroa.68.0.copyload.i.i291, -4
  br label %.lr.ph125.i.i.i.i.i321

.lr.ph125.i.i.i.i.i321:                           ; preds = %.lr.ph125.i.i.i.i.i321, %.lr.ph125.i.i.i.i.i321.preheader.new
  %.0124.i.i.i.i.i322 = phi i64 [ 0, %.lr.ph125.i.i.i.i.i321.preheader.new ], [ %i.akj, %.lr.ph125.i.i.i.i.i321 ] ; 6 uses
  %niter1084 = phi i64 [ 0, %.lr.ph125.i.i.i.i.i321.preheader.new ], [ %niter1084.next.3, %.lr.ph125.i.i.i.i.i321 ]
  %i.ajm = mul i64 %.0124.i.i.i.i.i322, %.sroa.05.0.copyload.i.i283
  %i.ajn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.57.0.copyload.i.i289, i64 %i.ajm
  %i.ajo = mul i64 %.0124.i.i.i.i.i322, %i.afv
  %i.ajp = getelementptr inbounds nuw [4 x i8], ptr %i.aft, i64 %i.ajo
  %i.ajq = load i32, ptr %i.ajp, align 4, !tbaa !65
  store i32 %i.ajq, ptr %i.ajn, align 4, !tbaa !65
  %i.ajr = or disjoint i64 %.0124.i.i.i.i.i322, 1 ; 2 uses
  %i.ajs = mul i64 %i.ajr, %.sroa.05.0.copyload.i.i283
  %i.ajt = getelementptr inbounds nuw [4 x i8], ptr %.sroa.57.0.copyload.i.i289, i64 %i.ajs
  %i.aju = mul i64 %i.ajr, %i.afv
  %i.ajv = getelementptr inbounds nuw [4 x i8], ptr %i.aft, i64 %i.aju
  %i.ajw = load i32, ptr %i.ajv, align 4, !tbaa !65
  store i32 %i.ajw, ptr %i.ajt, align 4, !tbaa !65
  %i.ajx = or disjoint i64 %.0124.i.i.i.i.i322, 2 ; 2 uses
  %i.ajy = mul i64 %i.ajx, %.sroa.05.0.copyload.i.i283
  %i.ajz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.57.0.copyload.i.i289, i64 %i.ajy
  %i.aka = mul i64 %i.ajx, %i.afv
  %i.akb = getelementptr inbounds nuw [4 x i8], ptr %i.aft, i64 %i.aka
  %i.akc = load i32, ptr %i.akb, align 4, !tbaa !65
  store i32 %i.akc, ptr %i.ajz, align 4, !tbaa !65
  %i.akd = or disjoint i64 %.0124.i.i.i.i.i322, 3 ; 2 uses
  %i.ake = mul i64 %i.akd, %.sroa.05.0.copyload.i.i283
  %i.akf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.57.0.copyload.i.i289, i64 %i.ake
  %i.akg = mul i64 %i.akd, %i.afv
  %i.akh = getelementptr inbounds nuw [4 x i8], ptr %i.aft, i64 %i.akg
  %i.aki = load i32, ptr %i.akh, align 4, !tbaa !65
  store i32 %i.aki, ptr %i.akf, align 4, !tbaa !65
  %i.akj = add nuw i64 %.0124.i.i.i.i.i322, 4     ; 2 uses
  %niter1084.next.3 = add nuw i64 %niter1084, 4   ; 2 uses
  %niter1084.ncmp.3 = icmp eq i64 %niter1084.next.3, %unroll_iter1083
  br i1 %niter1084.ncmp.3, label %_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EjEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit.loopexit957.unr-lcssa, label %.lr.ph125.i.i.i.i.i321, !llvm.loop !1743

bb.dm:                                            ; preds = %bb.dl
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store i32 %i.agb, ptr %i.u, align 4, !tbaa !65, !noalias !1848
  store i32 1, ptr %i.v, align 4, !tbaa !65, !noalias !1848
  %.not.i.i.i6.i.i.i294 = icmp slt i32 %i.agb, 1
  br i1 %.not.i.i.i6.i.i.i294, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i8.i.i.i301, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i7.i.i.i295

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i7.i.i.i295: ; preds = %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %.preheader107.i.i.i.i.i296

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i8.i.i.i301: ; preds = %bb.dm
  call void @_ZN4dmlc14LogCheckFormatIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %21, ptr noundef nonnull align 4 dereferenceable(4) %i.u, ptr noundef nonnull align 4 dereferenceable(4) %i.v)
  %.pr.i.i9.i.i.i302 = load ptr, ptr %21, align 8, !tbaa !169
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %.not.i.i10.i.i.i303 = icmp eq ptr %.pr.i.i9.i.i.i302, null
  br i1 %.not.i.i10.i.i.i303, label %.preheader107.i.i.i.i.i296, label %bb.dn

bb.dn:                                            ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i8.i.i.i301
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #20
  %i.akk = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %22)
          to label %.noexc.i.i12.i.i.i307 unwind label %bb.do

.noexc.i.i12.i.i.i307:                            ; preds = %bb.dn
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.akk, ptr noundef nonnull @.str.200, i32 noundef 196)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i13.i.i.i308 unwind label %bb.do

_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i13.i.i.i308: ; preds = %.noexc.i.i12.i.i.i307
  %i.akl = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %22)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i14.i.i.i309 unwind label %bb.dp ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i14.i.i.i309: ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i13.i.i.i308
  %i.akm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.akl, ptr noundef nonnull @.str.3, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i15.i.i.i310 unwind label %bb.dp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i15.i.i.i310: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i14.i.i.i309
  %i.akn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.akl, ptr noundef nonnull @.str.201, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74.i.i16.i.i.i311 unwind label %bb.dp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74.i.i16.i.i.i311: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i15.i.i.i310
  %i.ako = load ptr, ptr %21, align 8, !tbaa !169 ; 2 uses
  %i.akp = load ptr, ptr %i.ako, align 8, !tbaa !56
  %i.akq = getelementptr inbounds nuw i8, ptr %i.ako, i64 8
  %i.akr = load i64, ptr %i.akq, align 8, !tbaa !120
  %i.aks = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.akl, ptr noundef %i.akp, i64 noundef %i.akr)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i17.i.i.i312 unwind label %bb.dp

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i17.i.i.i312: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74.i.i16.i.i.i311
  %i.akt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aks, ptr noundef nonnull @.str.2, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77.i.i18.i.i.i313 unwind label %bb.dp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77.i.i18.i.i.i313: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i17.i.i.i312
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %22)
          to label %bb.dr unwind label %bb.do

bb.do:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77.i.i18.i.i.i313, %.noexc.i.i12.i.i.i307, %bb.dn
  %i.aku = landingpad { ptr, i32 }
          cleanup
end_hunk_1
begin_hunk_2_@_ZN7xgboost13DispatchDTypeIZNS_13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EjEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdESA_EUlSD_E_EEDaNS_21ArrayInterfaceHandler4TypeESD_:bb.a
.lr.ph125.i.i.i.i.i531:                           ; preds = %.lr.ph125.i.i.i.i.i531, %.lr.ph125.i.i.i.i.i531.preheader.new
  %.0124.i.i.i.i.i532 = phi i64 [ 0, %.lr.ph125.i.i.i.i.i531.preheader.new ], [ %i.bfz, %.lr.ph125.i.i.i.i.i531 ] ; 6 uses
  %niter1030 = phi i64 [ 0, %.lr.ph125.i.i.i.i.i531.preheader.new ], [ %niter1030.next.3, %.lr.ph125.i.i.i.i.i531 ]
  %i.bey = mul i64 %.0124.i.i.i.i.i532, %.sroa.05.0.copyload.i.i493
  %i.bez = getelementptr inbounds nuw [4 x i8], ptr %.sroa.57.0.copyload.i.i499, i64 %i.bey
  %i.bfa = mul i64 %.0124.i.i.i.i.i532, %i.bav
  %i.bfb = getelementptr inbounds nuw [2 x i8], ptr %i.bat, i64 %i.bfa
  %i.bfc = load i16, ptr %i.bfb, align 2, !tbaa !155
  %i.bfd = zext i16 %i.bfc to i32
  store i32 %i.bfd, ptr %i.bez, align 4, !tbaa !65
  %i.bfe = or disjoint i64 %.0124.i.i.i.i.i532, 1 ; 2 uses
  %i.bff = mul i64 %i.bfe, %.sroa.05.0.copyload.i.i493
  %i.bfg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.57.0.copyload.i.i499, i64 %i.bff
  %i.bfh = mul i64 %i.bfe, %i.bav
  %i.bfi = getelementptr inbounds nuw [2 x i8], ptr %i.bat, i64 %i.bfh
  %i.bfj = load i16, ptr %i.bfi, align 2, !tbaa !155
  %i.bfk = zext i16 %i.bfj to i32
  store i32 %i.bfk, ptr %i.bfg, align 4, !tbaa !65
  %i.bfl = or disjoint i64 %.0124.i.i.i.i.i532, 2 ; 2 uses
  %i.bfm = mul i64 %i.bfl, %.sroa.05.0.copyload.i.i493
  %i.bfn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.57.0.copyload.i.i499, i64 %i.bfm
  %i.bfo = mul i64 %i.bfl, %i.bav
  %i.bfp = getelementptr inbounds nuw [2 x i8], ptr %i.bat, i64 %i.bfo
  %i.bfq = load i16, ptr %i.bfp, align 2, !tbaa !155
  %i.bfr = zext i16 %i.bfq to i32
  store i32 %i.bfr, ptr %i.bfn, align 4, !tbaa !65
  %i.bfs = or disjoint i64 %.0124.i.i.i.i.i532, 3 ; 2 uses
  %i.bft = mul i64 %i.bfs, %.sroa.05.0.copyload.i.i493
  %i.bfu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.57.0.copyload.i.i499, i64 %i.bft
  %i.bfv = mul i64 %i.bfs, %i.bav
  %i.bfw = getelementptr inbounds nuw [2 x i8], ptr %i.bat, i64 %i.bfv
  %i.bfx = load i16, ptr %i.bfw, align 2, !tbaa !155
  %i.bfy = zext i16 %i.bfx to i32
  store i32 %i.bfy, ptr %i.bfu, align 4, !tbaa !65
  %i.bfz = add nuw i64 %.0124.i.i.i.i.i532, 4     ; 2 uses
  %niter1030.next.3 = add nuw i64 %niter1030, 4   ; 2 uses
  %niter1030.ncmp.3 = icmp eq i64 %niter1030.next.3, %unroll_iter1029
  br i1 %niter1030.ncmp.3, label %_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EjEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit.loopexit975.unr-lcssa, label %.lr.ph125.i.i.i.i.i531, !llvm.loop !1785

bb.fu:                                            ; preds = %bb.ft
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i32 %i.bbb, ptr %i.i, align 4, !tbaa !65, !noalias !1858
  store i32 1, ptr %i.j, align 4, !tbaa !65, !noalias !1858
  %.not.i.i.i6.i.i.i504 = icmp slt i32 %i.bbb, 1
  br i1 %.not.i.i.i6.i.i.i504, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i8.i.i.i511, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i7.i.i.i505

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i7.i.i.i505: ; preds = %bb.fu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %.preheader107.i.i.i.i.i506

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i8.i.i.i511: ; preds = %bb.fu
  call void @_ZN4dmlc14LogCheckFormatIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %9, ptr noundef nonnull align 4 dereferenceable(4) %i.i, ptr noundef nonnull align 4 dereferenceable(4) %i.j)
  %.pr.i.i9.i.i.i512 = load ptr, ptr %9, align 8, !tbaa !169
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %.not.i.i10.i.i.i513 = icmp eq ptr %.pr.i.i9.i.i.i512, null
  br i1 %.not.i.i10.i.i.i513, label %.preheader107.i.i.i.i.i506, label %bb.fv

bb.fv:                                            ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i8.i.i.i511
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  %i.bga = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %.noexc.i.i12.i.i.i517 unwind label %bb.fw

.noexc.i.i12.i.i.i517:                            ; preds = %bb.fv
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.bga, ptr noundef nonnull @.str.200, i32 noundef 196)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i13.i.i.i518 unwind label %bb.fw

_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i13.i.i.i518: ; preds = %.noexc.i.i12.i.i.i517
  %i.bgb = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i14.i.i.i519 unwind label %bb.fx ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i14.i.i.i519: ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i13.i.i.i518
  %i.bgc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bgb, ptr noundef nonnull @.str.3, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i15.i.i.i520 unwind label %bb.fx ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i15.i.i.i520: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i14.i.i.i519
  %i.bgd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bgb, ptr noundef nonnull @.str.201, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74.i.i16.i.i.i521 unwind label %bb.fx ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74.i.i16.i.i.i521: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i15.i.i.i520
  %i.bge = load ptr, ptr %9, align 8, !tbaa !169  ; 2 uses
  %i.bgf = load ptr, ptr %i.bge, align 8, !tbaa !56
  %i.bgg = getelementptr inbounds nuw i8, ptr %i.bge, i64 8
  %i.bgh = load i64, ptr %i.bgg, align 8, !tbaa !120
  %i.bgi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bgb, ptr noundef %i.bgf, i64 noundef %i.bgh)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i17.i.i.i522 unwind label %bb.fx

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i17.i.i.i522: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74.i.i16.i.i.i521
  %i.bgj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bgi, ptr noundef nonnull @.str.2, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77.i.i18.i.i.i523 unwind label %bb.fx ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77.i.i18.i.i.i523: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i17.i.i.i522
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.fz unwind label %bb.fw

bb.fw:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77.i.i18.i.i.i523, %.noexc.i.i12.i.i.i517, %bb.fv
  %i.bgk = landingpad { ptr, i32 }
          cleanup
  br label %bb.fy

bb.fx:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i17.i.i.i522, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74.i.i16.i.i.i521, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i15.i.i.i520, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i14.i.i.i519, %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i13.i.i.i518
  %i.bgl = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.fy unwind label %bb.gb

bb.fy:                                            ; preds = %bb.fx, %bb.fw
  %.pn.i.i11.i.i.i514 = phi { ptr, i32 } [ %i.bgk, %bb.fw ], [ %i.bgl, %bb.fx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br label %common.resume

bb.fz:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77.i.i18.i.i.i523
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  %.pr99.i.i.i.i.i524 = load ptr, ptr %9, align 8, !tbaa !169 ; 4 uses
  %.not.i78.i.i19.i.i.i525 = icmp eq ptr %.pr99.i.i.i.i.i524, null
  br i1 %.not.i78.i.i19.i.i.i525, label %.preheader107.i.i.i.i.i506, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.bgm = load ptr, ptr %.pr99.i.i.i.i.i524, align 8, !tbaa !56 ; 2 uses
  %i.bgn = getelementptr inbounds nuw i8, ptr %.pr99.i.i.i.i.i524, i64 16 ; 2 uses
  %i.bgo = icmp eq ptr %i.bgm, %i.bgn
  br i1 %i.bgo, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i21.i.i.i527, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20.i.i.i526

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20.i.i.i526: ; preds = %bb.ga
  %i.bgp = load i64, ptr %i.bgn, align 8, !tbaa !57
  %i.bgq = add i64 %i.bgp, 1
  call void @_ZdlPvm(ptr noundef %i.bgm, i64 noundef %i.bgq) #39
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i21.i.i.i527

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i21.i.i.i527: ; preds = %bb.ga, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20.i.i.i526
  call void @_ZdlPvm(ptr noundef nonnull %.pr99.i.i.i.i.i524, i64 noundef 32) #39
  br label %.preheader107.i.i.i.i.i506

.preheader107.i.i.i.i.i506:                       ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i21.i.i.i527, %bb.fz, %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i8.i.i.i511, %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i7.i.i.i505
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  %.not128.i.i.i.i.i507 = icmp eq i64 %.sroa.68.0.copyload.i.i501, 0
  br i1 %.not128.i.i.i.i.i507, label %_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EjEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit, label %.lr.ph117.i.i.i.i.i508.preheader

.lr.ph117.i.i.i.i.i508.preheader:                 ; preds = %.preheader107.i.i.i.i.i506
  %xtraiter1019 = and i64 %.sroa.68.0.copyload.i.i501, 3 ; 3 uses
  %i.bgr = icmp ult i64 %.sroa.68.0.copyload.i.i501, 4
  br i1 %i.bgr, label %.lr.ph117.i.i.i.i.i508.epil.preheader, label %.lr.ph117.i.i.i.i.i508.preheader.new

.lr.ph117.i.i.i.i.i508.preheader.new:             ; preds = %.lr.ph117.i.i.i.i.i508.preheader
  %unroll_iter1023 = and i64 %.sroa.68.0.copyload.i.i501, -4
  br label %.lr.ph117.i.i.i.i.i508

.lr.ph117.i.i.i.i.i508:                           ; preds = %.lr.ph117.i.i.i.i.i508, %.lr.ph117.i.i.i.i.i508.preheader.new
  %.060116.i.i.i.i.i509 = phi i64 [ 0, %.lr.ph117.i.i.i.i.i508.preheader.new ], [ %i.bht, %.lr.ph117.i.i.i.i.i508 ] ; 6 uses
  %niter1024 = phi i64 [ 0, %.lr.ph117.i.i.i.i.i508.preheader.new ], [ %niter1024.next.3, %.lr.ph117.i.i.i.i.i508 ]
  %i.bgs = mul i64 %.060116.i.i.i.i.i509, %.sroa.05.0.copyload.i.i493
  %i.bgt = getelementptr inbounds nuw [4 x i8], ptr %.sroa.57.0.copyload.i.i499, i64 %i.bgs
  %i.bgu = mul i64 %.060116.i.i.i.i.i509, %i.bav
  %i.bgv = getelementptr inbounds nuw [2 x i8], ptr %i.bat, i64 %i.bgu
  %i.bgw = load i16, ptr %i.bgv, align 2, !tbaa !155
  %i.bgx = zext i16 %i.bgw to i32
  store i32 %i.bgx, ptr %i.bgt, align 4, !tbaa !65
  %i.bgy = or disjoint i64 %.060116.i.i.i.i.i509, 1 ; 2 uses
  %i.bgz = mul i64 %i.bgy, %.sroa.05.0.copyload.i.i493
  %i.bha = getelementptr inbounds nuw [4 x i8], ptr %.sroa.57.0.copyload.i.i499, i64 %i.bgz
  %i.bhb = mul i64 %i.bgy, %i.bav
  %i.bhc = getelementptr inbounds nuw [2 x i8], ptr %i.bat, i64 %i.bhb
  %i.bhd = load i16, ptr %i.bhc, align 2, !tbaa !155
  %i.bhe = zext i16 %i.bhd to i32
  store i32 %i.bhe, ptr %i.bha, align 4, !tbaa !65
  %i.bhf = or disjoint i64 %.060116.i.i.i.i.i509, 2 ; 2 uses
  %i.bhg = mul i64 %i.bhf, %.sroa.05.0.copyload.i.i493
  %i.bhh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.57.0.copyload.i.i499, i64 %i.bhg
  %i.bhi = mul i64 %i.bhf, %i.bav
  %i.bhj = getelementptr inbounds nuw [2 x i8], ptr %i.bat, i64 %i.bhi
  %i.bhk = load i16, ptr %i.bhj, align 2, !tbaa !155
  %i.bhl = zext i16 %i.bhk to i32
  store i32 %i.bhl, ptr %i.bhh, align 4, !tbaa !65
  %i.bhm = or disjoint i64 %.060116.i.i.i.i.i509, 3 ; 2 uses
  %i.bhn = mul i64 %i.bhm, %.sroa.05.0.copyload.i.i493
  %i.bho = getelementptr inbounds nuw [4 x i8], ptr %.sroa.57.0.copyload.i.i499, i64 %i.bhn
  %i.bhp = mul i64 %i.bhm, %i.bav
  %i.bhq = getelementptr inbounds nuw [2 x i8], ptr %i.bat, i64 %i.bhp
  %i.bhr = load i16, ptr %i.bhq, align 2, !tbaa !155
  %i.bhs = zext i16 %i.bhr to i32
  store i32 %i.bhs, ptr %i.bho, align 4, !tbaa !65
  %i.bht = add nuw i64 %.060116.i.i.i.i.i509, 4   ; 2 uses
  %niter1024.next.3 = add nuw i64 %niter1024, 4   ; 2 uses
  %niter1024.ncmp.3 = icmp eq i64 %niter1024.next.3, %unroll_iter1023
  br i1 %niter1024.ncmp.3, label %_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EjEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit.loopexit976.unr-lcssa, label %.lr.ph117.i.i.i.i.i508, !llvm.loop !1788

bb.gb:                                            ; preds = %bb.fx
  %i.bhu = landingpad { ptr, i32 }
          catch ptr null
  %i.bhv = extractvalue { ptr, i32 } %i.bhu, 0
  call void @__clang_call_terminate(ptr %i.bhv) #38
  unreachable

bb.gc:                                            ; preds = %bb.a
  %i.bhw = getelementptr inbounds nuw i8, ptr %.8.val, i64 32
  %i.bhx = load ptr, ptr %i.bhw, align 8, !tbaa !149 ; 24 uses
  %47 = ptrtoaddr ptr %i.bhx to i64               ; 2 uses
  %.not.i562 = icmp eq ptr %i.bhx, null
  br i1 %.not.i562, label %bb.gd, label %_ZN7xgboost6common4SpanIKjLm18446744073709551615EEC2EPS2_m.exit.i, !prof !71

bb.gd:                                            ; preds = %bb.gc
  tail call void @_ZSt9terminatev() #38
  unreachable

_ZN7xgboost6common4SpanIKjLm18446744073709551615EEC2EPS2_m.exit.i: ; preds = %bb.gc
  %i.bhy = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.bhz = load i64, ptr %i.bhy, align 8, !tbaa !74 ; 22 uses
  %i.bia = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %i.bib = load ptr, ptr %i.bia, align 8, !tbaa !1831, !nonnull !111, !align !121 ; 5 uses
  %.sroa.05.0.copyload.i.i563 = load i64, ptr %i.bib, align 8, !tbaa !57 ; 11 uses
  %.sroa.3.0..sroa_idx.i.i564 = getelementptr inbounds nuw i8, ptr %i.bib, i64 16
  %.sroa.3.0.copyload.i.i565 = load i64, ptr %.sroa.3.0..sroa_idx.i.i564, align 8, !tbaa !74
  %.sroa.46.0..sroa_idx.i.i566 = getelementptr inbounds nuw i8, ptr %i.bib, i64 24
  %.sroa.46.0.copyload.i.i567 = load ptr, ptr %.sroa.46.0..sroa_idx.i.i566, align 8, !tbaa !97 ; 13 uses
  %.sroa.46.0.copyload.i.i567329 = ptrtoaddr ptr %.sroa.46.0.copyload.i.i567 to i64 ; 2 uses
  %.sroa.57.0..sroa_idx.i.i568 = getelementptr inbounds nuw i8, ptr %i.bib, i64 32
  %.sroa.57.0.copyload.i.i569 = load ptr, ptr %.sroa.57.0..sroa_idx.i.i568, align 8, !tbaa !97 ; 10 uses
  %.sroa.68.0..sroa_idx.i.i570 = getelementptr inbounds nuw i8, ptr %i.bib, i64 40
  %.sroa.68.0.copyload.i.i571 = load i64, ptr %.sroa.68.0..sroa_idx.i.i570, align 8, !tbaa !74 ; 23 uses
  %i.bic = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.bid = load ptr, ptr %i.bic, align 8, !tbaa !1832, !nonnull !111, !align !121
  %i.bie = load ptr, ptr %i.bid, align 8, !tbaa !274
  %i.bif = tail call noundef i32 @_ZNK7xgboost7Context7ThreadsEv(ptr noundef nonnull align 8 dereferenceable(5084) %i.bie) ; 5 uses
  %i.big = icmp eq i64 %.sroa.3.0.copyload.i.i565, %.sroa.68.0.copyload.i.i571
  %.not4.i.le.i.i.i.i.i572 = icmp eq i64 %.sroa.05.0.copyload.i.i563, 1
  %or.cond.i.i.i.i573 = select i1 %i.big, i1 true, i1 %.not4.i.le.i.i.i.i.i572
  %i.bih = icmp eq i32 %i.bif, 1                  ; 2 uses
  br i1 %or.cond.i.i.i.i573, label %bb.ge, label %bb.gn

bb.ge:                                            ; preds = %_ZN7xgboost6common4SpanIKjLm18446744073709551615EEC2EPS2_m.exit.i
  br i1 %i.bih, label %.preheader.i.i.i.i.i627, label %bb.gf

.preheader.i.i.i.i.i627:                          ; preds = %bb.ge
  %.not137.i.i.i.i.i628 = icmp eq i64 %.sroa.68.0.copyload.i.i571, 0
  br i1 %.not137.i.i.i.i.i628, label %_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EjEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit, label %.lr.ph130.i.i.i.i.i629.preheader

.lr.ph130.i.i.i.i.i629.preheader:                 ; preds = %.preheader.i.i.i.i.i627
  %min.iters.check348 = icmp ult i64 %.sroa.68.0.copyload.i.i571, 12
  %ident.check344.not = icmp ne i64 %i.bhz, 1
  %or.cond916.not923 = select i1 %min.iters.check348, i1 true, i1 %ident.check344.not
  %i.bii = sub i64 %47, %.sroa.46.0.copyload.i.i567329
  %diff.check346 = icmp ugt i64 %i.bii, -32
  %or.cond917 = select i1 %or.cond916.not923, i1 true, i1 %diff.check346
  br i1 %or.cond917, label %.lr.ph130.i.i.i.i.i629.preheader977, label %vector.ph349

vector.ph349:                                     ; preds = %.lr.ph130.i.i.i.i.i629.preheader
  %n.vec350 = and i64 %.sroa.68.0.copyload.i.i571, -8 ; 3 uses
  br label %vector.body351

vector.body351:                                   ; preds = %vector.body351, %vector.ph349
  %index352 = phi i64 [ 0, %vector.ph349 ], [ %index.next355, %vector.body351 ] ; 3 uses
  %i.bij = getelementptr inbounds nuw [4 x i8], ptr %.sroa.46.0.copyload.i.i567, i64 %index352 ; 2 uses
  %i.bik = getelementptr inbounds nuw [4 x i8], ptr %i.bhx, i64 %index352 ; 2 uses
  %i.bil = getelementptr inbounds nuw i8, ptr %i.bik, i64 16
  %wide.load353 = load <4 x i32>, ptr %i.bik, align 4, !tbaa !65
  %wide.load354 = load <4 x i32>, ptr %i.bil, align 4, !tbaa !65
  %i.bim = getelementptr inbounds nuw i8, ptr %i.bij, i64 16
  store <4 x i32> %wide.load353, ptr %i.bij, align 4, !tbaa !65
  store <4 x i32> %wide.load354, ptr %i.bim, align 4, !tbaa !65
  %index.next355 = add nuw i64 %index352, 8       ; 2 uses
  %i.bin = icmp eq i64 %index.next355, %n.vec350
  br i1 %i.bin, label %middle.block356, label %vector.body351, !llvm.loop !1789

middle.block356:                                  ; preds = %vector.body351
  %cmp.n357 = icmp eq i64 %.sroa.68.0.copyload.i.i571, %n.vec350
  br i1 %cmp.n357, label %_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EjEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit, label %.lr.ph130.i.i.i.i.i629.preheader977

.lr.ph130.i.i.i.i.i629.preheader977:              ; preds = %.lr.ph130.i.i.i.i.i629.preheader, %middle.block356
  %.0129.i.i.i.i.i630.ph = phi i64 [ 0, %.lr.ph130.i.i.i.i.i629.preheader ], [ %n.vec350, %middle.block356 ] ; 3 uses
  %xtraiter1016.a = and i64 %.sroa.68.0.copyload.i.i571, 3 ; 2 uses
  %lcmp.mod1017.not = icmp eq i64 %xtraiter1016.a, 0
  br i1 %lcmp.mod1017.not, label %.lr.ph130.i.i.i.i.i629.prol.loopexit, label %.lr.ph130.i.i.i.i.i629.prol

.lr.ph130.i.i.i.i.i629.prol:                      ; preds = %.lr.ph130.i.i.i.i.i629.preheader977, %.lr.ph130.i.i.i.i.i629.prol
  %.0129.i.i.i.i.i630.prol = phi i64 [ %i.bis, %.lr.ph130.i.i.i.i.i629.prol ], [ %.0129.i.i.i.i.i630.ph, %.lr.ph130.i.i.i.i.i629.preheader977 ] ; 3 uses
  %prol.iter1018 = phi i64 [ %prol.iter1018.next, %.lr.ph130.i.i.i.i.i629.prol ], [ 0, %.lr.ph130.i.i.i.i.i629.preheader977 ]
  %i.bio = getelementptr inbounds nuw [4 x i8], ptr %.sroa.46.0.copyload.i.i567, i64 %.0129.i.i.i.i.i630.prol
  %i.bip = mul i64 %.0129.i.i.i.i.i630.prol, %i.bhz
  %i.biq = getelementptr inbounds nuw [4 x i8], ptr %i.bhx, i64 %i.bip
  %i.bir = load i32, ptr %i.biq, align 4, !tbaa !65
  store i32 %i.bir, ptr %i.bio, align 4, !tbaa !65
  %i.bis = add nuw i64 %.0129.i.i.i.i.i630.prol, 1 ; 2 uses
  %prol.iter1018.next = add i64 %prol.iter1018, 1 ; 2 uses
  %prol.iter1018.cmp.not = icmp eq i64 %prol.iter1018.next, %xtraiter1016.a
  br i1 %prol.iter1018.cmp.not, label %.lr.ph130.i.i.i.i.i629.prol.loopexit, label %.lr.ph130.i.i.i.i.i629.prol, !llvm.loop !1790

.lr.ph130.i.i.i.i.i629.prol.loopexit:             ; preds = %.lr.ph130.i.i.i.i.i629.prol, %.lr.ph130.i.i.i.i.i629.preheader977
  %.0129.i.i.i.i.i630.unr = phi i64 [ %.0129.i.i.i.i.i630.ph, %.lr.ph130.i.i.i.i.i629.preheader977 ], [ %i.bis, %.lr.ph130.i.i.i.i.i629.prol ]
  %i.bit = sub i64 %.0129.i.i.i.i.i630.ph, %.sroa.68.0.copyload.i.i571
  %i.biu = icmp ugt i64 %i.bit, -4
  br i1 %i.biu, label %_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EjEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit, label %.lr.ph130.i.i.i.i.i629

.lr.ph130.i.i.i.i.i629:                           ; preds = %.lr.ph130.i.i.i.i.i629.prol.loopexit, %.lr.ph130.i.i.i.i.i629
  %.0129.i.i.i.i.i630 = phi i64 [ %i.bjo, %.lr.ph130.i.i.i.i.i629 ], [ %.0129.i.i.i.i.i630.unr, %.lr.ph130.i.i.i.i.i629.prol.loopexit ] ; 6 uses
  %i.biv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.46.0.copyload.i.i567, i64 %.0129.i.i.i.i.i630
  %i.biw = mul i64 %.0129.i.i.i.i.i630, %i.bhz
  %i.bix = getelementptr inbounds nuw [4 x i8], ptr %i.bhx, i64 %i.biw
  %i.biy = load i32, ptr %i.bix, align 4, !tbaa !65
  store i32 %i.biy, ptr %i.biv, align 4, !tbaa !65
  %i.biz = add nuw i64 %.0129.i.i.i.i.i630, 1     ; 2 uses
  %i.bja = getelementptr inbounds nuw [4 x i8], ptr %.sroa.46.0.copyload.i.i567, i64 %i.biz
  %i.bjb = mul i64 %i.biz, %i.bhz
  %i.bjc = getelementptr inbounds nuw [4 x i8], ptr %i.bhx, i64 %i.bjb
  %i.bjd = load i32, ptr %i.bjc, align 4, !tbaa !65
  store i32 %i.bjd, ptr %i.bja, align 4, !tbaa !65
  %i.bje = add nuw i64 %.0129.i.i.i.i.i630, 2     ; 2 uses
  %i.bjf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.46.0.copyload.i.i567, i64 %i.bje
  %i.bjg = mul i64 %i.bje, %i.bhz
  %i.bjh = getelementptr inbounds nuw [4 x i8], ptr %i.bhx, i64 %i.bjg
  %i.bji = load i32, ptr %i.bjh, align 4, !tbaa !65
  store i32 %i.bji, ptr %i.bjf, align 4, !tbaa !65
  %i.bjj = add nuw i64 %.0129.i.i.i.i.i630, 3     ; 2 uses
  %i.bjk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.46.0.copyload.i.i567, i64 %i.bjj
  %i.bjl = mul i64 %i.bjj, %i.bhz
  %i.bjm = getelementptr inbounds nuw [4 x i8], ptr %i.bhx, i64 %i.bjl
  %i.bjn = load i32, ptr %i.bjm, align 4, !tbaa !65
  store i32 %i.bjn, ptr %i.bjk, align 4, !tbaa !65
  %i.bjo = add nuw i64 %.0129.i.i.i.i.i630, 4     ; 2 uses
  %exitcond149.not.i.i.i.i.i631.3 = icmp eq i64 %i.bjo, %.sroa.68.0.copyload.i.i571
  br i1 %exitcond149.not.i.i.i.i.i631.3, label %_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EjEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit, label %.lr.ph130.i.i.i.i.i629, !llvm.loop !1791

bb.gf:                                            ; preds = %bb.ge
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i32 %i.bif, ptr %i.g, align 4, !tbaa !65, !noalias !1859
  store i32 1, ptr %i.h, align 4, !tbaa !65, !noalias !1859
  %.not.i.i.i.i.i.i604 = icmp slt i32 %i.bif, 1
  br i1 %.not.i.i.i.i.i.i604, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i.i611, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i.i.i.i605

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i.i.i.i605: ; preds = %bb.gf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %.preheader112.i.i.i.i.i606

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i.i611: ; preds = %bb.gf
  call void @_ZN4dmlc14LogCheckFormatIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %7, ptr noundef nonnull align 4 dereferenceable(4) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %i.h)
  %.pr.i.i.i.i.i612 = load ptr, ptr %7, align 8, !tbaa !169
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %.not.i.i.i.i.i613 = icmp eq ptr %.pr.i.i.i.i.i612, null
  br i1 %.not.i.i.i.i.i613, label %.preheader112.i.i.i.i.i606, label %bb.gg

bb.gg:                                            ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i.i611
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %i.bjp = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %.noexc.i.i.i.i.i615 unwind label %bb.gh

.noexc.i.i.i.i.i615:                              ; preds = %bb.gg
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.bjp, ptr noundef nonnull @.str.200, i32 noundef 196)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i.i616 unwind label %bb.gh

_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i.i616: ; preds = %.noexc.i.i.i.i.i615
  %i.bjq = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i.i617 unwind label %bb.gi ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i.i617: ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i.i616
  %i.bjr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bjq, ptr noundef nonnull @.str.3, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i.i618 unwind label %bb.gi ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i.i618: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i.i617
  %i.bjs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bjq, ptr noundef nonnull @.str.201, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74.i.i.i.i.i619 unwind label %bb.gi ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74.i.i.i.i.i619: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i.i618
  %i.bjt = load ptr, ptr %7, align 8, !tbaa !169  ; 2 uses
  %i.bju = load ptr, ptr %i.bjt, align 8, !tbaa !56
  %i.bjv = getelementptr inbounds nuw i8, ptr %i.bjt, i64 8
  %i.bjw = load i64, ptr %i.bjv, align 8, !tbaa !120
  %i.bjx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bjq, ptr noundef %i.bju, i64 noundef %i.bjw)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i.i620 unwind label %bb.gi

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i.i620: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74.i.i.i.i.i619
  %i.bjy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bjx, ptr noundef nonnull @.str.2, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77.i.i.i.i.i621 unwind label %bb.gi ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77.i.i.i.i.i621: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i.i620
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.gk unwind label %bb.gh

bb.gh:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77.i.i.i.i.i621, %.noexc.i.i.i.i.i615, %bb.gg
  %i.bjz = landingpad { ptr, i32 }
          cleanup
  br label %bb.gj

bb.gi:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i.i620, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74.i.i.i.i.i619, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i.i618, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i.i617, %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i.i616
  %i.bka = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.gj unwind label %bb.gm

bb.gj:                                            ; preds = %bb.gi, %bb.gh
  %.pn.i.i.i.i.i614 = phi { ptr, i32 } [ %i.bjz, %bb.gh ], [ %i.bka, %bb.gi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %common.resume

bb.gk:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77.i.i.i.i.i621
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  %.pr104.i.i.i.i.i622 = load ptr, ptr %7, align 8, !tbaa !169 ; 4 uses
  %.not.i78.i.i.i.i.i623 = icmp eq ptr %.pr104.i.i.i.i.i622, null
  br i1 %.not.i78.i.i.i.i.i623, label %.preheader112.i.i.i.i.i606, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %i.bkb = load ptr, ptr %.pr104.i.i.i.i.i622, align 8, !tbaa !56 ; 2 uses
  %i.bkc = getelementptr inbounds nuw i8, ptr %.pr104.i.i.i.i.i622, i64 16 ; 2 uses
  %i.bkd = icmp eq ptr %i.bkb, %i.bkc
  br i1 %i.bkd, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i.i625, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i624

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i624: ; preds = %bb.gl
  %i.bke = load i64, ptr %i.bkc, align 8, !tbaa !57
  %i.bkf = add i64 %i.bke, 1
  call void @_ZdlPvm(ptr noundef %i.bkb, i64 noundef %i.bkf) #39
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i.i625

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i.i625: ; preds = %bb.gl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i624
  call void @_ZdlPvm(ptr noundef nonnull %.pr104.i.i.i.i.i622, i64 noundef 32) #39
  br label %.preheader112.i.i.i.i.i606

.preheader112.i.i.i.i.i606:                       ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i.i625, %bb.gk, %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i.i611, %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i.i.i.i605
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %.not133.i.i.i.i.i607 = icmp eq i64 %.sroa.68.0.copyload.i.i571, 0
  br i1 %.not133.i.i.i.i.i607, label %_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EjEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit, label %.lr.ph122.i.i.i.i.i608.preheader

.lr.ph122.i.i.i.i.i608.preheader:                 ; preds = %.preheader112.i.i.i.i.i606
  %min.iters.check332 = icmp ult i64 %.sroa.68.0.copyload.i.i571, 12
  %ident.check327.not = icmp ne i64 %i.bhz, 1
  %or.cond918.not922 = select i1 %min.iters.check332, i1 true, i1 %ident.check327.not
  %i.bkg = sub i64 %47, %.sroa.46.0.copyload.i.i567329
  %diff.check330 = icmp ugt i64 %i.bkg, -32
  %or.cond919 = select i1 %or.cond918.not922, i1 true, i1 %diff.check330
  br i1 %or.cond919, label %.lr.ph122.i.i.i.i.i608.preheader979, label %vector.ph333

vector.ph333:                                     ; preds = %.lr.ph122.i.i.i.i.i608.preheader
  %n.vec334 = and i64 %.sroa.68.0.copyload.i.i571, -8 ; 3 uses
  br label %vector.body335

vector.body335:                                   ; preds = %vector.body335, %vector.ph333
  %index336 = phi i64 [ 0, %vector.ph333 ], [ %index.next339, %vector.body335 ] ; 3 uses
  %i.bkh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.46.0.copyload.i.i567, i64 %index336 ; 2 uses
  %i.bki = getelementptr inbounds nuw [4 x i8], ptr %i.bhx, i64 %index336 ; 2 uses
  %i.bkj = getelementptr inbounds nuw i8, ptr %i.bki, i64 16
  %wide.load337 = load <4 x i32>, ptr %i.bki, align 4, !tbaa !65
  %wide.load338 = load <4 x i32>, ptr %i.bkj, align 4, !tbaa !65
  %i.bkk = getelementptr inbounds nuw i8, ptr %i.bkh, i64 16
  store <4 x i32> %wide.load337, ptr %i.bkh, align 4, !tbaa !65
  store <4 x i32> %wide.load338, ptr %i.bkk, align 4, !tbaa !65
  %index.next339 = add nuw i64 %index336, 8       ; 2 uses
  %i.bkl = icmp eq i64 %index.next339, %n.vec334
  br i1 %i.bkl, label %middle.block340, label %vector.body335, !llvm.loop !1794

middle.block340:                                  ; preds = %vector.body335
  %cmp.n341 = icmp eq i64 %.sroa.68.0.copyload.i.i571, %n.vec334
  br i1 %cmp.n341, label %_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EjEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit, label %.lr.ph122.i.i.i.i.i608.preheader979

.lr.ph122.i.i.i.i.i608.preheader979:              ; preds = %.lr.ph122.i.i.i.i.i608.preheader, %middle.block340
  %.060121.i.i.i.i.i609.ph = phi i64 [ 0, %.lr.ph122.i.i.i.i.i608.preheader ], [ %n.vec334, %middle.block340 ] ; 3 uses
  %xtraiter1013 = and i64 %.sroa.68.0.copyload.i.i571, 3 ; 2 uses
  %lcmp.mod1014.not = icmp eq i64 %xtraiter1013, 0
  br i1 %lcmp.mod1014.not, label %.lr.ph122.i.i.i.i.i608.prol.loopexit, label %.lr.ph122.i.i.i.i.i608.prol

.lr.ph122.i.i.i.i.i608.prol:                      ; preds = %.lr.ph122.i.i.i.i.i608.preheader979, %.lr.ph122.i.i.i.i.i608.prol
  %.060121.i.i.i.i.i609.prol = phi i64 [ %i.bkq, %.lr.ph122.i.i.i.i.i608.prol ], [ %.060121.i.i.i.i.i609.ph, %.lr.ph122.i.i.i.i.i608.preheader979 ] ; 3 uses
  %prol.iter1015 = phi i64 [ %prol.iter1015.next, %.lr.ph122.i.i.i.i.i608.prol ], [ 0, %.lr.ph122.i.i.i.i.i608.preheader979 ]
  %i.bkm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.46.0.copyload.i.i567, i64 %.060121.i.i.i.i.i609.prol
  %i.bkn = mul i64 %.060121.i.i.i.i.i609.prol, %i.bhz
  %i.bko = getelementptr inbounds nuw [4 x i8], ptr %i.bhx, i64 %i.bkn
  %i.bkp = load i32, ptr %i.bko, align 4, !tbaa !65
  store i32 %i.bkp, ptr %i.bkm, align 4, !tbaa !65
  %i.bkq = add nuw i64 %.060121.i.i.i.i.i609.prol, 1 ; 2 uses
  %prol.iter1015.next = add i64 %prol.iter1015, 1 ; 2 uses
  %prol.iter1015.cmp.not = icmp eq i64 %prol.iter1015.next, %xtraiter1013
  br i1 %prol.iter1015.cmp.not, label %.lr.ph122.i.i.i.i.i608.prol.loopexit, label %.lr.ph122.i.i.i.i.i608.prol, !llvm.loop !1795

.lr.ph122.i.i.i.i.i608.prol.loopexit:             ; preds = %.lr.ph122.i.i.i.i.i608.prol, %.lr.ph122.i.i.i.i.i608.preheader979
  %.060121.i.i.i.i.i609.unr = phi i64 [ %.060121.i.i.i.i.i609.ph, %.lr.ph122.i.i.i.i.i608.preheader979 ], [ %i.bkq, %.lr.ph122.i.i.i.i.i608.prol ]
  %i.bkr = sub i64 %.060121.i.i.i.i.i609.ph, %.sroa.68.0.copyload.i.i571
  %i.bks = icmp ugt i64 %i.bkr, -4
  br i1 %i.bks, label %_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EjEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit, label %.lr.ph122.i.i.i.i.i608

.lr.ph122.i.i.i.i.i608:                           ; preds = %.lr.ph122.i.i.i.i.i608.prol.loopexit, %.lr.ph122.i.i.i.i.i608
  %.060121.i.i.i.i.i609 = phi i64 [ %i.blm, %.lr.ph122.i.i.i.i.i608 ], [ %.060121.i.i.i.i.i609.unr, %.lr.ph122.i.i.i.i.i608.prol.loopexit ] ; 6 uses
  %i.bkt = getelementptr inbounds nuw [4 x i8], ptr %.sroa.46.0.copyload.i.i567, i64 %.060121.i.i.i.i.i609
  %i.bku = mul i64 %.060121.i.i.i.i.i609, %i.bhz
  %i.bkv = getelementptr inbounds nuw [4 x i8], ptr %i.bhx, i64 %i.bku
  %i.bkw = load i32, ptr %i.bkv, align 4, !tbaa !65
  store i32 %i.bkw, ptr %i.bkt, align 4, !tbaa !65
  %i.bkx = add nuw i64 %.060121.i.i.i.i.i609, 1   ; 2 uses
  %i.bky = getelementptr inbounds nuw [4 x i8], ptr %.sroa.46.0.copyload.i.i567, i64 %i.bkx
  %i.bkz = mul i64 %i.bkx, %i.bhz
  %i.bla = getelementptr inbounds nuw [4 x i8], ptr %i.bhx, i64 %i.bkz
  %i.blb = load i32, ptr %i.bla, align 4, !tbaa !65
  store i32 %i.blb, ptr %i.bky, align 4, !tbaa !65
  %i.blc = add nuw i64 %.060121.i.i.i.i.i609, 2   ; 2 uses
  %i.bld = getelementptr inbounds nuw [4 x i8], ptr %.sroa.46.0.copyload.i.i567, i64 %i.blc
  %i.ble = mul i64 %i.blc, %i.bhz
  %i.blf = getelementptr inbounds nuw [4 x i8], ptr %i.bhx, i64 %i.ble
  %i.blg = load i32, ptr %i.blf, align 4, !tbaa !65
  store i32 %i.blg, ptr %i.bld, align 4, !tbaa !65
  %i.blh = add nuw i64 %.060121.i.i.i.i.i609, 3   ; 2 uses
  %i.bli = getelementptr inbounds nuw [4 x i8], ptr %.sroa.46.0.copyload.i.i567, i64 %i.blh
  %i.blj = mul i64 %i.blh, %i.bhz
  %i.blk = getelementptr inbounds nuw [4 x i8], ptr %i.bhx, i64 %i.blj
  %i.bll = load i32, ptr %i.blk, align 4, !tbaa !65
  store i32 %i.bll, ptr %i.bli, align 4, !tbaa !65
  %i.blm = add nuw i64 %.060121.i.i.i.i.i609, 4   ; 2 uses
  %exitcond145.not.i.i.i.i.i610.3 = icmp eq i64 %i.blm, %.sroa.68.0.copyload.i.i571
  br i1 %exitcond145.not.i.i.i.i.i610.3, label %_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EjEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit, label %.lr.ph122.i.i.i.i.i608, !llvm.loop !1796

bb.gm:                                            ; preds = %bb.gi
  %i.bln = landingpad { ptr, i32 }
          catch ptr null
  %i.blo = extractvalue { ptr, i32 } %i.bln, 0
  call void @__clang_call_terminate(ptr %i.blo) #38
  unreachable

bb.gn:                                            ; preds = %_ZN7xgboost6common4SpanIKjLm18446744073709551615EEC2EPS2_m.exit.i
  br i1 %i.bih, label %.preheader.i.i23.i.i.i599, label %bb.go

.preheader.i.i23.i.i.i599:                        ; preds = %bb.gn
  %.not132.i.i.i.i.i600 = icmp eq i64 %.sroa.68.0.copyload.i.i571, 0
  br i1 %.not132.i.i.i.i.i600, label %_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EjEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit, label %.lr.ph125.i.i.i.i.i601.preheader

.lr.ph125.i.i.i.i.i601.preheader:                 ; preds = %.preheader.i.i23.i.i.i599
  %xtraiter1007 = and i64 %.sroa.68.0.copyload.i.i571, 3 ; 3 uses
  %i.blp = icmp ult i64 %.sroa.68.0.copyload.i.i571, 4
  br i1 %i.blp, label %.lr.ph125.i.i.i.i.i601.epil.preheader, label %.lr.ph125.i.i.i.i.i601.preheader.new

.lr.ph125.i.i.i.i.i601.preheader.new:             ; preds = %.lr.ph125.i.i.i.i.i601.preheader
  %unroll_iter1011 = and i64 %.sroa.68.0.copyload.i.i571, -4
  br label %.lr.ph125.i.i.i.i.i601

.lr.ph125.i.i.i.i.i601:                           ; preds = %.lr.ph125.i.i.i.i.i601, %.lr.ph125.i.i.i.i.i601.preheader.new
  %.0124.i.i.i.i.i602 = phi i64 [ 0, %.lr.ph125.i.i.i.i.i601.preheader.new ], [ %i.bmn, %.lr.ph125.i.i.i.i.i601 ] ; 6 uses
  %niter1012 = phi i64 [ 0, %.lr.ph125.i.i.i.i.i601.preheader.new ], [ %niter1012.next.3, %.lr.ph125.i.i.i.i.i601 ]
  %i.blq = mul i64 %.0124.i.i.i.i.i602, %.sroa.05.0.copyload.i.i563
  %i.blr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.57.0.copyload.i.i569, i64 %i.blq
  %i.bls = mul i64 %.0124.i.i.i.i.i602, %i.bhz
  %i.blt = getelementptr inbounds nuw [4 x i8], ptr %i.bhx, i64 %i.bls
  %i.blu = load i32, ptr %i.blt, align 4, !tbaa !65
  store i32 %i.blu, ptr %i.blr, align 4, !tbaa !65
  %i.blv = or disjoint i64 %.0124.i.i.i.i.i602, 1 ; 2 uses
  %i.blw = mul i64 %i.blv, %.sroa.05.0.copyload.i.i563
  %i.blx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.57.0.copyload.i.i569, i64 %i.blw
  %i.bly = mul i64 %i.blv, %i.bhz
  %i.blz = getelementptr inbounds nuw [4 x i8], ptr %i.bhx, i64 %i.bly
  %i.bma = load i32, ptr %i.blz, align 4, !tbaa !65
  store i32 %i.bma, ptr %i.blx, align 4, !tbaa !65
  %i.bmb = or disjoint i64 %.0124.i.i.i.i.i602, 2 ; 2 uses
  %i.bmc = mul i64 %i.bmb, %.sroa.05.0.copyload.i.i563
  %i.bmd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.57.0.copyload.i.i569, i64 %i.bmc
  %i.bme = mul i64 %i.bmb, %i.bhz
  %i.bmf = getelementptr inbounds nuw [4 x i8], ptr %i.bhx, i64 %i.bme
  %i.bmg = load i32, ptr %i.bmf, align 4, !tbaa !65
  store i32 %i.bmg, ptr %i.bmd, align 4, !tbaa !65
  %i.bmh = or disjoint i64 %.0124.i.i.i.i.i602, 3 ; 2 uses
  %i.bmi = mul i64 %i.bmh, %.sroa.05.0.copyload.i.i563
  %i.bmj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.57.0.copyload.i.i569, i64 %i.bmi
  %i.bmk = mul i64 %i.bmh, %i.bhz
  %i.bml = getelementptr inbounds nuw [4 x i8], ptr %i.bhx, i64 %i.bmk
  %i.bmm = load i32, ptr %i.bml, align 4, !tbaa !65
  store i32 %i.bmm, ptr %i.bmj, align 4, !tbaa !65
  %i.bmn = add nuw i64 %.0124.i.i.i.i.i602, 4     ; 2 uses
  %niter1012.next.3 = add nuw i64 %niter1012, 4   ; 2 uses
  %niter1012.ncmp.3 = icmp eq i64 %niter1012.next.3, %unroll_iter1011
  br i1 %niter1012.ncmp.3, label %_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EjEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit.loopexit981.unr-lcssa, label %.lr.ph125.i.i.i.i.i601, !llvm.loop !1797

bb.go:                                            ; preds = %bb.gn
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i32 %i.bif, ptr %i.e, align 4, !tbaa !65, !noalias !1860
  store i32 1, ptr %i.f, align 4, !tbaa !65, !noalias !1860
  %.not.i.i.i6.i.i.i574 = icmp slt i32 %i.bif, 1
  br i1 %.not.i.i.i6.i.i.i574, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i8.i.i.i581, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i7.i.i.i575

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i7.i.i.i575: ; preds = %bb.go
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %.preheader107.i.i.i.i.i576

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i8.i.i.i581: ; preds = %bb.go
  call void @_ZN4dmlc14LogCheckFormatIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %5, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
  %.pr.i.i9.i.i.i582 = load ptr, ptr %5, align 8, !tbaa !169
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.not.i.i10.i.i.i583 = icmp eq ptr %.pr.i.i9.i.i.i582, null
  br i1 %.not.i.i10.i.i.i583, label %.preheader107.i.i.i.i.i576, label %bb.gp

bb.gp:                                            ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i8.i.i.i581
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.bmo = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %.noexc.i.i12.i.i.i587 unwind label %bb.gq

.noexc.i.i12.i.i.i587:                            ; preds = %bb.gp
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.bmo, ptr noundef nonnull @.str.200, i32 noundef 196)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i13.i.i.i588 unwind label %bb.gq

_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i13.i.i.i588: ; preds = %.noexc.i.i12.i.i.i587
  %i.bmp = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i14.i.i.i589 unwind label %bb.gr ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i14.i.i.i589: ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i13.i.i.i588
  %i.bmq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bmp, ptr noundef nonnull @.str.3, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i15.i.i.i590 unwind label %bb.gr ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i15.i.i.i590: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i14.i.i.i589
  %i.bmr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bmp, ptr noundef nonnull @.str.201, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74.i.i16.i.i.i591 unwind label %bb.gr ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74.i.i16.i.i.i591: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i15.i.i.i590
  %i.bms = load ptr, ptr %5, align 8, !tbaa !169  ; 2 uses
  %i.bmt = load ptr, ptr %i.bms, align 8, !tbaa !56
  %i.bmu = getelementptr inbounds nuw i8, ptr %i.bms, i64 8
  %i.bmv = load i64, ptr %i.bmu, align 8, !tbaa !120
  %i.bmw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bmp, ptr noundef %i.bmt, i64 noundef %i.bmv)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i17.i.i.i592 unwind label %bb.gr

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i17.i.i.i592: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74.i.i16.i.i.i591
  %i.bmx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bmw, ptr noundef nonnull @.str.2, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77.i.i18.i.i.i593 unwind label %bb.gr ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77.i.i18.i.i.i593: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i17.i.i.i592
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.gt unwind label %bb.gq

bb.gq:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77.i.i18.i.i.i593, %.noexc.i.i12.i.i.i587, %bb.gp
  %i.bmy = landingpad { ptr, i32 }
          cleanup
end_hunk_2
