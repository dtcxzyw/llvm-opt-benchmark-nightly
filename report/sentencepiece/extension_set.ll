Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sentencepiece/original/extension_set?download=true
inline.NumInlined: 1865
inline.NumDeleted: 637
loop-unroll.NumCompletelyUnrolled: 51
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 68
begin_hunk_0_@_ZN6google8protobuf8internal19arena_delete_objectINS0_11MessageLiteEEEvPv
define linkonce_odr void @_ZN6google8protobuf8internal19arena_delete_objectINS0_11MessageLiteEEEvPv(ptr noundef %0) #8 comdat {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !55
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(16) %0) #27
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase20AddAllocatedInternalINS0_16RepeatedPtrFieldINS0_11MessageLiteEE11TypeHandlerEEEvPNT_4TypeESt17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !100  ; 8 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %._crit_edge.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %i.b, align 8, !tbaa !139  ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !137  ; 4 uses
  %i.f = icmp slt i32 %i.c, %i.e
  br i1 %i.f, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !96   ; 3 uses
  %i.j = icmp slt i32 %i.i, %i.c
  %i.k = sext i32 %i.i to i64                     ; 2 uses
  br i1 %i.j, label %bb.d, label %._crit_edge

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !101
  %i.n = sext i32 %i.c to i64
  %i.o = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.n
  store ptr %i.m, ptr %i.o, align 8, !tbaa !101
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.d
  %i.p = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.k
  store ptr %1, ptr %i.p, align 8, !tbaa !101
  %i.q = add nsw i32 %i.i, 1
  store i32 %i.q, ptr %i.h, align 8, !tbaa !96
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !100  ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !139
  %i.t = add nsw i32 %i.s, 1
  store i32 %i.t, ptr %i.r, align 8, !tbaa !139
  br label %bb.m

._crit_edge.i:                                    ; preds = %bb.a
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !137
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load i32, ptr %i.u, align 8, !tbaa !96   ; 4 uses
  %i.w = icmp eq i32 %i.v, %i.e
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %._crit_edge.i
  %i.x = phi i32 [ %.pre.i, %._crit_edge.i ], [ %i.e, %bb.e ]
  %i.y = add nsw i32 %i.x, 1
  tail call void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase7ReserveEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %i.y)
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !100  ; 3 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !139
  %i.ab = add nsw i32 %i.aa, 1
  store i32 %i.ab, ptr %i.z, align 8, !tbaa !139
  br label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase23UnsafeArenaAddAllocatedINS0_16RepeatedPtrFieldINS0_11MessageLiteEE11TypeHandlerEEEvPNT_4TypeE.exit

bb.g:                                             ; preds = %bb.e
  %i.ac = icmp eq i32 %i.c, %i.e
  br i1 %i.ac, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ae = sext i32 %i.v to i64
  %i.af = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.ae
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !101 ; 3 uses
  %i.ah = load ptr, ptr %0, align 8, !tbaa !135
  %i.ai = icmp ne ptr %i.ah, null
  %i.aj = icmp eq ptr %i.ag, null
  %or.cond.i.i = or i1 %i.aj, %i.ai
  br i1 %or.cond.i.i, label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase23UnsafeArenaAddAllocatedINS0_16RepeatedPtrFieldINS0_11MessageLiteEE11TypeHandlerEEEvPNT_4TypeE.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = load ptr, ptr %i.ag, align 8, !tbaa !55
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  tail call void %i.am(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #27, !inline_history !326
  %.pre5.i = load ptr, ptr %i.a, align 8, !tbaa !100
  br label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase23UnsafeArenaAddAllocatedINS0_16RepeatedPtrFieldINS0_11MessageLiteEE11TypeHandlerEEEvPNT_4TypeE.exit

bb.j:                                             ; preds = %bb.g
  %i.an = icmp slt i32 %i.v, %i.c
  br i1 %i.an, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.ap = sext i32 %i.v to i64
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.ap
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !101
  %i.as = sext i32 %i.c to i64
  %i.at = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.as
  store ptr %i.ar, ptr %i.at, align 8, !tbaa !101
  %i.au = load ptr, ptr %i.a, align 8, !tbaa !100 ; 3 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !139
  %i.aw = add nsw i32 %i.av, 1
  store i32 %i.aw, ptr %i.au, align 8, !tbaa !139
  br label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase23UnsafeArenaAddAllocatedINS0_16RepeatedPtrFieldINS0_11MessageLiteEE11TypeHandlerEEEvPNT_4TypeE.exit

bb.l:                                             ; preds = %bb.j
  %i.ax = add nsw i32 %i.c, 1
  store i32 %i.ax, ptr %i.b, align 8, !tbaa !139
  br label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase23UnsafeArenaAddAllocatedINS0_16RepeatedPtrFieldINS0_11MessageLiteEE11TypeHandlerEEEvPNT_4TypeE.exit

_ZN6google8protobuf8internal20RepeatedPtrFieldBase23UnsafeArenaAddAllocatedINS0_16RepeatedPtrFieldINS0_11MessageLiteEE11TypeHandlerEEEvPNT_4TypeE.exit: ; preds = %bb.f, %bb.h, %bb.i, %bb.k, %bb.l
  %i.ay = phi ptr [ %.pre5.i, %bb.i ], [ %i.b, %bb.h ], [ %i.b, %bb.l ], [ %i.au, %bb.k ], [ %i.z, %bb.f ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !96 ; 2 uses
  %i.bc = add nsw i32 %i.bb, 1
  store i32 %i.bc, ptr %i.ba, align 8, !tbaa !96
  %i.bd = sext i32 %i.bb to i64
  %i.be = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.bd
  store ptr %1, ptr %i.be, align 8, !tbaa !101
  br label %bb.m

bb.m:                                             ; preds = %_ZN6google8protobuf8internal20RepeatedPtrFieldBase23UnsafeArenaAddAllocatedINS0_16RepeatedPtrFieldINS0_11MessageLiteEE11TypeHandlerEEEvPNT_4TypeE.exit, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZN6google8protobuf8internal12ExtensionSet7ForEachISt17_Rb_tree_iteratorISt4pairIKiNS2_9ExtensionEEEZNS2_5ClearEvE3$_0EET0_T_SC_SB_"(ptr nofree %0, ptr nofree readnone captures(address) %1) unnamed_addr #4 align 2 {
bb.a:
  %.not5 = icmp eq ptr %0, %1
  br i1 %.not5, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.06 = phi ptr [ %i.b, %.lr.ph ], [ %0, %bb.a ] ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.sroa.0.06, i64 40
  tail call void @_ZN6google8protobuf8internal12ExtensionSet9Extension5ClearEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
  %i.b = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.0.06) #31 ; 2 uses
  %.not = icmp eq ptr %i.b, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !327
}

; Function Attrs: mustprogress uwtable
define internal fastcc nonnull ptr @"_ZN6google8protobuf8internal12ExtensionSet7ForEachISt17_Rb_tree_iteratorISt4pairIKiNS2_9ExtensionEEEZNS2_9MergeFromERKS2_E3$_0EET0_T_SE_SD_"(ptr nofree readonly %0, ptr nofree readnone captures(address) %1, ptr nonnull returned %2) unnamed_addr #4 align 2 {
bb.a:
  %.not7 = icmp eq ptr %0, %1
  br i1 %.not7, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %2

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.08 = phi ptr [ %i.d, %.lr.ph ], [ %0, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.sroa.0.08, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !149
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.08, i64 40
  tail call void @_ZN6google8protobuf8internal12ExtensionSet26InternalExtensionMergeFromEiRKNS2_9ExtensionE(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %i.b, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.c)
  %i.d = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.0.08) #31 ; 2 uses
  %.not = icmp eq ptr %i.d, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !328
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase18MergeFromInnerLoopINS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11TypeHandlerEEEvPPvSE_ii(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %invariant.smin = tail call i32 @llvm.smin.i32(i32 %4, i32 %3) ; 2 uses
  %i.a = icmp sgt i32 %invariant.smin, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %invariant.smin to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !135    ; 4 uses
  %i.c = icmp slt i32 %4, %3
  br i1 %i.c, label %.lr.ph28, label %._crit_edge29

.lr.ph28:                                         ; preds = %._crit_edge
  %i.d = icmp eq ptr %i.b, null
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.g = sext i32 %4 to i64                       ; 2 uses
  br i1 %i.d, label %_ZN6google8protobuf8internal17StringTypeHandler16NewFromPrototypeEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaE.exit.us.preheader, label %.lr.ph28.split

_ZN6google8protobuf8internal17StringTypeHandler16NewFromPrototypeEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaE.exit.us.preheader: ; preds = %.lr.ph28
  %wide.trip.count39 = sext i32 %3 to i64
  br label %_ZN6google8protobuf8internal17StringTypeHandler16NewFromPrototypeEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaE.exit.us

_ZN6google8protobuf8internal17StringTypeHandler16NewFromPrototypeEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaE.exit.us: ; preds = %_ZN6google8protobuf8internal17StringTypeHandler16NewFromPrototypeEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaE.exit.us.preheader, %_ZN6google8protobuf8internal17StringTypeHandler16NewFromPrototypeEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaE.exit.us
  %indvars.iv36 = phi i64 [ %i.g, %_ZN6google8protobuf8internal17StringTypeHandler16NewFromPrototypeEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaE.exit.us.preheader ], [ %indvars.iv.next37, %_ZN6google8protobuf8internal17StringTypeHandler16NewFromPrototypeEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaE.exit.us ] ; 3 uses
  %i.h = getelementptr inbounds [8 x i8], ptr %2, i64 %indvars.iv36
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !101
  %i.j = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #28 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.j, align 8, !tbaa !136
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 0, ptr %i.l, align 8, !tbaa !102
  store i8 0, ptr %i.k, align 8, !tbaa !46
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.i)
  %i.m = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv36
  store ptr %i.j, ptr %i.m, align 8, !tbaa !101
  %indvars.iv.next37 = add nsw i64 %indvars.iv36, 1 ; 2 uses
  %exitcond40.not = icmp eq i64 %indvars.iv.next37, %wide.trip.count39
  br i1 %exitcond40.not, label %._crit_edge29, label %_ZN6google8protobuf8internal17StringTypeHandler16NewFromPrototypeEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaE.exit.us, !llvm.loop !329

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !101
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !101
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.o)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !330

._crit_edge29:                                    ; preds = %_ZNK6google8protobuf8internal9ArenaImpl11RecordAllocEPKSt9type_infom.exit.i.i, %_ZN6google8protobuf8internal17StringTypeHandler16NewFromPrototypeEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaE.exit.us, %._crit_edge
  ret void

.lr.ph28.split:                                   ; preds = %.lr.ph28, %_ZNK6google8protobuf8internal9ArenaImpl11RecordAllocEPKSt9type_infom.exit.i.i
  %indvars.iv32 = phi i64 [ %indvars.iv.next33, %_ZNK6google8protobuf8internal9ArenaImpl11RecordAllocEPKSt9type_infom.exit.i.i ], [ %i.g, %.lr.ph28 ] ; 3 uses
  %i.r = getelementptr inbounds [8 x i8], ptr %2, i64 %indvars.iv32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !101
  %i.t = load i64, ptr %i.e, align 8, !tbaa !113
  %i.u = trunc i64 %i.t to i1
  br i1 %i.u, label %bb.b, label %_ZNK6google8protobuf8internal9ArenaImpl11RecordAllocEPKSt9type_infom.exit.i.i, !prof !52

bb.b:                                             ; preds = %.lr.ph28.split
  %i.v = load ptr, ptr %i.f, align 8, !tbaa !114
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !117  ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !55
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull @_ZTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, i64 noundef 32), !inline_history !331
  br label %_ZNK6google8protobuf8internal9ArenaImpl11RecordAllocEPKSt9type_infom.exit.i.i

_ZNK6google8protobuf8internal9ArenaImpl11RecordAllocEPKSt9type_infom.exit.i.i: ; preds = %bb.b, %.lr.ph28.split
  %i.ab = tail call noundef ptr @_ZN6google8protobuf8internal9ArenaImpl28AllocateAlignedAndAddCleanupEmPFvPvE(ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 noundef 32, ptr noundef nonnull @_ZN6google8protobuf8internal21arena_destruct_objectINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPv) ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !136
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 0, ptr %i.ad, align 8, !tbaa !102
  store i8 0, ptr %i.ac, align 8, !tbaa !46
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %i.s)
  %i.ae = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv32
  store ptr %i.ab, ptr %i.ae, align 8, !tbaa !101
  %indvars.iv.next33 = add nsw i64 %indvars.iv32, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next33 to i32
  %exitcond35.not = icmp eq i32 %3, %lftr.wideiv
  br i1 %exitcond35.not, label %._crit_edge29, label %.lr.ph28.split, !llvm.loop !329
}

declare noundef ptr @_ZN6google8protobuf8internal20RepeatedPtrFieldBase14InternalExtendEi(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #5

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #23

declare noundef ptr @_ZN6google8protobuf8internal17PackedInt32ParserEPvPKcPNS1_12ParseContextE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare noundef ptr @_ZN6google8protobuf8internal17PackedInt64ParserEPvPKcPNS1_12ParseContextE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare noundef ptr @_ZN6google8protobuf8internal18PackedUInt32ParserEPvPKcPNS1_12ParseContextE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare noundef ptr @_ZN6google8protobuf8internal18PackedUInt64ParserEPvPKcPNS1_12ParseContextE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare noundef ptr @_ZN6google8protobuf8internal18PackedSInt32ParserEPvPKcPNS1_12ParseContextE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare noundef ptr @_ZN6google8protobuf8internal18PackedSInt64ParserEPvPKcPNS1_12ParseContextE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare noundef ptr @_ZN6google8protobuf8internal19PackedFixed32ParserEPvPKcPNS1_12ParseContextE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare noundef ptr @_ZN6google8protobuf8internal19PackedFixed64ParserEPvPKcPNS1_12ParseContextE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare noundef ptr @_ZN6google8protobuf8internal20PackedSFixed32ParserEPvPKcPNS1_12ParseContextE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare noundef ptr @_ZN6google8protobuf8internal20PackedSFixed64ParserEPvPKcPNS1_12ParseContextE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare noundef ptr @_ZN6google8protobuf8internal17PackedFloatParserEPvPKcPNS1_12ParseContextE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare noundef ptr @_ZN6google8protobuf8internal18PackedDoubleParserEPvPKcPNS1_12ParseContextE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare noundef ptr @_ZN6google8protobuf8internal16PackedBoolParserEPvPKcPNS1_12ParseContextE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @_ZN6google8protobuf8internal11WriteVarintEjmPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

declare noundef ptr @_ZN6google8protobuf8internal12ParseContext12ParseMessageEPNS0_11MessageLiteEPKc(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream16ReadPackedVarintIZNS1_19PackedEnumParserArgINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPKcPvSC_PNS1_12ParseContextEPFbPKviESH_PNS1_16InternalMetadataEiEUlmE_EESC_SC_T_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef byval(%class.anon.70) align 8 %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [26 x i8], align 16               ; 6 uses
  %i.b = load i8, ptr %1, align 1, !tbaa !46      ; 2 uses
  %i.c = zext i8 %i.b to i32                      ; 2 uses
  %i.d = icmp sgt i8 %i.b, -1
  br i1 %i.d, label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread, label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit

_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1
  br label %bb.b

_ZN6google8protobuf8internal8ReadSizeEPPKc.exit:  ; preds = %bb.a
  %i.f = tail call { ptr, i32 } @_ZN6google8protobuf8internal16ReadSizeFallbackEPKcj(ptr noundef nonnull %1, i32 noundef %i.c) ; 2 uses
  %.fca.0.extract.i = extractvalue { ptr, i32 } %i.f, 0 ; 2 uses
  %.fca.1.extract.i = extractvalue { ptr, i32 } %i.f, 1
  %i.g = icmp eq ptr %.fca.0.extract.i, null
  br i1 %i.g, label %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_19PackedEnumParserArgINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPKcPvSB_PNS1_12ParseContextEPFbPKviESG_PNS1_16InternalMetadataEiEUlmE_EESB_SB_SB_T_.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit
  %.0.i115 = phi i32 [ %i.c, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread ], [ %.fca.1.extract.i, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit ] ; 3 uses
  %storemerge.i114 = phi ptr [ %i.e, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread ], [ %.fca.0.extract.i, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !168  ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %storemerge.i114 to i64
  %i.l = sub i64 %i.j, %i.k
  %.033148 = trunc i64 %i.l to i32                ; 2 uses
  %i.m = icmp sgt i32 %.0.i115, %.033148
  br i1 %i.m, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %.sroa.483.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %.sroa.584.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.z
  %i.o = phi ptr [ %i.i, %.lr.ph ], [ %i.di, %bb.z ] ; 3 uses
  %.033151 = phi i32 [ %.033148, %.lr.ph ], [ %.033, %bb.z ] ; 2 uses
  %.037150 = phi i32 [ %.0.i115, %.lr.ph ], [ %i.db, %bb.z ] ; 2 uses
  %.0110149 = phi ptr [ %storemerge.i114, %.lr.ph ], [ %i.dh, %bb.z ] ; 3 uses
  %.sroa.082.0.copyload = load ptr, ptr %2, align 8, !tbaa !101 ; 5 uses
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !101
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !101
  %.sroa.483.0.copyload = load ptr, ptr %.sroa.483.0..sroa_idx, align 8, !tbaa !334 ; 2 uses
  %.sroa.584.0.copyload = load i32, ptr %.sroa.584.0..sroa_idx, align 8, !tbaa !72
  %i.p = icmp ult ptr %.0110149, %i.o
  br i1 %i.p, label %.lr.ph.i.preheader, label %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_19PackedEnumParserArgINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPKcPvSB_PNS1_12ParseContextEPFbPKviESG_PNS1_16InternalMetadataEiEUlmE_EESB_SB_SB_T_.exit.thread117

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.082.0.copyload, i64 4
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.082.0.copyload, i64 8 ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZZN6google8protobuf8internal19PackedEnumParserArgINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPKcPvSA_PNS1_12ParseContextEPFbPKviESF_PNS1_16InternalMetadataEiENKUlmE_clEm.exit.i
  %.0715.i = phi ptr [ %.1.i12.i, %_ZZN6google8protobuf8internal19PackedEnumParserArgINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPKcPvSA_PNS1_12ParseContextEPFbPKviESF_PNS1_16InternalMetadataEiENKUlmE_clEm.exit.i ], [ %.0110149, %.lr.ph.i.preheader ] ; 4 uses
  %i.s = load i8, ptr %.0715.i, align 1, !tbaa !46 ; 3 uses
  %.not.i.i = icmp sgt i8 %i.s, -1
  %i.t = getelementptr inbounds nuw i8, ptr %.0715.i, i64 1 ; 2 uses
  br i1 %.not.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i
  %i.u = zext nneg i8 %i.s to i64
  br label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i

bb.e:                                             ; preds = %.lr.ph.i
  %i.v = zext i8 %i.s to i32
  %i.w = load i8, ptr %i.t, align 1, !tbaa !46    ; 2 uses
  %i.x = zext i8 %i.w to i32
  %i.y = shl nuw nsw i32 %i.x, 7
  %i.z = add nsw i32 %i.v, -128
  %i.aa = or disjoint i32 %i.y, %i.z              ; 2 uses
  %.not16.i.i = icmp sgt i8 %i.w, -1
  br i1 %.not16.i.i, label %bb.f, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i

bb.f:                                             ; preds = %bb.e
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %.0715.i, i64 2
  br label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i: ; preds = %bb.e
  %i.ad = tail call { ptr, i64 } @_ZN6google8protobuf8internal17VarintParseSlow64EPKcj(ptr noundef nonnull %.0715.i, i32 noundef %i.aa) ; 2 uses
  %i.ae = extractvalue { ptr, i64 } %i.ad, 0      ; 2 uses
  %i.af = extractvalue { ptr, i64 } %i.ad, 1
  %i.ag = icmp eq ptr %i.ae, null
  br i1 %i.ag, label %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_19PackedEnumParserArgINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPKcPvSB_PNS1_12ParseContextEPFbPKviESG_PNS1_16InternalMetadataEiEUlmE_EESB_SB_SB_T_.exit.thread, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i: ; preds = %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i, %bb.f, %bb.d
  %.1.i12.i = phi ptr [ %i.ae, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ], [ %i.ac, %bb.f ], [ %i.t, %bb.d ] ; 3 uses
  %.011.i = phi i64 [ %i.af, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ], [ %i.ab, %bb.f ], [ %i.u, %bb.d ] ; 2 uses
  %i.ah = trunc i64 %.011.i to i32                ; 3 uses
  %i.ai = tail call noundef zeroext i1 %.sroa.2.0.copyload(ptr noundef %.sroa.3.0.copyload, i32 noundef %i.ah), !inline_history !332
  br i1 %i.ai, label %bb.g, label %bb.j

bb.g:                                             ; preds = %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i
  %i.aj = load i32, ptr %.sroa.082.0.copyload, align 8, !tbaa !81 ; 5 uses
  %i.ak = load i32, ptr %i.q, align 4, !tbaa !118
  %i.al = icmp eq i32 %i.aj, %i.ak
  br i1 %i.al, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.am = add i32 %i.aj, 1                        ; 2 uses
  tail call void @_ZN6google8protobuf13RepeatedFieldIiE7ReserveEi(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.082.0.copyload, i32 noundef %i.am)
  %i.an = load ptr, ptr %i.r, align 8, !tbaa !104
  %i.ao = zext i32 %i.aj to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.ao
  store i32 %i.ah, ptr %i.ap, align 4, !tbaa !72
  br label %_ZN6google8protobuf13RepeatedFieldIiE3AddERKi.exit.i.i

bb.i:                                             ; preds = %bb.g
  %i.aq = load ptr, ptr %i.r, align 8, !tbaa !104
  %i.ar = zext i32 %i.aj to i64
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.ar
  store i32 %i.ah, ptr %i.as, align 4, !tbaa !72
  %.pre.i.i.i = add i32 %i.aj, 1
  br label %_ZN6google8protobuf13RepeatedFieldIiE3AddERKi.exit.i.i

_ZN6google8protobuf13RepeatedFieldIiE3AddERKi.exit.i.i: ; preds = %bb.i, %bb.h
  %.pre-phi.i.i.i = phi i32 [ %.pre.i.i.i, %bb.i ], [ %i.am, %bb.h ]
  store i32 %.pre-phi.i.i.i, ptr %.sroa.082.0.copyload, align 8, !tbaa !81
  br label %_ZZN6google8protobuf8internal19PackedEnumParserArgINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPKcPvSA_PNS1_12ParseContextEPFbPKviESF_PNS1_16InternalMetadataEiENKUlmE_clEm.exit.i

bb.j:                                             ; preds = %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i
  %i.at = load ptr, ptr %.sroa.483.0.copyload, align 8, !tbaa !141
  %i.au = ptrtoint ptr %i.at to i64               ; 2 uses
  %i.av = and i64 %i.au, 1
  %.not.i8.i = icmp eq i64 %i.av, 0
  br i1 %.not.i8.i, label %bb.l, label %bb.k, !prof !52

bb.k:                                             ; preds = %bb.j
  %i.aw = and i64 %i.au, -2
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  br label %_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPT_v.exit.i.i

bb.l:                                             ; preds = %bb.j
  %i.az = tail call noundef ptr @_ZN6google8protobuf8internal16InternalMetadata27mutable_unknown_fields_slowINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPT_v(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.483.0.copyload)
  br label %_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPT_v.exit.i.i

_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPT_v.exit.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i = phi ptr [ %i.ay, %bb.k ], [ %i.az, %bb.l ]
  tail call void @_ZN6google8protobuf8internal11WriteVarintEjmPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef %.sroa.584.0.copyload, i64 noundef %.011.i, ptr noundef %.0.i.i.i)
  br label %_ZZN6google8protobuf8internal19PackedEnumParserArgINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPKcPvSA_PNS1_12ParseContextEPFbPKviESF_PNS1_16InternalMetadataEiENKUlmE_clEm.exit.i

_ZZN6google8protobuf8internal19PackedEnumParserArgINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPKcPvSA_PNS1_12ParseContextEPFbPKviESF_PNS1_16InternalMetadataEiENKUlmE_clEm.exit.i: ; preds = %_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPT_v.exit.i.i, %_ZN6google8protobuf13RepeatedFieldIiE3AddERKi.exit.i.i
  %i.ba = icmp ult ptr %.1.i12.i, %i.o
  br i1 %i.ba, label %.lr.ph.i, label %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_19PackedEnumParserArgINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPKcPvSB_PNS1_12ParseContextEPFbPKviESG_PNS1_16InternalMetadataEiEUlmE_EESB_SB_SB_T_.exit.thread117.loopexit

_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_19PackedEnumParserArgINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPKcPvSB_PNS1_12ParseContextEPFbPKviESG_PNS1_16InternalMetadataEiEUlmE_EESB_SB_SB_T_.exit.thread117.loopexit: ; preds = %_ZZN6google8protobuf8internal19PackedEnumParserArgINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPKcPvSA_PNS1_12ParseContextEPFbPKviESF_PNS1_16InternalMetadataEiENKUlmE_clEm.exit.i
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !168
  br label %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_19PackedEnumParserArgINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPKcPvSB_PNS1_12ParseContextEPFbPKviESG_PNS1_16InternalMetadataEiEUlmE_EESB_SB_SB_T_.exit.thread117

_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_19PackedEnumParserArgINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPKcPvSB_PNS1_12ParseContextEPFbPKviESG_PNS1_16InternalMetadataEiEUlmE_EESB_SB_SB_T_.exit.thread117: ; preds = %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_19PackedEnumParserArgINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPKcPvSB_PNS1_12ParseContextEPFbPKviESG_PNS1_16InternalMetadataEiEUlmE_EESB_SB_SB_T_.exit.thread117.loopexit, %bb.c
  %i.bb = phi ptr [ %i.o, %bb.c ], [ %.pre, %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_19PackedEnumParserArgINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPKcPvSB_PNS1_12ParseContextEPFbPKviESG_PNS1_16InternalMetadataEiEUlmE_EESB_SB_SB_T_.exit.thread117.loopexit ] ; 2 uses
  %.2.i119 = phi ptr [ %.0110149, %bb.c ], [ %.1.i12.i, %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_19PackedEnumParserArgINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPKcPvSB_PNS1_12ParseContextEPFbPKviESG_PNS1_16InternalMetadataEiEUlmE_EESB_SB_SB_T_.exit.thread117.loopexit ]
  %i.bc = ptrtoint ptr %.2.i119 to i64
end_hunk_0
