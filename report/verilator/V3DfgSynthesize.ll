Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3DfgSynthesize?download=true
inline.NumInlined: 8228
inline.NumDeleted: 2495
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN18AstToDfgSynthesize13gatherDriversEP15DfgVertexSplice:bb.a
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
  %i.m = sub i64 %i.k, %i.l                       ; 2 uses
  %.cmp = icmp ugt i64 %i.m, 23
  %18 = zext i1 %.cmp to i64
  %i.n = icmp ugt i64 %i.m, 24
  br i1 %i.n, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.u = select i1 %i.j, ptr @.str.612, ptr @.str.613
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  %i.w = select i1 %i.j, i64 3, i64 7             ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 7 uses
  %i.z = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 7 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 10 uses
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  %.sroa.sel.v.sroa.sel.v = select i1 %i.j, i64 19, i64 23
  %.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %7, i64 %.sroa.sel.v.sroa.sel.v
  br label %bb.f

._crit_edge.loopexit:                             ; preds = %bb.by
  %i.au = add i64 %.1126, 1
  %i.av = xor i1 %.2129, true
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %.0127.lcssa = phi i1 [ true, %bb.b ], [ %i.av, %._crit_edge.loopexit ] ; 2 uses
  %.0125.lcssa = phi i64 [ 1, %bb.b ], [ %i.au, %._crit_edge.loopexit ] ; 4 uses
  %.lcssa478 = phi ptr [ %i.d, %bb.b ], [ %i.ot, %._crit_edge.loopexit ]
  %.lcssa447 = phi ptr [ %i.b, %bb.b ], [ %i.ou, %._crit_edge.loopexit ]
  %.lcssa416 = phi i64 [ %18, %bb.b ], [ %i.oy, %._crit_edge.loopexit ] ; 3 uses
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
  br i1 %.not.i.i161, label %bb.l, label %.split808.a

.split808.a:                                      ; preds = %bb.k
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

bb.m:                                             ; preds = %.split809, %.split808.a, %_ZNK18AstToDfgSynthesize6DriverleERKS0_.exit
  %i.by = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.82, i32 noundef 851) ; 0 uses
  %i.bz = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.ca = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.bz, ptr noundef nonnull @.str.610)
  call void @_ZNK9DfgVertex15v3errorEndFatalERNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(112) %i.ca) #29
  unreachable

bb.n:                                             ; preds = %.split809, %.split808.a, %_ZNK18AstToDfgSynthesize6DriverleERKS0_.exit
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
  %i.cu = load ptr, ptr %i.o, align 8, !tbaa !512 ; 2 uses
  %.not132 = icmp eq ptr %i.cu, null
  br i1 %.not132, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cv = load ptr, ptr %i.p, align 8, !tbaa !309
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
end_hunk_0
begin_hunk_1_@_ZN9DfgVertexD2Ev:bb.a
  %.not.i.i1.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10unique_ptrI7DfgEdgeSt14default_deleteIS1_EESaIS4_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrI7DfgEdgeSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !487
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #31
  br label %_ZNSt6vectorISt10unique_ptrI7DfgEdgeSt14default_deleteIS1_EESaIS4_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrI7DfgEdgeSt14default_deleteIS1_EESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrI7DfgEdgeSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exit.i, %bb.j
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN12DfgUnitArrayD0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV9DfgVertex, i64 16), ptr %0, align 8, !tbaa !221
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !156  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !186  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrI7DfgEdgeSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyISt10unique_ptrI7DfgEdgeSt14default_deleteIS1_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.r, %_ZSt8_DestroyISt10unique_ptrI7DfgEdgeSt14default_deleteIS1_EEEvPT_.exit.i.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !157 ; 7 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrI7DfgEdgeSt14default_deleteIS1_EEEvPT_.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !160  ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteI7DfgEdgeEclEPS0_.exit.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 48 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !171  ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.i, null
  %.phi.trans.insert.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.pre.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !366 ; 4 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr %.pre.i.i.i.i.i.i.i.i.i.i, ptr %i.j, align 8, !tbaa !366
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.d, %bb.c
  %.not15.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.pre.i.i.i.i.i.i.i.i.i.i, null
  br i1 %.not15.i.i.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i.i.i.i.i.i, i64 16
  store ptr %i.i, ptr %i.k, align 8, !tbaa !171
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !170
  %i.m = icmp eq ptr %i.l, %i.e
  br i1 %i.m, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !171
  store ptr %i.n, ptr %i.g, align 8, !tbaa !170
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !367
  %i.q = icmp eq ptr %i.p, %i.e
  br i1 %i.q, label %bb.i, label %_ZNKSt14default_deleteI7DfgEdgeEclEPS0_.exit.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.h
  store ptr %.pre.i.i.i.i.i.i.i.i.i.i, ptr %i.o, align 8, !tbaa !367
  br label %_ZNKSt14default_deleteI7DfgEdgeEclEPS0_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteI7DfgEdgeEclEPS0_.exit.i.i.i.i.i.i: ; preds = %bb.i, %bb.h, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef 32) #31, !inline_history !486
  br label %_ZSt8_DestroyISt10unique_ptrI7DfgEdgeSt14default_deleteIS1_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10unique_ptrI7DfgEdgeSt14default_deleteIS1_EEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteI7DfgEdgeEclEPS0_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.r, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrI7DfgEdgeSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !9

_ZSt8_DestroyIPSt10unique_ptrI7DfgEdgeSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrI7DfgEdgeSt14default_deleteIS1_EEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.a, align 8, !tbaa !156
  br label %_ZSt8_DestroyIPSt10unique_ptrI7DfgEdgeSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt10unique_ptrI7DfgEdgeSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrI7DfgEdgeSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i, %bb.a
  %i.s = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt10unique_ptrI7DfgEdgeSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i1.i.i, label %_ZN9DfgVertexD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrI7DfgEdgeSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exit.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !487
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #31, !inline_history !486
  br label %_ZN9DfgVertexD2Ev.exit

_ZN9DfgVertexD2Ev.exit:                           ; preds = %_ZSt8_DestroyIPSt10unique_ptrI7DfgEdgeSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exit.i.i, %bb.j
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt17_Function_handlerIFbR9DfgVertexjP8FileLineEZN18AstToDfgSynthesize13gatherDriversEP15DfgVertexSpliceEUlS1_jS3_E_E9_M_invokeERKSt9_Any_dataS1_OjOS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZSt13__invoke_implIbRZN18AstToDfgSynthesize13gatherDriversEP15DfgVertexSpliceEUlR9DfgVertexjP8FileLineE_JS4_jS6_EET_St14__invoke_otherOT0_DpOT1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(8) %3)
  ret i1 %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt17_Function_handlerIFbR9DfgVertexjP8FileLineEZN18AstToDfgSynthesize13gatherDriversEP15DfgVertexSpliceEUlS1_jS3_E_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN18AstToDfgSynthesize13gatherDriversEP15DfgVertexSpliceEUlR9DfgVertexjP8FileLineE_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN18AstToDfgSynthesize13gatherDriversEP15DfgVertexSpliceEUlR9DfgVertexjP8FileLineE_, ptr %0, align 8, !tbaa !234
  br label %_ZNSt14_Function_base13_Base_managerIZN18AstToDfgSynthesize13gatherDriversEP15DfgVertexSpliceEUlR9DfgVertexjP8FileLineE_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !163
  br label %_ZNSt14_Function_base13_Base_managerIZN18AstToDfgSynthesize13gatherDriversEP15DfgVertexSpliceEUlR9DfgVertexjP8FileLineE_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !930
  br label %_ZNSt14_Function_base13_Base_managerIZN18AstToDfgSynthesize13gatherDriversEP15DfgVertexSpliceEUlR9DfgVertexjP8FileLineE_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN18AstToDfgSynthesize13gatherDriversEP15DfgVertexSpliceEUlR9DfgVertexjP8FileLineE_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZSt13__invoke_implIbRZN18AstToDfgSynthesize13gatherDriversEP15DfgVertexSpliceEUlR9DfgVertexjP8FileLineE_JS4_jS6_EET_St14__invoke_otherOT0_DpOT1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = load i32, ptr %2, align 4, !tbaa !51     ; 3 uses
  %i.e = load ptr, ptr %3, align 8, !tbaa !369    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.d, ptr %i.a, align 4, !tbaa !51
  store ptr %i.e, ptr %i.b, align 8, !tbaa !369
  %i.f = load ptr, ptr %0, align 8, !tbaa !932, !nonnull !100, !align !235 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  store ptr %1, ptr %i.c, align 8, !tbaa !137
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !539  ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !503
  %.not.i.i = icmp eq ptr %i.h, %i.j
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %i.h, align 8, !tbaa !542
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i32 %i.d, ptr %i.k, align 8, !tbaa !543
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !388, !nonnull !100, !align !235
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !393
  %i.q = add i32 %i.d, -1
  %i.r = add i32 %i.q, %i.p
  store i32 %i.r, ptr %i.l, align 4, !tbaa !555
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.e, ptr %i.s, align 8, !tbaa !544
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  store ptr %i.t, ptr %i.g, align 8, !tbaa !539
  br label %_ZNSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE12emplace_backIJP9DfgVertexRjRP8FileLineEEERS1_DpOT_.exit.i

bb.c:                                             ; preds = %bb.a
  call void @_ZNSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE17_M_realloc_insertIJP9DfgVertexRjRP8FileLineEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !932 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 8
  %.pre6.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !539
  br label %_ZNSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE12emplace_backIJP9DfgVertexRjRP8FileLineEEERS1_DpOT_.exit.i

_ZNSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE12emplace_backIJP9DfgVertexRjRP8FileLineEEERS1_DpOT_.exit.i: ; preds = %bb.c, %bb.b
  %i.u = phi ptr [ %i.t, %bb.b ], [ %.pre6.i, %bb.c ]
  %i.v = phi ptr [ %i.f, %bb.b ], [ %.pre.i, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !502  ; 2 uses
  %i.x = ptrtoint ptr %i.u to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y                       ; 2 uses
  %i.aa = icmp ugt i64 %i.z, 24
  br i1 %i.aa, label %bb.d, label %_ZZN18AstToDfgSynthesize13gatherDriversEP15DfgVertexSpliceENKUlR9DfgVertexjP8FileLineE_clES3_jS5_.exit

bb.d:                                             ; preds = %_ZNSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE12emplace_backIJP9DfgVertexRjRP8FileLineEEERS1_DpOT_.exit.i
  %i.ab = getelementptr i8, ptr %i.w, i64 %i.z    ; 6 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 -16
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !543 ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ab, i64 -40
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !543 ; 2 uses
  %.not.i4.i = icmp eq i32 %i.ad, %i.af
  br i1 %.not.i4.i, label %bb.e, label %.split.i

.split.i:                                         ; preds = %bb.d
  %i.ag = icmp ult i32 %i.ad, %i.af
  br i1 %i.ag, label %bb.f, label %_ZZN18AstToDfgSynthesize13gatherDriversEP15DfgVertexSpliceENKUlR9DfgVertexjP8FileLineE_clES3_jS5_.exit

bb.e:                                             ; preds = %bb.d
  %i.ah = getelementptr i8, ptr %i.ab, i64 -12
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !555 ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ab, i64 -36
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !555 ; 2 uses
  %.not11.i.i = icmp eq i32 %i.ai, %i.ak
  br i1 %.not11.i.i, label %.split5.i, label %_ZNK18AstToDfgSynthesize6DriverltERKS0_.exit.i

.split5.i:                                        ; preds = %bb.e
  %i.al = getelementptr i8, ptr %i.ab, i64 -8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !544
  %i.an = getelementptr i8, ptr %i.ab, i64 -32
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !544
  %i.ap = call noundef i32 @_ZNK8FileLine15operatorCompareERKS_(ptr noundef nonnull align 8 dereferenceable(48) %i.am, ptr noundef nonnull align 8 dereferenceable(48) %i.ao)
  %i.aq = icmp slt i32 %i.ap, 0
  br i1 %i.aq, label %bb.f, label %_ZZN18AstToDfgSynthesize13gatherDriversEP15DfgVertexSpliceENKUlR9DfgVertexjP8FileLineE_clES3_jS5_.exit

_ZNK18AstToDfgSynthesize6DriverltERKS0_.exit.i:   ; preds = %bb.e
  %i.ar = icmp ult i32 %i.ai, %i.ak
  br i1 %i.ar, label %bb.f, label %_ZZN18AstToDfgSynthesize13gatherDriversEP15DfgVertexSpliceENKUlR9DfgVertexjP8FileLineE_clES3_jS5_.exit

bb.f:                                             ; preds = %_ZNK18AstToDfgSynthesize6DriverltERKS0_.exit.i, %.split5.i, %.split.i
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !933, !nonnull !100
  store i8 0, ptr %i.at, align 1, !tbaa !304
  br label %_ZZN18AstToDfgSynthesize13gatherDriversEP15DfgVertexSpliceENKUlR9DfgVertexjP8FileLineE_clES3_jS5_.exit

_ZZN18AstToDfgSynthesize13gatherDriversEP15DfgVertexSpliceENKUlR9DfgVertexjP8FileLineE_clES3_jS5_.exit: ; preds = %_ZNSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE12emplace_backIJP9DfgVertexRjRP8FileLineEEERS1_DpOT_.exit.i, %.split.i, %.split5.i, %_ZNK18AstToDfgSynthesize6DriverltERKS0_.exit.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE17_M_realloc_insertIJP9DfgVertexRjRP8FileLineEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !539  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !502    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #29
  unreachable

_ZNKSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 24                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 384307168202282325)
  %i.l = select i1 %i.j, i64 384307168202282325, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 24
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #32 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 4 uses
  %i.r = load ptr, ptr %2, align 8, !tbaa !137    ; 2 uses
  %i.s = load i32, ptr %3, align 4, !tbaa !51     ; 2 uses
  %i.t = load ptr, ptr %4, align 8, !tbaa !369
  store ptr %i.r, ptr %i.q, align 8, !tbaa !542
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i32 %i.s, ptr %i.u, align 8, !tbaa !543
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !388, !nonnull !100, !align !235
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !393
  %i.aa = add i32 %i.s, -1
  %i.ab = add i32 %i.aa, %i.z
  store i32 %i.ab, ptr %i.v, align 4, !tbaa !555
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %i.t, ptr %i.ac, align 8, !tbaa !544
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i, i64 24, i1 false), !tbaa.struct !554, !alias.scope !940
  %i.ad = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ad, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !17

_ZNSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE12_M_check_lenEmPKc.exit ], [ %i.ae, %.lr.ph.i.i.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 24 ; 2 uses
  %.not10.i.i.i28 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i28, label %_ZNSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34, label %.lr.ph.i.i.i29

.lr.ph.i.i.i29:                                   ; preds = %_ZNSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %.lr.ph.i.i.i29
  %.012.i.i.i30 = phi ptr [ %i.ah, %.lr.ph.i.i.i29 ], [ %i.af, %_ZNSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 2 uses
  %.0911.i.i.i31 = phi ptr [ %i.ag, %.lr.ph.i.i.i29 ], [ %1, %_ZNSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i30, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i31, i64 24, i1 false), !tbaa.struct !554, !alias.scope !941
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 24 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 24 ; 2 uses
  %.not.i.i.i32 = icmp eq ptr %i.ag, %i.b
  br i1 %.not.i.i.i32, label %_ZNSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34, label %.lr.ph.i.i.i29, !llvm.loop !17

_ZNSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34: ; preds = %.lr.ph.i.i.i29, %_ZNSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i33 = phi ptr [ %i.af, %_ZNSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.ah, %.lr.ph.i.i.i29 ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIN18AstToDfgSynthesize6DriverESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !503
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = sub i64 %i.ak, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.al) #31
  br label %_ZNSt12_Vector_baseIN18AstToDfgSynthesize6DriverESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN18AstToDfgSynthesize6DriverESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !502
  store ptr %.0.lcssa.i.i.i33, ptr %i.a, align 8, !tbaa !539
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.l
  store ptr %i.am, ptr %i.ai, align 8, !tbaa !503
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZNK8FileLine15operatorCompareERKS_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.b = load i16, ptr %i.a, align 2, !tbaa !587  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.d = load i16, ptr %i.c, align 2, !tbaa !587  ; 2 uses
  %.not = icmp eq i16 %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ult i16 %i.b, %i.d
  %i.f = select i1 %i.e, i32 -1, i32 1
  br label %_ZNK17FileLineSingleton11MsgEnBitSet7enabledE11V3ErrorCode.exit49.thread

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !588  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !588  ; 2 uses
  %.not40 = icmp eq i32 %i.h, %i.j
  br i1 %.not40, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = icmp slt i32 %i.h, %i.j
  %i.l = select i1 %i.k, i32 -1, i32 1
  br label %_ZNK17FileLineSingleton11MsgEnBitSet7enabledE11V3ErrorCode.exit49.thread

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load i64, ptr %i.m, align 8              ; 2 uses
  %i.o = trunc i64 %i.n to i32
  %i.p = and i32 %i.o, 16777215                   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load i64, ptr %i.q, align 8              ; 2 uses
  %i.s = trunc i64 %i.r to i32
  %i.t = and i32 %i.s, 16777215                   ; 2 uses
  %.not41 = icmp eq i32 %i.p, %i.t
  br i1 %.not41, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = icmp samesign ult i32 %i.p, %i.t
  %i.v = select i1 %i.u, i32 -1, i32 1
  br label %_ZNK17FileLineSingleton11MsgEnBitSet7enabledE11V3ErrorCode.exit49.thread

bb.g:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load i16, ptr %i.w, align 8, !tbaa !589  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.z = load i16, ptr %i.y, align 8, !tbaa !589  ; 2 uses
  %.not42 = icmp eq i16 %i.x, %i.z
  br i1 %.not42, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = icmp ult i16 %i.x, %i.z
  %i.ab = select i1 %i.aa, i32 -1, i32 1
  br label %_ZNK17FileLineSingleton11MsgEnBitSet7enabledE11V3ErrorCode.exit49.thread

end_hunk_1
begin_hunk_2_@_ZN18AstToDfgSynthesize21containsTriLoweredVarEP9DfgVertex:_ZNKSt6vectorIPK9DfgVertexSaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.ci = ptrtoint ptr %.sroa.14.3.ph to i64
  %i.cj = ptrtoint ptr %.sroa.047.3.ph to i64
  %i.ck = sub i64 %i.ci, %i.cj
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.047.3.ph, i64 noundef %i.ck) #31
  br label %_ZNSt6vectorIPK9DfgVertexSaIS2_EED2Ev.exit

_ZNSt6vectorIPK9DfgVertexSaIS2_EED2Ev.exit:       ; preds = %_ZNSt14_Function_baseD2Ev.exit.thread, %bb.w
  %i.cl = load ptr, ptr %1, align 8, !tbaa !491   ; 3 uses
  %.not.i.i.i34 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i34, label %_ZNSt6vectorIPK9DfgVertexSaIS2_EED2Ev.exit35, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIPK9DfgVertexSaIS2_EED2Ev.exit
  %i.cm = load ptr, ptr %i.b, align 8, !tbaa !492
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = ptrtoint ptr %i.cl to i64
  %i.cp = sub i64 %i.cn, %i.co
  call void @_ZdlPvm(ptr noundef nonnull %i.cl, i64 noundef %i.cp) #31
  br label %_ZNSt6vectorIPK9DfgVertexSaIS2_EED2Ev.exit35

_ZNSt6vectorIPK9DfgVertexSaIS2_EED2Ev.exit35:     ; preds = %_ZNSt6vectorIPK9DfgVertexSaIS2_EED2Ev.exit, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  ret i1 %.lcssa.ph

_ZNSt14_Function_baseD2Ev.exit32:                 ; preds = %.loopexit79, %.loopexit.split-lp80, %bb.t, %bb.u
  %.sroa.14.4 = phi ptr [ %.sroa.14.5, %bb.u ], [ %.sroa.14.5, %bb.t ], [ %.sroa.14.0119, %.loopexit79 ], [ %.sroa.14.0119, %.loopexit.split-lp80 ]
  %.sroa.047.4 = phi ptr [ %.sroa.047.5, %bb.u ], [ %.sroa.047.5, %bb.t ], [ %.sroa.047.0120, %.loopexit79 ], [ %.sroa.047.0120, %.loopexit.split-lp80 ] ; 3 uses
  %.pn.pn = phi { ptr, i32 } [ %lpad.phi, %bb.u ], [ %lpad.phi, %bb.t ], [ %lpad.loopexit81, %.loopexit79 ], [ %lpad.loopexit.split-lp82, %.loopexit.split-lp80 ] ; 2 uses
  %.not.i.i.i36 = icmp eq ptr %.sroa.047.4, null
  br i1 %.not.i.i.i36, label %_ZNSt6vectorIPK9DfgVertexSaIS2_EED2Ev.exit37, label %_ZNSt14_Function_baseD2Ev.exit32.thread68

_ZNSt14_Function_baseD2Ev.exit32.thread68:        ; preds = %_ZNSt14_Function_baseD2Ev.exit32
  %i.cq = ptrtoint ptr %.sroa.14.4 to i64
  %i.cr = ptrtoint ptr %.sroa.047.4 to i64
  %i.cs = sub i64 %i.cq, %i.cr
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.047.4, i64 noundef %i.cs) #31
  br label %_ZNSt6vectorIPK9DfgVertexSaIS2_EED2Ev.exit37

_ZNSt6vectorIPK9DfgVertexSaIS2_EED2Ev.exit37:     ; preds = %_ZNSt14_Function_baseD2Ev.exit32.thread, %_ZNSt14_Function_baseD2Ev.exit32, %_ZNSt14_Function_baseD2Ev.exit32.thread68
  %.pn.pn67 = phi { ptr, i32 } [ %i.ar, %_ZNSt14_Function_baseD2Ev.exit32.thread ], [ %.pn.pn, %_ZNSt14_Function_baseD2Ev.exit32 ], [ %.pn.pn, %_ZNSt14_Function_baseD2Ev.exit32.thread68 ]
  %i.ct = load ptr, ptr %1, align 8, !tbaa !491   ; 3 uses
  %.not.i.i.i38 = icmp eq ptr %i.ct, null
  br i1 %.not.i.i.i38, label %_ZNSt6vectorIPK9DfgVertexSaIS2_EED2Ev.exit39, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIPK9DfgVertexSaIS2_EED2Ev.exit37
  %i.cu = load ptr, ptr %i.b, align 8, !tbaa !492
  %i.cv = ptrtoint ptr %i.cu to i64
  %i.cw = ptrtoint ptr %i.ct to i64
  %i.cx = sub i64 %i.cv, %i.cw
  call void @_ZdlPvm(ptr noundef nonnull %i.ct, i64 noundef %i.cx) #31
  br label %_ZNSt6vectorIPK9DfgVertexSaIS2_EED2Ev.exit39

_ZNSt6vectorIPK9DfgVertexSaIS2_EED2Ev.exit39:     ; preds = %_ZNSt6vectorIPK9DfgVertexSaIS2_EED2Ev.exit37, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  resume { ptr, i32 } %.pn.pn67
}

declare void @_ZNK7AstNode10v3errorEndERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152), ptr noundef nonnull align 8 dereferenceable(112)) #2

declare void @_ZNK8FileLine9warnOtherB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(48)) #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK8FileLine18warnContextPrimaryB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = load atomic i8, ptr @_ZGVZN7V3Error1sEvE3s_s acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7V3Error1sEv.exit, !prof !187

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #28
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN7V3Error1sEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN14V3ErrorGuardedC2Ev(ptr noundef nonnull align 8 dereferenceable(720) @_ZZN7V3Error1sEvE3s_s)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN14V3ErrorGuardedD2Ev, ptr nonnull @_ZZN7V3Error1sEvE3s_s, ptr nonnull @__dso_handle) #28 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #28
  br label %_ZN7V3Error1sEv.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.e ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12 ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #28
  br label %common.resume

_ZN7V3Error1sEv.exit:                             ; preds = %bb.a, %bb.b, %bb.d
  %i.f = tail call ptr @llvm.ptr.annotation.p0.p0(ptr nonnull getelementptr inbounds nuw (i8, ptr @_ZZN7V3Error1sEvE3s_s, i64 200), ptr nonnull @.str.9, ptr nonnull @.str.10, i32 468, ptr null)
  store i8 1, ptr %i.f, align 8, !tbaa !218
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @_ZNK8FileLine11warnContextB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(48) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  invoke void @_ZNK8FileLine17warnContextParentB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %_ZN7V3Error1sEv.exit
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.g = load ptr, ptr %3, align 8, !tbaa !48     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.j = load i64, ptr %i.h, align 8, !tbaa !49
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.l = load ptr, ptr %2, align 8, !tbaa !48     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.o = load i64, ptr %i.m, align 8, !tbaa !49
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void

bb.h:                                             ; preds = %_ZN7V3Error1sEv.exit
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

bb.i:                                             ; preds = %bb.f
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = load ptr, ptr %3, align 8, !tbaa !48     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %bb.i
  %i.v = load i64, ptr %i.t, align 8, !tbaa !49
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7, %bb.h
  %.pn = phi { ptr, i32 } [ %i.q, %bb.h ], [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7 ], [ %i.r, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.x = load ptr, ptr %2, align 8, !tbaa !48     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !49
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN18AstToDfgSynthesize15coalesceDriversERSt6vectorINS_6DriverESaIS1_EE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !540    ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !540  ; 3 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.c, !prof !169

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.82, i32 noundef 925) ; 0 uses
  %i.f = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.623)
  tail call void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.g) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !542  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !388, !nonnull !100, !align !235
  %i.k = load i8, ptr %i.j, align 8, !tbaa !434
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %.preheader, label %bb.d, !prof !149

.preheader:                                       ; preds = %bb.c
  %i.m = ptrtoint ptr %i.c to i64
  %i.n = ptrtoint ptr %i.a to i64
  %i.o = sub i64 %i.m, %i.n                       ; 2 uses
  %.cmp = icmp ugt i64 %i.o, 23
  %2 = zext i1 %.cmp to i64
  %i.p = icmp ugt i64 %i.o, 24
  br i1 %i.p, label %.lr.ph, label %._crit_edge

bb.d:                                             ; preds = %bb.c
  %i.q = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.82, i32 noundef 926) ; 0 uses
  %i.r = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull @.str.624)
  tail call void @_ZNK9DfgVertex15v3errorEndFatalERNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(96) %i.h, ptr noundef nonnull align 8 dereferenceable(112) %i.s) #29
  unreachable

._crit_edge:                                      ; preds = %bb.ap, %.preheader
  %.0.lcssa = phi i64 [ 0, %.preheader ], [ %.1, %bb.ap ] ; 2 uses
  %.lcssa73 = phi ptr [ %i.c, %.preheader ], [ %i.dz, %bb.ap ]
  %.lcssa68 = phi ptr [ %i.a, %.preheader ], [ %i.ea, %bb.ap ]
  %.lcssa = phi i64 [ %2, %.preheader ], [ %i.ee, %bb.ap ] ; 3 uses
  %i.t = add nuw i64 %.0.lcssa, 1                 ; 3 uses
  %.not61 = icmp ult i64 %.0.lcssa, %.lcssa
  br i1 %.not61, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.u = sub nuw i64 %i.t, %.lcssa
  tail call void @_ZNSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.u)
  br label %_ZNSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE6resizeEm.exit

bb.f:                                             ; preds = %._crit_edge
  %i.v = icmp ult i64 %i.t, %.lcssa
  br i1 %i.v, label %bb.g, label %_ZNSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE6resizeEm.exit

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %.lcssa68, i64 %i.t ; 2 uses
  %.not.i.i = icmp eq ptr %.lcssa73, %i.w
  br i1 %.not.i.i, label %_ZNSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE6resizeEm.exit, label %_ZSt8_DestroyIPN18AstToDfgSynthesize6DriverES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN18AstToDfgSynthesize6DriverES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %bb.g
  store ptr %i.w, ptr %i.b, align 8, !tbaa !539
  br label %_ZNSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE6resizeEm.exit

_ZNSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE6resizeEm.exit: ; preds = %bb.e, %bb.f, %bb.g, %_ZSt8_DestroyIPN18AstToDfgSynthesize6DriverES1_EvT_S3_RSaIT0_E.exit.i.i
  ret void

.lr.ph:                                           ; preds = %.preheader, %bb.ap
  %i.x = phi ptr [ %i.ea, %bb.ap ], [ %i.a, %.preheader ] ; 2 uses
  %.086 = phi i64 [ %.1, %bb.ap ], [ 0, %.preheader ] ; 6 uses
  %.04285 = phi i64 [ %.2, %bb.ap ], [ 1, %.preheader ] ; 4 uses
  %.not = icmp ult i64 %.086, %.04285
  br i1 %.not, label %bb.i, label %bb.h, !prof !149

bb.h:                                             ; preds = %.lr.ph
  %i.y = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.82, i32 noundef 930) ; 0 uses
  %i.z = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.aa = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef nonnull @.str.609)
  tail call void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.aa) #29
  unreachable

bb.i:                                             ; preds = %.lr.ph
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.x, i64 %.086 ; 10 uses
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.x, i64 %.04285 ; 10 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !542
  %.not62 = icmp eq ptr %i.ad, null
  br i1 %.not62, label %bb.ap, label %bb.j, !llvm.loop !1004

bb.j:                                             ; preds = %bb.i
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !542
  %.not63 = icmp eq ptr %i.ae, null
  br i1 %.not63, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 24, i1 false), !tbaa.struct !554
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i8 0, i64 24, i1 false)
  br label %bb.ap, !llvm.loop !1004

bb.l:                                             ; preds = %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !543 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !543 ; 2 uses
  %.not.i.i45 = icmp eq i32 %i.ag, %i.ai
  br i1 %.not.i.i45, label %bb.m, label %.split

.split:                                           ; preds = %bb.l
  %i.aj = icmp ult i32 %i.ag, %i.ai
  br i1 %i.aj, label %bb.n, label %bb.o, !prof !169

bb.m:                                             ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !555 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  %i.an = load i32, ptr %i.am, align 4, !tbaa !555 ; 2 uses
  %.not11.i.i = icmp eq i32 %i.al, %i.an
  br i1 %.not11.i.i, label %.split113, label %_ZNK18AstToDfgSynthesize6DriverleERKS0_.exit

.split113:                                        ; preds = %bb.m
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !544
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !544
  %i.as = tail call noundef i32 @_ZNK8FileLine15operatorCompareERKS_(ptr noundef nonnull align 8 dereferenceable(48) %i.ap, ptr noundef nonnull align 8 dereferenceable(48) %i.ar)
  %i.at = icmp slt i32 %i.as, 0
  br i1 %i.at, label %bb.n, label %bb.o, !prof !169

_ZNK18AstToDfgSynthesize6DriverleERKS0_.exit:     ; preds = %bb.m
  %i.au = icmp ult i32 %i.al, %i.an
  br i1 %i.au, label %bb.n, label %bb.o, !prof !169

bb.n:                                             ; preds = %.split113, %.split, %_ZNK18AstToDfgSynthesize6DriverleERKS0_.exit
  %i.av = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.82, i32 noundef 948) ; 0 uses
  %i.aw = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.ax = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, ptr noundef nonnull @.str.610)
  tail call void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.ax) #29
  unreachable

bb.o:                                             ; preds = %.split113, %.split, %_ZNK18AstToDfgSynthesize6DriverleERKS0_.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ab, i64 12 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !555
  %i.ba = add i32 %i.az, 1
  %i.bb = load i32, ptr %i.af, align 8, !tbaa !543
  %.not44 = icmp eq i32 %i.ba, %i.bb
  br i1 %.not44, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bc = add nuw i64 %.086, 1                    ; 2 uses
  %i.bd = icmp eq i64 %i.bc, %.04285
  %i.be = zext i1 %i.bd to i64
  br label %bb.ap, !llvm.loop !1004

bb.q:                                             ; preds = %bb.o
  %i.bf = load ptr, ptr %i.ab, align 8, !tbaa !542 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 72
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !388, !nonnull !100, !align !235 ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 8, !tbaa !434
  %i.bj = icmp eq i8 %i.bi, 0
  br i1 %i.bj, label %_ZNK9DfgVertex5widthEv.exit, label %bb.r, !prof !149

bb.r:                                             ; preds = %bb.q
  %i.bk = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.6, i32 noundef 195) ; 0 uses
  %i.bl = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.bm = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.bl, ptr noundef nonnull @.str.632)
  tail call void @_ZNK9DfgVertex15v3errorEndFatalERNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(96) %i.bf, ptr noundef nonnull align 8 dereferenceable(112) %i.bm) #29
  unreachable

_ZNK9DfgVertex5widthEv.exit:                      ; preds = %bb.q
  %i.bn = load ptr, ptr %i.ac, align 8, !tbaa !542 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 72
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !388, !nonnull !100, !align !235 ; 2 uses
  %i.bq = load i8, ptr %i.bp, align 8, !tbaa !434
  %i.br = icmp eq i8 %i.bq, 0
  br i1 %i.br, label %_ZNK9DfgVertex5widthEv.exit46, label %bb.s, !prof !149

bb.s:                                             ; preds = %_ZNK9DfgVertex5widthEv.exit
  %i.bs = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.6, i32 noundef 195) ; 0 uses
  %i.bt = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.bu = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.bt, ptr noundef nonnull @.str.632)
  tail call void @_ZNK9DfgVertex15v3errorEndFatalERNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(96) %i.bn, ptr noundef nonnull align 8 dereferenceable(112) %i.bu) #29
  unreachable

_ZNK9DfgVertex5widthEv.exit46:                    ; preds = %_ZNK9DfgVertex5widthEv.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !393
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !393
  %i.bz = add i32 %i.by, %i.bw
  %i.ca = tail call noundef nonnull align 8 dereferenceable(80) ptr @_ZN11DfgDataType6packedEj(i32 noundef %i.bz)
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.cc = tail call noundef ptr @_ZN18AstToDfgSynthesize4makeI9DfgConcatJRP8FileLineRK11DfgDataTypeEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.cb, ptr noundef nonnull align 8 dereferenceable(80) %i.ca) ; 2 uses
  %i.cd = load ptr, ptr %i.ab, align 8, !tbaa !542 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 24 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !156
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !157 ; 11 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !160 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ci, null
  br i1 %.not.i.i.i.i, label %_ZN7DfgEdge10unlinkSrcpEv.exit.i.i.i, label %bb.t

bb.t:                                             ; preds = %_ZNK9DfgVertex5widthEv.exit46
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 48 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 16 ; 3 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !171 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cl, null
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %.pre.i.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !366 ; 4 uses
  br i1 %.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  store ptr %.pre.i.i.i.i.i, ptr %i.cm, align 8, !tbaa !366
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.u, %bb.t
  %.not15.i.i.i.i.i = icmp eq ptr %.pre.i.i.i.i.i, null
  br i1 %.not15.i.i.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i, i64 16
  store ptr %i.cl, ptr %i.cn, align 8, !tbaa !171
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %._crit_edge.i.i.i.i.i
  %i.co = load ptr, ptr %i.cj, align 8, !tbaa !170
  %i.cp = icmp eq ptr %i.co, %i.ch
  br i1 %i.cp, label %bb.x, label %bb.y

end_hunk_2
