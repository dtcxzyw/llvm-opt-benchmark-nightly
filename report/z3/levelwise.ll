Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/levelwise?download=true
inline.NumInlined: 2279
inline.NumDeleted: 966
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN5nlsat9levelwise4impl13process_levelEv:bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !116
  %i.aq = load ptr, ptr %i.an, align 8, !tbaa !115 ; 3 uses
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = sdiv exact i64 %i.at, 40
  %i.av = icmp ult i64 %i.au, 4
  br i1 %i.av, label %_ZN5nlsat9levelwise4impl24should_use_spanning_treeEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aw = load ptr, ptr %i.r, align 8, !tbaa !141
  %i.ax = load ptr, ptr %i.p, align 8, !tbaa !121 ; 2 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZN5nlsat9levelwise4impl24should_use_spanning_treeEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !92 ; 2 uses
  %.not12.i = icmp eq i32 %i.ba, -1
  br i1 %.not12.i, label %_ZN5nlsat9levelwise4impl24should_use_spanning_treeEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !93 ; 2 uses
  %.not13.i = icmp eq i32 %i.bc, -1
  br i1 %.not13.i, label %_ZN5nlsat9levelwise4impl24should_use_spanning_treeEv.exit, label %_ZNK5nlsat9levelwise4impl18same_boundary_polyEv.exit.i

_ZNK5nlsat9levelwise4impl18same_boundary_polyEv.exit.i: ; preds = %bb.j
  %i.bd = zext i32 %i.ba to i64
  %i.be = getelementptr inbounds nuw [40 x i8], ptr %i.aq, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !145
  %i.bh = zext i32 %i.bc to i64
  %i.bi = getelementptr inbounds nuw [40 x i8], ptr %i.aq, i64 %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !145
  %i.bl = icmp eq i32 %i.bg, %i.bk
  br i1 %i.bl, label %_ZN5nlsat9levelwise4impl24should_use_spanning_treeEv.exit, label %.preheader.i

.preheader.i:                                     ; preds = %_ZNK5nlsat9levelwise4impl18same_boundary_polyEv.exit.i
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !122 ; 2 uses
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %_ZN5nlsat9levelwise4impl24should_use_spanning_treeEv.exit, label %_ZNK15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE4sizeEv.exit.lr.ph.i

_ZNK15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE4sizeEv.exit.lr.ph.i: ; preds = %.preheader.i
  %i.bp = getelementptr inbounds i8, ptr %i.bn, i64 -4
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !123 ; 2 uses
  %.not24.i = icmp eq i32 %i.bq, 0
  br i1 %.not24.i, label %_ZN5nlsat9levelwise4impl24should_use_spanning_treeEv.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZNK15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE4sizeEv.exit.lr.ph.i
  %wide.trip.count.i = zext i32 %i.bq to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE4sizeEv.exit.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %_ZNK15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE4sizeEv.exit.i ] ; 2 uses
  %.071422.i = phi i32 [ 0, %.lr.ph.preheader.i ], [ %.1.i, %_ZNK15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE4sizeEv.exit.i ] ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.ax, i64 %indvars.iv.i
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !146
  %i.bt = icmp eq i8 %i.bs, 3
  br i1 %i.bt, label %bb.k, label %_ZNK15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE4sizeEv.exit.i

bb.k:                                             ; preds = %.lr.ph.i
  %i.bu = add i32 %.071422.i, 1                   ; 2 uses
  %.not.i = icmp ult i32 %i.bu, %i.al
  br i1 %.not.i, label %_ZNK15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE4sizeEv.exit.i, label %_ZN5nlsat9levelwise4impl24should_use_spanning_treeEv.exit

_ZNK15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE4sizeEv.exit.i: ; preds = %bb.k, %.lr.ph.i
  %.1.i = phi i32 [ %i.bu, %bb.k ], [ %.071422.i, %.lr.ph.i ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN5nlsat9levelwise4impl24should_use_spanning_treeEv.exit, label %.lr.ph.i

_ZN5nlsat9levelwise4impl24should_use_spanning_treeEv.exit: ; preds = %_ZNK15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE4sizeEv.exit.i, %bb.k, %_ZNK15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE4sizeEv.exit.lr.ph.i, %.preheader.i, %bb.j, %_ZNK5nlsat9levelwise4impl18same_boundary_polyEv.exit.i, %bb.i, %bb.g, %bb.f, %bb.h, %_ZN5nlsat9levelwise4impl17clear_level_stateEv.exit
  %.0 = phi i32 [ 0, %_ZN5nlsat9levelwise4impl17clear_level_stateEv.exit ], [ 1, %_ZNK15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE4sizeEv.exit.lr.ph.i ], [ 1, %bb.h ], [ 1, %bb.f ], [ 1, %bb.g ], [ 1, %bb.i ], [ 1, %_ZNK5nlsat9levelwise4impl18same_boundary_polyEv.exit.i ], [ 1, %bb.j ], [ 1, %.preheader.i ], [ 1, %_ZNK15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE4sizeEv.exit.i ], [ 2, %bb.k ]
  tail call void @_ZN5nlsat9levelwise4impl23process_level_with_modeENS_15projection_modeEb(ptr noundef nonnull align 8 dereferenceable(464) %0, i32 noundef %.0, i1 noundef zeroext %i.ab)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN5nlsat9levelwise22root_function_intervalESt6vectorIS4_13std_allocatorIS4_EEEEPS4_S9_ET0_T_SE_SD_RT1_(ptr %0, ptr %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %.019 = phi ptr [ %i.x, %bb.e ], [ %2, %bb.a ]  ; 10 uses
  %.sroa.010.018 = phi ptr [ %i.w, %bb.e ], [ %0, %bb.a ] ; 8 uses
  %i.b = load i8, ptr %.sroa.010.018, align 8, !tbaa !112, !range !132, !noundef !95
  store i8 %i.b, ptr %.019, align 8, !tbaa !112
  %i.c = getelementptr inbounds nuw i8, ptr %.019, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.010.018, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !113  ; 3 uses
  store ptr %i.e, ptr %i.c, align 8, !tbaa !113
  %i.f = getelementptr inbounds nuw i8, ptr %.019, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.010.018, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !128, !nonnull !95, !align !96 ; 2 uses
  store ptr %i.h, ptr %i.f, align 8, !tbaa !87
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEEC2ERKS3_.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  invoke void @_ZN10polynomial7manager7inc_refEPNS_10polynomialE(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull %i.e)
          to label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEEC2ERKS3_.exit.i.i.i.i unwind label %bb.f

_ZN7obj_refIN10polynomial10polynomialENS0_7managerEEC2ERKS3_.exit.i.i.i.i: ; preds = %bb.b, %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %.019, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.010.018, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !133
  store i32 %i.k, ptr %i.i, align 8, !tbaa !133
  %i.l = getelementptr inbounds nuw i8, ptr %.019, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.010.018, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !113  ; 3 uses
  store ptr %i.n, ptr %i.l, align 8, !tbaa !113
  %i.o = getelementptr inbounds nuw i8, ptr %.019, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.010.018, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !128, !nonnull !95, !align !96 ; 2 uses
  store ptr %i.q, ptr %i.o, align 8, !tbaa !87
  %.not.i.i7.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i7.i.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEEC2ERKS3_.exit.i.i.i.i
  invoke void @_ZN10polynomial7manager7inc_refEPNS_10polynomialE(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull %i.n)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = getelementptr inbounds nuw i8, ptr %.019, i64 8
  tail call void @_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.s) #21
  br label %.body

bb.e:                                             ; preds = %bb.c, %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEEC2ERKS3_.exit.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.019, i64 48
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.010.018, i64 48
  %i.v = load i32, ptr %i.u, align 8, !tbaa !134
  store i32 %i.v, ptr %i.t, align 8, !tbaa !134
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.010.018, i64 56 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.019, i64 56 ; 2 uses
  %i.y = icmp eq ptr %i.w, %1
  br i1 %i.y, label %._crit_edge, label %.lr.ph, !llvm.loop !238

bb.f:                                             ; preds = %bb.b
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %bb.d, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.z, %bb.f ], [ %i.r, %bb.d ]
  %i.aa = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.ab = tail call ptr @__cxa_begin_catch(ptr %i.aa) #21 ; 0 uses
  tail call void @_ZSt8_DestroyIPN5nlsat9levelwise22root_function_intervalE13std_allocatorIS2_EEvT_S6_RT0_(ptr noundef %2, ptr noundef nonnull %.019, ptr noundef nonnull align 1 dereferenceable(1) %3)
  invoke void @__cxa_rethrow() #23
          to label %bb.j unwind label %bb.g

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.x, %bb.e ]
  ret ptr %.0.lcssa

bb.g:                                             ; preds = %.body
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.ac

bb.i:                                             ; preds = %bb.g
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  tail call void @__clang_call_terminate(ptr %i.ae) #22
  unreachable

bb.j:                                             ; preds = %.body
  unreachable
}

declare void @_ZN10polynomial7manager7inc_refEPNS_10polynomialE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #5

declare void @_ZN5nlsat6factorER7obj_refIN10polynomial10polynomialENS1_7managerEERNS1_5cacheER10ref_vectorIS2_S3_E(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #5

declare noundef ptr @_ZN5nlsat8todo_set6insertEPN10polynomial10polynomialE(ptr noundef nonnull align 8 dereferenceable(33), ptr noundef) local_unnamed_addr #5

declare noundef zeroext i1 @_ZN10polynomial7manager7is_zeroEPKNS_10polynomialE(ptr noundef) local_unnamed_addr #5

declare noundef zeroext i1 @_ZN10polynomial7manager8is_constEPKNS_10polynomialE(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5nlsat9levelwise4impl26collect_non_null_witnessesEv(ptr noundef nonnull align 8 dereferenceable(464) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.obj_ref, align 8             ; 9 uses
  %2 = alloca %class.obj_ref, align 8             ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !126  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !127  ; 3 uses
  %.not.i.i = icmp eq ptr %i.d, %i.b
  br i1 %.not.i.i, label %_ZNSt6vectorI7obj_refIN10polynomial10polynomialENS1_7managerEE13std_allocatorIS4_EE5clearEv.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZNSt16allocator_traitsI13std_allocatorI7obj_refIN10polynomial10polynomialENS2_7managerEEEE7destroyIS5_EEvRS6_PT_.exit.i.i.i
  %.06.i.i.i = phi ptr [ %i.j, %_ZNSt16allocator_traitsI13std_allocatorI7obj_refIN10polynomial10polynomialENS2_7managerEEEE7destroyIS5_EEvRS6_PT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = load ptr, ptr %.06.i.i.i, align 8, !tbaa !113 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt16allocator_traitsI13std_allocatorI7obj_refIN10polynomial10polynomialENS2_7managerEEEE7destroyIS5_EEvRS6_PT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !128, !nonnull !95, !align !96
  invoke void @_ZN10polynomial7manager7dec_refEPNS_10polynomialE(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull %i.e)
          to label %_ZNSt16allocator_traitsI13std_allocatorI7obj_refIN10polynomial10polynomialENS2_7managerEEEE7destroyIS5_EEvRS6_PT_.exit.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #22
  unreachable

_ZNSt16allocator_traitsI13std_allocatorI7obj_refIN10polynomial10polynomialENS2_7managerEEEE7destroyIS5_EEvRS6_PT_.exit.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIP7obj_refIN10polynomial10polynomialENS1_7managerEE13std_allocatorIS4_EEvT_S8_RT0_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !2

_ZSt8_DestroyIP7obj_refIN10polynomial10polynomialENS1_7managerEE13std_allocatorIS4_EEvT_S8_RT0_.exit.i.i: ; preds = %_ZNSt16allocator_traitsI13std_allocatorI7obj_refIN10polynomial10polynomialENS2_7managerEEEE7destroyIS5_EEvRS6_PT_.exit.i.i.i
  store ptr %i.b, ptr %i.c, align 8, !tbaa !127
  br label %_ZNSt6vectorI7obj_refIN10polynomial10polynomialENS1_7managerEE13std_allocatorIS4_EE5clearEv.exit

_ZNSt6vectorI7obj_refIN10polynomial10polynomialENS1_7managerEE13std_allocatorIS4_EE5clearEv.exit: ; preds = %bb.a, %_ZSt8_DestroyIP7obj_refIN10polynomial10polynomialENS1_7managerEE13std_allocatorIS4_EEvT_S8_RT0_.exit.i.i
  %3 = phi ptr [ %i.d, %bb.a ], [ %i.b, %_ZSt8_DestroyIP7obj_refIN10polynomial10polynomialENS1_7managerEE13std_allocatorIS4_EEvT_S8_RT0_.exit.i.i ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 4 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !122  ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %.critedge, label %_ZNK15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE4sizeEv.exit

_ZNK15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE4sizeEv.exit: ; preds = %_ZNSt6vectorI7obj_refIN10polynomial10polynomialENS1_7managerEE13std_allocatorIS4_EE5clearEv.exit
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 -4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !123
  %i.q = zext i32 %i.p to i64                     ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !147
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !126
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64                 ; 2 uses
  %i.w = sub i64 %i.u, %i.v
  %i.x = ashr exact i64 %i.w, 4
  %i.y = icmp ult i64 %i.x, %i.q
  br i1 %i.y, label %_ZNSt12_Vector_baseI7obj_refIN10polynomial10polynomialENS1_7managerEE13std_allocatorIS4_EE11_M_allocateEm.exit.i, label %_ZNK15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE4sizeEv.exit10.lr.ph

_ZNSt12_Vector_baseI7obj_refIN10polynomial10polynomialENS1_7managerEE13std_allocatorIS4_EE11_M_allocateEm.exit.i: ; preds = %_ZNK15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE4sizeEv.exit
  %i.z = ptrtoint ptr %3 to i64
  %i.aa = sub i64 %i.z, %i.v
  %i.ab = shl nuw nsw i64 %i.q, 4
  %i.ac = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.ab) ; 4 uses
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !126 ; 4 uses
  %i.ae = load ptr, ptr %i.c, align 8, !tbaa !127 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.ad, %i.ae
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorI7obj_refIN10polynomial10polynomialENS1_7managerEE13std_allocatorIS4_EE11_S_relocateEPS4_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt12_Vector_baseI7obj_refIN10polynomial10polynomialENS1_7managerEE13std_allocatorIS4_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i ], [ %i.ac, %_ZNSt12_Vector_baseI7obj_refIN10polynomial10polynomialENS1_7managerEE13std_allocatorIS4_EE11_M_allocateEm.exit.i ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i ], [ %i.ad, %_ZNSt12_Vector_baseI7obj_refIN10polynomial10polynomialENS1_7managerEE13std_allocatorIS4_EE11_M_allocateEm.exit.i ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !243)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !244)
  %i.af = load <2 x ptr>, ptr %.0911.i.i.i.i, align 8, !tbaa !135, !alias.scope !244
  store <2 x ptr> %i.af, ptr %.012.i.i.i.i, align 8, !tbaa !135, !alias.scope !243
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !113, !alias.scope !244
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16
  %.not.i.i.i.i = icmp eq ptr %i.ag, %i.ae
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorI7obj_refIN10polynomial10polynomialENS1_7managerEE13std_allocatorIS4_EE11_S_relocateEPS4_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !5

_ZNSt6vectorI7obj_refIN10polynomial10polynomialENS1_7managerEE13std_allocatorIS4_EE11_S_relocateEPS4_S8_S8_RS6_.exit.i: ; preds = %.lr.ph.i.i.i.i, %_ZNSt12_Vector_baseI7obj_refIN10polynomial10polynomialENS1_7managerEE13std_allocatorIS4_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.ad, null
  br i1 %.not.i8.i, label %_ZNSt6vectorI7obj_refIN10polynomial10polynomialENS1_7managerEE13std_allocatorIS4_EE7reserveEm.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorI7obj_refIN10polynomial10polynomialENS1_7managerEE13std_allocatorIS4_EE11_S_relocateEPS4_S8_S8_RS6_.exit.i
  tail call void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.ad)
  br label %_ZNSt6vectorI7obj_refIN10polynomial10polynomialENS1_7managerEE13std_allocatorIS4_EE7reserveEm.exit

_ZNSt6vectorI7obj_refIN10polynomial10polynomialENS1_7managerEE13std_allocatorIS4_EE7reserveEm.exit: ; preds = %_ZNSt6vectorI7obj_refIN10polynomial10polynomialENS1_7managerEE13std_allocatorIS4_EE11_S_relocateEPS4_S8_S8_RS6_.exit.i, %bb.d
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !126
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.aa
  store ptr %i.ai, ptr %i.c, align 8, !tbaa !127
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %i.q
  store ptr %i.aj, ptr %i.r, align 8, !tbaa !147
  %.pre = load ptr, ptr %i.l, align 8, !tbaa !122 ; 2 uses
  %i.ak = icmp eq ptr %.pre, null
  br i1 %i.ak, label %.critedge, label %_ZNK15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE4sizeEv.exit10.lr.ph

_ZNK15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE4sizeEv.exit10.lr.ph: ; preds = %_ZNK15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE4sizeEv.exit, %_ZNSt6vectorI7obj_refIN10polynomial10polynomialENS1_7managerEE13std_allocatorIS4_EE7reserveEm.exit
  %i.al = phi ptr [ %.pre, %_ZNSt6vectorI7obj_refIN10polynomial10polynomialENS1_7managerEE13std_allocatorIS4_EE7reserveEm.exit ], [ %i.m, %_ZNK15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE4sizeEv.exit ]
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 96
  br label %_ZNK15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE4sizeEv.exit10

_ZNK15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE4sizeEv.exit10: ; preds = %_ZNK15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE4sizeEv.exit10.lr.ph, %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit17
  %indvars.iv = phi i64 [ 0, %_ZNK15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE4sizeEv.exit10.lr.ph ], [ %indvars.iv.next, %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit17 ] ; 3 uses
  %i.ar = phi ptr [ %i.al, %_ZNK15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE4sizeEv.exit10.lr.ph ], [ %i.cb, %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit17 ] ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !123
  %i.au = zext i32 %i.at to i64
  %i.av = icmp samesign ult i64 %indvars.iv, %i.au
  br i1 %i.av, label %bb.e, label %.critedge

.critedge:                                        ; preds = %_ZNK15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE4sizeEv.exit10, %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit17, %_ZNSt6vectorI7obj_refIN10polynomial10polynomialENS1_7managerEE13std_allocatorIS4_EE5clearEv.exit, %_ZNSt6vectorI7obj_refIN10polynomial10polynomialENS1_7managerEE13std_allocatorIS4_EE7reserveEm.exit
  ret void

bb.e:                                             ; preds = %_ZNK15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE4sizeEv.exit10
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !124 ; 3 uses
  %i.ay = load ptr, ptr %i.am, align 8, !tbaa !94, !nonnull !95, !align !96 ; 2 uses
  store ptr %i.ax, ptr %1, align 8, !tbaa !113
  store ptr %i.ay, ptr %i.an, align 8, !tbaa !87
  %.not.i.i11 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i11, label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEEC2EPS1_RS2_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZN10polynomial7manager7inc_refEPNS_10polynomialE(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef nonnull %i.ax)
  br label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEEC2EPS1_RS2_.exit

_ZN7obj_refIN10polynomial10polynomialENS0_7managerEEC2EPS1_RS2_.exit: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.az = load i32, ptr %i.ao, align 8, !tbaa !131
  invoke void @_ZN5nlsat9levelwise4impl20choose_nonzero_coeffERK7obj_refIN10polynomial10polynomialENS3_7managerEEj(ptr dead_on_unwind nonnull writable sret(%class.obj_ref) align 8 %2, ptr noundef nonnull align 8 dereferenceable(464) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %i.az)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEEC2EPS1_RS2_.exit
  %i.ba = load ptr, ptr %2, align 8, !tbaa !113
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN5nlsat9levelwise4impl21handle_nullified_polyERK7obj_refIN10polynomial10polynomialENS3_7managerEE(ptr noundef nonnull align 8 dereferenceable(464) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.k unwind label %bb.j

bb.i:                                             ; preds = %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEEC2EPS1_RS2_.exit
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.j:                                             ; preds = %bb.n, %bb.m, %bb.o, %bb.h
  %i.bd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #21
  br label %bb.t

bb.k:                                             ; preds = %bb.h, %bb.g
  %i.be = load ptr, ptr %i.c, align 8, !tbaa !127 ; 5 uses
  %i.bf = load ptr, ptr %i.r, align 8, !tbaa !147
  %.not.i = icmp eq ptr %i.be, %i.bf
  br i1 %.not.i, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bg = load ptr, ptr %2, align 8, !tbaa !113   ; 3 uses
  store ptr %i.bg, ptr %i.be, align 8, !tbaa !113
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bi = load ptr, ptr %i.ap, align 8, !tbaa !128, !nonnull !95, !align !96 ; 2 uses
  store ptr %i.bi, ptr %i.bh, align 8, !tbaa !87
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt16allocator_traitsI13std_allocatorI7obj_refIN10polynomial10polynomialENS2_7managerEEEE9constructIS5_JRKS5_EEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS6_PT_DpOSB_.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN10polynomial7manager7inc_refEPNS_10polynomialE(ptr noundef nonnull align 8 dereferenceable(8) %i.bi, ptr noundef nonnull %i.bg)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.m
  %.pre.i = load ptr, ptr %i.c, align 8, !tbaa !127
  br label %_ZNSt16allocator_traitsI13std_allocatorI7obj_refIN10polynomial10polynomialENS2_7managerEEEE9constructIS5_JRKS5_EEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS6_PT_DpOSB_.exit.i

_ZNSt16allocator_traitsI13std_allocatorI7obj_refIN10polynomial10polynomialENS2_7managerEEEE9constructIS5_JRKS5_EEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS6_PT_DpOSB_.exit.i: ; preds = %.noexc, %bb.l
  %i.bj = phi ptr [ %i.be, %bb.l ], [ %.pre.i, %.noexc ]
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  store ptr %i.bk, ptr %i.c, align 8, !tbaa !127
  br label %_ZNSt6vectorI7obj_refIN10polynomial10polynomialENS1_7managerEE13std_allocatorIS4_EE9push_backERKS4_.exit

bb.n:                                             ; preds = %bb.k
  invoke void @_ZNSt6vectorI7obj_refIN10polynomial10polynomialENS1_7managerEE13std_allocatorIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr %i.be, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %_ZNSt6vectorI7obj_refIN10polynomial10polynomialENS1_7managerEE13std_allocatorIS4_EE9push_backERKS4_.exit unwind label %bb.j

_ZNSt6vectorI7obj_refIN10polynomial10polynomialENS1_7managerEE13std_allocatorIS4_EE9push_backERKS4_.exit: ; preds = %_ZNSt16allocator_traitsI13std_allocatorI7obj_refIN10polynomial10polynomialENS2_7managerEEEE9constructIS5_JRKS5_EEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS6_PT_DpOSB_.exit.i, %bb.n
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bl = load ptr, ptr %i.l, align 8, !tbaa !122 ; 2 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %_ZNK15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE4sizeEv.exit14.thread, label %_ZNK15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE4sizeEv.exit14

_ZNK15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE4sizeEv.exit14: ; preds = %_ZNSt6vectorI7obj_refIN10polynomial10polynomialENS1_7managerEE13std_allocatorIS4_EE9push_backERKS4_.exit
  %i.bn = getelementptr inbounds i8, ptr %i.bl, i64 -4
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !123
  %i.bp = zext i32 %i.bo to i64
  %i.bq = icmp eq i64 %indvars.iv.next, %i.bp
  br i1 %i.bq, label %bb.o, label %_ZNK15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE4sizeEv.exit14.thread

bb.o:                                             ; preds = %_ZNK15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE4sizeEv.exit14
  %i.br = load i32, ptr %i.ao, align 8, !tbaa !131
  %i.bs = invoke noundef i32 @_ZN5nlsat8todo_set22extract_polys_at_levelEjR10ref_vectorIN10polynomial10polynomialENS2_7managerEE(ptr noundef nonnull align 8 dereferenceable(33) %i.aq, i32 noundef %i.br, ptr noundef nonnull align 8 dereferenceable(16) %i.k)
          to label %_ZNK15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE4sizeEv.exit14.thread unwind label %bb.j ; 0 uses

_ZNK15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE4sizeEv.exit14.thread: ; preds = %_ZNSt6vectorI7obj_refIN10polynomial10polynomialENS1_7managerEE13std_allocatorIS4_EE9push_backERKS4_.exit, %bb.o, %_ZNK15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE4sizeEv.exit14
  %i.bt = load ptr, ptr %2, align 8, !tbaa !113   ; 2 uses
  %.not.i.i15 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i15, label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZNK15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE4sizeEv.exit14.thread
  %i.bu = load ptr, ptr %i.ap, align 8, !tbaa !128, !nonnull !95, !align !96
  invoke void @_ZN10polynomial7manager7dec_refEPNS_10polynomialE(ptr noundef nonnull align 8 dereferenceable(8) %i.bu, ptr noundef nonnull %i.bt)
          to label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bv = landingpad { ptr, i32 }
          catch ptr null
  %i.bw = extractvalue { ptr, i32 } %i.bv, 0
  call void @__clang_call_terminate(ptr %i.bw) #22
  unreachable

_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit: ; preds = %_ZNK15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE4sizeEv.exit14.thread, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.bx = load ptr, ptr %1, align 8, !tbaa !113   ; 2 uses
  %.not.i.i16 = icmp eq ptr %i.bx, null
  br i1 %.not.i.i16, label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit17, label %bb.r

bb.r:                                             ; preds = %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit
  %i.by = load ptr, ptr %i.an, align 8, !tbaa !128, !nonnull !95, !align !96
  invoke void @_ZN10polynomial7manager7dec_refEPNS_10polynomialE(ptr noundef nonnull align 8 dereferenceable(8) %i.by, ptr noundef nonnull %i.bx)
          to label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit17 unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bz = landingpad { ptr, i32 }
          catch ptr null
  %i.ca = extractvalue { ptr, i32 } %i.bz, 0
  call void @__clang_call_terminate(ptr %i.ca) #22
  unreachable

_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit17: ; preds = %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  %i.cb = load ptr, ptr %i.l, align 8, !tbaa !122 ; 2 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %.critedge, label %_ZNK15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE4sizeEv.exit10, !llvm.loop !242

bb.t:                                             ; preds = %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.bd, %bb.j ], [ %i.bc, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  resume { ptr, i32 } %.pn
}

end_hunk_0
begin_hunk_1_@_ZN5nlsat9levelwise4impl29build_both_side_spanning_treeEv:bb.a
  %i.h = sdiv exact i64 %i.g, 40                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !122  ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_ZNSt12_Vector_baseIj13std_allocatorIjEEC2EmRKS1_.exit.thread.i, label %_ZNK15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE4sizeEv.exit

_ZNK15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE4sizeEv.exit: ; preds = %bb.a
  %i.l = getelementptr inbounds i8, ptr %i.j, i64 -4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !123  ; 2 uses
  %i.n = zext i32 %i.m to i64                     ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIj13std_allocatorIjEEC2EmRKS1_.exit.thread.i, label %.lr.ph.preheader.i.i.i

_ZNSt12_Vector_baseIj13std_allocatorIjEEC2EmRKS1_.exit.thread.i: ; preds = %bb.a, %_ZNK15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE4sizeEv.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br label %.loopexit111

.lr.ph.preheader.i.i.i:                           ; preds = %_ZNK15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE4sizeEv.exit
  %i.o = shl nuw nsw i64 %i.n, 2                  ; 3 uses
  %i.p = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.o)
          to label %.noexc unwind label %bb.c     ; 5 uses

.noexc:                                           ; preds = %.lr.ph.preheader.i.i.i
  store ptr %i.p, ptr %2, align 8, !tbaa !120
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.q, ptr %i.r, align 8, !tbaa !169
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.p, i8 -1, i64 %i.o, i1 false), !tbaa !123
  %scevgep = getelementptr i8, ptr %i.p, i64 %i.o
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !122
  br label %.loopexit111

.loopexit111:                                     ; preds = %.noexc, %_ZNSt12_Vector_baseIj13std_allocatorIjEEC2EmRKS1_.exit.thread.i
  %i.s = phi ptr [ null, %_ZNSt12_Vector_baseIj13std_allocatorIjEEC2EmRKS1_.exit.thread.i ], [ %i.p, %.noexc ] ; 6 uses
  %i.t = phi ptr [ %i.j, %_ZNSt12_Vector_baseIj13std_allocatorIjEEC2EmRKS1_.exit.thread.i ], [ %.pre, %.noexc ] ; 2 uses
  %.0.lcssa.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIj13std_allocatorIjEEC2EmRKS1_.exit.thread.i ], [ %scevgep, %.noexc ]
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.0.lcssa.i.i.i, ptr %i.u, align 8, !tbaa !142
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.v = icmp eq ptr %i.t, null
  br i1 %i.v, label %_ZNSt12_Vector_baseIj13std_allocatorIjEEC2EmRKS1_.exit.thread.i68, label %_ZNK15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE4sizeEv.exit59

_ZNK15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE4sizeEv.exit59: ; preds = %.loopexit111
  %i.w = getelementptr inbounds i8, ptr %i.t, i64 -4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !123  ; 2 uses
  %i.y = zext i32 %i.x to i64                     ; 2 uses
  %.not.i.i.i.i60 = icmp eq i32 %i.x, 0
  br i1 %.not.i.i.i.i60, label %_ZNSt12_Vector_baseIj13std_allocatorIjEEC2EmRKS1_.exit.thread.i68, label %.lr.ph.preheader.i.i.i61

_ZNSt12_Vector_baseIj13std_allocatorIjEEC2EmRKS1_.exit.thread.i68: ; preds = %.loopexit111, %_ZNK15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE4sizeEv.exit59
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  br label %.loopexit110

.lr.ph.preheader.i.i.i61:                         ; preds = %_ZNK15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE4sizeEv.exit59
  %i.z = shl nuw nsw i64 %i.y, 2                  ; 3 uses
  %i.aa = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.z)
          to label %.noexc69 unwind label %bb.d   ; 5 uses

.noexc69:                                         ; preds = %.lr.ph.preheader.i.i.i61
  store ptr %i.aa, ptr %3, align 8, !tbaa !120
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.y
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !169
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.aa, i8 -1, i64 %i.z, i1 false), !tbaa !123
  %scevgep137 = getelementptr i8, ptr %i.aa, i64 %i.z
  br label %.loopexit110

.loopexit110:                                     ; preds = %.noexc69, %_ZNSt12_Vector_baseIj13std_allocatorIjEEC2EmRKS1_.exit.thread.i68
  %i.ad = phi ptr [ null, %_ZNSt12_Vector_baseIj13std_allocatorIjEEC2EmRKS1_.exit.thread.i68 ], [ %i.aa, %.noexc69 ] ; 2 uses
  %.0.lcssa.i.i.i67 = phi ptr [ null, %_ZNSt12_Vector_baseIj13std_allocatorIjEEC2EmRKS1_.exit.thread.i68 ], [ %scevgep137, %.noexc69 ]
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.0.lcssa.i.i.i67, ptr %i.ae, align 8, !tbaa !142
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !115 ; 6 uses
  %.pre139 = load i32, ptr %i.af, align 4, !tbaa !92
  %i.ah = add i32 %.pre139, 1                     ; 2 uses
  %umax = tail call i32 @llvm.umax.i32(i32 %i.ah, i32 1) ; 2 uses
  %xtraiter = and i32 %umax, 3                    ; 3 uses
  %i.ai = icmp ult i32 %i.ah, 4
  br i1 %i.ai, label %.epil.preheader, label %.loopexit110.new

.loopexit110.new:                                 ; preds = %.loopexit110
  %unroll_iter = and i32 %umax, -4
  br label %bb.e

.unr-lcssa:                                       ; preds = %bb.e
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.loopexit110
  %.050114.epil.init = phi i32 [ 0, %.loopexit110 ], [ %i.bx, %.unr-lcssa ]
  %lcmp.mod173 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod173)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %.050114.epil = phi i32 [ %.050114.epil.init, %.epil.preheader ], [ %i.ap, %bb.b ] ; 3 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.aj = zext i32 %.050114.epil to i64
  %i.ak = getelementptr inbounds nuw [40 x i8], ptr %i.ag, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.am = load i32, ptr %i.al, align 8, !tbaa !145
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.an
  store i32 %.050114.epil, ptr %i.ao, align 4, !tbaa !123
  %i.ap = add i32 %.050114.epil, 1
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.b, !llvm.loop !452

.epilog-lcssa:                                    ; preds = %bb.b, %.unr-lcssa
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !93 ; 2 uses
  %i.as = zext i32 %i.ar to i64                   ; 2 uses
  %i.at = icmp ugt i64 %i.h, %i.as
  br i1 %i.at, label %.lr.ph, label %.preheader109

bb.c:                                             ; preds = %.lr.ph.preheader.i.i.i
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.d:                                             ; preds = %.lr.ph.preheader.i.i.i61
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.e:                                             ; preds = %bb.e, %.loopexit110.new
  %.050114 = phi i32 [ 0, %.loopexit110.new ], [ %i.bx, %bb.e ] ; 6 uses
  %niter = phi i32 [ 0, %.loopexit110.new ], [ %niter.next.3, %bb.e ]
  %i.aw = zext i32 %.050114 to i64
  %i.ax = getelementptr inbounds nuw [40 x i8], ptr %i.ag, i64 %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !145
  %i.ba = zext i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.ba
  store i32 %.050114, ptr %i.bb, align 4, !tbaa !123
  %i.bc = or disjoint i32 %.050114, 1             ; 2 uses
  %i.bd = zext i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw [40 x i8], ptr %i.ag, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !145
  %i.bh = zext i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.bh
  store i32 %i.bc, ptr %i.bi, align 4, !tbaa !123
  %i.bj = or disjoint i32 %.050114, 2             ; 2 uses
  %i.bk = zext i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [40 x i8], ptr %i.ag, i64 %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !145
  %i.bo = zext i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.bo
  store i32 %i.bj, ptr %i.bp, align 4, !tbaa !123
  %i.bq = or disjoint i32 %.050114, 3             ; 2 uses
  %i.br = zext i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [40 x i8], ptr %i.ag, i64 %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !145
  %i.bv = zext i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.bv
  store i32 %i.bq, ptr %i.bw, align 4, !tbaa !123
  %i.bx = add i32 %.050114, 4                     ; 2 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %bb.e, !llvm.loop !453

.preheader109:                                    ; preds = %.lr.ph, %.epilog-lcssa
  %i.by = load ptr, ptr %i.i, align 8, !tbaa !122 ; 2 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %.critedge.thread, label %_ZNK15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE4sizeEv.exit72.lr.ph

.critedge.thread:                                 ; preds = %.preheader109
  store ptr null, ptr %1, align 8
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPZN5nlsat9levelwise4impl29build_both_side_spanning_treeEvE9both_infoSt6vectorIS5_13std_allocatorIS5_EEEEZNS4_29build_both_side_spanning_treeEvEUlRKS5_SD_E_EvT_SF_T0_.exit

_ZNK15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE4sizeEv.exit72.lr.ph: ; preds = %.preheader109
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %_ZNK15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE4sizeEv.exit72

.lr.ph:                                           ; preds = %.epilog-lcssa, %.lr.ph
  %i.cd = phi i64 [ %i.ck, %.lr.ph ], [ %i.as, %.epilog-lcssa ]
  %.049115 = phi i32 [ %i.cj, %.lr.ph ], [ %i.ar, %.epilog-lcssa ] ; 2 uses
  %i.ce = getelementptr inbounds nuw [40 x i8], ptr %i.ag, i64 %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !145
  %i.ch = zext i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ch
  store i32 %.049115, ptr %i.ci, align 4, !tbaa !123
  %i.cj = add i32 %.049115, 1                     ; 2 uses
  %i.ck = zext i32 %i.cj to i64                   ; 2 uses
  %i.cl = icmp ugt i64 %i.h, %i.ck
  br i1 %i.cl, label %.lr.ph, label %.preheader109, !llvm.loop !454

_ZNK15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE4sizeEv.exit72: ; preds = %_ZNK15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE4sizeEv.exit72.lr.ph, %_ZNSt6vectorIZN5nlsat9levelwise4impl29build_both_side_spanning_treeEvE9both_info13std_allocatorIS3_EE9push_backEOS3_.exit
  %i.cm = phi ptr [ %i.by, %_ZNK15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE4sizeEv.exit72.lr.ph ], [ %i.em, %_ZNSt6vectorIZN5nlsat9levelwise4impl29build_both_side_spanning_treeEvE9both_info13std_allocatorIS3_EE9push_backEOS3_.exit ] ; 3 uses
  %i.cn = phi ptr [ null, %_ZNK15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE4sizeEv.exit72.lr.ph ], [ %i.en, %_ZNSt6vectorIZN5nlsat9levelwise4impl29build_both_side_spanning_treeEvE9both_info13std_allocatorIS3_EE9push_backEOS3_.exit ] ; 5 uses
  %i.co = phi ptr [ null, %_ZNK15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE4sizeEv.exit72.lr.ph ], [ %i.eo, %_ZNSt6vectorIZN5nlsat9levelwise4impl29build_both_side_spanning_treeEvE9both_info13std_allocatorIS3_EE9push_backEOS3_.exit ] ; 8 uses
  %indvars.iv = phi i64 [ 0, %_ZNK15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE4sizeEv.exit72.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorIZN5nlsat9levelwise4impl29build_both_side_spanning_treeEvE9both_info13std_allocatorIS3_EE9push_backEOS3_.exit ] ; 7 uses
  %i.cp = phi ptr [ null, %_ZNK15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE4sizeEv.exit72.lr.ph ], [ %i.ep, %_ZNSt6vectorIZN5nlsat9levelwise4impl29build_both_side_spanning_treeEvE9both_info13std_allocatorIS3_EE9push_backEOS3_.exit ] ; 10 uses
  %i.cq = getelementptr inbounds i8, ptr %i.cm, i64 -4
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !123
  %i.cs = zext i32 %i.cr to i64
  %i.ct = icmp samesign ult i64 %indvars.iv, %i.cs
  br i1 %i.ct, label %bb.g, label %.critedge

.critedge:                                        ; preds = %_ZNK15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE4sizeEv.exit72, %_ZNSt6vectorIZN5nlsat9levelwise4impl29build_both_side_spanning_treeEvE9both_info13std_allocatorIS3_EE9push_backEOS3_.exit
  %i.cu = phi ptr [ %i.eo, %_ZNSt6vectorIZN5nlsat9levelwise4impl29build_both_side_spanning_treeEvE9both_info13std_allocatorIS3_EE9push_backEOS3_.exit ], [ %i.co, %_ZNK15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE4sizeEv.exit72 ] ; 5 uses
  %.lcssa116 = phi ptr [ %i.ep, %_ZNSt6vectorIZN5nlsat9levelwise4impl29build_both_side_spanning_treeEvE9both_info13std_allocatorIS3_EE9push_backEOS3_.exit ], [ %i.cp, %_ZNK15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE4sizeEv.exit72 ] ; 6 uses
  store ptr %.lcssa116, ptr %1, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cw = icmp eq ptr %.lcssa116, %i.cu
  br i1 %i.cw, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPZN5nlsat9levelwise4impl29build_both_side_spanning_treeEvE9both_infoSt6vectorIS5_13std_allocatorIS5_EEEEZNS4_29build_both_side_spanning_treeEvEUlRKS5_SD_E_EvT_SF_T0_.exit, label %bb.f

bb.f:                                             ; preds = %.critedge
  %i.cx = ptrtoint ptr %i.cu to i64
  %i.cy = ptrtoint ptr %.lcssa116 to i64
  %i.cz = sub i64 %i.cx, %i.cy
  %i.da = sdiv exact i64 %i.cz, 12
  %i.db = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.da, i1 true)
  %i.dc = shl nuw nsw i64 %i.db, 1
  %i.dd = xor i64 %i.dc, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPZN5nlsat9levelwise4impl29build_both_side_spanning_treeEvE9both_infoSt6vectorIS5_13std_allocatorIS5_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_29build_both_side_spanning_treeEvEUlRKS5_SF_E_EEEvT_SI_T0_T1_(ptr %.lcssa116, ptr %i.cu, i64 noundef %i.dd)
          to label %.noexc73 unwind label %.loopexit.split-lp

.noexc73:                                         ; preds = %bb.f
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPZN5nlsat9levelwise4impl29build_both_side_spanning_treeEvE9both_infoSt6vectorIS5_13std_allocatorIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_29build_both_side_spanning_treeEvEUlRKS5_SF_E_EEEvT_SI_T0_(ptr %.lcssa116, ptr %i.cu)
          to label %.noexc73._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPZN5nlsat9levelwise4impl29build_both_side_spanning_treeEvE9both_infoSt6vectorIS5_13std_allocatorIS5_EEEEZNS4_29build_both_side_spanning_treeEvEUlRKS5_SD_E_EvT_SF_T0_.exit_crit_edge unwind label %.loopexit.split-lp

.noexc73._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPZN5nlsat9levelwise4impl29build_both_side_spanning_treeEvE9both_infoSt6vectorIS5_13std_allocatorIS5_EEEEZNS4_29build_both_side_spanning_treeEvEUlRKS5_SD_E_EvT_SF_T0_.exit_crit_edge: ; preds = %.noexc73
  %.pre141 = load ptr, ptr %i.cv, align 8, !tbaa !462
  %.pre142 = load ptr, ptr %1, align 8, !tbaa !208
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPZN5nlsat9levelwise4impl29build_both_side_spanning_treeEvE9both_infoSt6vectorIS5_13std_allocatorIS5_EEEEZNS4_29build_both_side_spanning_treeEvEUlRKS5_SD_E_EvT_SF_T0_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPZN5nlsat9levelwise4impl29build_both_side_spanning_treeEvE9both_infoSt6vectorIS5_13std_allocatorIS5_EEEEZNS4_29build_both_side_spanning_treeEvEUlRKS5_SD_E_EvT_SF_T0_.exit: ; preds = %.critedge.thread, %.noexc73._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPZN5nlsat9levelwise4impl29build_both_side_spanning_treeEvE9both_infoSt6vectorIS5_13std_allocatorIS5_EEEEZNS4_29build_both_side_spanning_treeEvEUlRKS5_SD_E_EvT_SF_T0_.exit_crit_edge, %.critedge
  %i.de = phi ptr [ %.pre142, %.noexc73._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPZN5nlsat9levelwise4impl29build_both_side_spanning_treeEvE9both_infoSt6vectorIS5_13std_allocatorIS5_EEEEZNS4_29build_both_side_spanning_treeEvEUlRKS5_SD_E_EvT_SF_T0_.exit_crit_edge ], [ %.lcssa116, %.critedge ], [ null, %.critedge.thread ] ; 7 uses
  %i.df = phi ptr [ %.pre141, %.noexc73._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPZN5nlsat9levelwise4impl29build_both_side_spanning_treeEvE9both_infoSt6vectorIS5_13std_allocatorIS5_EEEEZNS4_29build_both_side_spanning_treeEvEUlRKS5_SD_E_EvT_SF_T0_.exit_crit_edge ], [ %i.cu, %.critedge ], [ null, %.critedge.thread ]
  %i.dg = ptrtoint ptr %i.df to i64
  %i.dh = ptrtoint ptr %i.de to i64
  %i.di = sub i64 %i.dg, %i.dh
  %i.dj = sdiv exact i64 %i.di, 12                ; 3 uses
  %i.dk = add nsw i64 %i.dj, -1                   ; 2 uses
  %.not131 = icmp eq i64 %i.dk, 0
  br i1 %.not131, label %._crit_edge130, label %.lr.ph129

bb.g:                                             ; preds = %_ZNK15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE4sizeEv.exit72
  %i.dl = load ptr, ptr %i.ca, align 8, !tbaa !121
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %indvars.iv
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !146
  %i.do = icmp eq i8 %i.dn, 3
  br i1 %i.do, label %bb.h, label %_ZNSt6vectorIZN5nlsat9levelwise4impl29build_both_side_spanning_treeEvE9both_info13std_allocatorIS3_EE9push_backEOS3_.exit

bb.h:                                             ; preds = %bb.g
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !123 ; 2 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !123 ; 2 uses
  %.not.i.i = icmp eq ptr %i.co, %i.cn
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dt = trunc nuw i64 %indvars.iv to i32
  store i32 %i.dt, ptr %i.co, align 4, !tbaa !123
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 4
  store i32 %i.dq, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !123
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store i32 %i.ds, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !123
  %i.du = getelementptr inbounds nuw i8, ptr %i.co, i64 12 ; 2 uses
  store ptr %i.du, ptr %i.cb, align 8, !tbaa !462
  br label %_ZNSt6vectorIZN5nlsat9levelwise4impl29build_both_side_spanning_treeEvE9both_info13std_allocatorIS3_EE9push_backEOS3_.exit

bb.j:                                             ; preds = %bb.h
  %i.dv = ptrtoint ptr %i.co to i64
  %i.dw = ptrtoint ptr %i.cp to i64
  %i.dx = sub i64 %i.dv, %i.dw                    ; 3 uses
  %i.dy = icmp eq i64 %i.dx, 9223372036854775800
  br i1 %i.dy, label %bb.k, label %_ZNKSt6vectorIZN5nlsat9levelwise4impl29build_both_side_spanning_treeEvE9both_info13std_allocatorIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  store ptr %i.cp, ptr %1, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #23
          to label %.noexc76 unwind label %.loopexit.split-lp

.noexc76:                                         ; preds = %bb.k
  unreachable

_ZNKSt6vectorIZN5nlsat9levelwise4impl29build_both_side_spanning_treeEvE9both_info13std_allocatorIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.j
  %i.dz = sdiv exact i64 %i.dx, 12                ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.dz, i64 1)
  %i.ea = add nsw i64 %.sroa.speculated.i.i.i.i, %i.dz ; 2 uses
  %i.eb = icmp ult i64 %i.ea, %i.dz
  %i.ec = tail call i64 @llvm.umin.i64(i64 %i.ea, i64 768614336404564650)
  %i.ed = select i1 %i.eb, i64 768614336404564650, i64 %i.ec ; 3 uses
  %.not.i.i.i.i75 = icmp ne i64 %i.ed, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i75)
  %i.ee = mul nuw nsw i64 %i.ed, 12
  %i.ef = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.ee)
          to label %.noexc77 unwind label %.loopexit ; 5 uses

.noexc77:                                         ; preds = %_ZNKSt6vectorIZN5nlsat9levelwise4impl29build_both_side_spanning_treeEvE9both_info13std_allocatorIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.dx ; 3 uses
  %i.eh = trunc nuw i64 %indvars.iv to i32
  store i32 %i.eh, ptr %i.eg, align 4, !tbaa !123
  %.sroa.6.0..sroa_idx97 = getelementptr inbounds nuw i8, ptr %i.eg, i64 4
  store i32 %i.dq, ptr %.sroa.6.0..sroa_idx97, align 4, !tbaa !123
  %.sroa.7.0..sroa_idx99 = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  store i32 %i.ds, ptr %.sroa.7.0..sroa_idx99, align 4, !tbaa !123
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.cp, %i.cn
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIZN5nlsat9levelwise4impl29build_both_side_spanning_treeEvE9both_info13std_allocatorIS3_EE11_S_relocateEPS3_S7_S7_RS5_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc77, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.ej, %.lr.ph.i.i.i.i.i.i ], [ %i.ef, %.noexc77 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ei, %.lr.ph.i.i.i.i.i.i ], [ %i.cp, %.noexc77 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i.i, i64 12, i1 false), !tbaa.struct !209, !alias.scope !463
  %i.ei = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 12 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 12 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ei, %i.cn
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIZN5nlsat9levelwise4impl29build_both_side_spanning_treeEvE9both_info13std_allocatorIS3_EE11_S_relocateEPS3_S7_S7_RS5_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !458

_ZNSt6vectorIZN5nlsat9levelwise4impl29build_both_side_spanning_treeEvE9both_info13std_allocatorIS3_EE11_S_relocateEPS3_S7_S7_RS5_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc77
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ef, %.noexc77 ], [ %i.ej, %.lr.ph.i.i.i.i.i.i ]
  %i.ek = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 12 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.cp, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIZN5nlsat9levelwise4impl29build_both_side_spanning_treeEvE9both_info13std_allocatorIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S6_EEDpOT_.exit.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIZN5nlsat9levelwise4impl29build_both_side_spanning_treeEvE9both_info13std_allocatorIS3_EE11_S_relocateEPS3_S7_S7_RS5_.exit22.i.i.i
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.cp)
          to label %_ZNSt6vectorIZN5nlsat9levelwise4impl29build_both_side_spanning_treeEvE9both_info13std_allocatorIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S6_EEDpOT_.exit.i.i unwind label %.loopexit

_ZNSt6vectorIZN5nlsat9levelwise4impl29build_both_side_spanning_treeEvE9both_info13std_allocatorIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S6_EEDpOT_.exit.i.i: ; preds = %bb.l, %_ZNSt6vectorIZN5nlsat9levelwise4impl29build_both_side_spanning_treeEvE9both_info13std_allocatorIS3_EE11_S_relocateEPS3_S7_S7_RS5_.exit22.i.i.i
  store ptr %i.ek, ptr %i.cb, align 8, !tbaa !462
  %i.el = getelementptr inbounds nuw [12 x i8], ptr %i.ef, i64 %i.ed ; 2 uses
  store ptr %i.el, ptr %i.cc, align 8, !tbaa !464
  %.pre140 = load ptr, ptr %i.i, align 8, !tbaa !122
  br label %_ZNSt6vectorIZN5nlsat9levelwise4impl29build_both_side_spanning_treeEvE9both_info13std_allocatorIS3_EE9push_backEOS3_.exit

_ZNSt6vectorIZN5nlsat9levelwise4impl29build_both_side_spanning_treeEvE9both_info13std_allocatorIS3_EE9push_backEOS3_.exit: ; preds = %bb.i, %_ZNSt6vectorIZN5nlsat9levelwise4impl29build_both_side_spanning_treeEvE9both_info13std_allocatorIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S6_EEDpOT_.exit.i.i, %bb.g
  %i.em = phi ptr [ %i.cm, %bb.i ], [ %.pre140, %_ZNSt6vectorIZN5nlsat9levelwise4impl29build_both_side_spanning_treeEvE9both_info13std_allocatorIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S6_EEDpOT_.exit.i.i ], [ %i.cm, %bb.g ] ; 2 uses
  %i.en = phi ptr [ %i.cn, %bb.i ], [ %i.el, %_ZNSt6vectorIZN5nlsat9levelwise4impl29build_both_side_spanning_treeEvE9both_info13std_allocatorIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S6_EEDpOT_.exit.i.i ], [ %i.cn, %bb.g ]
  %i.eo = phi ptr [ %i.du, %bb.i ], [ %i.ek, %_ZNSt6vectorIZN5nlsat9levelwise4impl29build_both_side_spanning_treeEvE9both_info13std_allocatorIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S6_EEDpOT_.exit.i.i ], [ %i.co, %bb.g ] ; 2 uses
  %i.ep = phi ptr [ %i.cp, %bb.i ], [ %i.ef, %_ZNSt6vectorIZN5nlsat9levelwise4impl29build_both_side_spanning_treeEvE9both_info13std_allocatorIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S6_EEDpOT_.exit.i.i ], [ %i.cp, %bb.g ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.eq = icmp eq ptr %i.em, null
  br i1 %i.eq, label %.critedge, label %_ZNK15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE4sizeEv.exit72, !llvm.loop !459

.lr.ph129:                                        ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPZN5nlsat9levelwise4impl29build_both_side_spanning_treeEvE9both_infoSt6vectorIS5_13std_allocatorIS5_EEEEZNS4_29build_both_side_spanning_treeEvEUlRKS5_SD_E_EvT_SF_T0_.exit
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.es = getelementptr inbounds nuw i8, ptr %4, i64 4
  br label %bb.s

.loopexit:                                        ; preds = %bb.l, %_ZNKSt6vectorIZN5nlsat9levelwise4impl29build_both_side_spanning_treeEvE9both_info13std_allocatorIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.cp, ptr %1, align 8
  br label %bb.x

.loopexit.split-lp:                               ; preds = %bb.f, %.noexc73, %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

._crit_edge130:                                   ; preds = %_ZNSt3setISt4pairIjjESt4lessIS1_ESaIS1_EE6insertEOS1_.exit, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPZN5nlsat9levelwise4impl29build_both_side_spanning_treeEvE9both_infoSt6vectorIS5_13std_allocatorIS5_EEEEZNS4_29build_both_side_spanning_treeEvEUlRKS5_SD_E_EvT_SF_T0_.exit
  %i.et = load ptr, ptr %3, align 8, !tbaa !120   ; 2 uses
  %.not.i.i.i79 = icmp eq ptr %i.et, null
  br i1 %.not.i.i.i79, label %_ZNSt6vectorIj13std_allocatorIjEED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge130
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.et)
          to label %_ZNSt6vectorIj13std_allocatorIjEED2Ev.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.eu = landingpad { ptr, i32 }
          catch ptr null
  %i.ev = extractvalue { ptr, i32 } %i.eu, 0
  call void @__clang_call_terminate(ptr %i.ev) #22
  unreachable

_ZNSt6vectorIj13std_allocatorIjEED2Ev.exit:       ; preds = %._crit_edge130, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.ew = load ptr, ptr %2, align 8, !tbaa !120   ; 2 uses
  %.not.i.i.i80 = icmp eq ptr %i.ew, null
  br i1 %.not.i.i.i80, label %_ZNSt6vectorIj13std_allocatorIjEED2Ev.exit81, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIj13std_allocatorIjEED2Ev.exit
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.ew)
          to label %_ZNSt6vectorIj13std_allocatorIjEED2Ev.exit81 unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ex = landingpad { ptr, i32 }
          catch ptr null
  %i.ey = extractvalue { ptr, i32 } %i.ex, 0
  call void @__clang_call_terminate(ptr %i.ey) #22
  unreachable

_ZNSt6vectorIj13std_allocatorIjEED2Ev.exit81:     ; preds = %_ZNSt6vectorIj13std_allocatorIjEED2Ev.exit, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %.not.i.i.i82 = icmp eq ptr %i.de, null
  br i1 %.not.i.i.i82, label %_ZNSt6vectorIZN5nlsat9levelwise4impl29build_both_side_spanning_treeEvE9both_info13std_allocatorIS3_EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIj13std_allocatorIjEED2Ev.exit81
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.de)
          to label %_ZNSt6vectorIZN5nlsat9levelwise4impl29build_both_side_spanning_treeEvE9both_info13std_allocatorIS3_EED2Ev.exit unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ez = landingpad { ptr, i32 }
          catch ptr null
  %i.fa = extractvalue { ptr, i32 } %i.ez, 0
  call void @__clang_call_terminate(ptr %i.fa) #22
  unreachable

_ZNSt6vectorIZN5nlsat9levelwise4impl29build_both_side_spanning_treeEvE9both_info13std_allocatorIS3_EED2Ev.exit: ; preds = %_ZNSt6vectorIj13std_allocatorIjEED2Ev.exit81, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  ret void

bb.s:                                             ; preds = %.lr.ph129, %_ZNSt3setISt4pairIjjESt4lessIS1_ESaIS1_EE6insertEOS1_.exit
  %i.fb = phi i64 [ 0, %.lr.ph129 ], [ %i.fd, %_ZNSt3setISt4pairIjjESt4lessIS1_ESaIS1_EE6insertEOS1_.exit ]
  %.039128 = phi i32 [ 0, %.lr.ph129 ], [ %i.fc, %_ZNSt3setISt4pairIjjESt4lessIS1_ESaIS1_EE6insertEOS1_.exit ]
  %i.fc = add i32 %.039128, 1                     ; 3 uses
  %i.fd = zext i32 %i.fc to i64                   ; 4 uses
  %i.fe = icmp ugt i64 %i.dj, %i.fd
  br i1 %i.fe, label %.lr.ph126, label %._crit_edge

._crit_edge.loopexit:                             ; preds = %bb.v
  %i.ff = zext i32 %.1 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.s
  %.038.lcssa = phi i64 [ 4294967295, %bb.s ], [ %i.ff, %._crit_edge.loopexit ]
  %i.fg = getelementptr inbounds nuw [12 x i8], ptr %i.de, i64 %i.fb
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !465 ; 2 uses
  %i.fi = getelementptr inbounds nuw [12 x i8], ptr %i.de, i64 %.038.lcssa
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !465 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %.sroa.speculated88 = call i32 @llvm.umin.i32(i32 %i.fj, i32 %i.fh)
  store i32 %.sroa.speculated88, ptr %4, align 4, !tbaa !184
  %.sroa.speculated = call i32 @llvm.umax.i32(i32 %i.fh, i32 %i.fj)
  store i32 %.sroa.speculated, ptr %i.es, align 4, !tbaa !185
  %i.fk = invoke { ptr, i8 } @_ZNSt8_Rb_treeISt4pairIjjES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE16_M_insert_uniqueIS1_EES0_ISt17_Rb_tree_iteratorIS1_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.er, ptr noundef nonnull align 4 dereferenceable(8) %4)
          to label %_ZNSt3setISt4pairIjjESt4lessIS1_ESaIS1_EE6insertEOS1_.exit unwind label %bb.w ; 0 uses

.lr.ph126:                                        ; preds = %bb.s, %bb.v
  %i.fl = phi i64 [ %i.fw, %bb.v ], [ %i.fd, %bb.s ]
  %.0125 = phi i32 [ %i.fv, %bb.v ], [ %i.fc, %bb.s ] ; 2 uses
  %.038124 = phi i32 [ %.1, %bb.v ], [ -1, %bb.s ] ; 3 uses
  %i.fm = icmp eq i32 %.038124, -1
  br i1 %i.fm, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.lr.ph126
  %i.fn = getelementptr inbounds nuw [12 x i8], ptr %i.de, i64 %i.fl
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !466
  %i.fq = zext i32 %.038124 to i64
  %i.fr = getelementptr inbounds nuw [12 x i8], ptr %i.de, i64 %i.fq
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !466
  %i.fu = icmp ult i32 %i.fp, %i.ft
  br i1 %i.fu, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t, %.lr.ph126
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %.1 = phi i32 [ %.0125, %bb.u ], [ %.038124, %bb.t ] ; 2 uses
  %i.fv = add i32 %.0125, 1                       ; 2 uses
  %i.fw = zext i32 %i.fv to i64                   ; 2 uses
  %i.fx = icmp ugt i64 %i.dj, %i.fw
  br i1 %i.fx, label %.lr.ph126, label %._crit_edge.loopexit, !llvm.loop !460

_ZNSt3setISt4pairIjjESt4lessIS1_ESaIS1_EE6insertEOS1_.exit: ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.fy = icmp ugt i64 %i.dk, %i.fd
  br i1 %i.fy, label %bb.s, label %._crit_edge130, !llvm.loop !461

end_hunk_1
