inline.NumInlined: 1926
inline.NumDeleted: 800
begin_hunk_0_@_ZN3re23DFA18WorkqToCachedStateEPNS0_5WorkqES2_j:bb.a
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ez, i64 4
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !101
  %i.ff = sext i32 %.8 to i64
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.ff
  %i.fh = add nsw i32 %.8, 1
  store i32 %i.fe, ptr %i.fg, align 4, !tbaa !3
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.8.1 = phi i32 [ %i.fh, %bb.ak ], [ %.8, %bb.aj ] ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.085191, i64 8 ; 2 uses
  %.not124.1 = icmp eq ptr %i.fi, %i.ds
  br i1 %.not124.1, label %.loopexit, label %.lr.ph194.new, !llvm.loop !137

.loopexit:                                        ; preds = %.prol.loopexit, %bb.al, %bb.ag, %_ZSt4sortIPiEvT_S1_.exit138
  %.9 = phi i32 [ %.6223, %_ZSt4sortIPiEvT_S1_.exit138 ], [ %i.dl, %bb.ag ], [ %.8.lcssa.unr, %.prol.loopexit ], [ %.8.1, %bb.al ]
  %i.fj = invoke noundef ptr @_ZN3re23DFA11CachedStateEPiij(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull %i.i, i32 noundef %.9, i32 noundef %.086.lcssa216221)
          to label %_ZN3re28PODArrayIiED2Ev.exit unwind label %bb.am

bb.am:                                            ; preds = %.loopexit
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %_ZN3re28PODArrayIiED2Ev.exit141

_ZN3re28PODArrayIiED2Ev.exit:                     ; preds = %_ZN3re24Prog4Inst6greedyEPS0_.exit.thread, %_ZN3re24Prog4Inst6greedyEPS0_.exit.peel, %_ZN3re24Prog4Inst6greedyEPS0_.exit.thread.peel, %.loopexit, %bb.w
  %.4 = phi ptr [ %i.fj, %.loopexit ], [ inttoptr (i64 1 to ptr), %bb.w ], [ inttoptr (i64 2 to ptr), %_ZN3re24Prog4Inst6greedyEPS0_.exit.peel ], [ inttoptr (i64 2 to ptr), %_ZN3re24Prog4Inst6greedyEPS0_.exit.thread.peel ], [ inttoptr (i64 2 to ptr), %_ZN3re24Prog4Inst6greedyEPS0_.exit.thread ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.h) #28
  ret ptr %.4

_ZN3re28PODArrayIiED2Ev.exit141:                  ; preds = %bb.am, %bb.af, %bb.ac
  %.pn128 = phi { ptr, i32 } [ %i.dc, %bb.ac ], [ %i.dk, %bb.af ], [ %i.fk, %bb.am ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.h) #28
  resume { ptr, i32 } %.pn128
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN3re23DFA11CachedStateEPiij(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.re2::DFA::State", align 8  ; 6 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  store ptr %1, ptr %4, align 8, !tbaa !92
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %2, ptr %i.c, align 8, !tbaa !3
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 %3, ptr %i.d, align 4, !tbaa !3
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store ptr %4, ptr %i.a, align 8, !tbaa !104
  %i.f = call { ptr, ptr } @_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPN3re23DFA5StateEEENS5_9StateHashENS5_10StateEqualESaIS7_EE4findIS7_EENSC_8iteratorERKS7_(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  %i.g = extractvalue { ptr, ptr } %i.f, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %.not41 = icmp eq ptr %i.g, null
  br i1 %.not41, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = extractvalue { ptr, ptr } %i.f, 1
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !104
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %0, align 8, !tbaa !9
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  %i.l = load i32, ptr %i.k, align 4, !tbaa !79   ; 3 uses
  %i.m = add nsw i32 %i.l, 1                      ; 5 uses
  %i.n = shl i32 %i.m, 3
  %i.o = add i32 %i.n, 16                         ; 3 uses
  %i.p = zext i32 %2 to i64
  %i.q = shl i32 %2, 2                            ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !38   ; 2 uses
  %i.t = add i32 %i.q, 18
  %i.u = add i32 %i.t, %i.o
  %i.v = sext i32 %i.u to i64                     ; 2 uses
  %i.w = icmp slt i64 %i.s, %i.v
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i64 -1, ptr %i.r, align 8, !tbaa !38
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.x = sub nsw i64 %i.s, %i.v
  store i64 %i.x, ptr %i.r, align 8, !tbaa !38
  %i.y = icmp slt i32 %i.o, 0
  br i1 %i.y, label %.noexc, label %_ZNSaIcE8allocateEm.exit, !prof !83

.noexc:                                           ; preds = %bb.e
  call void @_ZSt17__throw_bad_allocv() #27
  unreachable

_ZNSaIcE8allocateEm.exit:                         ; preds = %bb.e
  %i.z = zext nneg i32 %i.o to i64
  %i.aa = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #26 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  store ptr %i.aa, ptr %i.b, align 8, !tbaa !104
  %i.ab = icmp eq i32 %i.m, 0
  br i1 %i.ab, label %._crit_edge, label %.loopexit

.loopexit:                                        ; preds = %_ZNSaIcE8allocateEm.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ad = sext i32 %i.l to i64
  %i.ae = shl nsw i64 %i.ad, 3
  %i.af = add nsw i64 %i.ae, 8
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ac, i8 0, i64 %i.af, i1 false), !tbaa !138
  %.not42 = icmp slt i32 %i.l, 0
  br i1 %.not42, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %.loopexit
  %wide.trip.count = zext nneg i32 %i.m to i64    ; 6 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 3 uses
  %min.iters.check = icmp ult i32 %i.m, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check49 = icmp ult i32 %i.m, 16
  br i1 %min.iters.check49, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %index ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 96
  store <4 x ptr> splat (ptr null), ptr %i.ah, align 8, !tbaa !138
  store <4 x ptr> splat (ptr null), ptr %i.ai, align 8, !tbaa !138
  store <4 x ptr> splat (ptr null), ptr %i.aj, align 8, !tbaa !138
  store <4 x ptr> splat (ptr null), ptr %i.ak, align 8, !tbaa !138
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !140

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !143

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec51 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index52 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next53, %vec.epilog.vector.body ] ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %index52
  store <4 x ptr> splat (ptr null), ptr %i.am, align 8, !tbaa !138
  %index.next53 = add nuw i64 %index52, 4         ; 2 uses
  %i.an = icmp eq i64 %index.next53, %n.vec51
  br i1 %i.an, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !144

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n54 = icmp eq i64 %n.vec51, %wide.trip.count
  br i1 %cmp.n54, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec51, %vec.epilog.middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %_ZNSaIcE8allocateEm.exit, %.loopexit
  %i.ao = icmp slt i32 %2, 0
  br i1 %i.ao, label %.noexc32, label %_ZNSaIiE8allocateEm.exit, !prof !83

.noexc32:                                         ; preds = %._crit_edge
  call void @_ZSt28__throw_bad_array_new_lengthv() #27
  unreachable

_ZNSaIiE8allocateEm.exit:                         ; preds = %._crit_edge
  %i.ap = shl nuw nsw i64 %i.p, 2
  %i.aq = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #26 ; 2 uses
  store ptr %i.aq, ptr %i.aa, align 8, !tbaa !92
  %i.ar = sext i32 %i.q to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.aq, ptr align 4 %1, i64 %i.ar, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i32 %2, ptr %i.as, align 8, !tbaa !3
  %i.at = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  store i32 %3, ptr %i.at, align 4, !tbaa !3
  %i.au = call { i64, i8 } @_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPN3re23DFA5StateEEENS5_9StateHashENS5_10StateEqualESaIS7_EE22find_or_prepare_insertIS7_EESt4pairImbERKT_(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.b), !noalias !145 ; 2 uses
  %.fca.1.extract.i.i.i.i.i.i = extractvalue { i64, i8 } %i.au, 1
  %i.av = trunc i8 %.fca.1.extract.i.i.i.i.i.i to i1
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !104 ; 2 uses
  br i1 %i.av, label %bb.f, label %_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPN3re23DFA5StateEEENS5_9StateHashENS5_10StateEqualESaIS7_EE6insertIS7_TnNSt9enable_ifIXsr4absl11disjunctionISt14is_convertibleIRKT_S7_ENSC_22SameAsElementReferenceISI_EEEE5valueEiE4typeELi0ETnNSE_IXsr14IsDecomposableISI_EE5valueEiE4typeELi0EEESt4pairINSC_8iteratorEbESI_.exit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv
  store ptr null, ptr %i.aw, align 8, !tbaa !138
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !158

bb.f:                                             ; preds = %_ZNSaIiE8allocateEm.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !98, !noalias !145
  %.fca.0.extract.i.i.i.i.i.i = extractvalue { i64, i8 } %i.au, 0
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.fca.0.extract.i.i.i.i.i.i
  store ptr %.pre, ptr %i.az, align 8, !tbaa !104, !noalias !145
  br label %_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPN3re23DFA5StateEEENS5_9StateHashENS5_10StateEqualESaIS7_EE6insertIS7_TnNSt9enable_ifIXsr4absl11disjunctionISt14is_convertibleIRKT_S7_ENSC_22SameAsElementReferenceISI_EEEE5valueEiE4typeELi0ETnNSE_IXsr14IsDecomposableISI_EE5valueEiE4typeELi0EEESt4pairINSC_8iteratorEbESI_.exit

_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPN3re23DFA5StateEEENS5_9StateHashENS5_10StateEqualESaIS7_EE6insertIS7_TnNSt9enable_ifIXsr4absl11disjunctionISt14is_convertibleIRKT_S7_ENSC_22SameAsElementReferenceISI_EEEE5valueEiE4typeELi0ETnNSE_IXsr14IsDecomposableISI_EE5valueEiE4typeELi0EEESt4pairINSC_8iteratorEbESI_.exit: ; preds = %_ZNSaIiE8allocateEm.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPN3re23DFA5StateEEENS5_9StateHashENS5_10StateEqualESaIS7_EE6insertIS7_TnNSt9enable_ifIXsr4absl11disjunctionISt14is_convertibleIRKT_S7_ENSC_22SameAsElementReferenceISI_EEEE5valueEiE4typeELi0ETnNSE_IXsr14IsDecomposableISI_EE5valueEiE4typeELi0EEESt4pairINSC_8iteratorEbESI_.exit, %bb.b
  %.1 = phi ptr [ %i.i, %bb.b ], [ null, %bb.d ], [ %.pre, %_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPN3re23DFA5StateEEENS5_9StateHashENS5_10StateEqualESaIS7_EE6insertIS7_TnNSt9enable_ifIXsr4absl11disjunctionISt14is_convertibleIRKT_S7_ENSC_22SameAsElementReferenceISI_EEEE5valueEiE4typeELi0ETnNSE_IXsr14IsDecomposableISI_EE5valueEiE4typeELi0EEESt4pairINSC_8iteratorEbESI_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  ret ptr %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, ptr } @_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPN3re23DFA5StateEEENS5_9StateHashENS5_10StateEqualESaIS7_EE4findIS7_EENSC_8iteratorERKS7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !95
  tail call void @llvm.prefetch.p0(ptr %i.a, i32 0, i32 1, i32 1)
  %i.b = load ptr, ptr %1, align 8, !tbaa !104    ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !92
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !3
  %i.f = sext i32 %i.e to i64                     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %.0.copyload.i.i32.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.g, align 4
  %i.h = zext i32 %.0.copyload.i.i32.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.i = add i64 %i.h, ptrtoint (ptr @_ZN4absl12lts_2024011613hash_internal15MixingHashState5kSeedE to i64)
  %i.j = zext i64 %i.i to i128
  %i.k = mul nuw i128 %i.j, 11376068507788127593  ; 2 uses
  %i.l = lshr i128 %i.k, 64
  %i.m = xor i128 %i.l, %i.k
  %i.n = trunc i128 %i.m to i64
  %i.o = shl nsw i64 %i.f, 2
  %i.p = tail call i64 @_ZN4absl12lts_2024011613hash_internal15MixingHashState18combine_contiguousES2_PKhm(i64 %i.n, ptr noundef %i.c, i64 noundef %i.o)
  %i.q = add i64 %i.p, %i.f
  %i.r = zext i64 %i.q to i128
  %i.s = mul nuw i128 %i.r, 11376068507788127593  ; 2 uses
  %i.t = lshr i128 %i.s, 64
  %i.u = xor i128 %i.t, %i.s                      ; 2 uses
  %i.v = trunc i128 %i.u to i64
  %i.w = load ptr, ptr %0, align 8, !tbaa !95, !noalias !159 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load i64, ptr %i.x, align 8, !tbaa !94, !noalias !159 ; 3 uses
  %i.z = lshr i64 %i.v, 7
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = lshr i64 %i.aa, 12
  %i.ac = xor i64 %i.z, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !98 ; 3 uses
  %i.af = trunc i128 %i.u to i8
  %i.ag = and i8 %i.af, 127
  %i.ah = insertelement <16 x i8> poison, i8 %i.ag, i64 0
  %i.ai = shufflevector <16 x i8> %i.ah, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.aj = load ptr, ptr %1, align 8               ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 12 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.pn.i = phi i64 [ %i.ac, %bb.a ], [ %i.ce, %bb.e ]
  %.sroa.12.0.i = phi i64 [ 0, %bb.a ], [ %i.cd, %bb.e ]
  %.sroa.6.0.i = and i64 %.pn.i, %i.y             ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.w, i64 %.sroa.6.0.i
  %i.an = load <16 x i8>, ptr %i.am, align 1, !tbaa !101 ; 3 uses
  %i.ao = icmp eq <16 x i8> %i.ai, %i.an
  %i.ap = bitcast <16 x i1> %i.ao to i16          ; 3 uses
  %.not49.i = icmp eq i16 %i.ap, 0
  br i1 %.not49.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.aq = load ptr, ptr %i.aj, align 8, !tbaa !92
  %i.ar = load i32, ptr %i.ak, align 8, !tbaa !3
  %.fr = freeze i32 %i.ar                         ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %.fr, 0
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.split.us, label %.lr.ph.i.split

.lr.ph.i.split.us:                                ; preds = %.lr.ph.i, %_ZN4absl12lts_2024011618container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyIPN3re23DFA5StateEEEvE5applyINS1_12raw_hash_setIS8_NS5_9StateHashENS5_10StateEqualESaIS7_EE12EqualElementIS7_EEJRS7_ES8_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSK_DpOSL_.exit.thread29.i.us
  %.sroa.016.050.i.us = phi i16 [ %i.bg, %_ZN4absl12lts_2024011618container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyIPN3re23DFA5StateEEEvE5applyINS1_12raw_hash_setIS8_NS5_9StateHashENS5_10StateEqualESaIS7_EE12EqualElementIS7_EEJRS7_ES8_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSK_DpOSL_.exit.thread29.i.us ], [ %i.ap, %.lr.ph.i ] ; 3 uses
  %i.as = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.016.050.i.us, i1 true)
  %i.at = zext nneg i16 %i.as to i64
  %i.au = add i64 %.sroa.6.0.i, %i.at
  %i.av = and i64 %i.au, %i.y                     ; 3 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.av
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !104 ; 3 uses
  %i.ay = icmp eq ptr %i.ax, %i.aj
  br i1 %i.ay, label %.thread34.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.split.us
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !3
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !3
  %i.bd = load i32, ptr %i.al, align 4, !tbaa !3
  %i.be = icmp eq i32 %i.bc, %i.bd
  %.not.i.i.i.i.i.i.i.i.i.i.i.us = icmp eq i32 %i.ba, 0
  %or.cond = select i1 %i.be, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.us, i1 false, !prof !162
  br i1 %or.cond, label %.thread34.i, label %_ZN4absl12lts_2024011618container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyIPN3re23DFA5StateEEEvE5applyINS1_12raw_hash_setIS8_NS5_9StateHashENS5_10StateEqualESaIS7_EE12EqualElementIS7_EEJRS7_ES8_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSK_DpOSL_.exit.thread29.i.us, !prof !162

_ZN4absl12lts_2024011618container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyIPN3re23DFA5StateEEEvE5applyINS1_12raw_hash_setIS8_NS5_9StateHashENS5_10StateEqualESaIS7_EE12EqualElementIS7_EEJRS7_ES8_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSK_DpOSL_.exit.thread29.i.us: ; preds = %bb.c
  %i.bf = add i16 %.sroa.016.050.i.us, -1
  %i.bg = and i16 %i.bf, %.sroa.016.050.i.us      ; 2 uses
  %.not.i.us = icmp eq i16 %i.bg, 0
  br i1 %.not.i.us, label %._crit_edge.i, label %.lr.ph.i.split.us

.lr.ph.i.split:                                   ; preds = %.lr.ph.i, %_ZN4absl12lts_2024011618container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyIPN3re23DFA5StateEEEvE5applyINS1_12raw_hash_setIS8_NS5_9StateHashENS5_10StateEqualESaIS7_EE12EqualElementIS7_EEJRS7_ES8_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSK_DpOSL_.exit.thread29.i
  %.sroa.016.050.i = phi i16 [ %i.bz, %_ZN4absl12lts_2024011618container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyIPN3re23DFA5StateEEEvE5applyINS1_12raw_hash_setIS8_NS5_9StateHashENS5_10StateEqualESaIS7_EE12EqualElementIS7_EEJRS7_ES8_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSK_DpOSL_.exit.thread29.i ], [ %i.ap, %.lr.ph.i ] ; 3 uses
  %i.bh = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.016.050.i, i1 true)
  %i.bi = zext nneg i16 %i.bh to i64
  %i.bj = add i64 %.sroa.6.0.i, %i.bi
  %i.bk = and i64 %i.bj, %i.y                     ; 3 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.bk
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !104 ; 4 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !92
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !3  ; 2 uses
  %i.bq = sext i32 %i.bp to i64
  %i.br = icmp eq ptr %i.bm, %i.aj
  br i1 %i.br, label %.thread34.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.split
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !3
  %i.bu = load i32, ptr %i.al, align 4, !tbaa !3
  %i.bv = icmp eq i32 %i.bt, %i.bu
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.bp, %.fr
  %or.cond24 = select i1 %i.bv, i1 %.not.i.i.i.i.i.i.i.i.i.i.i, i1 false, !prof !162
  br i1 %or.cond24, label %_ZN4absl12lts_2024011618container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyIPN3re23DFA5StateEEEvE5applyINS1_12raw_hash_setIS8_NS5_9StateHashENS5_10StateEqualESaIS7_EE12EqualElementIS7_EEJRS7_ES8_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSK_DpOSL_.exit.i, label %_ZN4absl12lts_2024011618container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyIPN3re23DFA5StateEEEvE5applyINS1_12raw_hash_setIS8_NS5_9StateHashENS5_10StateEqualESaIS7_EE12EqualElementIS7_EEJRS7_ES8_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSK_DpOSL_.exit.thread29.i, !prof !162

_ZN4absl12lts_2024011618container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyIPN3re23DFA5StateEEEvE5applyINS1_12raw_hash_setIS8_NS5_9StateHashENS5_10StateEqualESaIS7_EE12EqualElementIS7_EEJRS7_ES8_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSK_DpOSL_.exit.i: ; preds = %bb.d
  %.idx.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.bq, 2
  %bcmp.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.bn, ptr %i.aq, i64 %.idx.i.i.i.i.i.i.i.i.i)
  %.not9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.thread34.i, label %_ZN4absl12lts_2024011618container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyIPN3re23DFA5StateEEEvE5applyINS1_12raw_hash_setIS8_NS5_9StateHashENS5_10StateEqualESaIS7_EE12EqualElementIS7_EEJRS7_ES8_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSK_DpOSL_.exit.thread29.i, !prof !163

.thread34.i:                                      ; preds = %.lr.ph.i.split, %_ZN4absl12lts_2024011618container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyIPN3re23DFA5StateEEEvE5applyINS1_12raw_hash_setIS8_NS5_9StateHashENS5_10StateEqualESaIS7_EE12EqualElementIS7_EEJRS7_ES8_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSK_DpOSL_.exit.i, %bb.c, %.lr.ph.i.split.us
  %.us-phi = phi i64 [ %i.av, %bb.c ], [ %i.av, %.lr.ph.i.split.us ], [ %i.bk, %_ZN4absl12lts_2024011618container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyIPN3re23DFA5StateEEEvE5applyINS1_12raw_hash_setIS8_NS5_9StateHashENS5_10StateEqualESaIS7_EE12EqualElementIS7_EEJRS7_ES8_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSK_DpOSL_.exit.i ], [ %i.bk, %.lr.ph.i.split ] ; 2 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %.us-phi
  %i.bx = getelementptr inbounds nuw i8, ptr %i.w, i64 %.us-phi
  br label %_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPN3re23DFA5StateEEENS5_9StateHashENS5_10StateEqualESaIS7_EE4findIS7_EENSC_8iteratorERKS7_m.exit

_ZN4absl12lts_2024011618container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyIPN3re23DFA5StateEEEvE5applyINS1_12raw_hash_setIS8_NS5_9StateHashENS5_10StateEqualESaIS7_EE12EqualElementIS7_EEJRS7_ES8_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSK_DpOSL_.exit.thread29.i: ; preds = %_ZN4absl12lts_2024011618container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyIPN3re23DFA5StateEEEvE5applyINS1_12raw_hash_setIS8_NS5_9StateHashENS5_10StateEqualESaIS7_EE12EqualElementIS7_EEJRS7_ES8_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSK_DpOSL_.exit.i, %bb.d
  %i.by = add i16 %.sroa.016.050.i, -1
  %i.bz = and i16 %i.by, %.sroa.016.050.i         ; 2 uses
  %.not.i = icmp eq i16 %i.bz, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i.split

._crit_edge.i:                                    ; preds = %_ZN4absl12lts_2024011618container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyIPN3re23DFA5StateEEEvE5applyINS1_12raw_hash_setIS8_NS5_9StateHashENS5_10StateEqualESaIS7_EE12EqualElementIS7_EEJRS7_ES8_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSK_DpOSL_.exit.thread29.i, %_ZN4absl12lts_2024011618container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyIPN3re23DFA5StateEEEvE5applyINS1_12raw_hash_setIS8_NS5_9StateHashENS5_10StateEqualESaIS7_EE12EqualElementIS7_EEJRS7_ES8_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSK_DpOSL_.exit.thread29.i.us, %bb.b
  %i.ca = tail call <16 x i8> @llvm.x86.ssse3.psign.b.128(<16 x i8> %i.an, <16 x i8> %i.an)
  %i.cb = icmp slt <16 x i8> %i.ca, zeroinitializer
  %i.cc = bitcast <16 x i1> %i.cb to i16
  %.not46.i = icmp eq i16 %i.cc, 0
  br i1 %.not46.i, label %bb.e, label %_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPN3re23DFA5StateEEENS5_9StateHashENS5_10StateEqualESaIS7_EE4findIS7_EENSC_8iteratorERKS7_m.exit, !prof !83

bb.e:                                             ; preds = %._crit_edge.i
  %i.cd = add i64 %.sroa.12.0.i, 16               ; 2 uses
  %i.ce = add i64 %i.cd, %.sroa.6.0.i
  br label %bb.b, !llvm.loop !164

_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPN3re23DFA5StateEEENS5_9StateHashENS5_10StateEqualESaIS7_EE4findIS7_EENSC_8iteratorERKS7_m.exit: ; preds = %._crit_edge.i, %.thread34.i
  %.sroa.0.4.ph.i = phi ptr [ %i.bx, %.thread34.i ], [ null, %._crit_edge.i ]
  %.sroa.3.4.ph.i = phi ptr [ %i.bw, %.thread34.i ], [ undef, %._crit_edge.i ]
  %.fca.0.insert.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i, 0
  %.fca.1.insert.i = insertvalue { ptr, ptr } %.fca.0.insert.i, ptr %.sroa.3.4.ph.i, 1
  ret { ptr, ptr } %.fca.1.insert.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress uwtable
define void @_ZN3re23DFA12StateToWorkqEPNS0_5StateEPNS0_5WorkqE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(176) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) initializes((0, 4), (48, 52)) %2) local_unnamed_addr #1 align 2 {
bb.a:
  store i32 0, ptr %2, align 8, !tbaa !81
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !85
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 3 uses
  store i32 %i.b, ptr %i.c, align 8, !tbaa !88
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !3
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 52 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN3re23DFA5Workq4markEv.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN3re23DFA5Workq4markEv.exit ] ; 2 uses
  %i.l = load ptr, ptr %1, align 8, !tbaa !92
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv
  %i.n = load i32, ptr %i.m, align 4, !tbaa !3    ; 2 uses
  switch i32 %i.n, label %bb.f [
    i32 -1, label %bb.c
    i32 -2, label %._crit_edge
  ]

bb.c:                                             ; preds = %bb.b
  %i.o = load i8, ptr %i.g, align 4, !tbaa !89, !range !132, !noundef !97
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %_ZN3re23DFA5Workq4markEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr %i.g, align 4, !tbaa !89
  %i.q = load i32, ptr %i.c, align 8, !tbaa !88   ; 4 uses
  %i.r = add nsw i32 %i.q, 1
  store i32 %i.r, ptr %i.c, align 8, !tbaa !88
  %i.s = load ptr, ptr %i.i, align 8, !tbaa !92   ; 2 uses
  %.not.i.i.i.i = icmp ne ptr %i.s, null
  %i.t = load i32, ptr %i.h, align 8
  %.not10.i.i.i = icmp ugt i32 %i.t, %i.q
  %.not.i.i.i = select i1 %.not.i.i.i.i, i1 %.not10.i.i.i, i1 false
  br i1 %.not.i.i.i, label %bb.e, label %_ZN3re23DFA5Workq4markEv.exit

bb.e:                                             ; preds = %bb.d
  %i.u = load i32, ptr %2, align 8, !tbaa !81     ; 2 uses
  %i.v = sext i32 %i.q to i64
  %i.w = load ptr, ptr %i.j, align 8, !tbaa !92
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.v
  store i32 %i.u, ptr %i.x, align 4, !tbaa !3
  %i.y = sext i32 %i.u to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.y
  store i32 %i.q, ptr %i.z, align 4, !tbaa !3
  %i.aa = load i32, ptr %2, align 8, !tbaa !81
  %i.ab = add nsw i32 %i.aa, 1
  store i32 %i.ab, ptr %2, align 8, !tbaa !81
  br label %_ZN3re23DFA5Workq4markEv.exit

bb.f:                                             ; preds = %bb.b
  %i.ac = load i32, ptr %i.k, align 4, !tbaa !3
  %i.ad = and i32 %i.ac, 255
  tail call void @_ZN3re23DFA10AddToQueueEPNS0_5WorkqEij(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull %2, i32 noundef %i.n, i32 noundef %i.ad)
  br label %_ZN3re23DFA5Workq4markEv.exit

_ZN3re23DFA5Workq4markEv.exit:                    ; preds = %bb.e, %bb.d, %bb.c, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ae = load i32, ptr %i.d, align 8, !tbaa !3
  %i.af = sext i32 %i.ae to i64
  %i.ag = icmp slt i64 %indvars.iv.next, %i.af
  br i1 %i.ag, label %bb.b, label %._crit_edge, !llvm.loop !165

._crit_edge:                                      ; preds = %_ZN3re23DFA5Workq4markEv.exit, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN3re23DFA10AddToQueueEPNS0_5WorkqEij(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(176) %0, ptr nofree noundef captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.absl::lts_20240116::log_internal::LogMessage", align 8 ; 8 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !92   ; 5 uses
  store i32 %2, ptr %i.c, align 4, !tbaa !3
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = xor i32 %3, -1
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.backedge
  %.04361 = phi i32 [ 1, %bb.a ], [ %.043.be, %.backedge ]
  %i.k = add nsw i32 %.04361, -1                  ; 2 uses
  %i.l = zext nneg i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !3
  br label %.outer

.outer:                                           ; preds = %.outer.backedge, %bb.b
  %.144.ph = phi i32 [ %i.k, %bb.b ], [ %.144.ph.be, %.outer.backedge ] ; 13 uses
  %.042.ph = phi i32 [ %i.n, %bb.b ], [ %i.cj, %.outer.backedge ]
  %i.o = load ptr, ptr %0, align 8                ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 120
  br label %.backedge74

.backedge74:                                      ; preds = %.backedge74.backedge, %.outer
  %.042 = phi i32 [ %.042.ph, %.outer ], [ %.042.be, %.backedge74.backedge ] ; 12 uses
  switch i32 %.042, label %bb.f [
    i32 -1, label %bb.c
    i32 0, label %.backedge
  ]

bb.c:                                             ; preds = %.backedge74
  %i.q = load i8, ptr %i.f, align 4, !tbaa !89, !range !132, !noundef !97
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %.backedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr %i.f, align 4, !tbaa !89
  %i.s = load i32, ptr %i.j, align 8, !tbaa !88   ; 4 uses
  %i.t = add nsw i32 %i.s, 1
  store i32 %i.t, ptr %i.j, align 8, !tbaa !88
  %i.u = load ptr, ptr %i.e, align 8, !tbaa !92   ; 2 uses
  %.not.i.i.i.i = icmp ne ptr %i.u, null
  %i.v = load i32, ptr %i.d, align 8
  %.not10.i.i.i = icmp ugt i32 %i.v, %i.s
  %.not.i.i.i = select i1 %.not.i.i.i.i, i1 %.not10.i.i.i, i1 false
  br i1 %.not.i.i.i, label %bb.e, label %.backedge

bb.e:                                             ; preds = %bb.d
  %i.w = load i32, ptr %1, align 8, !tbaa !81     ; 2 uses
  %i.x = sext i32 %i.s to i64
  %i.y = load ptr, ptr %i.g, align 8, !tbaa !92
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.x
  store i32 %i.w, ptr %i.z, align 4, !tbaa !3
  %i.aa = sext i32 %i.w to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.aa
  store i32 %i.s, ptr %i.ab, align 4, !tbaa !3
  %i.ac = load i32, ptr %1, align 8, !tbaa !81
  %i.ad = add nsw i32 %i.ac, 1
  store i32 %i.ad, ptr %1, align 8, !tbaa !81
  br label %.backedge

.backedge:                                        ; preds = %bb.x, %select.unfold, %.backedge74, %_ZNK3re210SparseSetTIvE8containsEi.exit, %bb.j, %bb.e, %bb.d, %bb.c
  %.043.be = phi i32 [ %.144.ph, %bb.c ], [ %.144.ph, %bb.d ], [ %.144.ph, %bb.e ], [ %.144.ph, %bb.j ], [ %.144.ph, %select.unfold ], [ %.144.ph, %_ZNK3re210SparseSetTIvE8containsEi.exit ], [ %.144.ph, %.backedge74 ], [ %.4, %bb.x ] ; 2 uses
  %i.ae = icmp sgt i32 %.043.be, 0
  br i1 %i.ae, label %bb.b, label %bb.z, !llvm.loop !166

bb.f:                                             ; preds = %.backedge74
  %i.af = load ptr, ptr %i.e, align 8, !tbaa !92  ; 3 uses
  %.not.i.i = icmp ne ptr %i.af, null
  %i.ag = load i32, ptr %i.d, align 8
  %.not6.i = icmp ugt i32 %i.ag, %.042
  %.not.i = select i1 %.not.i.i, i1 %.not6.i, i1 false
  br i1 %.not.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ah = sext i32 %.042 to i64                   ; 2 uses
  %i.ai = load ptr, ptr %i.g, align 8, !tbaa !92
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.ah ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN3re23DFA14BuildAllStatesERKSt8functionIFvPKibEE:bb.a
_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i81: ; preds = %.critedge, %.critedge.thread
  %i.cl = load i32, ptr %i.by, align 4, !tbaa !79
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0166.0, i64 %i.cm
  store i32 256, ptr %i.cn, align 4, !tbaa !3
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit89, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i81
  %i.co = shl nuw nsw i64 %i.cb, 2
  %i.cp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.co) #26
          to label %.noexc88 unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit109.thread ; 5 uses

.noexc88:                                         ; preds = %bb.n
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %i.cb ; 2 uses
  store i32 0, ptr %i.cp, align 4, !tbaa !3
  %i.cr = add nsw i64 %i.cb, -1                   ; 2 uses
  %i.cs = icmp eq i64 %i.cr, 0
  br i1 %i.cs, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit89, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i83

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i83: ; preds = %.noexc88
  %i.ct = getelementptr i8, ptr %i.cp, i64 4
  %.idx.i.i.i.i.i.i.i84 = shl nuw nsw i64 %i.cr, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.ct, i8 0, i64 %.idx.i.i.i.i.i.i.i84, i1 false), !tbaa !3
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit89

bb.o:                                             ; preds = %bb.e
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.p:                                             ; preds = %bb.i
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit111

bb.q:                                             ; preds = %bb.k
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit111

bb.r:                                             ; preds = %bb.m, %bb.l
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit111

bb.s:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, %.critedge
  %.054223 = phi i64 [ 0, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit ], [ %i.dj, %.critedge ]
  %sext = shl i64 %.054223, 32                    ; 2 uses
  %i.cy = ashr exact i64 %sext, 32                ; 2 uses
  %i.cz = getelementptr inbounds i8, ptr %i.ck, i64 %i.cy
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !101 ; 3 uses
  %exitcond.not278 = icmp eq i64 %sext, 1095216660480
  br i1 %exitcond.not278, label %.critedge.thread, label %.lr.ph280

bb.t:                                             ; preds = %.lr.ph280
  %exitcond.not = icmp eq i64 %indvars.iv.next, 255
  br i1 %exitcond.not, label %.critedge.thread, label %.lr.ph280, !llvm.loop !266

.critedge.thread:                                 ; preds = %bb.s, %bb.t
  %i.db = zext i8 %i.da to i64
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0166.0, i64 %i.db
  store i32 255, ptr %i.dc, align 4, !tbaa !3
  br label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i81

.lr.ph280:                                        ; preds = %bb.s, %bb.t
  %indvars.iv279 = phi i64 [ %indvars.iv.next, %bb.t ], [ %i.cy, %bb.s ] ; 4 uses
  %indvars.iv.next = add nsw i64 %indvars.iv279, 1 ; 3 uses
  %i.dd = getelementptr inbounds i8, ptr %i.ck, i64 %indvars.iv.next
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !101
  %i.df = icmp eq i8 %i.de, %i.da
  br i1 %i.df, label %bb.t, label %.critedge, !llvm.loop !266

.critedge:                                        ; preds = %.lr.ph280
  %i.dg = trunc nsw i64 %indvars.iv279 to i32
  %i.dh = zext i8 %i.da to i64
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0166.0, i64 %i.dh
  store i32 %i.dg, ptr %i.di, align 4, !tbaa !3
  %i.dj = add i64 %indvars.iv279, 1
  %i.dk = icmp slt i64 %indvars.iv279, 255
  br i1 %i.dk, label %bb.s, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i81, !llvm.loop !267

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit89:             ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i83, %.noexc88, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i81
  %.sroa.12.0 = phi ptr [ %i.cq, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i83 ], [ %i.cq, %.noexc88 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i81 ] ; 2 uses
  %.sroa.0159.0 = phi ptr [ %i.cp, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i83 ], [ %i.cp, %.noexc88 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i81 ] ; 8 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  %.not224 = icmp eq ptr %.sroa.0166.0, %.0.i.i.i.i.i
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.u

bb.u:                                             ; preds = %bb.bb, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit89
  %i.ds = load ptr, ptr %i.bq, align 8, !tbaa !268
  %i.dt = load ptr, ptr %i.dl, align 8, !tbaa !268 ; 4 uses
  %i.du = icmp eq ptr %i.ds, %i.dt
  br i1 %i.du, label %bb.bc, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dv = load ptr, ptr %i.dt, align 8, !tbaa !104 ; 3 uses
  %i.dw = load ptr, ptr %i.dm, align 8, !tbaa !269
  %i.dx = getelementptr inbounds i8, ptr %i.dw, i64 -8
  %.not.i90 = icmp eq ptr %i.dt, %i.dx
  br i1 %.not.i90, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  br label %_ZNSt5dequeIPN3re23DFA5StateESaIS3_EE9pop_frontEv.exit

bb.x:                                             ; preds = %bb.v
  %i.dz = load ptr, ptr %i.dn, align 8, !tbaa !270
  call void @_ZdlPvm(ptr noundef %i.dz, i64 noundef 512) #28
  %i.ea = load ptr, ptr %i.do, align 8, !tbaa !271
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8 ; 2 uses
  store ptr %i.eb, ptr %i.do, align 8, !tbaa !272
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !273 ; 3 uses
  store ptr %i.ec, ptr %i.dn, align 8, !tbaa !274
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 512
  store ptr %i.ed, ptr %i.dm, align 8, !tbaa !275
  br label %_ZNSt5dequeIPN3re23DFA5StateESaIS3_EE9pop_frontEv.exit

_ZNSt5dequeIPN3re23DFA5StateESaIS3_EE9pop_frontEv.exit: ; preds = %bb.w, %bb.x
  %storemerge.i = phi ptr [ %i.dy, %bb.w ], [ %i.ec, %bb.x ]
  store ptr %storemerge.i, ptr %i.dl, align 8, !tbaa !276
  br i1 %.not224, label %.loopexit203, label %.lr.ph

_ZNSt6vectorIiSaIiEED2Ev.exit109.thread:          ; preds = %bb.n
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

.lr.ph:                                           ; preds = %_ZNSt5dequeIPN3re23DFA5StateESaIS3_EE9pop_frontEv.exit, %_ZN3re23DFA7ByteMapEi.exit
  %.sroa.0155.0225 = phi ptr [ %i.jz, %_ZN3re23DFA7ByteMapEi.exit ], [ %.sroa.0166.0, %_ZNSt5dequeIPN3re23DFA5StateESaIS3_EE9pop_frontEv.exit ] ; 2 uses
  %i.ef = load i32, ptr %.sroa.0155.0225, align 4, !tbaa !3 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #29
  invoke void @_ZN4absl12lts_202401165Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dp)
          to label %.noexc91 unwind label %bb.ac

.noexc91:                                         ; preds = %.lr.ph
  %i.eg = invoke noundef ptr @_ZN3re23DFA14RunStateOnByteEPNS0_5StateEi(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %i.dv, i32 noundef %i.ef)
          to label %bb.y unwind label %bb.aa      ; 5 uses

bb.y:                                             ; preds = %.noexc91
  invoke void @_ZN4absl12lts_202401165Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dp)
          to label %_ZN3re23DFA22RunStateOnByteUnlockedEPNS0_5StateEi.exit unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.eh = landingpad { ptr, i32 }
          catch ptr null
  %i.ei = extractvalue { ptr, i32 } %i.eh, 0
  call void @__clang_call_terminate(ptr %i.ei) #30
  unreachable

bb.aa:                                            ; preds = %.noexc91
  %i.ej = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4absl12lts_202401165Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dp)
          to label %.body unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ek = landingpad { ptr, i32 }
          catch ptr null
  %i.el = extractvalue { ptr, i32 } %i.ek, 0
  call void @__clang_call_terminate(ptr %i.el) #30
  unreachable

_ZN3re23DFA22RunStateOnByteUnlockedEPNS0_5StateEi.exit: ; preds = %bb.y
  store ptr %i.eg, ptr %i.c, align 8, !tbaa !104
  %magicptr78 = ptrtoint ptr %i.eg to i64         ; 3 uses
  switch i64 %magicptr78, label %bb.ag [
    i64 0, label %bb.aw
    i64 1, label %bb.ad
  ]

bb.ac:                                            ; preds = %bb.at, %bb.ap, %.lr.ph
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ad:                                            ; preds = %_ZN3re23DFA22RunStateOnByteUnlockedEPNS0_5StateEi.exit
  %i.en = icmp eq i32 %i.ef, 256
  %i.eo = load ptr, ptr %0, align 8, !tbaa !9     ; 2 uses
  br i1 %i.en, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 20
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !79
  br label %_ZN3re23DFA7ByteMapEi.exit

bb.af:                                            ; preds = %bb.ad
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 168
  %i.es = sext i32 %i.ef to i64
  %i.et = getelementptr inbounds i8, ptr %i.er, i64 %i.es
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !101
  %i.ev = zext i8 %i.eu to i32
  br label %_ZN3re23DFA7ByteMapEi.exit

bb.ag:                                            ; preds = %_ZN3re23DFA22RunStateOnByteUnlockedEPNS0_5StateEi.exit
  %i.ew = load ptr, ptr %4, align 8, !tbaa !95    ; 6 uses
  call void @llvm.prefetch.p0(ptr %i.ew, i32 0, i32 1, i32 1)
  %i.ex = add i64 %magicptr78, ptrtoint (ptr @_ZN4absl12lts_2024011613hash_internal15MixingHashState5kSeedE to i64)
  %i.ey = zext i64 %i.ex to i128
  %i.ez = mul nuw i128 %i.ey, 11376068507788127593 ; 2 uses
  %i.fa = lshr i128 %i.ez, 64
  %i.fb = xor i128 %i.fa, %i.ez
  %i.fc = trunc i128 %i.fb to i64
  %i.fd = add i64 %i.fc, %magicptr78
  %i.fe = zext i64 %i.fd to i128
  %i.ff = mul nuw i128 %i.fe, 11376068507788127593 ; 2 uses
  %i.fg = lshr i128 %i.ff, 64
  %i.fh = xor i128 %i.fg, %i.ff                   ; 2 uses
  %i.fi = trunc i128 %i.fh to i64                 ; 2 uses
  %i.fj = load i64, ptr %i.ai, align 8, !tbaa !94, !noalias !277 ; 4 uses
  %i.fk = lshr i64 %i.fi, 7
  %i.fl = ptrtoint ptr %i.ew to i64
  %i.fm = lshr i64 %i.fl, 12
  %i.fn = xor i64 %i.fm, %i.fk                    ; 2 uses
  %i.fo = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !tbaa !98 ; 2 uses
  %i.fp = trunc i128 %i.fh to i8
  %i.fq = and i8 %i.fp, 127
  %i.fr = insertelement <16 x i8> poison, i8 %i.fq, i64 0
  %i.fs = shufflevector <16 x i8> %i.fr, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.aj, %bb.ag
  %.pn.i.i = phi i64 [ %i.fn, %bb.ag ], [ %i.gk, %bb.aj ]
  %.sroa.12.0.i.i = phi i64 [ 0, %bb.ag ], [ %i.gj, %bb.aj ]
  %.sroa.6.0.i.i = and i64 %.pn.i.i, %i.fj        ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ew, i64 %.sroa.6.0.i.i
  %i.fu = load <16 x i8>, ptr %i.ft, align 1, !tbaa !101 ; 3 uses
  %i.fv = icmp eq <16 x i8> %i.fs, %i.fu
  %i.fw = bitcast <16 x i1> %i.fv to i16          ; 2 uses
  %.not43.i.i = icmp eq i16 %i.fw, 0
  br i1 %.not43.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ah, %bb.ai
  %.sroa.016.044.i.i = phi i16 [ %i.gf, %bb.ai ], [ %i.fw, %bb.ah ] ; 3 uses
  %i.fx = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.016.044.i.i, i1 true)
  %i.fy = zext nneg i16 %i.fx to i64
  %i.fz = add i64 %.sroa.6.0.i.i, %i.fy
  %i.ga = and i64 %i.fz, %i.fj
  %i.gb = getelementptr inbounds nuw [16 x i8], ptr %i.fo, i64 %i.ga
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !104
  %i.gd = icmp eq ptr %i.gc, %i.eg
  br i1 %i.gd, label %6, label %bb.ai, !prof !245

bb.ai:                                            ; preds = %.lr.ph.i.i
  %i.ge = add i16 %.sroa.016.044.i.i, -1
  %i.gf = and i16 %i.ge, %.sroa.016.044.i.i       ; 2 uses
  %.not.i.i = icmp eq i16 %i.gf, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %bb.ai, %bb.ah
  %i.gg = call <16 x i8> @llvm.x86.ssse3.psign.b.128(<16 x i8> %i.fu, <16 x i8> %i.fu)
  %i.gh = icmp slt <16 x i8> %i.gg, zeroinitializer
  %i.gi = bitcast <16 x i1> %i.gh to i16
  %.not41.i.i = icmp eq i16 %i.gi, 0
  br i1 %.not41.i.i, label %bb.aj, label %bb.ak, !prof !83

bb.aj:                                            ; preds = %._crit_edge.i.i
  %i.gj = add i64 %.sroa.12.0.i.i, 16             ; 2 uses
  %i.gk = add i64 %i.gj, %.sroa.6.0.i.i
  br label %bb.ah, !llvm.loop !280

6:                                                ; preds = %.lr.ph.i.i
  %7 = icmp eq ptr %i.ew, null
  br i1 %7, label %bb.ak, label %_ZNSt5dequeIPN3re23DFA5StateESaIS3_EE9push_backERKS3_.exit96

bb.ak:                                            ; preds = %._crit_edge.i.i, %6
  %i.gl = load i64, ptr %i.p, align 8, !tbaa !96
  %i.gm = lshr i64 %i.gl, 1
  %i.gn = trunc i64 %i.gm to i32
  call void @llvm.prefetch.p0(ptr %i.ew, i32 0, i32 1, i32 1), !noalias !281
  br label %bb.al

bb.al:                                            ; preds = %bb.am, %bb.ak
  %.pn.i.i119 = phi i64 [ %i.fn, %bb.ak ], [ %i.hf, %bb.am ]
  %.sroa.12.0.i.i120 = phi i64 [ 0, %bb.ak ], [ %i.he, %bb.am ]
  %.sroa.6.0.i.i121 = and i64 %.pn.i.i119, %i.fj  ; 3 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.ew, i64 %.sroa.6.0.i.i121
  %i.gp = load <16 x i8>, ptr %i.go, align 1, !tbaa !101, !noalias !281 ; 3 uses
  %i.gq = icmp eq <16 x i8> %i.fs, %i.gp
  %i.gr = bitcast <16 x i1> %i.gq to i16          ; 2 uses
  %.not50.i.i122 = icmp eq i16 %i.gr, 0
  br i1 %.not50.i.i122, label %._crit_edge.i.i127, label %.lr.ph.i.i123

.lr.ph.i.i123:                                    ; preds = %bb.al, %.critedge.i.i125
  %.sroa.019.051.i.i124 = phi i16 [ %i.ha, %.critedge.i.i125 ], [ %i.gr, %bb.al ] ; 3 uses
  %i.gs = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.019.051.i.i124, i1 true)
  %i.gt = zext nneg i16 %i.gs to i64
  %i.gu = add i64 %.sroa.6.0.i.i121, %i.gt
  %i.gv = and i64 %i.gu, %i.fj
  %i.gw = getelementptr inbounds nuw [16 x i8], ptr %i.fo, i64 %i.gv
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !104, !noalias !281
  %i.gy = icmp eq ptr %i.gx, %i.eg
  br i1 %i.gy, label %.loopexit202.a, label %.critedge.i.i125, !prof !245

.critedge.i.i125:                                 ; preds = %.lr.ph.i.i123
  %i.gz = add i16 %.sroa.019.051.i.i124, -1
  %i.ha = and i16 %i.gz, %.sroa.019.051.i.i124    ; 2 uses
  %.not.i.i126 = icmp eq i16 %i.ha, 0
  br i1 %.not.i.i126, label %._crit_edge.i.i127, label %.lr.ph.i.i123

._crit_edge.i.i127:                               ; preds = %.critedge.i.i125, %bb.al
  %i.hb = call <16 x i8> @llvm.x86.ssse3.psign.b.128(<16 x i8> %i.gp, <16 x i8> %i.gp)
  %i.hc = icmp slt <16 x i8> %i.hb, zeroinitializer
  %i.hd = bitcast <16 x i1> %i.hc to i16
  %.not49.i.i128 = icmp eq i16 %i.hd, 0
  br i1 %.not49.i.i128, label %bb.am, label %bb.an, !prof !83

bb.am:                                            ; preds = %._crit_edge.i.i127
  %i.he = add i64 %.sroa.12.0.i.i120, 16          ; 2 uses
  %i.hf = add i64 %i.he, %.sroa.6.0.i.i121
  br label %bb.al

bb.an:                                            ; preds = %._crit_edge.i.i127
  %i.hg = invoke noundef i64 @_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPN3re23DFA5StateEiEENS1_6HashEqIS7_vE4HashENSA_2EqESaISt4pairIKS7_iEEE14prepare_insertEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.fi)
          to label %.noexc133 unwind label %bb.aq

.noexc133:                                        ; preds = %bb.an
  %i.hh = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !tbaa !98, !noalias !281
  %i.hi = getelementptr inbounds nuw [16 x i8], ptr %i.hh, i64 %i.hg ; 2 uses
  %i.hj = load ptr, ptr %i.c, align 8, !tbaa !104, !noalias !281
  store ptr %i.hj, ptr %i.hi, align 8, !tbaa !255, !noalias !281
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  store i32 %i.gn, ptr %i.hk, align 8, !tbaa !257, !noalias !281
  br label %.loopexit202.a

.loopexit202.a:                                   ; preds = %.lr.ph.i.i123, %.noexc133
  %i.hl = load ptr, ptr %i.bq, align 8, !tbaa !258 ; 3 uses
  %i.hm = load ptr, ptr %i.bs, align 8, !tbaa !265
  %i.hn = getelementptr inbounds i8, ptr %i.hm, i64 -8
  %.not.i94 = icmp eq ptr %i.hl, %i.hn
  br i1 %.not.i94, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %.loopexit202.a
  %i.ho = load ptr, ptr %i.c, align 8, !tbaa !104 ; 2 uses
  store ptr %i.ho, ptr %i.hl, align 8, !tbaa !104
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  store ptr %i.hp, ptr %i.bq, align 8, !tbaa !258
  br label %_ZNSt5dequeIPN3re23DFA5StateESaIS3_EE9push_backERKS3_.exit96

bb.ap:                                            ; preds = %.loopexit202.a
  invoke void @_ZNSt5dequeIPN3re23DFA5StateESaIS3_EE16_M_push_back_auxIJRKS3_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %._ZNSt5dequeIPN3re23DFA5StateESaIS3_EE9push_backERKS3_.exit96_crit_edge unwind label %bb.ac

._ZNSt5dequeIPN3re23DFA5StateESaIS3_EE9push_backERKS3_.exit96_crit_edge: ; preds = %bb.ap
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !104, !noalias !284
  br label %_ZNSt5dequeIPN3re23DFA5StateESaIS3_EE9push_backERKS3_.exit96

bb.aq:                                            ; preds = %bb.an
  %i.hq = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt5dequeIPN3re23DFA5StateESaIS3_EE9push_backERKS3_.exit96: ; preds = %._ZNSt5dequeIPN3re23DFA5StateESaIS3_EE9push_backERKS3_.exit96_crit_edge, %bb.ao, %6
  %i.hr = phi ptr [ %.pre, %._ZNSt5dequeIPN3re23DFA5StateESaIS3_EE9push_backERKS3_.exit96_crit_edge ], [ %i.ho, %bb.ao ], [ %i.eg, %6 ] ; 2 uses
  %i.hs = load ptr, ptr %4, align 8, !tbaa !95, !noalias !284 ; 3 uses
  call void @llvm.prefetch.p0(ptr %i.hs, i32 0, i32 1, i32 1), !noalias !284
  %i.ht = ptrtoint ptr %i.hr to i64               ; 2 uses
  %i.hu = add i64 %i.ht, ptrtoint (ptr @_ZN4absl12lts_2024011613hash_internal15MixingHashState5kSeedE to i64)
  %i.hv = zext i64 %i.hu to i128
  %i.hw = mul nuw i128 %i.hv, 11376068507788127593 ; 2 uses
  %i.hx = lshr i128 %i.hw, 64
  %i.hy = xor i128 %i.hx, %i.hw
  %i.hz = trunc i128 %i.hy to i64
  %i.ia = add i64 %i.hz, %i.ht
  %i.ib = zext i64 %i.ia to i128
  %i.ic = mul nuw i128 %i.ib, 11376068507788127593 ; 2 uses
  %i.id = lshr i128 %i.ic, 64
  %i.ie = xor i128 %i.id, %i.ic                   ; 2 uses
  %i.if = trunc i128 %i.ie to i64                 ; 2 uses
  %i.ig = load i64, ptr %i.ai, align 8, !tbaa !94, !noalias !287 ; 2 uses
  %i.ih = lshr i64 %i.if, 7
  %i.ii = ptrtoint ptr %i.hs to i64
  %i.ij = lshr i64 %i.ii, 12
  %i.ik = xor i64 %i.ih, %i.ij
  %i.il = trunc i128 %i.ie to i8
  %i.im = and i8 %i.il, 127
  %i.in = insertelement <16 x i8> poison, i8 %i.im, i64 0
  %i.io = shufflevector <16 x i8> %i.in, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.ip = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !284
  br label %bb.ar

bb.ar:                                            ; preds = %bb.as, %_ZNSt5dequeIPN3re23DFA5StateESaIS3_EE9push_backERKS3_.exit96
  %.pn.i.i135 = phi i64 [ %i.ik, %_ZNSt5dequeIPN3re23DFA5StateESaIS3_EE9push_backERKS3_.exit96 ], [ %i.jh, %bb.as ]
  %.sroa.12.0.i.i136 = phi i64 [ 0, %_ZNSt5dequeIPN3re23DFA5StateESaIS3_EE9push_backERKS3_.exit96 ], [ %i.jg, %bb.as ]
  %.sroa.6.0.i.i137 = and i64 %.pn.i.i135, %i.ig  ; 3 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.hs, i64 %.sroa.6.0.i.i137
  %i.ir = load <16 x i8>, ptr %i.iq, align 1, !tbaa !101, !noalias !284 ; 3 uses
  %i.is = icmp eq <16 x i8> %i.io, %i.ir
  %i.it = bitcast <16 x i1> %i.is to i16          ; 2 uses
  %.not50.i.i138 = icmp eq i16 %i.it, 0
  br i1 %.not50.i.i138, label %._crit_edge.i.i143, label %.lr.ph.i.i139

.lr.ph.i.i139:                                    ; preds = %bb.ar, %.critedge.i.i141
  %.sroa.019.051.i.i140 = phi i16 [ %i.jc, %.critedge.i.i141 ], [ %i.it, %bb.ar ] ; 3 uses
  %i.iu = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.019.051.i.i140, i1 true)
  %i.iv = zext nneg i16 %i.iu to i64
  %i.iw = add i64 %.sroa.6.0.i.i137, %i.iv
  %i.ix = and i64 %i.iw, %i.ig
  %i.iy = getelementptr inbounds nuw [16 x i8], ptr %i.ip, i64 %i.ix ; 2 uses
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !104, !noalias !284
  %i.ja = icmp eq ptr %i.iz, %i.hr
  br i1 %i.ja, label %.loopexit.loopexit, label %.critedge.i.i141, !prof !245

.critedge.i.i141:                                 ; preds = %.lr.ph.i.i139
  %i.jb = add i16 %.sroa.019.051.i.i140, -1
  %i.jc = and i16 %i.jb, %.sroa.019.051.i.i140    ; 2 uses
  %.not.i.i142 = icmp eq i16 %i.jc, 0
  br i1 %.not.i.i142, label %._crit_edge.i.i143, label %.lr.ph.i.i139

._crit_edge.i.i143:                               ; preds = %.critedge.i.i141, %bb.ar
  %i.jd = call <16 x i8> @llvm.x86.ssse3.psign.b.128(<16 x i8> %i.ir, <16 x i8> %i.ir)
  %i.je = icmp slt <16 x i8> %i.jd, zeroinitializer
  %i.jf = bitcast <16 x i1> %i.je to i16
  %.not49.i.i144 = icmp eq i16 %i.jf, 0
  br i1 %.not49.i.i144, label %bb.as, label %bb.at, !prof !83

bb.as:                                            ; preds = %._crit_edge.i.i143
  %i.jg = add i64 %.sroa.12.0.i.i136, 16          ; 2 uses
  %i.jh = add i64 %i.jg, %.sroa.6.0.i.i137
  br label %bb.ar

bb.at:                                            ; preds = %._crit_edge.i.i143
  %i.ji = invoke noundef i64 @_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPN3re23DFA5StateEiEENS1_6HashEqIS7_vE4HashENSA_2EqESaISt4pairIKS7_iEEE14prepare_insertEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.if)
          to label %.noexc149 unwind label %bb.ac

.noexc149:                                        ; preds = %bb.at
  %i.jj = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !tbaa !98, !noalias !284
  %i.jk = getelementptr inbounds nuw [16 x i8], ptr %i.jj, i64 %i.ji ; 2 uses
  %i.jl = load ptr, ptr %i.c, align 8, !tbaa !104, !noalias !284
  store ptr %i.jl, ptr %i.jk, align 8, !tbaa !255, !noalias !284
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jk, i64 8
  store i32 0, ptr %i.jm, align 8, !tbaa !257, !noalias !284
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %.lr.ph.i.i139
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  %.pre237 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !3
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.noexc149
  %i.jn = phi i32 [ 0, %.noexc149 ], [ %.pre237, %.loopexit.loopexit ] ; 2 uses
  %i.jo = icmp eq i32 %i.ef, 256
  %i.jp = load ptr, ptr %0, align 8, !tbaa !9     ; 2 uses
  br i1 %i.jo, label %bb.au, label %bb.av

bb.au:                                            ; preds = %.loopexit
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 20
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !79
  br label %_ZN3re23DFA7ByteMapEi.exit

bb.av:                                            ; preds = %.loopexit
  %i.js = getelementptr inbounds nuw i8, ptr %i.jp, i64 168
  %i.jt = sext i32 %i.ef to i64
  %i.ju = getelementptr inbounds i8, ptr %i.js, i64 %i.jt
  %i.jv = load i8, ptr %i.ju, align 1, !tbaa !101
  %i.jw = zext i8 %i.jv to i32
  br label %_ZN3re23DFA7ByteMapEi.exit

bb.aw:                                            ; preds = %_ZN3re23DFA22RunStateOnByteUnlockedEPNS0_5StateEi.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #29
  br label %.loopexit203

_ZN3re23DFA7ByteMapEi.exit:                       ; preds = %bb.au, %bb.av, %bb.ae, %bb.af
  %.0.i99.sink = phi i32 [ %i.ev, %bb.af ], [ %i.eq, %bb.ae ], [ %i.jr, %bb.au ], [ %i.jw, %bb.av ]
  %.sink = phi i32 [ -1, %bb.af ], [ -1, %bb.ae ], [ %i.jn, %bb.au ], [ %i.jn, %bb.av ]
  %i.jx = sext i32 %.0.i99.sink to i64
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0159.0, i64 %i.jx
  store i32 %.sink, ptr %i.jy, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #29
  %i.jz = getelementptr inbounds nuw i8, ptr %.sroa.0155.0225, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.jz, %.0.i.i.i.i.i
  br i1 %.not, label %.loopexit203, label %.lr.ph

.body:                                            ; preds = %bb.ac, %bb.aa, %bb.aq
  %.pn66 = phi { ptr, i32 } [ %i.ej, %bb.aa ], [ %i.hq, %bb.aq ], [ %i.em, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #29
  br label %bb.bh

.loopexit203:                                     ; preds = %_ZN3re23DFA7ByteMapEi.exit, %_ZNSt5dequeIPN3re23DFA5StateESaIS3_EE9pop_frontEv.exit, %bb.aw
  %.not215 = phi i1 [ false, %bb.aw ], [ true, %_ZNSt5dequeIPN3re23DFA5StateESaIS3_EE9pop_frontEv.exit ], [ true, %_ZN3re23DFA7ByteMapEi.exit ] ; 2 uses
  %i.ka = load ptr, ptr %i.dq, align 8, !tbaa !290
  %.not.i.i101.not = icmp eq ptr %i.ka, null
  br i1 %.not.i.i101.not, label %bb.bb, label %bb.ax

bb.ax:                                            ; preds = %.loopexit203
  %spec.select = select i1 %.not215, ptr %.sroa.0159.0, ptr null
  %i.kb = icmp eq ptr %i.dv, inttoptr (i64 2 to ptr)
  br i1 %i.kb, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.kc = getelementptr inbounds nuw i8, ptr %i.dv, i64 12
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !3
  %i.ke = lshr i32 %i.kd, 8
  %i.kf = trunc i32 %i.ke to i8
  %i.kg = and i8 %i.kf, 1
  br label %bb.az

bb.az:                                            ; preds = %bb.ax, %bb.ay
  %i.kh = phi i8 [ 1, %bb.ax ], [ %i.kg, %bb.ay ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %spec.select, ptr %i.a, align 8, !tbaa !92
  store i8 %i.kh, ptr %i.b, align 1, !tbaa !7
  %i.ki = load ptr, ptr %i.dr, align 8, !tbaa !292
  invoke void %i.ki(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %_ZNKSt8functionIFvPKibEEclES1_b.exit unwind label %bb.ba, !inline_history !294

_ZNKSt8functionIFvPKibEEclES1_b.exit:             ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.kj = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.bb:                                            ; preds = %_ZNKSt8functionIFvPKibEEclES1_b.exit, %.loopexit203
  br i1 %.not215, label %bb.u, label %bb.bc

bb.bc:                                            ; preds = %bb.u, %bb.bb
  %i.kk = load i64, ptr %i.p, align 8, !tbaa !96
  %i.kl = lshr i64 %i.kk, 1
  %i.km = trunc i64 %i.kl to i32
  %.not.i.i.i = icmp eq ptr %.sroa.0159.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.kn = ptrtoint ptr %.sroa.12.0 to i64
  %i.ko = ptrtoint ptr %.sroa.0159.0 to i64
  %i.kp = sub i64 %i.kn, %i.ko
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0159.0, i64 noundef %i.kp) #28
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.bc, %bb.bd
  %.not.i.i.i105 = icmp eq ptr %.sroa.0166.0, null
  br i1 %.not.i.i.i105, label %_ZNSt6vectorIiSaIiEED2Ev.exit106, label %bb.be

bb.be:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.kq = ptrtoint ptr %.sroa.13.0 to i64
  %i.kr = ptrtoint ptr %.sroa.0166.0 to i64
  %i.ks = sub i64 %i.kq, %i.kr
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0166.0, i64 noundef %i.ks) #28
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit106

_ZNSt6vectorIiSaIiEED2Ev.exit106:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.be
  %i.kt = load ptr, ptr %5, align 8, !tbaa !295   ; 2 uses
  %.not.i.i107 = icmp eq ptr %i.kt, null
  br i1 %.not.i.i107, label %_ZNSt5dequeIPN3re23DFA5StateESaIS3_EED2Ev.exit, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit106
  %i.ku = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.kv = load ptr, ptr %i.do, align 8, !tbaa !271 ; 2 uses
  %i.kw = load ptr, ptr %i.ku, align 8, !tbaa !296 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZNSt5dequeIPN3re23DFA5StateESaIS3_EED2Ev:bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !298
  %i.n = shl i64 %i.m, 3
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.n) #28
  br label %_ZNSt11_Deque_baseIPN3re23DFA5StateESaIS3_EED2Ev.exit

_ZNSt11_Deque_baseIPN3re23DFA5StateESaIS3_EED2Ev.exit: ; preds = %bb.a, %_ZNSt11_Deque_baseIPN3re23DFA5StateESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPN3re23DFA5StateEiEENS1_6HashEqIS7_vE4HashENSA_2EqESaISt4pairIKS7_iEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !94   ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPN3re23DFA5StateEiEENS1_6HashEqIS7_vE4HashENSA_2EqESaISt4pairIKS7_iEEE15destructor_implEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !95
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !96
  %i.g = and i64 %i.f, 1                          ; 2 uses
  %i.h = sub nuw nsw i64 -8, %i.g
  %i.i = getelementptr inbounds i8, ptr %i.d, i64 %i.h
  %i.j = add i64 %i.b, 31
  %i.k = shl i64 %i.b, 4
  %i.l = add i64 %i.j, %i.k
  %i.m = add i64 %i.l, %i.g
  %i.n = and i64 %i.m, -8
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #28
  br label %_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPN3re23DFA5StateEiEENS1_6HashEqIS7_vE4HashENSA_2EqESaISt4pairIKS7_iEEE15destructor_implEv.exit

_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPN3re23DFA5StateEiEENS1_6HashEqIS7_vE4HashENSA_2EqESaISt4pairIKS7_iEEE15destructor_implEv.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN3re24Prog14BuildEntireDFAENS0_9MatchKindERKSt8functionIFvPKibEE(ptr noundef nonnull align 8 dereferenceable(432) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  switch i32 %1, label %bb.f [
    i32 0, label %bb.b
    i32 3, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store ptr %0, ptr %i.a, align 8, !tbaa !244
  %i.e = load atomic i32, ptr %i.d acquire, align 8
  %.not.i.i = icmp eq i32 %i.e, 221
  br i1 %.not.i.i, label %"_ZN4absl12lts_202401169call_onceIZN3re24Prog6GetDFAENS3_9MatchKindEE3$_0JPS3_EEEvRNS0_9once_flagEOT_DpOT0_.exit.i", label %bb.c, !prof !245

bb.c:                                             ; preds = %bb.b
  call fastcc void @"_ZN4absl12lts_2024011613base_internal12CallOnceImplIZN3re24Prog6GetDFAENS4_9MatchKindEE3$_0JPS4_EEEvPSt6atomicIjENS1_14SchedulingModeEOT_DpOT0_"(ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.a)
  br label %"_ZN4absl12lts_202401169call_onceIZN3re24Prog6GetDFAENS3_9MatchKindEE3$_0JPS3_EEEvRNS0_9once_flagEOT_DpOT0_.exit.i"

"_ZN4absl12lts_202401169call_onceIZN3re24Prog6GetDFAENS3_9MatchKindEE3$_0JPS3_EEEvRNS0_9once_flagEOT_DpOT0_.exit.i": ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %_ZN3re24Prog6GetDFAENS0_9MatchKindE.exit

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  store ptr %0, ptr %i.b, align 8, !tbaa !244
  %i.g = load atomic i32, ptr %i.f acquire, align 8
  %.not.i4.i = icmp eq i32 %i.g, 221
  br i1 %.not.i4.i, label %"_ZN4absl12lts_202401169call_onceIZN3re24Prog6GetDFAENS3_9MatchKindEE3$_1JPS3_EEEvRNS0_9once_flagEOT_DpOT0_.exit.i", label %bb.e, !prof !245

bb.e:                                             ; preds = %bb.d
  call fastcc void @"_ZN4absl12lts_2024011613base_internal12CallOnceImplIZN3re24Prog6GetDFAENS4_9MatchKindEE3$_1JPS4_EEEvPSt6atomicIjENS1_14SchedulingModeEOT_DpOT0_"(ptr noundef nonnull align 4 dereferenceable(4) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.b)
  br label %"_ZN4absl12lts_202401169call_onceIZN3re24Prog6GetDFAENS3_9MatchKindEE3$_1JPS3_EEEvRNS0_9once_flagEOT_DpOT0_.exit.i"

"_ZN4absl12lts_202401169call_onceIZN3re24Prog6GetDFAENS3_9MatchKindEE3$_1JPS3_EEEvRNS0_9once_flagEOT_DpOT0_.exit.i": ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  br label %_ZN3re24Prog6GetDFAENS0_9MatchKindE.exit

bb.f:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 428 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #29
  store ptr %0, ptr %i.c, align 8, !tbaa !244
  %i.i = load atomic i32, ptr %i.h acquire, align 4
  %.not.i5.i = icmp eq i32 %i.i, 221
  br i1 %.not.i5.i, label %"_ZN4absl12lts_202401169call_onceIZN3re24Prog6GetDFAENS3_9MatchKindEE3$_2JPS3_EEEvRNS0_9once_flagEOT_DpOT0_.exit.i", label %bb.g, !prof !245

bb.g:                                             ; preds = %bb.f
  call fastcc void @"_ZN4absl12lts_2024011613base_internal12CallOnceImplIZN3re24Prog6GetDFAENS4_9MatchKindEE3$_2JPS4_EEEvPSt6atomicIjENS1_14SchedulingModeEOT_DpOT0_"(ptr noundef nonnull align 4 dereferenceable(4) %i.h, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.c)
  br label %"_ZN4absl12lts_202401169call_onceIZN3re24Prog6GetDFAENS3_9MatchKindEE3$_2JPS3_EEEvRNS0_9once_flagEOT_DpOT0_.exit.i"

"_ZN4absl12lts_202401169call_onceIZN3re24Prog6GetDFAENS3_9MatchKindEE3$_2JPS3_EEEvRNS0_9once_flagEOT_DpOT0_.exit.i": ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #29
  br label %_ZN3re24Prog6GetDFAENS0_9MatchKindE.exit

_ZN3re24Prog6GetDFAENS0_9MatchKindE.exit:         ; preds = %"_ZN4absl12lts_202401169call_onceIZN3re24Prog6GetDFAENS3_9MatchKindEE3$_0JPS3_EEEvRNS0_9once_flagEOT_DpOT0_.exit.i", %"_ZN4absl12lts_202401169call_onceIZN3re24Prog6GetDFAENS3_9MatchKindEE3$_1JPS3_EEEvRNS0_9once_flagEOT_DpOT0_.exit.i", %"_ZN4absl12lts_202401169call_onceIZN3re24Prog6GetDFAENS3_9MatchKindEE3$_2JPS3_EEEvRNS0_9once_flagEOT_DpOT0_.exit.i"
  %.sink.i = phi i64 [ 160, %"_ZN4absl12lts_202401169call_onceIZN3re24Prog6GetDFAENS3_9MatchKindEE3$_2JPS3_EEEvRNS0_9once_flagEOT_DpOT0_.exit.i" ], [ 152, %"_ZN4absl12lts_202401169call_onceIZN3re24Prog6GetDFAENS3_9MatchKindEE3$_1JPS3_EEEvRNS0_9once_flagEOT_DpOT0_.exit.i" ], [ 152, %"_ZN4absl12lts_202401169call_onceIZN3re24Prog6GetDFAENS3_9MatchKindEE3$_0JPS3_EEEvRNS0_9once_flagEOT_DpOT0_.exit.i" ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %.sink.i
  %.0.i = load ptr, ptr %i.j, align 8, !tbaa !246
  %i.k = tail call noundef i32 @_ZN3re23DFA14BuildAllStatesERKSt8functionIFvPKibEE(ptr noundef nonnull align 8 dereferenceable(176) %.0.i, ptr noundef nonnull align 8 dereferenceable(32) %2)
  ret i32 %i.k
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN3re23DFA18PossibleMatchRangeEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_i(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.absl::lts_20240116::flat_hash_map", align 8 ; 20 uses
  %5 = alloca %"class.re2::DFA::RWLocker", align 8 ; 7 uses
  %6 = alloca %"struct.re2::DFA::SearchParams", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i8, ptr %i.a, align 4, !tbaa !37, !range !132, !noundef !97
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.be, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2024011618container_internal11kEmptyGroupE, i64 16), ptr %4, align 8
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 9 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i.i.i, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke void @_ZN3re23DFA8RWLockerC1EPN4absl12lts_202401165MutexE(ptr noundef nonnull align 8 dereferenceable(9) %5, ptr noundef nonnull %i.d)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  store ptr null, ptr %i.f, align 8, !tbaa !191
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %6, i8 0, i64 36, i1 false)
  store ptr %5, ptr %i.g, align 8, !tbaa !201
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 56
  store i8 0, ptr %i.h, align 8, !tbaa !200
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  store i8 1, ptr %i.e, align 8, !tbaa !242
  %i.j = invoke noundef zeroext i1 @_ZN3re23DFA13AnalyzeSearchEPNS0_12SearchParamsE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull %6)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  br i1 %i.j, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit104

bb.e:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit, %bb.h, %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4absl12lts_202401169MutexLockD2Ev.exit125

bb.g:                                             ; preds = %bb.d
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !191  ; 3 uses
  %magicptr = ptrtoint ptr %i.m to i64
  switch i64 %magicptr, label %bb.i [
    i64 1, label %bb.h
    i64 2, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit104
  ]

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !109
  %i.p = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 0, i64 noundef %i.o, ptr noundef nonnull @.str, i64 noundef 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.f ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !109
  %i.s = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef %i.r, ptr noundef nonnull @.str, i64 noundef 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit104 unwind label %bb.f ; 0 uses

bb.i:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  store i64 0, ptr %i.t, align 8, !tbaa !109
  %i.u = load ptr, ptr %1, align 8, !tbaa !111
  store i8 0, ptr %i.u, align 1, !tbaa !101
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke void @_ZN4absl12lts_202401165Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.v)
          to label %_ZN4absl12lts_202401169MutexLockC2EPNS0_5MutexE.exit.preheader unwind label %bb.j

_ZN4absl12lts_202401169MutexLockC2EPNS0_5MutexE.exit.preheader: ; preds = %bb.i
  %i.w = icmp sgt i32 %3, 0                       ; 2 uses
  br i1 %i.w, label %.lr.ph, label %.thread226

.lr.ph:                                           ; preds = %_ZN4absl12lts_202401169MutexLockC2EPNS0_5MutexE.exit.preheader
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4absl12lts_202401169MutexLockD2Ev.exit125

bb.k:                                             ; preds = %.lr.ph, %_ZN4absl12lts_202401169MutexLockC2EPNS0_5MutexE.exit
  %.061285 = phi i32 [ 0, %.lr.ph ], [ %i.ea, %_ZN4absl12lts_202401169MutexLockC2EPNS0_5MutexE.exit ]
  %.0284 = phi ptr [ %i.m, %.lr.ph ], [ %i.dh, %_ZN4absl12lts_202401169MutexLockC2EPNS0_5MutexE.exit ] ; 7 uses
  %i.aa = load ptr, ptr %4, align 8, !tbaa !95, !noalias !299 ; 3 uses
  call void @llvm.prefetch.p0(ptr %i.aa, i32 0, i32 1, i32 1), !noalias !299
  %i.ab = ptrtoint ptr %.0284 to i64              ; 2 uses
  %i.ac = add i64 %i.ab, ptrtoint (ptr @_ZN4absl12lts_2024011613hash_internal15MixingHashState5kSeedE to i64)
  %i.ad = zext i64 %i.ac to i128
  %i.ae = mul nuw i128 %i.ad, 11376068507788127593 ; 2 uses
  %i.af = lshr i128 %i.ae, 64
  %i.ag = xor i128 %i.af, %i.ae
  %i.ah = trunc i128 %i.ag to i64
  %i.ai = add i64 %i.ah, %i.ab
  %i.aj = zext i64 %i.ai to i128
  %i.ak = mul nuw i128 %i.aj, 11376068507788127593 ; 2 uses
  %i.al = lshr i128 %i.ak, 64
  %i.am = xor i128 %i.al, %i.ak                   ; 2 uses
  %i.an = trunc i128 %i.am to i64                 ; 3 uses
  %i.ao = load i64, ptr %i.x, align 8, !tbaa !94, !noalias !302 ; 2 uses
  %i.ap = lshr i64 %i.an, 7                       ; 2 uses
  %i.aq = ptrtoint ptr %i.aa to i64
  %i.ar = lshr i64 %i.aq, 12
  %i.as = xor i64 %i.ar, %i.ap
  %i.at = trunc i128 %i.am to i8
  %i.au = and i8 %i.at, 127
  %i.av = insertelement <16 x i8> poison, i8 %i.au, i64 0
  %i.aw = shufflevector <16 x i8> %i.av, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.ax = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !299
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %bb.k
  %.pn.i.i = phi i64 [ %i.as, %bb.k ], [ %i.bp, %bb.m ]
  %.sroa.12.0.i.i = phi i64 [ 0, %bb.k ], [ %i.bo, %bb.m ]
  %.sroa.6.0.i.i = and i64 %.pn.i.i, %i.ao        ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.sroa.6.0.i.i
  %i.az = load <16 x i8>, ptr %i.ay, align 1, !tbaa !101, !noalias !299 ; 3 uses
  %i.ba = icmp eq <16 x i8> %i.aw, %i.az
  %i.bb = bitcast <16 x i1> %i.ba to i16          ; 2 uses
  %.not50.i.i = icmp eq i16 %i.bb, 0
  br i1 %.not50.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.l, %.critedge.i.i
  %.sroa.019.051.i.i = phi i16 [ %i.bk, %.critedge.i.i ], [ %i.bb, %bb.l ] ; 3 uses
  %i.bc = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.019.051.i.i, i1 true)
  %i.bd = zext nneg i16 %i.bc to i64
  %i.be = add i64 %.sroa.6.0.i.i, %i.bd
  %i.bf = and i64 %i.be, %i.ao
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %i.ax, i64 %i.bf ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !104, !noalias !299
  %i.bi = icmp eq ptr %i.bh, %.0284
  br i1 %i.bi, label %.loopexit257, label %.critedge.i.i, !prof !245

.critedge.i.i:                                    ; preds = %.lr.ph.i.i
  %i.bj = add i16 %.sroa.019.051.i.i, -1
  %i.bk = and i16 %i.bj, %.sroa.019.051.i.i       ; 2 uses
  %.not.i.i126 = icmp eq i16 %i.bk, 0
  br i1 %.not.i.i126, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.critedge.i.i, %bb.l
  %i.bl = call <16 x i8> @llvm.x86.ssse3.psign.b.128(<16 x i8> %i.az, <16 x i8> %i.az)
  %i.bm = icmp slt <16 x i8> %i.bl, zeroinitializer
  %i.bn = bitcast <16 x i1> %i.bm to i16
  %.not49.i.i = icmp eq i16 %i.bn, 0
  br i1 %.not49.i.i, label %bb.m, label %bb.n, !prof !83

bb.m:                                             ; preds = %._crit_edge.i.i
  %i.bo = add i64 %.sroa.12.0.i.i, 16             ; 2 uses
  %i.bp = add i64 %i.bo, %.sroa.6.0.i.i
  br label %bb.l

bb.n:                                             ; preds = %._crit_edge.i.i
  %i.bq = invoke noundef i64 @_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPN3re23DFA5StateEiEENS1_6HashEqIS7_vE4HashENSA_2EqESaISt4pairIKS7_iEEE14prepare_insertEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.an)
          to label %.loopexit257.thread unwind label %bb.o

.loopexit257.thread:                              ; preds = %bb.n
  %i.br = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !tbaa !98, !noalias !299
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr %i.br, i64 %i.bq ; 2 uses
  store ptr %.0284, ptr %i.bs, align 8, !tbaa !255, !noalias !299
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store i32 0, ptr %i.bt, align 8, !tbaa !257, !noalias !299
  br label %bb.p

.loopexit257:                                     ; preds = %.lr.ph.i.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !3
  %i.bu = icmp sgt i32 %.pre, 0
  br i1 %i.bu, label %.thread226, label %bb.p

bb.o:                                             ; preds = %bb.s, %bb.n
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp259

bb.p:                                             ; preds = %.loopexit257.thread, %.loopexit257
  %7 = load ptr, ptr %4, align 8, !tbaa !95, !noalias !305 ; 3 uses
  call void @llvm.prefetch.p0(ptr %7, i32 0, i32 1, i32 1), !noalias !305
  %i.bw = load i64, ptr %i.x, align 8, !tbaa !94, !noalias !308 ; 2 uses
  %i.bx = ptrtoint ptr %7 to i64
  %i.by = lshr i64 %i.bx, 12
  %i.bz = xor i64 %i.by, %i.ap
  %i.ca = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !305 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.r, %bb.p
  %.pn.i.i128 = phi i64 [ %i.bz, %bb.p ], [ %i.cs, %bb.r ]
  %.sroa.12.0.i.i129 = phi i64 [ 0, %bb.p ], [ %i.cr, %bb.r ]
  %.sroa.6.0.i.i130 = and i64 %.pn.i.i128, %i.bw  ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %7, i64 %.sroa.6.0.i.i130
  %i.cc = load <16 x i8>, ptr %i.cb, align 1, !tbaa !101, !noalias !305 ; 3 uses
  %i.cd = icmp eq <16 x i8> %i.aw, %i.cc
  %i.ce = bitcast <16 x i1> %i.cd to i16          ; 2 uses
  %.not50.i.i131 = icmp eq i16 %i.ce, 0
  br i1 %.not50.i.i131, label %._crit_edge.i.i136, label %.lr.ph.i.i132

.lr.ph.i.i132:                                    ; preds = %bb.q, %.critedge.i.i134
  %.sroa.019.051.i.i133 = phi i16 [ %i.cn, %.critedge.i.i134 ], [ %i.ce, %bb.q ] ; 3 uses
  %i.cf = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.019.051.i.i133, i1 true)
  %i.cg = zext nneg i16 %i.cf to i64
  %i.ch = add i64 %.sroa.6.0.i.i130, %i.cg
  %i.ci = and i64 %i.ch, %i.bw                    ; 2 uses
  %i.cj = getelementptr inbounds nuw [16 x i8], ptr %i.ca, i64 %i.ci ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !104, !noalias !305
  %i.cl = icmp eq ptr %i.ck, %.0284
  br i1 %i.cl, label %.loopexit256.loopexit, label %.critedge.i.i134, !prof !245

.critedge.i.i134:                                 ; preds = %.lr.ph.i.i132
  %i.cm = add i16 %.sroa.019.051.i.i133, -1
  %i.cn = and i16 %i.cm, %.sroa.019.051.i.i133    ; 2 uses
  %.not.i.i135 = icmp eq i16 %i.cn, 0
  br i1 %.not.i.i135, label %._crit_edge.i.i136, label %.lr.ph.i.i132

._crit_edge.i.i136:                               ; preds = %.critedge.i.i134, %bb.q
  %i.co = call <16 x i8> @llvm.x86.ssse3.psign.b.128(<16 x i8> %i.cc, <16 x i8> %i.cc)
  %i.cp = icmp slt <16 x i8> %i.co, zeroinitializer
  %i.cq = bitcast <16 x i1> %i.cp to i16
  %.not49.i.i137 = icmp eq i16 %i.cq, 0
  br i1 %.not49.i.i137, label %bb.r, label %bb.s, !prof !83

bb.r:                                             ; preds = %._crit_edge.i.i136
  %i.cr = add i64 %.sroa.12.0.i.i129, 16          ; 2 uses
  %i.cs = add i64 %i.cr, %.sroa.6.0.i.i130
  br label %bb.q

bb.s:                                             ; preds = %._crit_edge.i.i136
  %i.ct = invoke noundef i64 @_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPN3re23DFA5StateEiEENS1_6HashEqIS7_vE4HashENSA_2EqESaISt4pairIKS7_iEEE14prepare_insertEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.an)
          to label %.noexc142 unwind label %bb.o  ; 2 uses

.noexc142:                                        ; preds = %bb.s
  %i.cu = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !tbaa !98, !noalias !305 ; 2 uses
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %i.cu, i64 %i.ct ; 2 uses
  store ptr %.0284, ptr %i.cv, align 8, !tbaa !255, !noalias !305
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store i32 0, ptr %i.cw, align 8, !tbaa !257, !noalias !305
  br label %.loopexit256

.loopexit256.loopexit:                            ; preds = %.lr.ph.i.i132
  %.phi.trans.insert316 = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %.pre317 = load i32, ptr %.phi.trans.insert316, align 4, !tbaa !3
  %i.cx = add nsw i32 %.pre317, 1
  br label %.loopexit256

.loopexit256:                                     ; preds = %.loopexit256.loopexit, %.noexc142
  %i.cy = phi i32 [ 1, %.noexc142 ], [ %i.cx, %.loopexit256.loopexit ]
  %i.cz = phi ptr [ %i.cu, %.noexc142 ], [ %i.ca, %.loopexit256.loopexit ]
  %.sroa.031.2.i14.i140 = phi i64 [ %i.ct, %.noexc142 ], [ %i.ci, %.loopexit256.loopexit ]
  %i.da = getelementptr inbounds nuw [16 x i8], ptr %i.cz, i64 %.sroa.031.2.i14.i140
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  store i32 %i.cy, ptr %i.db, align 4, !tbaa !3
  %i.dc = invoke noundef ptr @_ZN3re23DFA14RunStateOnByteEPNS0_5StateEi(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %.0284, i32 noundef 256)
          to label %bb.t unwind label %bb.u       ; 2 uses

bb.t:                                             ; preds = %.loopexit256
  %magicptr99 = ptrtoint ptr %i.dc to i64
  switch i64 %magicptr99, label %bb.v [
    i64 0, label %.loopexit255
    i64 1, label %.preheader
    i64 2, label %.thread226
  ]

bb.u:                                             ; preds = %.loopexit256
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp259

bb.v:                                             ; preds = %bb.t
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 12
  %i.df = load i32, ptr %i.de, align 4, !tbaa !3
  %i.dg = and i32 %i.df, 256
  %.not = icmp eq i32 %i.dg, 0
  br i1 %.not, label %.preheader, label %.thread226

.preheader:                                       ; preds = %bb.t, %bb.v
  br label %bb.w

bb.w:                                             ; preds = %.preheader, %bb.ae
  %.059283 = phi i32 [ %i.dv, %bb.ae ], [ 0, %.preheader ] ; 3 uses
  %i.dh = invoke noundef ptr @_ZN3re23DFA14RunStateOnByteEPNS0_5StateEi(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %.0284, i32 noundef %.059283)
          to label %bb.x unwind label %.loopexit258 ; 4 uses

bb.x:                                             ; preds = %bb.w
  %magicptr100 = ptrtoint ptr %i.dh to i64
  switch i64 %magicptr100, label %bb.y [
    i64 0, label %.loopexit255
    i64 2, label %bb.aa
  ]

.loopexit258:                                     ; preds = %bb.w
  %lpad.loopexit260 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp259

.loopexit.split-lp259.loopexit:                   ; preds = %bb.ad
  %lpad.loopexit265 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp259

.loopexit.split-lp259.loopexit.split-lp:          ; preds = %bb.ab
  %lpad.loopexit.split-lp266 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp259

bb.y:                                             ; preds = %bb.x
  %i.di = icmp ugt ptr %i.dh, inttoptr (i64 2 to ptr)
  br i1 %i.di, label %bb.z, label %bb.ae

bb.z:                                             ; preds = %bb.y
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !3
  %i.dl = icmp sgt i32 %i.dk, 0
  br i1 %i.dl, label %bb.aa, label %bb.ae

bb.aa:                                            ; preds = %bb.x, %bb.z
  %i.dm = trunc nuw i32 %.059283 to i8
  %i.dn = load i64, ptr %i.t, align 8, !tbaa !109 ; 5 uses
  %i.do = icmp eq i64 %i.dn, 9223372036854775807
  br i1 %i.do, label %bb.ab, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #27
          to label %.noexc unwind label %.loopexit.split-lp259.loopexit.split-lp

.noexc:                                           ; preds = %bb.ab
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.aa
  %i.dp = add nsw i64 %i.dn, 1                    ; 3 uses
  %i.dq = load ptr, ptr %1, align 8, !tbaa !111   ; 2 uses
  %i.dr = icmp eq ptr %i.dq, %i.y                 ; 2 uses
  br i1 %i.dr, label %bb.ac, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

bb.ac:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.ds = icmp ult i64 %i.dn, 16
  call void @llvm.assume(i1 %i.ds)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.dt = load i64, ptr %i.y, align 8
  %i.du = select i1 %i.dr, i64 15, i64 %i.dt
  %.not.i.i = icmp ugt i64 %i.dp, %i.du
  br i1 %.not.i.i, label %bb.ad, label %_ZN4absl12lts_202401169MutexLockC2EPNS0_5MutexE.exit

bb.ad:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.dn, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %._ZN4absl12lts_202401169MutexLockC2EPNS0_5MutexE.exit_crit_edge unwind label %.loopexit.split-lp259.loopexit

._ZN4absl12lts_202401169MutexLockC2EPNS0_5MutexE.exit_crit_edge: ; preds = %bb.ad
  %.pre318 = load ptr, ptr %1, align 8, !tbaa !111
  br label %_ZN4absl12lts_202401169MutexLockC2EPNS0_5MutexE.exit

bb.ae:                                            ; preds = %bb.y, %bb.z
  %i.dv = add nuw nsw i32 %.059283, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.dv, 256
  br i1 %exitcond.not, label %.thread226, label %bb.w, !llvm.loop !311

_ZN4absl12lts_202401169MutexLockC2EPNS0_5MutexE.exit: ; preds = %._ZN4absl12lts_202401169MutexLockC2EPNS0_5MutexE.exit_crit_edge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.dw = phi ptr [ %.pre318, %._ZN4absl12lts_202401169MutexLockC2EPNS0_5MutexE.exit_crit_edge ], [ %i.dq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.dn
  store i8 %i.dm, ptr %i.dx, align 1, !tbaa !101
  store i64 %i.dp, ptr %i.t, align 8, !tbaa !109
  %i.dy = load ptr, ptr %1, align 8, !tbaa !111
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.dp
  store i8 0, ptr %i.dz, align 1, !tbaa !101
  %i.ea = add nuw nsw i32 %.061285, 1             ; 2 uses
  %exitcond314.not = icmp eq i32 %i.ea, %3
  br i1 %exitcond314.not, label %.thread226, label %bb.k, !llvm.loop !312

.thread226:                                       ; preds = %_ZN4absl12lts_202401169MutexLockC2EPNS0_5MutexE.exit, %.loopexit257, %bb.t, %bb.v, %bb.ae, %_ZN4absl12lts_202401169MutexLockC2EPNS0_5MutexE.exit.preheader
  %i.eb = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !94 ; 2 uses
  %i.ed = icmp eq i64 %i.ec, 0
  br i1 %i.ed, label %_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPN3re23DFA5StateEiEENS1_6HashEqIS7_vE4HashENSA_2EqESaISt4pairIKS7_iEEE5clearEv.exit, label %bb.af

bb.af:                                            ; preds = %.thread226
  %i.ee = icmp ult i64 %i.ec, 128
  invoke void @_ZN4absl12lts_2024011618container_internal17ClearBackingArrayERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEb(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPN3re23DFA5StateEiEENS1_6HashEqIS7_vE4HashENSA_2EqESaISt4pairIKS7_iEEE18GetPolicyFunctionsEvE5value, i1 noundef zeroext %i.ee)
          to label %_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPN3re23DFA5StateEiEENS1_6HashEqIS7_vE4HashENSA_2EqESaISt4pairIKS7_iEEE5clearEv.exit unwind label %bb.ag

_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPN3re23DFA5StateEiEENS1_6HashEqIS7_vE4HashENSA_2EqESaISt4pairIKS7_iEEE5clearEv.exit: ; preds = %.thread226, %bb.af
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  store i64 0, ptr %i.ef, align 8, !tbaa !109
  %i.eg = load ptr, ptr %2, align 8, !tbaa !111
  store i8 0, ptr %i.eg, align 1, !tbaa !101
  br i1 %i.w, label %.lr.ph292, label %._crit_edge

.lr.ph292:                                        ; preds = %_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPN3re23DFA5StateEiEENS1_6HashEqIS7_vE4HashENSA_2EqESaISt4pairIKS7_iEEE5clearEv.exit
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br label %bb.ah

bb.ag:                                            ; preds = %bb.af, %._crit_edge
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp259

bb.ah:                                            ; preds = %.lr.ph292, %.loopexit250
  %.058290 = phi i32 [ 0, %.lr.ph292 ], [ %i.ie, %.loopexit250 ]
  %.3289 = phi ptr [ %i.m, %.lr.ph292 ], [ %i.hl, %.loopexit250 ] ; 6 uses
  %i.ej = load ptr, ptr %4, align 8, !tbaa !95, !noalias !313 ; 3 uses
  call void @llvm.prefetch.p0(ptr %i.ej, i32 0, i32 1, i32 1), !noalias !313
  %i.ek = ptrtoint ptr %.3289 to i64              ; 2 uses
  %i.el = add i64 %i.ek, ptrtoint (ptr @_ZN4absl12lts_2024011613hash_internal15MixingHashState5kSeedE to i64)
  %i.em = zext i64 %i.el to i128
  %i.en = mul nuw i128 %i.em, 11376068507788127593 ; 2 uses
  %i.eo = lshr i128 %i.en, 64
  %i.ep = xor i128 %i.eo, %i.en
  %i.eq = trunc i128 %i.ep to i64
  %i.er = add i64 %i.eq, %i.ek
  %i.es = zext i64 %i.er to i128
  %i.et = mul nuw i128 %i.es, 11376068507788127593 ; 2 uses
  %i.eu = lshr i128 %i.et, 64
  %i.ev = xor i128 %i.eu, %i.et                   ; 2 uses
  %i.ew = trunc i128 %i.ev to i64                 ; 3 uses
  %i.ex = load i64, ptr %i.eb, align 8, !tbaa !94, !noalias !316 ; 2 uses
  %i.ey = lshr i64 %i.ew, 7                       ; 2 uses
  %i.ez = ptrtoint ptr %i.ej to i64
  %i.fa = lshr i64 %i.ez, 12
  %i.fb = xor i64 %i.fa, %i.ey
  %i.fc = trunc i128 %i.ev to i8
  %i.fd = and i8 %i.fc, 127
  %i.fe = insertelement <16 x i8> poison, i8 %i.fd, i64 0
  %i.ff = shufflevector <16 x i8> %i.fe, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.fg = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !313
  br label %bb.ai

bb.ai:                                            ; preds = %bb.aj, %bb.ah
  %.pn.i.i144 = phi i64 [ %i.fb, %bb.ah ], [ %i.fy, %bb.aj ]
  %.sroa.12.0.i.i145 = phi i64 [ 0, %bb.ah ], [ %i.fx, %bb.aj ]
  %.sroa.6.0.i.i146 = and i64 %.pn.i.i144, %i.ex  ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ej, i64 %.sroa.6.0.i.i146
  %i.fi = load <16 x i8>, ptr %i.fh, align 1, !tbaa !101, !noalias !313 ; 3 uses
  %i.fj = icmp eq <16 x i8> %i.ff, %i.fi
  %i.fk = bitcast <16 x i1> %i.fj to i16          ; 2 uses
  %.not50.i.i147 = icmp eq i16 %i.fk, 0
  br i1 %.not50.i.i147, label %._crit_edge.i.i152, label %.lr.ph.i.i148

.lr.ph.i.i148:                                    ; preds = %bb.ai, %.critedge.i.i150
  %.sroa.019.051.i.i149 = phi i16 [ %i.ft, %.critedge.i.i150 ], [ %i.fk, %bb.ai ] ; 3 uses
  %i.fl = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.019.051.i.i149, i1 true)
  %i.fm = zext nneg i16 %i.fl to i64
  %i.fn = add i64 %.sroa.6.0.i.i146, %i.fm
  %i.fo = and i64 %i.fn, %i.ex
  %i.fp = getelementptr inbounds nuw [16 x i8], ptr %i.fg, i64 %i.fo ; 2 uses
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !104, !noalias !313
  %i.fr = icmp eq ptr %i.fq, %.3289
  br i1 %i.fr, label %.loopexit249, label %.critedge.i.i150, !prof !245

.critedge.i.i150:                                 ; preds = %.lr.ph.i.i148
  %i.fs = add i16 %.sroa.019.051.i.i149, -1
  %i.ft = and i16 %i.fs, %.sroa.019.051.i.i149    ; 2 uses
  %.not.i.i151 = icmp eq i16 %i.ft, 0
  br i1 %.not.i.i151, label %._crit_edge.i.i152, label %.lr.ph.i.i148

._crit_edge.i.i152:                               ; preds = %.critedge.i.i150, %bb.ai
  %i.fu = call <16 x i8> @llvm.x86.ssse3.psign.b.128(<16 x i8> %i.fi, <16 x i8> %i.fi)
  %i.fv = icmp slt <16 x i8> %i.fu, zeroinitializer
  %i.fw = bitcast <16 x i1> %i.fv to i16
  %.not49.i.i153 = icmp eq i16 %i.fw, 0
  br i1 %.not49.i.i153, label %bb.aj, label %bb.ak, !prof !83

bb.aj:                                            ; preds = %._crit_edge.i.i152
  %i.fx = add i64 %.sroa.12.0.i.i145, 16          ; 2 uses
  %i.fy = add i64 %i.fx, %.sroa.6.0.i.i146
  br label %bb.ai

bb.ak:                                            ; preds = %._crit_edge.i.i152
  %i.fz = invoke noundef i64 @_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPN3re23DFA5StateEiEENS1_6HashEqIS7_vE4HashENSA_2EqESaISt4pairIKS7_iEEE14prepare_insertEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.ew)
          to label %.loopexit249.thread unwind label %bb.al

.loopexit249.thread:                              ; preds = %bb.ak
  %i.ga = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !tbaa !98, !noalias !313
  %i.gb = getelementptr inbounds nuw [16 x i8], ptr %i.ga, i64 %i.fz ; 2 uses
  store ptr %.3289, ptr %i.gb, align 8, !tbaa !255, !noalias !313
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  store i32 0, ptr %i.gc, align 8, !tbaa !257, !noalias !313
  br label %bb.am

.loopexit249:                                     ; preds = %.lr.ph.i.i148
  %.phi.trans.insert319 = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  %.pre320 = load i32, ptr %.phi.trans.insert319, align 4, !tbaa !3
  %i.gd = icmp sgt i32 %.pre320, 0
  br i1 %i.gd, label %._crit_edge, label %bb.am

bb.al:                                            ; preds = %bb.ap, %bb.ak
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp259

bb.am:                                            ; preds = %.loopexit249.thread, %.loopexit249
  %8 = load ptr, ptr %4, align 8, !tbaa !95, !noalias !319 ; 3 uses
  call void @llvm.prefetch.p0(ptr %8, i32 0, i32 1, i32 1), !noalias !319
  %i.gf = load i64, ptr %i.eb, align 8, !tbaa !94, !noalias !322 ; 2 uses
  %i.gg = ptrtoint ptr %8 to i64
  %i.gh = lshr i64 %i.gg, 12
  %i.gi = xor i64 %i.gh, %i.ey
  %i.gj = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !319 ; 2 uses
  br label %bb.an

bb.an:                                            ; preds = %bb.ao, %bb.am
  %.pn.i.i160 = phi i64 [ %i.gi, %bb.am ], [ %i.hb, %bb.ao ]
  %.sroa.12.0.i.i161 = phi i64 [ 0, %bb.am ], [ %i.ha, %bb.ao ]
  %.sroa.6.0.i.i162 = and i64 %.pn.i.i160, %i.gf  ; 3 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %8, i64 %.sroa.6.0.i.i162
  %i.gl = load <16 x i8>, ptr %i.gk, align 1, !tbaa !101, !noalias !319 ; 3 uses
  %i.gm = icmp eq <16 x i8> %i.ff, %i.gl
  %i.gn = bitcast <16 x i1> %i.gm to i16          ; 2 uses
  %.not50.i.i163 = icmp eq i16 %i.gn, 0
  br i1 %.not50.i.i163, label %._crit_edge.i.i168, label %.lr.ph.i.i164

.lr.ph.i.i164:                                    ; preds = %bb.an, %.critedge.i.i166
  %.sroa.019.051.i.i165 = phi i16 [ %i.gw, %.critedge.i.i166 ], [ %i.gn, %bb.an ] ; 3 uses
  %i.go = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.019.051.i.i165, i1 true)
  %i.gp = zext nneg i16 %i.go to i64
  %i.gq = add i64 %.sroa.6.0.i.i162, %i.gp
  %i.gr = and i64 %i.gq, %i.gf                    ; 2 uses
  %i.gs = getelementptr inbounds nuw [16 x i8], ptr %i.gj, i64 %i.gr ; 2 uses
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !104, !noalias !319
  %i.gu = icmp eq ptr %i.gt, %.3289
  br i1 %i.gu, label %.loopexit.loopexit, label %.critedge.i.i166, !prof !245

.critedge.i.i166:                                 ; preds = %.lr.ph.i.i164
  %i.gv = add i16 %.sroa.019.051.i.i165, -1
  %i.gw = and i16 %i.gv, %.sroa.019.051.i.i165    ; 2 uses
  %.not.i.i167 = icmp eq i16 %i.gw, 0
  br i1 %.not.i.i167, label %._crit_edge.i.i168, label %.lr.ph.i.i164

._crit_edge.i.i168:                               ; preds = %.critedge.i.i166, %bb.an
  %i.gx = call <16 x i8> @llvm.x86.ssse3.psign.b.128(<16 x i8> %i.gl, <16 x i8> %i.gl)
  %i.gy = icmp slt <16 x i8> %i.gx, zeroinitializer
  %i.gz = bitcast <16 x i1> %i.gy to i16
  %.not49.i.i169 = icmp eq i16 %i.gz, 0
  br i1 %.not49.i.i169, label %bb.ao, label %bb.ap, !prof !83

bb.ao:                                            ; preds = %._crit_edge.i.i168
  %i.ha = add i64 %.sroa.12.0.i.i161, 16          ; 2 uses
  %i.hb = add i64 %i.ha, %.sroa.6.0.i.i162
  br label %bb.an

bb.ap:                                            ; preds = %._crit_edge.i.i168
  %i.hc = invoke noundef i64 @_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPN3re23DFA5StateEiEENS1_6HashEqIS7_vE4HashENSA_2EqESaISt4pairIKS7_iEEE14prepare_insertEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.ew)
          to label %.noexc174 unwind label %bb.al ; 2 uses

.noexc174:                                        ; preds = %bb.ap
  %i.hd = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !tbaa !98, !noalias !319 ; 2 uses
  %i.he = getelementptr inbounds nuw [16 x i8], ptr %i.hd, i64 %i.hc ; 2 uses
  store ptr %.3289, ptr %i.he, align 8, !tbaa !255, !noalias !319
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  store i32 0, ptr %i.hf, align 8, !tbaa !257, !noalias !319
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %.lr.ph.i.i164
  %.phi.trans.insert321 = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  %.pre322 = load i32, ptr %.phi.trans.insert321, align 4, !tbaa !3
  %i.hg = add nsw i32 %.pre322, 1
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.noexc174
  %i.hh = phi i32 [ 1, %.noexc174 ], [ %i.hg, %.loopexit.loopexit ]
  %i.hi = phi ptr [ %i.hd, %.noexc174 ], [ %i.gj, %.loopexit.loopexit ]
  %.sroa.031.2.i14.i172 = phi i64 [ %i.hc, %.noexc174 ], [ %i.gr, %.loopexit.loopexit ]
  %i.hj = getelementptr inbounds nuw [16 x i8], ptr %i.hi, i64 %.sroa.031.2.i14.i172
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  store i32 %i.hh, ptr %i.hk, align 4, !tbaa !3
  br label %bb.aq

bb.aq:                                            ; preds = %.loopexit, %bb.ay
  %.054288 = phi i32 [ 255, %.loopexit ], [ %i.hz, %bb.ay ] ; 4 uses
  %i.hl = invoke noundef ptr @_ZN3re23DFA14RunStateOnByteEPNS0_5StateEi(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %.3289, i32 noundef %.054288)
          to label %bb.ar unwind label %.loopexit251 ; 4 uses

bb.ar:                                            ; preds = %bb.aq
  %magicptr101 = ptrtoint ptr %i.hl to i64
  switch i64 %magicptr101, label %bb.as [
    i64 0, label %.loopexit255
    i64 2, label %bb.au
  ]

.loopexit251:                                     ; preds = %bb.aq
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp259

.loopexit.split-lp.loopexit:                      ; preds = %bb.ax
  %lpad.loopexit252 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp259

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.av
  %lpad.loopexit.split-lp253 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp259

bb.as:                                            ; preds = %bb.ar
  %i.hm = icmp ugt ptr %i.hl, inttoptr (i64 2 to ptr)
  br i1 %i.hm, label %bb.at, label %bb.ay

bb.at:                                            ; preds = %bb.as
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  %i.ho = load i32, ptr %i.hn, align 8, !tbaa !3
  %i.hp = icmp sgt i32 %i.ho, 0
  br i1 %i.hp, label %bb.au, label %bb.ay

bb.au:                                            ; preds = %bb.ar, %bb.at
  %i.hq = trunc i32 %.054288 to i8
  %i.hr = load i64, ptr %i.ef, align 8, !tbaa !109 ; 5 uses
  %i.hs = icmp eq i64 %i.hr, 9223372036854775807
  br i1 %i.hs, label %bb.av, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i119

bb.av:                                            ; preds = %bb.au
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #27
          to label %.noexc122 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc122:                                        ; preds = %bb.av
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i119: ; preds = %bb.au
  %i.ht = add nsw i64 %i.hr, 1                    ; 3 uses
  %i.hu = load ptr, ptr %2, align 8, !tbaa !111   ; 2 uses
  %i.hv = icmp eq ptr %i.hu, %i.eh                ; 2 uses
  br i1 %i.hv, label %bb.aw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i120

bb.aw:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i119
  %i.hw = icmp ult i64 %i.hr, 16
  call void @llvm.assume(i1 %i.hw)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i120

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i120: ; preds = %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i119
  %i.hx = load i64, ptr %i.eh, align 8
  %i.hy = select i1 %i.hv, i64 15, i64 %i.hx
  %.not.i.i121 = icmp ugt i64 %i.ht, %i.hy
  br i1 %.not.i.i121, label %bb.ax, label %.loopexit250

bb.ax:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i120
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.hr, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %._crit_edge323 unwind label %.loopexit.split-lp.loopexit

._crit_edge323:                                   ; preds = %bb.ax
  %.pre324 = load ptr, ptr %2, align 8, !tbaa !111
  br label %.loopexit250

bb.ay:                                            ; preds = %bb.at, %bb.as
  %i.hz = add nsw i32 %.054288, -1
  %.not342 = icmp eq i32 %.054288, 0
  br i1 %.not342, label %.loopexit255, label %bb.aq, !llvm.loop !325

.loopexit250:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i120, %._crit_edge323
  %i.ia = phi ptr [ %.pre324, %._crit_edge323 ], [ %i.hu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i120 ]
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 %i.hr
  store i8 %i.hq, ptr %i.ib, align 1, !tbaa !101
  store i64 %i.ht, ptr %i.ef, align 8, !tbaa !109
  %i.ic = load ptr, ptr %2, align 8, !tbaa !111
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 %i.ht
  store i8 0, ptr %i.id, align 1, !tbaa !101
  %i.ie = add nuw nsw i32 %.058290, 1             ; 2 uses
  %exitcond315.not = icmp eq i32 %i.ie, %3
  br i1 %exitcond315.not, label %._crit_edge, label %bb.ah, !llvm.loop !326

._crit_edge:                                      ; preds = %.loopexit249, %.loopexit250, %_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPN3re23DFA5StateEiEENS1_6HashEqIS7_vE4HashENSA_2EqESaISt4pairIKS7_iEEE5clearEv.exit
  invoke void @_ZN3re215PrefixSuccessorEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull %2)
          to label %bb.az unwind label %bb.ag

bb.az:                                            ; preds = %._crit_edge
  %i.if = load i64, ptr %i.ef, align 8, !tbaa !109
  %i.ig = icmp ne i64 %i.if, 0
  br label %.loopexit255

.loopexit255:                                     ; preds = %bb.t, %bb.x, %bb.ay, %bb.ar, %bb.az
  %.10 = phi i1 [ %i.ig, %bb.az ], [ false, %bb.x ], [ false, %bb.ar ], [ true, %bb.ay ], [ false, %bb.t ]
  invoke void @_ZN4absl12lts_202401165Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.v)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit104 unwind label %bb.ba

bb.ba:                                            ; preds = %.loopexit255
  %i.ih = landingpad { ptr, i32 }
          catch ptr null
  %i.ii = extractvalue { ptr, i32 } %i.ih, 0
  call void @__clang_call_terminate(ptr %i.ii) #30
  unreachable

.loopexit.split-lp259:                            ; preds = %.loopexit251, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %.loopexit258, %.loopexit.split-lp259.loopexit.split-lp, %.loopexit.split-lp259.loopexit, %bb.al, %bb.o, %bb.u, %bb.ag
  %.pn92 = phi { ptr, i32 } [ %i.ei, %bb.ag ], [ %i.dd, %bb.u ], [ %i.bv, %bb.o ], [ %i.ge, %bb.al ], [ %lpad.loopexit.split-lp266, %.loopexit.split-lp259.loopexit.split-lp ], [ %lpad.loopexit260, %.loopexit258 ], [ %lpad.loopexit265, %.loopexit.split-lp259.loopexit ], [ %lpad.loopexit, %.loopexit251 ], [ %lpad.loopexit252, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp253, %.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_ZN4absl12lts_202401165Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.v)
          to label %_ZN4absl12lts_202401169MutexLockD2Ev.exit125 unwind label %bb.bb

bb.bb:                                            ; preds = %.loopexit.split-lp259
  %i.ij = landingpad { ptr, i32 }
          catch ptr null
  %i.ik = extractvalue { ptr, i32 } %i.ij, 0
  call void @__clang_call_terminate(ptr %i.ik) #30
  unreachable

end_hunk_2
