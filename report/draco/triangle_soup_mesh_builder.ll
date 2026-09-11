Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/draco/original/triangle_soup_mesh_builder?download=true
inline.NumInlined: 292
inline.NumDeleted: 172
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN5draco23TriangleSoupMeshBuilder31SetPerFaceAttributeValueForFaceEiNS_9IndexTypeIjNS_19FaceIndex_tag_type_EEEPKv:bb.a
  br i1 %.not.i, label %_ZN5draco4Mesh7SetFaceENS_9IndexTypeIjNS_19FaceIndex_tag_type_EEERKSt5arrayINS1_IjNS_20PointIndex_tag_type_EEELm3EE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ap = add i32 %i.af, 1
  %i.aq = zext i32 %i.ap to i64                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.ar = icmp ult i64 %i.an, %i.aq
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i64 12, i1 false)
  br i1 %i.ar, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.as = sub nuw nsw i64 %i.aq, %i.an
  call void @_ZNSt6vectorISt5arrayIN5draco9IndexTypeIjNS1_20PointIndex_tag_type_EEELm3EESaIS5_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS5_S7_EEmRKS5_(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr %i.ai, i64 noundef %i.as, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %.pre2.pre.i = load ptr, ptr %i.ag, align 8, !tbaa !16
  br label %_ZN5draco15IndexTypeVectorINS_9IndexTypeIjNS_19FaceIndex_tag_type_EEESt5arrayINS1_IjNS_20PointIndex_tag_type_EEELm3EEE6resizeEmRKS7_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.at = icmp ugt i64 %i.an, %i.aq
  br i1 %i.at, label %bb.e, label %_ZN5draco15IndexTypeVectorINS_9IndexTypeIjNS_19FaceIndex_tag_type_EEESt5arrayINS1_IjNS_20PointIndex_tag_type_EEELm3EEE6resizeEmRKS7_.exit.i

bb.e:                                             ; preds = %bb.d
  %i.au = getelementptr inbounds nuw [12 x i8], ptr %i.aj, i64 %i.aq ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ai, %i.au
  br i1 %.not.i.i.i.i, label %_ZN5draco15IndexTypeVectorINS_9IndexTypeIjNS_19FaceIndex_tag_type_EEESt5arrayINS1_IjNS_20PointIndex_tag_type_EEELm3EEE6resizeEmRKS7_.exit.i, label %_ZSt8_DestroyIPSt5arrayIN5draco9IndexTypeIjNS1_20PointIndex_tag_type_EEELm3EES5_EvT_S7_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPSt5arrayIN5draco9IndexTypeIjNS1_20PointIndex_tag_type_EEELm3EES5_EvT_S7_RSaIT0_E.exit.i.i.i.i: ; preds = %bb.e
  store ptr %i.au, ptr %i.ah, align 8, !tbaa !15
  br label %_ZN5draco15IndexTypeVectorINS_9IndexTypeIjNS_19FaceIndex_tag_type_EEESt5arrayINS1_IjNS_20PointIndex_tag_type_EEELm3EEE6resizeEmRKS7_.exit.i

_ZN5draco15IndexTypeVectorINS_9IndexTypeIjNS_19FaceIndex_tag_type_EEESt5arrayINS1_IjNS_20PointIndex_tag_type_EEELm3EEE6resizeEmRKS7_.exit.i: ; preds = %_ZSt8_DestroyIPSt5arrayIN5draco9IndexTypeIjNS1_20PointIndex_tag_type_EEELm3EES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, %bb.e, %bb.d, %bb.c
  %.pre2.i = phi ptr [ %.pre2.pre.i, %bb.c ], [ %i.aj, %bb.d ], [ %i.aj, %bb.e ], [ %i.aj, %_ZSt8_DestroyIPSt5arrayIN5draco9IndexTypeIjNS1_20PointIndex_tag_type_EEELm3EES5_EvT_S7_RSaIT0_E.exit.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  br label %_ZN5draco4Mesh7SetFaceENS_9IndexTypeIjNS_19FaceIndex_tag_type_EEERKSt5arrayINS1_IjNS_20PointIndex_tag_type_EEELm3EE.exit

_ZN5draco4Mesh7SetFaceENS_9IndexTypeIjNS_19FaceIndex_tag_type_EEERKSt5arrayINS1_IjNS_20PointIndex_tag_type_EEELm3EE.exit: ; preds = %bb.a, %_ZN5draco15IndexTypeVectorINS_9IndexTypeIjNS_19FaceIndex_tag_type_EEESt5arrayINS1_IjNS_20PointIndex_tag_type_EEELm3EEE6resizeEmRKS7_.exit.i
  %i.av = phi ptr [ %.pre2.i, %_ZN5draco15IndexTypeVectorINS_9IndexTypeIjNS_19FaceIndex_tag_type_EEESt5arrayINS1_IjNS_20PointIndex_tag_type_EEELm3EEE6resizeEmRKS7_.exit.i ], [ %i.aj, %bb.a ]
  %i.aw = zext i32 %i.af to i64
  %i.ax = getelementptr inbounds nuw [12 x i8], ptr %i.av, i64 %i.aw ; 3 uses
  store i32 %i.b, ptr %i.ax, align 4, !tbaa !53
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  store i32 %i.q, ptr %i.ay, align 4, !tbaa !53
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store i32 %i.x, ptr %i.az, align 4, !tbaa !53
  %i.ba = load ptr, ptr %0, align 8, !tbaa !33
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.f ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !35
  %i.bd = icmp slt i8 %i.bc, 0
  br i1 %i.bd, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN5draco4Mesh7SetFaceENS_9IndexTypeIjNS_19FaceIndex_tag_type_EEERKSt5arrayINS1_IjNS_20PointIndex_tag_type_EEELm3EE.exit
  store i8 2, ptr %i.bb, align 1, !tbaa !35
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN5draco4Mesh7SetFaceENS_9IndexTypeIjNS_19FaceIndex_tag_type_EEERKSt5arrayINS1_IjNS_20PointIndex_tag_type_EEELm3EE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5draco23TriangleSoupMeshBuilder8FinalizeEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !10   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(164) %i.b)
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !59
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !10   ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !12
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(164) %i.g)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !34   ; 2 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !33     ; 5 uses
  %i.n = ptrtoint ptr %i.l to i64                 ; 2 uses
  %i.o = ptrtoint ptr %i.m to i64                 ; 2 uses
  %i.p = sub i64 %i.n, %i.o                       ; 3 uses
  %.not = icmp eq ptr %i.l, %i.m
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %xtraiter = and i64 %i.p, 1
  %i.q = add i64 %i.n, -1
  %i.r = icmp eq i64 %i.q, %i.o
  br i1 %i.r, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.p, -2
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.05.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.av, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod8 = trunc i64 %i.p to i1
  tail call void @llvm.assume(i1 %lcmp.mod8)
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 %.05.epil.init
  %i.t = load i8, ptr %i.s, align 1, !tbaa !35    ; 2 uses
  %i.u = icmp sgt i8 %i.t, -1
  br i1 %i.u, label %bb.d, label %._crit_edge

bb.d:                                             ; preds = %.lr.ph.epil.preheader
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.w = zext nneg i8 %i.t to i32
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 168
  %sext.epil = shl i64 %.05.epil.init, 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !62
  %i.z = ashr exact i64 %sext.epil, 30
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.z
  store i32 %i.w, ptr %i.aa, align 4, !tbaa !65
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.d, %.lr.ph.epil.preheader, %bb.c
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !10
  store i64 %i.ab, ptr %0, align 8, !tbaa !10
  store ptr null, ptr %i.a, align 8, !tbaa !10
  br label %bb.h

.lr.ph:                                           ; preds = %bb.g, %.lr.ph.preheader.new
  %.05 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.av, %bb.g ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.g ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 %.05
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !35  ; 2 uses
  %i.ae = icmp sgt i8 %i.ad, -1
  br i1 %i.ae, label %bb.e, label %.lr.ph.1

bb.e:                                             ; preds = %.lr.ph
  %i.af = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.ag = zext nneg i8 %i.ad to i32
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 168
  %sext = shl i64 %.05, 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !62
  %i.aj = ashr exact i64 %sext, 30
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.aj
  store i32 %i.ag, ptr %i.ak, align 4, !tbaa !65
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.e
  %i.al = or disjoint i64 %.05, 1                 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !35  ; 2 uses
  %i.ao = icmp sgt i8 %i.an, -1
  br i1 %i.ao, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.1
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.aq = zext nneg i8 %i.an to i32
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 168
  %sext.1 = shl i64 %i.al, 32
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !62
  %i.at = ashr exact i64 %sext.1, 30
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.at
  store i32 %i.aq, ptr %i.au, align 4, !tbaa !65
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.1
  %i.av = add nuw i64 %.05, 2                     ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !57

bb.h:                                             ; preds = %._crit_edge, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5draco23TriangleSoupMeshBuilder20SetAttributeUniqueIdEij(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = sext i32 %1 to i64
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !38
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.d
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !40
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 60
  store i32 %2, ptr %i.h, align 4, !tbaa !66
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt5arrayIN5draco9IndexTypeIjNS1_20PointIndex_tag_type_EEELm3EESaIS5_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS5_S7_EEmRKS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 4 dereferenceable(12) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPSt5arrayIN5draco9IndexTypeIjNS1_20PointIndex_tag_type_EEELm3EES5_EvT_S7_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !74
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !15   ; 14 uses
  %i.e = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 12
  %.not65 = icmp ult i64 %i.h, %2
  br i1 %.not65, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %3, align 4, !tbaa !53     ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !53   ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = load i32, ptr %i.l, align 4, !tbaa !53   ; 7 uses
  %i.n = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.o = sub i64 %i.f, %i.n                       ; 3 uses
  %i.p = sdiv exact i64 %i.o, 12                  ; 3 uses
  %i.q = icmp ugt i64 %i.p, %2
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.idx = mul i64 %2, -12                         ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %i.d, i64 %.idx ; 3 uses
  %.not11.i.i.i.i.i = icmp eq i64 %.idx, 0
  br i1 %.not11.i.i.i.i.i, label %_ZSt22__uninitialized_move_aIPSt5arrayIN5draco9IndexTypeIjNS1_20PointIndex_tag_type_EEELm3EES6_SaIS5_EET0_T_S9_S8_RT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i ], [ %i.d, %bb.d ] ; 4 uses
  %.sroa.08.012.i.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i ], [ %i.r, %bb.d ] ; 4 uses
  %i.s = load i32, ptr %.sroa.08.012.i.i.i.i.i, align 4, !tbaa !53
  store i32 %i.s, ptr %.013.i.i.i.i.i, align 4, !tbaa !53
  %i.t = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 4
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !53
  store i32 %i.v, ptr %i.t, align 4, !tbaa !53
  %i.w = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 8
  %i.y = load i32, ptr %i.x, align 4, !tbaa !53
  store i32 %i.y, ptr %i.w, align 4, !tbaa !53
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 12 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 12
  %.not.i.i.i.i.i = icmp eq ptr %i.z, %i.d
  br i1 %.not.i.i.i.i.i, label %_ZSt22__uninitialized_move_aIPSt5arrayIN5draco9IndexTypeIjNS1_20PointIndex_tag_type_EEELm3EES6_SaIS5_EET0_T_S9_S8_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !67

_ZSt22__uninitialized_move_aIPSt5arrayIN5draco9IndexTypeIjNS1_20PointIndex_tag_type_EEELm3EES6_SaIS5_EET0_T_S9_S8_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i, %bb.d
  %i.ab = getelementptr inbounds nuw [12 x i8], ptr %i.d, i64 %2
  store ptr %i.ab, ptr %i.c, align 8, !tbaa !15
  %i.ac = ptrtoint ptr %i.r to i64
  %i.ad = sub i64 %i.ac, %i.n                     ; 2 uses
  %i.ae = icmp sgt i64 %i.ad, 0
  br i1 %i.ae, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt13move_backwardIPSt5arrayIN5draco9IndexTypeIjNS1_20PointIndex_tag_type_EEELm3EES6_ET0_T_S8_S7_.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZSt22__uninitialized_move_aIPSt5arrayIN5draco9IndexTypeIjNS1_20PointIndex_tag_type_EEELm3EES6_SaIS5_EET0_T_S9_S8_RT1_.exit
  %i.af = udiv exact i64 %i.ad, 12
  br label %.lr.ph.i.i.i.i.i69

.lr.ph.i.i.i.i.i69:                               ; preds = %.lr.ph.i.i.i.i.i69, %.lr.ph.preheader.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.ap, %.lr.ph.i.i.i.i.i69 ], [ %i.af, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i69 ], [ %i.d, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  %.078.i.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i69 ], [ %i.r, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  %i.ag = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -12 ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -12 ; 2 uses
  %i.ai = load i32, ptr %i.ag, align 4, !tbaa !53
  store i32 %i.ai, ptr %i.ah, align 4, !tbaa !53
  %i.aj = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -8
  %i.ak = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -8
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !53
  store i32 %i.al, ptr %i.aj, align 4, !tbaa !53
  %i.am = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -4
  %i.an = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !53
  store i32 %i.ao, ptr %i.am, align 4, !tbaa !53
  %i.ap = add nsw i64 %.010.i.i.i.i.i, -1
  %i.aq = icmp samesign ugt i64 %.010.i.i.i.i.i, 1
  br i1 %i.aq, label %.lr.ph.i.i.i.i.i69, label %_ZSt13move_backwardIPSt5arrayIN5draco9IndexTypeIjNS1_20PointIndex_tag_type_EEELm3EES6_ET0_T_S8_S7_.exit, !llvm.loop !68

_ZSt13move_backwardIPSt5arrayIN5draco9IndexTypeIjNS1_20PointIndex_tag_type_EEELm3EES6_ET0_T_S8_S7_.exit: ; preds = %.lr.ph.i.i.i.i.i69, %_ZSt22__uninitialized_move_aIPSt5arrayIN5draco9IndexTypeIjNS1_20PointIndex_tag_type_EEELm3EES6_SaIS5_EET0_T_S9_S8_RT1_.exit
  %.idx116 = mul nuw nsw i64 %2, 12
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 %.idx116
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt13move_backwardIPSt5arrayIN5draco9IndexTypeIjNS1_20PointIndex_tag_type_EEELm3EES6_ET0_T_S8_S7_.exit, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i ], [ %1, %_ZSt13move_backwardIPSt5arrayIN5draco9IndexTypeIjNS1_20PointIndex_tag_type_EEELm3EES6_ET0_T_S8_S7_.exit ] ; 4 uses
  store i32 %i.i, ptr %.06.i.i.i, align 4, !tbaa !53
  %i.as = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 4
  store i32 %i.k, ptr %i.as, align 4, !tbaa !53
  %i.at = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  store i32 %i.m, ptr %i.at, align 4, !tbaa !53
  %i.au = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 12 ; 2 uses
  %.not.i.i.i.7 = icmp eq ptr %i.au, %i.ar
  br i1 %.not.i.i.i.7, label %_ZSt4fillIPSt5arrayIN5draco9IndexTypeIjNS1_20PointIndex_tag_type_EEELm3EES5_EvT_S7_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !69

bb.e:                                             ; preds = %bb.c
  %i.av = sub nuw i64 %2, %i.p                    ; 4 uses
  %.not12.i.i.i.i = icmp eq i64 %i.av, 0
  br i1 %.not12.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPSt5arrayIN5draco9IndexTypeIjNS1_20PointIndex_tag_type_EEELm3EEmS5_S5_ET_S7_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.e
  %xtraiter = and i64 %i.av, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.014.i.i.i.i.prol = phi ptr [ %i.az, %.lr.ph.i.i.i.i.prol ], [ %i.d, %.lr.ph.i.i.i.i.preheader ] ; 4 uses
  %.01113.i.i.i.i.prol = phi i64 [ %i.ay, %.lr.ph.i.i.i.i.prol ], [ %i.av, %.lr.ph.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  store i32 %i.i, ptr %.014.i.i.i.i.prol, align 4, !tbaa !53
  %i.aw = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.prol, i64 4
  store i32 %i.k, ptr %i.aw, align 4, !tbaa !53
  %i.ax = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.prol, i64 8
  store i32 %i.m, ptr %i.ax, align 4, !tbaa !53
  %i.ay = add i64 %.01113.i.i.i.i.prol, -1        ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.prol, i64 12 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !70

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.lcssa140.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.preheader ], [ %i.az, %.lr.ph.i.i.i.i.prol ]
  %.014.i.i.i.i.unr = phi ptr [ %i.d, %.lr.ph.i.i.i.i.preheader ], [ %i.az, %.lr.ph.i.i.i.i.prol ]
  %.01113.i.i.i.i.unr = phi i64 [ %i.av, %.lr.ph.i.i.i.i.preheader ], [ %i.ay, %.lr.ph.i.i.i.i.prol ]
  %i.ba = sub i64 %i.p, %2
  %i.bb = icmp ugt i64 %i.ba, -4
  br i1 %i.bb, label %_ZSt24__uninitialized_fill_n_aIPSt5arrayIN5draco9IndexTypeIjNS1_20PointIndex_tag_type_EEELm3EEmS5_S5_ET_S7_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %i.bo, %.lr.ph.i.i.i.i ], [ %.014.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 13 uses
  %.01113.i.i.i.i = phi i64 [ %i.bn, %.lr.ph.i.i.i.i ], [ %.01113.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  store i32 %i.i, ptr %.014.i.i.i.i, align 4, !tbaa !53
  %i.bc = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 4
  store i32 %i.k, ptr %i.bc, align 4, !tbaa !53
  %i.bd = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 8
  store i32 %i.m, ptr %i.bd, align 4, !tbaa !53
  %i.be = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 12
  store i32 %i.i, ptr %i.be, align 4, !tbaa !53
  %i.bf = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 16
  store i32 %i.k, ptr %i.bf, align 4, !tbaa !53
  %i.bg = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 20
  store i32 %i.m, ptr %i.bg, align 4, !tbaa !53
  %i.bh = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 24
  store i32 %i.i, ptr %i.bh, align 4, !tbaa !53
  %i.bi = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 28
  store i32 %i.k, ptr %i.bi, align 4, !tbaa !53
  %i.bj = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 32
  store i32 %i.m, ptr %i.bj, align 4, !tbaa !53
  %i.bk = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 36
  store i32 %i.i, ptr %i.bk, align 4, !tbaa !53
  %i.bl = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 40
  store i32 %i.k, ptr %i.bl, align 4, !tbaa !53
  %i.bm = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 44
  store i32 %i.m, ptr %i.bm, align 4, !tbaa !53
  %i.bn = add i64 %.01113.i.i.i.i, -4             ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i.3 = icmp eq i64 %i.bn, 0
  br i1 %.not.i.i.i.i.3, label %_ZSt24__uninitialized_fill_n_aIPSt5arrayIN5draco9IndexTypeIjNS1_20PointIndex_tag_type_EEELm3EEmS5_S5_ET_S7_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !71

_ZSt24__uninitialized_fill_n_aIPSt5arrayIN5draco9IndexTypeIjNS1_20PointIndex_tag_type_EEELm3EEmS5_S5_ET_S7_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %bb.e
  %.0.lcssa.i.i.i.i = phi ptr [ %i.d, %bb.e ], [ %.lcssa140.unr, %.lr.ph.i.i.i.i.prol.loopexit ], [ %i.bo, %.lr.ph.i.i.i.i ] ; 3 uses
  %.not11.i.i.i.i.i70 = icmp eq ptr %1, %i.d
  br i1 %.not11.i.i.i.i.i70, label %_ZSt22__uninitialized_move_aIPSt5arrayIN5draco9IndexTypeIjNS1_20PointIndex_tag_type_EEELm3EES6_SaIS5_EET0_T_S9_S8_RT1_.exit76.thread, label %.lr.ph.i.i.i.i.i71

_ZSt22__uninitialized_move_aIPSt5arrayIN5draco9IndexTypeIjNS1_20PointIndex_tag_type_EEELm3EES6_SaIS5_EET0_T_S9_S8_RT1_.exit76.thread: ; preds = %_ZSt24__uninitialized_fill_n_aIPSt5arrayIN5draco9IndexTypeIjNS1_20PointIndex_tag_type_EEELm3EEmS5_S5_ET_S7_T0_RKT1_RSaIT2_E.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 %i.o
  store ptr %i.bp, ptr %i.c, align 8, !tbaa !15
  br label %_ZSt4fillIPSt5arrayIN5draco9IndexTypeIjNS1_20PointIndex_tag_type_EEELm3EES5_EvT_S7_RKT0_.exit

.lr.ph.i.i.i.i.i71:                               ; preds = %_ZSt24__uninitialized_fill_n_aIPSt5arrayIN5draco9IndexTypeIjNS1_20PointIndex_tag_type_EEELm3EEmS5_S5_ET_S7_T0_RKT1_RSaIT2_E.exit, %.lr.ph.i.i.i.i.i71
  %.013.i.i.i.i.i72 = phi ptr [ %i.by, %.lr.ph.i.i.i.i.i71 ], [ %.0.lcssa.i.i.i.i, %_ZSt24__uninitialized_fill_n_aIPSt5arrayIN5draco9IndexTypeIjNS1_20PointIndex_tag_type_EEELm3EEmS5_S5_ET_S7_T0_RKT1_RSaIT2_E.exit ] ; 4 uses
  %.sroa.08.012.i.i.i.i.i73 = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i71 ], [ %1, %_ZSt24__uninitialized_fill_n_aIPSt5arrayIN5draco9IndexTypeIjNS1_20PointIndex_tag_type_EEELm3EEmS5_S5_ET_S7_T0_RKT1_RSaIT2_E.exit ] ; 4 uses
  %i.bq = load i32, ptr %.sroa.08.012.i.i.i.i.i73, align 4, !tbaa !53
  store i32 %i.bq, ptr %.013.i.i.i.i.i72, align 4, !tbaa !53
  %i.br = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i72, i64 4
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i73, i64 4
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !53
  store i32 %i.bt, ptr %i.br, align 4, !tbaa !53
  %i.bu = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i72, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i73, i64 8
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !53
  store i32 %i.bw, ptr %i.bu, align 4, !tbaa !53
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i73, i64 12 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i72, i64 12
  %.not.i.i.i.i.i74 = icmp eq ptr %i.bx, %i.d
  br i1 %.not.i.i.i.i.i74, label %.lr.ph.i.i.i78, label %.lr.ph.i.i.i.i.i71, !llvm.loop !67

.lr.ph.i.i.i78:                                   ; preds = %.lr.ph.i.i.i.i.i71
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 %i.o
  store ptr %i.bz, ptr %i.c, align 8, !tbaa !15
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.i.i78
  %.06.i.i.i79 = phi ptr [ %1, %.lr.ph.i.i.i78 ], [ %i.cc, %bb.f ] ; 4 uses
  store i32 %i.i, ptr %.06.i.i.i79, align 4, !tbaa !53
  %i.ca = getelementptr inbounds nuw i8, ptr %.06.i.i.i79, i64 4
  store i32 %i.k, ptr %i.ca, align 4, !tbaa !53
  %i.cb = getelementptr inbounds nuw i8, ptr %.06.i.i.i79, i64 8
  store i32 %i.m, ptr %i.cb, align 4, !tbaa !53
  %i.cc = getelementptr inbounds nuw i8, ptr %.06.i.i.i79, i64 12 ; 2 uses
  %.not.i.i.i80 = icmp eq ptr %i.cc, %i.d
  br i1 %.not.i.i.i80, label %_ZSt4fillIPSt5arrayIN5draco9IndexTypeIjNS1_20PointIndex_tag_type_EEELm3EES5_EvT_S7_RKT0_.exit, label %bb.f, !llvm.loop !69

bb.g:                                             ; preds = %bb.b
  %i.cd = load ptr, ptr %0, align 8, !tbaa !16    ; 5 uses
  %i.ce = ptrtoint ptr %i.cd to i64               ; 3 uses
  %i.cf = sub i64 %i.f, %i.ce
  %i.cg = sdiv exact i64 %i.cf, 12                ; 4 uses
  %i.ch = sub nsw i64 768614336404564650, %i.cg
  %i.ci = icmp ult i64 %i.ch, %2
  br i1 %i.ci, label %bb.h, label %_ZNKSt6vectorISt5arrayIN5draco9IndexTypeIjNS1_20PointIndex_tag_type_EEELm3EESaIS5_EE12_M_check_lenEmPKc.exit

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #13
  unreachable

_ZNKSt6vectorISt5arrayIN5draco9IndexTypeIjNS1_20PointIndex_tag_type_EEELm3EESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.g
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.cg, i64 %2)
  %i.cj = add nsw i64 %.sroa.speculated.i, %i.cg  ; 2 uses
  %i.ck = icmp ult i64 %i.cj, %i.cg
  %i.cl = tail call i64 @llvm.umin.i64(i64 %i.cj, i64 768614336404564650)
  %i.cm = select i1 %i.ck, i64 768614336404564650, i64 %i.cl ; 3 uses
  %i.cn = ptrtoint ptr %1 to i64
  %i.co = sub i64 %i.cn, %i.ce
  %.not.i = icmp eq i64 %i.cm, 0
  br i1 %.not.i, label %.lr.ph.i.i.i.i83, label %bb.i

bb.i:                                             ; preds = %_ZNKSt6vectorISt5arrayIN5draco9IndexTypeIjNS1_20PointIndex_tag_type_EEELm3EESaIS5_EE12_M_check_lenEmPKc.exit
  %i.cp = mul nuw nsw i64 %i.cm, 12
  %i.cq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cp) #10
  br label %.lr.ph.i.i.i.i83

.lr.ph.i.i.i.i83:                                 ; preds = %bb.i, %_ZNKSt6vectorISt5arrayIN5draco9IndexTypeIjNS1_20PointIndex_tag_type_EEELm3EESaIS5_EE12_M_check_lenEmPKc.exit
  %i.cr = phi ptr [ %i.cq, %bb.i ], [ null, %_ZNKSt6vectorISt5arrayIN5draco9IndexTypeIjNS1_20PointIndex_tag_type_EEELm3EESaIS5_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.co ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cu = load <2 x i32>, ptr %3, align 4, !tbaa !53 ; 9 uses
  %i.cv = load i32, ptr %i.ct, align 4, !tbaa !53 ; 9 uses
  %xtraiter144 = and i64 %2, 7                    ; 2 uses
  %lcmp.mod145.not = icmp eq i64 %xtraiter144, 0
  br i1 %lcmp.mod145.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i.i.i.i83, %.prol.preheader
  %.014.i.i.i.i84.prol = phi ptr [ %i.cy, %.prol.preheader ], [ %i.cs, %.lr.ph.i.i.i.i83 ] ; 3 uses
  %.01113.i.i.i.i85.prol = phi i64 [ %i.cx, %.prol.preheader ], [ %2, %.lr.ph.i.i.i.i83 ]
  %prol.iter146 = phi i64 [ %prol.iter146.next, %.prol.preheader ], [ 0, %.lr.ph.i.i.i.i83 ]
  store <2 x i32> %i.cu, ptr %.014.i.i.i.i84.prol, align 4, !tbaa !53
  %i.cw = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i84.prol, i64 8
  store i32 %i.cv, ptr %i.cw, align 4, !tbaa !53
  %i.cx = add i64 %.01113.i.i.i.i85.prol, -1      ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i84.prol, i64 12 ; 2 uses
  %prol.iter146.next = add i64 %prol.iter146, 1   ; 2 uses
  %prol.iter146.cmp.not = icmp eq i64 %prol.iter146.next, %xtraiter144
  br i1 %prol.iter146.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !72

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i.i.i.i83
  %.014.i.i.i.i84.unr = phi ptr [ %i.cs, %.lr.ph.i.i.i.i83 ], [ %i.cy, %.prol.preheader ]
  %.01113.i.i.i.i85.unr = phi i64 [ %2, %.lr.ph.i.i.i.i83 ], [ %i.cx, %.prol.preheader ]
  %i.cz = icmp ult i64 %2, 8
  br i1 %i.cz, label %_ZSt24__uninitialized_fill_n_aIPSt5arrayIN5draco9IndexTypeIjNS1_20PointIndex_tag_type_EEELm3EEmS5_S5_ET_S7_T0_RKT1_RSaIT2_E.exit88, label %.lr.ph.i.i.i.i83.new

.lr.ph.i.i.i.i83.new:                             ; preds = %.prol.loopexit, %.lr.ph.i.i.i.i83.new
  %.014.i.i.i.i84 = phi ptr [ %i.dq, %.lr.ph.i.i.i.i83.new ], [ %.014.i.i.i.i84.unr, %.prol.loopexit ] ; 17 uses
  %.01113.i.i.i.i85 = phi i64 [ %i.dp, %.lr.ph.i.i.i.i83.new ], [ %.01113.i.i.i.i85.unr, %.prol.loopexit ]
  store <2 x i32> %i.cu, ptr %.014.i.i.i.i84, align 4, !tbaa !53
  %i.da = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i84, i64 8
  store i32 %i.cv, ptr %i.da, align 4, !tbaa !53
  %i.db = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i84, i64 12
  store <2 x i32> %i.cu, ptr %i.db, align 4, !tbaa !53
  %i.dc = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i84, i64 20
  store i32 %i.cv, ptr %i.dc, align 4, !tbaa !53
  %i.dd = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i84, i64 24
  store <2 x i32> %i.cu, ptr %i.dd, align 4, !tbaa !53
  %i.de = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i84, i64 32
  store i32 %i.cv, ptr %i.de, align 4, !tbaa !53
  %i.df = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i84, i64 36
  store <2 x i32> %i.cu, ptr %i.df, align 4, !tbaa !53
  %i.dg = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i84, i64 44
  store i32 %i.cv, ptr %i.dg, align 4, !tbaa !53
  %i.dh = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i84, i64 48
  store <2 x i32> %i.cu, ptr %i.dh, align 4, !tbaa !53
  %i.di = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i84, i64 56
  store i32 %i.cv, ptr %i.di, align 4, !tbaa !53
  %i.dj = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i84, i64 60
  store <2 x i32> %i.cu, ptr %i.dj, align 4, !tbaa !53
  %i.dk = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i84, i64 68
  store i32 %i.cv, ptr %i.dk, align 4, !tbaa !53
  %i.dl = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i84, i64 72
  store <2 x i32> %i.cu, ptr %i.dl, align 4, !tbaa !53
  %i.dm = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i84, i64 80
  store i32 %i.cv, ptr %i.dm, align 4, !tbaa !53
  %i.dn = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i84, i64 84
  store <2 x i32> %i.cu, ptr %i.dn, align 4, !tbaa !53
  %i.do = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i84, i64 92
  store i32 %i.cv, ptr %i.do, align 4, !tbaa !53
  %i.dp = add i64 %.01113.i.i.i.i85, -8           ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i84, i64 96
  %.not.i.i.i.i86.7 = icmp eq i64 %i.dp, 0
  br i1 %.not.i.i.i.i86.7, label %_ZSt24__uninitialized_fill_n_aIPSt5arrayIN5draco9IndexTypeIjNS1_20PointIndex_tag_type_EEELm3EEmS5_S5_ET_S7_T0_RKT1_RSaIT2_E.exit88, label %.lr.ph.i.i.i.i83.new, !llvm.loop !71

_ZSt24__uninitialized_fill_n_aIPSt5arrayIN5draco9IndexTypeIjNS1_20PointIndex_tag_type_EEELm3EEmS5_S5_ET_S7_T0_RKT1_RSaIT2_E.exit88: ; preds = %.lr.ph.i.i.i.i83.new, %.prol.loopexit
  %.not13.i.i.i.i.i = icmp eq ptr %i.cd, %1
  br i1 %.not13.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt5arrayIN5draco9IndexTypeIjNS1_20PointIndex_tag_type_EEELm3EES6_SaIS5_EET0_T_S9_S8_RT1_.exit, label %.lr.ph.i.i.i.i.i89

.lr.ph.i.i.i.i.i89:                               ; preds = %_ZSt24__uninitialized_fill_n_aIPSt5arrayIN5draco9IndexTypeIjNS1_20PointIndex_tag_type_EEELm3EEmS5_S5_ET_S7_T0_RKT1_RSaIT2_E.exit88, %.lr.ph.i.i.i.i.i89
  %.015.i.i.i.i.i = phi ptr [ %i.dz, %.lr.ph.i.i.i.i.i89 ], [ %i.cr, %_ZSt24__uninitialized_fill_n_aIPSt5arrayIN5draco9IndexTypeIjNS1_20PointIndex_tag_type_EEELm3EEmS5_S5_ET_S7_T0_RKT1_RSaIT2_E.exit88 ] ; 4 uses
  %.01214.i.i.i.i.i = phi ptr [ %i.dy, %.lr.ph.i.i.i.i.i89 ], [ %i.cd, %_ZSt24__uninitialized_fill_n_aIPSt5arrayIN5draco9IndexTypeIjNS1_20PointIndex_tag_type_EEELm3EEmS5_S5_ET_S7_T0_RKT1_RSaIT2_E.exit88 ] ; 4 uses
  %i.dr = load i32, ptr %.01214.i.i.i.i.i, align 4, !tbaa !53
  store i32 %i.dr, ptr %.015.i.i.i.i.i, align 4, !tbaa !53
  %i.ds = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 4
  %i.dt = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 4
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !53
  store i32 %i.du, ptr %i.ds, align 4, !tbaa !53
  %i.dv = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 8
  %i.dw = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 8
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !53
  store i32 %i.dx, ptr %i.dv, align 4, !tbaa !53
  %i.dy = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 12 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 12 ; 2 uses
  %.not.i.i.i.i.i90 = icmp eq ptr %i.dy, %1
  br i1 %.not.i.i.i.i.i90, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt5arrayIN5draco9IndexTypeIjNS1_20PointIndex_tag_type_EEELm3EES6_SaIS5_EET0_T_S9_S8_RT1_.exit, label %.lr.ph.i.i.i.i.i89, !llvm.loop !73

_ZSt34__uninitialized_move_if_noexcept_aIPSt5arrayIN5draco9IndexTypeIjNS1_20PointIndex_tag_type_EEELm3EES6_SaIS5_EET0_T_S9_S8_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i89, %_ZSt24__uninitialized_fill_n_aIPSt5arrayIN5draco9IndexTypeIjNS1_20PointIndex_tag_type_EEELm3EEmS5_S5_ET_S7_T0_RKT1_RSaIT2_E.exit88
  %.0.lcssa.i.i.i.i.i91 = phi ptr [ %i.cr, %_ZSt24__uninitialized_fill_n_aIPSt5arrayIN5draco9IndexTypeIjNS1_20PointIndex_tag_type_EEELm3EEmS5_S5_ET_S7_T0_RKT1_RSaIT2_E.exit88 ], [ %i.dz, %.lr.ph.i.i.i.i.i89 ]
  %i.ea = getelementptr inbounds nuw [12 x i8], ptr %.0.lcssa.i.i.i.i.i91, i64 %2 ; 2 uses
  %.not13.i.i.i.i.i92 = icmp eq ptr %1, %i.d
  br i1 %.not13.i.i.i.i.i92, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt5arrayIN5draco9IndexTypeIjNS1_20PointIndex_tag_type_EEELm3EES6_SaIS5_EET0_T_S9_S8_RT1_.exit98, label %.lr.ph.i.i.i.i.i93

.lr.ph.i.i.i.i.i93:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt5arrayIN5draco9IndexTypeIjNS1_20PointIndex_tag_type_EEELm3EES6_SaIS5_EET0_T_S9_S8_RT1_.exit, %.lr.ph.i.i.i.i.i93
  %.015.i.i.i.i.i94 = phi ptr [ %i.ej, %.lr.ph.i.i.i.i.i93 ], [ %i.ea, %_ZSt34__uninitialized_move_if_noexcept_aIPSt5arrayIN5draco9IndexTypeIjNS1_20PointIndex_tag_type_EEELm3EES6_SaIS5_EET0_T_S9_S8_RT1_.exit ] ; 4 uses
  %.01214.i.i.i.i.i95 = phi ptr [ %i.ei, %.lr.ph.i.i.i.i.i93 ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIPSt5arrayIN5draco9IndexTypeIjNS1_20PointIndex_tag_type_EEELm3EES6_SaIS5_EET0_T_S9_S8_RT1_.exit ] ; 4 uses
  %i.eb = load i32, ptr %.01214.i.i.i.i.i95, align 4, !tbaa !53
  store i32 %i.eb, ptr %.015.i.i.i.i.i94, align 4, !tbaa !53
  %i.ec = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i94, i64 4
  %i.ed = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i95, i64 4
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !53
  store i32 %i.ee, ptr %i.ec, align 4, !tbaa !53
  %i.ef = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i94, i64 8
  %i.eg = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i95, i64 8
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !53
  store i32 %i.eh, ptr %i.ef, align 4, !tbaa !53
  %i.ei = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i95, i64 12 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i94, i64 12 ; 2 uses
  %.not.i.i.i.i.i96 = icmp eq ptr %i.ei, %i.d
  br i1 %.not.i.i.i.i.i96, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt5arrayIN5draco9IndexTypeIjNS1_20PointIndex_tag_type_EEELm3EES6_SaIS5_EET0_T_S9_S8_RT1_.exit98, label %.lr.ph.i.i.i.i.i93, !llvm.loop !73

_ZSt34__uninitialized_move_if_noexcept_aIPSt5arrayIN5draco9IndexTypeIjNS1_20PointIndex_tag_type_EEELm3EES6_SaIS5_EET0_T_S9_S8_RT1_.exit98: ; preds = %.lr.ph.i.i.i.i.i93, %_ZSt34__uninitialized_move_if_noexcept_aIPSt5arrayIN5draco9IndexTypeIjNS1_20PointIndex_tag_type_EEELm3EES6_SaIS5_EET0_T_S9_S8_RT1_.exit
  %.0.lcssa.i.i.i.i.i97 = phi ptr [ %i.ea, %_ZSt34__uninitialized_move_if_noexcept_aIPSt5arrayIN5draco9IndexTypeIjNS1_20PointIndex_tag_type_EEELm3EES6_SaIS5_EET0_T_S9_S8_RT1_.exit ], [ %i.ej, %.lr.ph.i.i.i.i.i93 ]
  %.not.i99 = icmp eq ptr %i.cd, null
  br i1 %.not.i99, label %_ZNSt12_Vector_baseISt5arrayIN5draco9IndexTypeIjNS1_20PointIndex_tag_type_EEELm3EESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.j

bb.j:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt5arrayIN5draco9IndexTypeIjNS1_20PointIndex_tag_type_EEELm3EES6_SaIS5_EET0_T_S9_S8_RT1_.exit98
  %i.ek = sub i64 %i.e, %i.ce
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cd, i64 noundef %i.ek) #12
  br label %_ZNSt12_Vector_baseISt5arrayIN5draco9IndexTypeIjNS1_20PointIndex_tag_type_EEELm3EESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseISt5arrayIN5draco9IndexTypeIjNS1_20PointIndex_tag_type_EEELm3EESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt5arrayIN5draco9IndexTypeIjNS1_20PointIndex_tag_type_EEELm3EES6_SaIS5_EET0_T_S9_S8_RT1_.exit98, %bb.j
  store ptr %i.cr, ptr %0, align 8, !tbaa !16
  store ptr %.0.lcssa.i.i.i.i.i97, ptr %i.c, align 8, !tbaa !15
  %i.el = getelementptr inbounds nuw [12 x i8], ptr %i.cr, i64 %i.cm
  store ptr %i.el, ptr %i.a, align 8, !tbaa !74
  br label %_ZSt4fillIPSt5arrayIN5draco9IndexTypeIjNS1_20PointIndex_tag_type_EEELm3EES5_EvT_S7_RKT0_.exit

_ZSt4fillIPSt5arrayIN5draco9IndexTypeIjNS1_20PointIndex_tag_type_EEELm3EES5_EvT_S7_RKT0_.exit: ; preds = %bb.f, %.lr.ph.i.i.i, %_ZSt22__uninitialized_move_aIPSt5arrayIN5draco9IndexTypeIjNS1_20PointIndex_tag_type_EEELm3EES6_SaIS5_EET0_T_S9_S8_RT1_.exit76.thread, %_ZNSt12_Vector_baseISt5arrayIN5draco9IndexTypeIjNS1_20PointIndex_tag_type_EEELm3EESaIS5_EE13_M_deallocateEPS5_m.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { builtin allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) }
attributes #11 = { nounwind }
attributes #12 = { builtin nounwind }
attributes #13 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 _ZTSN5draco4MeshE", !8, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"vtable pointer", !3, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"p1 _ZTSSt5arrayIN5draco9IndexTypeIjNS0_20PointIndex_tag_type_EEELm3EE", !8, i64 0}
!14 = !{!"_ZTSNSt12_Vector_baseISt5arrayIN5draco9IndexTypeIjNS1_20PointIndex_tag_type_EEELm3EESaIS5_EE17_Vector_impl_dataE", !13, i64 0, !13, i64 8, !13, i64 16}
!15 = !{!14, !13, i64 8}
!16 = !{!14, !13, i64 0}
!17 = !{!"p1 _ZTSN5draco16GeometryMetadataE", !8, i64 0}
!18 = !{!"_ZTSSt10_Head_baseILm0EPN5draco16GeometryMetadataELb0EE", !17, i64 0}
!19 = !{!"_ZTSSt11_Tuple_implILm0EJPN5draco16GeometryMetadataESt14default_deleteIS1_EEE", !18, i64 0}
!20 = !{!"_ZTSSt5tupleIJPN5draco16GeometryMetadataESt14default_deleteIS1_EEE", !19, i64 0}
!21 = !{!"_ZTSSt15__uniq_ptr_implIN5draco16GeometryMetadataESt14default_deleteIS1_EE", !20, i64 0}
!22 = !{!"_ZTSSt15__uniq_ptr_dataIN5draco16GeometryMetadataESt14default_deleteIS1_ELb1ELb1EE", !21, i64 0}
!23 = !{!"_ZTSSt10unique_ptrIN5draco16GeometryMetadataESt14default_deleteIS1_EE", !22, i64 0}
!24 = !{!"p1 _ZTSSt10unique_ptrIN5draco14PointAttributeESt14default_deleteIS1_EE", !8, i64 0}
!25 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN5draco14PointAttributeESt14default_deleteIS2_EESaIS5_EE17_Vector_impl_dataE", !24, i64 0, !24, i64 8, !24, i64 16}
!26 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN5draco14PointAttributeESt14default_deleteIS2_EESaIS5_EE12_Vector_implE", !25, i64 0}
!27 = !{!"_ZTSSt12_Vector_baseISt10unique_ptrIN5draco14PointAttributeESt14default_deleteIS2_EESaIS5_EE", !26, i64 0}
!28 = !{!"_ZTSSt6vectorISt10unique_ptrIN5draco14PointAttributeESt14default_deleteIS2_EESaIS5_EE", !27, i64 0}
!29 = !{!"_ZTSN5draco10PointCloudE", !23, i64 8, !28, i64 16, !4, i64 40, !5, i64 160}
!30 = !{!29, !5, i64 160}
!31 = !{!"p1 omnipotent char", !8, i64 0}
!32 = !{!"_ZTSNSt12_Vector_baseIaSaIaEE17_Vector_impl_dataE", !31, i64 0, !31, i64 8, !31, i64 16}
!33 = !{!32, !31, i64 0}
!34 = !{!32, !31, i64 8}
!35 = !{!4, !4, i64 0}
!36 = !{!"_ZTSN5draco9IndexTypeIjNS_19FaceIndex_tag_type_EEE", !5, i64 0}
!37 = !{!36, !5, i64 0}
!38 = !{!25, !24, i64 0}
!39 = !{!"p1 _ZTSN5draco14PointAttributeE", !8, i64 0}
!40 = !{!39, !39, i64 0}
!41 = !{!"p1 _ZTSN5draco10DataBufferE", !8, i64 0}
!42 = !{!"long", !4, i64 0}
!43 = !{!"_ZTSN5draco20DataBufferDescriptorE", !42, i64 0, !42, i64 8}
!44 = !{!"_ZTSN5draco8DataTypeE", !4, i64 0}
!45 = !{!"bool", !4, i64 0}
!46 = !{!"_ZTSN5draco17GeometryAttribute4TypeE", !4, i64 0}
!47 = !{!"_ZTSN5draco17GeometryAttributeE", !41, i64 0, !43, i64 8, !4, i64 24, !44, i64 28, !45, i64 32, !42, i64 40, !42, i64 48, !46, i64 56, !5, i64 60}
!48 = !{!47, !42, i64 40}
!49 = !{!47, !41, i64 0}
!50 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataE", !31, i64 0, !31, i64 8, !31, i64 16}
!51 = !{!50, !31, i64 0}
!52 = !{!"_ZTSN5draco9IndexTypeIjNS_20PointIndex_tag_type_EEE", !5, i64 0}
!53 = !{!52, !5, i64 0}
!54 = !{!"llvm.loop.mustprogress"}
!55 = distinct !{null, null, null, null, null}
!56 = !{!32, !31, i64 16}
!57 = distinct !{!57, !54}
!58 = !{!"_ZTSSt10_Head_baseILm0EPN5draco4MeshELb0EE", !9, i64 0}
!59 = !{!58, !9, i64 0}
!60 = !{!"p1 _ZTSN5draco4Mesh13AttributeDataE", !8, i64 0}
!61 = !{!"_ZTSNSt12_Vector_baseIN5draco4Mesh13AttributeDataESaIS2_EE17_Vector_impl_dataE", !60, i64 0, !60, i64 8, !60, i64 16}
!62 = !{!61, !60, i64 0}
!63 = !{!"_ZTSN5draco24MeshAttributeElementTypeE", !4, i64 0}
!64 = !{!"_ZTSN5draco4Mesh13AttributeDataE", !63, i64 0}
!65 = !{!64, !63, i64 0}
!66 = !{!47, !5, i64 60}
!67 = distinct !{!67, !54}
!68 = distinct !{!68, !54}
!69 = distinct !{!69, !54}
!70 = distinct !{!70, !75}
!71 = distinct !{!71, !54}
!72 = distinct !{!72, !75}
!73 = distinct !{!73, !54}
!74 = !{!14, !13, i64 16}
!75 = !{!"llvm.loop.unroll.disable"}
end_hunk_0
