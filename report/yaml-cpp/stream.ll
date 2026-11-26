Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yaml-cpp/original/stream?download=true
inline.NumInlined: 349
inline.NumDeleted: 185
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNSt5dequeIcSaIcEED2Ev:bb.a

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !55   ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !56   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = icmp ult ptr %i.d, %i.f
  br i1 %i.g, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseIcSaIcEE16_M_destroy_nodesEPPcS3_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.i, %.lr.ph.i.i ], [ %i.d, %bb.b ] ; 3 uses
  %i.h = load ptr, ptr %.06.i.i, align 8, !tbaa !12
  tail call void @_ZdlPv(ptr noundef %i.h) #21
  %i.i = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8
  %i.j = icmp ult ptr %.06.i.i, %i.e
  br i1 %i.j, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseIcSaIcEE16_M_destroy_nodesEPPcS3_.exit.loopexit.i, !llvm.loop !0

_ZNSt11_Deque_baseIcSaIcEE16_M_destroy_nodesEPPcS3_.exit.loopexit.i: ; preds = %.lr.ph.i.i
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !54
  br label %_ZNSt11_Deque_baseIcSaIcEE16_M_destroy_nodesEPPcS3_.exit.i

_ZNSt11_Deque_baseIcSaIcEE16_M_destroy_nodesEPPcS3_.exit.i: ; preds = %_ZNSt11_Deque_baseIcSaIcEE16_M_destroy_nodesEPPcS3_.exit.loopexit.i, %bb.b
  %i.k = phi ptr [ %.pre.i, %_ZNSt11_Deque_baseIcSaIcEE16_M_destroy_nodesEPPcS3_.exit.loopexit.i ], [ %i.a, %bb.b ]
  tail call void @_ZdlPv(ptr noundef %i.k) #21
  br label %_ZNSt11_Deque_baseIcSaIcEED2Ev.exit

_ZNSt11_Deque_baseIcSaIcEED2Ev.exit:              ; preds = %bb.a, %_ZNSt11_Deque_baseIcSaIcEE16_M_destroy_nodesEPPcS3_.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN4YAML6StreamD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(136) dereferenceable(136) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #21
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !54   ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZNSt5dequeIcSaIcEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !55   ; 2 uses
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !56   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = icmp ult ptr %i.g, %i.i
  br i1 %i.j, label %.lr.ph.i.i.i, label %_ZNSt11_Deque_baseIcSaIcEE16_M_destroy_nodesEPPcS3_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.l, %.lr.ph.i.i.i ], [ %i.g, %bb.b ] ; 3 uses
  %i.k = load ptr, ptr %.06.i.i.i, align 8, !tbaa !12
  tail call void @_ZdlPv(ptr noundef %i.k) #21
  %i.l = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.m = icmp ult ptr %.06.i.i.i, %i.h
  br i1 %i.m, label %.lr.ph.i.i.i, label %_ZNSt11_Deque_baseIcSaIcEE16_M_destroy_nodesEPPcS3_.exit.loopexit.i.i, !llvm.loop !0

_ZNSt11_Deque_baseIcSaIcEE16_M_destroy_nodesEPPcS3_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i
  %.pre.i.i = load ptr, ptr %i.c, align 8, !tbaa !54
  br label %_ZNSt11_Deque_baseIcSaIcEE16_M_destroy_nodesEPPcS3_.exit.i.i

_ZNSt11_Deque_baseIcSaIcEE16_M_destroy_nodesEPPcS3_.exit.i.i: ; preds = %_ZNSt11_Deque_baseIcSaIcEE16_M_destroy_nodesEPPcS3_.exit.loopexit.i.i, %bb.b
  %i.n = phi ptr [ %.pre.i.i, %_ZNSt11_Deque_baseIcSaIcEE16_M_destroy_nodesEPPcS3_.exit.loopexit.i.i ], [ %i.d, %bb.b ]
  tail call void @_ZdlPv(ptr noundef %i.n) #21
  br label %_ZNSt5dequeIcSaIcEED2Ev.exit

_ZNSt5dequeIcSaIcEED2Ev.exit:                     ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit, %_ZNSt11_Deque_baseIcSaIcEE16_M_destroy_nodesEPPcS3_.exit.i.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef signext i8 @_ZNK4YAML6Stream4peekEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(136) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !46
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !46   ; 3 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !47, !noalias !73
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !45, !noalias !73
  %i.j = ptrtoint ptr %i.d to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k                       ; 5 uses
  %i.m = icmp sgt i64 %i.l, -1
  br i1 %i.m, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.n = icmp samesign ult i64 %i.l, 512
  br i1 %i.n, label %_ZNSt5dequeIcSaIcEEixEm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = lshr i64 %i.l, 9
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.p = ashr i64 %i.l, 9
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.q = phi i64 [ %i.o, %bb.d ], [ %i.p, %bb.e ] ; 2 uses
  %i.r = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.q
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !12, !noalias !73
  %i.t = shl nsw i64 %i.q, 9
  %i.u = sub nsw i64 %i.l, %i.t
  %i.v = getelementptr inbounds i8, ptr %i.s, i64 %i.u
  br label %_ZNSt5dequeIcSaIcEEixEm.exit

_ZNSt5dequeIcSaIcEEixEm.exit:                     ; preds = %bb.c, %bb.f
  %storemerge.i.i.i.i = phi ptr [ %i.v, %bb.f ], [ %i.d, %bb.c ]
  %i.w = load i8, ptr %storemerge.i.i.i.i, align 1, !tbaa !26
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_ZNSt5dequeIcSaIcEEixEm.exit
  %.0 = phi i8 [ %i.w, %_ZNSt5dequeIcSaIcEEixEm.exit ], [ 4, %bb.a ]
  ret i8 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZNK4YAML6StreamcvbEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(136) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !57, !nonnull !58, !align !59 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !24
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !46
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !46   ; 3 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !47, !noalias !76
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !45, !noalias !76
  %i.r = ptrtoint ptr %i.l to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s                       ; 5 uses
  %i.u = icmp sgt i64 %i.t, -1
  br i1 %i.u, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.v = icmp samesign ult i64 %i.t, 512
  br i1 %i.v, label %_ZNSt5dequeIcSaIcEEixEm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = lshr i64 %i.t, 9
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.x = ashr i64 %i.t, 9
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.y = phi i64 [ %i.w, %bb.e ], [ %i.x, %bb.f ] ; 2 uses
  %i.z = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.y
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !12, !noalias !76
  %i.ab = shl nsw i64 %i.y, 9
  %i.ac = sub nsw i64 %i.t, %i.ab
  %i.ad = getelementptr inbounds i8, ptr %i.aa, i64 %i.ac
  br label %_ZNSt5dequeIcSaIcEEixEm.exit

_ZNSt5dequeIcSaIcEEixEm.exit:                     ; preds = %bb.d, %bb.g
  %storemerge.i.i.i.i = phi ptr [ %i.ad, %bb.g ], [ %i.l, %bb.d ]
  %i.ae = load i8, ptr %storemerge.i.i.i.i, align 1, !tbaa !26
  %i.af = icmp ne i8 %i.ae, 4
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %_ZNSt5dequeIcSaIcEEixEm.exit, %bb.a
  %i.ag = phi i1 [ true, %bb.a ], [ false, %bb.b ], [ %i.af, %_ZNSt5dequeIcSaIcEEixEm.exit ]
  ret i1 %i.ag
}

; Function Attrs: mustprogress uwtable
define noundef signext i8 @_ZN4YAML6Stream3getEv(ptr noundef nonnull align 8 dereferenceable(136) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !46   ; 4 uses
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !46   ; 5 uses
  %i.e = icmp eq ptr %i.c, %i.d
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !45 ; 3 uses
  br i1 %i.e, label %_ZNK4YAML6Stream4peekEv.exit.thread, label %bb.b

_ZNK4YAML6Stream4peekEv.exit.thread:              ; preds = %bb.a
  %.phi.trans.insert.i10 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.pre1.i11 = load ptr, ptr %.phi.trans.insert.i10, align 8, !tbaa !48
  br label %._crit_edge.i

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !47, !noalias !81 ; 2 uses
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 5 uses
  %i.k = icmp sgt i64 %i.j, -1
  br i1 %i.k, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.l = icmp samesign ult i64 %i.j, 512
  br i1 %i.l, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = lshr i64 %i.j, 9
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.n = ashr i64 %i.j, 9
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.o = phi i64 [ %i.m, %bb.d ], [ %i.n, %bb.e ] ; 2 uses
  %i.p = getelementptr inbounds [8 x i8], ptr %.pre, i64 %i.o
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !12, !noalias !81
  %i.r = shl nsw i64 %i.o, 9
  %i.s = sub nsw i64 %i.j, %i.r
  %i.t = getelementptr inbounds i8, ptr %i.q, i64 %i.s
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %storemerge.i.i.i.i.i = phi ptr [ %i.t, %bb.f ], [ %i.d, %bb.c ]
  %i.u = load i8, ptr %storemerge.i.i.i.i.i, align 1, !tbaa !26
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.pre1.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !48 ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %.pre1.i, i64 -1
  %.not.i.i = icmp eq ptr %i.d, %i.v
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  br label %_ZNSt5dequeIcSaIcEE9pop_frontEv.exit.i

bb.i:                                             ; preds = %bb.g
  tail call void @_ZdlPv(ptr noundef %i.g) #21
  %i.x = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !55
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 3 uses
  store ptr %i.y, ptr %.phi.trans.insert, align 8, !tbaa !45
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !12   ; 3 uses
  store ptr %i.z, ptr %i.f, align 8, !tbaa !47
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 512 ; 2 uses
  store ptr %i.aa, ptr %.phi.trans.insert.i, align 8, !tbaa !48
  %.pre.pre.i = load ptr, ptr %i.a, align 8, !tbaa !46
  br label %_ZNSt5dequeIcSaIcEE9pop_frontEv.exit.i

_ZNSt5dequeIcSaIcEE9pop_frontEv.exit.i:           ; preds = %bb.i, %bb.h
  %i.ab = phi ptr [ %.pre, %bb.h ], [ %i.y, %bb.i ]
  %.pre.i = phi ptr [ %i.c, %bb.h ], [ %.pre.pre.i, %bb.i ]
  %i.ac = phi ptr [ %.pre1.i, %bb.h ], [ %i.aa, %bb.i ]
  %storemerge.i.i = phi ptr [ %i.w, %bb.h ], [ %i.z, %bb.i ] ; 2 uses
  store ptr %storemerge.i.i, ptr %i.b, align 8, !tbaa !60
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !61
  %i.af = add nsw i32 %i.ae, 1
  store i32 %i.af, ptr %i.ad, align 8, !tbaa !61
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_ZNK4YAML6Stream4peekEv.exit.thread, %_ZNSt5dequeIcSaIcEE9pop_frontEv.exit.i
  %i.ag = phi ptr [ %i.ab, %_ZNSt5dequeIcSaIcEE9pop_frontEv.exit.i ], [ %.pre, %_ZNK4YAML6Stream4peekEv.exit.thread ]
  %.0.i12 = phi i8 [ %i.u, %_ZNSt5dequeIcSaIcEE9pop_frontEv.exit.i ], [ 4, %_ZNK4YAML6Stream4peekEv.exit.thread ] ; 4 uses
  %i.ah = phi ptr [ %storemerge.i.i, %_ZNSt5dequeIcSaIcEE9pop_frontEv.exit.i ], [ %i.c, %_ZNK4YAML6Stream4peekEv.exit.thread ]
  %i.ai = phi ptr [ %i.ac, %_ZNSt5dequeIcSaIcEE9pop_frontEv.exit.i ], [ %.pre1.i11, %_ZNK4YAML6Stream4peekEv.exit.thread ]
  %i.aj = phi ptr [ %.pre.i, %_ZNSt5dequeIcSaIcEE9pop_frontEv.exit.i ], [ %i.c, %_ZNK4YAML6Stream4peekEv.exit.thread ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !45 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %i.ag to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = ashr exact i64 %i.ap, 3
  %i.ar = icmp ne ptr %i.al, null
  %.neg.i.i.i.i = sext i1 %i.ar to i64
  %i.as = add nsw i64 %i.aq, %.neg.i.i.i.i
  %i.at = shl nsw i64 %i.as, 9
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !47
  %i.aw = ptrtoint ptr %i.aj to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = ptrtoint ptr %i.ai to i64
  %i.az = ptrtoint ptr %i.ah to i64
  %i.ba = add i64 %i.aw, %i.ay
  %i.bb = sub i64 %i.ba, %i.ax
  %i.bc = add i64 %i.bb, %i.at
  %.not.i = icmp eq i64 %i.bc, %i.az
  br i1 %.not.i, label %bb.j, label %_ZN4YAML6Stream14AdvanceCurrentEv.exit

bb.j:                                             ; preds = %._crit_edge.i
  %i.bd = tail call noundef zeroext i1 @_ZNK4YAML6Stream12_ReadAheadToEm(ptr noundef nonnull align 8 dereferenceable(136) %0, i64 noundef 0) ; 0 uses
  br label %_ZN4YAML6Stream14AdvanceCurrentEv.exit

_ZN4YAML6Stream14AdvanceCurrentEv.exit:           ; preds = %._crit_edge.i, %bb.j
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !82
  %i.bg = add nsw i32 %i.bf, 1
  store i32 %i.bg, ptr %i.be, align 8, !tbaa !82
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 8, !tbaa !83  ; 2 uses
  %.not = icmp eq i8 %i.bi, 0
  br i1 %.not, label %bb.k, label %bb.r

bb.k:                                             ; preds = %_ZN4YAML6Stream14AdvanceCurrentEv.exit
  switch i8 %.0.i12, label %bb.r [
    i8 10, label %.sink.split
    i8 13, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  %i.bj = load ptr, ptr %i.a, align 8, !tbaa !46
  %i.bk = load ptr, ptr %i.b, align 8, !tbaa !46  ; 3 uses
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %.sink.split, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !47, !noalias !84
  %i.bo = load ptr, ptr %i.am, align 8, !tbaa !45, !noalias !84
  %i.bp = ptrtoint ptr %i.bk to i64
  %i.bq = ptrtoint ptr %i.bn to i64
  %i.br = sub i64 %i.bp, %i.bq                    ; 5 uses
  %i.bs = icmp sgt i64 %i.br, -1
  br i1 %i.bs, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bt = icmp samesign ult i64 %i.br, 512
  br i1 %i.bt, label %_ZNK4YAML6Stream4peekEv.exit8, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bu = lshr i64 %i.br, 9
  br label %bb.q

bb.p:                                             ; preds = %bb.m
  %i.bv = ashr i64 %i.br, 9
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bw = phi i64 [ %i.bu, %bb.o ], [ %i.bv, %bb.p ] ; 2 uses
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.bo, i64 %i.bw
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !12, !noalias !84
  %i.bz = shl nsw i64 %i.bw, 9
  %i.ca = sub nsw i64 %i.br, %i.bz
  %i.cb = getelementptr inbounds i8, ptr %i.by, i64 %i.ca
  br label %_ZNK4YAML6Stream4peekEv.exit8

_ZNK4YAML6Stream4peekEv.exit8:                    ; preds = %bb.n, %bb.q
  %storemerge.i.i.i.i.i6 = phi ptr [ %i.cb, %bb.q ], [ %i.bk, %bb.n ]
  %i.cc = load i8, ptr %storemerge.i.i.i.i.i6, align 1, !tbaa !26
  %.fr = freeze i8 %i.cc
  %i.cd = icmp eq i8 %.fr, 10
  %spec.select = select i1 %i.cd, i8 10, i8 13
  br label %.sink.split

.sink.split:                                      ; preds = %bb.l, %_ZNK4YAML6Stream4peekEv.exit8, %bb.k
  %.sink = phi i8 [ %.0.i12, %bb.k ], [ 13, %bb.l ], [ %spec.select, %_ZNK4YAML6Stream4peekEv.exit8 ] ; 2 uses
  store i8 %.sink, ptr %i.bh, align 8, !tbaa !83
  br label %bb.r

bb.r:                                             ; preds = %.sink.split, %bb.k, %_ZN4YAML6Stream14AdvanceCurrentEv.exit
  %i.ce = phi i8 [ 0, %bb.k ], [ %i.bi, %_ZN4YAML6Stream14AdvanceCurrentEv.exit ], [ %.sink, %.sink.split ]
  %i.cf = icmp eq i8 %.0.i12, %i.ce
  br i1 %i.cf, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 0, ptr %i.be, align 8, !tbaa !82
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !85
  %i.ci = add nsw i32 %i.ch, 1
  store i32 %i.ci, ptr %i.cg, align 4, !tbaa !85
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  ret i8 %.0.i12
}

; Function Attrs: mustprogress uwtable
define void @_ZN4YAML6Stream14AdvanceCurrentEv(ptr noundef nonnull align 8 dereferenceable(136) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !46   ; 4 uses
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !46   ; 3 uses
  %i.e = icmp eq ptr %i.c, %i.d
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.pre1 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !48 ; 3 uses
  br i1 %i.e, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %.pre1, i64 -1
  %.not.i = icmp eq ptr %i.d, %i.f
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  br label %_ZNSt5dequeIcSaIcEE9pop_frontEv.exit

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !86
  tail call void @_ZdlPv(ptr noundef %i.i) #21
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !55
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  store ptr %i.l, ptr %i.j, align 8, !tbaa !45
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !12   ; 3 uses
  store ptr %i.m, ptr %i.h, align 8, !tbaa !47
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 512 ; 2 uses
  store ptr %i.n, ptr %.phi.trans.insert, align 8, !tbaa !48
  %.pre.pre = load ptr, ptr %i.a, align 8, !tbaa !46
  br label %_ZNSt5dequeIcSaIcEE9pop_frontEv.exit

_ZNSt5dequeIcSaIcEE9pop_frontEv.exit:             ; preds = %bb.c, %bb.d
  %.pre = phi ptr [ %i.c, %bb.c ], [ %.pre.pre, %bb.d ]
  %i.o = phi ptr [ %.pre1, %bb.c ], [ %i.n, %bb.d ]
  %storemerge.i = phi ptr [ %i.g, %bb.c ], [ %i.m, %bb.d ] ; 2 uses
  store ptr %storemerge.i, ptr %i.b, align 8, !tbaa !60
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !61
  %i.r = add nsw i32 %i.q, 1
  store i32 %i.r, ptr %i.p, align 8, !tbaa !61
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %_ZNSt5dequeIcSaIcEE9pop_frontEv.exit
  %i.s = phi ptr [ %storemerge.i, %_ZNSt5dequeIcSaIcEE9pop_frontEv.exit ], [ %i.c, %bb.a ]
  %i.t = phi ptr [ %i.o, %_ZNSt5dequeIcSaIcEE9pop_frontEv.exit ], [ %.pre1, %bb.a ]
  %i.u = phi ptr [ %.pre, %_ZNSt5dequeIcSaIcEE9pop_frontEv.exit ], [ %i.c, %bb.a ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !45   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !45
  %i.z = ptrtoint ptr %i.w to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = ashr exact i64 %i.ab, 3
  %i.ad = icmp ne ptr %i.w, null
  %.neg.i.i.i = sext i1 %i.ad to i64
  %i.ae = add nsw i64 %i.ac, %.neg.i.i.i
  %i.af = shl nsw i64 %i.ae, 9
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !47
  %i.ai = ptrtoint ptr %i.u to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = ptrtoint ptr %i.t to i64
  %i.al = ptrtoint ptr %i.s to i64
  %i.am = sub i64 %i.ai, %i.aj
  %i.an = add i64 %i.am, %i.ak
  %i.ao = add i64 %i.an, %i.af
  %.not = icmp eq i64 %i.ao, %i.al
  br i1 %.not, label %bb.e, label %_ZNK4YAML6Stream11ReadAheadToEm.exit

bb.e:                                             ; preds = %._crit_edge
  %i.ap = tail call noundef zeroext i1 @_ZNK4YAML6Stream12_ReadAheadToEm(ptr noundef nonnull align 8 dereferenceable(136) %0, i64 noundef 0) ; 0 uses
  br label %_ZNK4YAML6Stream11ReadAheadToEm.exit

_ZNK4YAML6Stream11ReadAheadToEm.exit:             ; preds = %._crit_edge, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4YAML6Stream3getB5cxx11Ei(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(136) %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !50
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %i.b, align 8, !tbaa !52
  store i8 0, ptr %i.a, align 8, !tbaa !26
  %i.c = icmp sgt i32 %2, 0
  br i1 %i.c, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.d = zext nneg i32 %2 to i64
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.d)
          to label %.lr.ph unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.lr.ph:                                           ; preds = %bb.b, %bb.e
  %.013 = phi i32 [ %i.r, %bb.e ], [ 0, %bb.b ]
  %i.e = invoke noundef signext i8 @_ZN4YAML6Stream3getEv(ptr noundef nonnull align 8 dereferenceable(136) %1)
          to label %bb.c unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.c:                                             ; preds = %.lr.ph
  %i.f = load i64, ptr %i.b, align 8, !tbaa !52   ; 4 uses
  %i.g = add i64 %i.f, 1                          ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !53     ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.a
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.c
  %i.j = icmp ult i64 %i.f, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  %i.k = load i64, ptr %i.a, align 8, !tbaa !26
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.l = phi i64 [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %i.m = icmp ugt i64 %i.g, %i.l
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.f, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.d
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !53
  br label %bb.e

bb.e:                                             ; preds = %.noexc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.n = phi ptr [ %.pre.i.i, %.noexc ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.f
  store i8 %i.e, ptr %i.o, align 1, !tbaa !26
  store i64 %i.g, ptr %i.b, align 8, !tbaa !52
  %i.p = load ptr, ptr %0, align 8, !tbaa !53
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.g
  store i8 0, ptr %i.q, align 1, !tbaa !26
  %i.r = add nuw nsw i32 %.013, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.r, %2
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !87

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.d, %.lr.ph, %bb.b
  %lpad.loopexit.split-lp18 = landingpad { ptr, i32 }
          cleanup
  %i.s = load ptr, ptr %0, align 8, !tbaa !53     ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.a
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  tail call void @_ZdlPv(ptr noundef %i.s) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %lpad.loopexit.split-lp18

.loopexit:                                        ; preds = %bb.e, %bb.a
  ret void
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_ZN4YAML6Stream3eatEi(ptr noundef nonnull align 8 dereferenceable(136) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.03 = phi i32 [ %i.c, %.lr.ph ], [ 0, %bb.a ]
  %i.b = tail call noundef signext i8 @_ZN4YAML6Stream3getEv(ptr noundef nonnull align 8 dereferenceable(136) %0) ; 0 uses
  %i.c = add nuw nsw i32 %.03, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.c, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !88
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK4YAML6Stream12_ReadAheadToEm(ptr noundef nonnull align 8 dereferenceable(136) %0, i64 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !57, !nonnull !58, !align !59 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %i.c, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !24
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 96
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNK4YAML6Stream12StreamInUtf8Ev.exit
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !45   ; 3 uses
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !45
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = ashr exact i64 %i.x, 3                   ; 2 uses
  %i.z = icmp ne ptr %i.t, null
  %.neg.i.i = sext i1 %i.z to i64
  %i.aa = add nsw i64 %i.y, %.neg.i.i
  %i.ab = shl nsw i64 %i.aa, 9
  %i.ac = load ptr, ptr %i.l, align 8, !tbaa !46
  %i.ad = load ptr, ptr %i.p, align 8, !tbaa !47
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = load ptr, ptr %i.q, align 8, !tbaa !48
  %i.ah = load ptr, ptr %i.m, align 8, !tbaa !46
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64               ; 2 uses
  %i.ak = sub i64 %i.ae, %i.af
  %i.al = add i64 %i.ak, %i.ai                    ; 2 uses
  %i.am = add i64 %i.al, %i.ab
  %i.an = sub i64 %i.am, %i.aj
  %.not = icmp ugt i64 %i.an, %1
  br i1 %.not, label %.critedge.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ao = load i32, ptr %i.r, align 4, !tbaa !44
  switch i32 %i.ao, label %_ZNK4YAML6Stream12StreamInUtf8Ev.exit [
    i32 0, label %bb.d
    i32 1, label %bb.h
    i32 2, label %bb.i
    i32 3, label %bb.j
    i32 4, label %bb.k
  ]

bb.d:                                             ; preds = %bb.c
  %i.ap = call noundef zeroext i8 @_ZNK4YAML6Stream11GetNextByteEv(ptr noundef nonnull align 8 dereferenceable(136) %0) ; 2 uses
  %i.aq = load ptr, ptr %0, align 8, !tbaa !57, !nonnull !58, !align !59 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !14
end_hunk_0
