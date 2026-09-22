Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/concatenatedoperation?download=true
inline.NumInlined: 1478
inline.NumDeleted: 503
begin_hunk_0_@_ZN5osgeo4proj9operation21ConcatenatedOperationC2ERKSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrINS1_19CoordinateOperationEEEESaISA_EE:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5osgeo4proj9operation21ConcatenatedOperationE, i64 152), ptr %i.b, align 8, !tbaa !26
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5osgeo4proj9operation21ConcatenatedOperationE, i64 192), ptr %i.c, align 8, !tbaa !26
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5osgeo4proj9operation21ConcatenatedOperationE, i64 232), ptr %i.d, align 8, !tbaa !26
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107)
  %i.f = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #27
          to label %.noexc unwind label %bb.h     ; 7 uses

.noexc:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !29, !noalias !107 ; 3 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !30, !noalias !107 ; 3 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.f, i8 0, i64 24, i1 false), !noalias !107
  %.not.i.i.i.i.i.i = icmp eq ptr %i.h, %i.i
  br i1 %.not.i.i.i.i.i.i, label %.noexc2.i, label %bb.b

bb.b:                                             ; preds = %.noexc
  %i.m = icmp ugt i64 %i.l, 9223372036854775792
  br i1 %i.m, label %.noexc.i.i.i.i, label %_ZNSt15__new_allocatorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !31

.noexc.i.i.i.i:                                   ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #28
          to label %.noexc.i unwind label %bb.f, !noalias !107

.noexc.i:                                         ; preds = %.noexc.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.n = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #27
          to label %_ZNSt15__new_allocatorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc2_crit_edge.i unwind label %bb.f, !noalias !107

_ZNSt15__new_allocatorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc2_crit_edge.i: ; preds = %_ZNSt15__new_allocatorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEE8allocateEmPKv.exit.i.i.i.i.i.i
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !32, !noalias !107
  %.pre3.i = load ptr, ptr %i.g, align 8, !tbaa !32, !noalias !107
  br label %.noexc2.i

.noexc2.i:                                        ; preds = %_ZNSt15__new_allocatorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc2_crit_edge.i, %.noexc
  %i.o = phi ptr [ %i.h, %.noexc ], [ %.pre3.i, %_ZNSt15__new_allocatorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc2_crit_edge.i ] ; 3 uses
  %i.p = phi ptr [ %i.i, %.noexc ], [ %.pre.i, %_ZNSt15__new_allocatorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc2_crit_edge.i ] ; 3 uses
  %i.q = phi ptr [ null, %.noexc ], [ %i.n, %_ZNSt15__new_allocatorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc2_crit_edge.i ] ; 5 uses
  store ptr %i.q, ptr %i.f, align 8, !tbaa !30, !noalias !107
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %i.q, ptr %i.r, align 8, !tbaa !29, !noalias !107
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.l
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.s, ptr %i.t, align 8, !tbaa !33, !noalias !107
  %.not7.i.i.i.i.i.i.i = icmp eq ptr %i.p, %i.o
  br i1 %.not7.i.i.i.i.i.i.i, label %.loopexit15, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.noexc2.i, %_ZSt10_ConstructIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i = phi ptr [ %i.ad, %_ZSt10_ConstructIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i ], [ %i.q, %.noexc2.i ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i.i = phi ptr [ %i.ac, %_ZSt10_ConstructIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i ], [ %i.p, %.noexc2.i ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !36, !noalias !107 ; 2 uses
  %i.w = load <2 x ptr>, ptr %.sroa.04.08.i.i.i.i.i.i.i, align 8, !tbaa !37, !noalias !107
  store <2 x ptr> %i.w, ptr %.09.i.i.i.i.i.i.i, align 8, !tbaa !37, !noalias !107
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 3 uses
  %i.y = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38, !noalias !107
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.y, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = load i32, ptr %i.x, align 4, !tbaa !39, !noalias !107
  %i.aa = add nsw i32 %i.z, 1
  store i32 %i.aa, ptr %i.x, align 4, !tbaa !39, !noalias !107
  br label %_ZSt10_ConstructIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.ab = atomicrmw volatile add ptr %i.x, i32 1 acq_rel, align 4, !noalias !107 ; 0 uses
  br label %_ZSt10_ConstructIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i

_ZSt10_ConstructIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i: ; preds = %bb.e, %bb.d, %.lr.ph.i.i.i.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ac, %i.o
  br i1 %.not.i.i.i.i.i.i.i, label %.loopexit15.loopexit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !0

bb.f:                                             ; preds = %_ZNSt15__new_allocatorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEE8allocateEmPKv.exit.i.i.i.i.i.i, %.noexc.i.i.i.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef 32) #26, !noalias !107
  br label %.body

.loopexit15.loopexit:                             ; preds = %_ZSt10_ConstructIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i
  %.pre = load ptr, ptr %1, align 8, !tbaa !32
  %.pre18 = load ptr, ptr %i.g, align 8, !tbaa !32
  br label %.loopexit15

.loopexit15:                                      ; preds = %.loopexit15.loopexit, %.noexc2.i
  %i.af = phi ptr [ %i.o, %.noexc2.i ], [ %.pre18, %.loopexit15.loopexit ] ; 2 uses
  %i.ag = phi ptr [ %i.p, %.noexc2.i ], [ %.pre, %.loopexit15.loopexit ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.q, %.noexc2.i ], [ %i.ad, %.loopexit15.loopexit ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i, ptr %i.r, align 8, !tbaa !29, !noalias !107
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i8 0, ptr %i.ah, align 8, !tbaa !46, !noalias !107
  store ptr %i.f, ptr %i.e, align 8, !tbaa !24, !alias.scope !107
  %.not16 = icmp eq ptr %i.ag, %i.af
  br i1 %.not16, label %.loopexit, label %.lr.ph

bb.g:                                             ; preds = %.critedge
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.011.017, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.ai, %i.af
  br i1 %.not, label %.loopexit, label %.lr.ph

bb.h:                                             ; preds = %bb.a
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph:                                           ; preds = %.loopexit15, %bb.g
  %.sroa.011.017 = phi ptr [ %i.ai, %bb.g ], [ %i.ag, %.loopexit15 ] ; 2 uses
  %i.ak = load ptr, ptr %.sroa.011.017, align 8, !tbaa !51
  %i.al = invoke noundef zeroext i1 @_ZNK5osgeo4proj9operation19CoordinateOperation30requiresPerCoordinateInputTimeEv(ptr noundef nonnull align 8 dereferenceable(72) %i.ak)
          to label %.critedge unwind label %.loopexit14

.critedge:                                        ; preds = %.lr.ph
  br i1 %i.al, label %bb.i, label %bb.g

bb.i:                                             ; preds = %.critedge
  invoke void @_ZN5osgeo4proj9operation19CoordinateOperation33setRequiresPerCoordinateInputTimeEb(ptr noundef nonnull align 8 dereferenceable(72) %0, i1 noundef zeroext true)
          to label %.loopexit unwind label %.loopexit.split-lp

.loopexit14:                                      ; preds = %.lr.ph
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

.loopexit.split-lp:                               ; preds = %bb.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %.loopexit.split-lp, %.loopexit14
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit14 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.am = load ptr, ptr %i.e, align 8, !tbaa !24  ; 2 uses
  %.not.i = icmp eq ptr %i.am, null
  br i1 %.not.i, label %.body, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_ZNKSt14default_deleteIN5osgeo4proj9operation21ConcatenatedOperation7PrivateEEclEPS4_(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull %i.am)
  br label %.body

.loopexit:                                        ; preds = %bb.g, %.loopexit15, %bb.i
  ret void

.body:                                            ; preds = %bb.k, %bb.j, %bb.h, %bb.f
  %.pn = phi { ptr, i32 } [ %i.ae, %bb.f ], [ %i.aj, %bb.h ], [ %lpad.phi, %bb.j ], [ %lpad.phi, %bb.k ]
  tail call void @_ZN5osgeo4proj9operation19CoordinateOperationD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) #25
  resume { ptr, i32 } %.pn
}

declare hidden void @_ZN5osgeo4proj9operation19CoordinateOperationC2Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

declare noundef zeroext i1 @_ZNK5osgeo4proj9operation19CoordinateOperation30requiresPerCoordinateInputTimeEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #5

declare hidden void @_ZN5osgeo4proj9operation19CoordinateOperation33setRequiresPerCoordinateInputTimeEb(ptr noundef nonnull align 8 dereferenceable(72), i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5osgeo4proj9operation21ConcatenatedOperation10operationsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define void @_ZN5osgeo4proj9operation21ConcatenatedOperation6createERKNS0_4util11PropertyMapERKSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrINS1_19CoordinateOperationEEEESaISE_EERKS7_INSA_ISB_INS0_8metadata18PositionalAccuracyEEEESaISM_EE(ptr dead_on_unwind noalias writable sret(%"class.dropbox::oxygen::nn.34") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::shared_ptr.41", align 8 ; 9 uses
  %5 = alloca %"class.std::shared_ptr.41", align 8 ; 13 uses
  %6 = alloca %"class.std::shared_ptr.41", align 8 ; 7 uses
  %7 = alloca %"class.std::shared_ptr.41", align 8 ; 9 uses
  %8 = alloca %"class.std::shared_ptr.41", align 16 ; 8 uses
  %9 = alloca %"class.std::shared_ptr.52", align 8 ; 7 uses
  %10 = alloca %"class.dropbox::oxygen::nn.55", align 16 ; 8 uses
  %11 = alloca %"class.std::shared_ptr.41", align 16 ; 6 uses
  %12 = alloca %"class.dropbox::oxygen::nn.55", align 16 ; 8 uses
  %13 = alloca %"class.std::shared_ptr.41", align 16 ; 6 uses
  %14 = alloca %"class.std::shared_ptr.41", align 8 ; 6 uses
  %15 = alloca %"class.std::shared_ptr.41", align 8 ; 6 uses
  %16 = alloca %"class.std::shared_ptr.52", align 8 ; 7 uses
  %17 = alloca %"class.std::shared_ptr.41", align 8 ; 6 uses
  %18 = alloca %"struct.osgeo::proj::util::BaseObjectNNPtr", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 2 uses
  %i.c = load ptr, ptr %2, align 8, !tbaa !30     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = icmp ult i64 %i.f, 17
  br i1 %i.g, label %bb.b, label %19

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr @__cxa_allocate_exception(i64 40) #25 ; 3 uses
  invoke void @_ZN5osgeo4proj9operation16InvalidOperationC1EPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.h, ptr noundef nonnull @.str)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTIN5osgeo4proj9operation16InvalidOperationE, ptr nonnull @_ZN5osgeo4proj9operation16InvalidOperationD1Ev) #28
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.h) #25
  br label %bb.fj

19:                                               ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %.not = icmp eq ptr %i.b, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %19
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.e

._crit_edge:                                      ; preds = %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit127, %19
  %.044.lcssa = phi i1 [ false, %19 ], [ %i.aa, %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit127 ]
  %.lcssa = phi ptr [ %i.c, %19 ], [ %i.fs, %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit127 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.p = load ptr, ptr %.lcssa, align 8, !tbaa !51
  invoke void @_ZNK5osgeo4proj9operation19CoordinateOperation9sourceCRSEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.41") align 8 %11, ptr noundef nonnull align 8 dereferenceable(72) %i.p)
          to label %bb.by unwind label %bb.cq

bb.e:                                             ; preds = %.lr.ph, %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit127
  %i.q = phi ptr [ %i.c, %.lr.ph ], [ %i.fs, %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit127 ]
  %.043195 = phi i64 [ 0, %.lr.ph ], [ %i.fq, %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit127 ] ; 6 uses
  %.044194 = phi i1 [ false, %.lr.ph ], [ %i.aa, %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit127 ]
  %.045193 = phi i1 [ true, %.lr.ph ], [ %.2, %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit127 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %.043195
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !51
  invoke void @_ZNK5osgeo4proj9operation19CoordinateOperation9sourceCRSEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.41") align 8 %6, ptr noundef nonnull align 8 dereferenceable(72) %i.s)
          to label %bb.f unwind label %bb.u

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.t = load ptr, ptr %2, align 8, !tbaa !30
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %.043195
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !51
  invoke void @_ZNK5osgeo4proj9operation19CoordinateOperation9targetCRSEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.41") align 8 %7, ptr noundef nonnull align 8 dereferenceable(72) %i.v)
          to label %bb.g unwind label %bb.v

bb.g:                                             ; preds = %bb.f
  %i.w = load ptr, ptr %2, align 8, !tbaa !30
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %.043195
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !51
  %i.z = invoke noundef zeroext i1 @_ZNK5osgeo4proj9operation19CoordinateOperation25hasBallparkTransformationEv(ptr noundef nonnull align 8 dereferenceable(72) %i.y)
          to label %bb.h unwind label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.aa = or i1 %.044194, %i.z                    ; 2 uses
  br i1 %.045193, label %bb.i, label %bb.au

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.ab = load ptr, ptr %2, align 8, !tbaa !30
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.ab, i64 %.043195
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !51
  %i.ae = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5osgeo4proj9operation19CoordinateOperation16interpolationCRSEv(ptr noundef nonnull align 8 dereferenceable(72) %i.ad)
          to label %bb.j unwind label %bb.w       ; 2 uses

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !36 ; 2 uses
  %i.ah = load <2 x ptr>, ptr %i.ae, align 8, !tbaa !37
  store <2 x ptr> %i.ah, ptr %8, align 16, !tbaa !37
  %.not.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5osgeo4proj3crs3CRSEEC2ERKS4_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 3 uses
  %i.aj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i.i.i = icmp eq i8 %i.aj, 0
  br i1 %.not.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = load i32, ptr %i.ai, align 4, !tbaa !39
  %i.al = add nsw i32 %i.ak, 1
  store i32 %i.al, ptr %i.ai, align 4, !tbaa !39
  br label %_ZNSt10shared_ptrIN5osgeo4proj3crs3CRSEEC2ERKS4_.exit

bb.m:                                             ; preds = %bb.k
  %i.am = atomicrmw volatile add ptr %i.ai, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5osgeo4proj3crs3CRSEEC2ERKS4_.exit

_ZNSt10shared_ptrIN5osgeo4proj3crs3CRSEEC2ERKS4_.exit: ; preds = %bb.j, %bb.l, %bb.m
  %i.an = load ptr, ptr %5, align 8, !tbaa !54    ; 2 uses
  %.not.i = icmp eq ptr %i.an, null
  %i.ao = load ptr, ptr %8, align 16, !tbaa !54   ; 3 uses
  br i1 %.not.i, label %bb.n, label %bb.x

bb.n:                                             ; preds = %_ZNSt10shared_ptrIN5osgeo4proj3crs3CRSEEC2ERKS4_.exit
  %i.ap = load ptr, ptr %i.j, align 8, !tbaa !36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  store ptr %i.ao, ptr %5, align 8, !tbaa !110
  %i.aq = load ptr, ptr %i.l, align 8, !tbaa !36  ; 8 uses
  store ptr %i.ap, ptr %i.l, align 8, !tbaa !36
  %.not.i.i.i.i94 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i.i94, label %_ZNSt10shared_ptrIN5osgeo4proj3crs3CRSEEaSEOS4_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 4 uses
  %i.as = load atomic i64, ptr %i.ar acquire, align 8 ; 2 uses
  %i.at = icmp eq i64 %i.as, 4294967297
  %i.au = trunc i64 %i.as to i32                  ; 2 uses
  br i1 %i.at, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.ar, align 8, !tbaa !56
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 12
  store i32 0, ptr %i.av, align 4, !tbaa !57
  %i.aw = load ptr, ptr %i.aq, align 8, !tbaa !26
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8
  call void %i.ay(ptr noundef nonnull align 8 dereferenceable(16) %i.aq) #25, !inline_history !108
  %i.az = load ptr, ptr %i.aq, align 8, !tbaa !26
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8
  call void %i.bb(ptr noundef nonnull align 8 dereferenceable(16) %i.aq) #25, !inline_history !108
  br label %_ZNSt10shared_ptrIN5osgeo4proj3crs3CRSEEaSEOS4_.exitthread-pre-split

bb.q:                                             ; preds = %bb.o
  %i.bc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i.i.i.i = icmp eq i8 %i.bc, 0
  br i1 %.not.i.i.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bd = add nsw i32 %i.au, -1
  store i32 %i.bd, ptr %i.ar, align 8, !tbaa !39
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.be = atomicrmw volatile add ptr %i.ar, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i.i.i = phi i32 [ %i.au, %bb.r ], [ %i.be, %bb.s ]
  %i.bf = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.bf, label %bb.t, label %_ZNSt10shared_ptrIN5osgeo4proj3crs3CRSEEaSEOS4_.exitthread-pre-split, !prof !31

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aq) #25
  br label %_ZNSt10shared_ptrIN5osgeo4proj3crs3CRSEEaSEOS4_.exitthread-pre-split

bb.u:                                             ; preds = %bb.e
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.v:                                             ; preds = %bb.f
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

.loopexit:                                        ; preds = %bb.g, %bb.ay
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

.loopexit.split-lp:                               ; preds = %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.w:                                             ; preds = %bb.i
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.x:                                             ; preds = %_ZNSt10shared_ptrIN5osgeo4proj3crs3CRSEEC2ERKS4_.exit
  %.not.i95 = icmp eq ptr %i.ao, null
  br i1 %.not.i95, label %.critedge.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.bk = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  %i.bl = invoke noundef zeroext i1 @_ZNK5osgeo4proj4util11IComparable14isEquivalentToEPKS2_NS2_9CriterionERKSt10shared_ptrINS0_2io15DatabaseContextEE(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, ptr noundef nonnull %i.bk, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %bb.z unwind label %bb.am

bb.z:                                             ; preds = %bb.y
  %i.bm = load ptr, ptr %i.k, align 8, !tbaa !36  ; 8 uses
  %.not.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i, label %.critedge, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 4 uses
  %i.bo = load atomic i64, ptr %i.bn acquire, align 8 ; 2 uses
  %i.bp = icmp eq i64 %i.bo, 4294967297
  %i.bq = trunc i64 %i.bo to i32                  ; 2 uses
  br i1 %i.bp, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i32 0, ptr %i.bn, align 8, !tbaa !56
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  store i32 0, ptr %i.br, align 4, !tbaa !57
  %i.bs = load ptr, ptr %i.bm, align 8, !tbaa !26
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #25, !inline_history !1
  %i.bv = load ptr, ptr %i.bm, align 8, !tbaa !26
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8
  call void %i.bx(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #25, !inline_history !1
  br label %.critedge

bb.ac:                                            ; preds = %bb.aa
  %i.by = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i.i96 = icmp eq i8 %i.by, 0
  br i1 %.not.i.i.i96, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bz = add nsw i32 %i.bq, -1
  store i32 %i.bz, ptr %i.bn, align 8, !tbaa !39
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.ae:                                            ; preds = %bb.ac
  %i.ca = atomicrmw volatile add ptr %i.bn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
end_hunk_0
begin_hunk_1_@_ZN5osgeo4proj9operation21ConcatenatedOperation6createERKNS0_4util11PropertyMapERKSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrINS1_19CoordinateOperationEEEESaISE_EERKS7_INSA_ISB_INS0_8metadata18PositionalAccuracyEEEESaISM_EE:bb.a
  %i.jf = load ptr, ptr %i.iw, align 8, !tbaa !26
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 24
  %i.jh = load ptr, ptr %i.jg, align 8
  call void %i.jh(ptr noundef nonnull align 8 dereferenceable(16) %i.iw) #25, !inline_history !2
  br label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit148

bb.dc:                                            ; preds = %bb.da
  %i.ji = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i.i145 = icmp eq i8 %i.ji, 0
  br i1 %.not.i.i.i145, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.jj = add nsw i32 %i.ja, -1
  store i32 %i.jj, ptr %i.ix, align 8, !tbaa !39
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i146

bb.de:                                            ; preds = %bb.dc
  %i.jk = atomicrmw volatile add ptr %i.ix, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i146

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i146: ; preds = %bb.de, %bb.dd
  %.0.i.i.i.i147 = phi i32 [ %i.ja, %bb.dd ], [ %i.jk, %bb.de ]
  %i.jl = icmp eq i32 %.0.i.i.i.i147, 1
  br i1 %i.jl, label %bb.df, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit148, !prof !31

bb.df:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i146
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.iw) #25
  br label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit148

_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit148: ; preds = %bb.cz, %bb.db, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i146, %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  %i.jm = load ptr, ptr %2, align 8, !tbaa !30
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 16
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !51
  invoke void @_ZNK5osgeo4proj9operation19CoordinateOperation9sourceCRSEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.41") align 8 %15, ptr noundef nonnull align 8 dereferenceable(72) %i.jo)
          to label %bb.dg unwind label %bb.di

bb.dg:                                            ; preds = %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit148
  %i.jp = load ptr, ptr %15, align 8, !tbaa !54   ; 2 uses
  %i.jq = icmp eq ptr %i.jp, null
  br i1 %i.jq, label %bb.dj, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.jr = call ptr @__dynamic_cast(ptr nonnull %i.jp, ptr nonnull @_ZTIN5osgeo4proj3crs3CRSE, ptr nonnull @_ZTIN5osgeo4proj3crs13GeographicCRSE, i64 -1) #25
  br label %bb.dj

bb.di:                                            ; preds = %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit148
  %i.js = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  br label %bb.ff

bb.dj:                                            ; preds = %bb.dg, %bb.dh
  %i.jt = phi ptr [ %i.jr, %bb.dh ], [ null, %bb.dg ] ; 3 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !36 ; 8 uses
  %.not.i.i149 = icmp eq ptr %i.jv, null
  br i1 %.not.i.i149, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit153, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 8 ; 4 uses
  %i.jx = load atomic i64, ptr %i.jw acquire, align 8 ; 2 uses
  %i.jy = icmp eq i64 %i.jx, 4294967297
  %i.jz = trunc i64 %i.jx to i32                  ; 2 uses
  br i1 %i.jy, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  store i32 0, ptr %i.jw, align 8, !tbaa !56
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jv, i64 12
  store i32 0, ptr %i.ka, align 4, !tbaa !57
  %i.kb = load ptr, ptr %i.jv, align 8, !tbaa !26
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 16
  %i.kd = load ptr, ptr %i.kc, align 8
  call void %i.kd(ptr noundef nonnull align 8 dereferenceable(16) %i.jv) #25, !inline_history !2
  %i.ke = load ptr, ptr %i.jv, align 8, !tbaa !26
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 24
  %i.kg = load ptr, ptr %i.kf, align 8
  call void %i.kg(ptr noundef nonnull align 8 dereferenceable(16) %i.jv) #25, !inline_history !2
  br label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit153

bb.dm:                                            ; preds = %bb.dk
  %i.kh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i.i150 = icmp eq i8 %i.kh, 0
  br i1 %.not.i.i.i150, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.ki = add nsw i32 %i.jz, -1
  store i32 %i.ki, ptr %i.jw, align 8, !tbaa !39
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i151

bb.do:                                            ; preds = %bb.dm
  %i.kj = atomicrmw volatile add ptr %i.jw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i151

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i151: ; preds = %bb.do, %bb.dn
  %.0.i.i.i.i152 = phi i32 [ %i.jz, %bb.dn ], [ %i.kj, %bb.do ]
  %i.kk = icmp eq i32 %.0.i.i.i.i152, 1
  br i1 %i.kk, label %bb.dp, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit153, !prof !31

bb.dp:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i151
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jv) #25
  br label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit153

_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit153: ; preds = %bb.dj, %bb.dl, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i151, %bb.dp
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  %i.kl = icmp ne ptr %i.iu, null
  %i.km = icmp ne ptr %i.jt, null
  %or.cond = select i1 %i.kl, i1 %i.km, i1 false
  br i1 %or.cond, label %bb.dq, label %.critedge89

bb.dq:                                            ; preds = %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit153
  %i.kn = load ptr, ptr %i.jt, align 8, !tbaa !26
  %i.ko = getelementptr i8, ptr %i.kn, i64 -24
  %i.kp = load i64, ptr %i.ko, align 8
  %i.kq = getelementptr i8, ptr %i.jt, i64 %i.kp
  %i.kr = getelementptr i8, ptr %i.kq, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %16, i8 0, i64 16, i1 false)
  %i.ks = load ptr, ptr %i.iu, align 8, !tbaa !26
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 40
  %i.ku = load ptr, ptr %i.kt, align 8
  %i.kv = invoke noundef zeroext i1 %i.ku(ptr noundef nonnull align 8 dereferenceable(24) %i.iu, ptr noundef %i.kr, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(16) %16)
          to label %.critedge93 unwind label %bb.dt

.critedge93:                                      ; preds = %bb.dq
  call void @_ZNSt12__shared_ptrIN5osgeo4proj2io15DatabaseContextELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %16) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  br i1 %i.kv, label %bb.dr, label %.critedge89

bb.dr:                                            ; preds = %.critedge93
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #25
  %i.kw = load ptr, ptr %2, align 8, !tbaa !30
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !51
  invoke void @_ZNK5osgeo4proj9operation19CoordinateOperation9targetCRSEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.41") align 8 %17, ptr noundef nonnull align 8 dereferenceable(72) %i.kx)
          to label %bb.ds unwind label %bb.du

bb.ds:                                            ; preds = %bb.dr
  %i.ky = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt10shared_ptrIN5osgeo4proj3crs3CRSEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %17) #25 ; 0 uses
  call void @_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %17) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  br label %.critedge89

bb.dt:                                            ; preds = %bb.dq
  %i.kz = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5osgeo4proj2io15DatabaseContextELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %16) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  br label %bb.ff

bb.du:                                            ; preds = %bb.dr
  %i.la = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  br label %bb.ff

.critedge89:                                      ; preds = %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit153, %bb.ct, %bb.co, %.critedge93, %bb.ds, %bb.cu, %bb.cp, %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit142
  invoke void @_ZN5osgeo4proj9operation21ConcatenatedOperation14nn_make_sharedIS2_JRKSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrINS1_19CoordinateOperationEEEESaISB_EEEEENS7_IS8_IT_EEEDpOT0_(ptr dead_on_unwind writable sret(%"class.dropbox::oxygen::nn.34") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.dv unwind label %bb.cs

bb.dv:                                            ; preds = %.critedge89
  %i.lb = load ptr, ptr %0, align 8, !tbaa !60    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #25
  store ptr %i.lb, ptr %18, align 8, !tbaa !63
  %i.lc = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !36 ; 3 uses
  store ptr %i.le, ptr %i.lc, align 8, !tbaa !36
  %.not.i.i.i.i.i154 = icmp eq ptr %i.le, null
  br i1 %.not.i.i.i.i.i154, label %_ZN5osgeo4proj4util15BaseObjectNNPtrC2INS0_9operation21ConcatenatedOperationEEERKN7dropbox6oxygen2nnISt10shared_ptrIT_EEE.exit, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 8 ; 3 uses
  %i.lg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i.i.i.i.i = icmp eq i8 %i.lg, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.lh = load i32, ptr %i.lf, align 4, !tbaa !39
  %i.li = add nsw i32 %i.lh, 1
  store i32 %i.li, ptr %i.lf, align 4, !tbaa !39
  br label %_ZN5osgeo4proj4util15BaseObjectNNPtrC2INS0_9operation21ConcatenatedOperationEEERKN7dropbox6oxygen2nnISt10shared_ptrIT_EEE.exit

bb.dy:                                            ; preds = %bb.dw
  %i.lj = atomicrmw volatile add ptr %i.lf, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5osgeo4proj4util15BaseObjectNNPtrC2INS0_9operation21ConcatenatedOperationEEERKN7dropbox6oxygen2nnISt10shared_ptrIT_EEE.exit

_ZN5osgeo4proj4util15BaseObjectNNPtrC2INS0_9operation21ConcatenatedOperationEEERKN7dropbox6oxygen2nnISt10shared_ptrIT_EEE.exit: ; preds = %bb.dy, %bb.dx, %bb.dv
  invoke void @_ZN5osgeo4proj4util10BaseObject10assignSelfERKNS1_15BaseObjectNNPtrE(ptr noundef nonnull align 8 dereferenceable(16) %i.lb, ptr noundef nonnull align 8 dereferenceable(16) %18)
          to label %bb.dz unwind label %bb.ee

bb.dz:                                            ; preds = %_ZN5osgeo4proj4util15BaseObjectNNPtrC2INS0_9operation21ConcatenatedOperationEEERKN7dropbox6oxygen2nnISt10shared_ptrIT_EEE.exit
  call void @_ZN5osgeo4proj4util15BaseObjectNNPtrD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %18) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  %i.lk = load ptr, ptr %0, align 8, !tbaa !60
  invoke void @_ZN5osgeo4proj9operation19CoordinateOperation13setPropertiesERKNS0_4util11PropertyMapE(ptr noundef nonnull align 8 dereferenceable(72) %i.lk, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.ea unwind label %bb.ed

bb.ea:                                            ; preds = %bb.dz
  %i.ll = load ptr, ptr %0, align 8, !tbaa !60
  invoke void @_ZN5osgeo4proj9operation19CoordinateOperation28setHasBallparkTransformationEb(ptr noundef nonnull align 8 dereferenceable(72) %i.ll, i1 noundef zeroext %.044.lcssa)
          to label %bb.eb unwind label %bb.ed

bb.eb:                                            ; preds = %bb.ea
  %i.lm = load ptr, ptr %0, align 8, !tbaa !60
  invoke void @_ZN5osgeo4proj9operation19CoordinateOperation7setCRSsERKN7dropbox6oxygen2nnISt10shared_ptrINS0_3crs3CRSEEEESC_RKS9_(ptr noundef nonnull align 8 dereferenceable(72) %i.lm, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.ec unwind label %bb.ed

bb.ec:                                            ; preds = %bb.eb
  %i.ln = load ptr, ptr %0, align 8, !tbaa !60
  invoke void @_ZN5osgeo4proj9operation19CoordinateOperation13setAccuraciesERKSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrINS0_8metadata18PositionalAccuracyEEEESaISB_EE(ptr noundef nonnull align 8 dereferenceable(72) %i.ln, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.ef unwind label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.eb, %bb.ea, %bb.dz
  %i.lo = landingpad { ptr, i32 }
          cleanup
  br label %bb.fe

bb.ee:                                            ; preds = %_ZN5osgeo4proj4util15BaseObjectNNPtrC2INS0_9operation21ConcatenatedOperationEEERKN7dropbox6oxygen2nnISt10shared_ptrIT_EEE.exit
  %i.lp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5osgeo4proj4util15BaseObjectNNPtrD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %18) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  br label %bb.fe

bb.ef:                                            ; preds = %bb.ec
  %i.lq = load ptr, ptr %i.gz, align 8, !tbaa !36 ; 8 uses
  %.not.i.i.i155 = icmp eq ptr %i.lq, null
  br i1 %.not.i.i.i155, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEED2Ev.exit, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 8 ; 4 uses
  %i.ls = load atomic i64, ptr %i.lr acquire, align 8 ; 2 uses
  %i.lt = icmp eq i64 %i.ls, 4294967297
  %i.lu = trunc i64 %i.ls to i32                  ; 2 uses
  br i1 %i.lt, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  store i32 0, ptr %i.lr, align 8, !tbaa !56
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lq, i64 12
  store i32 0, ptr %i.lv, align 4, !tbaa !57
  %i.lw = load ptr, ptr %i.lq, align 8, !tbaa !26
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 16
  %i.ly = load ptr, ptr %i.lx, align 8
  call void %i.ly(ptr noundef nonnull align 8 dereferenceable(16) %i.lq) #25, !inline_history !3
  %i.lz = load ptr, ptr %i.lq, align 8, !tbaa !26
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 24
  %i.mb = load ptr, ptr %i.ma, align 8
  call void %i.mb(ptr noundef nonnull align 8 dereferenceable(16) %i.lq) #25, !inline_history !3
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEED2Ev.exit

bb.ei:                                            ; preds = %bb.eg
  %i.mc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i.i.i156 = icmp eq i8 %i.mc, 0
  br i1 %.not.i.i.i.i156, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.md = add nsw i32 %i.lu, -1
  store i32 %i.md, ptr %i.lr, align 8, !tbaa !39
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.ek:                                            ; preds = %bb.ei
  %i.me = atomicrmw volatile add ptr %i.lr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.ek, %bb.ej
  %.0.i.i.i.i.i = phi i32 [ %i.lu, %bb.ej ], [ %i.me, %bb.ek ]
  %i.mf = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.mf, label %bb.el, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEED2Ev.exit, !prof !31

bb.el:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.lq) #25
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEED2Ev.exit

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEED2Ev.exit: ; preds = %bb.ef, %bb.eh, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.el
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  %i.mg = load ptr, ptr %i.fy, align 8, !tbaa !36 ; 8 uses
  %.not.i.i.i157 = icmp eq ptr %i.mg, null
  br i1 %.not.i.i.i157, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEED2Ev.exit161, label %bb.em

bb.em:                                            ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEED2Ev.exit
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 8 ; 4 uses
  %i.mi = load atomic i64, ptr %i.mh acquire, align 8 ; 2 uses
  %i.mj = icmp eq i64 %i.mi, 4294967297
  %i.mk = trunc i64 %i.mi to i32                  ; 2 uses
  br i1 %i.mj, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %bb.em
  store i32 0, ptr %i.mh, align 8, !tbaa !56
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mg, i64 12
  store i32 0, ptr %i.ml, align 4, !tbaa !57
  %i.mm = load ptr, ptr %i.mg, align 8, !tbaa !26
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 16
  %i.mo = load ptr, ptr %i.mn, align 8
  call void %i.mo(ptr noundef nonnull align 8 dereferenceable(16) %i.mg) #25, !inline_history !3
  %i.mp = load ptr, ptr %i.mg, align 8, !tbaa !26
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 24
  %i.mr = load ptr, ptr %i.mq, align 8
  call void %i.mr(ptr noundef nonnull align 8 dereferenceable(16) %i.mg) #25, !inline_history !3
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEED2Ev.exit161

bb.eo:                                            ; preds = %bb.em
  %i.ms = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i.i.i158 = icmp eq i8 %i.ms, 0
  br i1 %.not.i.i.i.i158, label %bb.eq, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.mt = add nsw i32 %i.mk, -1
  store i32 %i.mt, ptr %i.mh, align 8, !tbaa !39
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i159

bb.eq:                                            ; preds = %bb.eo
  %i.mu = atomicrmw volatile add ptr %i.mh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i159

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i159: ; preds = %bb.eq, %bb.ep
  %.0.i.i.i.i.i160 = phi i32 [ %i.mk, %bb.ep ], [ %i.mu, %bb.eq ]
  %i.mv = icmp eq i32 %.0.i.i.i.i.i160, 1
  br i1 %i.mv, label %bb.er, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEED2Ev.exit161, !prof !31

bb.er:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i159
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.mg) #25
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEED2Ev.exit161

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEED2Ev.exit161: ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEED2Ev.exit, %bb.en, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i159, %bb.er
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  %i.mw = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !36 ; 8 uses
  %.not.i.i162 = icmp eq ptr %i.mx, null
  br i1 %.not.i.i162, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit166, label %bb.es

bb.es:                                            ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEED2Ev.exit161
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 8 ; 4 uses
  %i.mz = load atomic i64, ptr %i.my acquire, align 8 ; 2 uses
  %i.na = icmp eq i64 %i.mz, 4294967297
  %i.nb = trunc i64 %i.mz to i32                  ; 2 uses
  br i1 %i.na, label %bb.et, label %bb.eu

bb.et:                                            ; preds = %bb.es
  store i32 0, ptr %i.my, align 8, !tbaa !56
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mx, i64 12
  store i32 0, ptr %i.nc, align 4, !tbaa !57
  %i.nd = load ptr, ptr %i.mx, align 8, !tbaa !26
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 16
  %i.nf = load ptr, ptr %i.ne, align 8
  call void %i.nf(ptr noundef nonnull align 8 dereferenceable(16) %i.mx) #25, !inline_history !2
  %i.ng = load ptr, ptr %i.mx, align 8, !tbaa !26
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 24
  %i.ni = load ptr, ptr %i.nh, align 8
  call void %i.ni(ptr noundef nonnull align 8 dereferenceable(16) %i.mx) #25, !inline_history !2
  br label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit166

bb.eu:                                            ; preds = %bb.es
  %i.nj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i.i163 = icmp eq i8 %i.nj, 0
  br i1 %.not.i.i.i163, label %bb.ew, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.nk = add nsw i32 %i.nb, -1
  store i32 %i.nk, ptr %i.my, align 8, !tbaa !39
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i164

bb.ew:                                            ; preds = %bb.eu
  %i.nl = atomicrmw volatile add ptr %i.my, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i164

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i164: ; preds = %bb.ew, %bb.ev
  %.0.i.i.i.i165 = phi i32 [ %i.nb, %bb.ev ], [ %i.nl, %bb.ew ]
  %i.nm = icmp eq i32 %.0.i.i.i.i165, 1
  br i1 %i.nm, label %bb.ex, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit166, !prof !31

bb.ex:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i164
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.mx) #25
  br label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit166

_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit166: ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEED2Ev.exit161, %bb.et, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i164, %bb.ex
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.nn = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !36 ; 8 uses
  %.not.i.i167 = icmp eq ptr %i.no, null
  br i1 %.not.i.i167, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit171, label %bb.ey

bb.ey:                                            ; preds = %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit166
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 8 ; 4 uses
  %i.nq = load atomic i64, ptr %i.np acquire, align 8 ; 2 uses
  %i.nr = icmp eq i64 %i.nq, 4294967297
  %i.ns = trunc i64 %i.nq to i32                  ; 2 uses
  br i1 %i.nr, label %bb.ez, label %bb.fa

bb.ez:                                            ; preds = %bb.ey
  store i32 0, ptr %i.np, align 8, !tbaa !56
  %i.nt = getelementptr inbounds nuw i8, ptr %i.no, i64 12
  store i32 0, ptr %i.nt, align 4, !tbaa !57
  %i.nu = load ptr, ptr %i.no, align 8, !tbaa !26
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 16
  %i.nw = load ptr, ptr %i.nv, align 8
  call void %i.nw(ptr noundef nonnull align 8 dereferenceable(16) %i.no) #25, !inline_history !2
  %i.nx = load ptr, ptr %i.no, align 8, !tbaa !26
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 24
  %i.nz = load ptr, ptr %i.ny, align 8
  call void %i.nz(ptr noundef nonnull align 8 dereferenceable(16) %i.no) #25, !inline_history !2
end_hunk_1
begin_hunk_2_@_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs20CoordinateSystemAxisEEED2Ev:bb.a
bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !39
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5osgeo4proj2cs20CoordinateSystemAxisELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !31

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25
  br label %_ZNSt12__shared_ptrIN5osgeo4proj2cs20CoordinateSystemAxisELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5osgeo4proj2cs20CoordinateSystemAxisELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5osgeo4proj2cs8MeridianELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !56
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !57
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !26
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !4
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !26
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !4
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !39
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !31

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: nounwind
declare void @_ZN5osgeo4proj4util11PropertyMapD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5osgeo4proj5datum22VerticalReferenceFrameELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !56
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !57
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !26
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !4
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !26
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !4
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !39
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !31

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #12 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #25
  %i.b = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %1, i64 noundef %i.a) ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !74
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !70   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 5 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !69   ; 3 uses
  %i.i = icmp ult i64 %i.h, 16
  tail call void @llvm.assume(i1 %i.i)
  %i.j = add nuw nsw i64 %i.h, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.j, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.d, ptr %0, align 8, !tbaa !70
  %i.k = load i64, ptr %i.e, align 8, !tbaa !38
  store i64 %i.k, ptr %i.c, align 8, !tbaa !38
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !69
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = phi i64 [ %i.h, %bb.b ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.n, align 8, !tbaa !69
  store ptr %i.e, ptr %i.b, align 8, !tbaa !70
  store i64 0, ptr %i.m, align 8, !tbaa !69
  store i8 0, ptr %i.e, align 8, !tbaa !38
  ret void
}

declare void @_ZN5osgeo4proj8internal8toStringB5cxx11Ei(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, i32 noundef) local_unnamed_addr #5

declare hidden void @_ZN5osgeo4proj9operation16InvalidOperationC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #5

declare hidden void @_ZN5osgeo4proj9operation10Conversion26createGeographicGeocentricERKN7dropbox6oxygen2nnISt10shared_ptrINS0_3crs3CRSEEEESC_(ptr dead_on_unwind writable sret(%"class.dropbox::oxygen::nn.144") align 8, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5osgeo4proj3crs13GeographicCRS16coordinateSystemEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #11

; Function Attrs: nounwind
declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5osgeo4proj9operation15SingleOperation14parameterValueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN5osgeo4proj9operation21ConcatenatedOperation21createComputeMetadataERKSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrINS1_19CoordinateOperationEEEESaISA_EEb(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.dropbox::oxygen::nn") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i1 noundef zeroext %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.osgeo::proj::util::BaseObjectNNPtr", align 8 ; 10 uses
  %4 = alloca %"class.std::shared_ptr.81", align 8 ; 12 uses
  %5 = alloca %"class.osgeo::proj::util::PropertyMap", align 8 ; 9 uses
  %6 = alloca %"class.std::vector", align 16      ; 30 uses
  %7 = alloca %"class.std::vector", align 8       ; 10 uses
  %8 = alloca %"class.dropbox::oxygen::nn", align 8 ; 7 uses
  %9 = alloca %"class.std::shared_ptr.52", align 8 ; 7 uses
  %10 = alloca %"class.std::shared_ptr.41", align 8 ; 7 uses
  %11 = alloca %"class.std::shared_ptr.41", align 8 ; 7 uses
  %12 = alloca %"class.std::shared_ptr.52", align 8 ; 7 uses
  %13 = alloca %"class.std::vector", align 16     ; 14 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = alloca i8, align 1                       ; 6 uses
  %15 = alloca %"class.std::shared_ptr.227", align 8 ; 8 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"class.std::allocator.38", align 1 ; 4 uses
  %18 = alloca %"class.dropbox::oxygen::nn.230", align 8 ; 7 uses
  %19 = alloca %"class.std::vector.92", align 8   ; 13 uses
  %20 = alloca %"class.dropbox::oxygen::nn.231", align 16 ; 10 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %22 = alloca %"class.dropbox::oxygen::nn.34", align 16 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @_ZN5osgeo4proj4util11PropertyMapC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !29   ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !30     ; 5 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = icmp eq i64 %i.g, 16
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !36   ; 2 uses
  %i.k = load <2 x ptr>, ptr %i.d, align 8, !tbaa !37
  store <2 x ptr> %i.k, ptr %0, align 8, !tbaa !37
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i.i.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load i32, ptr %i.l, align 4, !tbaa !39
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.l, align 4, !tbaa !39
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit

bb.e:                                             ; preds = %bb.c
  %i.p = atomicrmw volatile add ptr %i.l, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %.not362 = icmp eq ptr %i.d, %i.c
  br i1 %.not362, label %._crit_edge367.thread, label %.lr.ph366

.lr.ph366:                                        ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  br label %bb.g

._crit_edge367:                                   ; preds = %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE12emplace_backIJRKS9_EEERS9_DpOT_.exit124
  %.pre413 = load ptr, ptr %i.s, align 8, !tbaa !29 ; 3 uses
  %.pre414 = load ptr, ptr %6, align 16, !tbaa !30 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  %i.v = ptrtoint ptr %.pre413 to i64
  %i.w = ptrtoint ptr %.pre414 to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = icmp ugt i64 %i.x, 32
  br i1 %i.y, label %.preheader, label %_ZNSt6vectorImSaImEED2Ev.exit

._crit_edge367.thread:                            ; preds = %bb.f
  %23 = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %_ZNSt6vectorImSaImEED2Ev.exit

.preheader:                                       ; preds = %._crit_edge367
  %.not380 = icmp eq ptr %.pre413, %.pre414
  br i1 %.not380, label %.critedge110.preheader, label %.lr.ph372

bb.g:                                             ; preds = %.lr.ph366, %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE12emplace_backIJRKS9_EEERS9_DpOT_.exit124
  %.074364 = phi i1 [ false, %.lr.ph366 ], [ %i.ab, %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE12emplace_backIJRKS9_EEERS9_DpOT_.exit124 ]
  %.sroa.0281.0363 = phi ptr [ %i.d, %.lr.ph366 ], [ %i.eh, %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE12emplace_backIJRKS9_EEERS9_DpOT_.exit124 ] ; 5 uses
  %i.z = load ptr, ptr %.sroa.0281.0363, align 8, !tbaa !51
  %i.aa = invoke noundef zeroext i1 @_ZNK5osgeo4proj9operation19CoordinateOperation25hasBallparkTransformationEv(ptr noundef nonnull align 8 dereferenceable(72) %i.z)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ab = or i1 %.074364, %i.aa                   ; 4 uses
  %i.ac = load ptr, ptr %.sroa.0281.0363, align 8, !tbaa !51 ; 4 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.aj, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = load ptr, ptr %i.ac, align 8, !tbaa !26
  %i.af = icmp eq ptr %i.ae, getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN5osgeo4proj9operation21ConcatenatedOperationE, i64 16)
  br i1 %i.af, label %bb.l, label %bb.aj

bb.j:                                             ; preds = %bb.g
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit174

bb.k:                                             ; preds = %bb.ao
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit174

bb.l:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 72
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !24 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !29 ; 3 uses
  %i.am = load ptr, ptr %i.aj, align 8, !tbaa !30 ; 3 uses
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao                    ; 3 uses
  %.not.i.i.i.i112 = icmp eq ptr %i.al, %i.am
  br i1 %.not.i.i.i.i112, label %.noexc114, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = icmp ugt i64 %i.ap, 9223372036854775792
  br i1 %i.aq, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEE8allocateEmPKv.exit.i.i.i.i, !prof !31

.noexc.i.i:                                       ; preds = %bb.m
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #28
          to label %.noexc unwind label %.loopexit.split-lp307

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.m
  %i.ar = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #27
          to label %_ZNSt15__new_allocatorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEE8allocateEmPKv.exit.i.i.i.i..noexc114_crit_edge unwind label %.loopexit306

_ZNSt15__new_allocatorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEE8allocateEmPKv.exit.i.i.i.i..noexc114_crit_edge: ; preds = %_ZNSt15__new_allocatorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEE8allocateEmPKv.exit.i.i.i.i
  %.pre = load ptr, ptr %i.aj, align 8, !tbaa !32
  %.pre408 = load ptr, ptr %i.ak, align 8, !tbaa !32
  br label %.noexc114

.noexc114:                                        ; preds = %_ZNSt15__new_allocatorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEE8allocateEmPKv.exit.i.i.i.i..noexc114_crit_edge, %bb.l
  %i.as = phi ptr [ %i.al, %bb.l ], [ %.pre408, %_ZNSt15__new_allocatorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEE8allocateEmPKv.exit.i.i.i.i..noexc114_crit_edge ] ; 2 uses
  %i.at = phi ptr [ %i.am, %bb.l ], [ %.pre, %_ZNSt15__new_allocatorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEE8allocateEmPKv.exit.i.i.i.i..noexc114_crit_edge ] ; 2 uses
  %i.au = phi ptr [ null, %bb.l ], [ %i.ar, %_ZNSt15__new_allocatorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEE8allocateEmPKv.exit.i.i.i.i..noexc114_crit_edge ] ; 5 uses
  store ptr %i.au, ptr %7, align 8, !tbaa !30
  store ptr %i.au, ptr %i.q, align 8, !tbaa !29
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.ap
  store ptr %i.av, ptr %i.r, align 8, !tbaa !33
  %.not7.i.i.i.i.i = icmp eq ptr %i.at, %i.as
  br i1 %.not7.i.i.i.i.i, label %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc114, %_ZSt10_ConstructIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.bf, %_ZSt10_ConstructIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.au, %.noexc114 ] ; 3 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.be, %_ZSt10_ConstructIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.at, %.noexc114 ] ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !36 ; 2 uses
  %i.ay = load <2 x ptr>, ptr %.sroa.04.08.i.i.i.i.i, align 8, !tbaa !37
  store <2 x ptr> %i.ay, ptr %.09.i.i.i.i.i, align 8, !tbaa !37
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 3 uses
  %i.ba = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ba, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bb = load i32, ptr %i.az, align 4, !tbaa !39
  %i.bc = add nsw i32 %i.bb, 1
  store i32 %i.bc, ptr %i.az, align 4, !tbaa !39
  br label %_ZSt10_ConstructIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.bd = atomicrmw volatile add ptr %i.az, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %bb.p, %bb.o, %.lr.ph.i.i.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 16 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 16 ; 3 uses
  %.not.i.i.i.i.i113 = icmp eq ptr %i.be, %i.as
  br i1 %.not.i.i.i.i.i113, label %.loopexit305, label %.lr.ph.i.i.i.i.i, !llvm.loop !0

.loopexit305:                                     ; preds = %_ZSt10_ConstructIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.pre409 = load ptr, ptr %7, align 8, !tbaa !32 ; 3 uses
  store ptr %i.bf, ptr %i.q, align 8, !tbaa !29
  %.not298360 = icmp eq ptr %.pre409, %i.bf
  br i1 %.not298360, label %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exit.i, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.loopexit305
  %.pre410 = load ptr, ptr %i.s, align 8, !tbaa !29
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE12emplace_backIJRKS9_EEERS9_DpOT_.exit
  %.pre411 = load ptr, ptr %7, align 8, !tbaa !30 ; 3 uses
  %.pre412 = load ptr, ptr %i.q, align 8, !tbaa !29 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %.pre411, %.pre412
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge, %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bx, %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i ], [ %.pre411, %._crit_edge ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !36 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 4 uses
  %i.bj = load atomic i64, ptr %i.bi acquire, align 8 ; 2 uses
  %i.bk = icmp eq i64 %i.bj, 4294967297
  %i.bl = trunc i64 %i.bj to i32                  ; 2 uses
  br i1 %i.bk, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.bi, align 8, !tbaa !56
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 12
  store i32 0, ptr %i.bm, align 4, !tbaa !57
  %i.bn = load ptr, ptr %i.bh, align 8, !tbaa !26
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8
  call void %i.bp(ptr noundef nonnull align 8 dereferenceable(16) %i.bh) #25, !inline_history !7
  %i.bq = load ptr, ptr %i.bh, align 8, !tbaa !26
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.bs = load ptr, ptr %i.br, align 8
  call void %i.bs(ptr noundef nonnull align 8 dereferenceable(16) %i.bh) #25, !inline_history !7
  br label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.bt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.bt, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bu = add nsw i32 %i.bl, -1
  store i32 %i.bu, ptr %i.bi, align 8, !tbaa !39
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.bv = atomicrmw volatile add ptr %i.bi, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bl, %bb.t ], [ %i.bv, %bb.u ]
  %i.bw = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.bw, label %bb.v, label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i, !prof !31

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bh) #25
  br label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i: ; preds = %bb.v, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.r, %.lr.ph.i.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bx, %.pre412
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !8

_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %7, align 8, !tbaa !30
  br label %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exit.i

_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exit.i: ; preds = %.noexc114, %.loopexit305, %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i, %._crit_edge
  %i.by = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i ], [ %.pre411, %._crit_edge ], [ %.pre409, %.loopexit305 ], [ %i.au, %.noexc114 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.by, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exit.i
  %i.bz = load ptr, ptr %i.r, align 8, !tbaa !33
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = ptrtoint ptr %i.by to i64
  %i.cc = sub i64 %i.ca, %i.cb
  call void @_ZdlPvm(ptr noundef nonnull %i.by, i64 noundef %i.cc) #26
  br label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EED2Ev.exit

_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exit.i, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE12emplace_backIJRKS9_EEERS9_DpOT_.exit124

.loopexit306:                                     ; preds = %_ZNSt15__new_allocatorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEE8allocateEmPKv.exit.i.i.i.i
  %lpad.loopexit308 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

.loopexit.split-lp307:                            ; preds = %.noexc.i.i
  %lpad.loopexit.split-lp309 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE12emplace_backIJRKS9_EEERS9_DpOT_.exit
  %i.cd = phi ptr [ %i.dt, %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE12emplace_backIJRKS9_EEERS9_DpOT_.exit ], [ %.pre410, %.lr.ph.preheader ] ; 7 uses
  %.sroa.0277.0361 = phi ptr [ %i.du, %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE12emplace_backIJRKS9_EEERS9_DpOT_.exit ], [ %.pre409, %.lr.ph.preheader ] ; 6 uses
  %i.ce = load ptr, ptr %i.t, align 16, !tbaa !33
  %.not.i = icmp eq ptr %i.cd, %i.ce
  br i1 %.not.i, label %bb.ab, label %bb.x

bb.x:                                             ; preds = %.lr.ph
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.0277.0361, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !36 ; 2 uses
  %i.ch = load <2 x ptr>, ptr %.sroa.0277.0361, align 8, !tbaa !37
  store <2 x ptr> %i.ch, ptr %i.cd, align 8, !tbaa !37
  %.not.i.i.i.i.i115 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i.i.i115, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 8 ; 3 uses
  %i.cj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i.i.i.i.i = icmp eq i8 %i.cj, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ck = load i32, ptr %i.ci, align 4, !tbaa !39
  %i.cl = add nsw i32 %i.ck, 1
  store i32 %i.cl, ptr %i.ci, align 4, !tbaa !39
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.i

bb.aa:                                            ; preds = %bb.y
  %i.cm = atomicrmw volatile add ptr %i.ci, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i = load ptr, ptr %i.s, align 8, !tbaa !29
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.i

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.i: ; preds = %bb.aa, %bb.z, %bb.x
  %i.cn = phi ptr [ %i.cd, %bb.x ], [ %i.cd, %bb.z ], [ %.pre.i, %bb.aa ]
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16 ; 2 uses
  store ptr %i.co, ptr %i.s, align 8, !tbaa !29
  br label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE12emplace_backIJRKS9_EEERS9_DpOT_.exit

bb.ab:                                            ; preds = %.lr.ph
  %i.cp = load ptr, ptr %6, align 16, !tbaa !30   ; 5 uses
  %i.cq = ptrtoint ptr %i.cd to i64
  %i.cr = ptrtoint ptr %i.cp to i64               ; 2 uses
  %i.cs = sub i64 %i.cq, %i.cr                    ; 3 uses
  %i.ct = icmp eq i64 %i.cs, 9223372036854775792
  br i1 %i.ct, label %bb.ac, label %_ZNKSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE12_M_check_lenEmPKc.exit.i

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.30) #28
          to label %.noexc243 unwind label %.loopexit.split-lp301

.noexc243:                                        ; preds = %bb.ac
  unreachable

_ZNKSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.ab
  %i.cu = ashr exact i64 %i.cs, 4                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.cu, i64 1)
  %i.cv = add nsw i64 %.sroa.speculated.i.i, %i.cu ; 2 uses
  %i.cw = icmp ult i64 %i.cv, %i.cu
  %i.cx = call i64 @llvm.umin.i64(i64 %i.cv, i64 576460752303423487)
  %i.cy = select i1 %i.cw, i64 576460752303423487, i64 %i.cx ; 3 uses
  %.not.i.i238 = icmp ne i64 %i.cy, 0
  call void @llvm.assume(i1 %.not.i.i238)
  %i.cz = shl nuw nsw i64 %i.cy, 4
  %i.da = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cz) #27
          to label %.noexc244 unwind label %.loopexit300 ; 5 uses

.noexc244:                                        ; preds = %_ZNKSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE12_M_check_lenEmPKc.exit.i
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.cs
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.0277.0361, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !36 ; 2 uses
  %i.de = load <2 x ptr>, ptr %.sroa.0277.0361, align 8, !tbaa !37
  store <2 x ptr> %i.de, ptr %i.db, align 8, !tbaa !37
  %.not.i.i.i.i.i239 = icmp eq ptr %i.dd, null
  br i1 %.not.i.i.i.i.i239, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.i241, label %bb.ad

bb.ad:                                            ; preds = %.noexc244
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 8 ; 3 uses
  %i.dg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i.i.i.i.i240 = icmp eq i8 %i.dg, 0
  br i1 %.not.i.i.i.i.i.i240, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dh = load i32, ptr %i.df, align 4, !tbaa !39
  %i.di = add nsw i32 %i.dh, 1
  store i32 %i.di, ptr %i.df, align 4, !tbaa !39
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.i241

bb.af:                                            ; preds = %bb.ad
  %i.dj = atomicrmw volatile add ptr %i.df, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.i241

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.i241: ; preds = %bb.af, %bb.ae, %.noexc244
  %.not10.i.i.i.i = icmp eq ptr %i.cp, %i.cd
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.i241, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.dn, %.lr.ph.i.i.i.i ], [ %i.da, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.i241 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.dm, %.lr.ph.i.i.i.i ], [ %i.cp, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.i241 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !196)
  call void @llvm.experimental.noalias.scope.decl(metadata !197)
  %i.dk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.dl = load <2 x ptr>, ptr %.0911.i.i.i.i, align 8, !tbaa !37, !alias.scope !197, !noalias !196
  store ptr null, ptr %i.dk, align 8, !tbaa !36, !alias.scope !197, !noalias !196
  store <2 x ptr> %i.dl, ptr %.012.i.i.i.i, align 8, !tbaa !37, !alias.scope !196, !noalias !197
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !51, !alias.scope !197, !noalias !196
  %i.dm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i242 = icmp eq ptr %i.dm, %i.cd
  br i1 %.not.i.i.i.i242, label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !9

_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.i241
  %.0.lcssa.i.i.i.i = phi ptr [ %i.da, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.i241 ], [ %i.dn, %.lr.ph.i.i.i.i ]
  %i.do = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 16 ; 2 uses
  %.not.i23.i = icmp eq ptr %i.cp, null
  br i1 %.not.i23.i, label %.noexc116, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i
  %i.dp = load ptr, ptr %i.t, align 16, !tbaa !33
  %i.dq = ptrtoint ptr %i.dp to i64
  %i.dr = sub i64 %i.dq, %i.cr
  call void @_ZdlPvm(ptr noundef nonnull %i.cp, i64 noundef %i.dr) #26
  br label %.noexc116

.noexc116:                                        ; preds = %bb.ag, %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i
  store ptr %i.da, ptr %6, align 16, !tbaa !30
  store ptr %i.do, ptr %i.s, align 8, !tbaa !29
  %i.ds = getelementptr inbounds nuw [16 x i8], ptr %i.da, i64 %i.cy
  store ptr %i.ds, ptr %i.t, align 16, !tbaa !33
  br label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE12emplace_backIJRKS9_EEERS9_DpOT_.exit

_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE12emplace_backIJRKS9_EEERS9_DpOT_.exit: ; preds = %.noexc116, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.i
  %i.dt = phi ptr [ %i.do, %.noexc116 ], [ %i.co, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.i ]
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.0277.0361, i64 16
  %.not298 = icmp eq ptr %.sroa.0277.0361, %.09.i.i.i.i.i
  br i1 %.not298, label %._crit_edge, label %.lr.ph

.loopexit300:                                     ; preds = %_ZNKSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit302 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

.loopexit.split-lp301:                            ; preds = %bb.ac
  %lpad.loopexit.split-lp303 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ah:                                            ; preds = %.loopexit.split-lp301, %.loopexit300
  %lpad.phi304 = phi { ptr, i32 } [ %lpad.loopexit302, %.loopexit300 ], [ %lpad.loopexit.split-lp303, %.loopexit.split-lp301 ]
  call void @_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #25
  br label %bb.ai

bb.ai:                                            ; preds = %.loopexit306, %.loopexit.split-lp307, %bb.ah
  %.pn100 = phi { ptr, i32 } [ %lpad.phi304, %bb.ah ], [ %lpad.loopexit308, %.loopexit306 ], [ %lpad.loopexit.split-lp309, %.loopexit.split-lp307 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %_ZNSt6vectorImSaImEED2Ev.exit174

bb.aj:                                            ; preds = %bb.h, %bb.i
  %i.dv = load ptr, ptr %i.s, align 8, !tbaa !29  ; 6 uses
  %i.dw = load ptr, ptr %i.t, align 16, !tbaa !33
  %.not.i117 = icmp eq ptr %i.dv, %i.dw
  br i1 %.not.i117, label %bb.ao, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  store ptr %i.ac, ptr %i.dv, align 8, !tbaa !51
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.0281.0363, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !36 ; 3 uses
  store ptr %i.dz, ptr %i.dx, align 8, !tbaa !36
  %.not.i.i.i.i.i118 = icmp eq ptr %i.dz, null
  br i1 %.not.i.i.i.i.i118, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.i120, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8 ; 3 uses
  %i.eb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i.i.i.i.i119 = icmp eq i8 %i.eb, 0
  br i1 %.not.i.i.i.i.i.i119, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ec = load i32, ptr %i.ea, align 4, !tbaa !39
  %i.ed = add nsw i32 %i.ec, 1
  store i32 %i.ed, ptr %i.ea, align 4, !tbaa !39
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.i120

bb.an:                                            ; preds = %bb.al
  %i.ee = atomicrmw volatile add ptr %i.ea, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i121 = load ptr, ptr %i.s, align 8, !tbaa !29
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.i120

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.i120: ; preds = %bb.an, %bb.am, %bb.ak
  %i.ef = phi ptr [ %i.dv, %bb.ak ], [ %i.dv, %bb.am ], [ %.pre.i121, %bb.an ]
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  store ptr %i.eg, ptr %i.s, align 8, !tbaa !29
  br label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE12emplace_backIJRKS9_EEERS9_DpOT_.exit124

bb.ao:                                            ; preds = %bb.aj
  invoke void @_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE17_M_realloc_insertIJRKS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr %i.dv, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0281.0363)
          to label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE12emplace_backIJRKS9_EEERS9_DpOT_.exit124 unwind label %bb.k

_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE12emplace_backIJRKS9_EEERS9_DpOT_.exit124: ; preds = %bb.ao, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.i120, %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EED2Ev.exit
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.0281.0363, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.eh, %i.c
  br i1 %.not, label %._crit_edge367, label %bb.g

.critedge110.preheader:                           ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit, %.preheader
  %.sroa.0253.0.lcssa = phi ptr [ null, %.preheader ], [ %.sroa.0253.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 9 uses
  %.sroa.20.0.lcssa = phi ptr [ null, %.preheader ], [ %.sroa.20.3, %_ZNSt6vectorImSaImEE9push_backERKm.exit ]
  %.sroa.30.0.lcssa = phi ptr [ null, %.preheader ], [ %.sroa.30.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 3 uses
  %i.ei = ptrtoint ptr %.sroa.0253.0.lcssa to i64 ; 5 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ek = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.el = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.em = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.en = getelementptr inbounds nuw i8, ptr %8, i64 8
  br label %.critedge110

.lr.ph372:                                        ; preds = %.preheader, %_ZNSt6vectorImSaImEE9push_backERKm.exit
  %i.eo = phi ptr [ %i.fe, %_ZNSt6vectorImSaImEE9push_backERKm.exit ], [ %.pre414, %.preheader ]
  %i.ep = phi ptr [ %i.ff, %_ZNSt6vectorImSaImEE9push_backERKm.exit ], [ %.pre413, %.preheader ]
  %storemerge371 = phi i64 [ %i.fg, %_ZNSt6vectorImSaImEE9push_backERKm.exit ], [ 0, %.preheader ] ; 3 uses
  %.sroa.30.0370 = phi ptr [ %.sroa.30.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ], [ null, %.preheader ] ; 4 uses
  %.sroa.20.0369 = phi ptr [ %.sroa.20.3, %_ZNSt6vectorImSaImEE9push_backERKm.exit ], [ null, %.preheader ] ; 3 uses
  %.sroa.0253.0368 = phi ptr [ %.sroa.0253.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ], [ null, %.preheader ] ; 7 uses
  %.not.i125 = icmp eq ptr %.sroa.20.0369, %.sroa.30.0370
  br i1 %.not.i125, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph372
  store i64 %storemerge371, ptr %.sroa.20.0369, align 8, !tbaa !75
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.aq:                                            ; preds = %.lr.ph372
  %i.eq = ptrtoint ptr %.sroa.30.0370 to i64
  %i.er = ptrtoint ptr %.sroa.0253.0368 to i64    ; 2 uses
  %i.es = sub i64 %i.eq, %i.er                    ; 6 uses
  %i.et = icmp eq i64 %i.es, 9223372036854775800
  br i1 %i.et, label %bb.ar, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.30) #28
          to label %.noexc127 unwind label %.loopexit.split-lp

.noexc127:                                        ; preds = %bb.ar
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.aq
  %i.eu = ashr exact i64 %i.es, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.eu, i64 1)
  %i.ev = add nsw i64 %.sroa.speculated.i.i.i, %i.eu ; 2 uses
  %i.ew = icmp ult i64 %i.ev, %i.eu
  %i.ex = call i64 @llvm.umin.i64(i64 %i.ev, i64 1152921504606846975)
  %i.ey = select i1 %i.ew, i64 1152921504606846975, i64 %i.ex ; 3 uses
  %.not.i.i.i126 = icmp ne i64 %i.ey, 0
  call void @llvm.assume(i1 %.not.i.i.i126)
  %i.ez = shl nuw nsw i64 %i.ey, 3
  %i.fa = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ez) #27
          to label %.noexc128 unwind label %.loopexit ; 4 uses

.noexc128:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %i.fb = getelementptr inbounds i8, ptr %i.fa, i64 %i.es ; 2 uses
  store i64 %storemerge371, ptr %i.fb, align 8, !tbaa !75
  %i.fc = icmp sgt i64 %i.es, 0
  br i1 %i.fc, label %bb.as, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

bb.as:                                            ; preds = %.noexc128
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fa, ptr align 8 %.sroa.0253.0368, i64 %i.es, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i: ; preds = %bb.as, %.noexc128
  %.not.i17.i.i = icmp eq ptr %.sroa.0253.0368, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.at

bb.at:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0253.0368, i64 noundef %i.es) #26
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.at, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.ey
  %.pre415 = load ptr, ptr %i.u, align 8, !tbaa !29
  %.pre416 = load ptr, ptr %6, align 16, !tbaa !30
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

_ZNSt6vectorImSaImEE9push_backERKm.exit:          ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, %bb.ap
  %i.fe = phi ptr [ %.pre416, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %i.eo, %bb.ap ] ; 2 uses
  %i.ff = phi ptr [ %.pre415, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %i.ep, %bb.ap ] ; 2 uses
  %.sroa.0253.1 = phi ptr [ %i.fa, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.sroa.0253.0368, %bb.ap ] ; 2 uses
  %.pn297 = phi ptr [ %i.fb, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.sroa.20.0369, %bb.ap ]
  %.sroa.30.1 = phi ptr [ %i.fd, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.sroa.30.0370, %bb.ap ] ; 2 uses
  %.sroa.20.3 = getelementptr inbounds nuw i8, ptr %.pn297, i64 8 ; 2 uses
  %i.fg = add nuw i64 %storemerge371, 1           ; 2 uses
  %i.fh = ptrtoint ptr %i.ff to i64
  %i.fi = ptrtoint ptr %i.fe to i64
  %i.fj = sub i64 %i.fh, %i.fi
  %i.fk = ashr exact i64 %i.fj, 4
  %i.fl = icmp ult i64 %i.fg, %i.fk
  br i1 %i.fl, label %.lr.ph372, label %.critedge110.preheader, !llvm.loop !190

.loopexit:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

.loopexit.split-lp:                               ; preds = %bb.ar
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.au:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i173 = icmp eq ptr %.sroa.0253.0368, null
  br i1 %.not.i.i.i173, label %_ZNSt6vectorImSaImEED2Ev.exit174, label %.thread289

.critedge110:                                     ; preds = %.critedge110.preheader, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i.i
  %.sroa.20.1 = phi ptr [ %spec.select295, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i.i ], [ %.sroa.20.0.lcssa, %.critedge110.preheader ] ; 6 uses
  %i.fm = ptrtoint ptr %.sroa.20.1 to i64         ; 2 uses
  %i.fn = sub i64 %i.fm, %i.ei
  %i.fo = ashr exact i64 %i.fn, 3                 ; 4 uses
  %i.fp = call i64 @llvm.usub.sat.i64(i64 %i.fo, i64 1)
  %exitcond.not601 = icmp ult i64 %i.fo, 2
  br i1 %exitcond.not601, label %select.unfold, label %.lr.ph603

bb.av:                                            ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEED2Ev.exit
  %i.fq = add nuw i64 %i.fr, 1
  %exitcond.not = icmp eq i64 %i.fr, %i.fp
  br i1 %exitcond.not, label %select.unfold, label %.lr.ph603, !llvm.loop !191

.lr.ph603:                                        ; preds = %.critedge110, %bb.av
  %i.fr = phi i64 [ %i.fq, %bb.av ], [ 1, %.critedge110 ] ; 4 uses
  %.052602 = phi i64 [ %i.fr, %bb.av ], [ 0, %.critedge110 ]
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0253.0.lcssa, i64 %.052602 ; 6 uses
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !75
  %i.fu = load ptr, ptr %6, align 16, !tbaa !30   ; 2 uses
  %i.fv = getelementptr inbounds nuw [16 x i8], ptr %i.fu, i64 %i.ft
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !51 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0253.0.lcssa, i64 %i.fr ; 2 uses
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !75
  %i.fz = getelementptr inbounds nuw [16 x i8], ptr %i.fu, i64 %i.fy
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !51 ; 2 uses
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !26
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 32
  %i.gd = load ptr, ptr %i.gc, align 8
  invoke void %i.gd(ptr dead_on_unwind nonnull writable sret(%"class.dropbox::oxygen::nn") align 8 %8, ptr noundef nonnull align 8 dereferenceable(72) %i.ga)
          to label %bb.aw unwind label %bb.ck

bb.aw:                                            ; preds = %.lr.ph603
  %i.ge = load ptr, ptr %8, align 8, !tbaa !51    ; 2 uses
  %i.gf = icmp eq ptr %i.ge, null
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  %i.gh = select i1 %i.gf, ptr null, ptr %i.gg
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  %i.gi = load ptr, ptr %i.fw, align 8, !tbaa !26
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  %i.gk = load ptr, ptr %i.gj, align 8
  %i.gl = invoke noundef zeroext i1 %i.gk(ptr noundef nonnull align 8 dereferenceable(48) %i.fw, ptr noundef %i.gh, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %bb.ax unwind label %bb.cl

bb.ax:                                            ; preds = %bb.aw
  br i1 %i.gl, label %bb.ay, label %.critedge108

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %i.gm = load i64, ptr %i.fs, align 8, !tbaa !75
  %i.gn = load ptr, ptr %6, align 16, !tbaa !30
  %i.go = getelementptr inbounds nuw [16 x i8], ptr %i.gn, i64 %i.gm
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !51
  invoke void @_ZNK5osgeo4proj9operation19CoordinateOperation9sourceCRSEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.41") align 8 %10, ptr noundef nonnull align 8 dereferenceable(72) %i.gp)
          to label %bb.az unwind label %bb.cm

bb.az:                                            ; preds = %bb.ay
  %i.gq = load ptr, ptr %10, align 8, !tbaa !54   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.gr = load i64, ptr %i.fx, align 8, !tbaa !75
  %i.gs = load ptr, ptr %6, align 16, !tbaa !30
  %i.gt = getelementptr inbounds nuw [16 x i8], ptr %i.gs, i64 %i.gr
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !51
  invoke void @_ZNK5osgeo4proj9operation19CoordinateOperation9targetCRSEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.41") align 8 %11, ptr noundef nonnull align 8 dereferenceable(72) %i.gu)
          to label %bb.ba unwind label %bb.cn

bb.ba:                                            ; preds = %bb.az
  %i.gv = load ptr, ptr %11, align 8, !tbaa !54   ; 2 uses
  %i.gw = icmp eq ptr %i.gv, null
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gv, i64 16
  %spec.select = select i1 %i.gw, ptr null, ptr %i.gx
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  %i.gy = load ptr, ptr %i.gq, align 8, !tbaa !26
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  %i.ha = load ptr, ptr %i.gz, align 8
  %i.hb = invoke noundef zeroext i1 %i.ha(ptr noundef nonnull align 8 dereferenceable(48) %i.gq, ptr noundef %spec.select, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(16) %12)
          to label %.critedge unwind label %bb.co

.critedge:                                        ; preds = %bb.ba
  %i.hc = load ptr, ptr %i.ej, align 8, !tbaa !36 ; 8 uses
  %.not.i.i = icmp eq ptr %i.hc, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5osgeo4proj2io15DatabaseContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.bb

bb.bb:                                            ; preds = %.critedge
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 8 ; 4 uses
  %i.he = load atomic i64, ptr %i.hd acquire, align 8 ; 2 uses
  %i.hf = icmp eq i64 %i.he, 4294967297
  %i.hg = trunc i64 %i.he to i32                  ; 2 uses
  br i1 %i.hf, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  store i32 0, ptr %i.hd, align 8, !tbaa !56
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hc, i64 12
  store i32 0, ptr %i.hh, align 4, !tbaa !57
  %i.hi = load ptr, ptr %i.hc, align 8, !tbaa !26
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 16
  %i.hk = load ptr, ptr %i.hj, align 8
  call void %i.hk(ptr noundef nonnull align 8 dereferenceable(16) %i.hc) #25, !inline_history !1
  %i.hl = load ptr, ptr %i.hc, align 8, !tbaa !26
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 24
  %i.hn = load ptr, ptr %i.hm, align 8
  call void %i.hn(ptr noundef nonnull align 8 dereferenceable(16) %i.hc) #25, !inline_history !1
  br label %_ZNSt12__shared_ptrIN5osgeo4proj2io15DatabaseContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bd:                                            ; preds = %bb.bb
  %i.ho = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i.i129 = icmp eq i8 %i.ho, 0
  br i1 %.not.i.i.i129, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.hp = add nsw i32 %i.hg, -1
  store i32 %i.hp, ptr %i.hd, align 8, !tbaa !39
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.bf:                                            ; preds = %bb.bd
  %i.hq = atomicrmw volatile add ptr %i.hd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.bf, %bb.be
  %.0.i.i.i.i = phi i32 [ %i.hg, %bb.be ], [ %i.hq, %bb.bf ]
  %i.hr = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.hr, label %bb.bg, label %_ZNSt12__shared_ptrIN5osgeo4proj2io15DatabaseContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !31

bb.bg:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hc) #25
  br label %_ZNSt12__shared_ptrIN5osgeo4proj2io15DatabaseContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5osgeo4proj2io15DatabaseContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.critedge, %bb.bc, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  %i.hs = load ptr, ptr %i.ek, align 8, !tbaa !36 ; 8 uses
  %.not.i.i130 = icmp eq ptr %i.hs, null
  br i1 %.not.i.i130, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.bh

bb.bh:                                            ; preds = %_ZNSt12__shared_ptrIN5osgeo4proj2io15DatabaseContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 8 ; 4 uses
  %i.hu = load atomic i64, ptr %i.ht acquire, align 8 ; 2 uses
  %i.hv = icmp eq i64 %i.hu, 4294967297
  %i.hw = trunc i64 %i.hu to i32                  ; 2 uses
  br i1 %i.hv, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  store i32 0, ptr %i.ht, align 8, !tbaa !56
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hs, i64 12
  store i32 0, ptr %i.hx, align 4, !tbaa !57
  %i.hy = load ptr, ptr %i.hs, align 8, !tbaa !26
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 16
  %i.ia = load ptr, ptr %i.hz, align 8
  call void %i.ia(ptr noundef nonnull align 8 dereferenceable(16) %i.hs) #25, !inline_history !2
  %i.ib = load ptr, ptr %i.hs, align 8, !tbaa !26
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 24
  %i.id = load ptr, ptr %i.ic, align 8
  call void %i.id(ptr noundef nonnull align 8 dereferenceable(16) %i.hs) #25, !inline_history !2
  br label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bj:                                            ; preds = %bb.bh
  %i.ie = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i.i131 = icmp eq i8 %i.ie, 0
  br i1 %.not.i.i.i131, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.if = add nsw i32 %i.hw, -1
  store i32 %i.if, ptr %i.ht, align 8, !tbaa !39
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i132

bb.bl:                                            ; preds = %bb.bj
  %i.ig = atomicrmw volatile add ptr %i.ht, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i132

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i132: ; preds = %bb.bl, %bb.bk
  %.0.i.i.i.i133 = phi i32 [ %i.hw, %bb.bk ], [ %i.ig, %bb.bl ]
  %i.ih = icmp eq i32 %.0.i.i.i.i133, 1
  br i1 %i.ih, label %bb.bm, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !31

bb.bm:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i132
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hs) #25
  br label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5osgeo4proj2io15DatabaseContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.bi, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i132, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  %i.ii = load ptr, ptr %i.el, align 8, !tbaa !36 ; 8 uses
  %.not.i.i134 = icmp eq ptr %i.ii, null
  br i1 %.not.i.i134, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit138, label %bb.bn

bb.bn:                                            ; preds = %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 8 ; 4 uses
  %i.ik = load atomic i64, ptr %i.ij acquire, align 8 ; 2 uses
  %i.il = icmp eq i64 %i.ik, 4294967297
  %i.im = trunc i64 %i.ik to i32                  ; 2 uses
  br i1 %i.il, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  store i32 0, ptr %i.ij, align 8, !tbaa !56
  %i.in = getelementptr inbounds nuw i8, ptr %i.ii, i64 12
  store i32 0, ptr %i.in, align 4, !tbaa !57
  %i.io = load ptr, ptr %i.ii, align 8, !tbaa !26
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 16
  %i.iq = load ptr, ptr %i.ip, align 8
  call void %i.iq(ptr noundef nonnull align 8 dereferenceable(16) %i.ii) #25, !inline_history !2
  %i.ir = load ptr, ptr %i.ii, align 8, !tbaa !26
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 24
  %i.it = load ptr, ptr %i.is, align 8
  call void %i.it(ptr noundef nonnull align 8 dereferenceable(16) %i.ii) #25, !inline_history !2
  br label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit138

bb.bp:                                            ; preds = %bb.bn
  %i.iu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i.i135 = icmp eq i8 %i.iu, 0
  br i1 %.not.i.i.i135, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.iv = add nsw i32 %i.im, -1
  store i32 %i.iv, ptr %i.ij, align 8, !tbaa !39
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i136

bb.br:                                            ; preds = %bb.bp
  %i.iw = atomicrmw volatile add ptr %i.ij, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i136

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i136: ; preds = %bb.br, %bb.bq
  %.0.i.i.i.i137 = phi i32 [ %i.im, %bb.bq ], [ %i.iw, %bb.br ]
  %i.ix = icmp eq i32 %.0.i.i.i.i137, 1
end_hunk_2
begin_hunk_3_@_ZN5osgeo4proj9operation21ConcatenatedOperation21createComputeMetadataERKSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrINS1_19CoordinateOperationEEEESaISA_EEb:bb.a
  %i.jb = load atomic i64, ptr %i.ja acquire, align 8 ; 2 uses
  %i.jc = icmp eq i64 %i.jb, 4294967297
  %i.jd = trunc i64 %i.jb to i32                  ; 2 uses
  br i1 %i.jc, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  store i32 0, ptr %i.ja, align 8, !tbaa !56
  %i.je = getelementptr inbounds nuw i8, ptr %i.iz, i64 12
  store i32 0, ptr %i.je, align 4, !tbaa !57
  %i.jf = load ptr, ptr %i.iz, align 8, !tbaa !26
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 16
  %i.jh = load ptr, ptr %i.jg, align 8
  call void %i.jh(ptr noundef nonnull align 8 dereferenceable(16) %i.iz) #25, !inline_history !1
  %i.ji = load ptr, ptr %i.iz, align 8, !tbaa !26
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 24
  %i.jk = load ptr, ptr %i.jj, align 8
  call void %i.jk(ptr noundef nonnull align 8 dereferenceable(16) %i.iz) #25, !inline_history !1
  br label %_ZNSt12__shared_ptrIN5osgeo4proj2io15DatabaseContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit143

bb.bv:                                            ; preds = %bb.bt
  %i.jl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i.i140 = icmp eq i8 %i.jl, 0
  br i1 %.not.i.i.i140, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.jm = add nsw i32 %i.jd, -1
  store i32 %i.jm, ptr %i.ja, align 8, !tbaa !39
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i141

bb.bx:                                            ; preds = %bb.bv
  %i.jn = atomicrmw volatile add ptr %i.ja, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i141

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i141: ; preds = %bb.bx, %bb.bw
  %.0.i.i.i.i142 = phi i32 [ %i.jd, %bb.bw ], [ %i.jn, %bb.bx ]
  %i.jo = icmp eq i32 %.0.i.i.i.i142, 1
  br i1 %i.jo, label %bb.by, label %_ZNSt12__shared_ptrIN5osgeo4proj2io15DatabaseContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit143, !prof !31

bb.by:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i141
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.iz) #25
  br label %_ZNSt12__shared_ptrIN5osgeo4proj2io15DatabaseContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit143

_ZNSt12__shared_ptrIN5osgeo4proj2io15DatabaseContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit143: ; preds = %.critedge108, %bb.bu, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i141, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  %i.jp = load ptr, ptr %i.en, align 8, !tbaa !36 ; 8 uses
  %.not.i.i.i144 = icmp eq ptr %i.jp, null
  br i1 %.not.i.i.i144, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEED2Ev.exit, label %bb.bz

bb.bz:                                            ; preds = %_ZNSt12__shared_ptrIN5osgeo4proj2io15DatabaseContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit143
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 8 ; 4 uses
  %i.jr = load atomic i64, ptr %i.jq acquire, align 8 ; 2 uses
  %i.js = icmp eq i64 %i.jr, 4294967297
  %i.jt = trunc i64 %i.jr to i32                  ; 2 uses
  br i1 %i.js, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  store i32 0, ptr %i.jq, align 8, !tbaa !56
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jp, i64 12
  store i32 0, ptr %i.ju, align 4, !tbaa !57
  %i.jv = load ptr, ptr %i.jp, align 8, !tbaa !26
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 16
  %i.jx = load ptr, ptr %i.jw, align 8
  call void %i.jx(ptr noundef nonnull align 8 dereferenceable(16) %i.jp) #25, !inline_history !6
  %i.jy = load ptr, ptr %i.jp, align 8, !tbaa !26
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 24
  %i.ka = load ptr, ptr %i.jz, align 8
  call void %i.ka(ptr noundef nonnull align 8 dereferenceable(16) %i.jp) #25, !inline_history !6
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEED2Ev.exit

bb.cb:                                            ; preds = %bb.bz
  %i.kb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i.i.i145 = icmp eq i8 %i.kb, 0
  br i1 %.not.i.i.i.i145, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.kc = add nsw i32 %i.jt, -1
  store i32 %i.kc, ptr %i.jq, align 8, !tbaa !39
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.cd:                                            ; preds = %bb.cb
  %i.kd = atomicrmw volatile add ptr %i.jq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.cd, %bb.cc
  %.0.i.i.i.i.i = phi i32 [ %i.jt, %bb.cc ], [ %i.kd, %bb.cd ]
  %i.ke = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ke, label %bb.ce, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEED2Ev.exit, !prof !31

bb.ce:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jp) #25
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEED2Ev.exit

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5osgeo4proj2io15DatabaseContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit143, %bb.ca, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br i1 %i.iy, label %bb.cf, label %bb.av, !llvm.loop !191

bb.cf:                                            ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEED2Ev.exit
  %i.kf = getelementptr inbounds nuw i8, ptr %i.fs, i64 16 ; 4 uses
  %.not11.i.i = icmp eq ptr %i.kf, %.sroa.20.1
  br i1 %.not11.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.kg = ptrtoint ptr %i.kf to i64
  %i.kh = sub i64 %i.fm, %i.kg                    ; 5 uses
  %i.ki = icmp sgt i64 %i.kh, 8
  br i1 %i.ki, label %bb.ch, label %bb.ci, !prof !198

bb.ch:                                            ; preds = %bb.cg
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fs, ptr nonnull align 8 %i.kf, i64 %i.kh, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i.i

bb.ci:                                            ; preds = %bb.cg
  %i.kj = icmp eq i64 %i.kh, 8
  br i1 %i.kj, label %bb.cj, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i.i

bb.cj:                                            ; preds = %bb.ci
  %i.kk = load i64, ptr %i.kf, align 8, !tbaa !75
  store i64 %i.kk, ptr %i.fs, align 8, !tbaa !75
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i.i: ; preds = %bb.cf, %bb.cj, %bb.ci, %bb.ch
  %.pre-phi431 = phi i64 [ %i.kh, %bb.ch ], [ 8, %bb.cj ], [ %i.kh, %bb.ci ], [ 0, %bb.cf ]
  %i.kl = getelementptr inbounds i8, ptr %i.fs, i64 %.pre-phi431 ; 2 uses
  %.not.i.i.i147 = icmp eq ptr %.sroa.20.1, %i.kl
  %spec.select295 = select i1 %.not.i.i.i147, ptr %.sroa.20.1, ptr %i.kl ; 3 uses
  %i.km = ptrtoint ptr %spec.select295 to i64
  %i.kn = sub i64 %i.km, %i.ei                    ; 2 uses
  %i.ko = icmp ult i64 %i.kn, 17
  br i1 %i.ko, label %select.unfold.loopexit382, label %.critedge110

bb.ck:                                            ; preds = %.lr.ph603
  %i.kp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cs

bb.cl:                                            ; preds = %bb.aw
  %i.kq = landingpad { ptr, i32 }
          cleanup
  br label %bb.cr

bb.cm:                                            ; preds = %bb.ay
  %i.kr = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

bb.cn:                                            ; preds = %bb.az
  %i.ks = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.co:                                            ; preds = %bb.ba
  %i.kt = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5osgeo4proj2io15DatabaseContextELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  call void @_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #25
  br label %bb.cp

bb.cp:                                            ; preds = %bb.cn, %bb.co
  %.pn = phi { ptr, i32 } [ %i.kt, %bb.co ], [ %i.ks, %bb.cn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #25
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cm, %bb.cp
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.cp ], [ %i.kr, %bb.cm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cl
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.cq ], [ %i.kq, %bb.cl ]
  call void @_ZNSt12__shared_ptrIN5osgeo4proj2io15DatabaseContextELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #25
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.ck
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.cr ], [ %i.kp, %bb.ck ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %.thread289

select.unfold.loopexit382:                        ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i.i
  %.pre427 = lshr exact i64 %i.kn, 3
  br label %select.unfold

select.unfold:                                    ; preds = %.critedge110, %bb.av, %select.unfold.loopexit382
  %.pre-phi428 = phi i64 [ %.pre427, %select.unfold.loopexit382 ], [ %i.fo, %bb.av ], [ %i.fo, %.critedge110 ] ; 2 uses
  %.sroa.20.2.ph = phi ptr [ %spec.select295, %select.unfold.loopexit382 ], [ %.sroa.20.1, %bb.av ], [ %.sroa.20.1, %.critedge110 ]
  %i.ku = load ptr, ptr %i.u, align 8, !tbaa !29  ; 2 uses
  %i.kv = load ptr, ptr %6, align 16, !tbaa !30   ; 2 uses
  %i.kw = ptrtoint ptr %i.ku to i64
  %i.kx = ptrtoint ptr %i.kv to i64
  %i.ky = sub i64 %i.kw, %i.kx
  %i.kz = ashr exact i64 %i.ky, 4
  %i.la = icmp ult i64 %.pre-phi428, %i.kz
  br i1 %i.la, label %bb.ct, label %bb.dp

bb.ct:                                            ; preds = %select.unfold
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  %.not381 = icmp eq ptr %.sroa.20.2.ph, %.sroa.0253.0.lcssa
  br i1 %.not381, label %._crit_edge379, label %.lr.ph378

.lr.ph378:                                        ; preds = %bb.ct
  %i.lb = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %umax = call i64 @llvm.umax.i64(i64 %.pre-phi428, i64 1)
  br label %bb.di

._crit_edge379.loopexit:                          ; preds = %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE12emplace_backIJRS9_EEESD_DpOT_.exit
  %.pre417 = load ptr, ptr %6, align 16, !tbaa !30
  %.pre418 = load ptr, ptr %i.u, align 8, !tbaa !29
  %i.ld = load <2 x ptr>, ptr %13, align 16, !tbaa !32
  %.pre423 = load ptr, ptr %i.lc, align 16, !tbaa !33
  br label %._crit_edge379

._crit_edge379:                                   ; preds = %._crit_edge379.loopexit, %bb.ct
  %i.le = phi ptr [ %.pre423, %._crit_edge379.loopexit ], [ null, %bb.ct ]
  %i.lf = phi ptr [ %.pre418, %._crit_edge379.loopexit ], [ %i.ku, %bb.ct ] ; 2 uses
  %i.lg = phi ptr [ %.pre417, %._crit_edge379.loopexit ], [ %i.kv, %bb.ct ] ; 5 uses
  %i.lh = phi <2 x ptr> [ %i.ld, %._crit_edge379.loopexit ], [ splat (ptr null), %bb.ct ]
  %i.li = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.lj = load ptr, ptr %i.li, align 16, !tbaa !33
  %i.lk = getelementptr inbounds nuw i8, ptr %13, i64 8
  store <2 x ptr> %i.lh, ptr %6, align 16, !tbaa !32
  %i.ll = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr %i.le, ptr %i.li, align 16, !tbaa !33
  %.not4.i.i.i.i.i = icmp eq ptr %i.lg, %i.lf
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i148

.lr.ph.i.i.i.i.i148:                              ; preds = %._crit_edge379, %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.md, %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i.i.i ], [ %i.lg, %._crit_edge379 ] ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !36 ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ln, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i.i.i, label %bb.cu

bb.cu:                                            ; preds = %.lr.ph.i.i.i.i.i148
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 8 ; 4 uses
  %i.lp = load atomic i64, ptr %i.lo acquire, align 8 ; 2 uses
  %i.lq = icmp eq i64 %i.lp, 4294967297
  %i.lr = trunc i64 %i.lp to i32                  ; 2 uses
  br i1 %i.lq, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  store i32 0, ptr %i.lo, align 8, !tbaa !56
  %i.ls = getelementptr inbounds nuw i8, ptr %i.ln, i64 12
  store i32 0, ptr %i.ls, align 4, !tbaa !57
  %i.lt = load ptr, ptr %i.ln, align 8, !tbaa !26
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 16
  %i.lv = load ptr, ptr %i.lu, align 8
  call void %i.lv(ptr noundef nonnull align 8 dereferenceable(16) %i.ln) #25, !inline_history !10
  %i.lw = load ptr, ptr %i.ln, align 8, !tbaa !26
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 24
  %i.ly = load ptr, ptr %i.lx, align 8
  call void %i.ly(ptr noundef nonnull align 8 dereferenceable(16) %i.ln) #25, !inline_history !10
  br label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i.i.i

bb.cw:                                            ; preds = %bb.cu
  %i.lz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i.i.i.i.i.i.i.i.i149 = icmp eq i8 %i.lz, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i149, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.ma = add nsw i32 %i.lr, -1
  store i32 %i.ma, ptr %i.lo, align 8, !tbaa !39
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

bb.cy:                                            ; preds = %bb.cw
  %i.mb = atomicrmw volatile add ptr %i.lo, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.cy, %bb.cx
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.lr, %bb.cx ], [ %i.mb, %bb.cy ]
  %i.mc = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.mc, label %bb.cz, label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i.i.i, !prof !31

bb.cz:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ln) #25
  br label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i.i.i: ; preds = %bb.cz, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i, %bb.cv, %.lr.ph.i.i.i.i.i148
  %i.md = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i150 = icmp eq ptr %i.md, %i.lf
  br i1 %.not.i.i.i.i.i150, label %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i148, !llvm.loop !8

_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i.i.i, %._crit_edge379
  %.not.i.i1.i.i.i = icmp eq ptr %i.lg, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EEaSEOSB_.exit, label %bb.da

bb.da:                                            ; preds = %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exit.i.i.i
  %i.me = ptrtoint ptr %i.lj to i64
  %i.mf = ptrtoint ptr %i.lg to i64
  %i.mg = sub i64 %i.me, %i.mf
  call void @_ZdlPvm(ptr noundef nonnull %i.lg, i64 noundef %i.mg) #26
  br label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EEaSEOSB_.exit

_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EEaSEOSB_.exit: ; preds = %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exit.i.i.i, %bb.da
  %i.mh = load ptr, ptr %13, align 16, !tbaa !30  ; 3 uses
  %i.mi = load ptr, ptr %i.lk, align 8, !tbaa !29 ; 2 uses
  %.not4.i.i.i151 = icmp eq ptr %i.mh, %i.mi
  br i1 %.not4.i.i.i151, label %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exit.i162, label %.lr.ph.i.i.i152

.lr.ph.i.i.i152:                                  ; preds = %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EEaSEOSB_.exit, %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i158
  %.05.i.i.i153 = phi ptr [ %i.na, %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i158 ], [ %i.mh, %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EEaSEOSB_.exit ] ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %.05.i.i.i153, i64 8
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !36 ; 8 uses
  %.not.i.i.i.i.i.i.i154 = icmp eq ptr %i.mk, null
  br i1 %.not.i.i.i.i.i.i.i154, label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i158, label %bb.db

bb.db:                                            ; preds = %.lr.ph.i.i.i152
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 8 ; 4 uses
  %i.mm = load atomic i64, ptr %i.ml acquire, align 8 ; 2 uses
  %i.mn = icmp eq i64 %i.mm, 4294967297
  %i.mo = trunc i64 %i.mm to i32                  ; 2 uses
  br i1 %i.mn, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  store i32 0, ptr %i.ml, align 8, !tbaa !56
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mk, i64 12
  store i32 0, ptr %i.mp, align 4, !tbaa !57
  %i.mq = load ptr, ptr %i.mk, align 8, !tbaa !26
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 16
  %i.ms = load ptr, ptr %i.mr, align 8
  call void %i.ms(ptr noundef nonnull align 8 dereferenceable(16) %i.mk) #25, !inline_history !7
  %i.mt = load ptr, ptr %i.mk, align 8, !tbaa !26
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 24
  %i.mv = load ptr, ptr %i.mu, align 8
  call void %i.mv(ptr noundef nonnull align 8 dereferenceable(16) %i.mk) #25, !inline_history !7
  br label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i158

bb.dd:                                            ; preds = %bb.db
  %i.mw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i.i.i.i.i.i.i155 = icmp eq i8 %i.mw, 0
  br i1 %.not.i.i.i.i.i.i.i.i155, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.mx = add nsw i32 %i.mo, -1
  store i32 %i.mx, ptr %i.ml, align 8, !tbaa !39
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i156

bb.df:                                            ; preds = %bb.dd
  %i.my = atomicrmw volatile add ptr %i.ml, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i156

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i156: ; preds = %bb.df, %bb.de
  %.0.i.i.i.i.i.i.i.i.i157 = phi i32 [ %i.mo, %bb.de ], [ %i.my, %bb.df ]
  %i.mz = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i157, 1
  br i1 %i.mz, label %bb.dg, label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i158, !prof !31

bb.dg:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i156
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.mk) #25
  br label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i158

_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i158: ; preds = %bb.dg, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i156, %bb.dc, %.lr.ph.i.i.i152
  %i.na = getelementptr inbounds nuw i8, ptr %.05.i.i.i153, i64 16 ; 2 uses
  %.not.i.i.i159 = icmp eq ptr %i.na, %i.mi
  br i1 %.not.i.i.i159, label %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i160, label %.lr.ph.i.i.i152, !llvm.loop !8

_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i160: ; preds = %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i158
  %.pr.i161 = load ptr, ptr %13, align 16, !tbaa !30
  br label %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exit.i162

_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exit.i162: ; preds = %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i160, %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EEaSEOSB_.exit
  %i.nb = phi ptr [ %.pr.i161, %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i160 ], [ %i.mh, %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EEaSEOSB_.exit ] ; 3 uses
  %.not.i.i1.i163 = icmp eq ptr %i.nb, null
  br i1 %.not.i.i1.i163, label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EED2Ev.exit164, label %bb.dh

bb.dh:                                            ; preds = %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exit.i162
  %i.nc = load ptr, ptr %i.ll, align 16, !tbaa !33
  %i.nd = ptrtoint ptr %i.nc to i64
  %i.ne = ptrtoint ptr %i.nb to i64
  %i.nf = sub i64 %i.nd, %i.ne
  call void @_ZdlPvm(ptr noundef nonnull %i.nb, i64 noundef %i.nf) #26
  br label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EED2Ev.exit164

_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EED2Ev.exit164: ; preds = %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exit.i162, %bb.dh
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  br label %bb.dp

bb.di:                                            ; preds = %.lr.ph378, %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE12emplace_backIJRS9_EEESD_DpOT_.exit
  %.0376 = phi i64 [ 0, %.lr.ph378 ], [ %i.nw, %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE12emplace_backIJRS9_EEESD_DpOT_.exit ] ; 2 uses
  %i.ng = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0253.0.lcssa, i64 %.0376
  %i.nh = load i64, ptr %i.ng, align 8, !tbaa !75
  %i.ni = load ptr, ptr %6, align 16, !tbaa !30
  %i.nj = getelementptr inbounds nuw [16 x i8], ptr %i.ni, i64 %i.nh ; 3 uses
  %i.nk = load ptr, ptr %i.lb, align 8, !tbaa !29 ; 5 uses
  %i.nl = load ptr, ptr %i.lc, align 16, !tbaa !33
  %.not.i165 = icmp eq ptr %i.nk, %i.nl
  br i1 %.not.i165, label %bb.dn, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nj, i64 8
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !36 ; 2 uses
  %i.no = load <2 x ptr>, ptr %i.nj, align 8, !tbaa !37
  store <2 x ptr> %i.no, ptr %i.nk, align 8, !tbaa !37
  %.not.i.i.i.i.i166 = icmp eq ptr %i.nn, null
  br i1 %.not.i.i.i.i.i166, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.i168, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.np = getelementptr inbounds nuw i8, ptr %i.nn, i64 8 ; 3 uses
  %i.nq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i.i.i.i.i167 = icmp eq i8 %i.nq, 0
  br i1 %.not.i.i.i.i.i.i167, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.nr = load i32, ptr %i.np, align 4, !tbaa !39
  %i.ns = add nsw i32 %i.nr, 1
  store i32 %i.ns, ptr %i.np, align 4, !tbaa !39
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.i168

bb.dm:                                            ; preds = %bb.dk
  %i.nt = atomicrmw volatile add ptr %i.np, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i169 = load ptr, ptr %i.lb, align 8, !tbaa !29
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.i168

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.i168: ; preds = %bb.dm, %bb.dl, %bb.dj
  %i.nu = phi ptr [ %i.nk, %bb.dj ], [ %i.nk, %bb.dl ], [ %.pre.i169, %bb.dm ]
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 16
  store ptr %i.nv, ptr %i.lb, align 8, !tbaa !29
  br label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE12emplace_backIJRS9_EEESD_DpOT_.exit

bb.dn:                                            ; preds = %bb.di
  invoke void @_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE17_M_realloc_insertIJRS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr %i.nk, ptr noundef nonnull align 8 dereferenceable(16) %i.nj)
          to label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE12emplace_backIJRS9_EEESD_DpOT_.exit unwind label %bb.do

_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE12emplace_backIJRS9_EEESD_DpOT_.exit: ; preds = %bb.dn, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.i168
  %i.nw = add nuw i64 %.0376, 1                   ; 2 uses
  %exitcond407.not = icmp eq i64 %i.nw, %umax
  br i1 %exitcond407.not, label %._crit_edge379.loopexit, label %bb.di, !llvm.loop !192

bb.do:                                            ; preds = %bb.dn
  %i.nx = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %13) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  br label %.thread289

bb.dp:                                            ; preds = %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EED2Ev.exit164, %select.unfold
  %.not.i.i.i172 = icmp eq ptr %.sroa.0253.0.lcssa, null
  br i1 %.not.i.i.i172, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.ny = ptrtoint ptr %.sroa.30.0.lcssa to i64
  %i.nz = sub i64 %i.ny, %i.ei
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0253.0.lcssa, i64 noundef %i.nz) #26
  br label %_ZNSt6vectorImSaImEED2Ev.exit

.thread289:                                       ; preds = %bb.do, %bb.cs, %bb.au
  %.pre-phi429 = phi i64 [ %i.ei, %bb.do ], [ %i.ei, %bb.cs ], [ %i.er, %bb.au ]
  %.sroa.0253.0348 = phi ptr [ %.sroa.0253.0.lcssa, %bb.do ], [ %.sroa.0253.0.lcssa, %bb.cs ], [ %.sroa.0253.0368, %bb.au ]
  %.sroa.30.0338 = phi ptr [ %.sroa.30.0.lcssa, %bb.do ], [ %.sroa.30.0.lcssa, %bb.cs ], [ %.sroa.30.0370, %bb.au ]
  %.pn98292 = phi { ptr, i32 } [ %i.nx, %bb.do ], [ %.pn.pn.pn.pn, %bb.cs ], [ %lpad.phi, %bb.au ]
  %i.oa = ptrtoint ptr %.sroa.30.0338 to i64
  %i.ob = sub i64 %i.oa, %.pre-phi429
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0253.0348, i64 noundef %i.ob) #26
  br label %_ZNSt6vectorImSaImEED2Ev.exit174

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %._crit_edge367.thread, %bb.dq, %bb.dp, %._crit_edge367
  %24 = phi ptr [ %23, %._crit_edge367.thread ], [ %i.u, %bb.dq ], [ %i.u, %bb.dp ], [ %i.u, %._crit_edge367 ] ; 2 uses
  %.074.lcssa520 = phi i1 [ false, %._crit_edge367.thread ], [ %i.ab, %bb.dq ], [ %i.ab, %bb.dp ], [ %i.ab, %._crit_edge367 ]
  %i.oc = load ptr, ptr %24, align 8, !tbaa !29
  %i.od = load ptr, ptr %6, align 16, !tbaa !30   ; 3 uses
  %i.oe = ptrtoint ptr %i.oc to i64
  %i.of = ptrtoint ptr %i.od to i64
  %i.og = sub i64 %i.oe, %i.of
  %i.oh = icmp eq i64 %i.og, 16
  br i1 %i.oh, label %bb.dr, label %bb.dv

bb.dr:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  %i.oi = getelementptr inbounds nuw i8, ptr %i.od, i64 8
  %i.oj = load ptr, ptr %i.oi, align 8, !tbaa !36 ; 2 uses
  %i.ok = load <2 x ptr>, ptr %i.od, align 8, !tbaa !37
  store <2 x ptr> %i.ok, ptr %0, align 8, !tbaa !37
  %.not.i.i.i.i175 = icmp eq ptr %i.oj, null
  br i1 %.not.i.i.i.i175, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit177, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oj, i64 8 ; 3 uses
  %i.om = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i.i.i.i176 = icmp eq i8 %i.om, 0
  br i1 %.not.i.i.i.i.i176, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.on = load i32, ptr %i.ol, align 4, !tbaa !39
  %i.oo = add nsw i32 %i.on, 1
  store i32 %i.oo, ptr %i.ol, align 4, !tbaa !39
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit177

bb.du:                                            ; preds = %bb.ds
  %i.op = atomicrmw volatile add ptr %i.ol, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit177

bb.dv:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  invoke void @_ZN5osgeo4proj9operation23computeConcatenatedNameB5cxx11ERKSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrINS1_19CoordinateOperationEEEESaIS9_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.dw unwind label %bb.ec

bb.dw:                                            ; preds = %bb.dv
  %i.oq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5osgeo4proj4util11PropertyMap3setERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(32) @_ZN5osgeo4proj6common16IdentifiedObject8NAME_KEYB5cxx11E, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %bb.dx unwind label %bb.ed     ; 0 uses

bb.dx:                                            ; preds = %bb.dw
  %i.or = load ptr, ptr %14, align 8, !tbaa !70   ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.ot = icmp eq ptr %i.or, %i.os
  br i1 %i.ot, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.dx
  %i.ou = load i64, ptr %i.os, align 8, !tbaa !38
  %i.ov = add i64 %i.ou, 1
  call void @_ZdlPvm(ptr noundef %i.or, i64 noundef %i.ov) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.dx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i8 0, ptr %i.a, align 1, !tbaa !199
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  invoke void @_ZN5osgeo4proj9operation9getExtentERKSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrINS1_19CoordinateOperationEEEESaIS9_EEbRb(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.227") align 8 %15, ptr noundef nonnull align 8 dereferenceable(24) %6, i1 noundef zeroext false, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %bb.dy unwind label %bb.ee

bb.dy:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ow = load i8, ptr %i.a, align 1, !range !47
  %i.ox = trunc nuw i8 %i.ow to i1
  %or.cond = select i1 %2, i1 %i.ox, i1 false
  br i1 %or.cond, label %bb.dz, label %bb.ej

bb.dz:                                            ; preds = %bb.dy
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @.str.13, ptr noundef nonnull align 1 dereferenceable(1) %17)
          to label %bb.ea unwind label %bb.ef

bb.ea:                                            ; preds = %bb.dz
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  %i.oy = call ptr @__cxa_allocate_exception(i64 40) #25 ; 3 uses
  invoke void @_ZN5osgeo4proj9operation33InvalidOperationEmptyIntersectionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.oy, ptr noundef nonnull align 8 dereferenceable(32) %16)
          to label %bb.eb unwind label %bb.eg

bb.eb:                                            ; preds = %bb.ea
  invoke void @__cxa_throw(ptr nonnull %i.oy, ptr nonnull @_ZTIN5osgeo4proj9operation33InvalidOperationEmptyIntersectionE, ptr nonnull @_ZN5osgeo4proj9operation33InvalidOperationEmptyIntersectionD1Ev) #28
          to label %bb.gq unwind label %bb.eh

bb.ec:                                            ; preds = %bb.dv
  %i.oz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180

bb.ed:                                            ; preds = %bb.dw
  %i.pa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.pb = load ptr, ptr %14, align 8, !tbaa !70   ; 2 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.pd = icmp eq ptr %i.pb, %i.pc
  br i1 %i.pd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i178

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i178: ; preds = %bb.ed
  %i.pe = load i64, ptr %i.pc, align 8, !tbaa !38
  %i.pf = add i64 %i.pe, 1
  call void @_ZdlPvm(ptr noundef %i.pb, i64 noundef %i.pf) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180: ; preds = %bb.ed, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i178, %bb.ec
  %.pn85 = phi { ptr, i32 } [ %i.oz, %bb.ec ], [ %i.pa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i178 ], [ %i.pa, %bb.ed ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br label %_ZNSt6vectorImSaImEED2Ev.exit174

bb.ee:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.pg = landingpad { ptr, i32 }
          cleanup
  br label %bb.gi

bb.ef:                                            ; preds = %bb.dz
  %i.ph = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183

bb.eg:                                            ; preds = %bb.ea
  %i.pi = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.oy) #25
  br label %bb.ei

bb.eh:                                            ; preds = %bb.eb
  %i.pj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %bb.eg
  %.pn93 = phi { ptr, i32 } [ %i.pj, %bb.eh ], [ %i.pi, %bb.eg ] ; 2 uses
  %i.pk = load ptr, ptr %16, align 8, !tbaa !70   ; 2 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.pm = icmp eq ptr %i.pk, %i.pl
  br i1 %i.pm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181: ; preds = %bb.ei
  %i.pn = load i64, ptr %i.pl, align 8, !tbaa !38
  %i.po = add i64 %i.pn, 1
  call void @_ZdlPvm(ptr noundef %i.pk, i64 noundef %i.po) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183: ; preds = %bb.ei, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181, %bb.ef
  %.pn93.pn = phi { ptr, i32 } [ %i.ph, %bb.ef ], [ %.pn93, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181 ], [ %.pn93, %bb.ei ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  br label %bb.gh

bb.ej:                                            ; preds = %bb.dy
  %i.pp = load ptr, ptr %15, align 8, !tbaa !202  ; 5 uses
  %.not296 = icmp eq ptr %i.pp, null
  br i1 %.not296, label %bb.ew, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #25
  store ptr %i.pp, ptr %18, align 8, !tbaa !202
  %i.pq = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 3 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ps = load ptr, ptr %i.pr, align 8, !tbaa !36 ; 5 uses
  store ptr %i.ps, ptr %i.pq, align 8, !tbaa !36
  %.not.i.i.i.i184 = icmp eq ptr %i.ps, null
  br i1 %.not.i.i.i.i184, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata6ExtentEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit.thread, label %bb.el

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata6ExtentEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit.thread: ; preds = %bb.ek
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.pt = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr null, ptr %i.pt, align 8, !tbaa !36
  br label %_ZNSt10shared_ptrIN5osgeo4proj4util10BaseObjectEEC2INS1_8metadata6ExtentEEERKS_IT_EPS3_.exit.i

bb.el:                                            ; preds = %bb.ek
  %i.pu = getelementptr inbounds nuw i8, ptr %i.ps, i64 8 ; 3 uses
  %i.pv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i.i.i.i185 = icmp eq i8 %i.pv, 0
  %i.pw = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  br i1 %.not.i.i.i.i.i185, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata6ExtentEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata6ExtentEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit.thread529

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata6ExtentEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit.thread529: ; preds = %bb.el
  %i.px = load i32, ptr %i.pu, align 4, !tbaa !39
  %i.py = add nsw i32 %i.px, 1
  store i32 %i.py, ptr %i.pu, align 4, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  store ptr %i.pp, ptr %4, align 8, !tbaa !63
  store ptr %i.ps, ptr %i.pw, align 8, !tbaa !36
  br label %bb.em

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata6ExtentEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit: ; preds = %bb.el
  %i.pz = atomicrmw volatile add ptr %i.pu, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre = load ptr, ptr %i.pq, align 8, !tbaa !36 ; 3 uses
  %.pre425 = load ptr, ptr %18, align 8, !tbaa !202 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  store ptr %.pre425, ptr %4, align 8, !tbaa !63
  store ptr %.pr.pre, ptr %i.pw, align 8, !tbaa !36
  %.not.i.i.i.i186 = icmp eq ptr %.pr.pre, null
  br i1 %.not.i.i.i.i186, label %_ZNSt10shared_ptrIN5osgeo4proj4util10BaseObjectEEC2INS1_8metadata6ExtentEEERKS_IT_EPS3_.exit.i, label %bb.em

bb.em:                                            ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata6ExtentEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit.thread529, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata6ExtentEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit
  %.pr532 = phi ptr [ %i.ps, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata6ExtentEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit.thread529 ], [ %.pr.pre, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata6ExtentEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit ] ; 2 uses
  %i.qa = phi ptr [ %i.pp, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata6ExtentEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit.thread529 ], [ %.pre425, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata6ExtentEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit ]
  %i.qb = getelementptr inbounds nuw i8, ptr %.pr532, i64 8 ; 3 uses
end_hunk_3
begin_hunk_4_@_ZN5osgeo4proj9operation21ConcatenatedOperation21createComputeMetadataERKSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrINS1_19CoordinateOperationEEEESaISA_EEb:bb.a

bb.er:                                            ; preds = %bb.eq
  store i32 0, ptr %i.qn, align 8, !tbaa !56
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qm, i64 12
  store i32 0, ptr %i.qr, align 4, !tbaa !57
  %i.qs = load ptr, ptr %i.qm, align 8, !tbaa !26
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 16
  %i.qu = load ptr, ptr %i.qt, align 8
  call void %i.qu(ptr noundef nonnull align 8 dereferenceable(16) %i.qm) #25, !inline_history !193
  %i.qv = load ptr, ptr %i.qm, align 8, !tbaa !26
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qv, i64 24
  %i.qx = load ptr, ptr %i.qw, align 8
  call void %i.qx(ptr noundef nonnull align 8 dereferenceable(16) %i.qm) #25, !inline_history !193
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata6ExtentEEED2Ev.exit

bb.es:                                            ; preds = %bb.eq
  %i.qy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i.i.i190 = icmp eq i8 %i.qy, 0
  br i1 %.not.i.i.i.i190, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.qz = add nsw i32 %i.qq, -1
  store i32 %i.qz, ptr %i.qn, align 8, !tbaa !39
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i191

bb.eu:                                            ; preds = %bb.es
  %i.ra = atomicrmw volatile add ptr %i.qn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i191

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i191: ; preds = %bb.eu, %bb.et
  %.0.i.i.i.i.i192 = phi i32 [ %i.qq, %bb.et ], [ %i.ra, %bb.eu ]
  %i.rb = icmp eq i32 %.0.i.i.i.i.i192, 1
  br i1 %i.rb, label %bb.ev, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata6ExtentEEED2Ev.exit, !prof !31

bb.ev:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i191
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.qm) #25
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata6ExtentEEED2Ev.exit

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata6ExtentEEED2Ev.exit: ; preds = %bb.ep, %bb.er, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i191, %bb.ev
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  br label %bb.ew

bb.ew:                                            ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata6ExtentEEED2Ev.exit, %bb.ej
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  %i.rc = invoke noundef double @_ZN5osgeo4proj9operation11getAccuracyERKSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrINS1_19CoordinateOperationEEEESaIS9_EE(ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.ex unwind label %bb.fj     ; 2 uses

bb.ex:                                            ; preds = %bb.ew
  %i.rd = fcmp ult double %i.rc, 0.000000e+00
  br i1 %i.rd, label %bb.fo, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #25
  invoke void @_ZN5osgeo4proj8internal8toStringB5cxx11Edi(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %21, double noundef %i.rc, i32 noundef 15)
          to label %bb.ez unwind label %bb.fk

bb.ez:                                            ; preds = %bb.ey
  invoke void @_ZN5osgeo4proj8metadata18PositionalAccuracy6createERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.dropbox::oxygen::nn.231") align 8 %20, ptr noundef nonnull align 8 dereferenceable(32) %21)
          to label %bb.fa unwind label %bb.fl

bb.fa:                                            ; preds = %bb.ez
  %i.re = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  %i.rf = load ptr, ptr %i.re, align 8, !tbaa !78 ; 5 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.rh = load ptr, ptr %i.rg, align 8, !tbaa !79
  %.not.i193 = icmp eq ptr %i.rf, %i.rh
  br i1 %.not.i193, label %bb.fc, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rf, i64 8
  store ptr null, ptr %i.ri, align 8, !tbaa !36
  %i.rj = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.rk = load <2 x ptr>, ptr %20, align 16, !tbaa !37
  store ptr null, ptr %i.rj, align 8, !tbaa !36
  store <2 x ptr> %i.rk, ptr %i.rf, align 8, !tbaa !37
  store ptr null, ptr %20, align 16, !tbaa !82
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rf, i64 16
  store ptr %i.rl, ptr %i.re, align 8, !tbaa !78
  br label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata18PositionalAccuracyEEEESaIS9_EE12emplace_backIJS9_EEERS9_DpOT_.exit

bb.fc:                                            ; preds = %bb.fa
  invoke void @_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata18PositionalAccuracyEEEESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %19, ptr %i.rf, ptr noundef nonnull align 8 dereferenceable(16) %20)
          to label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata18PositionalAccuracyEEEESaIS9_EE12emplace_backIJS9_EEERS9_DpOT_.exit unwind label %bb.fm

_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata18PositionalAccuracyEEEESaIS9_EE12emplace_backIJS9_EEERS9_DpOT_.exit: ; preds = %bb.fc, %bb.fb
  %i.rm = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.rn = load ptr, ptr %i.rm, align 8, !tbaa !36 ; 8 uses
  %.not.i.i.i196 = icmp eq ptr %i.rn, null
  br i1 %.not.i.i.i196, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata18PositionalAccuracyEEED2Ev.exit, label %bb.fd

bb.fd:                                            ; preds = %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata18PositionalAccuracyEEEESaIS9_EE12emplace_backIJS9_EEERS9_DpOT_.exit
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 8 ; 4 uses
  %i.rp = load atomic i64, ptr %i.ro acquire, align 8 ; 2 uses
  %i.rq = icmp eq i64 %i.rp, 4294967297
  %i.rr = trunc i64 %i.rp to i32                  ; 2 uses
  br i1 %i.rq, label %bb.fe, label %bb.ff

bb.fe:                                            ; preds = %bb.fd
  store i32 0, ptr %i.ro, align 8, !tbaa !56
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rn, i64 12
  store i32 0, ptr %i.rs, align 4, !tbaa !57
  %i.rt = load ptr, ptr %i.rn, align 8, !tbaa !26
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rt, i64 16
  %i.rv = load ptr, ptr %i.ru, align 8
  call void %i.rv(ptr noundef nonnull align 8 dereferenceable(16) %i.rn) #25, !inline_history !194
  %i.rw = load ptr, ptr %i.rn, align 8, !tbaa !26
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rw, i64 24
  %i.ry = load ptr, ptr %i.rx, align 8
  call void %i.ry(ptr noundef nonnull align 8 dereferenceable(16) %i.rn) #25, !inline_history !194
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata18PositionalAccuracyEEED2Ev.exit

bb.ff:                                            ; preds = %bb.fd
  %i.rz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i.i.i197 = icmp eq i8 %i.rz, 0
  br i1 %.not.i.i.i.i197, label %bb.fh, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.sa = add nsw i32 %i.rr, -1
  store i32 %i.sa, ptr %i.ro, align 8, !tbaa !39
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i198

bb.fh:                                            ; preds = %bb.ff
  %i.sb = atomicrmw volatile add ptr %i.ro, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i198

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i198: ; preds = %bb.fh, %bb.fg
  %.0.i.i.i.i.i199 = phi i32 [ %i.rr, %bb.fg ], [ %i.sb, %bb.fh ]
  %i.sc = icmp eq i32 %.0.i.i.i.i.i199, 1
  br i1 %i.sc, label %bb.fi, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata18PositionalAccuracyEEED2Ev.exit, !prof !31

bb.fi:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i198
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.rn) #25
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata18PositionalAccuracyEEED2Ev.exit

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata18PositionalAccuracyEEED2Ev.exit: ; preds = %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata18PositionalAccuracyEEEESaIS9_EE12emplace_backIJS9_EEERS9_DpOT_.exit, %bb.fe, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i198, %bb.fi
  %i.sd = load ptr, ptr %21, align 8, !tbaa !70   ; 2 uses
  %i.se = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.sf = icmp eq ptr %i.sd, %i.se
  br i1 %i.sf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i200

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i200: ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata18PositionalAccuracyEEED2Ev.exit
  %i.sg = load i64, ptr %i.se, align 8, !tbaa !38
  %i.sh = add i64 %i.sg, 1
  call void @_ZdlPvm(ptr noundef %i.sd, i64 noundef %i.sh) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202: ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata18PositionalAccuracyEEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i200
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #25
  br label %bb.fo

bb.fj:                                            ; preds = %bb.ew
  %i.si = landingpad { ptr, i32 }
          cleanup
  br label %bb.gg

bb.fk:                                            ; preds = %bb.ey
  %i.sj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205

bb.fl:                                            ; preds = %bb.ez
  %i.sk = landingpad { ptr, i32 }
          cleanup
  br label %bb.fn

bb.fm:                                            ; preds = %bb.fc
  %i.sl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata18PositionalAccuracyEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %20) #25
  br label %bb.fn

bb.fn:                                            ; preds = %bb.fm, %bb.fl
  %.pn87 = phi { ptr, i32 } [ %i.sl, %bb.fm ], [ %i.sk, %bb.fl ] ; 2 uses
  %i.sm = load ptr, ptr %21, align 8, !tbaa !70   ; 2 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.so = icmp eq ptr %i.sm, %i.sn
  br i1 %i.so, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203: ; preds = %bb.fn
  %i.sp = load i64, ptr %i.sn, align 8, !tbaa !38
  %i.sq = add i64 %i.sp, 1
  call void @_ZdlPvm(ptr noundef %i.sm, i64 noundef %i.sq) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205: ; preds = %bb.fn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203, %bb.fk
  %.pn87.pn = phi { ptr, i32 } [ %i.sj, %bb.fk ], [ %.pn87, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203 ], [ %.pn87, %bb.fn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #25
  br label %bb.gg

bb.fo:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202, %bb.ex
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #25
  invoke void @_ZN5osgeo4proj9operation21ConcatenatedOperation6createERKNS0_4util11PropertyMapERKSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrINS1_19CoordinateOperationEEEESaISE_EERKS7_INSA_ISB_INS0_8metadata18PositionalAccuracyEEEESaISM_EE(ptr dead_on_unwind nonnull writable sret(%"class.dropbox::oxygen::nn.34") align 8 %22, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %19)
          to label %bb.fp unwind label %bb.gd

bb.fp:                                            ; preds = %bb.fo
  %i.sr = load ptr, ptr %22, align 16, !tbaa !60
  invoke void @_ZN5osgeo4proj9operation19CoordinateOperation28setHasBallparkTransformationEb(ptr noundef nonnull align 8 dereferenceable(72) %i.sr, i1 noundef zeroext %.074.lcssa520)
          to label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation21ConcatenatedOperationEEED2Ev.exit unwind label %bb.ge

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation21ConcatenatedOperationEEED2Ev.exit: ; preds = %bb.fp
  %i.ss = load <2 x ptr>, ptr %22, align 16, !tbaa !37
  %i.st = load ptr, ptr %22, align 16, !tbaa !60
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 72
  %i.sv = load ptr, ptr %i.su, align 8, !tbaa !24
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sv, i64 24
  store i8 1, ptr %i.sw, align 8, !tbaa !46
  store <2 x ptr> %i.ss, ptr %0, align 8, !tbaa !37
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #25
  %i.sx = load ptr, ptr %19, align 8, !tbaa !83   ; 3 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.sz = load ptr, ptr %i.sy, align 8, !tbaa !78 ; 2 uses
  %.not4.i.i.i210 = icmp eq ptr %i.sx, %i.sz
  br i1 %.not4.i.i.i210, label %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata18PositionalAccuracyEEEES9_EvT_SB_RSaIT0_E.exit.i, label %.lr.ph.i.i.i211

.lr.ph.i.i.i211:                                  ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation21ConcatenatedOperationEEED2Ev.exit, %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata18PositionalAccuracyEEEEEvPT_.exit.i.i.i
  %.05.i.i.i212 = phi ptr [ %i.tr, %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata18PositionalAccuracyEEEEEvPT_.exit.i.i.i ], [ %i.sx, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation21ConcatenatedOperationEEED2Ev.exit ] ; 2 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %.05.i.i.i212, i64 8
  %i.tb = load ptr, ptr %i.ta, align 8, !tbaa !36 ; 8 uses
  %.not.i.i.i.i.i.i.i213 = icmp eq ptr %i.tb, null
  br i1 %.not.i.i.i.i.i.i.i213, label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata18PositionalAccuracyEEEEEvPT_.exit.i.i.i, label %bb.fq

bb.fq:                                            ; preds = %.lr.ph.i.i.i211
  %i.tc = getelementptr inbounds nuw i8, ptr %i.tb, i64 8 ; 4 uses
  %i.td = load atomic i64, ptr %i.tc acquire, align 8 ; 2 uses
  %i.te = icmp eq i64 %i.td, 4294967297
  %i.tf = trunc i64 %i.td to i32                  ; 2 uses
  br i1 %i.te, label %bb.fr, label %bb.fs

bb.fr:                                            ; preds = %bb.fq
  store i32 0, ptr %i.tc, align 8, !tbaa !56
  %i.tg = getelementptr inbounds nuw i8, ptr %i.tb, i64 12
  store i32 0, ptr %i.tg, align 4, !tbaa !57
  %i.th = load ptr, ptr %i.tb, align 8, !tbaa !26
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 16
  %i.tj = load ptr, ptr %i.ti, align 8
  call void %i.tj(ptr noundef nonnull align 8 dereferenceable(16) %i.tb) #25, !inline_history !195
  %i.tk = load ptr, ptr %i.tb, align 8, !tbaa !26
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tk, i64 24
  %i.tm = load ptr, ptr %i.tl, align 8
  call void %i.tm(ptr noundef nonnull align 8 dereferenceable(16) %i.tb) #25, !inline_history !195
  br label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata18PositionalAccuracyEEEEEvPT_.exit.i.i.i

bb.fs:                                            ; preds = %bb.fq
  %i.tn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i.i.i.i.i.i.i214 = icmp eq i8 %i.tn, 0
  br i1 %.not.i.i.i.i.i.i.i.i214, label %bb.fu, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.to = add nsw i32 %i.tf, -1
  store i32 %i.to, ptr %i.tc, align 8, !tbaa !39
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i215

bb.fu:                                            ; preds = %bb.fs
  %i.tp = atomicrmw volatile add ptr %i.tc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i215

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i215: ; preds = %bb.fu, %bb.ft
  %.0.i.i.i.i.i.i.i.i.i216 = phi i32 [ %i.tf, %bb.ft ], [ %i.tp, %bb.fu ]
  %i.tq = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i216, 1
  br i1 %i.tq, label %bb.fv, label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata18PositionalAccuracyEEEEEvPT_.exit.i.i.i, !prof !31

bb.fv:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i215
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.tb) #25
  br label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata18PositionalAccuracyEEEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata18PositionalAccuracyEEEEEvPT_.exit.i.i.i: ; preds = %bb.fv, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i215, %bb.fr, %.lr.ph.i.i.i211
  %i.tr = getelementptr inbounds nuw i8, ptr %.05.i.i.i212, i64 16 ; 2 uses
  %.not.i.i.i217 = icmp eq ptr %i.tr, %i.sz
  br i1 %.not.i.i.i217, label %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata18PositionalAccuracyEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i211, !llvm.loop !11

_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata18PositionalAccuracyEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata18PositionalAccuracyEEEEEvPT_.exit.i.i.i
  %.pr.i218 = load ptr, ptr %19, align 8, !tbaa !83
  br label %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata18PositionalAccuracyEEEES9_EvT_SB_RSaIT0_E.exit.i

_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata18PositionalAccuracyEEEES9_EvT_SB_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata18PositionalAccuracyEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation21ConcatenatedOperationEEED2Ev.exit
  %i.ts = phi ptr [ %.pr.i218, %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata18PositionalAccuracyEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i ], [ %i.sx, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation21ConcatenatedOperationEEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i219 = icmp eq ptr %i.ts, null
  br i1 %.not.i.i1.i219, label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata18PositionalAccuracyEEEESaIS9_EED2Ev.exit, label %bb.fw

bb.fw:                                            ; preds = %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata18PositionalAccuracyEEEES9_EvT_SB_RSaIT0_E.exit.i
  %i.tt = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.tu = load ptr, ptr %i.tt, align 8, !tbaa !79
  %i.tv = ptrtoint ptr %i.tu to i64
  %i.tw = ptrtoint ptr %i.ts to i64
  %i.tx = sub i64 %i.tv, %i.tw
  call void @_ZdlPvm(ptr noundef nonnull %i.ts, i64 noundef %i.tx) #26
  br label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata18PositionalAccuracyEEEESaIS9_EED2Ev.exit

_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata18PositionalAccuracyEEEESaIS9_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata18PositionalAccuracyEEEES9_EvT_SB_RSaIT0_E.exit.i, %bb.fw
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #25
  %i.ty = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.tz = load ptr, ptr %i.ty, align 8, !tbaa !36 ; 8 uses
  %.not.i.i220 = icmp eq ptr %i.tz, null
  br i1 %.not.i.i220, label %_ZNSt12__shared_ptrIN5osgeo4proj8metadata6ExtentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.fx

bb.fx:                                            ; preds = %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata18PositionalAccuracyEEEESaIS9_EED2Ev.exit
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tz, i64 8 ; 4 uses
  %i.ub = load atomic i64, ptr %i.ua acquire, align 8 ; 2 uses
  %i.uc = icmp eq i64 %i.ub, 4294967297
  %i.ud = trunc i64 %i.ub to i32                  ; 2 uses
  br i1 %i.uc, label %bb.fy, label %bb.fz

bb.fy:                                            ; preds = %bb.fx
  store i32 0, ptr %i.ua, align 8, !tbaa !56
  %i.ue = getelementptr inbounds nuw i8, ptr %i.tz, i64 12
  store i32 0, ptr %i.ue, align 4, !tbaa !57
  %i.uf = load ptr, ptr %i.tz, align 8, !tbaa !26
  %i.ug = getelementptr inbounds nuw i8, ptr %i.uf, i64 16
  %i.uh = load ptr, ptr %i.ug, align 8
  call void %i.uh(ptr noundef nonnull align 8 dereferenceable(16) %i.tz) #25, !inline_history !12
  %i.ui = load ptr, ptr %i.tz, align 8, !tbaa !26
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ui, i64 24
  %i.uk = load ptr, ptr %i.uj, align 8
  call void %i.uk(ptr noundef nonnull align 8 dereferenceable(16) %i.tz) #25, !inline_history !12
  br label %_ZNSt12__shared_ptrIN5osgeo4proj8metadata6ExtentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.fz:                                            ; preds = %bb.fx
  %i.ul = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i.i221 = icmp eq i8 %i.ul, 0
  br i1 %.not.i.i.i221, label %bb.gb, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.um = add nsw i32 %i.ud, -1
  store i32 %i.um, ptr %i.ua, align 8, !tbaa !39
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i222

bb.gb:                                            ; preds = %bb.fz
  %i.un = atomicrmw volatile add ptr %i.ua, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i222

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i222: ; preds = %bb.gb, %bb.ga
  %.0.i.i.i.i223 = phi i32 [ %i.ud, %bb.ga ], [ %i.un, %bb.gb ]
  %i.uo = icmp eq i32 %.0.i.i.i.i223, 1
  br i1 %i.uo, label %bb.gc, label %_ZNSt12__shared_ptrIN5osgeo4proj8metadata6ExtentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !31

bb.gc:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i222
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.tz) #25
  br label %_ZNSt12__shared_ptrIN5osgeo4proj8metadata6ExtentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5osgeo4proj8metadata6ExtentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata18PositionalAccuracyEEEESaIS9_EED2Ev.exit, %bb.fy, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i222, %bb.gc
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit177

bb.gd:                                            ; preds = %bb.fo
  %i.up = landingpad { ptr, i32 }
          cleanup
  br label %bb.gf

bb.ge:                                            ; preds = %bb.fp
  %i.uq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation21ConcatenatedOperationEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %22) #25
  br label %bb.gf

bb.gf:                                            ; preds = %bb.ge, %bb.gd
  %.pn90 = phi { ptr, i32 } [ %i.uq, %bb.ge ], [ %i.up, %bb.gd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #25
  br label %bb.gg

bb.gg:                                            ; preds = %bb.gf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205, %bb.fj
  %.pn90.pn = phi { ptr, i32 } [ %.pn90, %bb.gf ], [ %.pn87.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205 ], [ %i.si, %bb.fj ]
  call void @_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata18PositionalAccuracyEEEESaIS9_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %19) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #25
  br label %bb.gh

bb.gh:                                            ; preds = %bb.gg, %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183
  %.pn93.pn.pn = phi { ptr, i32 } [ %.pn93.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183 ], [ %.pn90.pn, %bb.gg ], [ %i.ql, %.body ]
  call void @_ZNSt12__shared_ptrIN5osgeo4proj8metadata6ExtentELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %15) #25
  br label %bb.gi

bb.gi:                                            ; preds = %bb.gh, %bb.ee
  %.pn93.pn.pn.pn = phi { ptr, i32 } [ %.pn93.pn.pn, %bb.gh ], [ %i.pg, %bb.ee ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %_ZNSt6vectorImSaImEED2Ev.exit174

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit177: ; preds = %bb.du, %bb.dt, %bb.dr, %_ZNSt12__shared_ptrIN5osgeo4proj8metadata6ExtentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ur = load ptr, ptr %6, align 16, !tbaa !30   ; 3 uses
  %i.us = load ptr, ptr %24, align 8, !tbaa !29   ; 2 uses
  %.not4.i.i.i224 = icmp eq ptr %i.ur, %i.us
  br i1 %.not4.i.i.i224, label %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exit.i235, label %.lr.ph.i.i.i225

.lr.ph.i.i.i225:                                  ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit177, %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i231
  %.05.i.i.i226 = phi ptr [ %i.vk, %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i231 ], [ %i.ur, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit177 ] ; 2 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %.05.i.i.i226, i64 8
  %i.uu = load ptr, ptr %i.ut, align 8, !tbaa !36 ; 8 uses
  %.not.i.i.i.i.i.i.i227 = icmp eq ptr %i.uu, null
  br i1 %.not.i.i.i.i.i.i.i227, label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i231, label %bb.gj

bb.gj:                                            ; preds = %.lr.ph.i.i.i225
  %i.uv = getelementptr inbounds nuw i8, ptr %i.uu, i64 8 ; 4 uses
  %i.uw = load atomic i64, ptr %i.uv acquire, align 8 ; 2 uses
  %i.ux = icmp eq i64 %i.uw, 4294967297
  %i.uy = trunc i64 %i.uw to i32                  ; 2 uses
  br i1 %i.ux, label %bb.gk, label %bb.gl

bb.gk:                                            ; preds = %bb.gj
  store i32 0, ptr %i.uv, align 8, !tbaa !56
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uu, i64 12
  store i32 0, ptr %i.uz, align 4, !tbaa !57
  %i.va = load ptr, ptr %i.uu, align 8, !tbaa !26
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 16
  %i.vc = load ptr, ptr %i.vb, align 8
  call void %i.vc(ptr noundef nonnull align 8 dereferenceable(16) %i.uu) #25, !inline_history !7
  %i.vd = load ptr, ptr %i.uu, align 8, !tbaa !26
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vd, i64 24
  %i.vf = load ptr, ptr %i.ve, align 8
  call void %i.vf(ptr noundef nonnull align 8 dereferenceable(16) %i.uu) #25, !inline_history !7
  br label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i231

bb.gl:                                            ; preds = %bb.gj
  %i.vg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i.i.i.i.i.i.i228 = icmp eq i8 %i.vg, 0
  br i1 %.not.i.i.i.i.i.i.i.i228, label %bb.gn, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  %i.vh = add nsw i32 %i.uy, -1
  store i32 %i.vh, ptr %i.uv, align 8, !tbaa !39
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i229

bb.gn:                                            ; preds = %bb.gl
  %i.vi = atomicrmw volatile add ptr %i.uv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i229

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i229: ; preds = %bb.gn, %bb.gm
  %.0.i.i.i.i.i.i.i.i.i230 = phi i32 [ %i.uy, %bb.gm ], [ %i.vi, %bb.gn ]
  %i.vj = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i230, 1
  br i1 %i.vj, label %bb.go, label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i231, !prof !31

bb.go:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i229
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.uu) #25
  br label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i231

_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i231: ; preds = %bb.go, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i229, %bb.gk, %.lr.ph.i.i.i225
  %i.vk = getelementptr inbounds nuw i8, ptr %.05.i.i.i226, i64 16 ; 2 uses
  %.not.i.i.i232 = icmp eq ptr %i.vk, %i.us
  br i1 %.not.i.i.i232, label %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i233, label %.lr.ph.i.i.i225, !llvm.loop !8

_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i233: ; preds = %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i231
  %.pr.i234 = load ptr, ptr %6, align 16, !tbaa !30
  br label %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exit.i235

_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exit.i235: ; preds = %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i233, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit177
  %i.vl = phi ptr [ %.pr.i234, %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i233 ], [ %i.ur, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit177 ] ; 3 uses
  %.not.i.i1.i236 = icmp eq ptr %i.vl, null
  br i1 %.not.i.i1.i236, label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EED2Ev.exit237, label %bb.gp

bb.gp:                                            ; preds = %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exit.i235
  %i.vm = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.vn = load ptr, ptr %i.vm, align 16, !tbaa !33
  %i.vo = ptrtoint ptr %i.vn to i64
  %i.vp = ptrtoint ptr %i.vl to i64
  %i.vq = sub i64 %i.vo, %i.vp
  call void @_ZdlPvm(ptr noundef nonnull %i.vl, i64 noundef %i.vq) #26
  br label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EED2Ev.exit237

_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EED2Ev.exit237: ; preds = %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exit.i235, %bb.gp
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit

_ZNSt6vectorImSaImEED2Ev.exit174:                 ; preds = %.thread289, %bb.au, %bb.j, %bb.ai, %bb.k, %bb.gi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180
  %.pn100.pn.pn.pn = phi { ptr, i32 } [ %.pn85, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180 ], [ %i.ah, %bb.k ], [ %.pn93.pn.pn.pn, %bb.gi ], [ %i.ag, %bb.j ], [ %.pn100, %bb.ai ], [ %lpad.phi, %bb.au ], [ %.pn98292, %.thread289 ]
  call void @_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @_ZN5osgeo4proj4util11PropertyMapD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  resume { ptr, i32 } %.pn100.pn.pn.pn

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit: ; preds = %bb.e, %bb.d, %bb.b, %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EED2Ev.exit237
  call void @_ZN5osgeo4proj4util11PropertyMapD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  ret void

bb.gq:                                            ; preds = %bb.eb
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !30     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !29   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.u, %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !36   ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.f, align 8, !tbaa !56
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !57
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !26
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #25, !inline_history !203
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !26
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #25, !inline_history !203
  br label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !39
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.e ], [ %i.s, %bb.f ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.g, label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i, !prof !31

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #25
  br label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i

_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !8

_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !30
  br label %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exit

_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.v = phi ptr [ %.pr, %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.v, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !33
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #26
  br label %_ZNSt12_Vector_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EED2Ev.exit

_ZNSt12_Vector_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exit, %bb.h
  ret void
}

declare void @_ZN5osgeo4proj9operation23computeConcatenatedNameB5cxx11ERKSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrINS1_19CoordinateOperationEEEESaIS9_EE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

declare void @_ZN5osgeo4proj9operation9getExtentERKSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrINS1_19CoordinateOperationEEEESaIS9_EEbRb(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.227") align 8, ptr noundef nonnull align 8 dereferenceable(24), i1 noundef zeroext, ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #5

declare void @_ZN5osgeo4proj9operation33InvalidOperationEmptyIntersectionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN5osgeo4proj9operation33InvalidOperationEmptyIntersectionD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40)) unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata6ExtentEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
end_hunk_4
