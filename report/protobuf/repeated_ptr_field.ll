inline.NumInlined: 181
inline.NumDeleted: 100
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN6google8protobuf8internal20RepeatedPtrFieldBase14InternalExtendEiPNS0_5ArenaE:bb.a
  %i.bh = zext i8 %.pre.i.i.i to i64              ; 2 uses
  %.not4.i.i.i.i.i.i = icmp samesign eq i64 %i.bb, %i.bh
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i, %bb.l, %bb.k
  %i.bi = phi i64 [ %i.bh, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i ], [ 1, %bb.l ], [ 0, %bb.k ]
  %.idx24.i.i.i = shl nuw nsw i64 %i.bi, 3        ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.idx24.i.i.i
  %gepdiff.i.i.i = sub nsw i64 %i.ao, %.idx24.i.i.i
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bj, i8 0, i64 %gepdiff.i.i.i, i1 false), !tbaa !60
  br label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i

_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i
  store ptr %i.ae, ptr %i.bc, align 8, !tbaa !59
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.bb, i64 64)
  %i.bk = trunc nuw nsw i64 %.sroa.speculated.i.i.i to i8
  store i8 %i.bk, ptr %i.av, align 8, !tbaa !58
  br label %_ZN6google8protobuf5Arena17ReturnArrayMemoryEPvm.exit

bb.m:                                             ; preds = %bb.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !59
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.ay ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !60
  store ptr %i.bo, ptr %i.ae, align 8, !tbaa !62
  store ptr %i.ae, ptr %i.bn, align 8, !tbaa !60
  br label %_ZN6google8protobuf5Arena17ReturnArrayMemoryEPvm.exit

_ZN6google8protobuf5Arena17ReturnArrayMemoryEPvm.exit: ; preds = %bb.m, %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i, %bb.h, %bb.g, %bb.e
  %i.bp = ptrtoint ptr %.0 to i64
  %i.bq = add i64 %i.bp, 1
  %i.br = inttoptr i64 %i.bq to ptr
  store ptr %i.br, ptr %0, align 8, !tbaa !18
  %i.bs = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !64
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.bs, i64 %i.bv
  ret ptr %i.bw
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase16ReserveWithArenaEPNS0_5ArenaEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !18
  %i.b = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.c = and i64 %i.b, 1
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = add nsw i64 %i.b, -1
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load i32, ptr %i.f, align 8, !tbaa !21
  br label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit

_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit: ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.g, %bb.b ], [ 1, %bb.a ]
  %i.i = sub nsw i32 %2, %i.h                     ; 2 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit
  %i.k = tail call noundef ptr @_ZN6google8protobuf8internal20RepeatedPtrFieldBase14InternalExtendEiPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %i.i, ptr noundef %1) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase13DestroyProtosEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !18     ; 2 uses
  %i.b = ptrtoint ptr %i.a to i64                 ; 4 uses
  %i.c = and i64 %i.b, 1                          ; 2 uses
  %i.d = icmp eq i64 %i.c, 0                      ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp ne ptr %i.a, null
  %i.e = zext i1 %.not.i to i32
  %.pre3 = add i64 %i.b, -1
  %.pre4 = inttoptr i64 %.pre3 to ptr
  br label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit

bb.c:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.b, -1
  %i.g = inttoptr i64 %i.f to ptr                 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !24
  br label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit

_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit: ; preds = %bb.b, %bb.c
  %.pre-phi5 = phi ptr [ %.pre4, %bb.b ], [ %i.g, %bb.c ]
  %i.j = phi i32 [ %i.e, %bb.b ], [ %i.i, %bb.c ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.pre-phi5, i64 8
  %i.l = select i1 %i.d, ptr %0, ptr %i.k         ; 2 uses
  %i.m = icmp sgt i32 %i.j, 0
  br i1 %i.m, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit
  %i.n = zext nneg i32 %i.j to i64
  %wide.trip.count = zext nneg i32 %i.j to i64
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZN6google8protobuf8internal20RepeatedPtrFieldBase6DeleteINS1_18GenericTypeHandlerINS0_11MessageLiteEEEEEvPvPNS0_5ArenaE.exit
  %.pre = load ptr, ptr %0, align 8, !tbaa !18
  %.pre6 = ptrtoint ptr %.pre to i64              ; 2 uses
  %.pre8 = and i64 %.pre6, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit
  %.pre-phi9 = phi i64 [ %.pre8, %._crit_edge.loopexit ], [ %i.c, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit ]
  %.pre-phi7 = phi i64 [ %.pre6, %._crit_edge.loopexit ], [ %i.b, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit ]
  %i.o = icmp eq i64 %.pre-phi9, 0
  br i1 %i.o, label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase7DestroyINS1_18GenericTypeHandlerINS0_11MessageLiteEEEEEvv.exit, label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN6google8protobuf8internal20RepeatedPtrFieldBase6DeleteINS1_18GenericTypeHandlerINS0_11MessageLiteEEEEEvPvPNS0_5ArenaE.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZN6google8protobuf8internal20RepeatedPtrFieldBase6DeleteINS1_18GenericTypeHandlerINS0_11MessageLiteEEEEEvPvPNS0_5ArenaE.exit ] ; 3 uses
  %i.p = add nuw nsw i64 %indvars.iv, 5           ; 2 uses
  %i.q = icmp samesign ult i64 %i.p, %i.n
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.p
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !25
  tail call void @llvm.prefetch.p0(ptr %i.s, i32 0, i32 0, i32 1)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !25   ; 3 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase6DeleteINS1_18GenericTypeHandlerINS0_11MessageLiteEEEEEvPvPNS0_5ArenaE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !65
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.u) #15, !inline_history !67
  br label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase6DeleteINS1_18GenericTypeHandlerINS0_11MessageLiteEEEEEvPvPNS0_5ArenaE.exit

_ZN6google8protobuf8internal20RepeatedPtrFieldBase6DeleteINS1_18GenericTypeHandlerINS0_11MessageLiteEEEEEvPvPNS0_5ArenaE.exit: ; preds = %bb.e, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !68

_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit: ; preds = %._crit_edge
  %i.z = add nsw i64 %.pre-phi7, -1
  %i.aa = inttoptr i64 %i.z to ptr                ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !21
  %i.ac = sext i32 %i.ab to i64
  %i.ad = shl nsw i64 %i.ac, 3
  %i.ae = add nsw i64 %i.ad, 8
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.ae) #15
  br label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase7DestroyINS1_18GenericTypeHandlerINS0_11MessageLiteEEEEEvv.exit

_ZN6google8protobuf8internal20RepeatedPtrFieldBase7DestroyINS1_18GenericTypeHandlerINS0_11MessageLiteEEEEEvv.exit: ; preds = %._crit_edge, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit
  store ptr null, ptr %0, align 8, !tbaa !18
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase8CloseGapEii(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !18
  %i.b = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.c = and i64 %i.b, 1
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i32 %1, 0
  %i.f = icmp eq i32 %2, 1
  %or.cond = and i1 %i.e, %i.f
  br i1 %or.cond, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
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
  %3 = shl nsw i64 %i.o, 3
  %diff.check = icmp ugt i64 %3, -32
  %or.cond23 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond23, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.q, -4                       ; 3 uses
  %i.r = add nsw i64 %n.vec, %i.n
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.s = add i64 %index, %i.n                     ; 2 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.s ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %wide.load = load <2 x ptr>, ptr %i.t, align 8, !tbaa !25
  %wide.load22 = load <2 x ptr>, ptr %i.u, align 8, !tbaa !25
  %i.v = sub nsw i64 %i.s, %i.o
  %i.w = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <2 x ptr> %wide.load, ptr %i.w, align 8, !tbaa !25
  store <2 x ptr> %wide.load22, ptr %i.x, align 8, !tbaa !25
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !70

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.q, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %i.n, %.lr.ph ], [ %i.r, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.d
  %i.z = sub nsw i32 %i.k, %2
  store i32 %i.z, ptr %i.j, align 4, !tbaa !24
  br label %bb.e

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.m, i64 %indvars.iv
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !25
  %i.ac = sub nsw i64 %indvars.iv, %i.o
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.ac
  store ptr %i.ab, ptr %i.ad, align 8, !tbaa !25
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.ae = icmp slt i64 %indvars.iv.next, %i.p
  br i1 %i.ae, label %scalar.ph, label %._crit_edge, !llvm.loop !73

bb.e:                                             ; preds = %bb.b, %bb.c, %._crit_edge
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !64
  %i.ah = sub nsw i32 %i.ag, %2
  store i32 %i.ah, ptr %i.af, align 8, !tbaa !3
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
end_hunk_0
