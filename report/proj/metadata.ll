Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/metadata?download=true
inline.NumInlined: 1534
inline.NumDeleted: 728
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN5osgeo4proj8metadata6Extent6createERKNS0_4util8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrINS1_16GeographicExtentEEEESaISL_EERKSE_INSH_ISI_INS1_14VerticalExtentEEEESaISS_EERKSE_INSH_ISI_INS1_14TemporalExtentEEEESaISZ_EE:bb.a
  tail call void @_ZN5osgeo4proj8metadata6Extent14nn_make_sharedIS2_JEEEN7dropbox6oxygen2nnISt10shared_ptrIT_EEEDpOT0_(ptr dead_on_unwind writable sret(%"class.dropbox::oxygen::nn.87") align 8 %0)
  %i.a = load ptr, ptr %0, align 8, !tbaa !147    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  store ptr %i.a, ptr %5, align 8, !tbaa !150
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !76   ; 3 uses
  store ptr %i.d, ptr %i.b, align 8, !tbaa !76
  %.not.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i, label %_ZN5osgeo4proj4util15BaseObjectNNPtrC2INS0_8metadata6ExtentEEERKN7dropbox6oxygen2nnISt10shared_ptrIT_EEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !81
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !81
  br label %_ZN5osgeo4proj4util15BaseObjectNNPtrC2INS0_8metadata6ExtentEEERKN7dropbox6oxygen2nnISt10shared_ptrIT_EEE.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5osgeo4proj4util15BaseObjectNNPtrC2INS0_8metadata6ExtentEEERKN7dropbox6oxygen2nnISt10shared_ptrIT_EEE.exit

_ZN5osgeo4proj4util15BaseObjectNNPtrC2INS0_8metadata6ExtentEEERKN7dropbox6oxygen2nnISt10shared_ptrIT_EEE.exit: ; preds = %bb.d, %bb.c, %bb.a
  invoke void @_ZN5osgeo4proj4util10BaseObject10assignSelfERKNS1_15BaseObjectNNPtrE(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %_ZN5osgeo4proj4util15BaseObjectNNPtrC2INS0_8metadata6ExtentEEERKN7dropbox6oxygen2nnISt10shared_ptrIT_EEE.exit
  call void @_ZN5osgeo4proj4util15BaseObjectNNPtrD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  %i.j = load ptr, ptr %0, align 8, !tbaa !147
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !141  ; 2 uses
  %i.m = load i8, ptr %1, align 8, !tbaa !22, !range !32, !noundef !33
  store i8 %i.m, ptr %i.l, align 8, !tbaa !22
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.o)
          to label %_ZN5osgeo4proj4util8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKS9_.exit unwind label %bb.h

_ZN5osgeo4proj4util8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKS9_.exit: ; preds = %bb.e
  %i.p = load ptr, ptr %0, align 8, !tbaa !147
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !141
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.t = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEESaIS9_EEaSERKSB_(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.f unwind label %bb.h       ; 0 uses

bb.f:                                             ; preds = %_ZN5osgeo4proj4util8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKS9_.exit
  %i.u = load ptr, ptr %0, align 8, !tbaa !147
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !141
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  %i.y = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEESaIS9_EEaSERKSB_(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.g unwind label %bb.h       ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.z = load ptr, ptr %0, align 8, !tbaa !147
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !141
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 88
  %i.ad = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEESaIS9_EEaSERKSB_(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.j unwind label %bb.h       ; 0 uses

bb.h:                                             ; preds = %bb.e, %bb.g, %bb.f, %_ZN5osgeo4proj4util8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKS9_.exit
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.i:                                             ; preds = %_ZN5osgeo4proj4util15BaseObjectNNPtrC2INS0_8metadata6ExtentEEERKN7dropbox6oxygen2nnISt10shared_ptrIT_EEE.exit
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5osgeo4proj4util15BaseObjectNNPtrD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  ret void

bb.k:                                             ; preds = %bb.i, %bb.h
  %.pn9 = phi { ptr, i32 } [ %i.ae, %bb.h ], [ %i.af, %bb.i ]
  call void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata6ExtentEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #35
  resume { ptr, i32 } %.pn9
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5osgeo4proj8metadata6Extent14nn_make_sharedIS2_JEEEN7dropbox6oxygen2nnISt10shared_ptrIT_EEEDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.dropbox::oxygen::nn.87") align 8 %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #34 ; 10 uses
  invoke void @_ZN5osgeo4proj4util10BaseObjectC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5osgeo4proj8metadata6ExtentE, i64 16), ptr %i.a, align 8, !tbaa !8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5osgeo4proj8metadata6ExtentE, i64 56), ptr %i.b, align 8, !tbaa !8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !153)
  %i.c = invoke noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #34
          to label %bb.c unwind label %bb.b       ; 5 uses

bb.b:                                             ; preds = %.noexc
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN5osgeo4proj4util11IComparableD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.b) #35
  tail call void @_ZN5osgeo4proj4util10BaseObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(32) %i.a) #35
  br label %.body

bb.c:                                             ; preds = %.noexc
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, i8 0, i64 40, i1 false), !noalias !153
  store ptr %i.g, ptr %i.f, align 8, !tbaa !13, !noalias !153
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.h, i8 0, i64 72, i1 false), !noalias !153
  store ptr %i.c, ptr %i.e, align 8, !tbaa !141, !alias.scope !153
  %i.i = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #34
          to label %_ZNSt12__shared_ptrIN5osgeo4proj8metadata6ExtentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %bb.d ; 5 uses

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  %i.l = tail call ptr @__cxa_begin_catch(ptr %i.k) #35 ; 0 uses
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(32) %i.a) #35, !inline_history !156
  invoke void @__cxa_rethrow() #38
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.f

common.resume:                                    ; preds = %bb.e, %.body
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.p, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  tail call void @__clang_call_terminate(ptr %i.r) #37
  unreachable

bb.g:                                             ; preds = %bb.d
  unreachable

_ZNSt12__shared_ptrIN5osgeo4proj8metadata6ExtentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i32 1, ptr %i.s, align 8, !tbaa !66
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  store i32 1, ptr %i.t, align 4, !tbaa !68
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN5osgeo4proj8metadata6ExtentELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.i, align 8, !tbaa !8
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.a, ptr %i.u, align 8, !tbaa !157
  store ptr %i.a, ptr %0, align 8, !tbaa !147
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.i, ptr %i.v, align 8, !tbaa !76
  ret void

bb.h:                                             ; preds = %bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.w, %bb.h ], [ %i.d, %bb.b ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 32) #36
  br label %common.resume
}

declare hidden void @_ZN5osgeo4proj4util10BaseObject10assignSelfERKNS1_15BaseObjectNNPtrE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN5osgeo4proj4util15BaseObjectNNPtrD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEESaIS9_EEaSERKSB_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.au, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !159  ; 4 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !162    ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 6 uses
  %i.g = ashr exact i64 %i.f, 4                   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !163
  %i.j = load ptr, ptr %0, align 8, !tbaa !162    ; 6 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64                 ; 4 uses
  %i.m = sub i64 %i.k, %i.l
  %i.n = icmp ugt i64 %i.f, %i.m
  br i1 %i.n, label %bb.c, label %bb.o

bb.c:                                             ; preds = %bb.b
  %i.o = icmp ugt i64 %i.g, 576460752303423487
  br i1 %i.o, label %bb.d, label %_ZNSt12_Vector_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEESaIS9_EE11_M_allocateEm.exit.i, !prof !83

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #38
  unreachable

_ZNSt12_Vector_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEESaIS9_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #34 ; 3 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEESaIS9_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS9_SB_EEEEPS9_mT_SJ_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt12_Vector_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEESaIS9_EE11_M_allocateEm.exit.i, %_ZSt10_ConstructIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.z, %_ZSt10_ConstructIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.p, %_ZNSt12_Vector_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEESaIS9_EE11_M_allocateEm.exit.i ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.y, %_ZSt10_ConstructIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.c, %_ZNSt12_Vector_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEESaIS9_EE11_M_allocateEm.exit.i ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !76   ; 2 uses
  %i.s = load <2 x ptr>, ptr %.sroa.04.08.i.i.i.i.i, align 8, !tbaa !80
  store <2 x ptr> %i.s, ptr %.09.i.i.i.i.i, align 8, !tbaa !80
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load i32, ptr %i.t, align 4, !tbaa !81
  %i.w = add nsw i32 %i.v, 1
  store i32 %i.w, ptr %i.t, align 4, !tbaa !81
  br label %_ZSt10_ConstructIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.x = atomicrmw volatile add ptr %i.t, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f, %.lr.ph.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i = icmp eq ptr %i.y, %i.b
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEESaIS9_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS9_SB_EEEEPS9_mT_SJ_.exit.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !164

_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEESaIS9_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS9_SB_EEEEPS9_mT_SJ_.exit.loopexit: ; preds = %_ZSt10_ConstructIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.pre60 = load ptr, ptr %0, align 8, !tbaa !162
  br label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEESaIS9_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS9_SB_EEEEPS9_mT_SJ_.exit

_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEESaIS9_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS9_SB_EEEEPS9_mT_SJ_.exit: ; preds = %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEESaIS9_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS9_SB_EEEEPS9_mT_SJ_.exit.loopexit, %_ZNSt12_Vector_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEESaIS9_EE11_M_allocateEm.exit.i
  %2 = phi ptr [ %.pre60, %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEESaIS9_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS9_SB_EEEEPS9_mT_SJ_.exit.loopexit ], [ %i.j, %_ZNSt12_Vector_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEESaIS9_EE11_M_allocateEm.exit.i ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !159 ; 2 uses
  %.not4.i.i = icmp eq ptr %2, %i.ab
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEEEvT_SB_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEESaIS9_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS9_SB_EEEEPS9_mT_SJ_.exit, %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.at, %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEEEvPT_.exit.i.i ], [ %2, %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEESaIS9_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS9_SB_EEEEPS9_mT_SJ_.exit ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !76 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEEEvPT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 4 uses
  %i.af = load atomic i64, ptr %i.ae acquire, align 8 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 4294967297
  %i.ah = trunc i64 %i.af to i32                  ; 2 uses
  br i1 %i.ag, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.ae, align 8, !tbaa !66
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i32 0, ptr %i.ai, align 4, !tbaa !68
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #35, !inline_history !166
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #35, !inline_history !166
  br label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEEEvPT_.exit.i.i

bb.j:                                             ; preds = %bb.h
  %i.ap = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.ap, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = add nsw i32 %i.ah, -1
  store i32 %i.aq, ptr %i.ae, align 8, !tbaa !81
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ar = atomicrmw volatile add ptr %i.ae, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.ah, %bb.k ], [ %i.ar, %bb.l ]
  %i.as = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.as, label %bb.m, label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEEEvPT_.exit.i.i, !prof !83

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #35
  br label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEEEvPT_.exit.i.i

_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEEEvPT_.exit.i.i: ; preds = %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.i, %.lr.ph.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i25 = icmp eq ptr %i.at, %i.ab
  br i1 %.not.i.i25, label %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEEEvT_SB_.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !167

_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEEEvT_SB_.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !162
  br label %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEEEvT_SB_.exit

_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEEEvT_SB_.exit: ; preds = %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEEEvT_SB_.exitthread-pre-split, %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEESaIS9_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS9_SB_EEEEPS9_mT_SJ_.exit
  %i.au = phi ptr [ %.pr, %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEEEvT_SB_.exitthread-pre-split ], [ %2, %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEESaIS9_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS9_SB_EEEEPS9_mT_SJ_.exit ] ; 3 uses
  %.not.i = icmp eq ptr %i.au, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEESaIS9_EE13_M_deallocateEPS9_m.exit, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEEEvT_SB_.exit
  %i.av = load ptr, ptr %i.h, align 8, !tbaa !163
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = ptrtoint ptr %i.au to i64
  %i.ay = sub i64 %i.aw, %i.ax
  tail call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.ay) #36
  br label %_ZNSt12_Vector_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEESaIS9_EE13_M_deallocateEPS9_m.exit

_ZNSt12_Vector_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEESaIS9_EE13_M_deallocateEPS9_m.exit: ; preds = %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEEEvT_SB_.exit, %bb.n
  store ptr %i.p, ptr %0, align 8, !tbaa !162
  %i.az = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.f
  store ptr %i.az, ptr %i.h, align 8, !tbaa !163
  br label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEESt6vectorISB_SaISB_EEEEEvT_SH_.exit

bb.o:                                             ; preds = %bb.b
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !159 ; 3 uses
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = sub i64 %i.bc, %i.l                     ; 3 uses
  %.not24 = icmp ult i64 %i.bd, %i.f
  br i1 %.not24, label %bb.ag, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.be = icmp sgt i64 %i.g, 0
  br i1 %i.be, label %.lr.ph.i.i.i.i.i26, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEESt6vectorISB_SaISB_EEEENS1_IPSB_SG_EEET0_T_SL_SK_.exit

.lr.ph.i.i.i.i.i26:                               ; preds = %bb.p, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEaSERKS8_.exit.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.ch, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEaSERKS8_.exit.i.i.i.i.i ], [ %i.g, %bb.p ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.cg, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEaSERKS8_.exit.i.i.i.i.i ], [ %i.j, %bb.p ] ; 3 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.cf, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEaSERKS8_.exit.i.i.i.i.i ], [ %i.c, %bb.p ] ; 3 uses
  %i.bf = load ptr, ptr %.0910.i.i.i.i.i, align 8, !tbaa !77
  store ptr %i.bf, ptr %.0811.i.i.i.i.i, align 8, !tbaa !77
  %i.bg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !76 ; 4 uses
  %i.bj = load ptr, ptr %i.bg, align 8, !tbaa !76 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bi, %i.bj
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEaSERKS8_.exit.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i.i.i26
  %.not7.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bi, null
  br i1 %.not7.i.i.i.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 3 uses
  %i.bl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i.i.i.i.i.i.i.i27 = icmp eq i8 %i.bl, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i27, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bm = load i32, ptr %i.bk, align 4, !tbaa !81
  %i.bn = add nsw i32 %i.bm, 1
  store i32 %i.bn, ptr %i.bk, align 4, !tbaa !81
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.bo = atomicrmw volatile add ptr %i.bk, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bg, align 8, !tbaa !76
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.t, %bb.s, %bb.q
  %i.bp = phi ptr [ %i.bj, %bb.q ], [ %i.bj, %bb.s ], [ %.pr.pre.i.i.i.i.i.i.i.i.i, %bb.t ] ; 8 uses
  %.not8.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bp, null
  br i1 %.not8.i.i.i.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 4 uses
  %i.br = load atomic i64, ptr %i.bq acquire, align 8 ; 2 uses
  %i.bs = icmp eq i64 %i.br, 4294967297
  %i.bt = trunc i64 %i.br to i32                  ; 2 uses
  br i1 %i.bs, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 0, ptr %i.bq, align 8, !tbaa !66
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 12
  store i32 0, ptr %i.bu, align 4, !tbaa !68
  %i.bv = load ptr, ptr %i.bp, align 8, !tbaa !8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8
  tail call void %i.bx(ptr noundef nonnull align 8 dereferenceable(16) %i.bp) #35, !inline_history !168
  %i.by = load ptr, ptr %i.bp, align 8, !tbaa !8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8
  tail call void %i.ca(ptr noundef nonnull align 8 dereferenceable(16) %i.bp) #35, !inline_history !168
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.cb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i9.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.cb, 0
  br i1 %.not.i9.i.i.i.i.i.i.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cc = add nsw i32 %i.bt, -1
  store i32 %i.cc, ptr %i.bq, align 8, !tbaa !81
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

bb.y:                                             ; preds = %bb.w
  %i.cd = atomicrmw volatile add ptr %i.bq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.y, %bb.x
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bt, %bb.x ], [ %i.cd, %bb.y ]
  %i.ce = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.ce, label %bb.z, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i, !prof !83

bb.z:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bp) #35
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.z, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i, %bb.v, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i
  store ptr %i.bi, ptr %i.bg, align 8, !tbaa !76
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEaSERKS8_.exit.i.i.i.i.i

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEaSERKS8_.exit.i.i.i.i.i: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i26
  %i.cf = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.cg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16 ; 3 uses
  %i.ch = add nsw i64 %.012.i.i.i.i.i, -1
  %i.ci = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.ci, label %.lr.ph.i.i.i.i.i26, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEESt6vectorISB_SaISB_EEEENS1_IPSB_SG_EEET0_T_SL_SK_.exit.loopexit, !llvm.loop !169

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEESt6vectorISB_SaISB_EEEENS1_IPSB_SG_EEET0_T_SL_SK_.exit.loopexit: ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEaSERKS8_.exit.i.i.i.i.i
  %.pre = load ptr, ptr %i.ba, align 8, !tbaa !170
  %.pre66 = ptrtoint ptr %i.cg to i64
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEESt6vectorISB_SaISB_EEEENS1_IPSB_SG_EEET0_T_SL_SK_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEESt6vectorISB_SaISB_EEEENS1_IPSB_SG_EEET0_T_SL_SK_.exit: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEESt6vectorISB_SaISB_EEEENS1_IPSB_SG_EEET0_T_SL_SK_.exit.loopexit, %bb.p
  %.pre-phi67 = phi i64 [ %.pre66, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEESt6vectorISB_SaISB_EEEENS1_IPSB_SG_EEET0_T_SL_SK_.exit.loopexit ], [ %i.l, %bb.p ]
  %i.cj = phi ptr [ %.pre, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEESt6vectorISB_SaISB_EEEENS1_IPSB_SG_EEET0_T_SL_SK_.exit.loopexit ], [ %i.bb, %bb.p ] ; 2 uses
  %.08.lcssa.i.i.i.i.i = phi ptr [ %i.cg, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEESt6vectorISB_SaISB_EEEENS1_IPSB_SG_EEET0_T_SL_SK_.exit.loopexit ], [ %i.j, %bb.p ]
  %.not4.i.i28 = icmp eq ptr %.08.lcssa.i.i.i.i.i, %i.cj
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEESaIS9_EEaSERKSB_:bb.a
bb.ad:                                            ; preds = %bb.ac
  %i.da = add nsw i32 %i.cr, -1
  store i32 %i.da, ptr %i.co, align 8, !tbaa !81
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i32

bb.ae:                                            ; preds = %bb.ac
  %i.db = atomicrmw volatile add ptr %i.co, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i32

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i32: ; preds = %bb.ae, %bb.ad
  %.0.i.i.i.i.i.i.i.i33 = phi i32 [ %i.cr, %bb.ad ], [ %i.db, %bb.ae ]
  %i.dc = icmp eq i32 %.0.i.i.i.i.i.i.i.i33, 1
  br i1 %i.dc, label %bb.af, label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEEEvPT_.exit.i.i34, !prof !83

bb.af:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i32
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cn) #35
  br label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEEEvPT_.exit.i.i34

_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEEEvPT_.exit.i.i34: ; preds = %bb.af, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i32, %bb.ab, %.lr.ph.i.i29
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 16 ; 2 uses
  %.not.i.i35 = icmp eq ptr %i.dd, %i.cj
  br i1 %.not.i.i35, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEESt6vectorISB_SaISB_EEEEEvT_SH_.exit, label %.lr.ph.i.i29, !llvm.loop !172

bb.ag:                                            ; preds = %bb.o
  %i.de = ashr exact i64 %i.bd, 4                 ; 2 uses
  %i.df = icmp sgt i64 %i.de, 0
  br i1 %i.df, label %.lr.ph.i.i.i.i.i37, label %_ZSt4copyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEESA_ET0_T_SC_SB_.exit

.lr.ph.i.i.i.i.i37:                               ; preds = %bb.ag, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEaSERKS8_.exit.i.i.i.i.i50
  %.012.i.i.i.i.i38 = phi i64 [ %i.ei, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEaSERKS8_.exit.i.i.i.i.i50 ], [ %i.de, %bb.ag ] ; 2 uses
  %.0811.i.i.i.i.i39 = phi ptr [ %i.eh, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEaSERKS8_.exit.i.i.i.i.i50 ], [ %i.j, %bb.ag ] ; 3 uses
  %.0910.i.i.i.i.i40 = phi ptr [ %i.eg, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEaSERKS8_.exit.i.i.i.i.i50 ], [ %i.c, %bb.ag ] ; 3 uses
  %i.dg = load ptr, ptr %.0910.i.i.i.i.i40, align 8, !tbaa !77
  store ptr %i.dg, ptr %.0811.i.i.i.i.i39, align 8, !tbaa !77
  %i.dh = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i39, i64 8 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i40, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !76 ; 4 uses
  %i.dk = load ptr, ptr %i.dh, align 8, !tbaa !76 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i41 = icmp eq ptr %i.dj, %i.dk
  br i1 %.not.i.i.i.i.i.i.i.i.i41, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEaSERKS8_.exit.i.i.i.i.i50, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.i.i.i.i.i37
  %.not7.i.i.i.i.i.i.i.i.i42 = icmp eq ptr %i.dj, null
  br i1 %.not7.i.i.i.i.i.i.i.i.i42, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i44, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 8 ; 3 uses
  %i.dm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i.i.i.i.i.i.i.i43 = icmp eq i8 %i.dm, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i43, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dn = load i32, ptr %i.dl, align 4, !tbaa !81
  %i.do = add nsw i32 %i.dn, 1
  store i32 %i.do, ptr %i.dl, align 4, !tbaa !81
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i44

bb.ak:                                            ; preds = %bb.ai
  %i.dp = atomicrmw volatile add ptr %i.dl, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i.i.i.i.i.i51 = load ptr, ptr %i.dh, align 8, !tbaa !76
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i44

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i44: ; preds = %bb.ak, %bb.aj, %bb.ah
  %i.dq = phi ptr [ %i.dk, %bb.ah ], [ %i.dk, %bb.aj ], [ %.pr.pre.i.i.i.i.i.i.i.i.i51, %bb.ak ] ; 8 uses
  %.not8.i.i.i.i.i.i.i.i.i45 = icmp eq ptr %i.dq, null
  br i1 %.not8.i.i.i.i.i.i.i.i.i45, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i49, label %bb.al

bb.al:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i44
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8 ; 4 uses
  %i.ds = load atomic i64, ptr %i.dr acquire, align 8 ; 2 uses
  %i.dt = icmp eq i64 %i.ds, 4294967297
  %i.du = trunc i64 %i.ds to i32                  ; 2 uses
  br i1 %i.dt, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  store i32 0, ptr %i.dr, align 8, !tbaa !66
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dq, i64 12
  store i32 0, ptr %i.dv, align 4, !tbaa !68
  %i.dw = load ptr, ptr %i.dq, align 8, !tbaa !8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.dy = load ptr, ptr %i.dx, align 8
  tail call void %i.dy(ptr noundef nonnull align 8 dereferenceable(16) %i.dq) #35, !inline_history !173
  %i.dz = load ptr, ptr %i.dq, align 8, !tbaa !8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  %i.eb = load ptr, ptr %i.ea, align 8
  tail call void %i.eb(ptr noundef nonnull align 8 dereferenceable(16) %i.dq) #35, !inline_history !173
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i49

bb.an:                                            ; preds = %bb.al
  %i.ec = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i9.i.i.i.i.i.i.i.i.i46 = icmp eq i8 %i.ec, 0
  br i1 %.not.i9.i.i.i.i.i.i.i.i.i46, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ed = add nsw i32 %i.du, -1
  store i32 %i.ed, ptr %i.dr, align 8, !tbaa !81
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i47

bb.ap:                                            ; preds = %bb.an
  %i.ee = atomicrmw volatile add ptr %i.dr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i47

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i47: ; preds = %bb.ap, %bb.ao
  %.0.i.i.i.i.i.i.i.i.i.i.i48 = phi i32 [ %i.du, %bb.ao ], [ %i.ee, %bb.ap ]
  %i.ef = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i48, 1
  br i1 %i.ef, label %bb.aq, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i49, !prof !83

bb.aq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i47
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dq) #35
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i49

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i49: ; preds = %bb.aq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i47, %bb.am, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i44
  store ptr %i.dj, ptr %i.dh, align 8, !tbaa !76
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEaSERKS8_.exit.i.i.i.i.i50

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEaSERKS8_.exit.i.i.i.i.i50: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i49, %.lr.ph.i.i.i.i.i37
  %i.eg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i40, i64 16
  %i.eh = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i39, i64 16
  %i.ei = add nsw i64 %.012.i.i.i.i.i38, -1
  %i.ej = icmp sgt i64 %.012.i.i.i.i.i38, 1
  br i1 %i.ej, label %.lr.ph.i.i.i.i.i37, label %_ZSt4copyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEESA_ET0_T_SC_SB_.exit.loopexit, !llvm.loop !174

_ZSt4copyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEESA_ET0_T_SC_SB_.exit.loopexit: ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEaSERKS8_.exit.i.i.i.i.i50
  %.pre56 = load ptr, ptr %1, align 8, !tbaa !162
  %.pre57 = load ptr, ptr %i.ba, align 8, !tbaa !159 ; 2 uses
  %.pre58 = load ptr, ptr %0, align 8, !tbaa !162
  %.pre59 = load ptr, ptr %i.a, align 8, !tbaa !159
  %.pre61.a = ptrtoint ptr %.pre57 to i64
  %.pre62 = ptrtoint ptr %.pre58 to i64
  %.pre64 = sub i64 %.pre61.a, %.pre62
  br label %_ZSt4copyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEESA_ET0_T_SC_SB_.exit

_ZSt4copyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEESA_ET0_T_SC_SB_.exit: ; preds = %_ZSt4copyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEESA_ET0_T_SC_SB_.exit.loopexit, %bb.ag
  %.pre-phi65 = phi i64 [ %.pre64, %_ZSt4copyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEESA_ET0_T_SC_SB_.exit.loopexit ], [ %i.bd, %bb.ag ]
  %i.ek = phi ptr [ %.pre59, %_ZSt4copyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEESA_ET0_T_SC_SB_.exit.loopexit ], [ %i.b, %bb.ag ] ; 2 uses
  %i.el = phi ptr [ %.pre57, %_ZSt4copyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEESA_ET0_T_SC_SB_.exit.loopexit ], [ %i.bb, %bb.ag ]
  %i.em = phi ptr [ %.pre56, %_ZSt4copyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEESA_ET0_T_SC_SB_.exit.loopexit ], [ %i.c, %bb.ag ]
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 %.pre-phi65 ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.en, %i.ek
  br i1 %.not9.i.i.i.i, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEESt6vectorISB_SaISB_EEEEEvT_SH_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEESA_ET0_T_SC_SB_.exit, %_ZSt10_ConstructIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEEJRS9_EEvPT_DpOT0_.exit.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.ex, %_ZSt10_ConstructIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEEJRS9_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.el, %_ZSt4copyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEESA_ET0_T_SC_SB_.exit ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.ew, %_ZSt10_ConstructIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEEJRS9_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.en, %_ZSt4copyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEESA_ET0_T_SC_SB_.exit ] ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 8
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !76 ; 2 uses
  %i.eq = load <2 x ptr>, ptr %.0810.i.i.i.i, align 8, !tbaa !80
  store <2 x ptr> %i.eq, ptr %.011.i.i.i.i, align 8, !tbaa !80
  %.not.i.i.i.i.i.i.i.i.i52 = icmp eq ptr %i.ep, null
  br i1 %.not.i.i.i.i.i.i.i.i.i52, label %_ZSt10_ConstructIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEEJRS9_EEvPT_DpOT0_.exit.i.i.i.i, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph.i.i.i.i
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 8 ; 3 uses
  %i.es = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i.i.i.i.i.i.i.i53 = icmp eq i8 %i.es, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i53, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.et = load i32, ptr %i.er, align 4, !tbaa !81
  %i.eu = add nsw i32 %i.et, 1
  store i32 %i.eu, ptr %i.er, align 4, !tbaa !81
  br label %_ZSt10_ConstructIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEEJRS9_EEvPT_DpOT0_.exit.i.i.i.i

bb.at:                                            ; preds = %bb.ar
  %i.ev = atomicrmw volatile add ptr %i.er, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEEJRS9_EEvPT_DpOT0_.exit.i.i.i.i

_ZSt10_ConstructIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEEJRS9_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %bb.at, %bb.as, %.lr.ph.i.i.i.i
  %i.ew = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 16 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 16
  %.not.i.i.i.i = icmp eq ptr %i.ew, %i.ek
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEESt6vectorISB_SaISB_EEEEEvT_SH_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !175

_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEESt6vectorISB_SaISB_EEEEEvT_SH_.exit: ; preds = %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEEEvPT_.exit.i.i34, %_ZSt10_ConstructIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEEJRS9_EEvPT_DpOT0_.exit.i.i.i.i, %_ZSt4copyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEESA_ET0_T_SC_SB_.exit, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEESt6vectorISB_SaISB_EEEENS1_IPSB_SG_EEET0_T_SL_SK_.exit, %_ZNSt12_Vector_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEESaIS9_EE13_M_deallocateEPS9_m.exit
  %i.ey = load ptr, ptr %0, align 8, !tbaa !162
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.f
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ez, ptr %i.fa, align 8, !tbaa !159
  br label %bb.au

bb.au:                                            ; preds = %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEESt6vectorISB_SaISB_EEEEEvT_SH_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEESaIS9_EEaSERKSB_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.au, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !176  ; 4 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !179    ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 6 uses
  %i.g = ashr exact i64 %i.f, 4                   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !180
  %i.j = load ptr, ptr %0, align 8, !tbaa !179    ; 6 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64                 ; 4 uses
  %i.m = sub i64 %i.k, %i.l
  %i.n = icmp ugt i64 %i.f, %i.m
  br i1 %i.n, label %bb.c, label %bb.o

bb.c:                                             ; preds = %bb.b
  %i.o = icmp ugt i64 %i.g, 576460752303423487
  br i1 %i.o, label %bb.d, label %_ZNSt12_Vector_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEESaIS9_EE11_M_allocateEm.exit.i, !prof !83

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #38
  unreachable

_ZNSt12_Vector_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEESaIS9_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #34 ; 3 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEESaIS9_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS9_SB_EEEEPS9_mT_SJ_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt12_Vector_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEESaIS9_EE11_M_allocateEm.exit.i, %_ZSt10_ConstructIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.z, %_ZSt10_ConstructIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.p, %_ZNSt12_Vector_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEESaIS9_EE11_M_allocateEm.exit.i ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.y, %_ZSt10_ConstructIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.c, %_ZNSt12_Vector_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEESaIS9_EE11_M_allocateEm.exit.i ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !76   ; 2 uses
  %i.s = load <2 x ptr>, ptr %.sroa.04.08.i.i.i.i.i, align 8, !tbaa !80
  store <2 x ptr> %i.s, ptr %.09.i.i.i.i.i, align 8, !tbaa !80
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load i32, ptr %i.t, align 4, !tbaa !81
  %i.w = add nsw i32 %i.v, 1
  store i32 %i.w, ptr %i.t, align 4, !tbaa !81
  br label %_ZSt10_ConstructIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.x = atomicrmw volatile add ptr %i.t, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f, %.lr.ph.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i = icmp eq ptr %i.y, %i.b
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEESaIS9_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS9_SB_EEEEPS9_mT_SJ_.exit.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !181

_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEESaIS9_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS9_SB_EEEEPS9_mT_SJ_.exit.loopexit: ; preds = %_ZSt10_ConstructIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.pre60 = load ptr, ptr %0, align 8, !tbaa !179
  br label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEESaIS9_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS9_SB_EEEEPS9_mT_SJ_.exit

_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEESaIS9_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS9_SB_EEEEPS9_mT_SJ_.exit: ; preds = %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEESaIS9_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS9_SB_EEEEPS9_mT_SJ_.exit.loopexit, %_ZNSt12_Vector_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEESaIS9_EE11_M_allocateEm.exit.i
  %2 = phi ptr [ %.pre60, %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEESaIS9_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS9_SB_EEEEPS9_mT_SJ_.exit.loopexit ], [ %i.j, %_ZNSt12_Vector_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEESaIS9_EE11_M_allocateEm.exit.i ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !176 ; 2 uses
  %.not4.i.i = icmp eq ptr %2, %i.ab
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEEEvT_SB_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEESaIS9_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS9_SB_EEEEPS9_mT_SJ_.exit, %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.at, %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEEEvPT_.exit.i.i ], [ %2, %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEESaIS9_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS9_SB_EEEEPS9_mT_SJ_.exit ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !76 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEEEvPT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 4 uses
  %i.af = load atomic i64, ptr %i.ae acquire, align 8 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 4294967297
  %i.ah = trunc i64 %i.af to i32                  ; 2 uses
  br i1 %i.ag, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.ae, align 8, !tbaa !66
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i32 0, ptr %i.ai, align 4, !tbaa !68
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #35, !inline_history !182
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #35, !inline_history !182
  br label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEEEvPT_.exit.i.i

bb.j:                                             ; preds = %bb.h
  %i.ap = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.ap, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = add nsw i32 %i.ah, -1
  store i32 %i.aq, ptr %i.ae, align 8, !tbaa !81
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ar = atomicrmw volatile add ptr %i.ae, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.ah, %bb.k ], [ %i.ar, %bb.l ]
  %i.as = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.as, label %bb.m, label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEEEvPT_.exit.i.i, !prof !83

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #35
  br label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEEEvPT_.exit.i.i

_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEEEvPT_.exit.i.i: ; preds = %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.i, %.lr.ph.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i25 = icmp eq ptr %i.at, %i.ab
  br i1 %.not.i.i25, label %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEEEvT_SB_.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !183

_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEEEvT_SB_.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !179
  br label %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEEEvT_SB_.exit

_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEEEvT_SB_.exit: ; preds = %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEEEvT_SB_.exitthread-pre-split, %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEESaIS9_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS9_SB_EEEEPS9_mT_SJ_.exit
  %i.au = phi ptr [ %.pr, %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEEEvT_SB_.exitthread-pre-split ], [ %2, %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEESaIS9_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS9_SB_EEEEPS9_mT_SJ_.exit ] ; 3 uses
  %.not.i = icmp eq ptr %i.au, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEESaIS9_EE13_M_deallocateEPS9_m.exit, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEEEvT_SB_.exit
  %i.av = load ptr, ptr %i.h, align 8, !tbaa !180
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = ptrtoint ptr %i.au to i64
  %i.ay = sub i64 %i.aw, %i.ax
  tail call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.ay) #36
  br label %_ZNSt12_Vector_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEESaIS9_EE13_M_deallocateEPS9_m.exit

_ZNSt12_Vector_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEESaIS9_EE13_M_deallocateEPS9_m.exit: ; preds = %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEEEvT_SB_.exit, %bb.n
  store ptr %i.p, ptr %0, align 8, !tbaa !179
  %i.az = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.f
  store ptr %i.az, ptr %i.h, align 8, !tbaa !180
  br label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEESt6vectorISB_SaISB_EEEEEvT_SH_.exit

bb.o:                                             ; preds = %bb.b
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !176 ; 3 uses
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = sub i64 %i.bc, %i.l                     ; 3 uses
  %.not24 = icmp ult i64 %i.bd, %i.f
  br i1 %.not24, label %bb.ag, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.be = icmp sgt i64 %i.g, 0
  br i1 %i.be, label %.lr.ph.i.i.i.i.i26, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEESt6vectorISB_SaISB_EEEENS1_IPSB_SG_EEET0_T_SL_SK_.exit

.lr.ph.i.i.i.i.i26:                               ; preds = %bb.p, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEaSERKS8_.exit.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.ch, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEaSERKS8_.exit.i.i.i.i.i ], [ %i.g, %bb.p ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.cg, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEaSERKS8_.exit.i.i.i.i.i ], [ %i.j, %bb.p ] ; 3 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.cf, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEaSERKS8_.exit.i.i.i.i.i ], [ %i.c, %bb.p ] ; 3 uses
  %i.bf = load ptr, ptr %.0910.i.i.i.i.i, align 8, !tbaa !120
  store ptr %i.bf, ptr %.0811.i.i.i.i.i, align 8, !tbaa !120
  %i.bg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !76 ; 4 uses
  %i.bj = load ptr, ptr %i.bg, align 8, !tbaa !76 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bi, %i.bj
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEaSERKS8_.exit.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i.i.i26
  %.not7.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bi, null
  br i1 %.not7.i.i.i.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 3 uses
  %i.bl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i.i.i.i.i.i.i.i27 = icmp eq i8 %i.bl, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i27, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bm = load i32, ptr %i.bk, align 4, !tbaa !81
  %i.bn = add nsw i32 %i.bm, 1
  store i32 %i.bn, ptr %i.bk, align 4, !tbaa !81
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.bo = atomicrmw volatile add ptr %i.bk, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bg, align 8, !tbaa !76
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.t, %bb.s, %bb.q
  %i.bp = phi ptr [ %i.bj, %bb.q ], [ %i.bj, %bb.s ], [ %.pr.pre.i.i.i.i.i.i.i.i.i, %bb.t ] ; 8 uses
  %.not8.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bp, null
  br i1 %.not8.i.i.i.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 4 uses
  %i.br = load atomic i64, ptr %i.bq acquire, align 8 ; 2 uses
  %i.bs = icmp eq i64 %i.br, 4294967297
  %i.bt = trunc i64 %i.br to i32                  ; 2 uses
  br i1 %i.bs, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 0, ptr %i.bq, align 8, !tbaa !66
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 12
  store i32 0, ptr %i.bu, align 4, !tbaa !68
  %i.bv = load ptr, ptr %i.bp, align 8, !tbaa !8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8
  tail call void %i.bx(ptr noundef nonnull align 8 dereferenceable(16) %i.bp) #35, !inline_history !184
  %i.by = load ptr, ptr %i.bp, align 8, !tbaa !8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8
  tail call void %i.ca(ptr noundef nonnull align 8 dereferenceable(16) %i.bp) #35, !inline_history !184
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.cb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i9.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.cb, 0
  br i1 %.not.i9.i.i.i.i.i.i.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cc = add nsw i32 %i.bt, -1
  store i32 %i.cc, ptr %i.bq, align 8, !tbaa !81
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

bb.y:                                             ; preds = %bb.w
  %i.cd = atomicrmw volatile add ptr %i.bq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.y, %bb.x
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bt, %bb.x ], [ %i.cd, %bb.y ]
  %i.ce = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.ce, label %bb.z, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i, !prof !83

bb.z:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bp) #35
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.z, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i, %bb.v, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i
  store ptr %i.bi, ptr %i.bg, align 8, !tbaa !76
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEaSERKS8_.exit.i.i.i.i.i

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEaSERKS8_.exit.i.i.i.i.i: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i26
  %i.cf = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.cg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16 ; 3 uses
  %i.ch = add nsw i64 %.012.i.i.i.i.i, -1
  %i.ci = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.ci, label %.lr.ph.i.i.i.i.i26, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEESt6vectorISB_SaISB_EEEENS1_IPSB_SG_EEET0_T_SL_SK_.exit.loopexit, !llvm.loop !185

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEESt6vectorISB_SaISB_EEEENS1_IPSB_SG_EEET0_T_SL_SK_.exit.loopexit: ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEaSERKS8_.exit.i.i.i.i.i
  %.pre = load ptr, ptr %i.ba, align 8, !tbaa !186
  %.pre66 = ptrtoint ptr %i.cg to i64
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEESt6vectorISB_SaISB_EEEENS1_IPSB_SG_EEET0_T_SL_SK_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEESt6vectorISB_SaISB_EEEENS1_IPSB_SG_EEET0_T_SL_SK_.exit: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEESt6vectorISB_SaISB_EEEENS1_IPSB_SG_EEET0_T_SL_SK_.exit.loopexit, %bb.p
  %.pre-phi67 = phi i64 [ %.pre66, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEESt6vectorISB_SaISB_EEEENS1_IPSB_SG_EEET0_T_SL_SK_.exit.loopexit ], [ %i.l, %bb.p ]
  %i.cj = phi ptr [ %.pre, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEESt6vectorISB_SaISB_EEEENS1_IPSB_SG_EEET0_T_SL_SK_.exit.loopexit ], [ %i.bb, %bb.p ] ; 2 uses
  %.08.lcssa.i.i.i.i.i = phi ptr [ %i.cg, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEESt6vectorISB_SaISB_EEEENS1_IPSB_SG_EEET0_T_SL_SK_.exit.loopexit ], [ %i.j, %bb.p ]
  %.not4.i.i28 = icmp eq ptr %.08.lcssa.i.i.i.i.i, %i.cj
end_hunk_1
begin_hunk_2_@_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEESaIS9_EEaSERKSB_:bb.a
bb.ad:                                            ; preds = %bb.ac
  %i.da = add nsw i32 %i.cr, -1
  store i32 %i.da, ptr %i.co, align 8, !tbaa !81
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i32

bb.ae:                                            ; preds = %bb.ac
  %i.db = atomicrmw volatile add ptr %i.co, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i32

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i32: ; preds = %bb.ae, %bb.ad
  %.0.i.i.i.i.i.i.i.i33 = phi i32 [ %i.cr, %bb.ad ], [ %i.db, %bb.ae ]
  %i.dc = icmp eq i32 %.0.i.i.i.i.i.i.i.i33, 1
  br i1 %i.dc, label %bb.af, label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEEEvPT_.exit.i.i34, !prof !83

bb.af:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i32
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cn) #35
  br label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEEEvPT_.exit.i.i34

_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEEEvPT_.exit.i.i34: ; preds = %bb.af, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i32, %bb.ab, %.lr.ph.i.i29
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 16 ; 2 uses
  %.not.i.i35 = icmp eq ptr %i.dd, %i.cj
  br i1 %.not.i.i35, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEESt6vectorISB_SaISB_EEEEEvT_SH_.exit, label %.lr.ph.i.i29, !llvm.loop !188

bb.ag:                                            ; preds = %bb.o
  %i.de = ashr exact i64 %i.bd, 4                 ; 2 uses
  %i.df = icmp sgt i64 %i.de, 0
  br i1 %i.df, label %.lr.ph.i.i.i.i.i37, label %_ZSt4copyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEESA_ET0_T_SC_SB_.exit

.lr.ph.i.i.i.i.i37:                               ; preds = %bb.ag, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEaSERKS8_.exit.i.i.i.i.i50
  %.012.i.i.i.i.i38 = phi i64 [ %i.ei, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEaSERKS8_.exit.i.i.i.i.i50 ], [ %i.de, %bb.ag ] ; 2 uses
  %.0811.i.i.i.i.i39 = phi ptr [ %i.eh, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEaSERKS8_.exit.i.i.i.i.i50 ], [ %i.j, %bb.ag ] ; 3 uses
  %.0910.i.i.i.i.i40 = phi ptr [ %i.eg, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEaSERKS8_.exit.i.i.i.i.i50 ], [ %i.c, %bb.ag ] ; 3 uses
  %i.dg = load ptr, ptr %.0910.i.i.i.i.i40, align 8, !tbaa !120
  store ptr %i.dg, ptr %.0811.i.i.i.i.i39, align 8, !tbaa !120
  %i.dh = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i39, i64 8 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i40, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !76 ; 4 uses
  %i.dk = load ptr, ptr %i.dh, align 8, !tbaa !76 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i41 = icmp eq ptr %i.dj, %i.dk
  br i1 %.not.i.i.i.i.i.i.i.i.i41, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEaSERKS8_.exit.i.i.i.i.i50, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.i.i.i.i.i37
  %.not7.i.i.i.i.i.i.i.i.i42 = icmp eq ptr %i.dj, null
  br i1 %.not7.i.i.i.i.i.i.i.i.i42, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i44, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 8 ; 3 uses
  %i.dm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i.i.i.i.i.i.i.i43 = icmp eq i8 %i.dm, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i43, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dn = load i32, ptr %i.dl, align 4, !tbaa !81
  %i.do = add nsw i32 %i.dn, 1
  store i32 %i.do, ptr %i.dl, align 4, !tbaa !81
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i44

bb.ak:                                            ; preds = %bb.ai
  %i.dp = atomicrmw volatile add ptr %i.dl, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i.i.i.i.i.i51 = load ptr, ptr %i.dh, align 8, !tbaa !76
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i44

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i44: ; preds = %bb.ak, %bb.aj, %bb.ah
  %i.dq = phi ptr [ %i.dk, %bb.ah ], [ %i.dk, %bb.aj ], [ %.pr.pre.i.i.i.i.i.i.i.i.i51, %bb.ak ] ; 8 uses
  %.not8.i.i.i.i.i.i.i.i.i45 = icmp eq ptr %i.dq, null
  br i1 %.not8.i.i.i.i.i.i.i.i.i45, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i49, label %bb.al

bb.al:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i44
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8 ; 4 uses
  %i.ds = load atomic i64, ptr %i.dr acquire, align 8 ; 2 uses
  %i.dt = icmp eq i64 %i.ds, 4294967297
  %i.du = trunc i64 %i.ds to i32                  ; 2 uses
  br i1 %i.dt, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  store i32 0, ptr %i.dr, align 8, !tbaa !66
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dq, i64 12
  store i32 0, ptr %i.dv, align 4, !tbaa !68
  %i.dw = load ptr, ptr %i.dq, align 8, !tbaa !8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.dy = load ptr, ptr %i.dx, align 8
  tail call void %i.dy(ptr noundef nonnull align 8 dereferenceable(16) %i.dq) #35, !inline_history !189
  %i.dz = load ptr, ptr %i.dq, align 8, !tbaa !8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  %i.eb = load ptr, ptr %i.ea, align 8
  tail call void %i.eb(ptr noundef nonnull align 8 dereferenceable(16) %i.dq) #35, !inline_history !189
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i49

bb.an:                                            ; preds = %bb.al
  %i.ec = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i9.i.i.i.i.i.i.i.i.i46 = icmp eq i8 %i.ec, 0
  br i1 %.not.i9.i.i.i.i.i.i.i.i.i46, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ed = add nsw i32 %i.du, -1
  store i32 %i.ed, ptr %i.dr, align 8, !tbaa !81
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i47

bb.ap:                                            ; preds = %bb.an
  %i.ee = atomicrmw volatile add ptr %i.dr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i47

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i47: ; preds = %bb.ap, %bb.ao
  %.0.i.i.i.i.i.i.i.i.i.i.i48 = phi i32 [ %i.du, %bb.ao ], [ %i.ee, %bb.ap ]
  %i.ef = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i48, 1
  br i1 %i.ef, label %bb.aq, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i49, !prof !83

bb.aq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i47
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dq) #35
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i49

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i49: ; preds = %bb.aq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i47, %bb.am, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i44
  store ptr %i.dj, ptr %i.dh, align 8, !tbaa !76
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEaSERKS8_.exit.i.i.i.i.i50

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEaSERKS8_.exit.i.i.i.i.i50: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i49, %.lr.ph.i.i.i.i.i37
  %i.eg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i40, i64 16
  %i.eh = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i39, i64 16
  %i.ei = add nsw i64 %.012.i.i.i.i.i38, -1
  %i.ej = icmp sgt i64 %.012.i.i.i.i.i38, 1
  br i1 %i.ej, label %.lr.ph.i.i.i.i.i37, label %_ZSt4copyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEESA_ET0_T_SC_SB_.exit.loopexit, !llvm.loop !190

_ZSt4copyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEESA_ET0_T_SC_SB_.exit.loopexit: ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEaSERKS8_.exit.i.i.i.i.i50
  %.pre56 = load ptr, ptr %1, align 8, !tbaa !179
  %.pre57 = load ptr, ptr %i.ba, align 8, !tbaa !176 ; 2 uses
  %.pre58 = load ptr, ptr %0, align 8, !tbaa !179
  %.pre59 = load ptr, ptr %i.a, align 8, !tbaa !176
  %.pre61.a = ptrtoint ptr %.pre57 to i64
  %.pre62 = ptrtoint ptr %.pre58 to i64
  %.pre64 = sub i64 %.pre61.a, %.pre62
  br label %_ZSt4copyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEESA_ET0_T_SC_SB_.exit

_ZSt4copyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEESA_ET0_T_SC_SB_.exit: ; preds = %_ZSt4copyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEESA_ET0_T_SC_SB_.exit.loopexit, %bb.ag
  %.pre-phi65 = phi i64 [ %.pre64, %_ZSt4copyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEESA_ET0_T_SC_SB_.exit.loopexit ], [ %i.bd, %bb.ag ]
  %i.ek = phi ptr [ %.pre59, %_ZSt4copyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEESA_ET0_T_SC_SB_.exit.loopexit ], [ %i.b, %bb.ag ] ; 2 uses
  %i.el = phi ptr [ %.pre57, %_ZSt4copyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEESA_ET0_T_SC_SB_.exit.loopexit ], [ %i.bb, %bb.ag ]
  %i.em = phi ptr [ %.pre56, %_ZSt4copyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEESA_ET0_T_SC_SB_.exit.loopexit ], [ %i.c, %bb.ag ]
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 %.pre-phi65 ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.en, %i.ek
  br i1 %.not9.i.i.i.i, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEESt6vectorISB_SaISB_EEEEEvT_SH_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEESA_ET0_T_SC_SB_.exit, %_ZSt10_ConstructIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEEJRS9_EEvPT_DpOT0_.exit.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.ex, %_ZSt10_ConstructIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEEJRS9_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.el, %_ZSt4copyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEESA_ET0_T_SC_SB_.exit ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.ew, %_ZSt10_ConstructIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEEJRS9_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.en, %_ZSt4copyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEESA_ET0_T_SC_SB_.exit ] ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 8
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !76 ; 2 uses
  %i.eq = load <2 x ptr>, ptr %.0810.i.i.i.i, align 8, !tbaa !80
  store <2 x ptr> %i.eq, ptr %.011.i.i.i.i, align 8, !tbaa !80
  %.not.i.i.i.i.i.i.i.i.i52 = icmp eq ptr %i.ep, null
  br i1 %.not.i.i.i.i.i.i.i.i.i52, label %_ZSt10_ConstructIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEEJRS9_EEvPT_DpOT0_.exit.i.i.i.i, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph.i.i.i.i
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 8 ; 3 uses
  %i.es = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i.i.i.i.i.i.i.i53 = icmp eq i8 %i.es, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i53, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.et = load i32, ptr %i.er, align 4, !tbaa !81
  %i.eu = add nsw i32 %i.et, 1
  store i32 %i.eu, ptr %i.er, align 4, !tbaa !81
  br label %_ZSt10_ConstructIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEEJRS9_EEvPT_DpOT0_.exit.i.i.i.i

bb.at:                                            ; preds = %bb.ar
  %i.ev = atomicrmw volatile add ptr %i.er, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEEJRS9_EEvPT_DpOT0_.exit.i.i.i.i

_ZSt10_ConstructIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEEJRS9_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %bb.at, %bb.as, %.lr.ph.i.i.i.i
  %i.ew = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 16 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 16
  %.not.i.i.i.i = icmp eq ptr %i.ew, %i.ek
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEESt6vectorISB_SaISB_EEEEEvT_SH_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !191

_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEESt6vectorISB_SaISB_EEEEEvT_SH_.exit: ; preds = %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEEEvPT_.exit.i.i34, %_ZSt10_ConstructIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEEJRS9_EEvPT_DpOT0_.exit.i.i.i.i, %_ZSt4copyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEESA_ET0_T_SC_SB_.exit, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEESt6vectorISB_SaISB_EEEENS1_IPSB_SG_EEET0_T_SL_SK_.exit, %_ZNSt12_Vector_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEESaIS9_EE13_M_deallocateEPS9_m.exit
  %i.ey = load ptr, ptr %0, align 8, !tbaa !179
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.f
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ez, ptr %i.fa, align 8, !tbaa !176
  br label %bb.au

bb.au:                                            ; preds = %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEESt6vectorISB_SaISB_EEEEEvT_SH_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEESaIS9_EEaSERKSB_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.au, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !192  ; 4 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !195    ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 6 uses
  %i.g = ashr exact i64 %i.f, 4                   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !196
  %i.j = load ptr, ptr %0, align 8, !tbaa !195    ; 6 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64                 ; 4 uses
  %i.m = sub i64 %i.k, %i.l
  %i.n = icmp ugt i64 %i.f, %i.m
  br i1 %i.n, label %bb.c, label %bb.o

bb.c:                                             ; preds = %bb.b
  %i.o = icmp ugt i64 %i.g, 576460752303423487
  br i1 %i.o, label %bb.d, label %_ZNSt12_Vector_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEESaIS9_EE11_M_allocateEm.exit.i, !prof !83

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #38
  unreachable

_ZNSt12_Vector_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEESaIS9_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #34 ; 3 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEESaIS9_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS9_SB_EEEEPS9_mT_SJ_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt12_Vector_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEESaIS9_EE11_M_allocateEm.exit.i, %_ZSt10_ConstructIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.z, %_ZSt10_ConstructIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.p, %_ZNSt12_Vector_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEESaIS9_EE11_M_allocateEm.exit.i ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.y, %_ZSt10_ConstructIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.c, %_ZNSt12_Vector_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEESaIS9_EE11_M_allocateEm.exit.i ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !76   ; 2 uses
  %i.s = load <2 x ptr>, ptr %.sroa.04.08.i.i.i.i.i, align 8, !tbaa !80
  store <2 x ptr> %i.s, ptr %.09.i.i.i.i.i, align 8, !tbaa !80
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load i32, ptr %i.t, align 4, !tbaa !81
  %i.w = add nsw i32 %i.v, 1
  store i32 %i.w, ptr %i.t, align 4, !tbaa !81
  br label %_ZSt10_ConstructIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.x = atomicrmw volatile add ptr %i.t, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f, %.lr.ph.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i = icmp eq ptr %i.y, %i.b
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEESaIS9_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS9_SB_EEEEPS9_mT_SJ_.exit.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !197

_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEESaIS9_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS9_SB_EEEEPS9_mT_SJ_.exit.loopexit: ; preds = %_ZSt10_ConstructIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.pre60 = load ptr, ptr %0, align 8, !tbaa !195
  br label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEESaIS9_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS9_SB_EEEEPS9_mT_SJ_.exit

_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEESaIS9_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS9_SB_EEEEPS9_mT_SJ_.exit: ; preds = %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEESaIS9_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS9_SB_EEEEPS9_mT_SJ_.exit.loopexit, %_ZNSt12_Vector_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEESaIS9_EE11_M_allocateEm.exit.i
  %2 = phi ptr [ %.pre60, %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEESaIS9_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS9_SB_EEEEPS9_mT_SJ_.exit.loopexit ], [ %i.j, %_ZNSt12_Vector_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEESaIS9_EE11_M_allocateEm.exit.i ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !192 ; 2 uses
  %.not4.i.i = icmp eq ptr %2, %i.ab
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEEEvT_SB_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEESaIS9_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS9_SB_EEEEPS9_mT_SJ_.exit, %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.at, %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEEEvPT_.exit.i.i ], [ %2, %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEESaIS9_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS9_SB_EEEEPS9_mT_SJ_.exit ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !76 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEEEvPT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 4 uses
  %i.af = load atomic i64, ptr %i.ae acquire, align 8 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 4294967297
  %i.ah = trunc i64 %i.af to i32                  ; 2 uses
  br i1 %i.ag, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.ae, align 8, !tbaa !66
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i32 0, ptr %i.ai, align 4, !tbaa !68
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #35, !inline_history !198
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #35, !inline_history !198
  br label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEEEvPT_.exit.i.i

bb.j:                                             ; preds = %bb.h
  %i.ap = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.ap, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = add nsw i32 %i.ah, -1
  store i32 %i.aq, ptr %i.ae, align 8, !tbaa !81
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ar = atomicrmw volatile add ptr %i.ae, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.ah, %bb.k ], [ %i.ar, %bb.l ]
  %i.as = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.as, label %bb.m, label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEEEvPT_.exit.i.i, !prof !83

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #35
  br label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEEEvPT_.exit.i.i

_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEEEvPT_.exit.i.i: ; preds = %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.i, %.lr.ph.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i25 = icmp eq ptr %i.at, %i.ab
  br i1 %.not.i.i25, label %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEEEvT_SB_.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !199

_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEEEvT_SB_.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !195
  br label %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEEEvT_SB_.exit

_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEEEvT_SB_.exit: ; preds = %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEEEvT_SB_.exitthread-pre-split, %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEESaIS9_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS9_SB_EEEEPS9_mT_SJ_.exit
  %i.au = phi ptr [ %.pr, %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEEEvT_SB_.exitthread-pre-split ], [ %2, %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEESaIS9_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS9_SB_EEEEPS9_mT_SJ_.exit ] ; 3 uses
  %.not.i = icmp eq ptr %i.au, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEESaIS9_EE13_M_deallocateEPS9_m.exit, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEEEvT_SB_.exit
  %i.av = load ptr, ptr %i.h, align 8, !tbaa !196
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = ptrtoint ptr %i.au to i64
  %i.ay = sub i64 %i.aw, %i.ax
  tail call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.ay) #36
  br label %_ZNSt12_Vector_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEESaIS9_EE13_M_deallocateEPS9_m.exit

_ZNSt12_Vector_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEESaIS9_EE13_M_deallocateEPS9_m.exit: ; preds = %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEEEvT_SB_.exit, %bb.n
  store ptr %i.p, ptr %0, align 8, !tbaa !195
  %i.az = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.f
  store ptr %i.az, ptr %i.h, align 8, !tbaa !196
  br label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEESt6vectorISB_SaISB_EEEEEvT_SH_.exit

bb.o:                                             ; preds = %bb.b
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !192 ; 3 uses
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = sub i64 %i.bc, %i.l                     ; 3 uses
  %.not24 = icmp ult i64 %i.bd, %i.f
  br i1 %.not24, label %bb.ag, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.be = icmp sgt i64 %i.g, 0
  br i1 %i.be, label %.lr.ph.i.i.i.i.i26, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEESt6vectorISB_SaISB_EEEENS1_IPSB_SG_EEET0_T_SL_SK_.exit

.lr.ph.i.i.i.i.i26:                               ; preds = %bb.p, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEaSERKS8_.exit.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.ch, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEaSERKS8_.exit.i.i.i.i.i ], [ %i.g, %bb.p ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.cg, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEaSERKS8_.exit.i.i.i.i.i ], [ %i.j, %bb.p ] ; 3 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.cf, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEaSERKS8_.exit.i.i.i.i.i ], [ %i.c, %bb.p ] ; 3 uses
  %i.bf = load ptr, ptr %.0910.i.i.i.i.i, align 8, !tbaa !136
  store ptr %i.bf, ptr %.0811.i.i.i.i.i, align 8, !tbaa !136
  %i.bg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !76 ; 4 uses
  %i.bj = load ptr, ptr %i.bg, align 8, !tbaa !76 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bi, %i.bj
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEaSERKS8_.exit.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i.i.i26
  %.not7.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bi, null
  br i1 %.not7.i.i.i.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 3 uses
  %i.bl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i.i.i.i.i.i.i.i27 = icmp eq i8 %i.bl, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i27, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bm = load i32, ptr %i.bk, align 4, !tbaa !81
  %i.bn = add nsw i32 %i.bm, 1
  store i32 %i.bn, ptr %i.bk, align 4, !tbaa !81
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.bo = atomicrmw volatile add ptr %i.bk, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bg, align 8, !tbaa !76
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.t, %bb.s, %bb.q
  %i.bp = phi ptr [ %i.bj, %bb.q ], [ %i.bj, %bb.s ], [ %.pr.pre.i.i.i.i.i.i.i.i.i, %bb.t ] ; 8 uses
  %.not8.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bp, null
  br i1 %.not8.i.i.i.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 4 uses
  %i.br = load atomic i64, ptr %i.bq acquire, align 8 ; 2 uses
  %i.bs = icmp eq i64 %i.br, 4294967297
  %i.bt = trunc i64 %i.br to i32                  ; 2 uses
  br i1 %i.bs, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 0, ptr %i.bq, align 8, !tbaa !66
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 12
  store i32 0, ptr %i.bu, align 4, !tbaa !68
  %i.bv = load ptr, ptr %i.bp, align 8, !tbaa !8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8
  tail call void %i.bx(ptr noundef nonnull align 8 dereferenceable(16) %i.bp) #35, !inline_history !200
  %i.by = load ptr, ptr %i.bp, align 8, !tbaa !8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8
  tail call void %i.ca(ptr noundef nonnull align 8 dereferenceable(16) %i.bp) #35, !inline_history !200
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.cb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i9.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.cb, 0
  br i1 %.not.i9.i.i.i.i.i.i.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cc = add nsw i32 %i.bt, -1
  store i32 %i.cc, ptr %i.bq, align 8, !tbaa !81
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

bb.y:                                             ; preds = %bb.w
  %i.cd = atomicrmw volatile add ptr %i.bq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.y, %bb.x
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bt, %bb.x ], [ %i.cd, %bb.y ]
  %i.ce = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.ce, label %bb.z, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i, !prof !83

bb.z:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bp) #35
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.z, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i, %bb.v, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i
  store ptr %i.bi, ptr %i.bg, align 8, !tbaa !76
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEaSERKS8_.exit.i.i.i.i.i

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEaSERKS8_.exit.i.i.i.i.i: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i26
  %i.cf = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.cg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16 ; 3 uses
  %i.ch = add nsw i64 %.012.i.i.i.i.i, -1
  %i.ci = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.ci, label %.lr.ph.i.i.i.i.i26, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEESt6vectorISB_SaISB_EEEENS1_IPSB_SG_EEET0_T_SL_SK_.exit.loopexit, !llvm.loop !201

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEESt6vectorISB_SaISB_EEEENS1_IPSB_SG_EEET0_T_SL_SK_.exit.loopexit: ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEaSERKS8_.exit.i.i.i.i.i
  %.pre = load ptr, ptr %i.ba, align 8, !tbaa !202
  %.pre66 = ptrtoint ptr %i.cg to i64
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEESt6vectorISB_SaISB_EEEENS1_IPSB_SG_EEET0_T_SL_SK_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEESt6vectorISB_SaISB_EEEENS1_IPSB_SG_EEET0_T_SL_SK_.exit: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEESt6vectorISB_SaISB_EEEENS1_IPSB_SG_EEET0_T_SL_SK_.exit.loopexit, %bb.p
  %.pre-phi67 = phi i64 [ %.pre66, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEESt6vectorISB_SaISB_EEEENS1_IPSB_SG_EEET0_T_SL_SK_.exit.loopexit ], [ %i.l, %bb.p ]
  %i.cj = phi ptr [ %.pre, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEESt6vectorISB_SaISB_EEEENS1_IPSB_SG_EEET0_T_SL_SK_.exit.loopexit ], [ %i.bb, %bb.p ] ; 2 uses
  %.08.lcssa.i.i.i.i.i = phi ptr [ %i.cg, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEESt6vectorISB_SaISB_EEEENS1_IPSB_SG_EEET0_T_SL_SK_.exit.loopexit ], [ %i.j, %bb.p ]
  %.not4.i.i28 = icmp eq ptr %.08.lcssa.i.i.i.i.i, %i.cj
end_hunk_2
begin_hunk_3_@_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEESaIS9_EEaSERKSB_:bb.a
  br i1 %.not7.i.i.i.i.i.i.i.i.i42, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i44, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 8 ; 3 uses
  %i.dm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i.i.i.i.i.i.i.i43 = icmp eq i8 %i.dm, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i43, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dn = load i32, ptr %i.dl, align 4, !tbaa !81
  %i.do = add nsw i32 %i.dn, 1
  store i32 %i.do, ptr %i.dl, align 4, !tbaa !81
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i44

bb.ak:                                            ; preds = %bb.ai
  %i.dp = atomicrmw volatile add ptr %i.dl, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i.i.i.i.i.i51 = load ptr, ptr %i.dh, align 8, !tbaa !76
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i44

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i44: ; preds = %bb.ak, %bb.aj, %bb.ah
  %i.dq = phi ptr [ %i.dk, %bb.ah ], [ %i.dk, %bb.aj ], [ %.pr.pre.i.i.i.i.i.i.i.i.i51, %bb.ak ] ; 8 uses
  %.not8.i.i.i.i.i.i.i.i.i45 = icmp eq ptr %i.dq, null
  br i1 %.not8.i.i.i.i.i.i.i.i.i45, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i49, label %bb.al

bb.al:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i44
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8 ; 4 uses
  %i.ds = load atomic i64, ptr %i.dr acquire, align 8 ; 2 uses
  %i.dt = icmp eq i64 %i.ds, 4294967297
  %i.du = trunc i64 %i.ds to i32                  ; 2 uses
  br i1 %i.dt, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  store i32 0, ptr %i.dr, align 8, !tbaa !66
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dq, i64 12
  store i32 0, ptr %i.dv, align 4, !tbaa !68
  %i.dw = load ptr, ptr %i.dq, align 8, !tbaa !8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.dy = load ptr, ptr %i.dx, align 8
  tail call void %i.dy(ptr noundef nonnull align 8 dereferenceable(16) %i.dq) #35, !inline_history !205
  %i.dz = load ptr, ptr %i.dq, align 8, !tbaa !8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  %i.eb = load ptr, ptr %i.ea, align 8
  tail call void %i.eb(ptr noundef nonnull align 8 dereferenceable(16) %i.dq) #35, !inline_history !205
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i49

bb.an:                                            ; preds = %bb.al
  %i.ec = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i9.i.i.i.i.i.i.i.i.i46 = icmp eq i8 %i.ec, 0
  br i1 %.not.i9.i.i.i.i.i.i.i.i.i46, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ed = add nsw i32 %i.du, -1
  store i32 %i.ed, ptr %i.dr, align 8, !tbaa !81
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i47

bb.ap:                                            ; preds = %bb.an
  %i.ee = atomicrmw volatile add ptr %i.dr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i47

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i47: ; preds = %bb.ap, %bb.ao
  %.0.i.i.i.i.i.i.i.i.i.i.i48 = phi i32 [ %i.du, %bb.ao ], [ %i.ee, %bb.ap ]
  %i.ef = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i48, 1
  br i1 %i.ef, label %bb.aq, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i49, !prof !83

bb.aq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i47
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dq) #35
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i49

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i49: ; preds = %bb.aq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i47, %bb.am, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i44
  store ptr %i.dj, ptr %i.dh, align 8, !tbaa !76
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEaSERKS8_.exit.i.i.i.i.i50

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEaSERKS8_.exit.i.i.i.i.i50: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i49, %.lr.ph.i.i.i.i.i37
  %i.eg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i40, i64 16
  %i.eh = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i39, i64 16
  %i.ei = add nsw i64 %.012.i.i.i.i.i38, -1
  %i.ej = icmp sgt i64 %.012.i.i.i.i.i38, 1
  br i1 %i.ej, label %.lr.ph.i.i.i.i.i37, label %_ZSt4copyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEESA_ET0_T_SC_SB_.exit.loopexit, !llvm.loop !206

_ZSt4copyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEESA_ET0_T_SC_SB_.exit.loopexit: ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEaSERKS8_.exit.i.i.i.i.i50
  %.pre56 = load ptr, ptr %1, align 8, !tbaa !195
  %.pre57 = load ptr, ptr %i.ba, align 8, !tbaa !192 ; 2 uses
  %.pre58 = load ptr, ptr %0, align 8, !tbaa !195
  %.pre59 = load ptr, ptr %i.a, align 8, !tbaa !192
  %.pre61.a = ptrtoint ptr %.pre57 to i64
  %.pre62 = ptrtoint ptr %.pre58 to i64
  %.pre64 = sub i64 %.pre61.a, %.pre62
  br label %_ZSt4copyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEESA_ET0_T_SC_SB_.exit

_ZSt4copyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEESA_ET0_T_SC_SB_.exit: ; preds = %_ZSt4copyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEESA_ET0_T_SC_SB_.exit.loopexit, %bb.ag
  %.pre-phi65 = phi i64 [ %.pre64, %_ZSt4copyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEESA_ET0_T_SC_SB_.exit.loopexit ], [ %i.bd, %bb.ag ]
  %i.ek = phi ptr [ %.pre59, %_ZSt4copyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEESA_ET0_T_SC_SB_.exit.loopexit ], [ %i.b, %bb.ag ] ; 2 uses
  %i.el = phi ptr [ %.pre57, %_ZSt4copyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEESA_ET0_T_SC_SB_.exit.loopexit ], [ %i.bb, %bb.ag ]
  %i.em = phi ptr [ %.pre56, %_ZSt4copyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEESA_ET0_T_SC_SB_.exit.loopexit ], [ %i.c, %bb.ag ]
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 %.pre-phi65 ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.en, %i.ek
  br i1 %.not9.i.i.i.i, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEESt6vectorISB_SaISB_EEEEEvT_SH_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEESA_ET0_T_SC_SB_.exit, %_ZSt10_ConstructIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEEJRS9_EEvPT_DpOT0_.exit.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.ex, %_ZSt10_ConstructIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEEJRS9_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.el, %_ZSt4copyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEESA_ET0_T_SC_SB_.exit ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.ew, %_ZSt10_ConstructIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEEJRS9_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.en, %_ZSt4copyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEESA_ET0_T_SC_SB_.exit ] ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 8
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !76 ; 2 uses
  %i.eq = load <2 x ptr>, ptr %.0810.i.i.i.i, align 8, !tbaa !80
  store <2 x ptr> %i.eq, ptr %.011.i.i.i.i, align 8, !tbaa !80
  %.not.i.i.i.i.i.i.i.i.i52 = icmp eq ptr %i.ep, null
  br i1 %.not.i.i.i.i.i.i.i.i.i52, label %_ZSt10_ConstructIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEEJRS9_EEvPT_DpOT0_.exit.i.i.i.i, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph.i.i.i.i
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 8 ; 3 uses
  %i.es = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i.i.i.i.i.i.i.i53 = icmp eq i8 %i.es, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i53, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.et = load i32, ptr %i.er, align 4, !tbaa !81
  %i.eu = add nsw i32 %i.et, 1
  store i32 %i.eu, ptr %i.er, align 4, !tbaa !81
  br label %_ZSt10_ConstructIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEEJRS9_EEvPT_DpOT0_.exit.i.i.i.i

bb.at:                                            ; preds = %bb.ar
  %i.ev = atomicrmw volatile add ptr %i.er, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEEJRS9_EEvPT_DpOT0_.exit.i.i.i.i

_ZSt10_ConstructIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEEJRS9_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %bb.at, %bb.as, %.lr.ph.i.i.i.i
  %i.ew = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 16 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 16
  %.not.i.i.i.i = icmp eq ptr %i.ew, %i.ek
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEESt6vectorISB_SaISB_EEEEEvT_SH_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !207

_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEESt6vectorISB_SaISB_EEEEEvT_SH_.exit: ; preds = %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEEEvPT_.exit.i.i34, %_ZSt10_ConstructIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEEJRS9_EEvPT_DpOT0_.exit.i.i.i.i, %_ZSt4copyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEESA_ET0_T_SC_SB_.exit, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEESt6vectorISB_SaISB_EEEENS1_IPSB_SG_EEET0_T_SL_SK_.exit, %_ZNSt12_Vector_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEESaIS9_EE13_M_deallocateEPS9_m.exit
  %i.ey = load ptr, ptr %0, align 8, !tbaa !195
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.f
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ez, ptr %i.fa, align 8, !tbaa !192
  br label %bb.au

bb.au:                                            ; preds = %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEESt6vectorISB_SaISB_EEEEEvT_SH_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata6ExtentEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !76   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5osgeo4proj8metadata6ExtentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !66
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !68
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #35, !inline_history !208
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #35, !inline_history !208
  br label %_ZNSt12__shared_ptrIN5osgeo4proj8metadata6ExtentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !81
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5osgeo4proj8metadata6ExtentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !83

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #35
  br label %_ZNSt12__shared_ptrIN5osgeo4proj8metadata6ExtentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5osgeo4proj8metadata6ExtentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5osgeo4proj8metadata6Extent14createFromBBOXEddddRKNS0_4util8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE(ptr dead_on_unwind noalias writable sret(%"class.dropbox::oxygen::nn.87") align 8 %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4, ptr noundef nonnull align 8 dereferenceable(40) %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::vector", align 8       ; 11 uses
  %7 = alloca [1 x %"class.dropbox::oxygen::nn.26"], align 8 ; 7 uses
  %8 = alloca %"class.dropbox::oxygen::nn", align 8 ; 7 uses
  %9 = alloca %"class.std::vector.77", align 8    ; 10 uses
  %10 = alloca %"class.std::vector.82", align 8   ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #35
  call void @_ZN5osgeo4proj8metadata21GeographicBoundingBox6createEdddd(ptr dead_on_unwind nonnull writable sret(%"class.dropbox::oxygen::nn") align 8 %8, double noundef %1, double noundef %2, double noundef %3, double noundef %4)
  call void @llvm.experimental.noalias.scope.decl(metadata !209)
  %i.a = load ptr, ptr %8, align 8, !tbaa !72, !noalias !209 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !76, !noalias !209 ; 5 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null          ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28, !noalias !209
  %.not.i.i.i.i.i = icmp eq i8 %i.e, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr %i.d, align 4, !tbaa !81, !noalias !209
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !81, !noalias !209
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.h = atomicrmw volatile add ptr %i.d, i32 1 acq_rel, align 4, !noalias !209 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.a
  store ptr %i.a, ptr %7, align 8, !tbaa !77, !alias.scope !209
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.c, ptr %i.i, align 8, !tbaa !76, !alias.scope !209
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.j = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #34
          to label %.noexc unwind label %11       ; 4 uses

.noexc:                                           ; preds = %bb.e
  store ptr %i.j, ptr %6, align 8, !tbaa !162
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !163
  store ptr %i.a, ptr %i.j, align 8, !tbaa !77
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.c, ptr %i.m, align 8, !tbaa !76
  br i1 %.not.i.i.i.i, label %_ZSt10_ConstructIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %.noexc
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = load i32, ptr %i.n, align 4, !tbaa !81
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr %i.n, align 4, !tbaa !81
  br label %_ZSt10_ConstructIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.r = atomicrmw volatile add ptr %i.n, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i.i

_ZSt10_ConstructIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i.i: ; preds = %bb.h, %bb.g, %.noexc
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr %i.k, ptr %i.s, align 8, !tbaa !159
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  invoke void @_ZN5osgeo4proj8metadata6Extent6createERKNS0_4util8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrINS1_16GeographicExtentEEEESaISL_EERKSE_INSH_ISI_INS1_14VerticalExtentEEEESaISS_EERKSE_INSH_ISI_INS1_14TemporalExtentEEEESaISZ_EE(ptr dead_on_unwind writable sret(%"class.dropbox::oxygen::nn.87") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %bb.i unwind label %bb.aq

bb.i:                                             ; preds = %_ZSt10_ConstructIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %i.t = load ptr, ptr %10, align 8, !tbaa !195   ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !192  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.t, %i.v
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEES9_EvT_SB_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.i, %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.an, %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEEEvPT_.exit.i.i.i ], [ %i.t, %bb.i ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !76   ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEEEvPT_.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 4 uses
  %i.z = load atomic i64, ptr %i.y acquire, align 8 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 4294967297
  %i.ab = trunc i64 %i.z to i32                   ; 2 uses
  br i1 %i.aa, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.y, align 8, !tbaa !66
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  store i32 0, ptr %i.ac, align 4, !tbaa !68
  %i.ad = load ptr, ptr %i.x, align 8, !tbaa !8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #35, !inline_history !212
  %i.ag = load ptr, ptr %i.x, align 8, !tbaa !8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #35, !inline_history !212
  br label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEEEvPT_.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.aj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.aj, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = add nsw i32 %i.ab, -1
  store i32 %i.ak, ptr %i.y, align 8, !tbaa !81
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.al = atomicrmw volatile add ptr %i.y, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ab, %bb.m ], [ %i.al, %bb.n ]
  %i.am = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.am, label %bb.o, label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEEEvPT_.exit.i.i.i, !prof !83

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #35
  br label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEEEvPT_.exit.i.i.i: ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.k, %.lr.ph.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.an, %i.v
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !199

_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %10, align 8, !tbaa !195
  br label %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEES9_EvT_SB_RSaIT0_E.exit.i

_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEES9_EvT_SB_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i, %bb.i
  %i.ao = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i ], [ %i.t, %bb.i ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEESaIS9_EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEES9_EvT_SB_RSaIT0_E.exit.i
  %i.ap = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !196
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %i.ao to i64
  %i.at = sub i64 %i.ar, %i.as
  call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.at) #36
  br label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEESaIS9_EED2Ev.exit

_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEESaIS9_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEES9_EvT_SB_RSaIT0_E.exit.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #35
  %i.au = load ptr, ptr %9, align 8, !tbaa !179   ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !176 ; 2 uses
  %.not4.i.i.i17 = icmp eq ptr %i.au, %i.aw
  br i1 %.not4.i.i.i17, label %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEES9_EvT_SB_RSaIT0_E.exit.i, label %.lr.ph.i.i.i18

.lr.ph.i.i.i18:                                   ; preds = %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEESaIS9_EED2Ev.exit, %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEEEvPT_.exit.i.i.i
  %.05.i.i.i19 = phi ptr [ %i.bo, %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEEEvPT_.exit.i.i.i ], [ %i.au, %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEESaIS9_EED2Ev.exit ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.05.i.i.i19, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !76 ; 8 uses
  %.not.i.i.i.i.i.i.i20 = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i.i.i.i.i20, label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEEEvPT_.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i18
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 4 uses
  %i.ba = load atomic i64, ptr %i.az acquire, align 8 ; 2 uses
  %i.bb = icmp eq i64 %i.ba, 4294967297
  %i.bc = trunc i64 %i.ba to i32                  ; 2 uses
  br i1 %i.bb, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.az, align 8, !tbaa !66
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 12
  store i32 0, ptr %i.bd, align 4, !tbaa !68
  %i.be = load ptr, ptr %i.ay, align 8, !tbaa !8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(16) %i.ay) #35, !inline_history !213
  %i.bh = load ptr, ptr %i.ay, align 8, !tbaa !8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8
  call void %i.bj(ptr noundef nonnull align 8 dereferenceable(16) %i.ay) #35, !inline_history !213
  br label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEEEvPT_.exit.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.bk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i.i.i.i.i.i21 = icmp eq i8 %i.bk, 0
  br i1 %.not.i.i.i.i.i.i.i.i21, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bl = add nsw i32 %i.bc, -1
  store i32 %i.bl, ptr %i.az, align 8, !tbaa !81
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i22

bb.u:                                             ; preds = %bb.s
  %i.bm = atomicrmw volatile add ptr %i.az, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i22

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i22: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i.i.i.i.i.i23 = phi i32 [ %i.bc, %bb.t ], [ %i.bm, %bb.u ]
  %i.bn = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i23, 1
  br i1 %i.bn, label %bb.v, label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEEEvPT_.exit.i.i.i, !prof !83

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i22
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ay) #35
  br label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEEEvPT_.exit.i.i.i: ; preds = %bb.v, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i22, %bb.r, %.lr.ph.i.i.i18
  %i.bo = getelementptr inbounds nuw i8, ptr %.05.i.i.i19, i64 16 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.bo, %i.aw
  br i1 %.not.i.i.i24, label %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i18, !llvm.loop !183

_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEEEvPT_.exit.i.i.i
  %.pr.i25 = load ptr, ptr %9, align 8, !tbaa !179
  br label %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEES9_EvT_SB_RSaIT0_E.exit.i

_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEES9_EvT_SB_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEESaIS9_EED2Ev.exit
  %i.bp = phi ptr [ %.pr.i25, %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i ], [ %i.au, %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEESaIS9_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i26 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i1.i26, label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEESaIS9_EED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEES9_EvT_SB_RSaIT0_E.exit.i
  %i.bq = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !180
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = ptrtoint ptr %i.bp to i64
  %i.bu = sub i64 %i.bs, %i.bt
  call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef %i.bu) #36
  br label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEESaIS9_EED2Ev.exit

_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEESaIS9_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEES9_EvT_SB_RSaIT0_E.exit.i, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #35
  %i.bv = load ptr, ptr %6, align 8, !tbaa !162   ; 3 uses
  %i.bw = load ptr, ptr %i.s, align 8, !tbaa !159 ; 2 uses
  %.not4.i.i.i27 = icmp eq ptr %i.bv, %i.bw
  br i1 %.not4.i.i.i27, label %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEES9_EvT_SB_RSaIT0_E.exit.i, label %.lr.ph.i.i.i28

.lr.ph.i.i.i28:                                   ; preds = %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEESaIS9_EED2Ev.exit, %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEEEvPT_.exit.i.i.i
  %.05.i.i.i29 = phi ptr [ %i.co, %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEEEvPT_.exit.i.i.i ], [ %i.bv, %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEESaIS9_EED2Ev.exit ] ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.05.i.i.i29, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !76 ; 8 uses
  %.not.i.i.i.i.i.i.i30 = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i.i.i.i.i30, label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEEEvPT_.exit.i.i.i, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i.i.i28
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 4 uses
  %i.ca = load atomic i64, ptr %i.bz acquire, align 8 ; 2 uses
  %i.cb = icmp eq i64 %i.ca, 4294967297
  %i.cc = trunc i64 %i.ca to i32                  ; 2 uses
  br i1 %i.cb, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i32 0, ptr %i.bz, align 8, !tbaa !66
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 12
  store i32 0, ptr %i.cd, align 4, !tbaa !68
  %i.ce = load ptr, ptr %i.by, align 8, !tbaa !8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8
  call void %i.cg(ptr noundef nonnull align 8 dereferenceable(16) %i.by) #35, !inline_history !214
  %i.ch = load ptr, ptr %i.by, align 8, !tbaa !8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8
  call void %i.cj(ptr noundef nonnull align 8 dereferenceable(16) %i.by) #35, !inline_history !214
  br label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEEEvPT_.exit.i.i.i

bb.z:                                             ; preds = %bb.x
  %i.ck = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i.i.i.i.i.i31 = icmp eq i8 %i.ck, 0
  br i1 %.not.i.i.i.i.i.i.i.i31, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cl = add nsw i32 %i.cc, -1
  store i32 %i.cl, ptr %i.bz, align 8, !tbaa !81
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i32

bb.ab:                                            ; preds = %bb.z
  %i.cm = atomicrmw volatile add ptr %i.bz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i32

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i32: ; preds = %bb.ab, %bb.aa
  %.0.i.i.i.i.i.i.i.i.i33 = phi i32 [ %i.cc, %bb.aa ], [ %i.cm, %bb.ab ]
  %i.cn = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i33, 1
  br i1 %i.cn, label %bb.ac, label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEEEvPT_.exit.i.i.i, !prof !83

bb.ac:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i32
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.by) #35
  br label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEEEvPT_.exit.i.i.i: ; preds = %bb.ac, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i32, %bb.y, %.lr.ph.i.i.i28
  %i.co = getelementptr inbounds nuw i8, ptr %.05.i.i.i29, i64 16 ; 2 uses
  %.not.i.i.i34 = icmp eq ptr %i.co, %i.bw
  br i1 %.not.i.i.i34, label %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i28, !llvm.loop !167

_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEEEvPT_.exit.i.i.i
  %.pr.i35 = load ptr, ptr %6, align 8, !tbaa !162
  br label %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEES9_EvT_SB_RSaIT0_E.exit.i

_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEES9_EvT_SB_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEESaIS9_EED2Ev.exit
  %i.cp = phi ptr [ %.pr.i35, %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i ], [ %i.bv, %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEESaIS9_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i36 = icmp eq ptr %i.cp, null
  br i1 %.not.i.i1.i36, label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEESaIS9_EED2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEES9_EvT_SB_RSaIT0_E.exit.i
  %i.cq = load ptr, ptr %i.l, align 8, !tbaa !163
  %i.cr = ptrtoint ptr %i.cq to i64
  %i.cs = ptrtoint ptr %i.cp to i64
  %i.ct = sub i64 %i.cr, %i.cs
  call void @_ZdlPvm(ptr noundef nonnull %i.cp, i64 noundef %i.ct) #36
  br label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEESaIS9_EED2Ev.exit

_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEESaIS9_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEES9_EvT_SB_RSaIT0_E.exit.i, %bb.ad
  %i.cu = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !76 ; 8 uses
  %.not.i.i.i37 = icmp eq ptr %i.cv, null
  br i1 %.not.i.i.i37, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEESaIS9_EED2Ev.exit
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8 ; 4 uses
  %i.cx = load atomic i64, ptr %i.cw acquire, align 8 ; 2 uses
  %i.cy = icmp eq i64 %i.cx, 4294967297
  %i.cz = trunc i64 %i.cx to i32                  ; 2 uses
  br i1 %i.cy, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  store i32 0, ptr %i.cw, align 8, !tbaa !66
  %i.da = getelementptr inbounds nuw i8, ptr %i.cv, i64 12
  store i32 0, ptr %i.da, align 4, !tbaa !68
  %i.db = load ptr, ptr %i.cv, align 8, !tbaa !8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8
  call void %i.dd(ptr noundef nonnull align 8 dereferenceable(16) %i.cv) #35, !inline_history !215
  %i.de = load ptr, ptr %i.cv, align 8, !tbaa !8
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.dg = load ptr, ptr %i.df, align 8
  call void %i.dg(ptr noundef nonnull align 8 dereferenceable(16) %i.cv) #35, !inline_history !215
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEED2Ev.exit

bb.ag:                                            ; preds = %bb.ae
  %i.dh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i.i38 = icmp eq i8 %i.dh, 0
  br i1 %.not.i.i.i.i38, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.di = add nsw i32 %i.cz, -1
  store i32 %i.di, ptr %i.cw, align 8, !tbaa !81
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.ai:                                            ; preds = %bb.ag
  %i.dj = atomicrmw volatile add ptr %i.cw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.ai, %bb.ah
  %.0.i.i.i.i.i = phi i32 [ %i.cz, %bb.ah ], [ %i.dj, %bb.ai ]
  %i.dk = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.dk, label %bb.aj, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEED2Ev.exit, !prof !83

bb.aj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cv) #35
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEED2Ev.exit

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEED2Ev.exit: ; preds = %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEESaIS9_EED2Ev.exit, %bb.af, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.aj
  %i.dl = load ptr, ptr %i.b, align 8, !tbaa !76  ; 8 uses
  %.not.i.i.i39 = icmp eq ptr %i.dl, null
  br i1 %.not.i.i.i39, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata21GeographicBoundingBoxEEED2Ev.exit, label %bb.ak

bb.ak:                                            ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEED2Ev.exit
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8 ; 4 uses
  %i.dn = load atomic i64, ptr %i.dm acquire, align 8 ; 2 uses
  %i.do = icmp eq i64 %i.dn, 4294967297
  %i.dp = trunc i64 %i.dn to i32                  ; 2 uses
  br i1 %i.do, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  store i32 0, ptr %i.dm, align 8, !tbaa !66
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dl, i64 12
  store i32 0, ptr %i.dq, align 4, !tbaa !68
  %i.dr = load ptr, ptr %i.dl, align 8, !tbaa !8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.dt = load ptr, ptr %i.ds, align 8
  call void %i.dt(ptr noundef nonnull align 8 dereferenceable(16) %i.dl) #35, !inline_history !82
  %i.du = load ptr, ptr %i.dl, align 8, !tbaa !8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  %i.dw = load ptr, ptr %i.dv, align 8
  call void %i.dw(ptr noundef nonnull align 8 dereferenceable(16) %i.dl) #35, !inline_history !82
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata21GeographicBoundingBoxEEED2Ev.exit

bb.am:                                            ; preds = %bb.ak
  %i.dx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i.i40 = icmp eq i8 %i.dx, 0
  br i1 %.not.i.i.i.i40, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dy = add nsw i32 %i.dp, -1
  store i32 %i.dy, ptr %i.dm, align 8, !tbaa !81
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i41

bb.ao:                                            ; preds = %bb.am
  %i.dz = atomicrmw volatile add ptr %i.dm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i41

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i41: ; preds = %bb.ao, %bb.an
  %.0.i.i.i.i.i42 = phi i32 [ %i.dp, %bb.an ], [ %i.dz, %bb.ao ]
  %i.ea = icmp eq i32 %.0.i.i.i.i.i42, 1
  br i1 %i.ea, label %bb.ap, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata21GeographicBoundingBoxEEED2Ev.exit, !prof !83

bb.ap:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i41
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dl) #35
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata21GeographicBoundingBoxEEED2Ev.exit

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata21GeographicBoundingBoxEEED2Ev.exit: ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEED2Ev.exit, %bb.al, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i41, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  ret void

11:                                               ; preds = %bb.e
  %12 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.aq:                                            ; preds = %_ZSt10_ConstructIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %i.eb = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEESaIS9_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #35
  call void @_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEESaIS9_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #35
  call void @_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEESaIS9_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #35
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %11
  %.pn = phi { ptr, i32 } [ %i.eb, %bb.aq ], [ %12, %11 ]
  call void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #35
  call void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata21GeographicBoundingBoxEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  resume { ptr, i32 } %.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #19

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEESaIS9_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !195    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !192  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEES9_EvT_SB_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.u, %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !76   ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.f, align 8, !tbaa !66
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !68
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #35, !inline_history !198
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #35, !inline_history !198
  br label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEEEvPT_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !81
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.e ], [ %i.s, %bb.f ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.g, label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEEEvPT_.exit.i.i, !prof !83

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #35
  br label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEEEvPT_.exit.i.i

_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEEEvPT_.exit.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !199

_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !195
  br label %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEES9_EvT_SB_RSaIT0_E.exit

_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEES9_EvT_SB_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.v = phi ptr [ %.pr, %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.v, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEESaIS9_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEES9_EvT_SB_RSaIT0_E.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !196
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #36
  br label %_ZNSt12_Vector_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEESaIS9_EED2Ev.exit

_ZNSt12_Vector_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEESaIS9_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEES9_EvT_SB_RSaIT0_E.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEESaIS9_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !179    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !176  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEES9_EvT_SB_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.u, %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !76   ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.f, align 8, !tbaa !66
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !68
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #35, !inline_history !182
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #35, !inline_history !182
  br label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEEEvPT_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !81
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.e ], [ %i.s, %bb.f ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.g, label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEEEvPT_.exit.i.i, !prof !83

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #35
  br label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEEEvPT_.exit.i.i

_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEEEvPT_.exit.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !183

_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !179
  br label %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEES9_EvT_SB_RSaIT0_E.exit

_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEES9_EvT_SB_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.v = phi ptr [ %.pr, %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.v, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEESaIS9_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEES9_EvT_SB_RSaIT0_E.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !180
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #36
  br label %_ZNSt12_Vector_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEESaIS9_EED2Ev.exit

_ZNSt12_Vector_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEESaIS9_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEES9_EvT_SB_RSaIT0_E.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEESaIS9_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !162    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !159  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEES9_EvT_SB_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.u, %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !76   ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEEEvPT_.exit.i.i, label %bb.b
end_hunk_3
begin_hunk_4_@_ZNK5osgeo4proj8metadata6Extent8containsERKN7dropbox6oxygen2nnISt10shared_ptrIS2_EEE:bb.a

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK5osgeo4proj8metadata6Extent10intersectsERKN7dropbox6oxygen2nnISt10shared_ptrIS2_EEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !141  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !159
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !162  ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = icmp eq i64 %i.i, 16
  br i1 %i.j, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %1, align 8, !tbaa !147
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !141  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !159
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !162  ; 2 uses
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = icmp eq i64 %i.t, 16
  br i1 %i.u, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.v = load ptr, ptr %i.f, align 8, !tbaa !77   ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call noundef zeroext i1 %i.y(ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %i.q)
  br i1 %i.z, label %..thread_crit_edge, label %.thread15

..thread_crit_edge:                               ; preds = %bb.c
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !141
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %bb.a, %bb.b
  %i.aa = phi ptr [ %.pre, %..thread_crit_edge ], [ %i.b, %bb.a ], [ %i.b, %bb.b ] ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 72
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !176
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !179 ; 2 uses
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = icmp eq i64 %i.ah, 16
  br i1 %i.ai, label %bb.d, label %.thread12

bb.d:                                             ; preds = %.thread
  %i.aj = load ptr, ptr %1, align 8, !tbaa !147
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !141 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 72
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !176
  %i.ap = load ptr, ptr %i.am, align 8, !tbaa !179 ; 2 uses
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = icmp eq i64 %i.as, 16
  br i1 %i.at, label %bb.e, label %.thread12

bb.e:                                             ; preds = %bb.d
  %i.au = load ptr, ptr %i.ae, align 8, !tbaa !120
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !109 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !122
  %i.az = tail call noundef double @_ZNK5osgeo4proj6common13UnitOfMeasure14conversionToSIEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ay) #39 ; 2 uses
  %i.ba = load ptr, ptr %i.ap, align 8, !tbaa !120
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !109 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !122
  %i.bf = tail call noundef double @_ZNK5osgeo4proj6common13UnitOfMeasure14conversionToSIEv(ptr noundef nonnull align 8 dereferenceable(24) %i.be) #39 ; 2 uses
  %i.bg = load double, ptr %i.aw, align 8, !tbaa !102
  %i.bh = fmul double %i.az, %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !108
  %i.bk = fmul double %i.bf, %i.bj
  %i.bl = fcmp ugt double %i.bh, %i.bk
  br i1 %i.bl, label %.thread15, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bm = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !108
  %i.bo = fmul double %i.az, %i.bn
  %i.bp = load double, ptr %i.bc, align 8, !tbaa !102
  %i.bq = fmul double %i.bf, %i.bp
  %i.br = fcmp ult double %i.bo, %i.bq
  br i1 %i.br, label %.thread15, label %.thread12

.thread12:                                        ; preds = %.thread, %bb.d, %bb.f
  %i.bs = getelementptr inbounds nuw i8, ptr %i.aa, i64 88
  %i.bt = getelementptr inbounds nuw i8, ptr %i.aa, i64 96
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !192
  %i.bv = load ptr, ptr %i.bs, align 8, !tbaa !195 ; 2 uses
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = sub i64 %i.bw, %i.bx
  %i.bz = icmp eq i64 %i.by, 16
  br i1 %i.bz, label %bb.g, label %.thread15

bb.g:                                             ; preds = %.thread12
  %i.ca = load ptr, ptr %1, align 8, !tbaa !147
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !141 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 88
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 96
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !192
  %i.cg = load ptr, ptr %i.cd, align 8, !tbaa !195 ; 2 uses
  %i.ch = ptrtoint ptr %i.cf to i64
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = sub i64 %i.ch, %i.ci
  %i.ck = icmp eq i64 %i.cj, 16
  br i1 %i.ck, label %bb.h, label %.thread15

bb.h:                                             ; preds = %bb.g
  %i.cl = load ptr, ptr %i.bv, align 8, !tbaa !136
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !126 ; 4 uses
  %i.co = load ptr, ptr %i.cg, align 8, !tbaa !136
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !126 ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !34 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 40
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !34 ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.cu, i64 %i.cs) ; 2 uses
  %i.cv = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.cv, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.h
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !27
  %i.cy = load ptr, ptr %i.cn, align 8, !tbaa !27
  %i.cz = tail call i32 @memcmp(ptr noundef %i.cy, ptr noundef %i.cx, i64 noundef %.sroa.speculated.i.i.i) #35 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.cz, 0
  br i1 %.not.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZStleIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.h
  %i.da = sub i64 %i.cs, %i.cu
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.da, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZStleIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i

_ZStleIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i
  %.0.i.i.i = phi i32 [ %i.cz, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.db = icmp slt i32 %.0.i.i.i, 1
  br i1 %i.db, label %bb.i, label %.thread15

bb.i:                                             ; preds = %_ZStleIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cn, i64 40
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !34 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.df = load i64, ptr %i.de, align 8, !tbaa !34 ; 2 uses
  %.sroa.speculated.i.i3.i = tail call i64 @llvm.umin.i64(i64 %i.df, i64 %i.dd) ; 2 uses
  %i.dg = icmp eq i64 %.sroa.speculated.i.i3.i, 0
  br i1 %i.dg, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i7.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i4.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i4.i: ; preds = %bb.i
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cn, i64 32
  %i.di = load ptr, ptr %i.cq, align 8, !tbaa !27
  %i.dj = load ptr, ptr %i.dh, align 8, !tbaa !27
  %i.dk = tail call i32 @memcmp(ptr noundef %i.dj, ptr noundef %i.di, i64 noundef %.sroa.speculated.i.i3.i) #35 ; 2 uses
  %.not.i.i5.i = icmp eq i32 %i.dk, 0
  br i1 %.not.i.i5.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i7.i, label %_ZStgeIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i7.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i4.i, %bb.i
  %i.dl = sub i64 %i.dd, %i.df
  %spec.select7.i.i.i8.i = tail call i64 @llvm.smax.i64(i64 %i.dl, i64 -2147483648)
  %.08.i.i.i9.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i8.i, i64 2147483647)
  %.0.i6.i.i10.i = trunc nsw i64 %.08.i.i.i9.i to i32
  br label %_ZStgeIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i

_ZStgeIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i7.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i4.i
  %.0.i.i6.i = phi i32 [ %i.dk, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i4.i ], [ %.0.i6.i.i10.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i7.i ]
  %i.dm = icmp sgt i32 %.0.i.i6.i, -1
  br label %.thread15

.thread15:                                        ; preds = %_ZStgeIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %_ZStleIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %bb.e, %bb.c, %bb.g, %.thread12, %bb.f
  %.2 = phi i1 [ false, %bb.e ], [ true, %bb.g ], [ true, %.thread12 ], [ false, %bb.f ], [ false, %bb.c ], [ false, %_ZStleIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i ], [ %i.dm, %_ZStgeIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i ]
  ret i1 %.2
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5osgeo4proj8metadata6Extent12intersectionERKN7dropbox6oxygen2nnISt10shared_ptrIS2_EEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::shared_ptr.88") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.dropbox::oxygen::nn.87", align 8 ; 8 uses
  %4 = alloca %"struct.osgeo::proj::util::BaseObjectNNPtr", align 8 ; 6 uses
  %5 = alloca %"class.std::shared_ptr.27", align 8 ; 8 uses
  %6 = alloca %"class.dropbox::oxygen::nn.87", align 16 ; 7 uses
  %7 = alloca %"class.osgeo::proj::util::optional", align 8 ; 8 uses
  %8 = alloca %"class.std::vector", align 8       ; 11 uses
  %9 = alloca [1 x %"class.dropbox::oxygen::nn.26"], align 16 ; 8 uses
  %10 = alloca %"class.std::vector.77", align 8   ; 10 uses
  %11 = alloca %"class.std::vector.82", align 8   ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !141  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !159
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !162
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = icmp eq i64 %i.i, 16
  br i1 %i.j, label %bb.b, label %bb.bu

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %2, align 8, !tbaa !147
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !141  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !159
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !162
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = icmp eq i64 %i.t, 16
  br i1 %i.u, label %bb.c, label %bb.bu

bb.c:                                             ; preds = %bb.b
  %i.v = tail call noundef zeroext i1 @_ZNK5osgeo4proj8metadata6Extent8containsERKN7dropbox6oxygen2nnISt10shared_ptrIS2_EEE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  br i1 %i.v, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !76   ; 2 uses
  %i.y = load <2 x ptr>, ptr %2, align 8, !tbaa !80
  store <2 x ptr> %i.y, ptr %0, align 8, !tbaa !80
  %.not.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5osgeo4proj8metadata6ExtentEEC2ERKS4_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 3 uses
  %i.aa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i.i = icmp eq i8 %i.aa, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = load i32, ptr %i.z, align 4, !tbaa !81
  %i.ac = add nsw i32 %i.ab, 1
  store i32 %i.ac, ptr %i.z, align 4, !tbaa !81
  br label %_ZNSt10shared_ptrIN5osgeo4proj8metadata6ExtentEEC2ERKS4_.exit

bb.g:                                             ; preds = %bb.e
  %i.ad = atomicrmw volatile add ptr %i.z, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5osgeo4proj8metadata6ExtentEEC2ERKS4_.exit

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  call void @_ZNK5osgeo4proj4util10BaseObject16shared_from_thisEv(ptr dead_on_unwind nonnull writable sret(%"struct.osgeo::proj::util::BaseObjectNNPtr") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %1)
  call void @llvm.experimental.noalias.scope.decl(metadata !220)
  %i.ae = load ptr, ptr %4, align 8, !tbaa !150, !noalias !220 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !76, !noalias !220 ; 5 uses
  %.not.i.i.i.i18 = icmp eq ptr %i.ag, null       ; 2 uses
  br i1 %.not.i.i.i.i18, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 3 uses
  %i.ai = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28, !noalias !220
  %.not.i.i.i.i.i = icmp eq i8 %i.ai, 0
  br i1 %.not.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = load i32, ptr %i.ah, align 4, !tbaa !81, !noalias !220
  %i.ak = add nsw i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ah, align 4, !tbaa !81, !noalias !220
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.al = atomicrmw volatile add ptr %i.ah, i32 1 acq_rel, align 4, !noalias !220 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.h
  store ptr %i.ae, ptr %3, align 8, !tbaa !147, !alias.scope !220
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %i.ag, ptr %i.am, align 8, !tbaa !76, !alias.scope !220
  call void @_ZN5osgeo4proj4util15BaseObjectNNPtrD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  %i.an = load ptr, ptr %2, align 8, !tbaa !147
  %i.ao = invoke noundef zeroext i1 @_ZNK5osgeo4proj8metadata6Extent8containsERKN7dropbox6oxygen2nnISt10shared_ptrIS2_EEE(ptr noundef nonnull align 8 dereferenceable(32) %i.an, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.m unwind label %bb.r

bb.m:                                             ; preds = %bb.l
  br i1 %i.ao, label %bb.n, label %bb.s

bb.n:                                             ; preds = %bb.m
  store ptr %i.ae, ptr %0, align 8, !tbaa !147
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ag, ptr %i.ap, align 8, !tbaa !76
  br i1 %.not.i.i.i.i18, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata6ExtentEEED2Ev.exit59.thread, label %bb.o

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata6ExtentEEED2Ev.exit59.thread: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  br label %_ZNSt10shared_ptrIN5osgeo4proj8metadata6ExtentEEC2ERKS4_.exit

bb.o:                                             ; preds = %bb.n
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 3 uses
  %i.ar = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i.i20 = icmp eq i8 %i.ar, 0
  br i1 %.not.i.i.i.i20, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.as = load i32, ptr %i.aq, align 4, !tbaa !81
  %i.at = add nsw i32 %i.as, 1
  store i32 %i.at, ptr %i.aq, align 4, !tbaa !81
  br label %_ZNSt10shared_ptrIN5osgeo4proj8metadata6ExtentEEC2ERKS4_.exit21

bb.q:                                             ; preds = %bb.o
  %i.au = atomicrmw volatile add ptr %i.aq, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5osgeo4proj8metadata6ExtentEEC2ERKS4_.exit21

bb.r:                                             ; preds = %bb.l
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

bb.s:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !141
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !162
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !77 ; 2 uses
  %i.ba = load ptr, ptr %2, align 8, !tbaa !147
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !141
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 40
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !162
  %i.bf = load ptr, ptr %i.az, align 8, !tbaa !8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 40
  %i.bh = load ptr, ptr %i.bg, align 8
  invoke void %i.bh(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.27") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %i.az, ptr noundef nonnull align 8 dereferenceable(16) %i.be)
          to label %bb.t unwind label %12

bb.t:                                             ; preds = %bb.s
  %i.bi = load ptr, ptr %5, align 8, !tbaa !77    ; 2 uses
  %.not = icmp eq ptr %i.bi, null                 ; 2 uses
  br i1 %.not, label %bb.bf, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #35
  store i8 0, ptr %7, align 8, !tbaa !22
  %i.bj = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 6 uses
  store ptr %i.bk, ptr %i.bj, align 8, !tbaa !13
  %i.bl = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 0, ptr %i.bl, align 8, !tbaa !34
  store i8 0, ptr %i.bk, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #35
  store ptr %i.bi, ptr %9, align 16, !tbaa !77
  %i.bm = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !76 ; 3 uses
  store ptr %i.bo, ptr %i.bm, align 8, !tbaa !76
  %.not.i.i.i.i22 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i22, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 3 uses
  %i.bq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i.i.i23 = icmp eq i8 %i.bq, 0
  br i1 %.not.i.i.i.i.i23, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.br = load i32, ptr %i.bp, align 4, !tbaa !81
  %i.bs = add nsw i32 %i.br, 1
  store i32 %i.bs, ptr %i.bp, align 4, !tbaa !81
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit

bb.x:                                             ; preds = %bb.v
  %i.bt = atomicrmw volatile add ptr %i.bp, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit: ; preds = %bb.u, %bb.w, %bb.x
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %i.bu = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #34
          to label %.noexc unwind label %bb.bc    ; 3 uses

.noexc:                                           ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit
  store ptr %i.bu, ptr %8, align 8, !tbaa !162
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr %i.bv, ptr %i.bw, align 8, !tbaa !163
  %i.bx = load ptr, ptr %i.bm, align 8, !tbaa !76 ; 2 uses
  %i.by = load <2 x ptr>, ptr %9, align 16, !tbaa !80
  store <2 x ptr> %i.by, ptr %i.bu, align 8, !tbaa !80
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i.i, label %bb.y

bb.y:                                             ; preds = %.noexc
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 3 uses
  %i.ca = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ca, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cb = load i32, ptr %i.bz, align 4, !tbaa !81
  %i.cc = add nsw i32 %i.cb, 1
  store i32 %i.cc, ptr %i.bz, align 4, !tbaa !81
  br label %_ZSt10_ConstructIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i.i

bb.aa:                                            ; preds = %bb.y
  %i.cd = atomicrmw volatile add ptr %i.bz, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i.i

_ZSt10_ConstructIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i.i: ; preds = %bb.aa, %bb.z, %.noexc
  %i.ce = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store ptr %i.bv, ptr %i.ce, align 8, !tbaa !159
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  invoke void @_ZN5osgeo4proj8metadata6Extent6createERKNS0_4util8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrINS1_16GeographicExtentEEEESaISL_EERKSE_INSH_ISI_INS1_14VerticalExtentEEEESaISS_EERKSE_INSH_ISI_INS1_14TemporalExtentEEEESaISZ_EE(ptr dead_on_unwind nonnull writable sret(%"class.dropbox::oxygen::nn.87") align 8 %6, ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %11)
          to label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata6ExtentEEED2Ev.exit unwind label %bb.bd

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata6ExtentEEED2Ev.exit: ; preds = %_ZSt10_ConstructIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cg = load <2 x ptr>, ptr %6, align 16, !tbaa !80
  store ptr null, ptr %i.cf, align 8, !tbaa !76
  store <2 x ptr> %i.cg, ptr %0, align 8, !tbaa !80
  store ptr null, ptr %6, align 16, !tbaa !147
  %i.ch = load ptr, ptr %11, align 8, !tbaa !195  ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !192 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ch, %i.cj
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEES9_EvT_SB_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata6ExtentEEED2Ev.exit, %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.db, %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEEEvPT_.exit.i.i.i ], [ %i.ch, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata6ExtentEEED2Ev.exit ] ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !76 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEEEvPT_.exit.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8 ; 4 uses
  %i.cn = load atomic i64, ptr %i.cm acquire, align 8 ; 2 uses
  %i.co = icmp eq i64 %i.cn, 4294967297
  %i.cp = trunc i64 %i.cn to i32                  ; 2 uses
  br i1 %i.co, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i32 0, ptr %i.cm, align 8, !tbaa !66
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cl, i64 12
  store i32 0, ptr %i.cq, align 4, !tbaa !68
  %i.cr = load ptr, ptr %i.cl, align 8, !tbaa !8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8
  call void %i.ct(ptr noundef nonnull align 8 dereferenceable(16) %i.cl) #35, !inline_history !212
  %i.cu = load ptr, ptr %i.cl, align 8, !tbaa !8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8
  call void %i.cw(ptr noundef nonnull align 8 dereferenceable(16) %i.cl) #35, !inline_history !212
  br label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEEEvPT_.exit.i.i.i

bb.ad:                                            ; preds = %bb.ab
  %i.cx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.cx, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cy = add nsw i32 %i.cp, -1
  store i32 %i.cy, ptr %i.cm, align 8, !tbaa !81
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.af:                                            ; preds = %bb.ad
  %i.cz = atomicrmw volatile add ptr %i.cm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.af, %bb.ae
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.cp, %bb.ae ], [ %i.cz, %bb.af ]
  %i.da = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.da, label %bb.ag, label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEEEvPT_.exit.i.i.i, !prof !83

bb.ag:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cl) #35
  br label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEEEvPT_.exit.i.i.i: ; preds = %bb.ag, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.ac, %.lr.ph.i.i.i
  %i.db = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i26 = icmp eq ptr %i.db, %i.cj
  br i1 %.not.i.i.i26, label %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !199

_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %11, align 8, !tbaa !195
  br label %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEES9_EvT_SB_RSaIT0_E.exit.i

_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEES9_EvT_SB_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata6ExtentEEED2Ev.exit
  %i.dc = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i ], [ %i.ch, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata6ExtentEEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.dc, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEESaIS9_EED2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEES9_EvT_SB_RSaIT0_E.exit.i
  %i.dd = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !196
  %i.df = ptrtoint ptr %i.de to i64
  %i.dg = ptrtoint ptr %i.dc to i64
  %i.dh = sub i64 %i.df, %i.dg
  call void @_ZdlPvm(ptr noundef nonnull %i.dc, i64 noundef %i.dh) #36
  br label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEESaIS9_EED2Ev.exit

_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEESaIS9_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEES9_EvT_SB_RSaIT0_E.exit.i, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #35
  %i.di = load ptr, ptr %10, align 8, !tbaa !179  ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !176 ; 2 uses
  %.not4.i.i.i27 = icmp eq ptr %i.di, %i.dk
  br i1 %.not4.i.i.i27, label %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEES9_EvT_SB_RSaIT0_E.exit.i, label %.lr.ph.i.i.i28

.lr.ph.i.i.i28:                                   ; preds = %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEESaIS9_EED2Ev.exit, %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEEEvPT_.exit.i.i.i
  %.05.i.i.i29 = phi ptr [ %i.ec, %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEEEvPT_.exit.i.i.i ], [ %i.di, %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEESaIS9_EED2Ev.exit ] ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.05.i.i.i29, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !76 ; 8 uses
  %.not.i.i.i.i.i.i.i30 = icmp eq ptr %i.dm, null
  br i1 %.not.i.i.i.i.i.i.i30, label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEEEvPT_.exit.i.i.i, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph.i.i.i28
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8 ; 4 uses
  %i.do = load atomic i64, ptr %i.dn acquire, align 8 ; 2 uses
  %i.dp = icmp eq i64 %i.do, 4294967297
  %i.dq = trunc i64 %i.do to i32                  ; 2 uses
  br i1 %i.dp, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  store i32 0, ptr %i.dn, align 8, !tbaa !66
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dm, i64 12
  store i32 0, ptr %i.dr, align 4, !tbaa !68
  %i.ds = load ptr, ptr %i.dm, align 8, !tbaa !8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %i.du = load ptr, ptr %i.dt, align 8
  call void %i.du(ptr noundef nonnull align 8 dereferenceable(16) %i.dm) #35, !inline_history !213
  %i.dv = load ptr, ptr %i.dm, align 8, !tbaa !8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  %i.dx = load ptr, ptr %i.dw, align 8
  call void %i.dx(ptr noundef nonnull align 8 dereferenceable(16) %i.dm) #35, !inline_history !213
  br label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEEEvPT_.exit.i.i.i

bb.ak:                                            ; preds = %bb.ai
  %i.dy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i.i.i.i.i.i31 = icmp eq i8 %i.dy, 0
  br i1 %.not.i.i.i.i.i.i.i.i31, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dz = add nsw i32 %i.dq, -1
  store i32 %i.dz, ptr %i.dn, align 8, !tbaa !81
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i32

bb.am:                                            ; preds = %bb.ak
  %i.ea = atomicrmw volatile add ptr %i.dn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i32

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i32: ; preds = %bb.am, %bb.al
  %.0.i.i.i.i.i.i.i.i.i33 = phi i32 [ %i.dq, %bb.al ], [ %i.ea, %bb.am ]
  %i.eb = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i33, 1
  br i1 %i.eb, label %bb.an, label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEEEvPT_.exit.i.i.i, !prof !83

bb.an:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i32
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dm) #35
  br label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEEEvPT_.exit.i.i.i: ; preds = %bb.an, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i32, %bb.aj, %.lr.ph.i.i.i28
  %i.ec = getelementptr inbounds nuw i8, ptr %.05.i.i.i29, i64 16 ; 2 uses
  %.not.i.i.i34 = icmp eq ptr %i.ec, %i.dk
  br i1 %.not.i.i.i34, label %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i28, !llvm.loop !183

_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEEEvPT_.exit.i.i.i
  %.pr.i35 = load ptr, ptr %10, align 8, !tbaa !179
  br label %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEES9_EvT_SB_RSaIT0_E.exit.i

_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEES9_EvT_SB_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEESaIS9_EED2Ev.exit
  %i.ed = phi ptr [ %.pr.i35, %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i ], [ %i.di, %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEESaIS9_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i36 = icmp eq ptr %i.ed, null
  br i1 %.not.i.i1.i36, label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEESaIS9_EED2Ev.exit, label %bb.ao

bb.ao:                                            ; preds = %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEES9_EvT_SB_RSaIT0_E.exit.i
  %i.ee = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !180
  %i.eg = ptrtoint ptr %i.ef to i64
  %i.eh = ptrtoint ptr %i.ed to i64
  %i.ei = sub i64 %i.eg, %i.eh
  call void @_ZdlPvm(ptr noundef nonnull %i.ed, i64 noundef %i.ei) #36
  br label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEESaIS9_EED2Ev.exit

_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEESaIS9_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEES9_EvT_SB_RSaIT0_E.exit.i, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #35
  %i.ej = load ptr, ptr %8, align 8, !tbaa !162   ; 3 uses
  %i.ek = load ptr, ptr %i.ce, align 8, !tbaa !159 ; 2 uses
  %.not4.i.i.i37 = icmp eq ptr %i.ej, %i.ek
  br i1 %.not4.i.i.i37, label %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEES9_EvT_SB_RSaIT0_E.exit.i, label %.lr.ph.i.i.i38

.lr.ph.i.i.i38:                                   ; preds = %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEESaIS9_EED2Ev.exit, %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEEEvPT_.exit.i.i.i
  %.05.i.i.i39 = phi ptr [ %i.fc, %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEEEvPT_.exit.i.i.i ], [ %i.ej, %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEESaIS9_EED2Ev.exit ] ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.05.i.i.i39, i64 8
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !76 ; 8 uses
  %.not.i.i.i.i.i.i.i40 = icmp eq ptr %i.em, null
  br i1 %.not.i.i.i.i.i.i.i40, label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEEEvPT_.exit.i.i.i, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph.i.i.i38
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8 ; 4 uses
  %i.eo = load atomic i64, ptr %i.en acquire, align 8 ; 2 uses
  %i.ep = icmp eq i64 %i.eo, 4294967297
  %i.eq = trunc i64 %i.eo to i32                  ; 2 uses
  br i1 %i.ep, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  store i32 0, ptr %i.en, align 8, !tbaa !66
  %i.er = getelementptr inbounds nuw i8, ptr %i.em, i64 12
  store i32 0, ptr %i.er, align 4, !tbaa !68
  %i.es = load ptr, ptr %i.em, align 8, !tbaa !8
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %i.eu = load ptr, ptr %i.et, align 8
  call void %i.eu(ptr noundef nonnull align 8 dereferenceable(16) %i.em) #35, !inline_history !214
  %i.ev = load ptr, ptr %i.em, align 8, !tbaa !8
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 24
  %i.ex = load ptr, ptr %i.ew, align 8
  call void %i.ex(ptr noundef nonnull align 8 dereferenceable(16) %i.em) #35, !inline_history !214
  br label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEEEvPT_.exit.i.i.i

bb.ar:                                            ; preds = %bb.ap
  %i.ey = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i.i.i.i.i.i41 = icmp eq i8 %i.ey, 0
  br i1 %.not.i.i.i.i.i.i.i.i41, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ez = add nsw i32 %i.eq, -1
  store i32 %i.ez, ptr %i.en, align 8, !tbaa !81
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i42

bb.at:                                            ; preds = %bb.ar
  %i.fa = atomicrmw volatile add ptr %i.en, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i42

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i42: ; preds = %bb.at, %bb.as
  %.0.i.i.i.i.i.i.i.i.i43 = phi i32 [ %i.eq, %bb.as ], [ %i.fa, %bb.at ]
  %i.fb = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i43, 1
  br i1 %i.fb, label %bb.au, label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEEEvPT_.exit.i.i.i, !prof !83

bb.au:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i42
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.em) #35
  br label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEEEvPT_.exit.i.i.i: ; preds = %bb.au, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i42, %bb.aq, %.lr.ph.i.i.i38
  %i.fc = getelementptr inbounds nuw i8, ptr %.05.i.i.i39, i64 16 ; 2 uses
  %.not.i.i.i44 = icmp eq ptr %i.fc, %i.ek
  br i1 %.not.i.i.i44, label %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i38, !llvm.loop !167

_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEEEvPT_.exit.i.i.i
  %.pr.i45 = load ptr, ptr %8, align 8, !tbaa !162
  br label %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEES9_EvT_SB_RSaIT0_E.exit.i

_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEES9_EvT_SB_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEESaIS9_EED2Ev.exit
  %i.fd = phi ptr [ %.pr.i45, %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i ], [ %i.ej, %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEESaIS9_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i46 = icmp eq ptr %i.fd, null
  br i1 %.not.i.i1.i46, label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEESaIS9_EED2Ev.exit, label %bb.av

bb.av:                                            ; preds = %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEES9_EvT_SB_RSaIT0_E.exit.i
  %i.fe = load ptr, ptr %i.bw, align 8, !tbaa !163
  %i.ff = ptrtoint ptr %i.fe to i64
  %i.fg = ptrtoint ptr %i.fd to i64
  %i.fh = sub i64 %i.ff, %i.fg
  call void @_ZdlPvm(ptr noundef nonnull %i.fd, i64 noundef %i.fh) #36
  br label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEESaIS9_EED2Ev.exit

_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEESaIS9_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEES9_EvT_SB_RSaIT0_E.exit.i, %bb.av
  %i.fi = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !76 ; 8 uses
  %.not.i.i.i47 = icmp eq ptr %i.fj, null
  br i1 %.not.i.i.i47, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEED2Ev.exit, label %bb.aw

bb.aw:                                            ; preds = %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEESaIS9_EED2Ev.exit
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8 ; 4 uses
  %i.fl = load atomic i64, ptr %i.fk acquire, align 8 ; 2 uses
  %i.fm = icmp eq i64 %i.fl, 4294967297
  %i.fn = trunc i64 %i.fl to i32                  ; 2 uses
  br i1 %i.fm, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  store i32 0, ptr %i.fk, align 8, !tbaa !66
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fj, i64 12
  store i32 0, ptr %i.fo, align 4, !tbaa !68
  %i.fp = load ptr, ptr %i.fj, align 8, !tbaa !8
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %i.fr = load ptr, ptr %i.fq, align 8
  call void %i.fr(ptr noundef nonnull align 8 dereferenceable(16) %i.fj) #35, !inline_history !215
  %i.fs = load ptr, ptr %i.fj, align 8, !tbaa !8
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 24
  %i.fu = load ptr, ptr %i.ft, align 8
  call void %i.fu(ptr noundef nonnull align 8 dereferenceable(16) %i.fj) #35, !inline_history !215
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEED2Ev.exit

bb.ay:                                            ; preds = %bb.aw
  %i.fv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i.i48 = icmp eq i8 %i.fv, 0
  br i1 %.not.i.i.i.i48, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fw = add nsw i32 %i.fn, -1
  store i32 %i.fw, ptr %i.fk, align 8, !tbaa !81
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i49

bb.ba:                                            ; preds = %bb.ay
  %i.fx = atomicrmw volatile add ptr %i.fk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i49

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i49: ; preds = %bb.ba, %bb.az
  %.0.i.i.i.i.i50 = phi i32 [ %i.fn, %bb.az ], [ %i.fx, %bb.ba ]
  %i.fy = icmp eq i32 %.0.i.i.i.i.i50, 1
  br i1 %i.fy, label %bb.bb, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEED2Ev.exit, !prof !83

bb.bb:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i49
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fj) #35
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEED2Ev.exit

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEED2Ev.exit: ; preds = %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEESaIS9_EED2Ev.exit, %bb.ax, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i49, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
  %i.fz = load ptr, ptr %i.bj, align 8, !tbaa !27 ; 2 uses
  %i.ga = icmp eq ptr %i.fz, %i.bk
  br i1 %i.ga, label %_ZN5osgeo4proj4util8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEED2Ev.exit
  %i.gb = load i64, ptr %i.bk, align 8, !tbaa !28
  %i.gc = add i64 %i.gb, 1
  call void @_ZdlPvm(ptr noundef %i.fz, i64 noundef %i.gc) #36
  br label %_ZN5osgeo4proj4util8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

_ZN5osgeo4proj4util8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  br label %bb.bf

12:                                               ; preds = %bb.s
  %13 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.bc:                                            ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit
  %i.gd = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.bd:                                            ; preds = %_ZSt10_ConstructIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %i.ge = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14TemporalExtentEEEESaIS9_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %11) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #35
  call void @_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata14VerticalExtentEEEESaIS9_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #35
  call void @_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEESaIS9_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #35
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.pn = phi { ptr, i32 } [ %i.ge, %bb.bd ], [ %i.gd, %bb.bc ]
  call void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
  %i.gf = load ptr, ptr %i.bj, align 8, !tbaa !27 ; 2 uses
  %i.gg = icmp eq ptr %i.gf, %i.bk
  br i1 %i.gg, label %_ZN5osgeo4proj4util8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i51: ; preds = %bb.be
  %i.gh = load i64, ptr %i.bk, align 8, !tbaa !28
  %i.gi = add i64 %i.gh, 1
  call void @_ZdlPvm(ptr noundef %i.gf, i64 noundef %i.gi) #36
  br label %_ZN5osgeo4proj4util8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit53

_ZN5osgeo4proj4util8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit53: ; preds = %bb.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i51
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  call void @_ZNSt12__shared_ptrIN5osgeo4proj8metadata16GeographicExtentELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #35
  br label %bb.bs

bb.bf:                                            ; preds = %bb.t, %_ZN5osgeo4proj4util8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit
  %i.gj = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !76 ; 8 uses
  %.not.i.i = icmp eq ptr %i.gk, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5osgeo4proj8metadata16GeographicExtentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 8 ; 4 uses
  %i.gm = load atomic i64, ptr %i.gl acquire, align 8 ; 2 uses
  %i.gn = icmp eq i64 %i.gm, 4294967297
  %i.go = trunc i64 %i.gm to i32                  ; 2 uses
  br i1 %i.gn, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  store i32 0, ptr %i.gl, align 8, !tbaa !66
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gk, i64 12
  store i32 0, ptr %i.gp, align 4, !tbaa !68
  %i.gq = load ptr, ptr %i.gk, align 8, !tbaa !8
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 16
  %i.gs = load ptr, ptr %i.gr, align 8
  call void %i.gs(ptr noundef nonnull align 8 dereferenceable(16) %i.gk) #35, !inline_history !216
  %i.gt = load ptr, ptr %i.gk, align 8, !tbaa !8
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 24
  %i.gv = load ptr, ptr %i.gu, align 8
  call void %i.gv(ptr noundef nonnull align 8 dereferenceable(16) %i.gk) #35, !inline_history !216
  br label %_ZNSt12__shared_ptrIN5osgeo4proj8metadata16GeographicExtentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bi:                                            ; preds = %bb.bg
  %i.gw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i54 = icmp eq i8 %i.gw, 0
  br i1 %.not.i.i.i54, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.gx = add nsw i32 %i.go, -1
  store i32 %i.gx, ptr %i.gl, align 8, !tbaa !81
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.bk:                                            ; preds = %bb.bi
  %i.gy = atomicrmw volatile add ptr %i.gl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.bk, %bb.bj
  %.0.i.i.i.i = phi i32 [ %i.go, %bb.bj ], [ %i.gy, %bb.bk ]
  %i.gz = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.gz, label %bb.bl, label %_ZNSt12__shared_ptrIN5osgeo4proj8metadata16GeographicExtentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !83

bb.bl:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gk) #35
  br label %_ZNSt12__shared_ptrIN5osgeo4proj8metadata16GeographicExtentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5osgeo4proj8metadata16GeographicExtentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.bf, %bb.bh, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  br label %_ZNSt10shared_ptrIN5osgeo4proj8metadata6ExtentEEC2ERKS4_.exit21

_ZNSt10shared_ptrIN5osgeo4proj8metadata6ExtentEEC2ERKS4_.exit21: ; preds = %bb.q, %bb.p, %_ZNSt12__shared_ptrIN5osgeo4proj8metadata16GeographicExtentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.113.ph = phi i1 [ false, %bb.q ], [ false, %bb.p ], [ %.not, %_ZNSt12__shared_ptrIN5osgeo4proj8metadata16GeographicExtentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ]
  %.pr = load ptr, ptr %i.am, align 8, !tbaa !76  ; 8 uses
  %.not.i.i.i55 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i55, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata6ExtentEEED2Ev.exit59, label %bb.bm

bb.bm:                                            ; preds = %_ZNSt10shared_ptrIN5osgeo4proj8metadata6ExtentEEC2ERKS4_.exit21
  %i.ha = getelementptr inbounds nuw i8, ptr %.pr, i64 8 ; 4 uses
  %i.hb = load atomic i64, ptr %i.ha acquire, align 8 ; 2 uses
  %i.hc = icmp eq i64 %i.hb, 4294967297
  %i.hd = trunc i64 %i.hb to i32                  ; 2 uses
  br i1 %i.hc, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  store i32 0, ptr %i.ha, align 8, !tbaa !66
  %i.he = getelementptr inbounds nuw i8, ptr %.pr, i64 12
  store i32 0, ptr %i.he, align 4, !tbaa !68
  %i.hf = load ptr, ptr %.pr, align 8, !tbaa !8
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 16
  %i.hh = load ptr, ptr %i.hg, align 8
  call void %i.hh(ptr noundef nonnull align 8 dereferenceable(16) %.pr) #35, !inline_history !223
  %i.hi = load ptr, ptr %.pr, align 8, !tbaa !8
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 24
  %i.hk = load ptr, ptr %i.hj, align 8
  call void %i.hk(ptr noundef nonnull align 8 dereferenceable(16) %.pr) #35, !inline_history !223
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata6ExtentEEED2Ev.exit59

bb.bo:                                            ; preds = %bb.bm
  %i.hl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i.i56 = icmp eq i8 %i.hl, 0
  br i1 %.not.i.i.i.i56, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.hm = add nsw i32 %i.hd, -1
  store i32 %i.hm, ptr %i.ha, align 8, !tbaa !81
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i57

bb.bq:                                            ; preds = %bb.bo
  %i.hn = atomicrmw volatile add ptr %i.ha, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i57

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i57: ; preds = %bb.bq, %bb.bp
  %.0.i.i.i.i.i58 = phi i32 [ %i.hd, %bb.bp ], [ %i.hn, %bb.bq ]
  %i.ho = icmp eq i32 %.0.i.i.i.i.i58, 1
  br i1 %i.ho, label %bb.br, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata6ExtentEEED2Ev.exit59, !prof !83

bb.br:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i57
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr) #35
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata6ExtentEEED2Ev.exit59

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata6ExtentEEED2Ev.exit59: ; preds = %_ZNSt10shared_ptrIN5osgeo4proj8metadata6ExtentEEC2ERKS4_.exit21, %bb.bn, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i57, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  br i1 %.113.ph, label %bb.bu, label %_ZNSt10shared_ptrIN5osgeo4proj8metadata6ExtentEEC2ERKS4_.exit

bb.bs:                                            ; preds = %_ZN5osgeo4proj4util8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit53, %12
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZN5osgeo4proj4util8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit53 ], [ %13, %12 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.r
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.bs ], [ %i.av, %bb.r ]
  call void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata6ExtentEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  resume { ptr, i32 } %.pn.pn.pn

bb.bu:                                            ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata6ExtentEEED2Ev.exit59, %bb.b, %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %_ZNSt10shared_ptrIN5osgeo4proj8metadata6ExtentEEC2ERKS4_.exit

_ZNSt10shared_ptrIN5osgeo4proj8metadata6ExtentEEC2ERKS4_.exit: ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata6ExtentEEED2Ev.exit59.thread, %bb.g, %bb.f, %bb.d, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata6ExtentEEED2Ev.exit59, %bb.bu
  ret void
}

declare hidden void @_ZNK5osgeo4proj4util10BaseObject16shared_from_thisEv(ptr dead_on_unwind writable sret(%"struct.osgeo::proj::util::BaseObjectNNPtr") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5osgeo4proj8metadata16GeographicExtentELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !76   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !66
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !68
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #35, !inline_history !224
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #35, !inline_history !224
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !81
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !83

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #35
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN5osgeo4proj8metadata10Identifier7Private13setPropertiesERKNS0_4util11PropertyMapE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.osgeo::proj::metadata::Citation", align 8 ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = tail call noundef ptr @_ZNK5osgeo4proj4util11PropertyMap3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) @_ZN5osgeo4proj8metadata10Identifier13AUTHORITY_KEYB5cxx11E) ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZN5osgeo4proj4util8optionalINS0_8metadata8CitationEEaSERKS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !150  ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.thread81, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.e = icmp eq ptr %i.d, getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5osgeo4proj4util10BoxedValueE, i64 16)
  br i1 %i.e, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.f = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK5osgeo4proj4util10BoxedValue4typeEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.g = load i32, ptr %i.f, align 4, !tbaa !225
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35
  %i.i = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5osgeo4proj4util10BoxedValue11stringValueB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.b)
  call void @_ZN5osgeo4proj8metadata8CitationC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.i)
  store i8 1, ptr %0, align 8, !tbaa !227
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !17   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !17   ; 2 uses
  %i.n = load i8, ptr %i.k, align 8, !tbaa !22, !range !32, !noundef !33
  store i8 %i.n, ptr %i.m, align 8, !tbaa !22
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %i.p)
          to label %_ZN5osgeo4proj4util8optionalINS0_8metadata8CitationEEaSEOS4_.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  call void @__clang_call_terminate(ptr %i.r) #37
  unreachable

_ZN5osgeo4proj4util8optionalINS0_8metadata8CitationEEaSEOS4_.exit: ; preds = %bb.e
  call void @_ZN5osgeo4proj8metadata8CitationD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  br label %_ZN5osgeo4proj4util8optionalINS0_8metadata8CitationEEaSERKS4_.exit

bb.g:                                             ; preds = %bb.d
  %i.s = tail call ptr @__cxa_allocate_exception(i64 40) #35 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull @.str.2, ptr noundef nonnull align 8 dereferenceable(32) @_ZN5osgeo4proj8metadata10Identifier13AUTHORITY_KEYB5cxx11E)
          to label %bb.h unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN5osgeo4proj4util25InvalidValueTypeExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke void @__cxa_throw(ptr nonnull %i.s, ptr nonnull @_ZTIN5osgeo4proj4util25InvalidValueTypeExceptionE, ptr nonnull @_ZN5osgeo4proj4util25InvalidValueTypeExceptionD1Ev) #38
          to label %bb.al unwind label %bb.j

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.g
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  br label %.sink.split

bb.j:                                             ; preds = %bb.i, %bb.h
  %.031 = phi i1 [ false, %bb.i ], [ true, %bb.h ] ; 2 uses
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.v = load ptr, ptr %3, align 8, !tbaa !27     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.y = load i64, ptr %i.w, align 8, !tbaa !28
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  br i1 %.031, label %.sink.split, label %bb.ak

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  br i1 %.031, label %.sink.split, label %bb.ak

bb.k:                                             ; preds = %bb.c
  %i.aa = tail call ptr @__dynamic_cast(ptr nonnull %i.b, ptr nonnull @_ZTIN5osgeo4proj4util10BaseObjectE, ptr nonnull @_ZTIN5osgeo4proj8metadata8CitationE, i64 0) #35 ; 3 uses
  %.not51 = icmp eq ptr %i.aa, null
  br i1 %.not51, label %.thread81, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i8 1, ptr %0, align 8, !tbaa !227
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.not.i.i = icmp eq ptr %i.ab, %i.aa
  br i1 %.not.i.i, label %_ZN5osgeo4proj4util8optionalINS0_8metadata8CitationEEaSERKS4_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !17 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !17 ; 2 uses
  %i.ag = load i8, ptr %i.ad, align 8, !tbaa !22, !range !32, !noundef !33
  store i8 %i.ag, ptr %i.af, align 8, !tbaa !22
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, ptr noundef nonnull align 8 dereferenceable(32) %i.ai)
  br label %_ZN5osgeo4proj4util8optionalINS0_8metadata8CitationEEaSERKS4_.exit

.thread81:                                        ; preds = %bb.b, %bb.k
  %i.aj = tail call ptr @__cxa_allocate_exception(i64 40) #35 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull @.str.2, ptr noundef nonnull align 8 dereferenceable(32) @_ZN5osgeo4proj8metadata10Identifier13AUTHORITY_KEYB5cxx11E)
          to label %bb.n unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66.thread
end_hunk_4
