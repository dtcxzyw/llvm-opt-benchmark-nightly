Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3DfgSynthesize?download=true
inline.NumInlined: 8228
inline.NumDeleted: 2495
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN18AstToDfgSynthesize13gatherDriversEP15DfgVertexSplice:bb.a
  %i.k = ashr exact i64 %i.j, 3                   ; 3 uses
  %i.l = icmp ugt i64 %i.k, 384307168202282325
  br i1 %i.l, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.606) #29
  unreachable

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %i.f, %i.g
  br i1 %.not, label %_ZNSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIN18AstToDfgSynthesize6DriverESaIS1_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN18AstToDfgSynthesize6DriverESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = mul nuw nsw i64 %i.k, 24
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #32 ; 3 uses
  %.pre17.pre = load ptr, ptr %i.d, align 8, !tbaa !156
  %.pre.pre = load ptr, ptr %i.e, align 8, !tbaa !186
  store ptr %i.p, ptr %0, align 8, !tbaa !502
  store ptr %i.p, ptr %i.n, align 8, !tbaa !539
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.k
  store ptr %i.q, ptr %i.m, align 8, !tbaa !503
  br label %_ZNSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE7reserveEm.exit

_ZNSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIN18AstToDfgSynthesize6DriverESaIS1_EE11_M_allocateEm.exit.i, %bb.b
  %i.r = phi ptr [ %.pre17.pre, %_ZNSt12_Vector_baseIN18AstToDfgSynthesize6DriverESaIS1_EE11_M_allocateEm.exit.i ], [ %i.g, %bb.b ] ; 2 uses
  %i.s = phi ptr [ %.pre.pre, %_ZNSt12_Vector_baseIN18AstToDfgSynthesize6DriverESaIS1_EE11_M_allocateEm.exit.i ], [ %i.f, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  store i8 1, ptr %i.c, align 1, !tbaa !304
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr %0, ptr %2, align 8, !tbaa !551
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.c, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !306
  store ptr @_ZNSt17_Function_handlerIFbR9DfgVertexjP8FileLineEZN18AstToDfgSynthesize13gatherDriversEP15DfgVertexSpliceEUlS1_jS3_E_E9_M_invokeERKSt9_Any_dataS1_OjOS3_, ptr %i.u, align 8, !tbaa !553
  store ptr @_ZNSt17_Function_handlerIFbR9DfgVertexjP8FileLineEZN18AstToDfgSynthesize13gatherDriversEP15DfgVertexSpliceEUlS1_jS3_E_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, ptr %i.t, align 8, !tbaa !166
  %.not11.not.i = icmp eq ptr %i.s, %i.r
  br i1 %.not11.not.i, label %_ZN15DfgVertexSplice13foreachDriverESt8functionIFbR9DfgVertexjP8FileLineEE.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE7reserveEm.exit
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = ptrtoint ptr %i.r to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = ashr exact i64 %i.x, 3
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 96
  br label %bb.c

bb.c:                                             ; preds = %.noexc11, %.lr.ph.i
  %.0812.i = phi i64 [ 0, %.lr.ph.i ], [ %i.am, %.noexc11 ] ; 3 uses
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !156
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.0812.i
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !157
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !160
  %i.ae = load ptr, ptr %i.z, align 8, !tbaa !350
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %.0812.i ; 2 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !504
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !352
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.ag, ptr %i.a, align 4, !tbaa !51
  store ptr %i.ai, ptr %i.b, align 8, !tbaa !369
  %i.aj = load ptr, ptr %i.t, align 8, !tbaa !166
  %.not.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i, label %bb.d, label %_ZNKSt8functionIFbR9DfgVertexjP8FileLineEEclES1_jS3_.exit.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt25__throw_bad_function_callv() #29
          to label %.noexc10 unwind label %.loopexit.split-lp

.noexc10:                                         ; preds = %bb.d
  unreachable

_ZNKSt8functionIFbR9DfgVertexjP8FileLineEEclES1_jS3_.exit.i: ; preds = %bb.c
  %i.ak = load ptr, ptr %i.u, align 8, !tbaa !553
  %i.al = invoke noundef zeroext i1 %i.ak(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(96) %i.ad, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %.noexc11 unwind label %.loopexit, !inline_history !13

.noexc11:                                         ; preds = %_ZNKSt8functionIFbR9DfgVertexjP8FileLineEEclES1_jS3_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.am = add nuw i64 %.0812.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.am, %i.y
  %or.cond = select i1 %i.al, i1 true, i1 %exitcond.not.i
  br i1 %or.cond, label %_ZN15DfgVertexSplice13foreachDriverESt8functionIFbR9DfgVertexjP8FileLineEE.exit, label %bb.c, !llvm.loop !14

_ZN15DfgVertexSplice13foreachDriverESt8functionIFbR9DfgVertexjP8FileLineEE.exit: ; preds = %.noexc11
  %.pr = load ptr, ptr %i.t, align 8, !tbaa !166  ; 2 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %_ZN15DfgVertexSplice13foreachDriverESt8functionIFbR9DfgVertexjP8FileLineEE.exit.thread

_ZN15DfgVertexSplice13foreachDriverESt8functionIFbR9DfgVertexjP8FileLineEE.exit.thread: ; preds = %_ZNSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE7reserveEm.exit, %_ZN15DfgVertexSplice13foreachDriverESt8functionIFbR9DfgVertexjP8FileLineEE.exit
  %i.an = phi ptr [ %.pr, %_ZN15DfgVertexSplice13foreachDriverESt8functionIFbR9DfgVertexjP8FileLineEE.exit ], [ @_ZNSt17_Function_handlerIFbR9DfgVertexjP8FileLineEZN18AstToDfgSynthesize13gatherDriversEP15DfgVertexSpliceEUlS1_jS3_E_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, %_ZNSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE7reserveEm.exit ]
  %i.ao = invoke noundef zeroext i1 %i.an(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %_ZN15DfgVertexSplice13foreachDriverESt8functionIFbR9DfgVertexjP8FileLineEE.exit.thread
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  call void @__clang_call_terminate(ptr %i.aq) #33
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZN15DfgVertexSplice13foreachDriverESt8functionIFbR9DfgVertexjP8FileLineEE.exit, %_ZN15DfgVertexSplice13foreachDriverESt8functionIFbR9DfgVertexjP8FileLineEE.exit.thread
  %i.ar = load i8, ptr %i.c, align 1, !tbaa !304, !range !99, !noundef !100
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPN18AstToDfgSynthesize6DriverESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.at = load ptr, ptr %0, align 8, !tbaa !540
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !540
  invoke void @_ZSt13__stable_sortIN9__gnu_cxx17__normal_iteratorIPN18AstToDfgSynthesize6DriverESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_(ptr %i.at, ptr %i.av)
          to label %_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPN18AstToDfgSynthesize6DriverESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit unwind label %bb.j

.loopexit:                                        ; preds = %_ZNKSt8functionIFbR9DfgVertexjP8FileLineEEclES1_jS3_.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

.loopexit.split-lp:                               ; preds = %bb.d
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.aw = load ptr, ptr %i.t, align 8, !tbaa !166 ; 2 uses
  %.not.i13 = icmp eq ptr %i.aw, null
  br i1 %.not.i13, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ax = invoke noundef zeroext i1 %i.aw(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %bb.k unwind label %bb.i       ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.ay = landingpad { ptr, i32 }
          catch ptr null
  %i.az = extractvalue { ptr, i32 } %i.ay, 0
  call void @__clang_call_terminate(ptr %i.az) #33
  unreachable

bb.j:                                             ; preds = %bb.f
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPN18AstToDfgSynthesize6DriverESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit: ; preds = %bb.f, %_ZNSt14_Function_baseD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  ret void

bb.k:                                             ; preds = %bb.j, %bb.g, %bb.h
  %.pn = phi { ptr, i32 } [ %i.ba, %bb.j ], [ %lpad.phi, %bb.g ], [ %lpad.phi, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  %.pre18 = load ptr, ptr %0, align 8, !tbaa !502 ; 3 uses
  %.not.i.i.i15 = icmp eq ptr %.pre18, null
  br i1 %.not.i.i.i15, label %_ZNSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !503
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = ptrtoint ptr %.pre18 to i64
  %i.bf = sub i64 %i.bd, %i.be
  call void @_ZdlPvm(ptr noundef nonnull %.pre18, i64 noundef %i.bf) #31
  br label %_ZNSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EED2Ev.exit

_ZNSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EED2Ev.exit: ; preds = %bb.k, %bb.l
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN18AstToDfgSynthesize16normalizeDriversER12DfgVertexVarRSt6vectorINS_6DriverESaIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !540    ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !540  ; 3 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.cq, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !542
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !388, !nonnull !100, !align !235
  %i.i = load i8, ptr %i.h, align 8, !tbaa !434
  %i.j = icmp eq i8 %i.i, 0                       ; 5 uses
  %i.k = ptrtoint ptr %i.d to i64
  %i.l = ptrtoint ptr %i.b to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = sdiv exact i64 %i.m, 24                  ; 2 uses
  %i.o = icmp ugt i64 %i.n, 1
  br i1 %i.o, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.v = select i1 %i.j, ptr @.str.612, ptr @.str.613
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  %i.x = select i1 %i.j, i64 3, i64 7             ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 7 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 7 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 10 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  %.sroa.sel.v.sroa.sel.v = select i1 %i.j, i64 19, i64 23
  %.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %7, i64 %.sroa.sel.v.sroa.sel.v
  br label %bb.f

._crit_edge.loopexit:                             ; preds = %bb.by
  %i.av = add i64 %.1126, 1
  %18 = xor i1 %.2129, true
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %.0127.lcssa = phi i1 [ true, %bb.b ], [ %18, %._crit_edge.loopexit ] ; 2 uses
  %.0125.lcssa = phi i64 [ 1, %bb.b ], [ %i.av, %._crit_edge.loopexit ] ; 4 uses
  %.lcssa478 = phi ptr [ %i.d, %bb.b ], [ %i.ot, %._crit_edge.loopexit ]
  %.lcssa447 = phi ptr [ %i.b, %bb.b ], [ %i.ou, %._crit_edge.loopexit ]
  %.lcssa416 = phi i64 [ %i.n, %bb.b ], [ %i.oy, %._crit_edge.loopexit ] ; 3 uses
  %i.aw = icmp ugt i64 %.0125.lcssa, %.lcssa416
  br i1 %i.aw, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %i.ax = sub nuw i64 %.0125.lcssa, %.lcssa416
  call void @_ZNSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.ax)
  br label %_ZNSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE6resizeEm.exit

bb.d:                                             ; preds = %._crit_edge
  %i.ay = icmp ult i64 %.0125.lcssa, %.lcssa416
  br i1 %i.ay, label %bb.e, label %_ZNSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE6resizeEm.exit

bb.e:                                             ; preds = %bb.d
  %i.az = getelementptr inbounds nuw [24 x i8], ptr %.lcssa447, i64 %.0125.lcssa ; 2 uses
  %.not.i.i = icmp eq ptr %.lcssa478, %i.az
  br i1 %.not.i.i, label %_ZNSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE6resizeEm.exit, label %_ZSt8_DestroyIPN18AstToDfgSynthesize6DriverES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN18AstToDfgSynthesize6DriverES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %bb.e
  store ptr %i.az, ptr %i.c, align 8, !tbaa !539
  br label %_ZNSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE6resizeEm.exit

_ZNSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE6resizeEm.exit: ; preds = %bb.c, %bb.d, %bb.e, %_ZSt8_DestroyIPN18AstToDfgSynthesize6DriverES1_EvT_S3_RSaIT0_E.exit.i.i
  %or.cond3 = and i1 %i.j, %.0127.lcssa
  br i1 %or.cond3, label %bb.cp, label %bb.cq

bb.f:                                             ; preds = %.lr.ph, %bb.by
  %i.ba = phi ptr [ %i.b, %.lr.ph ], [ %i.ou, %bb.by ] ; 2 uses
  %.0121700 = phi i64 [ 1, %.lr.ph ], [ %.3124, %bb.by ] ; 4 uses
  %.0125698 = phi i64 [ 0, %.lr.ph ], [ %.1126, %bb.by ] ; 11 uses
  %.0127697 = phi i1 [ false, %.lr.ph ], [ %.2129, %bb.by ] ; 4 uses
  %.not131 = icmp ult i64 %.0125698, %.0121700
  br i1 %.not131, label %bb.h, label %bb.g, !prof !149

bb.g:                                             ; preds = %bb.f
  %i.bb = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.82, i32 noundef 833) ; 0 uses
  %i.bc = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.bd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef nonnull @.str.609)
  call void @_ZNK9DfgVertex15v3errorEndFatalERNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(112) %i.bd) #29
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %i.ba, i64 %.0125698 ; 10 uses
  %i.bf = getelementptr inbounds nuw [24 x i8], ptr %i.ba, i64 %.0121700 ; 13 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !542
  %.not341 = icmp eq ptr %i.bg, null
  br i1 %.not341, label %bb.by, label %bb.i, !llvm.loop !840

bb.i:                                             ; preds = %bb.h
  %i.bh = load ptr, ptr %i.be, align 8, !tbaa !542
  %.not342 = icmp eq ptr %i.bh, null
  br i1 %.not342, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.be, ptr noundef nonnull align 8 dereferenceable(24) %i.bf, i64 24, i1 false), !tbaa.struct !554
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, i8 0, i64 24, i1 false)
  br label %bb.by, !llvm.loop !840

bb.k:                                             ; preds = %bb.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 3 uses
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !543 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !543 ; 2 uses
  %.not.i.i161 = icmp eq i32 %i.bj, %i.bl
  br i1 %.not.i.i161, label %bb.l, label %.split808

.split808:                                        ; preds = %bb.k
  %i.bm = icmp ult i32 %i.bj, %i.bl
  br i1 %i.bm, label %bb.m, label %bb.n, !prof !169

bb.l:                                             ; preds = %bb.k
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bf, i64 12
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !555 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !555 ; 2 uses
  %.not11.i.i = icmp eq i32 %i.bo, %i.bq
  br i1 %.not11.i.i, label %.split809, label %_ZNK18AstToDfgSynthesize6DriverleERKS0_.exit

.split809:                                        ; preds = %bb.l
  %i.br = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !544
  %i.bt = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !544
  %i.bv = call noundef i32 @_ZNK8FileLine15operatorCompareERKS_(ptr noundef nonnull align 8 dereferenceable(48) %i.bs, ptr noundef nonnull align 8 dereferenceable(48) %i.bu)
  %i.bw = icmp slt i32 %i.bv, 0
  br i1 %i.bw, label %bb.m, label %bb.n, !prof !169

_ZNK18AstToDfgSynthesize6DriverleERKS0_.exit:     ; preds = %bb.l
  %i.bx = icmp ult i32 %i.bo, %i.bq
  br i1 %i.bx, label %bb.m, label %bb.n, !prof !169

bb.m:                                             ; preds = %.split809, %.split808, %_ZNK18AstToDfgSynthesize6DriverleERKS0_.exit
  %i.by = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.82, i32 noundef 851) ; 0 uses
  %i.bz = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.ca = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.bz, ptr noundef nonnull @.str.610)
  call void @_ZNK9DfgVertex15v3errorEndFatalERNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(112) %i.ca) #29
  unreachable

bb.n:                                             ; preds = %.split809, %.split808, %_ZNK18AstToDfgSynthesize6DriverleERKS0_.exit
  %i.cb = load ptr, ptr %i.bf, align 8, !tbaa !542
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 72
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !388, !nonnull !100, !align !235
  %i.ce = load i8, ptr %i.cd, align 8, !tbaa !434
  %i.cf = icmp eq i8 %i.ce, 0
  %i.cg = xor i1 %i.j, %i.cf
  br i1 %i.cg, label %bb.o, label %bb.p, !prof !169

bb.o:                                             ; preds = %bb.n
  %i.ch = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.82, i32 noundef 852) ; 0 uses
  %i.ci = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.cj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.ci, ptr noundef nonnull @.str.611)
  call void @_ZNK9DfgVertex15v3errorEndFatalERNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(112) %i.cj) #29
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.ck = getelementptr inbounds nuw i8, ptr %i.be, i64 12 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !555
  %i.cm = load i32, ptr %i.bi, align 8, !tbaa !543
  %i.cn = icmp ult i32 %i.cl, %i.cm
  br i1 %i.cn, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.co = add nuw i64 %.0125698, 1                ; 2 uses
  %i.cp = icmp eq i64 %i.co, %.0121700
  %i.cq = zext i1 %i.cp to i64
  br label %bb.by, !llvm.loop !840

bb.r:                                             ; preds = %bb.p
  %i.cr = call i16 @_ZN18AstToDfgSynthesize14combineDriversER12DfgVertexVarRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_6DriverERKSA_(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.be, ptr noundef nonnull align 8 dereferenceable(24) %i.bf) ; 2 uses
  %i.cs = trunc i16 %i.cr to i1
  br i1 %i.cs, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, i8 0, i64 24, i1 false)
  br label %bb.by, !llvm.loop !840

bb.t:                                             ; preds = %bb.r
  %i.ct = and i16 %i.cr, 256
  %.not343 = icmp eq i16 %i.ct, 0
  br i1 %.not343, label %bb.u, label %bb.by, !llvm.loop !840

bb.u:                                             ; preds = %bb.t
  %i.cu = load ptr, ptr %i.p, align 8, !tbaa !512 ; 2 uses
  %.not132 = icmp eq ptr %i.cu, null
  br i1 %.not132, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cv = load ptr, ptr %i.q, align 8, !tbaa !309
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %i.cw = phi ptr [ %i.cv, %bb.v ], [ %i.cu, %bb.u ] ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 168
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !421
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 260
  %i.da = load i64, ptr %i.cz, align 4            ; 2 uses
  %i.db = and i64 %i.da, 4096
  %.not344 = icmp eq i64 %i.db, 0
  br i1 %.not344, label %bb.x, label %bb.by, !llvm.loop !840

bb.x:                                             ; preds = %bb.w
  %i.dc = and i64 %i.da, 288230376151711744
  %.not345 = icmp eq i64 %i.dc, 0
  br i1 %.not345, label %.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dd = load ptr, ptr %i.be, align 8, !tbaa !542
  %i.de = call noundef zeroext i1 @_ZN18AstToDfgSynthesize21containsTriLoweredVarEP9DfgVertex(ptr noundef %i.dd) ; 2 uses
  %i.df = load ptr, ptr %i.bf, align 8, !tbaa !542
  %i.dg = call noundef zeroext i1 @_ZN18AstToDfgSynthesize21containsTriLoweredVarEP9DfgVertex(ptr noundef %i.df) ; 3 uses
  %i.dh = and i1 %i.de, %i.dg                     ; 2 uses
  br i1 %i.de, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.di = load ptr, ptr %i.bf, align 8, !tbaa !542
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 80
  %.sroa.0.0.copyload.i.i.i.i = load i16, ptr %i.dj, align 8, !tbaa !107
  %i.dk = and i16 %.sroa.0.0.copyload.i.i.i.i, -2
  %spec.select.i.i.i = icmp eq i16 %i.dk, 60      ; 2 uses
  %.not152 = xor i1 %i.dg, true
  %brmerge = or i1 %spec.select.i.i.i, %.not152
  br i1 %brmerge, label %bb.ab, label %.split

bb.aa:                                            ; preds = %bb.y
  br i1 %i.dg, label %.split, label %.thread

.split:                                           ; preds = %bb.z, %bb.aa
  %i.dl = load ptr, ptr %i.be, align 8, !tbaa !542
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 80
  %.sroa.0.0.copyload.i.i.i.i162 = load i16, ptr %i.dm, align 8, !tbaa !107
  %i.dn = and i16 %.sroa.0.0.copyload.i.i.i.i162, -2
  %spec.select.i.i.i163 = icmp eq i16 %i.dn, 60
  %i.do = or i1 %i.dh, %spec.select.i.i.i163
  br i1 %i.do, label %bb.by, label %.thread

bb.ab:                                            ; preds = %bb.z
  %.mux = or i1 %i.dh, %spec.select.i.i.i
  br i1 %.mux, label %bb.by, label %.thread

.thread:                                          ; preds = %bb.aa, %.split, %bb.ab, %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.dp = load i32, ptr %i.bi, align 8, !tbaa !543 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !864)
  %i.dq = icmp ult i32 %i.dp, 10
  br i1 %i.dq, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.thread, %bb.ah
  %.030.i.i = phi i32 [ %i.dy, %bb.ah ], [ 1, %.thread ] ; 4 uses
  %.02329.i.i = phi i32 [ %i.dx, %bb.ah ], [ %i.dp, %.thread ] ; 5 uses
  %i.dr = icmp ult i32 %.02329.i.i, 100
  br i1 %i.dr, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.lr.ph.i.i
  %i.ds = add i32 %.030.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.ad:                                            ; preds = %.lr.ph.i.i
  %i.dt = icmp ult i32 %.02329.i.i, 1000
  br i1 %i.dt, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.du = add i32 %.030.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.af:                                            ; preds = %bb.ad
  %i.dv = icmp ult i32 %.02329.i.i, 10000
  br i1 %i.dv, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.dw = add i32 %.030.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
end_hunk_0
begin_hunk_1_@_ZN18AstToDfgSynthesize16normalizeDriversER12DfgVertexVarRSt6vectorINS_6DriverESaIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit238: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit236
  %i.mg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.md, ptr noundef nonnull @.str.619, i64 noundef 41)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit240 unwind label %bb.cc ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit240: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit238
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  %i.mh = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 2 uses
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !544
  invoke void @_ZNK8FileLine9warnOtherB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(48) %i.mi)
          to label %bb.br unwind label %bb.cd

bb.br:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit240
  %i.mj = load ptr, ptr %14, align 8, !tbaa !48
  %i.mk = load i64, ptr %i.am, align 8, !tbaa !50
  %i.ml = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.md, ptr noundef %i.mj, i64 noundef %i.mk)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit242 unwind label %bb.ce ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit242: ; preds = %bb.br
  %i.mm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ml, ptr noundef nonnull @.str.620, i64 noundef 33)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit244 unwind label %bb.ce ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit244: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit242
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28
  %i.mn = load ptr, ptr %i.mh, align 8, !tbaa !544
  invoke void @_ZNK8FileLine18warnContextPrimaryB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(48) %i.mn)
          to label %bb.bs unwind label %bb.cf

bb.bs:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit244
  %i.mo = load ptr, ptr %15, align 8, !tbaa !48
  %i.mp = load i64, ptr %i.an, align 8, !tbaa !50
  %i.mq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ml, ptr noundef %i.mo, i64 noundef %i.mp)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit246 unwind label %bb.cg ; 5 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit246: ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 10, ptr %i.a, align 1, !tbaa !49
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !221
  %i.ms = getelementptr i8, ptr %i.mr, i64 -24
  %i.mt = load i64, ptr %i.ms, align 8
  %i.mu = getelementptr inbounds i8, ptr %i.mq, i64 %i.mt
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 16
  %i.mw = load i64, ptr %i.mv, align 8, !tbaa !874
  %.not.i = icmp eq i64 %i.mw, 0
  br i1 %.not.i, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit246
  %i.mx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.mq, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %bb.bv unwind label %bb.cg

bb.bu:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit246
  %i.my = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.mq, i8 noundef signext 10)
          to label %bb.bv unwind label %bb.cg     ; 0 uses

bb.bv:                                            ; preds = %bb.bt, %bb.bu
  %.0.i = phi ptr [ %i.mx, %bb.bt ], [ %i.mq, %bb.bu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28
  %i.mz = getelementptr inbounds nuw i8, ptr %i.bf, i64 16 ; 2 uses
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !544
  invoke void @_ZNK8FileLine9warnOtherB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull align 8 dereferenceable(48) %i.na)
          to label %bb.bw unwind label %bb.ch

bb.bw:                                            ; preds = %bb.bv
  %i.nb = load ptr, ptr %16, align 8, !tbaa !48
  %i.nc = load i64, ptr %i.ao, align 8, !tbaa !50
  %i.nd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i, ptr noundef %i.nb, i64 noundef %i.nc)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit250 unwind label %bb.ci ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit250: ; preds = %bb.bw
  %i.ne = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.nd, ptr noundef nonnull @.str.620, i64 noundef 33)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit252 unwind label %bb.ci ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit252: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit250
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #28
  %i.nf = load ptr, ptr %i.mz, align 8, !tbaa !544
  invoke void @_ZNK8FileLine11warnContextB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull align 8 dereferenceable(48) %i.nf)
          to label %_ZNK8FileLine20warnContextSecondaryB5cxx11Ev.exit unwind label %bb.cj

_ZNK8FileLine20warnContextSecondaryB5cxx11Ev.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit252
  %i.ng = load ptr, ptr %17, align 8, !tbaa !48
  %i.nh = load i64, ptr %i.ap, align 8, !tbaa !50
  %i.ni = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.nd, ptr noundef %i.ng, i64 noundef %i.nh)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit255 unwind label %bb.ck

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit255: ; preds = %_ZNK8FileLine20warnContextSecondaryB5cxx11Ev.exit
  invoke void @_ZNK7AstNode10v3errorEndERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %i.cw, ptr noundef nonnull align 8 dereferenceable(112) %i.ni)
          to label %bb.bx unwind label %bb.ck

bb.bx:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit255
  %i.nj = load ptr, ptr %17, align 8, !tbaa !48   ; 2 uses
  %i.nk = icmp eq ptr %i.nj, %i.aq
  br i1 %i.nk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i256

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i256: ; preds = %bb.bx
  %i.nl = load i64, ptr %i.aq, align 8, !tbaa !49
  %i.nm = add i64 %i.nl, 1
  call void @_ZdlPvm(ptr noundef %i.nj, i64 noundef %i.nm) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258: ; preds = %bb.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i256
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  %i.nn = load ptr, ptr %16, align 8, !tbaa !48   ; 2 uses
  %i.no = icmp eq ptr %i.nn, %i.ar
  br i1 %i.no, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit261, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i259

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i259: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258
  %i.np = load i64, ptr %i.ar, align 8, !tbaa !49
  %i.nq = add i64 %i.np, 1
  call void @_ZdlPvm(ptr noundef %i.nn, i64 noundef %i.nq) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit261

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit261: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i259
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  %i.nr = load ptr, ptr %15, align 8, !tbaa !48   ; 2 uses
  %i.ns = icmp eq ptr %i.nr, %i.as
  br i1 %i.ns, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit264, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i262

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i262: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit261
  %i.nt = load i64, ptr %i.as, align 8, !tbaa !49
  %i.nu = add i64 %i.nt, 1
  call void @_ZdlPvm(ptr noundef %i.nr, i64 noundef %i.nu) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit264

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit264: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit261, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i262
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  %i.nv = load ptr, ptr %14, align 8, !tbaa !48   ; 2 uses
  %i.nw = icmp eq ptr %i.nv, %i.at
  br i1 %i.nw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit267, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i265

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i265: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit264
  %i.nx = load i64, ptr %i.at, align 8, !tbaa !49
  %i.ny = add i64 %i.nx, 1
  call void @_ZdlPvm(ptr noundef %i.nv, i64 noundef %i.ny) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit267

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit267: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit264, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i265
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  %i.nz = load ptr, ptr %13, align 8, !tbaa !48   ; 2 uses
  %i.oa = icmp eq ptr %i.nz, %i.au
  br i1 %i.oa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit270, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i268

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i268: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit267
  %i.ob = load i64, ptr %i.au, align 8, !tbaa !49
  %i.oc = add i64 %i.ob, 1
  call void @_ZdlPvm(ptr noundef %i.nz, i64 noundef %i.oc) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit270

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit270: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit267, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i268
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  %i.od = load ptr, ptr %8, align 8, !tbaa !48    ; 2 uses
  %i.oe = icmp eq ptr %i.od, %i.af
  br i1 %i.oe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit273, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i271

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i271: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit270
  %i.of = load i64, ptr %i.af, align 8, !tbaa !49
  %i.og = add i64 %i.of, 1
  call void @_ZdlPvm(ptr noundef %i.od, i64 noundef %i.og) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit273

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit273: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit270, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i271
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  %i.oh = load ptr, ptr %7, align 8, !tbaa !48    ; 2 uses
  %i.oi = icmp eq ptr %i.oh, %i.w
  br i1 %i.oi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit276, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i274

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i274: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit273
  %i.oj = load i64, ptr %i.w, align 8, !tbaa !49
  %i.ok = add i64 %i.oj, 1
  call void @_ZdlPvm(ptr noundef %i.oh, i64 noundef %i.ok) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit276

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit276: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit273, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i274
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  %i.ol = load ptr, ptr %6, align 8, !tbaa !48    ; 2 uses
  %i.om = icmp eq ptr %i.ol, %i.t
  br i1 %i.om, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit279, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i277

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i277: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit276
  %i.on = load i64, ptr %i.t, align 8, !tbaa !49
  %i.oo = add i64 %i.on, 1
  call void @_ZdlPvm(ptr noundef %i.ol, i64 noundef %i.oo) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit279

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit279: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit276, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i277
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.op = load ptr, ptr %5, align 8, !tbaa !48    ; 2 uses
  %i.oq = icmp eq ptr %i.op, %i.r
  br i1 %i.oq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i280

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i280: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit279
  %i.or = load i64, ptr %i.r, align 8, !tbaa !49
  %i.os = add i64 %i.or, 1
  call void @_ZdlPvm(ptr noundef %i.op, i64 noundef %i.os) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit279, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i280
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.by

bb.by:                                            ; preds = %bb.s, %bb.t, %bb.w, %bb.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282, %.split, %bb.h, %bb.q, %bb.j
  %.2129 = phi i1 [ %.0127697, %bb.q ], [ %.0127697, %bb.h ], [ %.0127697, %bb.j ], [ %.0127697, %bb.s ], [ true, %bb.t ], [ true, %bb.w ], [ true, %bb.ab ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282 ], [ true, %.split ] ; 2 uses
  %.1126 = phi i64 [ %i.co, %bb.q ], [ %.0125698, %bb.h ], [ %.0125698, %bb.j ], [ %.0125698, %bb.s ], [ %.0125698, %bb.t ], [ %.0125698, %bb.w ], [ %.0125698, %bb.ab ], [ %.0125698, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282 ], [ %.0125698, %.split ] ; 2 uses
  %.pn347 = phi i64 [ %i.cq, %bb.q ], [ 1, %bb.h ], [ 1, %bb.j ], [ 1, %bb.s ], [ 1, %bb.t ], [ 1, %bb.w ], [ 1, %bb.ab ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282 ], [ 1, %.split ]
  %.3124 = add i64 %.pn347, %.0121700             ; 2 uses
  %i.ot = load ptr, ptr %i.c, align 8, !tbaa !539 ; 2 uses
  %i.ou = load ptr, ptr %2, align 8, !tbaa !502   ; 3 uses
  %i.ov = ptrtoint ptr %i.ot to i64
  %i.ow = ptrtoint ptr %i.ou to i64
  %i.ox = sub i64 %i.ov, %i.ow
  %i.oy = sdiv exact i64 %i.ox, 24                ; 2 uses
  %i.oz = icmp ult i64 %.3124, %i.oy
  br i1 %i.oz, label %bb.f, label %._crit_edge.loopexit

.thread333.loopexit:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %lpad.loopexit368 = landingpad { ptr, i32 }
          cleanup
  br label %.thread333

.thread333.loopexit.split-lp:                     ; preds = %bb.ax
  %lpad.loopexit.split-lp369 = landingpad { ptr, i32 }
          cleanup
  br label %.thread333

.thread333:                                       ; preds = %.thread333.loopexit.split-lp, %.thread333.loopexit
  %lpad.phi370 = phi { ptr, i32 } [ %lpad.loopexit368, %.thread333.loopexit ], [ %lpad.loopexit.split-lp369, %.thread333.loopexit.split-lp ] ; 2 uses
  %i.pa = load ptr, ptr %9, align 8, !tbaa !48    ; 2 uses
  %i.pb = icmp eq ptr %i.pa, %i.ah
  br i1 %i.pb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.sink.split

.loopexit348:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i192
  %lpad.loopexit350 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit288

.loopexit.split-lp349:                            ; preds = %bb.bb
  %lpad.loopexit.split-lp351 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit288

.loopexit353:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %lpad.loopexit355 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit285

.loopexit.split-lp354:                            ; preds = %bb.be
  %lpad.loopexit.split-lp356 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit285

.loopexit358:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i204
  %lpad.loopexit360 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

.loopexit.split-lp359:                            ; preds = %bb.bh
  %lpad.loopexit.split-lp361 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.bz:                                            ; preds = %.loopexit.split-lp359, %.loopexit358
  %lpad.phi362 = phi { ptr, i32 } [ %lpad.loopexit360, %.loopexit358 ], [ %lpad.loopexit.split-lp361, %.loopexit.split-lp359 ] ; 2 uses
  %i.pc = load ptr, ptr %10, align 8, !tbaa !48   ; 2 uses
  %i.pd = icmp eq ptr %i.pc, %i.ad
  br i1 %i.pd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit285, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i283

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i283: ; preds = %bb.bz
  %i.pe = load i64, ptr %i.ad, align 8, !tbaa !49
  %i.pf = add i64 %i.pe, 1
  call void @_ZdlPvm(ptr noundef %i.pc, i64 noundef %i.pf) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit285

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit285: ; preds = %bb.bz, %.loopexit353, %.loopexit.split-lp354, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i283
  %.pn = phi { ptr, i32 } [ %lpad.phi362, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i283 ], [ %lpad.loopexit.split-lp356, %.loopexit.split-lp354 ], [ %lpad.loopexit355, %.loopexit353 ], [ %lpad.phi362, %bb.bz ] ; 2 uses
  %i.pg = load ptr, ptr %11, align 8, !tbaa !48   ; 2 uses
  %i.ph = icmp eq ptr %i.pg, %i.ab
  br i1 %i.ph, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit288, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i286

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i286: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit285
  %i.pi = load i64, ptr %i.ab, align 8, !tbaa !49
  %i.pj = add i64 %i.pi, 1
  call void @_ZdlPvm(ptr noundef %i.pg, i64 noundef %i.pj) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit288

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit288: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit285, %.loopexit348, %.loopexit.split-lp349, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i286
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i286 ], [ %lpad.loopexit.split-lp351, %.loopexit.split-lp349 ], [ %lpad.loopexit350, %.loopexit348 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit285 ] ; 2 uses
  %i.pk = load ptr, ptr %12, align 8, !tbaa !48   ; 2 uses
  %i.pl = icmp eq ptr %i.pk, %i.z
  br i1 %i.pl, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit288, %bb.ba
  %.sink = phi ptr [ %i.io, %bb.ba ], [ %i.pk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit288 ]
  %.pn.pn.pn.ph.ph = phi { ptr, i32 } [ %lpad.phi, %bb.ba ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit288 ]
  %i.pm = load i64, ptr %i.z, align 8, !tbaa !49
  %i.pn = add i64 %i.pm, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.pn) #31
  br label %.body

.body:                                            ; preds = %.body.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit288, %bb.ba
  %.pn.pn.pn.ph = phi { ptr, i32 } [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit288 ], [ %lpad.phi, %bb.ba ], [ %.pn.pn.pn.ph.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit312

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.sink.split: ; preds = %.thread333, %bb.aw
  %.sink836 = phi ptr [ %i.hr, %bb.aw ], [ %i.pa, %.thread333 ]
  %.pn136.pn.ph.ph = phi { ptr, i32 } [ %lpad.phi367, %bb.aw ], [ %lpad.phi370, %.thread333 ]
  %i.po = load i64, ptr %i.ah, align 8, !tbaa !49
  %i.pp = add i64 %i.po, 1
  call void @_ZdlPvm(ptr noundef %.sink836, i64 noundef %i.pp) #31
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.sink.split, %.thread333, %bb.aw
  %.pn136.pn.ph = phi { ptr, i32 } [ %lpad.phi370, %.thread333 ], [ %lpad.phi367, %bb.aw ], [ %.pn136.pn.ph.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit312

bb.ca:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit226, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.bo, %.critedge159
  %i.pq = landingpad { ptr, i32 }
          cleanup
  br label %.body222

bb.cb:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.pr = landingpad { ptr, i32 }
          cleanup
  br label %.body229

bb.cc:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit238, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit236, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit234, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit232, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.ps = landingpad { ptr, i32 }
          cleanup
  br label %bb.co

bb.cd:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit240
  %i.pt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit306

bb.ce:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit242, %bb.br
  %i.pu = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

bb.cf:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit244
  %i.pv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303

bb.cg:                                            ; preds = %bb.bu, %bb.bt, %bb.bs
  %i.pw = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

bb.ch:                                            ; preds = %bb.bv
  %i.px = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit300

bb.ci:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit250, %bb.bw
  %i.py = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

bb.cj:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit252
  %i.pz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297

bb.ck:                                            ; preds = %_ZNK8FileLine20warnContextSecondaryB5cxx11Ev.exit, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit255
  %i.qa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.qb = load ptr, ptr %17, align 8, !tbaa !48   ; 2 uses
  %i.qc = icmp eq ptr %i.qb, %i.aq
  br i1 %i.qc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i295

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i295: ; preds = %bb.ck
  %i.qd = load i64, ptr %i.aq, align 8, !tbaa !49
  %i.qe = add i64 %i.qd, 1
  call void @_ZdlPvm(ptr noundef %i.qb, i64 noundef %i.qe) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297: ; preds = %bb.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i295, %bb.cj
  %.pn139 = phi { ptr, i32 } [ %i.pz, %bb.cj ], [ %i.qa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i295 ], [ %i.qa, %bb.ck ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  br label %bb.cl

bb.cl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297, %bb.ci
  %.pn139.pn = phi { ptr, i32 } [ %.pn139, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297 ], [ %i.py, %bb.ci ] ; 2 uses
  %i.qf = load ptr, ptr %16, align 8, !tbaa !48   ; 2 uses
  %i.qg = icmp eq ptr %i.qf, %i.ar
  br i1 %i.qg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit300, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i298

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i298: ; preds = %bb.cl
  %i.qh = load i64, ptr %i.ar, align 8, !tbaa !49
  %i.qi = add i64 %i.qh, 1
  call void @_ZdlPvm(ptr noundef %i.qf, i64 noundef %i.qi) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit300

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit300: ; preds = %bb.cl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i298, %bb.ch
  %.pn139.pn.pn = phi { ptr, i32 } [ %i.px, %bb.ch ], [ %.pn139.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i298 ], [ %.pn139.pn, %bb.cl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  br label %bb.cm

bb.cm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit300, %bb.cg
  %.pn139.pn.pn.pn = phi { ptr, i32 } [ %.pn139.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit300 ], [ %i.pw, %bb.cg ] ; 2 uses
  %i.qj = load ptr, ptr %15, align 8, !tbaa !48   ; 2 uses
  %i.qk = icmp eq ptr %i.qj, %i.as
  br i1 %i.qk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i301

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i301: ; preds = %bb.cm
  %i.ql = load i64, ptr %i.as, align 8, !tbaa !49
  %i.qm = add i64 %i.ql, 1
  call void @_ZdlPvm(ptr noundef %i.qj, i64 noundef %i.qm) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303: ; preds = %bb.cm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i301, %bb.cf
  %.pn139.pn.pn.pn.pn = phi { ptr, i32 } [ %i.pv, %bb.cf ], [ %.pn139.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i301 ], [ %.pn139.pn.pn.pn, %bb.cm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  br label %bb.cn

bb.cn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303, %bb.ce
  %.pn139.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn139.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303 ], [ %i.pu, %bb.ce ] ; 2 uses
  %i.qn = load ptr, ptr %14, align 8, !tbaa !48   ; 2 uses
  %i.qo = icmp eq ptr %i.qn, %i.at
  br i1 %i.qo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit306, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i304

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i304: ; preds = %bb.cn
  %i.qp = load i64, ptr %i.at, align 8, !tbaa !49
  %i.qq = add i64 %i.qp, 1
  call void @_ZdlPvm(ptr noundef %i.qn, i64 noundef %i.qq) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit306

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit306: ; preds = %bb.cn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i304, %bb.cd
  %.pn139.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.pt, %bb.cd ], [ %.pn139.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i304 ], [ %.pn139.pn.pn.pn.pn.pn, %bb.cn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  br label %bb.co

bb.co:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit306, %bb.cc
  %.pn139.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn139.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit306 ], [ %i.ps, %bb.cc ] ; 2 uses
  %i.qr = load ptr, ptr %13, align 8, !tbaa !48   ; 2 uses
  %i.qs = icmp eq ptr %i.qr, %i.au
  br i1 %i.qs, label %.body229, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i307

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i307: ; preds = %bb.co
  %i.qt = load i64, ptr %i.au, align 8, !tbaa !49
  %i.qu = add i64 %i.qt, 1
  call void @_ZdlPvm(ptr noundef %i.qr, i64 noundef %i.qu) #31
  br label %.body229

.body229:                                         ; preds = %bb.co, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i307, %bb.cb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i
  %.pn139.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.lt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i ], [ %i.pr, %bb.cb ], [ %.pn139.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i307 ], [ %.pn139.pn.pn.pn.pn.pn.pn.pn, %bb.co ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  br label %.body222

.body222:                                         ; preds = %bb.ca, %bb.bn, %.body229
  %.pn139.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn139.pn.pn.pn.pn.pn.pn.pn.pn, %.body229 ], [ %i.pq, %bb.ca ], [ %i.ld, %bb.bn ] ; 2 uses
  %i.qv = load ptr, ptr %8, align 8, !tbaa !48    ; 2 uses
  %i.qw = icmp eq ptr %i.qv, %i.af
  br i1 %i.qw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit312, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i310

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i310: ; preds = %.body222
  %i.qx = load i64, ptr %i.af, align 8, !tbaa !49
  %i.qy = add i64 %i.qx, 1
  call void @_ZdlPvm(ptr noundef %i.qv, i64 noundef %i.qy) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit312

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit312: ; preds = %.body222, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i310, %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %.pn139.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.ph, %.body ], [ %.pn136.pn.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ], [ %.pn139.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i310 ], [ %.pn139.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.body222 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  %i.qz = load ptr, ptr %7, align 8, !tbaa !48    ; 2 uses
  %i.ra = icmp eq ptr %i.qz, %i.w
  br i1 %i.ra, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit315, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i313

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i313: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit312
  %i.rb = load i64, ptr %i.w, align 8, !tbaa !49
  %i.rc = add i64 %i.rb, 1
  call void @_ZdlPvm(ptr noundef %i.qz, i64 noundef %i.rc) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit315

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit315: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit312, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i313
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  %i.rd = load ptr, ptr %6, align 8, !tbaa !48    ; 2 uses
  %i.re = icmp eq ptr %i.rd, %i.t
  br i1 %i.re, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i316

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i316: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit315
  %i.rf = load i64, ptr %i.t, align 8, !tbaa !49
  %i.rg = add i64 %i.rf, 1
  call void @_ZdlPvm(ptr noundef %i.rd, i64 noundef %i.rg) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit315, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i316
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.rh = load ptr, ptr %5, align 8, !tbaa !48    ; 2 uses
  %i.ri = icmp eq ptr %i.rh, %i.r
  br i1 %i.ri, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i319

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i319: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318
  %i.rj = load i64, ptr %i.r, align 8, !tbaa !49
  %i.rk = add i64 %i.rj, 1
  call void @_ZdlPvm(ptr noundef %i.rh, i64 noundef %i.rk) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i319
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  resume { ptr, i32 } %.pn139.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn

bb.cp:                                            ; preds = %_ZNSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE6resizeEm.exit
  call void @_ZN18AstToDfgSynthesize15coalesceDriversERSt6vectorINS_6DriverESaIS1_EE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.cq

bb.cq:                                            ; preds = %_ZNSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE6resizeEm.exit, %bb.cp, %bb.a
  %.0130 = phi i1 [ true, %bb.a ], [ true, %bb.cp ], [ %.0127.lcssa, %_ZNSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE6resizeEm.exit ]
  ret i1 %.0130
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN15DfgVertexSplice9addDriverEP9DfgVertexjP8FileLine(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.a, align 8, !tbaa !107
  %i.b = icmp eq i16 %.sroa.0.0.copyload.i.i.i, 62
  br i1 %i.b, label %bb.b, label %bb.c, !prof !169

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.120, i32 noundef 414) ; 0 uses
  %i.d = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.625)
  tail call void @_ZNK9DfgVertex15v3errorEndFatalERNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(112) %i.e) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !349  ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !556
  %.not.i = icmp eq ptr %i.h, %i.j
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %2, ptr %i.h, align 8, !tbaa !504
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %3, ptr %i.k, align 8, !tbaa !352
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.l, ptr %i.g, align 8, !tbaa !349
  br label %_ZNSt6vectorIN15DfgVertexSplice10DriverDataESaIS1_EE12emplace_backIJRjRP8FileLineEEERS1_DpOT_.exit

bb.e:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !350  ; 4 uses
  %i.n = ptrtoint ptr %i.h to i64
  %i.o = ptrtoint ptr %i.m to i64                 ; 2 uses
  %i.p = sub i64 %i.n, %i.o                       ; 5 uses
  %i.q = icmp eq i64 %i.p, 9223372036854775792
  br i1 %i.q, label %bb.f, label %_ZNKSt6vectorIN15DfgVertexSplice10DriverDataESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #29
  unreachable

_ZNKSt6vectorIN15DfgVertexSplice10DriverDataESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.r = ashr exact i64 %i.p, 4                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.r, i64 1)
  %i.s = add nsw i64 %.sroa.speculated.i.i.i, %i.r ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.r
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.s, i64 576460752303423487)
  %i.v = select i1 %i.t, i64 576460752303423487, i64 %i.u ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.v, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.w = shl nuw nsw i64 %i.v, 4
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #32 ; 4 uses
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 %i.p ; 3 uses
  store i32 %2, ptr %i.y, align 8, !tbaa !504
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %3, ptr %i.z, align 8, !tbaa !352
  %i.aa = icmp sgt i64 %i.p, 0
  br i1 %i.aa, label %bb.g, label %_ZNSt6vectorIN15DfgVertexSplice10DriverDataESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit27.i.i

bb.g:                                             ; preds = %_ZNKSt6vectorIN15DfgVertexSplice10DriverDataESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.x, ptr align 8 %i.m, i64 %i.p, i1 false)
  br label %_ZNSt6vectorIN15DfgVertexSplice10DriverDataESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit27.i.i

_ZNSt6vectorIN15DfgVertexSplice10DriverDataESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit27.i.i: ; preds = %bb.g, %_ZNKSt6vectorIN15DfgVertexSplice10DriverDataESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.not.i28.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i28.i.i, label %_ZNSt6vectorIN15DfgVertexSplice10DriverDataESaIS1_EE17_M_realloc_insertIJRjRP8FileLineEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN15DfgVertexSplice10DriverDataESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit27.i.i
  %i.ac = load ptr, ptr %i.i, align 8, !tbaa !556
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = sub i64 %i.ad, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.ae) #31
  br label %_ZNSt6vectorIN15DfgVertexSplice10DriverDataESaIS1_EE17_M_realloc_insertIJRjRP8FileLineEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN15DfgVertexSplice10DriverDataESaIS1_EE17_M_realloc_insertIJRjRP8FileLineEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorIN15DfgVertexSplice10DriverDataESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit27.i.i
  store ptr %i.x, ptr %i.f, align 8, !tbaa !350
  store ptr %i.ab, ptr %i.g, align 8, !tbaa !349
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.v
  store ptr %i.af, ptr %i.i, align 8, !tbaa !556
  br label %_ZNSt6vectorIN15DfgVertexSplice10DriverDataESaIS1_EE12emplace_backIJRjRP8FileLineEEERS1_DpOT_.exit

_ZNSt6vectorIN15DfgVertexSplice10DriverDataESaIS1_EE12emplace_backIJRjRP8FileLineEEERS1_DpOT_.exit: ; preds = %bb.d, %_ZNSt6vectorIN15DfgVertexSplice10DriverDataESaIS1_EE17_M_realloc_insertIJRjRP8FileLineEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %i.ag = tail call noundef ptr @_ZN9DfgVertex8newInputEv(ptr noundef nonnull align 8 dereferenceable(96) %0) ; 11 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !160 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i, label %bb.p, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN15DfgVertexSplice10DriverDataESaIS1_EE12emplace_backIJRjRP8FileLineEEERS1_DpOT_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 48 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 3 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !171 ; 3 uses
  %.not.i.i.i4 = icmp eq ptr %i.ak, null
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %.pre.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !366 ; 4 uses
  br i1 %.not.i.i.i4, label %._crit_edge.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  store ptr %.pre.i.i.i, ptr %i.al, align 8, !tbaa !366
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.j, %bb.i
  %.not15.i.i.i = icmp eq ptr %.pre.i.i.i, null
  br i1 %.not15.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %._crit_edge.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 16
  store ptr %i.ak, ptr %i.am, align 8, !tbaa !171
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i.i.i
  %i.an = load ptr, ptr %i.ai, align 8, !tbaa !170
  %i.ao = icmp eq ptr %i.an, %i.ag
  br i1 %i.ao, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ap = load ptr, ptr %i.aj, align 8, !tbaa !171
  store ptr %i.ap, ptr %i.ai, align 8, !tbaa !170
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ah, i64 56 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !367
  %i.as = icmp eq ptr %i.ar, %i.ag
  br i1 %i.as, label %bb.o, label %_ZN6V3ListI7DfgEdgeXadL_ZNS0_5linksEvEES0_E6unlinkEPKS0_.exit.i.i

bb.o:                                             ; preds = %bb.n
  store ptr %.pre.i.i.i, ptr %i.aq, align 8, !tbaa !367
  br label %_ZN6V3ListI7DfgEdgeXadL_ZNS0_5linksEvEES0_E6unlinkEPKS0_.exit.i.i

_ZN6V3ListI7DfgEdgeXadL_ZNS0_5linksEvEES0_E6unlinkEPKS0_.exit.i.i: ; preds = %bb.o, %bb.n
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i8 0, i64 16, i1 false)
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIN15DfgVertexSplice10DriverDataESaIS1_EE12emplace_backIJRjRP8FileLineEEERS1_DpOT_.exit, %_ZN6V3ListI7DfgEdgeXadL_ZNS0_5linksEvEES0_E6unlinkEPKS0_.exit.i.i
  store ptr %1, ptr %i.ag, align 8, !tbaa !160
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.av = load ptr, ptr %i.at, align 8, !tbaa !170 ; 3 uses
  store ptr %i.av, ptr %i.au, align 8, !tbaa !171
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store ptr null, ptr %i.aw, align 8, !tbaa !366
  %.not.i2.i = icmp eq ptr %i.av, null
  br i1 %.not.i2.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  store ptr %i.ag, ptr %i.ax, align 8, !tbaa !366
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  store ptr %i.ag, ptr %i.at, align 8, !tbaa !170
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !367
  %.not6.i.i = icmp eq ptr %i.az, null
  br i1 %.not6.i.i, label %bb.s, label %_ZN7DfgEdge10relinkSrcpEP9DfgVertex.exit

bb.s:                                             ; preds = %bb.r
  store ptr %i.ag, ptr %i.ay, align 8, !tbaa !367
  br label %_ZN7DfgEdge10relinkSrcpEP9DfgVertex.exit

_ZN7DfgEdge10relinkSrcpEP9DfgVertex.exit:         ; preds = %bb.r, %bb.s
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN18AstToDfgSynthesize24incorporatePreviousValueEP11AstVarScopeP12DfgVertexVarS3_(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector.318", align 8   ; 13 uses
  %5 = alloca %"class.std::vector.318", align 8   ; 12 uses
  %6 = alloca %"class.std::vector.318", align 8   ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !156
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !157
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !160  ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.b, label %bb.c, !prof !169

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.82, i32 noundef 1317) ; 0 uses
  %i.f = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.626)
  tail call void @_ZNK7AstNode15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 8 dereferenceable(112) %i.g) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not44 = icmp eq ptr %3, null
  br i1 %.not44, label %_ZN12DfgVertexVar8defaultpEP9DfgVertex.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call noundef ptr @_ZN9DfgVertex2asI15DfgVertexSpliceEEPT_v(ptr noundef nonnull align 8 dereferenceable(96) %i.d) ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !309
end_hunk_1
