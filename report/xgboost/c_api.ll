Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/c_api?download=true
inline.NumInlined: 16379
inline.NumDeleted: 3208
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 38
begin_hunk_0_@XGBoosterFeatureScore:bb.a
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0413.3, i64 noundef %i.vq) #36
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit383

_ZNSt6vectorIiSaIiEED2Ev.exit383:                 ; preds = %bb.ew, %bb.ev, %.thread444, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213
  %.pn144.pn.pn = phi { ptr, i32 } [ %i.dm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213 ], [ %i.dr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216 ], [ %i.gm, %.thread444 ], [ %.pn144.pn, %bb.ev ], [ %.pn144.pn, %bb.ew ]
  call void @_ZNSt6vectorIN7xgboost4JsonESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %15) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  call void @_ZN7xgboost10FeatureMapD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %14) #19
  br label %bb.ex

bb.ex:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit383, %bb.aa
  %.pn144.pn.pn.pn = phi { ptr, i32 } [ %.pn144.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit383 ], [ %i.dl, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188
  %.pn144.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn144.pn.pn.pn, %bb.ex ], [ %i.ca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191 ], [ %i.bv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188 ] ; 2 uses
  %i.vr = load ptr, ptr %11, align 8, !tbaa !75   ; 2 uses
  %i.vs = icmp eq ptr %i.vr, %i.am
  br i1 %i.vs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit386, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i384

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i384: ; preds = %bb.ey
  %i.vt = load i64, ptr %i.am, align 8, !tbaa !58
  %i.vu = add i64 %i.vt, 1
  call void @_ZdlPvm(ptr noundef %i.vr, i64 noundef %i.vu) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit386

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit386: ; preds = %bb.ey, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i384
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  %i.vv = load ptr, ptr %10, align 8, !tbaa !75   ; 2 uses
  %i.vw = icmp eq ptr %i.vv, %i.z
  br i1 %i.vw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit389, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i387

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i387: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit386
  %i.vx = load i64, ptr %i.z, align 8, !tbaa !58
  %i.vy = add i64 %i.vx, 1
  call void @_ZdlPvm(ptr noundef %i.vv, i64 noundef %i.vy) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit389

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit389: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit386, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i387, %bb.t
  %.pn144.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bu, %bb.t ], [ %.pn144.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i387 ], [ %.pn144.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit386 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  %i.vz = load ptr, ptr %9, align 8, !tbaa !61    ; 4 uses
  %.not.i.i.i390 = icmp eq ptr %i.vz, null
  br i1 %.not.i.i.i390, label %_ZN7xgboost4JsonD2Ev.exit391, label %bb.ez

bb.ez:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit389
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vz, i64 8
  %i.wb = atomicrmw sub ptr %i.wa, i32 1 release, align 4
  %i.wc = icmp eq i32 %i.wb, 1
  br i1 %i.wc, label %bb.fa, label %_ZN7xgboost4JsonD2Ev.exit391

bb.fa:                                            ; preds = %bb.ez
  fence acquire
  %i.wd = load ptr, ptr %i.vz, align 8, !tbaa !63
  %i.we = getelementptr inbounds nuw i8, ptr %i.wd, i64 8
  %i.wf = load ptr, ptr %i.we, align 8
  call void %i.wf(ptr noundef nonnull align 8 dereferenceable(24) %i.vz) #19, !inline_history !6
  br label %_ZN7xgboost4JsonD2Ev.exit391

_ZN7xgboost4JsonD2Ev.exit391:                     ; preds = %bb.fa, %bb.ez, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit389, %bb.s
  %.pn144.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bt, %bb.s ], [ %.pn144.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit389 ], [ %.pn144.pn.pn.pn.pn.pn, %bb.ez ], [ %.pn144.pn.pn.pn.pn.pn, %bb.fa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %.body

.body:                                            ; preds = %_ZN7xgboost4JsonD2Ev.exit391, %bb.k, %bb.d, %bb.f
  %.pn144.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.m, %bb.d ], [ %.pn, %bb.k ], [ %.pn144.pn.pn.pn.pn.pn.pn, %_ZN7xgboost4JsonD2Ev.exit391 ], [ %i.p, %bb.f ] ; 3 uses
  %.33 = extractvalue { ptr, i32 } %.pn144.pn.pn.pn.pn.pn.pn.pn.pn.pn, 0 ; 2 uses
  %.3395 = extractvalue { ptr, i32 } %.pn144.pn.pn.pn.pn.pn.pn.pn.pn.pn, 1 ; 2 uses
  %i.wg = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN4dmlc5ErrorE) #19
  %i.wh = icmp eq i32 %.3395, %i.wg
  br i1 %i.wh, label %bb.fb, label %bb.fc

bb.fb:                                            ; preds = %.body
  %i.wi = call ptr @__cxa_begin_catch(ptr %.33) #19 ; 2 uses
  %i.wj = load ptr, ptr %i.wi, align 8, !tbaa !63
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wj, i64 16
  %i.wl = load ptr, ptr %i.wk, align 8
  %i.wm = call noundef ptr %i.wl(ptr noundef nonnull align 8 dereferenceable(16) %i.wi) #19, !inline_history !7
  invoke void @_Z18XGBAPISetLastErrorPKc(ptr noundef %i.wm)
          to label %_Z21XGBAPIHandleExceptionRKN4dmlc5ErrorE.exit unwind label %bb.fk

_Z21XGBAPIHandleExceptionRKN4dmlc5ErrorE.exit:    ; preds = %bb.fb
  call void @__cxa_end_catch()
  br label %bb.fl

bb.fc:                                            ; preds = %.body
  %i.wn = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #19
  %i.wo = icmp eq i32 %.3395, %i.wn
  br i1 %i.wo, label %bb.fd, label %bb.fm

bb.fd:                                            ; preds = %bb.fc
  %i.wp = call ptr @__cxa_begin_catch(ptr %.33) #19 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #19
  %i.wq = load ptr, ptr %i.wp, align 8, !tbaa !63
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wq, i64 16
  %i.ws = load ptr, ptr %i.wr, align 8
  %i.wt = call noundef ptr %i.ws(ptr noundef nonnull align 8 dereferenceable(8) %i.wp) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef %i.wt, ptr noundef nonnull align 1 dereferenceable(1) %35)
          to label %bb.fe unwind label %bb.fg

bb.fe:                                            ; preds = %bb.fd
  invoke void @_ZNSt13runtime_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %33, ptr noundef nonnull align 8 dereferenceable(32) %34)
          to label %bb.ff unwind label %bb.fh

bb.ff:                                            ; preds = %bb.fe
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4dmlc5ErrorE, i64 16), ptr %33, align 8, !tbaa !63
  %i.wu = call noundef ptr @_ZNKSt13runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(16) %33) #19, !inline_history !7
  invoke void @_Z18XGBAPISetLastErrorPKc(ptr noundef %i.wu)
          to label %_Z21XGBAPIHandleExceptionRKN4dmlc5ErrorE.exit395 unwind label %bb.fi

_Z21XGBAPIHandleExceptionRKN4dmlc5ErrorE.exit395: ; preds = %bb.ff
  call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %33) #19
  %i.wv = load ptr, ptr %34, align 8, !tbaa !75   ; 2 uses
  %i.ww = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 2 uses
  %i.wx = icmp eq ptr %i.wv, %i.ww
  br i1 %i.wx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit398, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i396

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i396: ; preds = %_Z21XGBAPIHandleExceptionRKN4dmlc5ErrorE.exit395
  %i.wy = load i64, ptr %i.ww, align 8, !tbaa !58
  %i.wz = add i64 %i.wy, 1
  call void @_ZdlPvm(ptr noundef %i.wv, i64 noundef %i.wz) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit398

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit398: ; preds = %_Z21XGBAPIHandleExceptionRKN4dmlc5ErrorE.exit395, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i396
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #19
  call void @__cxa_end_catch()
  br label %bb.fl

bb.fg:                                            ; preds = %bb.fd
  %i.xa = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit401

bb.fh:                                            ; preds = %bb.fe
  %i.xb = landingpad { ptr, i32 }
          cleanup
  br label %bb.fj

bb.fi:                                            ; preds = %bb.ff
  %i.xc = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %33) #19
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fi, %bb.fh
  %.pn155 = phi { ptr, i32 } [ %i.xc, %bb.fi ], [ %i.xb, %bb.fh ] ; 2 uses
  %i.xd = load ptr, ptr %34, align 8, !tbaa !75   ; 2 uses
  %i.xe = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 2 uses
  %i.xf = icmp eq ptr %i.xd, %i.xe
  br i1 %i.xf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit401, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i399

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i399: ; preds = %bb.fj
  %i.xg = load i64, ptr %i.xe, align 8, !tbaa !58
  %i.xh = add i64 %i.xg, 1
  call void @_ZdlPvm(ptr noundef %i.xd, i64 noundef %i.xh) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit401

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit401: ; preds = %bb.fj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i399, %bb.fg
  %.pn155.pn = phi { ptr, i32 } [ %i.xa, %bb.fg ], [ %.pn155, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i399 ], [ %.pn155, %bb.fj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #19
  invoke void @__cxa_end_catch()
          to label %bb.fm unwind label %bb.fn

bb.fk:                                            ; preds = %bb.fb
  %i.xi = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.fm unwind label %bb.fn

bb.fl:                                            ; preds = %_ZN7xgboost4JsonD2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit398, %_Z21XGBAPIHandleExceptionRKN4dmlc5ErrorE.exit
  %.0 = phi i32 [ -1, %_Z21XGBAPIHandleExceptionRKN4dmlc5ErrorE.exit ], [ -1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit398 ], [ 0, %_ZN7xgboost4JsonD2Ev.exit ]
  ret i32 %.0

bb.fm:                                            ; preds = %bb.fk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit401, %bb.fc
  %.merged = phi { ptr, i32 } [ %.pn155.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit401 ], [ %.pn144.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.fc ], [ %i.xi, %bb.fk ]
  resume { ptr, i32 } %.merged

bb.fn:                                            ; preds = %bb.fk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit401, %bb.eh, %bb.eb, %bb.dv, %bb.dj, %bb.cq, %bb.ci, %bb.by, %bb.br, %bb.j
  %i.xj = landingpad { ptr, i32 }
          catch ptr null
  %i.xk = extractvalue { ptr, i32 } %i.xj, 0
  call void @__clang_call_terminate(ptr %i.xk) #38
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN7xgboost4JsonESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !94   ; 4 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !93     ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 6 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !95
  %i.j = load ptr, ptr %0, align 8, !tbaa !93     ; 5 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64                 ; 4 uses
  %i.m = sub i64 %i.k, %i.l
  %i.n = icmp ugt i64 %i.f, %i.m
  br i1 %i.n, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.o = icmp ugt i64 %i.g, 1152921504606846975
  br i1 %i.o, label %bb.d, label %_ZNSt12_Vector_baseIN7xgboost4JsonESaIS1_EE11_M_allocateEm.exit.i, !prof !79

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #37
  unreachable

_ZNSt12_Vector_baseIN7xgboost4JsonESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #35 ; 3 uses
  %.not11.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not11.i.i.i.i.i, label %_ZNSt6vectorIN7xgboost4JsonESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt12_Vector_baseIN7xgboost4JsonESaIS1_EE11_M_allocateEm.exit.i, %_ZSt10_ConstructIN7xgboost4JsonEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.u, %_ZSt10_ConstructIN7xgboost4JsonEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.p, %_ZNSt12_Vector_baseIN7xgboost4JsonESaIS1_EE11_M_allocateEm.exit.i ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i = phi ptr [ %i.t, %_ZSt10_ConstructIN7xgboost4JsonEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.c, %_ZNSt12_Vector_baseIN7xgboost4JsonESaIS1_EE11_M_allocateEm.exit.i ] ; 2 uses
  %i.q = load ptr, ptr %.sroa.08.012.i.i.i.i.i, align 8, !tbaa !61 ; 3 uses
  store ptr %i.q, ptr %.013.i.i.i.i.i, align 8, !tbaa !61
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructIN7xgboost4JsonEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = atomicrmw add ptr %i.r, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZSt10_ConstructIN7xgboost4JsonEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructIN7xgboost4JsonEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i = icmp eq ptr %i.t, %i.b
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN7xgboost4JsonESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !29

_ZNSt6vectorIN7xgboost4JsonESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit: ; preds = %_ZSt10_ConstructIN7xgboost4JsonEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i, %_ZNSt12_Vector_baseIN7xgboost4JsonESaIS1_EE11_M_allocateEm.exit.i
  %i.v = load ptr, ptr %0, align 8, !tbaa !93     ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !94   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.v, %i.x
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN7xgboost4JsonEEvT_S3_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorIN7xgboost4JsonESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit, %_ZSt8_DestroyIN7xgboost4JsonEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.af, %_ZSt8_DestroyIN7xgboost4JsonEEvPT_.exit.i.i ], [ %i.v, %_ZNSt6vectorIN7xgboost4JsonESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit ] ; 2 uses
  %i.y = load ptr, ptr %.05.i.i, align 8, !tbaa !61 ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN7xgboost4JsonEEvPT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = atomicrmw sub ptr %i.z, i32 1 release, align 4
  %i.ab = icmp eq i32 %i.aa, 1
  br i1 %i.ab, label %bb.g, label %_ZSt8_DestroyIN7xgboost4JsonEEvPT_.exit.i.i

bb.g:                                             ; preds = %bb.f
  fence acquire
  %i.ac = load ptr, ptr %i.y, align 8, !tbaa !63
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(24) %i.y) #19, !inline_history !8
  br label %_ZSt8_DestroyIN7xgboost4JsonEEvPT_.exit.i.i

_ZSt8_DestroyIN7xgboost4JsonEEvPT_.exit.i.i:      ; preds = %bb.g, %bb.f, %.lr.ph.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i25 = icmp eq ptr %i.af, %i.x
  br i1 %.not.i.i25, label %_ZSt8_DestroyIPN7xgboost4JsonEEvT_S3_.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !4

_ZSt8_DestroyIPN7xgboost4JsonEEvT_S3_.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN7xgboost4JsonEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !93
  br label %_ZSt8_DestroyIPN7xgboost4JsonEEvT_S3_.exit

_ZSt8_DestroyIPN7xgboost4JsonEEvT_S3_.exit:       ; preds = %_ZSt8_DestroyIPN7xgboost4JsonEEvT_S3_.exitthread-pre-split, %_ZNSt6vectorIN7xgboost4JsonESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit
  %i.ag = phi ptr [ %.pr, %_ZSt8_DestroyIPN7xgboost4JsonEEvT_S3_.exitthread-pre-split ], [ %i.v, %_ZNSt6vectorIN7xgboost4JsonESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit ] ; 3 uses
  %.not.i = icmp eq ptr %i.ag, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN7xgboost4JsonESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN7xgboost4JsonEEvT_S3_.exit
  %i.ah = load ptr, ptr %i.h, align 8, !tbaa !95
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = ptrtoint ptr %i.ag to i64
  %i.ak = sub i64 %i.ai, %i.aj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.ak) #36
  br label %_ZNSt12_Vector_baseIN7xgboost4JsonESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN7xgboost4JsonESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZSt8_DestroyIPN7xgboost4JsonEEvT_S3_.exit, %bb.h
  store ptr %i.p, ptr %0, align 8, !tbaa !93
  %i.al = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.f
  store ptr %i.al, ptr %i.h, align 8, !tbaa !95
  br label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN7xgboost4JsonESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit

bb.i:                                             ; preds = %bb.b
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !94 ; 3 uses
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = sub i64 %i.ao, %i.l                     ; 3 uses
  %.not24 = icmp ult i64 %i.ap, %i.f
  br i1 %.not24, label %bb.p, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = icmp sgt i64 %i.g, 0
  br i1 %i.aq, label %.lr.ph.i.i.i.i.i26, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7xgboost4JsonESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

.lr.ph.i.i.i.i.i26:                               ; preds = %bb.j, %_ZN7xgboost4JsonaSERKS0_.exit.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.bd, %_ZN7xgboost4JsonaSERKS0_.exit.i.i.i.i.i ], [ %i.g, %bb.j ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.bc, %_ZN7xgboost4JsonaSERKS0_.exit.i.i.i.i.i ], [ %i.j, %bb.j ] ; 3 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.bb, %_ZN7xgboost4JsonaSERKS0_.exit.i.i.i.i.i ], [ %i.c, %bb.j ] ; 2 uses
  %i.ar = load ptr, ptr %.0910.i.i.i.i.i, align 8, !tbaa !61 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i27 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i.i.i.i.i.i.i27, label %_ZN7xgboost12IntrusivePtrINS_5ValueEEC2ERKS2_.exit.i.i.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i26
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = atomicrmw add ptr %i.as, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN7xgboost12IntrusivePtrINS_5ValueEEC2ERKS2_.exit.i.i.i.i.i.i.i

_ZN7xgboost12IntrusivePtrINS_5ValueEEC2ERKS2_.exit.i.i.i.i.i.i.i: ; preds = %bb.k, %.lr.ph.i.i.i.i.i26
  %i.au = load ptr, ptr %.0811.i.i.i.i.i, align 8, !tbaa !74 ; 4 uses
  store ptr %i.ar, ptr %.0811.i.i.i.i.i, align 8, !tbaa !74
  %.not.i.i2.i.i.i.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i2.i.i.i.i.i.i.i, label %_ZN7xgboost4JsonaSERKS0_.exit.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %_ZN7xgboost12IntrusivePtrINS_5ValueEEC2ERKS2_.exit.i.i.i.i.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = atomicrmw sub ptr %i.av, i32 1 release, align 4
  %i.ax = icmp eq i32 %i.aw, 1
  br i1 %i.ax, label %bb.m, label %_ZN7xgboost4JsonaSERKS0_.exit.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  fence acquire
  %i.ay = load ptr, ptr %i.au, align 8, !tbaa !63
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8
  tail call void %i.ba(ptr noundef nonnull align 8 dereferenceable(24) %i.au) #19, !inline_history !879
  br label %_ZN7xgboost4JsonaSERKS0_.exit.i.i.i.i.i

_ZN7xgboost4JsonaSERKS0_.exit.i.i.i.i.i:          ; preds = %bb.m, %bb.l, %_ZN7xgboost12IntrusivePtrINS_5ValueEEC2ERKS2_.exit.i.i.i.i.i.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8 ; 3 uses
  %i.bd = add nsw i64 %.012.i.i.i.i.i, -1
  %i.be = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.be, label %.lr.ph.i.i.i.i.i26, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7xgboost4JsonESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit.loopexit, !llvm.loop !880

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7xgboost4JsonESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit.loopexit: ; preds = %_ZN7xgboost4JsonaSERKS0_.exit.i.i.i.i.i
  %.pre = load ptr, ptr %i.am, align 8, !tbaa !280
  %.pre53 = ptrtoint ptr %i.bc to i64
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7xgboost4JsonESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7xgboost4JsonESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7xgboost4JsonESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit.loopexit, %bb.j
  %.pre-phi54 = phi i64 [ %.pre53, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7xgboost4JsonESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit.loopexit ], [ %i.l, %bb.j ]
  %i.bf = phi ptr [ %.pre, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7xgboost4JsonESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit.loopexit ], [ %i.an, %bb.j ] ; 2 uses
  %.08.lcssa.i.i.i.i.i = phi ptr [ %i.bc, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7xgboost4JsonESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit.loopexit ], [ %i.j, %bb.j ]
  %.not4.i.i28 = icmp eq ptr %.08.lcssa.i.i.i.i.i, %i.bf
  br i1 %.not4.i.i28, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN7xgboost4JsonESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit, label %.lr.ph.i.i29.preheader

.lr.ph.i.i29.preheader:                           ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7xgboost4JsonESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit
  %i.bg = sub i64 %.pre-phi54, %i.l
  %i.bh = getelementptr inbounds i8, ptr %i.j, i64 %i.bg
  br label %.lr.ph.i.i29

.lr.ph.i.i29:                                     ; preds = %.lr.ph.i.i29.preheader, %_ZSt8_DestroyIN7xgboost4JsonEEvPT_.exit.i.i31
  %.sroa.01.05.i.i = phi ptr [ %i.bp, %_ZSt8_DestroyIN7xgboost4JsonEEvPT_.exit.i.i31 ], [ %i.bh, %.lr.ph.i.i29.preheader ] ; 2 uses
  %i.bi = load ptr, ptr %.sroa.01.05.i.i, align 8, !tbaa !61 ; 4 uses
  %.not.i.i.i.i.i.i30 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i.i.i30, label %_ZSt8_DestroyIN7xgboost4JsonEEvPT_.exit.i.i31, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i29
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = atomicrmw sub ptr %i.bj, i32 1 release, align 4
  %i.bl = icmp eq i32 %i.bk, 1
  br i1 %i.bl, label %bb.o, label %_ZSt8_DestroyIN7xgboost4JsonEEvPT_.exit.i.i31

bb.o:                                             ; preds = %bb.n
  fence acquire
  %i.bm = load ptr, ptr %i.bi, align 8, !tbaa !63
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8
  tail call void %i.bo(ptr noundef nonnull align 8 dereferenceable(24) %i.bi) #19, !inline_history !881
  br label %_ZSt8_DestroyIN7xgboost4JsonEEvPT_.exit.i.i31

_ZSt8_DestroyIN7xgboost4JsonEEvPT_.exit.i.i31:    ; preds = %bb.o, %bb.n, %.lr.ph.i.i29
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 8 ; 2 uses
  %.not.i.i32 = icmp eq ptr %i.bp, %i.bf
  br i1 %.not.i.i32, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN7xgboost4JsonESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit, label %.lr.ph.i.i29, !llvm.loop !882

bb.p:                                             ; preds = %bb.i
  %i.bq = ashr exact i64 %i.ap, 3                 ; 2 uses
  %i.br = icmp sgt i64 %i.bq, 0
  br i1 %i.br, label %.lr.ph.i.i.i.i.i34, label %_ZSt4copyIPN7xgboost4JsonES2_ET0_T_S4_S3_.exit

.lr.ph.i.i.i.i.i34:                               ; preds = %bb.p, %_ZN7xgboost4JsonaSERKS0_.exit.i.i.i.i.i41
  %.012.i.i.i.i.i35 = phi i64 [ %i.ce, %_ZN7xgboost4JsonaSERKS0_.exit.i.i.i.i.i41 ], [ %i.bq, %bb.p ] ; 2 uses
  %.0811.i.i.i.i.i36 = phi ptr [ %i.cd, %_ZN7xgboost4JsonaSERKS0_.exit.i.i.i.i.i41 ], [ %i.j, %bb.p ] ; 3 uses
  %.0910.i.i.i.i.i37 = phi ptr [ %i.cc, %_ZN7xgboost4JsonaSERKS0_.exit.i.i.i.i.i41 ], [ %i.c, %bb.p ] ; 2 uses
  %i.bs = load ptr, ptr %.0910.i.i.i.i.i37, align 8, !tbaa !61 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i38 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i.i.i.i.i.i.i38, label %_ZN7xgboost12IntrusivePtrINS_5ValueEEC2ERKS2_.exit.i.i.i.i.i.i.i39, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i.i.i34
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = atomicrmw add ptr %i.bt, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN7xgboost12IntrusivePtrINS_5ValueEEC2ERKS2_.exit.i.i.i.i.i.i.i39

_ZN7xgboost12IntrusivePtrINS_5ValueEEC2ERKS2_.exit.i.i.i.i.i.i.i39: ; preds = %bb.q, %.lr.ph.i.i.i.i.i34
  %i.bv = load ptr, ptr %.0811.i.i.i.i.i36, align 8, !tbaa !74 ; 4 uses
  store ptr %i.bs, ptr %.0811.i.i.i.i.i36, align 8, !tbaa !74
  %.not.i.i2.i.i.i.i.i.i.i40 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i2.i.i.i.i.i.i.i40, label %_ZN7xgboost4JsonaSERKS0_.exit.i.i.i.i.i41, label %bb.r

bb.r:                                             ; preds = %_ZN7xgboost12IntrusivePtrINS_5ValueEEC2ERKS2_.exit.i.i.i.i.i.i.i39
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = atomicrmw sub ptr %i.bw, i32 1 release, align 4
  %i.by = icmp eq i32 %i.bx, 1
  br i1 %i.by, label %bb.s, label %_ZN7xgboost4JsonaSERKS0_.exit.i.i.i.i.i41

bb.s:                                             ; preds = %bb.r
  fence acquire
  %i.bz = load ptr, ptr %i.bv, align 8, !tbaa !63
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8
  tail call void %i.cb(ptr noundef nonnull align 8 dereferenceable(24) %i.bv) #19, !inline_history !883
  br label %_ZN7xgboost4JsonaSERKS0_.exit.i.i.i.i.i41

_ZN7xgboost4JsonaSERKS0_.exit.i.i.i.i.i41:        ; preds = %bb.s, %bb.r, %_ZN7xgboost12IntrusivePtrINS_5ValueEEC2ERKS2_.exit.i.i.i.i.i.i.i39
  %i.cc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i37, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i36, i64 8
  %i.ce = add nsw i64 %.012.i.i.i.i.i35, -1
  %i.cf = icmp sgt i64 %.012.i.i.i.i.i35, 1
  br i1 %i.cf, label %.lr.ph.i.i.i.i.i34, label %_ZSt4copyIPN7xgboost4JsonES2_ET0_T_S4_S3_.exit.loopexit, !llvm.loop !884

_ZSt4copyIPN7xgboost4JsonES2_ET0_T_S4_S3_.exit.loopexit: ; preds = %_ZN7xgboost4JsonaSERKS0_.exit.i.i.i.i.i41
  %.pre44 = load ptr, ptr %1, align 8, !tbaa !93
  %.pre45 = load ptr, ptr %i.am, align 8, !tbaa !94 ; 2 uses
  %.pre46 = load ptr, ptr %0, align 8, !tbaa !93
  %.pre47 = load ptr, ptr %i.a, align 8, !tbaa !94
  %.pre48 = ptrtoint ptr %.pre45 to i64
  %.pre49 = ptrtoint ptr %.pre46 to i64
end_hunk_0
