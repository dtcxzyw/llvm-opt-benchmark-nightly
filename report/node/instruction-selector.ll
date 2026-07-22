inline.NumInlined: 4409
inline.NumDeleted: 2144
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN2v88internal8compiler19InstructionSelector9TryRenameEPNS1_18InstructionOperandE:bb.a
  %i.s = zext i32 %.07.i to i64
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = or disjoint i64 %i.t, %i.r
  store i64 %i.u, ptr %1, align 8
  br label %bb.f

bb.f:                                             ; preds = %_ZN2v88internal8compiler19InstructionSelector9GetRenameEi.exit, %bb.e, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i32 @_ZN2v88internal8compiler19InstructionSelector9GetRenameEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(752) %0, i32 noundef %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.07 = phi i32 [ %1, %bb.a ], [ %i.k, %bb.c ]   ; 2 uses
  %i.i = sext i32 %.07 to i64                     ; 2 uses
  %.not = icmp ugt i64 %i.h, %i.i
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4              ; 2 uses
  %i.l = icmp eq i32 %i.k, -1
  br i1 %i.l, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c, %bb.b
  ret i32 %.07
}

declare void @_ZN2v88internal8compiler14PhiInstruction11RenameInputEmi(ptr noundef nonnull align 8 dereferenceable(48), i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler19InstructionSelector9SetRenameENS1_10turboshaft7OpIndexES4_(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %1, i32 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = lshr i32 %1, 4
  %i.b = zext nneg i32 %i.a to i64                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.b
  %i.f = load i32, ptr %i.e, align 4              ; 2 uses
  %i.g = icmp eq i32 %i.f, -1
  br i1 %i.g, label %bb.b, label %_ZN2v88internal8compiler19InstructionSelector18GetVirtualRegisterENS1_10turboshaft7OpIndexE.exit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef i32 @_ZN2v88internal8compiler19InstructionSequence19NextVirtualRegisterEv(ptr noundef nonnull align 8 dereferenceable(352) %i.i) #29 ; 2 uses
  %i.k = load ptr, ptr %i.c, align 8
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.b
  store i32 %i.j, ptr %i.l, align 4
  br label %_ZN2v88internal8compiler19InstructionSelector18GetVirtualRegisterENS1_10turboshaft7OpIndexE.exit

_ZN2v88internal8compiler19InstructionSelector18GetVirtualRegisterENS1_10turboshaft7OpIndexE.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.j, %bb.b ], [ %i.f, %bb.a ] ; 2 uses
  %i.m = sext i32 %.0.i to i64                    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = ptrtoint ptr %i.p to i64                 ; 2 uses
  %i.t = ptrtoint ptr %i.r to i64                 ; 3 uses
  %i.u = sub i64 %i.s, %i.t
  %i.v = ashr exact i64 %i.u, 2
  %.not = icmp ugt i64 %i.v, %i.m
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal8compiler19InstructionSelector18GetVirtualRegisterENS1_10turboshaft7OpIndexE.exit
  %i.w = add nsw i32 %.0.i, 1
  %i.x = sext i32 %i.w to i64                     ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.t
  %i.ac = ashr exact i64 %i.ab, 2
  %.not.i.i = icmp ult i64 %i.ac, %i.x
  br i1 %.not.i.i, label %bb.d, label %_ZN2v88internal10ZoneVectorIiE14EnsureCapacityEm.exit.i, !prof !5

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIiE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 noundef %i.x)
  %.pre.i = load ptr, ptr %i.q, align 8           ; 2 uses
  %.pre = load ptr, ptr %i.o, align 8             ; 2 uses
  %.pre8 = ptrtoint ptr %.pre.i to i64
  %.pre9 = ptrtoint ptr %.pre to i64
  br label %_ZN2v88internal10ZoneVectorIiE14EnsureCapacityEm.exit.i

_ZN2v88internal10ZoneVectorIiE14EnsureCapacityEm.exit.i: ; preds = %bb.d, %bb.c
  %.pre-phi10 = phi i64 [ %.pre9, %bb.d ], [ %i.s, %bb.c ] ; 2 uses
  %.pre-phi = phi i64 [ %.pre8, %bb.d ], [ %i.t, %bb.c ]
  %i.ad = phi ptr [ %.pre, %bb.d ], [ %i.p, %bb.c ] ; 2 uses
  %i.ae = phi ptr [ %.pre.i, %bb.d ], [ %i.r, %bb.c ]
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.x ; 2 uses
  %i.ag = icmp ult ptr %i.ad, %i.af
  br i1 %i.ag, label %.lr.ph.i.preheader, label %_ZN2v88internal10ZoneVectorIiE6resizeEmRKi.exit

.lr.ph.i.preheader:                               ; preds = %_ZN2v88internal10ZoneVectorIiE14EnsureCapacityEm.exit.i
  %i.ah = shl nuw nsw i64 %i.x, 2
  %i.ai = add nuw i64 %.pre-phi, %i.ah
  %i.aj = add i64 %.pre-phi10, 4
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ai, i64 %i.aj)
  %i.ak = xor i64 %.pre-phi10, -1
  %i.al = add i64 %umax, %i.ak
  %i.am = and i64 %i.al, -4
  %i.an = add i64 %i.am, 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ad, i8 -1, i64 %i.an, i1 false)
  br label %_ZN2v88internal10ZoneVectorIiE6resizeEmRKi.exit

_ZN2v88internal10ZoneVectorIiE6resizeEmRKi.exit:  ; preds = %.lr.ph.i.preheader, %_ZN2v88internal10ZoneVectorIiE14EnsureCapacityEm.exit.i
  store ptr %i.af, ptr %i.o, align 8
  br label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal10ZoneVectorIiE6resizeEmRKi.exit, %_ZN2v88internal8compiler19InstructionSelector18GetVirtualRegisterENS1_10turboshaft7OpIndexE.exit
  %i.ao = lshr i32 %2, 4
  %i.ap = zext nneg i32 %i.ao to i64              ; 2 uses
  %i.aq = load ptr, ptr %i.c, align 8
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.ap
  %i.as = load i32, ptr %i.ar, align 4            ; 2 uses
  %i.at = icmp eq i32 %i.as, -1
  br i1 %i.at, label %bb.f, label %_ZN2v88internal8compiler19InstructionSelector18GetVirtualRegisterENS1_10turboshaft7OpIndexE.exit7

bb.f:                                             ; preds = %bb.e
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = tail call noundef i32 @_ZN2v88internal8compiler19InstructionSequence19NextVirtualRegisterEv(ptr noundef nonnull align 8 dereferenceable(352) %i.av) #29 ; 2 uses
  %i.ax = load ptr, ptr %i.c, align 8
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.ap
  store i32 %i.aw, ptr %i.ay, align 4
  br label %_ZN2v88internal8compiler19InstructionSelector18GetVirtualRegisterENS1_10turboshaft7OpIndexE.exit7

_ZN2v88internal8compiler19InstructionSelector18GetVirtualRegisterENS1_10turboshaft7OpIndexE.exit7: ; preds = %bb.e, %bb.f
  %.0.i6 = phi i32 [ %i.aw, %bb.f ], [ %i.as, %bb.e ]
  %i.az = load ptr, ptr %i.q, align 8
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.m
  store i32 %.0.i6, ptr %i.ba, align 4
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN2v88internal8compiler19InstructionSelector18GetVirtualRegisterENS1_10turboshaft7OpIndexE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(752) %0, i32 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = lshr i32 %1, 4
  %i.b = zext nneg i32 %i.a to i64                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.b
  %i.f = load i32, ptr %i.e, align 4              ; 2 uses
  %i.g = icmp eq i32 %i.f, -1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef i32 @_ZN2v88internal8compiler19InstructionSequence19NextVirtualRegisterEv(ptr noundef nonnull align 8 dereferenceable(352) %i.i) #29 ; 2 uses
  %i.k = load ptr, ptr %i.c, align 8
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.b
  store i32 %i.j, ptr %i.l, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.j, %bb.b ], [ %i.f, %bb.a ]
  ret i32 %.0
}

declare noundef i32 @_ZN2v88internal8compiler19InstructionSequence19NextVirtualRegisterEv(ptr noundef nonnull align 8 dereferenceable(352)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK2v88internal8compiler19InstructionSelector29GetVirtualRegistersForTestingEv(ptr dead_on_unwind noalias writable sret(%"class.std::map.82") align 8 initializes((8, 12), (16, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(752) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"struct.std::pair.87", align 8     ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i32 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.a, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 312 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 304 ; 2 uses
  %i.h = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.i = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not7 = icmp eq ptr %i.h, %i.i
  br i1 %.not7, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %i.j = phi ptr [ %i.o, %bb.c ], [ %i.i, %bb.a ] ; 2 uses
  %i.k = phi ptr [ %i.p, %bb.c ], [ %i.h, %bb.a ]
  %.06 = phi i64 [ %i.q, %bb.c ], [ 0, %bb.a ]    ; 3 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.06 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4
  %.not = icmp eq i32 %i.m, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %3 = load i32, ptr %i.l, align 4
  %.sroa.2.0.insert.ext.i = zext i32 %3 to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = and i64 %.06, 4294967295
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  store i64 %.sroa.0.0.insert.insert.i, ptr %2, align 8
  %i.n = call { ptr, i8 } @_ZNSt3mapIjiSt4lessIjESaISt4pairIKjiEEE6insertIS2_IjiEEENSt9enable_ifIXsr16is_constructibleIS4_T_EE5valueES2_ISt17_Rb_tree_iteratorIS4_EbEE4typeEOSA_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(8) %2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  %.pre = load ptr, ptr %i.f, align 8
  %.pre8 = load ptr, ptr %i.g, align 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.o = phi ptr [ %i.j, %.lr.ph ], [ %.pre8, %bb.b ] ; 2 uses
  %i.p = phi ptr [ %i.k, %.lr.ph ], [ %.pre, %bb.b ] ; 2 uses
  %i.q = add nuw i64 %.06, 1                      ; 2 uses
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = ashr exact i64 %i.t, 2
  %i.v = icmp ult i64 %i.q, %i.u
  br i1 %i.v, label %.lr.ph, label %._crit_edge, !llvm.loop !54

._crit_edge:                                      ; preds = %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZNSt3mapIjiSt4lessIjESaISt4pairIKjiEEE6insertIS2_IjiEEENSt9enable_ifIXsr16is_constructibleIS4_T_EE5valueES2_ISt17_Rb_tree_iteratorIS4_EbEE4typeEOSA_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  %.pre = load i32, ptr %1, align 4               ; 3 uses
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.c, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.e = load i32, ptr %i.d, align 4
  %i.f = icmp ult i32 %i.e, %.pre                 ; 2 uses
  %.19.i.i.i = select i1 %i.f, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 6 uses
  %.1.in.v.i.i.i = select i1 %i.f, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapIjiSt4lessIjESaISt4pairIKjiEEE11lower_boundERS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !55

_ZNSt3mapIjiSt4lessIjESaISt4pairIKjiEEE11lower_boundERS3_.exit: ; preds = %.lr.ph.i.i.i
  %i.g = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.g, label %.critedge, label %bb.b

bb.b:                                             ; preds = %_ZNSt3mapIjiSt4lessIjESaISt4pairIKjiEEE11lower_boundERS3_.exit
  %i.h = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.i = load i32, ptr %i.h, align 4
  %i.j = icmp ult i32 %.pre, %i.i
  br i1 %i.j, label %.critedge, label %_ZNSt3mapIjiSt4lessIjESaISt4pairIKjiEEE12emplace_hintIJS2_IjiEEEESt17_Rb_tree_iteratorIS4_ESt23_Rb_tree_const_iteratorIS4_EDpOT_.exit

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapIjiSt4lessIjESaISt4pairIKjiEEE11lower_boundERS3_.exit, %bb.b
  %.08.lcssa.i.i.i14 = phi ptr [ %.19.i.i.i, %bb.b ], [ %.19.i.i.i, %_ZNSt3mapIjiSt4lessIjESaISt4pairIKjiEEE11lower_boundERS3_.exit ], [ %i.c, %bb.a ]
  %i.k = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #31 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 3 uses
  store i32 %.pre, ptr %i.l, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 36
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.o = load i32, ptr %i.n, align 4
  store i32 %i.o, ptr %i.m, align 4
  %i.p = tail call { ptr, ptr } @_ZNSt8_Rb_treeIjSt4pairIKjiESt10_Select1stIS2_ESt4lessIjESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i14, ptr noundef nonnull align 4 dereferenceable(4) %i.l) ; 2 uses
  %i.q = extractvalue { ptr, ptr } %i.p, 0        ; 2 uses
  %i.r = extractvalue { ptr, ptr } %i.p, 1        ; 4 uses
  %.not.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.critedge
  %.not.i.i.i.i = icmp ne ptr %i.q, null
  %i.s = icmp eq ptr %i.r, %i.c
  %or.cond.i.i.i.i = select i1 %.not.i.i.i.i, i1 true, i1 %i.s
  br i1 %or.cond.i.i.i.i, label %.thread.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.u = load i32, ptr %i.l, align 4
  %i.v = load i32, ptr %i.t, align 4
  %i.w = icmp ult i32 %i.u, %i.v
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.d, %bb.c
  %i.x = phi i1 [ %i.w, %bb.d ], [ true, %bb.c ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.x, ptr noundef nonnull %i.k, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.c) #29
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = add i64 %i.z, 1
  store i64 %i.aa, ptr %i.y, align 8
  br label %_ZNSt3mapIjiSt4lessIjESaISt4pairIKjiEEE12emplace_hintIJS2_IjiEEEESt17_Rb_tree_iteratorIS4_ESt23_Rb_tree_const_iteratorIS4_EDpOT_.exit

bb.e:                                             ; preds = %.critedge
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 40) #32
  br label %_ZNSt3mapIjiSt4lessIjESaISt4pairIKjiEEE12emplace_hintIJS2_IjiEEEESt17_Rb_tree_iteratorIS4_ESt23_Rb_tree_const_iteratorIS4_EDpOT_.exit

_ZNSt3mapIjiSt4lessIjESaISt4pairIKjiEEE12emplace_hintIJS2_IjiEEEESt17_Rb_tree_iteratorIS4_ESt23_Rb_tree_const_iteratorIS4_EDpOT_.exit: ; preds = %bb.b, %bb.e, %.thread.i.i
  %.sroa.012.0 = phi ptr [ %i.q, %bb.e ], [ %i.k, %.thread.i.i ], [ %.19.i.i.i, %bb.b ]
  %.sroa.3.0 = phi i8 [ 1, %bb.e ], [ 1, %.thread.i.i ], [ 0, %bb.b ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.012.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK2v88internal8compiler19InstructionSelector9IsDefinedENS1_10turboshaft7OpIndexE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(752) %0, i32 %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = lshr i32 %1, 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = lshr i32 %1, 10
  %i.e = zext nneg i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.e
  %i.g = load i64, ptr %i.f, align 8
  %i.h = and i32 %i.a, 63
  %i.i = zext nneg i32 %i.h to i64
  %i.j = shl nuw i64 1, %i.i
  %i.k = and i64 %i.g, %i.j
  %i.l = icmp ne i64 %i.k, 0
  ret i1 %i.l
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2v88internal8compiler19InstructionSelector13MarkAsDefinedENS1_10turboshaft7OpIndexE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(752) %0, i32 %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = lshr i32 %1, 4
  %i.b = and i32 %i.a, 63
  %i.c = zext nneg i32 %i.b to i64
  %i.d = shl nuw i64 1, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = lshr i32 %1, 10
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h ; 2 uses
  %i.j = load i64, ptr %i.i, align 8
  %i.k = or i64 %i.j, %i.d
  store i64 %i.k, ptr %i.i, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZNK2v88internal8compiler19InstructionSelector6IsUsedENS1_10turboshaft7OpIndexE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(752) %0, i32 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !10, !align !23
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = zext i32 %1 to i64                       ; 2 uses
  %i.f = add i64 %i.d, %i.e
  %i.g = inttoptr i64 %i.f to ptr                 ; 4 uses
  %i.h = load i8, ptr %i.g, align 4
  %i.i = icmp eq i8 %i.h, 104
  br i1 %i.i, label %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.k = load i8, ptr %i.j, align 1
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit, label %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread8

_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit: ; preds = %bb.b
  %i.m = tail call i32 @_ZNK2v88internal8compiler10turboshaft9Operation7EffectsEv(ptr noundef nonnull align 4 dereferenceable(4) %i.g)
  %i.n = and i32 %i.m, 262144
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread, label %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit._ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread8_crit_edge

_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit._ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread8_crit_edge: ; preds = %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit
  %.pre = load ptr, ptr %0, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %.pre11 = load ptr, ptr %.phi.trans.insert, align 8
  %.pre12 = ptrtoint ptr %.pre11 to i64
  %.pre13 = add i64 %.pre12, %i.e
  %.pre15 = inttoptr i64 %.pre13 to ptr
  br label %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread8

_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread8: ; preds = %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit._ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread8_crit_edge, %bb.b
  %.pre-phi16 = phi ptr [ %.pre15, %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit._ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread8_crit_edge ], [ %i.g, %bb.b ]
  %i.o = tail call i32 @_ZNK2v88internal8compiler10turboshaft9Operation7EffectsEv(ptr noundef nonnull align 4 dereferenceable(4) %.pre-phi16)
  %i.p = and i32 %i.o, 262144
  %.not10 = icmp eq i32 %i.p, 0
  br i1 %.not10, label %bb.c, label %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread8
  %i.q = lshr i32 %1, 4
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = lshr i32 %1, 10
  %i.u = zext nneg i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.u
  %i.w = load i64, ptr %i.v, align 8
  %i.x = and i32 %i.q, 63
  %i.y = zext nneg i32 %i.x to i64
  %i.z = shl nuw i64 1, %i.y
  %i.aa = and i64 %i.w, %i.z
  %i.ab = icmp ne i64 %i.aa, 0
  br label %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread

end_hunk_0
