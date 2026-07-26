inline.NumInlined: 181
inline.NumDeleted: 100
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN6google8protobuf8internal20RepeatedPtrFieldBase8CloseGapEii:bb.a
  store ptr null, ptr %0, align 8, !tbaa !18
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.g = add nsw i64 %i.b, -1
  %i.h = inttoptr i64 %i.g to ptr                 ; 2 uses
  %i.i = add nsw i32 %2, %1                       ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !24   ; 3 uses
  %i.l = icmp slt i32 %i.i, %i.k
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.n = sext i32 %i.i to i64                     ; 4 uses
  %i.o = sext i32 %2 to i64                       ; 3 uses
  %i.p = sext i32 %i.k to i64                     ; 2 uses
  %i.q = sub nsw i64 %i.p, %i.n                   ; 3 uses
  %min.iters.check = icmp ult i64 %i.q, 8
  %i.r = shl nsw i64 %i.o, 3
  %diff.check = icmp ugt i64 %i.r, -32
  %or.cond23 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond23, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.q, -4                       ; 3 uses
  %i.s = add nsw i64 %n.vec, %i.n
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.t = add i64 %index, %i.n                     ; 2 uses
  %i.u = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.t ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %wide.load = load <2 x ptr>, ptr %i.u, align 8, !tbaa !25
  %wide.load22 = load <2 x ptr>, ptr %i.v, align 8, !tbaa !25
  %i.w = sub nsw i64 %i.t, %i.o
  %i.x = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.w ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store <2 x ptr> %wide.load, ptr %i.x, align 8, !tbaa !25
  store <2 x ptr> %wide.load22, ptr %i.y, align 8, !tbaa !25
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !70

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.q, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %i.n, %.lr.ph ], [ %i.s, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.d
  %i.aa = sub nsw i32 %i.k, %2
  store i32 %i.aa, ptr %i.j, align 4, !tbaa !24
  br label %bb.e

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.m, i64 %indvars.iv
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !25
  %i.ad = sub nsw i64 %indvars.iv, %i.o
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.ad
  store ptr %i.ac, ptr %i.ae, align 8, !tbaa !25
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.af = icmp slt i64 %indvars.iv.next, %i.p
  br i1 %i.af, label %scalar.ph, label %._crit_edge, !llvm.loop !73

bb.e:                                             ; preds = %bb.b, %bb.c, %._crit_edge
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !64
  %i.ai = sub nsw i32 %i.ah, %2
  store i32 %i.ai, ptr %i.ag, align 8, !tbaa !3
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6google8protobuf8internal34InternalOutOfLineDeleteMessageLiteEPNS0_11MessageLiteE(ptr noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !65
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase9MergeFromINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKS2_PNS0_5ArenaE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %.not.i = icmp eq ptr %2, null
  %i.c = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.d = add i64 %i.c, 64
  %i.e = inttoptr i64 %i.d to ptr
  tail call void @llvm.prefetch.p0(ptr %i.e, i32 0, i32 3, i32 1)
  %i.f = add i64 %i.c, 128
  %i.g = inttoptr i64 %i.f to ptr
  tail call void @llvm.prefetch.p0(ptr %i.g, i32 0, i32 3, i32 1)
  %i.h = add i64 %i.c, 192
  %i.i = inttoptr i64 %i.h to ptr
  tail call void @llvm.prefetch.p0(ptr %i.i, i32 0, i32 3, i32 1)
  %i.j = add i64 %i.c, 256
  %i.k = inttoptr i64 %i.j to ptr
  tail call void @llvm.prefetch.p0(ptr %i.k, i32 0, i32 3, i32 1)
  %i.l = add i64 %i.c, 320
  %i.m = inttoptr i64 %i.l to ptr
  tail call void @llvm.prefetch.p0(ptr %i.m, i32 0, i32 3, i32 1)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !64   ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !64   ; 5 uses
  %i.r = add nsw i32 %i.q, %i.o                   ; 12 uses
  %i.s = load ptr, ptr %0, align 8, !tbaa !18     ; 6 uses
  %i.t = ptrtoint ptr %i.s to i64                 ; 7 uses
  %i.u = and i64 %i.t, 1
  %i.v = icmp eq i64 %i.u, 0                      ; 3 uses
  br i1 %.not.i, label %.preheader40, label %.preheader42

.preheader42:                                     ; preds = %bb.a
  br i1 %i.v, label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit.i, label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit.thread.i

.preheader40:                                     ; preds = %bb.a
  br i1 %i.v, label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit.i17, label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit.thread.i13

_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit.i: ; preds = %.preheader42
  %.not.i11 = icmp sgt i32 %i.r, 1
  br i1 %.not.i11, label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit6.i, label %bb.c

_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit.thread.i: ; preds = %.preheader42
  %i.w = add nsw i64 %i.t, -1
  %i.x = inttoptr i64 %i.w to ptr                 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !21   ; 2 uses
  %.not7.i = icmp sgt i32 %i.r, %i.y
  br i1 %.not7.i, label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit6.i, label %bb.b

bb.b:                                             ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit.thread.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit.i
  %i.aa = phi ptr [ %i.z, %bb.b ], [ %0, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit.i ]
  %i.ab = sext i32 %i.o to i64
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.ab
  br label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase15InternalReserveEiPNS0_5ArenaE.exit

_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit6.i: ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit.thread.i, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit.i
  %i.ad = phi i32 [ 1, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit.i ], [ %i.y, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit.thread.i ]
  %i.ae = sub nsw i32 %i.r, %i.ad
  %i.af = tail call noundef ptr @_ZN6google8protobuf8internal20RepeatedPtrFieldBase14InternalExtendEiPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %i.ae, ptr noundef nonnull %2)
  %.pre = load i32, ptr %i.p, align 8, !tbaa !64
  %.pre66 = load ptr, ptr %0, align 8, !tbaa !18  ; 2 uses
  %.pre71 = ptrtoint ptr %.pre66 to i64
  br label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase15InternalReserveEiPNS0_5ArenaE.exit

_ZN6google8protobuf8internal20RepeatedPtrFieldBase15InternalReserveEiPNS0_5ArenaE.exit: ; preds = %bb.c, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit6.i
  %.pre-phi72 = phi i64 [ %i.t, %bb.c ], [ %.pre71, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit6.i ] ; 2 uses
  %i.ag = phi ptr [ %i.s, %bb.c ], [ %.pre66, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit6.i ]
  %i.ah = phi i32 [ %i.q, %bb.c ], [ %.pre, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit6.i ] ; 2 uses
  %.0.i10 = phi ptr [ %i.ac, %bb.c ], [ %i.af, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit6.i ] ; 2 uses
  %i.ai = load ptr, ptr %1, align 8, !tbaa !18
  %i.aj = ptrtoint ptr %i.ai to i64               ; 2 uses
  %i.ak = and i64 %i.aj, 1
  %i.al = icmp eq i64 %i.ak, 0
  %i.am = add i64 %i.aj, -1
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = select i1 %i.al, ptr %1, ptr %i.ao      ; 4 uses
  %i.aq = sext i32 %i.ah to i64
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.aq ; 2 uses
  %i.as = and i64 %.pre-phi72, 1
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN6google8protobuf8internal20RepeatedPtrFieldBase15InternalReserveEiPNS0_5ArenaE.exit
  %.not.i.i = icmp ne ptr %i.ag, null
  %i.au = zext i1 %.not.i.i to i32
  br label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase12ClearedCountEv.exit

bb.e:                                             ; preds = %_ZN6google8protobuf8internal20RepeatedPtrFieldBase15InternalReserveEiPNS0_5ArenaE.exit
  %i.av = add nsw i64 %.pre-phi72, -1
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !24
  br label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase12ClearedCountEv.exit

_ZNK6google8protobuf8internal20RepeatedPtrFieldBase12ClearedCountEv.exit: ; preds = %bb.d, %bb.e
  %i.az = phi i32 [ %i.au, %bb.d ], [ %i.ay, %bb.e ]
  %i.ba = load i32, ptr %i.n, align 8, !tbaa !64
  %i.bb = sub nsw i32 %i.az, %i.ba
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.ah, i32 %i.bb) ; 2 uses
  %i.bc = sext i32 %.sroa.speculated to i64
  %.idx = shl nsw i64 %i.bc, 3
  %i.bd = getelementptr inbounds i8, ptr %i.ap, i64 %.idx
  %i.be = icmp sgt i32 %.sroa.speculated, 0
  br i1 %i.be, label %.lr.ph, label %.preheader41

.preheader41:                                     ; preds = %.lr.ph, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase12ClearedCountEv.exit
  %.028.i.lcssa = phi ptr [ %i.ap, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase12ClearedCountEv.exit ], [ %i.bj, %.lr.ph ] ; 2 uses
  %.0.i.lcssa = phi ptr [ %.0.i10, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase12ClearedCountEv.exit ], [ %i.bi, %.lr.ph ]
  %i.bf = icmp ult ptr %.028.i.lcssa, %i.ar
  br i1 %i.bf, label %.lr.ph49, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase12ClearedCountEv.exit, %.lr.ph
  %.0.i45 = phi ptr [ %i.bi, %.lr.ph ], [ %.0.i10, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase12ClearedCountEv.exit ] ; 2 uses
  %.028.i44 = phi ptr [ %i.bj, %.lr.ph ], [ %i.ap, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase12ClearedCountEv.exit ] ; 2 uses
  %i.bg = load ptr, ptr %.0.i45, align 8, !tbaa !74
  %i.bh = load ptr, ptr %.028.i44, align 8, !tbaa !74
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bg, ptr noundef nonnull align 8 dereferenceable(32) %i.bh)
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.i45, i64 8 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.028.i44, i64 8 ; 3 uses
  %i.bk = icmp ult ptr %i.bj, %i.bd
  br i1 %i.bk, label %.lr.ph, label %.preheader41, !llvm.loop !76

.lr.ph49:                                         ; preds = %.preheader41, %"_ZZN6google8protobuf8internal20RepeatedPtrFieldBase17MergeFromInternalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNS2_9MergeFromIS9_EEvRKS2_PNS0_5ArenaEE3$_0EEvSC_SE_OT0_ENKUlSE_RKS9_E_clB5cxx11ESE_SJ_.exit"
  %.1.i48 = phi ptr [ %i.ca, %"_ZZN6google8protobuf8internal20RepeatedPtrFieldBase17MergeFromInternalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNS2_9MergeFromIS9_EEvRKS2_PNS0_5ArenaEE3$_0EEvSC_SE_OT0_ENKUlSE_RKS9_E_clB5cxx11ESE_SJ_.exit" ], [ %.0.i.lcssa, %.preheader41 ] ; 2 uses
  %.129.i47 = phi ptr [ %i.cb, %"_ZZN6google8protobuf8internal20RepeatedPtrFieldBase17MergeFromInternalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNS2_9MergeFromIS9_EEvRKS2_PNS0_5ArenaEE3$_0EEvSC_SE_OT0_ENKUlSE_RKS9_E_clB5cxx11ESE_SJ_.exit" ], [ %.028.i.lcssa, %.preheader41 ] ; 2 uses
  %i.bl = load ptr, ptr %.129.i47, align 8, !tbaa !74 ; 2 uses
  %i.bm = call noundef ptr @_ZN6google8protobuf8internal15ThreadSafeArena23AllocateFromStringBlockEv(ptr noundef nonnull align 8 dereferenceable(168) %2) ; 7 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16 ; 3 uses
  store ptr %i.bn, ptr %i.bm, align 8, !tbaa !9
  %i.bo = load ptr, ptr %i.bl, align 8, !tbaa !13 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store i64 %i.bq, ptr %i.b, align 8, !tbaa !17
  %i.br = icmp ugt i64 %i.bq, 15
  br i1 %i.br, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %.lr.ph49
  %i.bs = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.bm, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.bs, ptr %i.bm, align 8, !tbaa !13
  %i.bt = load i64, ptr %i.b, align 8, !tbaa !17
  store i64 %i.bt, ptr %i.bn, align 8, !tbaa !7
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %.lr.ph49
  %i.bu = phi ptr [ %i.bs, %.noexc.i.i ], [ %i.bn, %.lr.ph49 ] ; 2 uses
  switch i64 %i.bq, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %"_ZZN6google8protobuf8internal20RepeatedPtrFieldBase17MergeFromInternalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNS2_9MergeFromIS9_EEvRKS2_PNS0_5ArenaEE3$_0EEvSC_SE_OT0_ENKUlSE_RKS9_E_clB5cxx11ESE_SJ_.exit"
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.bv = load i8, ptr %i.bo, align 1, !tbaa !7
  store i8 %i.bv, ptr %i.bu, align 1, !tbaa !7
  br label %"_ZZN6google8protobuf8internal20RepeatedPtrFieldBase17MergeFromInternalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNS2_9MergeFromIS9_EEvRKS2_PNS0_5ArenaEE3$_0EEvSC_SE_OT0_ENKUlSE_RKS9_E_clB5cxx11ESE_SJ_.exit"

bb.g:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bu, ptr align 1 %i.bo, i64 %i.bq, i1 false)
  br label %"_ZZN6google8protobuf8internal20RepeatedPtrFieldBase17MergeFromInternalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNS2_9MergeFromIS9_EEvRKS2_PNS0_5ArenaEE3$_0EEvSC_SE_OT0_ENKUlSE_RKS9_E_clB5cxx11ESE_SJ_.exit"

"_ZZN6google8protobuf8internal20RepeatedPtrFieldBase17MergeFromInternalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNS2_9MergeFromIS9_EEvRKS2_PNS0_5ArenaEE3$_0EEvSC_SE_OT0_ENKUlSE_RKS9_E_clB5cxx11ESE_SJ_.exit": ; preds = %._crit_edge.i.i.i, %bb.f, %bb.g
  %i.bw = load i64, ptr %i.b, align 8, !tbaa !17  ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !16
  %i.by = load ptr, ptr %i.bm, align 8, !tbaa !13
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bw
  store i8 0, ptr %i.bz, align 1, !tbaa !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  store ptr %i.bm, ptr %.1.i48, align 8, !tbaa !74
  %i.ca = getelementptr inbounds nuw i8, ptr %.1.i48, i64 8
  %i.cb = getelementptr inbounds nuw i8, ptr %.129.i47, i64 8 ; 2 uses
  %i.cc = icmp ult ptr %i.cb, %i.ar
  br i1 %i.cc, label %.lr.ph49, label %._crit_edge, !llvm.loop !77

._crit_edge:                                      ; preds = %"_ZZN6google8protobuf8internal20RepeatedPtrFieldBase17MergeFromInternalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNS2_9MergeFromIS9_EEvRKS2_PNS0_5ArenaEE3$_0EEvSC_SE_OT0_ENKUlSE_RKS9_E_clB5cxx11ESE_SJ_.exit", %.preheader41
  store i32 %i.r, ptr %i.n, align 8, !tbaa !3
  %i.cd = load ptr, ptr %0, align 8, !tbaa !18    ; 2 uses
  %i.ce = ptrtoint ptr %i.cd to i64               ; 3 uses
  %i.cf = and i64 %i.ce, 1
  %i.cg = icmp eq i64 %i.cf, 0
  br i1 %i.cg, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge
  %.not.i12 = icmp ne ptr %i.cd, null
  %i.ch = zext i1 %.not.i12 to i32
  br label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit

bb.i:                                             ; preds = %._crit_edge
  %i.ci = add nsw i64 %i.ce, -1
  %i.cj = inttoptr i64 %i.ci to ptr
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !24
  br label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit

_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit: ; preds = %bb.h, %bb.i
  %i.cm = phi i32 [ %i.ch, %bb.h ], [ %i.cl, %bb.i ]
  %i.cn = icmp sgt i32 %i.r, %i.cm
  br i1 %i.cn, label %"_ZN6google8protobuf8internal20RepeatedPtrFieldBase17MergeFromInternalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNS2_9MergeFromIS9_EEvRKS2_PNS0_5ArenaEE3$_0EEvSC_SE_OT0_.exit.sink.split", label %"_ZN6google8protobuf8internal20RepeatedPtrFieldBase17MergeFromInternalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNS2_9MergeFromIS9_EEvRKS2_PNS0_5ArenaEE3$_0EEvSC_SE_OT0_.exit"

_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit.i17: ; preds = %.preheader40
  %.not.i18 = icmp sgt i32 %i.r, 1
  br i1 %.not.i18, label %_ZN6google8protobuf8internal20CalculateReserveSizeIPvLi8EEEiii.exit.i, label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase15InternalReserveEiPNS0_5ArenaE.exit19

_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit.thread.i13: ; preds = %.preheader40
  %i.co = add nsw i64 %i.t, -1
  %i.cp = inttoptr i64 %i.co to ptr               ; 3 uses
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !21 ; 4 uses
  %.not7.i14 = icmp sgt i32 %i.r, %i.cq
  br i1 %.not7.i14, label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit.i27, label %bb.j

bb.j:                                             ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit.thread.i13
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  br label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase15InternalReserveEiPNS0_5ArenaE.exit19

_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit.i27: ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit.thread.i13
  %i.cs = icmp slt i32 %i.r, 1
  br i1 %i.cs, label %_ZN6google8protobuf8internal20CalculateReserveSizeIPvLi8EEEiii.exit.i.thread, label %bb.k

bb.k:                                             ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit.i27
  %i.ct = icmp sgt i32 %i.cq, 1073741819
  br i1 %i.ct, label %_ZN6google8protobuf8internal20CalculateReserveSizeIPvLi8EEEiii.exit.i.thread, label %_ZN6google8protobuf8internal20CalculateReserveSizeIPvLi8EEEiii.exit.i, !prof !23

_ZN6google8protobuf8internal20CalculateReserveSizeIPvLi8EEEiii.exit.i.thread: ; preds = %bb.k, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit.i27
  %.1.i.i.ph = phi i32 [ 2147483647, %bb.k ], [ 1, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit.i27 ] ; 2 uses
  %i.cu = zext nneg i32 %.1.i.i.ph to i64
  %i.cv = shl nuw nsw i64 %i.cu, 3
  %i.cw = add nuw nsw i64 %i.cv, 8
  %i.cx = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cw) #13
  br label %bb.m

_ZN6google8protobuf8internal20CalculateReserveSizeIPvLi8EEEiii.exit.i: ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit.i17, %bb.k
  %i.cy = phi i32 [ %i.cq, %bb.k ], [ 1, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit.i17 ] ; 2 uses
  %i.cz = shl nsw i32 %i.cy, 1
  %i.da = or disjoint i32 %i.cz, 1
  %.sroa.speculated.i.i = tail call i32 @llvm.smax.i32(i32 %i.da, i32 %i.r) ; 3 uses
  %i.db = zext nneg i32 %.sroa.speculated.i.i to i64
  %i.dc = shl nuw nsw i64 %i.db, 3
  %i.dd = add nuw nsw i64 %i.dc, 8
  %i.de = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dd) #13 ; 5 uses
  br i1 %i.v, label %bb.l, label %_ZN6google8protobuf8internal20CalculateReserveSizeIPvLi8EEEiii.exit.i._crit_edge

_ZN6google8protobuf8internal20CalculateReserveSizeIPvLi8EEEiii.exit.i._crit_edge: ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeIPvLi8EEEiii.exit.i
  %.pre73 = add nsw i64 %i.t, -1
  %.pre75 = inttoptr i64 %.pre73 to ptr
  br label %bb.m

bb.l:                                             ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeIPvLi8EEEiii.exit.i
  store i32 %.sroa.speculated.i.i, ptr %i.de, align 8, !tbaa !21
  %.not.i29 = icmp ne ptr %i.s, null
  %i.df = zext i1 %.not.i29 to i32
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  store i32 %i.df, ptr %i.dg, align 4, !tbaa !24
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  store ptr %i.s, ptr %i.dh, align 8, !tbaa !25
  br label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase14InternalExtendEiPNS0_5ArenaE.exit

bb.m:                                             ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeIPvLi8EEEiii.exit.i._crit_edge, %_ZN6google8protobuf8internal20CalculateReserveSizeIPvLi8EEEiii.exit.i.thread
  %.pre-phi76 = phi ptr [ %.pre75, %_ZN6google8protobuf8internal20CalculateReserveSizeIPvLi8EEEiii.exit.i._crit_edge ], [ %i.cp, %_ZN6google8protobuf8internal20CalculateReserveSizeIPvLi8EEEiii.exit.i.thread ] ; 3 uses
  %i.di = phi ptr [ %i.de, %_ZN6google8protobuf8internal20CalculateReserveSizeIPvLi8EEEiii.exit.i._crit_edge ], [ %i.cx, %_ZN6google8protobuf8internal20CalculateReserveSizeIPvLi8EEEiii.exit.i.thread ] ; 4 uses
  %.1.i.i39 = phi i32 [ %.sroa.speculated.i.i, %_ZN6google8protobuf8internal20CalculateReserveSizeIPvLi8EEEiii.exit.i._crit_edge ], [ %.1.i.i.ph, %_ZN6google8protobuf8internal20CalculateReserveSizeIPvLi8EEEiii.exit.i.thread ]
  %i.dj = phi i32 [ %i.cy, %_ZN6google8protobuf8internal20CalculateReserveSizeIPvLi8EEEiii.exit.i._crit_edge ], [ %i.cq, %_ZN6google8protobuf8internal20CalculateReserveSizeIPvLi8EEEiii.exit.i.thread ]
  store i32 %.1.i.i39, ptr %i.di, align 8, !tbaa !21
  %i.dk = getelementptr inbounds nuw i8, ptr %.pre-phi76, i64 4
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !24 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.di, i64 4
  store i32 %i.dl, ptr %i.dm, align 4, !tbaa !24
  %i.dn = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.do = getelementptr inbounds nuw i8, ptr %.pre-phi76, i64 8
  %i.dp = sext i32 %i.dl to i64
  %i.dq = shl nsw i64 %i.dp, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.dn, ptr nonnull align 8 %i.do, i64 %i.dq, i1 false)
  %i.dr = sext i32 %i.dj to i64
  %i.ds = shl nsw i64 %i.dr, 3
  %i.dt = add nsw i64 %i.ds, 8
  tail call void @_ZdlPvm(ptr noundef nonnull %.pre-phi76, i64 noundef %i.dt) #15
  %.pre67 = load i32, ptr %i.n, align 8, !tbaa !64
  %.pre68.pre = load i32, ptr %i.p, align 8, !tbaa !64
  br label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase14InternalExtendEiPNS0_5ArenaE.exit

_ZN6google8protobuf8internal20RepeatedPtrFieldBase14InternalExtendEiPNS0_5ArenaE.exit: ; preds = %bb.l, %bb.m
  %.pre68 = phi i32 [ %i.q, %bb.l ], [ %.pre68.pre, %bb.m ]
  %i.du = phi i32 [ %i.o, %bb.l ], [ %.pre67, %bb.m ]
  %i.dv = phi ptr [ %i.de, %bb.l ], [ %i.di, %bb.m ] ; 2 uses
  %i.dw = ptrtoint ptr %i.dv to i64
  %i.dx = add i64 %i.dw, 1                        ; 2 uses
  %i.dy = inttoptr i64 %i.dx to ptr               ; 2 uses
  store ptr %i.dy, ptr %0, align 8, !tbaa !18
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  br label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase15InternalReserveEiPNS0_5ArenaE.exit19

_ZN6google8protobuf8internal20RepeatedPtrFieldBase15InternalReserveEiPNS0_5ArenaE.exit19: ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit.i17, %bb.j, %_ZN6google8protobuf8internal20RepeatedPtrFieldBase14InternalExtendEiPNS0_5ArenaE.exit
  %.sink93 = phi i32 [ %i.du, %_ZN6google8protobuf8internal20RepeatedPtrFieldBase14InternalExtendEiPNS0_5ArenaE.exit ], [ %i.o, %bb.j ], [ %i.o, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit.i17 ] ; 2 uses
  %.sink = phi ptr [ %i.dz, %_ZN6google8protobuf8internal20RepeatedPtrFieldBase14InternalExtendEiPNS0_5ArenaE.exit ], [ %i.cr, %bb.j ], [ %0, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit.i17 ]
  %.pre-phi = phi i64 [ %i.dx, %_ZN6google8protobuf8internal20RepeatedPtrFieldBase14InternalExtendEiPNS0_5ArenaE.exit ], [ %i.t, %bb.j ], [ %i.t, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit.i17 ] ; 2 uses
  %i.ea = phi ptr [ %i.dy, %_ZN6google8protobuf8internal20RepeatedPtrFieldBase14InternalExtendEiPNS0_5ArenaE.exit ], [ %i.s, %bb.j ], [ %i.s, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit.i17 ]
  %i.eb = phi i32 [ %.pre68, %_ZN6google8protobuf8internal20RepeatedPtrFieldBase14InternalExtendEiPNS0_5ArenaE.exit ], [ %i.q, %bb.j ], [ %i.q, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit.i17 ] ; 2 uses
  %i.ec = sext i32 %.sink93 to i64
  %i.ed = getelementptr inbounds [8 x i8], ptr %.sink, i64 %i.ec ; 2 uses
  %i.ee = load ptr, ptr %1, align 8, !tbaa !18
  %i.ef = ptrtoint ptr %i.ee to i64               ; 2 uses
  %i.eg = and i64 %i.ef, 1
  %i.eh = icmp eq i64 %i.eg, 0
  %i.ei = add i64 %i.ef, -1
  %i.ej = inttoptr i64 %i.ei to ptr
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.el = select i1 %i.eh, ptr %1, ptr %i.ek      ; 4 uses
  %i.em = sext i32 %i.eb to i64
  %i.en = getelementptr inbounds [8 x i8], ptr %i.el, i64 %i.em ; 2 uses
  %i.eo = and i64 %.pre-phi, 1
  %i.ep = icmp eq i64 %i.eo, 0
  br i1 %i.ep, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN6google8protobuf8internal20RepeatedPtrFieldBase15InternalReserveEiPNS0_5ArenaE.exit19
  %.not.i.i20 = icmp ne ptr %i.ea, null
  %i.eq = zext i1 %.not.i.i20 to i32
  br label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase12ClearedCountEv.exit21

bb.o:                                             ; preds = %_ZN6google8protobuf8internal20RepeatedPtrFieldBase15InternalReserveEiPNS0_5ArenaE.exit19
  %i.er = add nsw i64 %.pre-phi, -1
  %i.es = inttoptr i64 %i.er to ptr
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 4
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !24
  br label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase12ClearedCountEv.exit21

_ZNK6google8protobuf8internal20RepeatedPtrFieldBase12ClearedCountEv.exit21: ; preds = %bb.n, %bb.o
  %i.ev = phi i32 [ %i.eq, %bb.n ], [ %i.eu, %bb.o ]
  %i.ew = sub nsw i32 %i.ev, %.sink93
  %.sroa.speculated35 = tail call i32 @llvm.smin.i32(i32 %i.eb, i32 %i.ew) ; 2 uses
  %i.ex = sext i32 %.sroa.speculated35 to i64
  %.idx60 = shl nsw i64 %i.ex, 3
  %i.ey = getelementptr inbounds i8, ptr %i.el, i64 %.idx60
  %i.ez = icmp sgt i32 %.sroa.speculated35, 0
  br i1 %i.ez, label %.lr.ph53, label %.preheader

.preheader:                                       ; preds = %.lr.ph53, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase12ClearedCountEv.exit21
  %.028.i5.lcssa = phi ptr [ %i.el, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase12ClearedCountEv.exit21 ], [ %i.fe, %.lr.ph53 ] ; 2 uses
  %.0.i6.lcssa = phi ptr [ %i.ed, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase12ClearedCountEv.exit21 ], [ %i.fd, %.lr.ph53 ]
  %i.fa = icmp ult ptr %.028.i5.lcssa, %i.en
  br i1 %i.fa, label %.lr.ph58, label %._crit_edge59

.lr.ph53:                                         ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase12ClearedCountEv.exit21, %.lr.ph53
  %.0.i652 = phi ptr [ %i.fd, %.lr.ph53 ], [ %i.ed, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase12ClearedCountEv.exit21 ] ; 2 uses
  %.028.i551 = phi ptr [ %i.fe, %.lr.ph53 ], [ %i.el, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase12ClearedCountEv.exit21 ] ; 2 uses
  %i.fb = load ptr, ptr %.0.i652, align 8, !tbaa !74
  %i.fc = load ptr, ptr %.028.i551, align 8, !tbaa !74
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.fb, ptr noundef nonnull align 8 dereferenceable(32) %i.fc)
  %i.fd = getelementptr inbounds nuw i8, ptr %.0.i652, i64 8 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.028.i551, i64 8 ; 3 uses
  %i.ff = icmp ult ptr %i.fe, %i.ey
  br i1 %i.ff, label %.lr.ph53, label %.preheader, !llvm.loop !78

.lr.ph58:                                         ; preds = %.preheader, %"_ZZN6google8protobuf8internal20RepeatedPtrFieldBase17MergeFromInternalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNS2_9MergeFromIS9_EEvRKS2_PNS0_5ArenaEE3$_0EEvSC_SE_OT0_ENKUlSE_RKS9_E0_clB5cxx11ESE_SJ_.exit"
  %.1.i857 = phi ptr [ %i.fu, %"_ZZN6google8protobuf8internal20RepeatedPtrFieldBase17MergeFromInternalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNS2_9MergeFromIS9_EEvRKS2_PNS0_5ArenaEE3$_0EEvSC_SE_OT0_ENKUlSE_RKS9_E0_clB5cxx11ESE_SJ_.exit" ], [ %.0.i6.lcssa, %.preheader ] ; 2 uses
  %.129.i756 = phi ptr [ %i.fv, %"_ZZN6google8protobuf8internal20RepeatedPtrFieldBase17MergeFromInternalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNS2_9MergeFromIS9_EEvRKS2_PNS0_5ArenaEE3$_0EEvSC_SE_OT0_ENKUlSE_RKS9_E0_clB5cxx11ESE_SJ_.exit" ], [ %.028.i5.lcssa, %.preheader ] ; 2 uses
  %i.fg = load ptr, ptr %.129.i756, align 8, !tbaa !74 ; 2 uses
  %.val = load ptr, ptr %i.fg, align 8            ; 2 uses
  %i.fh = getelementptr i8, ptr %i.fg, i64 8
  %.val9 = load i64, ptr %i.fh, align 8           ; 4 uses
  %i.fi = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #13 ; 8 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 16 ; 3 uses
  store ptr %i.fj, ptr %i.fi, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i64 %.val9, ptr %i.a, align 8, !tbaa !17
  %i.fk = icmp ugt i64 %.val9, 15
  br i1 %i.fk, label %.noexc.i.i24, label %._crit_edge.i.i.i23

.noexc.i.i24:                                     ; preds = %.lr.ph58
  %i.fl = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.fi, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i unwind label %bb.r   ; 2 uses

.noexc.i:                                         ; preds = %.noexc.i.i24
  store ptr %i.fl, ptr %i.fi, align 8, !tbaa !13
  %i.fm = load i64, ptr %i.a, align 8, !tbaa !17
  store i64 %i.fm, ptr %i.fj, align 8, !tbaa !7
  br label %._crit_edge.i.i.i23

._crit_edge.i.i.i23:                              ; preds = %.noexc.i, %.lr.ph58
  %i.fn = phi ptr [ %i.fl, %.noexc.i ], [ %i.fj, %.lr.ph58 ] ; 2 uses
  switch i64 %.val9, label %bb.q [
    i64 1, label %bb.p
    i64 0, label %"_ZZN6google8protobuf8internal20RepeatedPtrFieldBase17MergeFromInternalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNS2_9MergeFromIS9_EEvRKS2_PNS0_5ArenaEE3$_0EEvSC_SE_OT0_ENKUlSE_RKS9_E0_clB5cxx11ESE_SJ_.exit"
  ]

bb.p:                                             ; preds = %._crit_edge.i.i.i23
  %i.fo = load i8, ptr %.val, align 1, !tbaa !7
  store i8 %i.fo, ptr %i.fn, align 1, !tbaa !7
  br label %"_ZZN6google8protobuf8internal20RepeatedPtrFieldBase17MergeFromInternalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNS2_9MergeFromIS9_EEvRKS2_PNS0_5ArenaEE3$_0EEvSC_SE_OT0_ENKUlSE_RKS9_E0_clB5cxx11ESE_SJ_.exit"

bb.q:                                             ; preds = %._crit_edge.i.i.i23
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fn, ptr readonly align 1 %.val, i64 %.val9, i1 false)
  br label %"_ZZN6google8protobuf8internal20RepeatedPtrFieldBase17MergeFromInternalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNS2_9MergeFromIS9_EEvRKS2_PNS0_5ArenaEE3$_0EEvSC_SE_OT0_ENKUlSE_RKS9_E0_clB5cxx11ESE_SJ_.exit"

bb.r:                                             ; preds = %.noexc.i.i24
  %i.fp = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.fi, i64 noundef 32) #14
  resume { ptr, i32 } %i.fp

"_ZZN6google8protobuf8internal20RepeatedPtrFieldBase17MergeFromInternalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNS2_9MergeFromIS9_EEvRKS2_PNS0_5ArenaEE3$_0EEvSC_SE_OT0_ENKUlSE_RKS9_E0_clB5cxx11ESE_SJ_.exit": ; preds = %._crit_edge.i.i.i23, %bb.p, %bb.q
  %i.fq = load i64, ptr %i.a, align 8, !tbaa !17  ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  store i64 %i.fq, ptr %i.fr, align 8, !tbaa !16
  %i.fs = load ptr, ptr %i.fi, align 8, !tbaa !13
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.fq
  store i8 0, ptr %i.ft, align 1, !tbaa !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  store ptr %i.fi, ptr %.1.i857, align 8, !tbaa !74
  %i.fu = getelementptr inbounds nuw i8, ptr %.1.i857, i64 8
  %i.fv = getelementptr inbounds nuw i8, ptr %.129.i756, i64 8 ; 2 uses
  %i.fw = icmp ult ptr %i.fv, %i.en
  br i1 %i.fw, label %.lr.ph58, label %._crit_edge59, !llvm.loop !79

._crit_edge59:                                    ; preds = %"_ZZN6google8protobuf8internal20RepeatedPtrFieldBase17MergeFromInternalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNS2_9MergeFromIS9_EEvRKS2_PNS0_5ArenaEE3$_0EEvSC_SE_OT0_ENKUlSE_RKS9_E0_clB5cxx11ESE_SJ_.exit", %.preheader
  store i32 %i.r, ptr %i.n, align 8, !tbaa !3
  %i.fx = load ptr, ptr %0, align 8, !tbaa !18    ; 2 uses
  %i.fy = ptrtoint ptr %i.fx to i64               ; 3 uses
  %i.fz = and i64 %i.fy, 1
  %i.ga = icmp eq i64 %i.fz, 0
  br i1 %i.ga, label %bb.s, label %bb.t

bb.s:                                             ; preds = %._crit_edge59
  %.not.i25 = icmp ne ptr %i.fx, null
  %i.gb = zext i1 %.not.i25 to i32
  br label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit26

bb.t:                                             ; preds = %._crit_edge59
  %i.gc = add nsw i64 %i.fy, -1
  %i.gd = inttoptr i64 %i.gc to ptr
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 4
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !24
  br label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit26

_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit26: ; preds = %bb.s, %bb.t
  %i.gg = phi i32 [ %i.gb, %bb.s ], [ %i.gf, %bb.t ]
  %i.gh = icmp sgt i32 %i.r, %i.gg
  br i1 %i.gh, label %"_ZN6google8protobuf8internal20RepeatedPtrFieldBase17MergeFromInternalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNS2_9MergeFromIS9_EEvRKS2_PNS0_5ArenaEE3$_0EEvSC_SE_OT0_.exit.sink.split", label %"_ZN6google8protobuf8internal20RepeatedPtrFieldBase17MergeFromInternalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNS2_9MergeFromIS9_EEvRKS2_PNS0_5ArenaEE3$_0EEvSC_SE_OT0_.exit"

"_ZN6google8protobuf8internal20RepeatedPtrFieldBase17MergeFromInternalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNS2_9MergeFromIS9_EEvRKS2_PNS0_5ArenaEE3$_0EEvSC_SE_OT0_.exit.sink.split": ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit26, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit
  %.sink97 = phi i64 [ %i.ce, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit ], [ %i.fy, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit26 ]
  %i.gi = add i64 %.sink97, -1
  %i.gj = inttoptr i64 %i.gi to ptr
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 4
  store i32 %i.r, ptr %i.gk, align 4, !tbaa !24
  br label %"_ZN6google8protobuf8internal20RepeatedPtrFieldBase17MergeFromInternalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNS2_9MergeFromIS9_EEvRKS2_PNS0_5ArenaEE3$_0EEvSC_SE_OT0_.exit"

"_ZN6google8protobuf8internal20RepeatedPtrFieldBase17MergeFromInternalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNS2_9MergeFromIS9_EEvRKS2_PNS0_5ArenaEE3$_0EEvSC_SE_OT0_.exit": ; preds = %"_ZN6google8protobuf8internal20RepeatedPtrFieldBase17MergeFromInternalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNS2_9MergeFromIS9_EEvRKS2_PNS0_5ArenaEE3$_0EEvSC_SE_OT0_.exit.sink.split", %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit26, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN6google8protobuf8internal20RepeatedPtrFieldBase24MergeIntoClearedMessagesERKS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #1 align 2 {
_ZN6google8protobuf8internal8PrefetchIL_ZZNS1_23Prefetch5LinesFrom1LineEPKvE5kOptsEvvEEvPKT1_.exit:
  %i.a = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.b = add i64 %i.a, 64
  %i.c = inttoptr i64 %i.b to ptr
  tail call void @llvm.prefetch.p0(ptr %i.c, i32 0, i32 3, i32 1)
  %i.d = add i64 %i.a, 128
  %i.e = inttoptr i64 %i.d to ptr
  tail call void @llvm.prefetch.p0(ptr %i.e, i32 0, i32 3, i32 1)
  %i.f = add i64 %i.a, 192
  %i.g = inttoptr i64 %i.f to ptr
  tail call void @llvm.prefetch.p0(ptr %i.g, i32 0, i32 3, i32 1)
  %i.h = add i64 %i.a, 256
  %i.i = inttoptr i64 %i.h to ptr
  tail call void @llvm.prefetch.p0(ptr %i.i, i32 0, i32 3, i32 1)
  %i.j = add i64 %i.a, 320
  %i.k = inttoptr i64 %i.j to ptr
  tail call void @llvm.prefetch.p0(ptr %i.k, i32 0, i32 3, i32 1)
  %i.l = load ptr, ptr %0, align 8, !tbaa !18     ; 2 uses
  %i.m = ptrtoint ptr %i.l to i64                 ; 2 uses
  %i.n = and i64 %i.m, 1
  %i.o = icmp eq i64 %i.n, 0                      ; 2 uses
  %i.p = add i64 %i.m, -1
  %i.q = inttoptr i64 %i.p to ptr                 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = select i1 %i.o, ptr %0, ptr %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load i32, ptr %i.t, align 8, !tbaa !64   ; 2 uses
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.v
  %i.x = load ptr, ptr %1, align 8, !tbaa !18
  %i.y = ptrtoint ptr %i.x to i64                 ; 2 uses
  %i.z = and i64 %i.y, 1
  %i.aa = icmp eq i64 %i.z, 0
  %i.ab = add i64 %i.y, -1
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = select i1 %i.aa, ptr %1, ptr %i.ad      ; 2 uses
  br i1 %i.o, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_ZN6google8protobuf8internal8PrefetchIL_ZZNS1_23Prefetch5LinesFrom1LineEPKvE5kOptsEvvEEvPKT1_.exit
  %.not.i.i = icmp ne ptr %i.l, null
  %i.af = zext i1 %.not.i.i to i32
  br label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase12ClearedCountEv.exit

bb.b:                                             ; preds = %_ZN6google8protobuf8internal8PrefetchIL_ZZNS1_23Prefetch5LinesFrom1LineEPKvE5kOptsEvvEEvPKT1_.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !24
  br label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase12ClearedCountEv.exit

_ZNK6google8protobuf8internal20RepeatedPtrFieldBase12ClearedCountEv.exit: ; preds = %bb.a, %bb.b
  %i.ai = phi i32 [ %i.af, %bb.a ], [ %i.ah, %bb.b ]
  %i.aj = sub i32 %i.ai, %i.u
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !3
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.al, i32 %i.aj) ; 3 uses
  %i.am = load ptr, ptr %i.ae, align 8, !tbaa !80 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !65
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = tail call noundef ptr %i.ap(ptr noundef nonnull align 8 dereferenceable(16) %i.am), !inline_history !82
  %i.ar = icmp sgt i32 %.sroa.speculated, 0
  br i1 %i.ar, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase12ClearedCountEv.exit
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %wide.trip.count = zext nneg i32 %.sroa.speculated to i64
  br label %bb.c

._crit_edge:                                      ; preds = %bb.c, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase12ClearedCountEv.exit
  ret i32 %.sroa.speculated

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !80
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !80
  %i.ax = load ptr, ptr %i.as, align 8, !tbaa !83
  tail call void %i.ax(ptr noundef nonnull align 8 dereferenceable(16) %i.au, ptr noundef nonnull align 8 dereferenceable(16) %i.aw), !inline_history !89
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf8internal20RepeatedPtrFieldBase24MergeFromConcreteMessageERKS2_PNS0_5ArenaEPFPvS6_PKvE:_ZN6google8protobuf8internal8PrefetchIL_ZZNS1_23Prefetch5LinesFrom1LineEPKvE5kOptsEvvEEvPKT1_.exit
  %i.ay = load i32, ptr %i.l, align 8, !tbaa !64
  %i.az = icmp sgt i32 %i.ax, %i.ay
  br i1 %i.az, label %bb.e, label %bb.f, !prof !8

bb.e:                                             ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase12ClearedCountEv.exit
  %i.ba = tail call noundef i32 @_ZN6google8protobuf8internal20RepeatedPtrFieldBase24MergeIntoClearedMessagesERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.bb = sext i32 %i.ba to i64                   ; 2 uses
  %i.bc = getelementptr inbounds [8 x i8], ptr %.0.i40, i64 %i.bb
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.bb
  %.pre51 = load i32, ptr %i.n, align 8, !tbaa !64
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase12ClearedCountEv.exit
  %i.be = phi i32 [ %.pre51, %bb.e ], [ %i.af, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase12ClearedCountEv.exit ]
  %.035 = phi ptr [ %i.bd, %bb.e ], [ %i.an, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase12ClearedCountEv.exit ] ; 4 uses
  %.0 = phi ptr [ %i.bc, %bb.e ], [ %.0.i40, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase12ClearedCountEv.exit ] ; 3 uses
  %i.bf = icmp sgt i32 %i.be, 0
  br i1 %i.bf, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.bg = getelementptr inbounds i8, ptr %i.ap, i64 -8 ; 2 uses
  %i.bh = icmp ult ptr %.035, %i.bg
  br i1 %i.bh, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.g, %.lr.ph
  %.144 = phi ptr [ %i.bm, %.lr.ph ], [ %.0, %bb.g ] ; 2 uses
  %.13643 = phi ptr [ %i.bi, %.lr.ph ], [ %.035, %bb.g ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.13643, i64 8 ; 4 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !25
  tail call void @llvm.prefetch.p0(ptr %i.bj, i32 0, i32 3, i32 1)
  %i.bk = load ptr, ptr %.13643, align 8, !tbaa !25
  %i.bl = tail call noundef ptr %3(ptr noundef %2, ptr noundef %i.bk)
  store ptr %i.bl, ptr %.144, align 8, !tbaa !25
  %i.bm = getelementptr inbounds nuw i8, ptr %.144, i64 8 ; 2 uses
  %i.bn = icmp ult ptr %i.bi, %i.bg
  br i1 %i.bn, label %.lr.ph, label %.loopexit, !llvm.loop !91

.loopexit:                                        ; preds = %.lr.ph, %bb.g, %bb.f
  %.237 = phi ptr [ %.035, %bb.f ], [ %.035, %bb.g ], [ %i.bi, %.lr.ph ] ; 2 uses
  %.2 = phi ptr [ %.0, %bb.f ], [ %.0, %bb.g ], [ %i.bm, %.lr.ph ]
  %i.bo = icmp ult ptr %.237, %i.ap
  br i1 %i.bo, label %.lr.ph48, label %._crit_edge

.lr.ph48:                                         ; preds = %.loopexit, %.lr.ph48
  %.347 = phi ptr [ %i.bs, %.lr.ph48 ], [ %.2, %.loopexit ] ; 2 uses
  %.33846 = phi ptr [ %i.br, %.lr.ph48 ], [ %.237, %.loopexit ] ; 2 uses
  %i.bp = load ptr, ptr %.33846, align 8, !tbaa !25
  %i.bq = tail call noundef ptr %3(ptr noundef %2, ptr noundef %i.bp)
  store ptr %i.bq, ptr %.347, align 8, !tbaa !25
  %i.br = getelementptr inbounds nuw i8, ptr %.33846, i64 8 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.347, i64 8
  %i.bt = icmp ult ptr %i.br, %i.ap
  br i1 %i.bt, label %.lr.ph48, label %._crit_edge, !llvm.loop !92

._crit_edge:                                      ; preds = %.lr.ph48, %.loopexit
  store i32 %i.p, ptr %i.l, align 8, !tbaa !3
  %i.bu = load ptr, ptr %0, align 8, !tbaa !18    ; 2 uses
  %i.bv = ptrtoint ptr %i.bu to i64               ; 3 uses
  %i.bw = and i64 %i.bv, 1
  %i.bx = icmp eq i64 %i.bw, 0
  br i1 %i.bx, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge
  %.not.i41 = icmp ne ptr %i.bu, null
  %i.by = zext i1 %.not.i41 to i32
  br label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit

bb.i:                                             ; preds = %._crit_edge
  %i.bz = add nsw i64 %i.bv, -1
  %i.ca = inttoptr i64 %i.bz to ptr
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !24
  br label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit

_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit: ; preds = %bb.h, %bb.i
  %i.cd = phi i32 [ %i.by, %bb.h ], [ %i.cc, %bb.i ]
  %i.ce = icmp sgt i32 %i.p, %i.cd
  br i1 %i.ce, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit
  %i.cf = add i64 %i.bv, -1
  %i.cg = inttoptr i64 %i.cf to ptr
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  store i32 %i.p, ptr %i.ch, align 4, !tbaa !24
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase9MergeFromINS0_11MessageLiteEEEvRKS2_PNS0_5ArenaE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
_ZN6google8protobuf8internal8PrefetchIL_ZZNS1_23Prefetch5LinesFrom1LineEPKvE5kOptsEvvEEvPKT1_.exit:
  %i.a = load ptr, ptr %1, align 8, !tbaa !18
  %i.b = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.c = and i64 %i.b, 1
  %i.d = icmp eq i64 %i.c, 0
  %i.e = add i64 %i.b, -1
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.0.i.i = select i1 %i.d, ptr %1, ptr %i.g
  %i.h = load ptr, ptr %.0.i.i, align 8, !tbaa !25 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !65
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef ptr %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.h), !inline_history !82 ; 4 uses
  %i.m = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.n = add i64 %i.m, 64
  %i.o = inttoptr i64 %i.n to ptr
  tail call void @llvm.prefetch.p0(ptr %i.o, i32 0, i32 3, i32 1)
  %i.p = add i64 %i.m, 128
  %i.q = inttoptr i64 %i.p to ptr
  tail call void @llvm.prefetch.p0(ptr %i.q, i32 0, i32 3, i32 1)
  %i.r = add i64 %i.m, 192
  %i.s = inttoptr i64 %i.r to ptr
  tail call void @llvm.prefetch.p0(ptr %i.s, i32 0, i32 3, i32 1)
  %i.t = add i64 %i.m, 256
  %i.u = inttoptr i64 %i.t to ptr
  tail call void @llvm.prefetch.p0(ptr %i.u, i32 0, i32 3, i32 1)
  %i.v = add i64 %i.m, 320
  %i.w = inttoptr i64 %i.v to ptr
  tail call void @llvm.prefetch.p0(ptr %i.w, i32 0, i32 3, i32 1)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !64   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !64  ; 2 uses
  %i.ab = add nsw i32 %i.aa, %i.y                 ; 6 uses
  %i.ac = load ptr, ptr %0, align 8, !tbaa !18    ; 2 uses
  %i.ad = ptrtoint ptr %i.ac to i64               ; 3 uses
  %i.ae = and i64 %i.ad, 1
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit.i, label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit.thread.i

_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit.i: ; preds = %_ZN6google8protobuf8internal8PrefetchIL_ZZNS1_23Prefetch5LinesFrom1LineEPKvE5kOptsEvvEEvPKT1_.exit
  %.not.i = icmp sgt i32 %i.ab, 1
  br i1 %.not.i, label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit6.i, label %bb.b

_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit.thread.i: ; preds = %_ZN6google8protobuf8internal8PrefetchIL_ZZNS1_23Prefetch5LinesFrom1LineEPKvE5kOptsEvvEEvPKT1_.exit
  %i.ag = add nsw i64 %i.ad, -1
  %i.ah = inttoptr i64 %i.ag to ptr               ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !21 ; 2 uses
  %.not7.i = icmp sgt i32 %i.ab, %i.ai
  br i1 %.not7.i, label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit6.i, label %bb.a

bb.a:                                             ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit.thread.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit.i
  %i.ak = phi ptr [ %i.aj, %bb.a ], [ %0, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit.i ]
  %i.al = sext i32 %i.y to i64
  %i.am = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.al
  br label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase15InternalReserveEiPNS0_5ArenaE.exit

_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit6.i: ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit.thread.i, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit.i
  %i.an = phi i32 [ 1, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit.i ], [ %i.ai, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit.thread.i ]
  %i.ao = sub nsw i32 %i.ab, %i.an
  %i.ap = tail call noundef ptr @_ZN6google8protobuf8internal20RepeatedPtrFieldBase14InternalExtendEiPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %i.ao, ptr noundef %2)
  %.pre = load i32, ptr %i.z, align 8, !tbaa !64
  %.pre21 = load ptr, ptr %0, align 8, !tbaa !18  ; 2 uses
  %.pre22 = ptrtoint ptr %.pre21 to i64
  br label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase15InternalReserveEiPNS0_5ArenaE.exit

_ZN6google8protobuf8internal20RepeatedPtrFieldBase15InternalReserveEiPNS0_5ArenaE.exit: ; preds = %bb.b, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit6.i
  %.pre-phi = phi i64 [ %i.ad, %bb.b ], [ %.pre22, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit6.i ] ; 2 uses
  %i.aq = phi ptr [ %i.ac, %bb.b ], [ %.pre21, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit6.i ]
  %i.ar = phi i32 [ %i.aa, %bb.b ], [ %.pre, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit6.i ] ; 2 uses
  %.0.i8 = phi ptr [ %i.am, %bb.b ], [ %i.ap, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit6.i ] ; 2 uses
  %i.as = load ptr, ptr %1, align 8, !tbaa !18
  %i.at = ptrtoint ptr %i.as to i64               ; 2 uses
  %i.au = and i64 %i.at, 1
  %i.av = icmp eq i64 %i.au, 0
  %i.aw = add i64 %i.at, -1
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = select i1 %i.av, ptr %1, ptr %i.ay      ; 4 uses
  %i.ba = sext i32 %i.ar to i64
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.ba ; 2 uses
  %i.bc = and i64 %.pre-phi, 1
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN6google8protobuf8internal20RepeatedPtrFieldBase15InternalReserveEiPNS0_5ArenaE.exit
  %.not.i.i = icmp ne ptr %i.aq, null
  %i.be = zext i1 %.not.i.i to i32
  br label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase12ClearedCountEv.exit

bb.d:                                             ; preds = %_ZN6google8protobuf8internal20RepeatedPtrFieldBase15InternalReserveEiPNS0_5ArenaE.exit
  %i.bf = add nsw i64 %.pre-phi, -1
  %i.bg = inttoptr i64 %i.bf to ptr
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !24
  br label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase12ClearedCountEv.exit

_ZNK6google8protobuf8internal20RepeatedPtrFieldBase12ClearedCountEv.exit: ; preds = %bb.c, %bb.d
  %i.bj = phi i32 [ %i.be, %bb.c ], [ %i.bi, %bb.d ]
  %i.bk = load i32, ptr %i.x, align 8, !tbaa !64
  %i.bl = sub nsw i32 %i.bj, %i.bk
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.ar, i32 %i.bl) ; 2 uses
  %i.bm = sext i32 %.sroa.speculated to i64
  %.idx = shl nsw i64 %i.bm, 3
  %i.bn = getelementptr inbounds i8, ptr %i.az, i64 %.idx
  %i.bo = icmp sgt i32 %.sroa.speculated, 0
  br i1 %i.bo, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase12ClearedCountEv.exit
  %i.bp = getelementptr i8, ptr %i.l, i64 24
  br label %bb.e

.preheader:                                       ; preds = %bb.e, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase12ClearedCountEv.exit
  %.028.i.lcssa = phi ptr [ %i.az, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase12ClearedCountEv.exit ], [ %i.bw, %bb.e ] ; 2 uses
  %.0.i.lcssa = phi ptr [ %.0.i8, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase12ClearedCountEv.exit ], [ %i.bv, %bb.e ]
  %i.bq = icmp ult ptr %.028.i.lcssa, %i.bb
  br i1 %i.bq, label %.lr.ph19, label %._crit_edge

.lr.ph19:                                         ; preds = %.preheader
  %i.br = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.bs = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %.0.i15 = phi ptr [ %.0.i8, %.lr.ph ], [ %i.bv, %bb.e ] ; 2 uses
  %.028.i14 = phi ptr [ %i.az, %.lr.ph ], [ %i.bw, %bb.e ] ; 2 uses
  %i.bt = load ptr, ptr %.0.i15, align 8, !tbaa !80
  %i.bu = load ptr, ptr %.028.i14, align 8, !tbaa !80
  %.val.val = load ptr, ptr %i.bp, align 8, !tbaa !83
  tail call void %.val.val(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, ptr noundef nonnull align 8 dereferenceable(16) %i.bu), !inline_history !93
  %i.bv = getelementptr inbounds nuw i8, ptr %.0.i15, i64 8 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.028.i14, i64 8 ; 3 uses
  %i.bx = icmp ult ptr %i.bw, %i.bn
  br i1 %i.bx, label %bb.e, label %.preheader, !llvm.loop !94

bb.f:                                             ; preds = %.lr.ph19, %bb.f
  %.1.i18 = phi ptr [ %.0.i.lcssa, %.lr.ph19 ], [ %i.cc, %bb.f ] ; 2 uses
  %.129.i17 = phi ptr [ %.028.i.lcssa, %.lr.ph19 ], [ %i.cd, %bb.f ] ; 2 uses
  %i.by = load ptr, ptr %.129.i17, align 8, !tbaa !80
  %i.bz = load ptr, ptr %i.l, align 8, !tbaa !95  ; 2 uses
  %i.ca = tail call noundef ptr @_ZNK6google8protobuf8internal14MessageCreator3NewINS0_11MessageLiteEEEPT_PKS5_S8_PNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16) %i.br, ptr noundef %i.bz, ptr noundef %i.bz, ptr noundef %2) ; 2 uses
  %i.cb = load ptr, ptr %i.bs, align 8, !tbaa !83
  tail call void %i.cb(ptr noundef nonnull align 8 dereferenceable(16) %i.ca, ptr noundef nonnull align 8 dereferenceable(16) %i.by), !inline_history !96
  store ptr %i.ca, ptr %.1.i18, align 8, !tbaa !80
  %i.cc = getelementptr inbounds nuw i8, ptr %.1.i18, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %.129.i17, i64 8 ; 2 uses
  %i.ce = icmp ult ptr %i.cd, %i.bb
  br i1 %i.ce, label %bb.f, label %._crit_edge, !llvm.loop !97

._crit_edge:                                      ; preds = %bb.f, %.preheader
  store i32 %i.ab, ptr %i.x, align 8, !tbaa !3
  %i.cf = load ptr, ptr %0, align 8, !tbaa !18    ; 2 uses
  %i.cg = ptrtoint ptr %i.cf to i64               ; 3 uses
  %i.ch = and i64 %i.cg, 1
  %i.ci = icmp eq i64 %i.ch, 0
  br i1 %i.ci, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge
  %.not.i9 = icmp ne ptr %i.cf, null
  %i.cj = zext i1 %.not.i9 to i32
  br label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit

bb.h:                                             ; preds = %._crit_edge
  %i.ck = add nsw i64 %i.cg, -1
  %i.cl = inttoptr i64 %i.ck to ptr
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !24
  br label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit

_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit: ; preds = %bb.g, %bb.h
  %i.co = phi i32 [ %i.cj, %bb.g ], [ %i.cn, %bb.h ]
  %i.cp = icmp sgt i32 %i.ab, %i.co
  br i1 %i.cp, label %bb.i, label %"_ZN6google8protobuf8internal20RepeatedPtrFieldBase17MergeFromInternalINS0_11MessageLiteEZNS2_9MergeFromIS4_EEvRKS2_PNS0_5ArenaEE3$_0ZNS5_IS4_EEvS7_S9_E3$_1EEvS7_S9_OT0_OT1_.exit"

bb.i:                                             ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit
  %i.cq = add i64 %i.cg, -1
  %i.cr = inttoptr i64 %i.cq to ptr
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 4
  store i32 %i.ab, ptr %i.cs, align 4, !tbaa !24
  br label %"_ZN6google8protobuf8internal20RepeatedPtrFieldBase17MergeFromInternalINS0_11MessageLiteEZNS2_9MergeFromIS4_EEvRKS2_PNS0_5ArenaEE3$_0ZNS5_IS4_EEvS7_S9_E3$_1EEvS7_S9_OT0_OT1_.exit"

"_ZN6google8protobuf8internal20RepeatedPtrFieldBase17MergeFromInternalINS0_11MessageLiteEZNS2_9MergeFromIS4_EEvRKS2_PNS0_5ArenaEE3$_0ZNS5_IS4_EEvS7_S9_E3$_1EEvS7_S9_OT0_OT1_.exit": ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit, %bb.i
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #10

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #1 align 2

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

declare noundef ptr @_ZN6google8protobuf8internal15ThreadSafeArena23AllocateFromStringBlockEv(ptr noundef nonnull align 8 dereferenceable(168)) local_unnamed_addr #3

declare noundef ptr @_ZN6google8protobuf5Arena16AllocateForArrayEm(ptr noundef nonnull align 8 dereferenceable(168), i64 noundef) local_unnamed_addr #3

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNK6google8protobuf8internal14MessageCreator3NewINS0_11MessageLiteEEEPT_PKS5_S8_PNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %3, null
  %i.a = load i32, ptr %0, align 8, !tbaa !98     ; 6 uses
  %i.b = zext i32 %i.a to i64                     ; 13 uses
  br i1 %.not, label %.split8, label %.split

.split:                                           ; preds = %bb.a
  %i.c = add nuw nsw i64 %i.b, 7
  %i.d = and i64 %i.c, 8589934584
  %i.e = tail call noundef ptr @_ZN6google8protobuf5Arena8AllocateEm(ptr noundef nonnull align 8 dereferenceable(168) %3, i64 noundef %i.d) ; 14 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = load i8, ptr %i.f, align 4, !tbaa !99    ; 2 uses
  %i.h = icmp slt i8 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.c, !prof !8

bb.b:                                             ; preds = %.split
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !7
  %i.k = tail call noundef ptr %i.j(ptr noundef %1, ptr noundef %i.e, ptr noundef nonnull %3), !inline_history !100
  br label %_ZNK6google8protobuf8internal14MessageCreator12PlacementNewINS0_11MessageLiteEEEPT_PKS5_S8_PvPNS0_5ArenaE.exit

bb.c:                                             ; preds = %.split
  %i.l = load i32, ptr %0, align 8, !tbaa !98     ; 6 uses
  %i.m = zext i32 %i.l to i64                     ; 11 uses
  %i.n = icmp eq i8 %i.g, 0
  %i.o = icmp ult i32 %i.l, 33                    ; 2 uses
  br i1 %i.n, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.m
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.r = icmp ult i32 %i.l, 65
  br i1 %i.r, label %bb.g, label %.preheader.i

.preheader.i:                                     ; preds = %bb.f
  %i.s = icmp ugt i32 %i.l, 80
  br i1 %i.s, label %.lr.ph64.i, label %._crit_edge65.i

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.m
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.v, i8 0, i64 32, i1 false)
  br label %bb.l

._crit_edge65.i:                                  ; preds = %.lr.ph64.i, %.preheader.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.m
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.x, i8 0, i64 64, i1 false)
  br label %bb.l

.lr.ph64.i:                                       ; preds = %.preheader.i, %.lr.ph64.i
  %i.y = phi i64 [ %i.ab, %.lr.ph64.i ], [ 80, %.preheader.i ] ; 2 uses
  %.05563.i = phi i64 [ %i.y, %.lr.ph64.i ], [ 16, %.preheader.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 %.05563.i ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  tail call void asm sideeffect "prefetchw $0", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i8) %i.aa) #15, !srcloc !101
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.z, i8 0, i64 64, i1 false)
  %i.ab = add nuw nsw i64 %i.y, 64                ; 2 uses
  %i.ac = icmp samesign ult i64 %i.ab, %i.m
  br i1 %i.ac, label %.lr.ph64.i, label %._crit_edge65.i, !llvm.loop !102

bb.h:                                             ; preds = %bb.c
  br i1 %i.o, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.m
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -16
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 %i.m
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ae, ptr noundef nonnull align 1 dereferenceable(16) %i.ag, i64 16, i1 false)
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.ah = icmp ult i32 %i.l, 65
  br i1 %i.ah, label %bb.k, label %.preheader61.i
end_hunk_1
