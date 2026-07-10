inline.NumInlined: 1372
inline.NumDeleted: 727
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZN6Assimp13SceneCombiner21OffsetNodeMeshIndicesEP6aiNodej:bb.a
  %i.k = load i32, ptr %i.a, align 8
  %i.l = zext i32 %i.k to i64
  %i.m = icmp samesign ult i64 %indvars.iv.next, %i.l
  br i1 %i.m, label %bb.b, label %.preheader, !llvm.loop !12

._crit_edge:                                      ; preds = %bb.c, %.preheader
  ret void

bb.c:                                             ; preds = %.lr.ph14, %bb.c
  %indvars.iv17 = phi i64 [ 0, %.lr.ph14 ], [ %indvars.iv.next18, %bb.c ] ; 2 uses
  %i.n = load ptr, ptr %i.f, align 8
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv17
  %i.p = load ptr, ptr %i.o, align 8
  tail call void @_ZN6Assimp13SceneCombiner21OffsetNodeMeshIndicesEP6aiNodej(ptr noundef %i.p, i32 noundef %1)
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1 ; 2 uses
  %i.q = load i32, ptr %i.d, align 8
  %i.r = zext i32 %i.q to i64
  %i.s = icmp samesign ult i64 %indvars.iv.next18, %i.r
  br i1 %i.s, label %bb.c, label %._crit_edge, !llvm.loop !13
}

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp13SceneCombiner11MergeScenesEPP7aiSceneRSt6vectorIS2_SaIS2_EEj(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.11", align 8    ; 8 uses
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %_ZN6Assimp13SceneCombiner13CopySceneFlatEPP7aiScenePKS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp eq ptr %i.b, %i.d
  %i.f = load ptr, ptr %0, align 8                ; 3 uses
  %.not36 = icmp eq ptr %i.f, null                ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  br i1 %.not36, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN7aiSceneD1Ev(ptr noundef nonnull align 8 dead_on_return(1168) dereferenceable(1168) %i.f) #23
  %i.g = load ptr, ptr %1, align 8
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZN6Assimp13SceneCombiner13CopySceneFlatEPP7aiScenePKS1_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN7aiSceneD1Ev(ptr noundef nonnull align 8 dead_on_return(1168) dereferenceable(1168) %i.j) #23
  %i.k = load ptr, ptr %0, align 8
  tail call void @_ZN7aiSceneC1Ev(ptr noundef nonnull align 8 dereferenceable(1168) %i.k)
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.l = tail call noalias noundef nonnull dereferenceable(1168) ptr @_Znwm(i64 noundef 1168) #22 ; 3 uses
  invoke void @_ZN7aiSceneC1Ev(ptr noundef nonnull align 8 dereferenceable(1168) %i.l)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr %i.l, ptr %0, align 8
  br label %bb.j

common.resume:                                    ; preds = %bb.p, %_ZNSt6vectorIN6Assimp14AttachmentInfoESaIS1_EED2Ev.exit40, %bb.v, %bb.u, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.m, %bb.i ], [ %i.q, %bb.p ], [ %.pn, %_ZNSt6vectorIN6Assimp14AttachmentInfoESaIS1_EED2Ev.exit40 ], [ %i.al, %bb.u ], [ %i.am, %bb.v ]
  resume { ptr, i32 } %common.resume.op

bb.i:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef 1168) #24
  br label %common.resume

bb.j:                                             ; preds = %bb.h, %bb.f
  tail call void @_ZN6Assimp13SceneCombiner9CopySceneEPP7aiScenePKS1_b(ptr noundef nonnull %0, ptr noundef nonnull readonly %i.h, i1 noundef zeroext false)
  br label %_ZN6Assimp13SceneCombiner13CopySceneFlatEPP7aiScenePKS1_.exit

bb.k:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %i.b, align 8
  store ptr %i.n, ptr %0, align 8
  br label %_ZN6Assimp13SceneCombiner13CopySceneFlatEPP7aiScenePKS1_.exit

bb.l:                                             ; preds = %bb.b
  br i1 %.not36, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN7aiSceneD1Ev(ptr noundef nonnull align 8 dead_on_return(1168) dereferenceable(1168) %i.f) #23
  %i.o = load ptr, ptr %0, align 8
  tail call void @_ZN7aiSceneC1Ev(ptr noundef nonnull align 8 dereferenceable(1168) %i.o)
  br label %bb.q

bb.n:                                             ; preds = %bb.l
  %i.p = tail call noalias noundef nonnull dereferenceable(1168) ptr @_Znwm(i64 noundef 1168) #22 ; 3 uses
  invoke void @_ZN7aiSceneC1Ev(ptr noundef nonnull align 8 dereferenceable(1168) %i.p)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  store ptr %i.p, ptr %0, align 8
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.q = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef 1168) #24
  br label %common.resume

bb.q:                                             ; preds = %bb.o, %bb.m
  %i.r = tail call noalias noundef nonnull dereferenceable(1168) ptr @_Znwm(i64 noundef 1168) #22 ; 4 uses
  invoke void @_ZN7aiSceneC1Ev(ptr noundef nonnull align 8 dereferenceable(1168) %i.r)
          to label %bb.r unwind label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.s = tail call noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #22 ; 7 uses
  invoke void @_ZN6aiNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(1144) %i.s)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit unwind label %bb.v

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.s, ptr %i.t, align 8
  store i32 11, ptr %i.s, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(11) %i.u, ptr noundef nonnull align 1 dereferenceable(11) @.str.1, i64 11, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 15
  store i8 0, ptr %i.v, align 1
  %.pre = load ptr, ptr %i.c, align 8             ; 2 uses
  %.pre47 = load ptr, ptr %1, align 8             ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.w = ptrtoint ptr %.pre to i64
  %i.x = ptrtoint ptr %.pre47 to i64
  %i.y = sub i64 %i.w, %i.x                       ; 3 uses
  %i.z = ashr exact i64 %i.y, 3                   ; 2 uses
  %i.aa = icmp ugt i64 %i.z, 576460752303423487
  br i1 %i.aa, label %bb.s, label %_ZNSt6vectorIN6Assimp14AttachmentInfoESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #25
          to label %.noexc37 unwind label %bb.w

.noexc37:                                         ; preds = %bb.s
  unreachable

_ZNSt6vectorIN6Assimp14AttachmentInfoESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.not.i.i.i.i = icmp eq ptr %.pre, %.pre47
  br i1 %.not.i.i.i.i, label %.thread, label %.lr.ph.preheader.i.i.i.i.i

.thread:                                          ; preds = %_ZNSt6vectorIN6Assimp14AttachmentInfoESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  br label %._crit_edge

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt6vectorIN6Assimp14AttachmentInfoESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.ab = shl nuw nsw i64 %i.y, 1                 ; 3 uses
  %i.ac = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #22
          to label %bb.t unwind label %bb.w       ; 7 uses

bb.t:                                             ; preds = %.lr.ph.preheader.i.i.i.i.i
  store ptr %i.ac, ptr %3, align 8
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %i.z ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ac, i8 0, i64 %i.ab, i1 false)
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.ac, i64 %i.ab
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.ad, ptr %i.af, align 8
  store ptr %scevgep.i.i.i.i.i, ptr %i.ae, align 8
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = lshr exact i64 %i.y, 3
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.ai = ptrtoint ptr %i.ad to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.thread
  %i.aj = phi i64 [ 0, %.thread ], [ %i.ag, %._crit_edge.loopexit ] ; 2 uses
  %.sink.i58 = phi i64 [ 0, %.thread ], [ %i.ai, %._crit_edge.loopexit ] ; 2 uses
  %i.ak = phi ptr [ null, %.thread ], [ %i.ac, %._crit_edge.loopexit ] ; 4 uses
  invoke void @_ZN6Assimp13SceneCombiner11MergeScenesEPP7aiSceneS2_RSt6vectorINS_14AttachmentInfoESaIS5_EEj(ptr noundef nonnull %0, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef %2)
          to label %bb.x unwind label %bb.z

bb.u:                                             ; preds = %bb.q
  %i.al = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef 1168) #24
  br label %common.resume

bb.v:                                             ; preds = %bb.r
  %i.am = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef 1144) #24
  br label %common.resume

bb.w:                                             ; preds = %.lr.ph.preheader.i.i.i.i.i, %bb.s
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN6Assimp14AttachmentInfoESaIS1_EED2Ev.exit40

.lr.ph:                                           ; preds = %bb.t, %.lr.ph
  %i.ao = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.t ] ; 3 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.pre47, i64 %i.ao
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %i.ao ; 2 uses
  store ptr %i.aq, ptr %i.ar, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr %i.s, ptr %.sroa.4.0..sroa_idx, align 8
  %indvars.iv.next = add i64 %i.ao, 1             ; 2 uses
  %4 = and i64 %indvars.iv.next, 4294967295
  %i.as = icmp samesign ugt i64 %i.ah, %4
  br i1 %i.as, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !14

bb.x:                                             ; preds = %._crit_edge
  %.not.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6Assimp14AttachmentInfoESaIS1_EED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.at = sub i64 %.sink.i58, %i.aj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.at) #24
  br label %_ZNSt6vectorIN6Assimp14AttachmentInfoESaIS1_EED2Ev.exit

_ZNSt6vectorIN6Assimp14AttachmentInfoESaIS1_EED2Ev.exit: ; preds = %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %_ZN6Assimp13SceneCombiner13CopySceneFlatEPP7aiScenePKS1_.exit

_ZN6Assimp13SceneCombiner13CopySceneFlatEPP7aiScenePKS1_.exit: ; preds = %bb.j, %bb.d, %bb.k, %bb.a, %_ZNSt6vectorIN6Assimp14AttachmentInfoESaIS1_EED2Ev.exit
  ret void

bb.z:                                             ; preds = %._crit_edge
  %i.au = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i39 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i39, label %_ZNSt6vectorIN6Assimp14AttachmentInfoESaIS1_EED2Ev.exit40, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.av = sub i64 %.sink.i58, %i.aj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.av) #24
  br label %_ZNSt6vectorIN6Assimp14AttachmentInfoESaIS1_EED2Ev.exit40

_ZNSt6vectorIN6Assimp14AttachmentInfoESaIS1_EED2Ev.exit40: ; preds = %bb.aa, %bb.z, %bb.w
  %.pn = phi { ptr, i32 } [ %i.an, %bb.w ], [ %i.au, %bb.z ], [ %i.au, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %common.resume
}

; Function Attrs: nounwind
declare void @_ZN7aiSceneD1Ev(ptr noundef nonnull align 8 dead_on_return(1168) dereferenceable(1168)) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp13SceneCombiner13CopySceneFlatEPP7aiScenePKS1_(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8                ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN7aiSceneD1Ev(ptr noundef nonnull align 8 dead_on_return(1168) dereferenceable(1168) %i.c) #23
  %i.d = load ptr, ptr %0, align 8
  tail call void @_ZN7aiSceneC1Ev(ptr noundef nonnull align 8 dereferenceable(1168) %i.d)
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.e = tail call noalias noundef nonnull dereferenceable(1168) ptr @_Znwm(i64 noundef 1168) #22 ; 3 uses
  invoke void @_ZN7aiSceneC1Ev(ptr noundef nonnull align 8 dereferenceable(1168) %i.e)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr %i.e, ptr %0, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef 1168) #24
  resume { ptr, i32 } %i.f

bb.g:                                             ; preds = %bb.e, %bb.c
  tail call void @_ZN6Assimp13SceneCombiner9CopySceneEPP7aiScenePKS1_b(ptr noundef nonnull %0, ptr noundef nonnull %1, i1 noundef zeroext false)
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g
  ret void
}

declare void @_ZN7aiSceneC1Ev(ptr noundef nonnull align 8 dereferenceable(1168)) unnamed_addr #1

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #6

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

declare void @_ZN6aiNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(1144)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp13SceneCombiner11MergeScenesEPP7aiSceneS2_RSt6vectorINS_14AttachmentInfoESaIS5_EEj(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, i32 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.std::__detail::_AllocNode.93", align 8 ; 4 uses
  %5 = alloca %"struct.std::__detail::_AllocNode.93", align 8 ; 4 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %6 = alloca %"class.std::unordered_set", align 8 ; 16 uses
  %7 = alloca %"class.std::vector", align 8       ; 21 uses
  %8 = alloca %"struct.Assimp::SceneHelper", align 8 ; 12 uses
  %9 = alloca %struct.aiString, align 4           ; 9 uses
  %10 = alloca %"class.std::vector.16", align 8   ; 16 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  store ptr %1, ptr %i.a, align 8
  %i.c = icmp eq ptr %0, null
  br i1 %i.c, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  store ptr %i.d, ptr %6, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store i64 1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store ptr %6, ptr %5, align 8
  %i.i = invoke { ptr, i8 } @_ZNSt10_HashtableIP7aiSceneS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIRKS1_SH_NS3_10_AllocNodeISaINS3_10_Hash_nodeIS1_Lb0EEEEEEEESt4pairINS3_14_Node_iteratorIS1_Lb1ELb0EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.j = load ptr, ptr %2, align 8                ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not797958 = icmp eq ptr %i.j, %i.l
  br i1 %.not797958, label %._crit_edge962, label %.lr.ph961

._crit_edge962:                                   ; preds = %bb.e, %bb.c
  %i.m = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not798963 = icmp eq ptr %i.m, null
  br i1 %.not798963, label %_ZNSt10_HashtableIP7aiSceneS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph966

bb.d:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

.lr.ph961:                                        ; preds = %bb.c, %bb.e
  %.sroa.0771.0959 = phi ptr [ %i.p, %bb.e ], [ %i.j, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store ptr %6, ptr %4, align 8
  %i.o = invoke { ptr, i8 } @_ZNSt10_HashtableIP7aiSceneS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIRKS1_SH_NS3_10_AllocNodeISaINS3_10_Hash_nodeIS1_Lb0EEEEEEEESt4pairINS3_14_Node_iteratorIS1_Lb1ELb0EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0771.0959, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0771.0959, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.e unwind label %bb.f       ; 0 uses

bb.e:                                             ; preds = %.lr.ph961
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0771.0959, i64 16 ; 2 uses
  %.not797 = icmp eq ptr %i.p, %i.l
  br i1 %.not797, label %._crit_edge962, label %.lr.ph961

bb.f:                                             ; preds = %.lr.ph961
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

._crit_edge967:                                   ; preds = %bb.i
  %.pre1079.a = load ptr, ptr %i.f, align 8       ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %.pre1079.a, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIP7aiSceneS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %._crit_edge967, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i ], [ %.pre1079.a, %._crit_edge967 ] ; 2 uses
  %i.r = load ptr, ptr %.06.i.i.i.i, align 8      ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 16) #24
  %.not.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableIP7aiSceneS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !15

_ZNSt10_HashtableIP7aiSceneS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %._crit_edge962, %._crit_edge967
  %i.s = load ptr, ptr %6, align 8
  %i.t = load i64, ptr %i.e, align 8
  %i.u = shl i64 %i.t, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.s, i8 0, i64 %i.u, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.v = load ptr, ptr %6, align 8                ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.d
  br i1 %i.w, label %_ZNSt13unordered_setIP7aiSceneSt4hashIS1_ESt8equal_toIS1_ESaIS1_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt10_HashtableIP7aiSceneS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i
  %i.x = load i64, ptr %i.e, align 8
  %i.y = shl i64 %i.x, 3
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #24
  br label %_ZNSt13unordered_setIP7aiSceneSt4hashIS1_ESt8equal_toIS1_ESaIS1_EED2Ev.exit

_ZNSt13unordered_setIP7aiSceneSt4hashIS1_ESt8equal_toIS1_ESaIS1_EED2Ev.exit: ; preds = %_ZNSt10_HashtableIP7aiSceneS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %_ZN6Assimp13SceneCombiner13CopySceneFlatEPP7aiScenePKS1_.exit.thread

.lr.ph966:                                        ; preds = %._crit_edge962, %bb.i
  %.sroa.0767.0964 = phi ptr [ %i.ac, %bb.i ], [ %i.m, %._crit_edge962 ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0767.0964, i64 8
  %i.aa = load ptr, ptr %i.z, align 8             ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN6Assimp13SceneCombiner11MergeScenesEPP7aiSceneS2_RSt6vectorINS_14AttachmentInfoESaIS5_EEj:bb.a
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store i8 0, ptr %i.bh, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ax, i64 96 ; 2 uses
  br label %.lr.ph.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.noexc456
  %.lcssa1374.unr = phi ptr [ poison, %.noexc456 ], [ %i.bi, %.lr.ph.i.i.i.i.i.prol ]
  %.013.i.i.i.i.i.unr = phi ptr [ %i.ax, %.noexc456 ], [ %i.bi, %.lr.ph.i.i.i.i.i.prol ]
  %.01012.i.i.i.i.i.unr = phi i64 [ %i.au, %.noexc456 ], [ %i.at, %.lr.ph.i.i.i.i.i.prol ]
  %i.bj = icmp eq ptr %i.ao, %i.ap
  br i1 %i.bj, label %.loopexit825, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.ca, %.lr.ph.i.i.i.i.i ], [ %.013.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 17 uses
  %.01012.i.i.i.i.i = phi i64 [ %i.bz, %.lr.ph.i.i.i.i.i ], [ %.01012.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  store ptr null, ptr %.013.i.i.i.i.i, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 40
  store i32 0, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 56 ; 3 uses
  store i32 0, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 64
  store ptr null, ptr %i.bm, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 72
  store ptr %i.bl, ptr %i.bn, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 80
  store ptr %i.bl, ptr %i.bo, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 88
  store i64 0, ptr %i.bp, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 8
  store i8 0, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 96
  store ptr null, ptr %i.br, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 136
  store i32 0, ptr %i.bs, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 152 ; 3 uses
  store i32 0, ptr %i.bt, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 160
  store ptr null, ptr %i.bu, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 168
  store ptr %i.bt, ptr %i.bv, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 176
  store ptr %i.bt, ptr %i.bw, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 184
  store i64 0, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 104
  store i8 0, ptr %i.by, align 8
  %i.bz = add i64 %.01012.i.i.i.i.i, -2           ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 192 ; 2 uses
  %.not.i.i.i.i.i.1 = icmp eq i64 %i.bz, 0
  br i1 %.not.i.i.i.i.i.1, label %.loopexit825, label %.lr.ph.i.i.i.i.i, !llvm.loop !16

.loopexit825:                                     ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.prol.loopexit
  %.lcssa1374 = phi ptr [ %.lcssa1374.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.ca, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 12 uses
  store ptr %.lcssa1374, ptr %i.cb, align 8
  store ptr %1, ptr %i.ax, align 8
  %.not968 = icmp eq ptr %i.ao, %i.ap
  br i1 %.not968, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit825
  %i.cc = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.cd = getelementptr inbounds nuw i8, ptr %8, i64 56 ; 6 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %8, i64 72 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %8, i64 80 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %8, i64 88 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %8, i64 48
  br label %bb.y

._crit_edge:                                      ; preds = %_ZN6Assimp11SceneHelperD2Ev.exit, %.loopexit825
  %i.ck = ptrtoint ptr %.lcssa1374 to i64
  %i.cl = ptrtoint ptr %i.ax to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = sdiv exact i64 %i.cm, 96                ; 11 uses
  %i.co = icmp ugt i64 %i.cn, 2305843009213693951
  br i1 %i.co, label %bb.w, label %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i

bb.w:                                             ; preds = %._crit_edge
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #25
          to label %.noexc458 unwind label %bb.ac

.noexc458:                                        ; preds = %bb.w
  unreachable

_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %._crit_edge
  %i.cp = shl nuw nsw i64 %i.cn, 2                ; 3 uses
  %i.cq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cp) #22
          to label %.noexc459 unwind label %bb.ac ; 11 uses

.noexc459:                                        ; preds = %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.cq, i8 -1, i64 %i.cp, i1 false)
  %i.cr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cp) #22
          to label %.noexc465 unwind label %_ZNSt6vectorIjSaIjEED2Ev.exit686.thread ; 13 uses

bb.x:                                             ; preds = %_ZNSt6vectorIN6Assimp11SceneHelperESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i, %bb.v
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %bb.jf

bb.y:                                             ; preds = %.lr.ph, %_ZN6Assimp11SceneHelperD2Ev.exit
  %i.ct = phi ptr [ %i.ap, %.lr.ph ], [ %i.dr, %_ZN6Assimp11SceneHelperD2Ev.exit ]
  %i.cu = phi i64 [ 0, %.lr.ph ], [ %i.cy, %_ZN6Assimp11SceneHelperD2Ev.exit ]
  %.0325852 = phi i32 [ 0, %.lr.ph ], [ %i.cx, %_ZN6Assimp11SceneHelperD2Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %i.ct, i64 %i.cu
  %i.cw = load ptr, ptr %i.cv, align 8
  store ptr %i.cw, ptr %8, align 8
  store i32 0, ptr %i.cc, align 8
  store i32 0, ptr %i.cd, align 8
  store ptr null, ptr %i.ce, align 8
  store ptr %i.cd, ptr %i.cf, align 8
  store ptr %i.cd, ptr %i.cg, align 8
  store i64 0, ptr %i.ch, align 8
  store i8 0, ptr %i.ci, align 8
  %i.cx = add i32 %.0325852, 1                    ; 2 uses
  %i.cy = zext i32 %i.cx to i64                   ; 3 uses
  %i.cz = getelementptr inbounds nuw [96 x i8], ptr %i.ax, i64 %i.cy ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.cz, ptr noundef nonnull align 8 dereferenceable(96) %8, i64 44, i1 false)
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 48
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 64 ; 3 uses
  %i.dc = load ptr, ptr %i.db, align 8
  invoke void @_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE8_M_eraseEPSt13_Rb_tree_nodeIjE(ptr noundef nonnull align 8 dereferenceable(48) %i.da, ptr noundef %i.dc)
          to label %_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE5clearEv.exit.i.i.i.i unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dd = landingpad { ptr, i32 }
          catch ptr null
  %i.de = extractvalue { ptr, i32 } %i.dd, 0
  call void @__clang_call_terminate(ptr %i.de) #26
  unreachable

_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE5clearEv.exit.i.i.i.i: ; preds = %bb.y
  %i.df = getelementptr inbounds nuw i8, ptr %i.cz, i64 56 ; 4 uses
  store ptr null, ptr %i.db, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cz, i64 72 ; 2 uses
  store ptr %i.df, ptr %i.dg, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cz, i64 80
  store ptr %i.df, ptr %i.dh, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.cz, i64 88 ; 2 uses
  store i64 0, ptr %i.di, align 8
  %i.dj = load ptr, ptr %i.ce, align 8            ; 3 uses
  %.not.i.i.i.i460 = icmp eq ptr %i.dj, null
  br i1 %.not.i.i.i.i460, label %_ZN6Assimp11SceneHelperaSEOS0_.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE5clearEv.exit.i.i.i.i
  %i.dk = load i32, ptr %i.cd, align 8
  store i32 %i.dk, ptr %i.df, align 8
  store ptr %i.dj, ptr %i.db, align 8
  %i.dl = load <2 x ptr>, ptr %i.cf, align 8
  store <2 x ptr> %i.dl, ptr %i.dg, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  store ptr %i.df, ptr %i.dm, align 8
  %i.dn = load i64, ptr %i.ch, align 8
  store i64 %i.dn, ptr %i.di, align 8
  store ptr null, ptr %i.ce, align 8
  store ptr %i.cd, ptr %i.cf, align 8
  store ptr %i.cd, ptr %i.cg, align 8
  store i64 0, ptr %i.ch, align 8
  br label %_ZN6Assimp11SceneHelperaSEOS0_.exit

_ZN6Assimp11SceneHelperaSEOS0_.exit:              ; preds = %_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE5clearEv.exit.i.i.i.i, %bb.aa
  invoke void @_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE8_M_eraseEPSt13_Rb_tree_nodeIjE(ptr noundef nonnull align 8 dereferenceable(48) %i.cj, ptr noundef null)
          to label %_ZN6Assimp11SceneHelperD2Ev.exit unwind label %bb.ab

bb.ab:                                            ; preds = %_ZN6Assimp11SceneHelperaSEOS0_.exit
  %i.do = landingpad { ptr, i32 }
          catch ptr null
  %i.dp = extractvalue { ptr, i32 } %i.do, 0
  call void @__clang_call_terminate(ptr %i.dp) #26
  unreachable

_ZN6Assimp11SceneHelperD2Ev.exit:                 ; preds = %_ZN6Assimp11SceneHelperaSEOS0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  %i.dq = load ptr, ptr %i.ae, align 8
  %i.dr = load ptr, ptr %2, align 8               ; 2 uses
  %i.ds = ptrtoint ptr %i.dq to i64
  %i.dt = ptrtoint ptr %i.dr to i64
  %i.du = sub i64 %i.ds, %i.dt
  %i.dv = ashr exact i64 %i.du, 4
  %i.dw = icmp ugt i64 %i.dv, %i.cy
  br i1 %i.dw, label %bb.y, label %._crit_edge, !llvm.loop !17

.noexc465:                                        ; preds = %.noexc459
  store i32 0, ptr %i.cr, align 4
  %i.dx = add nsw i64 %i.cn, -1                   ; 2 uses
  %i.dy = icmp eq i64 %i.dx, 0
  br i1 %i.dy, label %.lr.ph859.preheader, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

.lr.ph859.preheader:                              ; preds = %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc465
  br label %.lr.ph859

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc465
  %i.dz = getelementptr i8, ptr %i.cr, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.dx, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.dz, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false)
  br label %.lr.ph859.preheader

._crit_edge860:                                   ; preds = %.loopexit824
  %.not388 = trunc i32 %3 to i1                   ; 5 uses
  %i.ea = icmp samesign ugt i64 %i.cn, 1
  %or.cond1353 = select i1 %.not388, i1 %i.ea, i1 false
  br i1 %or.cond1353, label %.lr.ph864, label %.loopexit823

.lr.ph864:                                        ; preds = %._crit_edge860
  %i.eb = and i32 %3, 16
  %.not440 = icmp eq i32 %i.eb, 0
  br label %bb.ah

bb.ac:                                            ; preds = %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i, %bb.w
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit688

_ZNSt6vectorIjSaIjEED2Ev.exit686.thread:          ; preds = %.noexc459
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %bb.je

.lr.ph859:                                        ; preds = %.lr.ph859.preheader, %.loopexit824
  %i.ee = phi i64 [ %indvars.iv.next, %.loopexit824 ], [ 0, %.lr.ph859.preheader ] ; 5 uses
  %11 = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.ee ; 2 uses
  %12 = load i32, ptr %11, align 4                ; 2 uses
  %13 = zext i32 %12 to i64
  %.not447 = icmp eq i64 %i.ee, %13
  %.not448 = icmp eq i32 %12, -1
  %or.cond795 = or i1 %.not447, %.not448
  br i1 %or.cond795, label %bb.ad, label %.loopexit824

bb.ad:                                            ; preds = %.lr.ph859
  %14 = trunc nuw i64 %i.ee to i32                ; 3 uses
  store i32 %14, ptr %11, align 4
  %.0329853 = add i32 %14, 1                      ; 2 uses
  %i.ef = zext i32 %.0329853 to i64               ; 2 uses
  %i.eg = icmp ugt i64 %i.cn, %i.ef
  br i1 %i.eg, label %.lr.ph856, label %.loopexit824

.lr.ph856:                                        ; preds = %bb.ad
  %i.eh = getelementptr inbounds nuw [96 x i8], ptr %i.ax, i64 %i.ee
  %.pre1055 = load ptr, ptr %i.eh, align 8
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph856, %bb.ag
  %i.ei = phi i64 [ %i.ef, %.lr.ph856 ], [ %i.en, %bb.ag ] ; 2 uses
  %.0329854 = phi i32 [ %.0329853, %.lr.ph856 ], [ %.0329, %bb.ag ]
  %i.ej = getelementptr inbounds nuw [96 x i8], ptr %i.ax, i64 %i.ei
  %i.ek = load ptr, ptr %i.ej, align 8
  %i.el = icmp eq ptr %.pre1055, %i.ek
  br i1 %i.el, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.ei
  store i32 %14, ptr %i.em, align 4
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af
  %.0329 = add i32 %.0329854, 1                   ; 2 uses
  %i.en = zext i32 %.0329 to i64                  ; 2 uses
  %i.eo = icmp ugt i64 %i.cn, %i.en
  br i1 %i.eo, label %bb.ae, label %.loopexit824, !llvm.loop !18

.loopexit824:                                     ; preds = %bb.ag, %bb.ad, %.lr.ph859
  %indvars.iv.next = add i64 %i.ee, 1             ; 2 uses
  %15 = and i64 %indvars.iv.next, 4294967295
  %i.ep = icmp ugt i64 %i.cn, %15
  br i1 %i.ep, label %.lr.ph859, label %._crit_edge860, !llvm.loop !19

bb.ah:                                            ; preds = %.lr.ph864, %.loopexit821
  %i.eq = phi ptr [ %i.ax, %.lr.ph864 ], [ %i.kb, %.loopexit821 ]
  %i.er = phi i64 [ 1, %.lr.ph864 ], [ %i.kd, %.loopexit821 ] ; 3 uses
  %.0330863 = phi i32 [ 1, %.lr.ph864 ], [ %i.kc, %.loopexit821 ] ; 2 uses
  %i.es = getelementptr inbounds nuw [96 x i8], ptr %i.eq, i64 %i.er
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.eu = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.et, i64 noundef 32, ptr noundef nonnull @.str.2, i32 noundef %.0330863) #23
  %i.ev = load ptr, ptr %7, align 8               ; 4 uses
  %i.ew = getelementptr inbounds nuw [96 x i8], ptr %i.ev, i64 %i.er ; 5 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 40
  store i32 %i.eu, ptr %i.ex, align 8
  br i1 %.not440, label %.loopexit821, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ey = load ptr, ptr %i.ew, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fa = load ptr, ptr %i.ez, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ew, i64 48
  invoke void @_ZN6Assimp13SceneCombiner13AddNodeHashesEP6aiNodeRSt3setIjSt4lessIjESaIjEE(ptr noundef %i.fa, ptr noundef nonnull align 8 dereferenceable(48) %i.fb)
          to label %.preheader820 unwind label %bb.aj

.preheader820:                                    ; preds = %bb.ai
  %i.fc = load ptr, ptr %i.ew, align 8            ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 48
  %i.fe = load i32, ptr %i.fd, align 8
  %.not970 = icmp eq i32 %i.fe, 0
  br i1 %.not970, label %.loopexit821, label %.lr.ph862

bb.aj:                                            ; preds = %bb.ai
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.lr.ph862:                                        ; preds = %.preheader820, %bb.as
  %i.fg = phi ptr [ %i.jt, %bb.as ], [ %i.ev, %.preheader820 ]
  %indvars.iv = phi i64 [ %indvars.iv.next.a, %bb.as ], [ 0, %.preheader820 ] ; 2 uses
  %i.fh = phi ptr [ %i.jv, %bb.as ], [ %i.fc, %.preheader820 ]
  %i.fi = phi ptr [ %i.ju, %bb.as ], [ %i.ew, %.preheader820 ] ; 4 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 56
  %i.fk = load ptr, ptr %i.fj, align 8
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %indvars.iv
  %i.fm = load ptr, ptr %i.fl, align 8            ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 4 ; 5 uses
  %i.fo = load i32, ptr %i.fm, align 8            ; 2 uses
  %i.fp = icmp eq i32 %i.fo, 0
  br i1 %i.fp, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.lr.ph862
  %i.fq = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fn) #21
  %i.fr = trunc i64 %i.fq to i32
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %.lr.ph862
  %.056.i = phi i32 [ %i.fr, %bb.ak ], [ %i.fo, %.lr.ph862 ] ; 3 uses
  %i.fs = and i32 %.056.i, 3
  %i.ft = lshr i32 %.056.i, 2                     ; 4 uses
  switch i32 %i.ft, label %.lr.ph.i.preheader.new [
    i32 0, label %._crit_edge.i
    i32 1, label %.lr.ph.i.epil.preheader
  ]

.lr.ph.i.preheader.new:                           ; preds = %bb.al
  %unroll_iter = and i32 %i.ft, 1073741822
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.05463.i = phi ptr [ %i.fn, %.lr.ph.i.preheader.new ], [ %i.gr, %.lr.ph.i ] ; 5 uses
  %.05562.i = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %i.gt, %.lr.ph.i ]
  %niter = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.fu = load i16, ptr %.05463.i, align 1
  %i.fv = zext i16 %i.fu to i32
  %i.fw = add i32 %.05562.i, %i.fv                ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.05463.i, i64 2
  %i.fy = load i16, ptr %i.fx, align 1
  %i.fz = zext i16 %i.fy to i32
  %i.ga = shl nuw nsw i32 %i.fz, 11
  %i.gb = shl i32 %i.fw, 16
  %i.gc = xor i32 %i.ga, %i.gb
  %i.gd = xor i32 %i.gc, %i.fw                    ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.05463.i, i64 4
  %i.gf = lshr i32 %i.gd, 11
  %i.gg = add i32 %i.gf, %i.gd
  %i.gh = load i16, ptr %i.ge, align 1
  %i.gi = zext i16 %i.gh to i32
  %i.gj = add i32 %i.gg, %i.gi                    ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.05463.i, i64 6
  %i.gl = load i16, ptr %i.gk, align 1
  %i.gm = zext i16 %i.gl to i32
  %i.gn = shl nuw nsw i32 %i.gm, 11
  %i.go = shl i32 %i.gj, 16
  %i.gp = xor i32 %i.gn, %i.go
  %i.gq = xor i32 %i.gp, %i.gj                    ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.05463.i, i64 8 ; 2 uses
  %i.gs = lshr i32 %i.gq, 11
  %i.gt = add i32 %i.gs, %i.gq                    ; 3 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !3

._crit_edge.loopexit.i.unr-lcssa:                 ; preds = %.lr.ph.i
  %i.gu = and i32 %.056.i, 4
  %lcmp.mod1376.not = icmp eq i32 %i.gu, 0
  br i1 %lcmp.mod1376.not, label %._crit_edge.loopexit.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %bb.al, %._crit_edge.loopexit.i.unr-lcssa
  %.05463.i.epil.init = phi ptr [ %i.fn, %bb.al ], [ %i.gr, %._crit_edge.loopexit.i.unr-lcssa ] ; 2 uses
  %.05562.i.epil.init = phi i32 [ 0, %bb.al ], [ %i.gt, %._crit_edge.loopexit.i.unr-lcssa ]
  %lcmp.mod1378 = trunc i32 %i.ft to i1
  call void @llvm.assume(i1 %lcmp.mod1378)
  %i.gv = load i16, ptr %.05463.i.epil.init, align 1
  %i.gw = zext i16 %i.gv to i32
  %i.gx = add i32 %.05562.i.epil.init, %i.gw      ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.05463.i.epil.init, i64 2
  %i.gz = load i16, ptr %i.gy, align 1
  %i.ha = zext i16 %i.gz to i32
  %i.hb = shl nuw nsw i32 %i.ha, 11
  %i.hc = shl i32 %i.gx, 16
  %i.hd = xor i32 %i.hb, %i.hc
  %i.he = xor i32 %i.hd, %i.gx                    ; 2 uses
  %i.hf = lshr i32 %i.he, 11
  %i.hg = add i32 %i.hf, %i.he
  br label %._crit_edge.loopexit.i

._crit_edge.loopexit.i:                           ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.i.epil.preheader
  %.lcssa1368.a = phi i32 [ %i.gt, %._crit_edge.loopexit.i.unr-lcssa ], [ %i.hg, %.lr.ph.i.epil.preheader ]
  %i.hh = add nsw i32 %i.ft, -1
  %i.hi = zext nneg i32 %i.hh to i64
  %i.hj = shl nuw nsw i64 %i.hi, 2
  %i.hk = getelementptr i8, ptr %i.fn, i64 %i.hj
  %scevgep.i = getelementptr i8, ptr %i.hk, i64 4
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.al, %._crit_edge.loopexit.i
  %.055.lcssa.i = phi i32 [ 0, %bb.al ], [ %.lcssa1368.a, %._crit_edge.loopexit.i ] ; 4 uses
  %.054.lcssa.i = phi ptr [ %i.fn, %bb.al ], [ %scevgep.i, %._crit_edge.loopexit.i ] ; 4 uses
  switch i32 %i.fs, label %._crit_edge.i.unreachabledefault [
    i32 3, label %bb.am
    i32 2, label %bb.an
    i32 1, label %bb.ao
    i32 0, label %_Z13SuperFastHashPKcjj.exit
  ]

bb.am:                                            ; preds = %._crit_edge.i
  %i.hl = load i16, ptr %.054.lcssa.i, align 1
  %i.hm = zext i16 %i.hl to i32
  %i.hn = add i32 %.055.lcssa.i, %i.hm            ; 2 uses
  %i.ho = shl i32 %i.hn, 16
  %i.hp = getelementptr inbounds nuw i8, ptr %.054.lcssa.i, i64 2
  %i.hq = load i8, ptr %i.hp, align 1
  %i.hr = call i8 @llvm.abs.i8(i8 %i.hq, i1 false)
  %i.hs = zext i8 %i.hr to i32
  %i.ht = shl nuw nsw i32 %i.hs, 18
  %i.hu = xor i32 %i.ho, %i.ht
  %i.hv = xor i32 %i.hu, %i.hn                    ; 2 uses
  %i.hw = lshr i32 %i.hv, 11
  %i.hx = add i32 %i.hw, %i.hv
  br label %_Z13SuperFastHashPKcjj.exit

bb.an:                                            ; preds = %._crit_edge.i
  %i.hy = load i16, ptr %.054.lcssa.i, align 1
  %i.hz = zext i16 %i.hy to i32
  %i.ia = add i32 %.055.lcssa.i, %i.hz            ; 2 uses
  %i.ib = shl i32 %i.ia, 11
  %i.ic = xor i32 %i.ib, %i.ia                    ; 2 uses
  %i.id = lshr i32 %i.ic, 17
  %i.ie = add i32 %i.id, %i.ic
  br label %_Z13SuperFastHashPKcjj.exit

bb.ao:                                            ; preds = %._crit_edge.i
  %i.if = load i8, ptr %.054.lcssa.i, align 1
  %i.ig = sext i8 %i.if to i32
  %i.ih = add i32 %.055.lcssa.i, %i.ig            ; 2 uses
  %i.ii = shl i32 %i.ih, 10
  %i.ij = xor i32 %i.ii, %i.ih                    ; 2 uses
  %i.ik = lshr i32 %i.ij, 1
  %i.il = add i32 %i.ik, %i.ij
  br label %_Z13SuperFastHashPKcjj.exit

._crit_edge.i.unreachabledefault:                 ; preds = %._crit_edge.i
  unreachable

default.unreachable:                              ; preds = %._crit_edge.i.i517, %._crit_edge.i.i559, %._crit_edge.i.i606, %._crit_edge.i.i, %._crit_edge.i.i645
  unreachable

_Z13SuperFastHashPKcjj.exit:                      ; preds = %._crit_edge.i, %bb.am, %bb.an, %bb.ao
  %.1.i = phi i32 [ %.055.lcssa.i, %._crit_edge.i ], [ %i.hx, %bb.am ], [ %i.ie, %bb.an ], [ %i.il, %bb.ao ] ; 2 uses
  %i.im = shl i32 %.1.i, 3
  %i.in = xor i32 %i.im, %.1.i                    ; 2 uses
  %i.io = lshr i32 %i.in, 5
  %i.ip = add i32 %i.io, %i.in                    ; 2 uses
  %i.iq = shl i32 %i.ip, 4
  %i.ir = xor i32 %i.iq, %i.ip                    ; 2 uses
  %i.is = lshr i32 %i.ir, 17
  %i.it = add i32 %i.is, %i.ir                    ; 2 uses
  %i.iu = shl i32 %i.it, 25
  %i.iv = xor i32 %i.iu, %i.it                    ; 2 uses
  %i.iw = lshr i32 %i.iv, 6
  %i.ix = add i32 %i.iw, %i.iv                    ; 4 uses
end_hunk_1
