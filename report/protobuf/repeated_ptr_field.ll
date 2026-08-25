Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/protobuf/original/repeated_ptr_field?download=true
inline.NumInlined: 181
inline.NumDeleted: 100
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN6google8protobuf8internal20RepeatedPtrFieldBase14InternalExtendEiPNS0_5ArenaE:bb.a

_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i: ; preds = %bb.j
  %.idx.i.i.i = shl nuw nsw i64 %i.bb, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.af, ptr align 8 %i.be, i64 %.idx.i.i.i, i1 false)
  %.pre.i.i.i = load i8, ptr %i.aw, align 8, !tbaa !58
  %i.bi = zext i8 %.pre.i.i.i to i64              ; 2 uses
  %.not4.i.i.i.i.i.i = icmp samesign eq i64 %i.bc, %i.bi
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i, %bb.l, %bb.k
  %i.bj = phi i64 [ %i.bi, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i ], [ 1, %bb.l ], [ 0, %bb.k ]
  %.idx24.i.i.i = shl nuw nsw i64 %i.bj, 3        ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.af, i64 %.idx24.i.i.i
  %gepdiff.i.i.i = sub nsw i64 %i.ap, %.idx24.i.i.i
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bk, i8 0, i64 %gepdiff.i.i.i, i1 false), !tbaa !60
  br label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i

_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i
  store ptr %i.af, ptr %i.bd, align 8, !tbaa !59
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.bc, i64 64)
  %i.bl = trunc nuw nsw i64 %.sroa.speculated.i.i.i to i8
  store i8 %i.bl, ptr %i.aw, align 8, !tbaa !58
  br label %_ZN6google8protobuf5Arena17ReturnArrayMemoryEPvm.exit

bb.m:                                             ; preds = %bb.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !59
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.az ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !60
  store ptr %i.bp, ptr %i.af, align 8, !tbaa !62
  store ptr %i.af, ptr %i.bo, align 8, !tbaa !60
  br label %_ZN6google8protobuf5Arena17ReturnArrayMemoryEPvm.exit

_ZN6google8protobuf5Arena17ReturnArrayMemoryEPvm.exit: ; preds = %bb.m, %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i, %bb.h, %bb.g, %bb.e
  %i.bq = ptrtoint ptr %.029 to i64
  %i.br = add i64 %i.bq, 1
  %i.bs = inttoptr i64 %i.br to ptr
  store ptr %i.bs, ptr %0, align 8, !tbaa !18
  %i.bt = getelementptr inbounds nuw i8, ptr %.029, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !64
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.bt, i64 %i.bw
  ret ptr %i.bx
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
  %i.r = shl nsw i64 %i.o, 3
  %diff.check = icmp ugt i64 %i.r, -32
  %or.cond23 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond23, label %scalar.ph.preheader.a, label %vector.ph

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
  br i1 %i.z, label %middle.block.a, label %vector.body, !llvm.loop !70

middle.block.a:                                   ; preds = %vector.body
  %cmp.n.a = icmp eq i64 %i.q, %n.vec
  br i1 %cmp.n.a, label %._crit_edge, label %scalar.ph.preheader.a

scalar.ph.preheader.a:                            ; preds = %.lr.ph, %middle.block.a
  %indvars.iv.ph.a = phi i64 [ %i.n, %.lr.ph ], [ %i.s, %middle.block.a ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block.a, %bb.d
  %i.aa = sub nsw i32 %i.k, %2
  store i32 %i.aa, ptr %i.j, align 4, !tbaa !24
  br label %bb.e

scalar.ph:                                        ; preds = %scalar.ph.preheader.a, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.a, %scalar.ph ], [ %indvars.iv.ph.a, %scalar.ph.preheader.a ] ; 3 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.m, i64 %indvars.iv
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !25
  %i.ad = sub nsw i64 %indvars.iv, %i.o
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.ad
  store ptr %i.ac, ptr %i.ae, align 8, !tbaa !25
  %indvars.iv.next.a = add nsw i64 %indvars.iv, 1 ; 2 uses
  %3 = icmp slt i64 %indvars.iv.next.a, %i.p
  br i1 %3, label %scalar.ph, label %._crit_edge, !llvm.loop !73

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
  %i.o = load i32, ptr %i.n, align 8, !tbaa !64   ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !64   ; 3 uses
  %i.r = add nsw i32 %i.q, %i.o                   ; 12 uses
  %i.s = load ptr, ptr %0, align 8, !tbaa !18     ; 3 uses
  %i.t = ptrtoint ptr %i.s to i64                 ; 5 uses
  %i.u = and i64 %i.t, 1
  %i.v = icmp eq i64 %i.u, 0                      ; 2 uses
  br i1 %.not.i, label %.preheader36, label %.preheader38

.preheader38:                                     ; preds = %bb.a
  br i1 %i.v, label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit.i, label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit.thread.i

.preheader36:                                     ; preds = %bb.a
  br i1 %i.v, label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit.i16, label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit.thread.i12

_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit.i: ; preds = %.preheader38
  %.not.i10 = icmp sgt i32 %i.r, 1
  br i1 %.not.i10, label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit6.i, label %bb.c

_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit.thread.i: ; preds = %.preheader38
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
  %.pre62 = load ptr, ptr %0, align 8, !tbaa !18  ; 2 uses
  %.pre65 = ptrtoint ptr %.pre62 to i64
  br label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase15InternalReserveEiPNS0_5ArenaE.exit

_ZN6google8protobuf8internal20RepeatedPtrFieldBase15InternalReserveEiPNS0_5ArenaE.exit: ; preds = %bb.c, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit6.i
  %.pre-phi66 = phi i64 [ %i.t, %bb.c ], [ %.pre65, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit6.i ] ; 2 uses
  %i.ag = phi ptr [ %i.s, %bb.c ], [ %.pre62, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit6.i ]
  %i.ah = phi i32 [ %i.q, %bb.c ], [ %.pre, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit6.i ] ; 2 uses
  %.0.i9 = phi ptr [ %i.ac, %bb.c ], [ %i.af, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit6.i ] ; 2 uses
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
  %i.as = and i64 %.pre-phi66, 1
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN6google8protobuf8internal20RepeatedPtrFieldBase15InternalReserveEiPNS0_5ArenaE.exit
  %.not.i.i = icmp ne ptr %i.ag, null
  %i.au = zext i1 %.not.i.i to i32
  br label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase12ClearedCountEv.exit

bb.e:                                             ; preds = %_ZN6google8protobuf8internal20RepeatedPtrFieldBase15InternalReserveEiPNS0_5ArenaE.exit
  %i.av = add nsw i64 %.pre-phi66, -1
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
  %.idx = shl nuw nsw i64 %i.bc, 3
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.idx
  %i.be = icmp sgt i32 %.sroa.speculated, 0
  br i1 %i.be, label %.lr.ph, label %.preheader37

.preheader37:                                     ; preds = %.lr.ph, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase12ClearedCountEv.exit
  %.028.i.lcssa = phi ptr [ %.0.i9, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase12ClearedCountEv.exit ], [ %i.bi, %.lr.ph ]
  %.0.i.lcssa = phi ptr [ %i.ap, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase12ClearedCountEv.exit ], [ %i.bj, %.lr.ph ] ; 2 uses
  %i.bf = icmp ult ptr %.0.i.lcssa, %i.ar
  br i1 %i.bf, label %.lr.ph45, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase12ClearedCountEv.exit, %.lr.ph
  %.0.i41 = phi ptr [ %i.bj, %.lr.ph ], [ %i.ap, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase12ClearedCountEv.exit ] ; 2 uses
  %.028.i40 = phi ptr [ %i.bi, %.lr.ph ], [ %.0.i9, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase12ClearedCountEv.exit ] ; 2 uses
  %i.bg = load ptr, ptr %.028.i40, align 8, !tbaa !74
  %i.bh = load ptr, ptr %.0.i41, align 8, !tbaa !74
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bg, ptr noundef nonnull align 8 dereferenceable(32) %i.bh)
  %i.bi = getelementptr inbounds nuw i8, ptr %.028.i40, i64 8 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.i41, i64 8 ; 3 uses
  %i.bk = icmp ult ptr %i.bj, %i.bd
  br i1 %i.bk, label %.lr.ph, label %.preheader37, !llvm.loop !76

.lr.ph45:                                         ; preds = %.preheader37, %"_ZZN6google8protobuf8internal20RepeatedPtrFieldBase17MergeFromInternalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNS2_9MergeFromIS9_EEvRKS2_PNS0_5ArenaEE3$_0EEvSC_SE_OT0_ENKUlSE_RKS9_E_clB5cxx11ESE_SJ_.exit"
  %.1.i44 = phi ptr [ %i.cb, %"_ZZN6google8protobuf8internal20RepeatedPtrFieldBase17MergeFromInternalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNS2_9MergeFromIS9_EEvRKS2_PNS0_5ArenaEE3$_0EEvSC_SE_OT0_ENKUlSE_RKS9_E_clB5cxx11ESE_SJ_.exit" ], [ %.0.i.lcssa, %.preheader37 ] ; 2 uses
  %.129.i43 = phi ptr [ %i.ca, %"_ZZN6google8protobuf8internal20RepeatedPtrFieldBase17MergeFromInternalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNS2_9MergeFromIS9_EEvRKS2_PNS0_5ArenaEE3$_0EEvSC_SE_OT0_ENKUlSE_RKS9_E_clB5cxx11ESE_SJ_.exit" ], [ %.028.i.lcssa, %.preheader37 ] ; 2 uses
  %i.bl = load ptr, ptr %.1.i44, align 8, !tbaa !74 ; 2 uses
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

.noexc.i.i:                                       ; preds = %.lr.ph45
  %i.bs = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.bm, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.bs, ptr %i.bm, align 8, !tbaa !13
  %i.bt = load i64, ptr %i.b, align 8, !tbaa !17
  store i64 %i.bt, ptr %i.bn, align 8, !tbaa !7
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %.lr.ph45
  %i.bu = phi ptr [ %i.bs, %.noexc.i.i ], [ %i.bn, %.lr.ph45 ] ; 2 uses
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
  store ptr %i.bm, ptr %.129.i43, align 8, !tbaa !74
  %i.ca = getelementptr inbounds nuw i8, ptr %.129.i43, i64 8
  %i.cb = getelementptr inbounds nuw i8, ptr %.1.i44, i64 8 ; 2 uses
  %i.cc = icmp ult ptr %i.cb, %i.ar
  br i1 %i.cc, label %.lr.ph45, label %._crit_edge, !llvm.loop !77

._crit_edge:                                      ; preds = %"_ZZN6google8protobuf8internal20RepeatedPtrFieldBase17MergeFromInternalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNS2_9MergeFromIS9_EEvRKS2_PNS0_5ArenaEE3$_0EEvSC_SE_OT0_ENKUlSE_RKS9_E_clB5cxx11ESE_SJ_.exit", %.preheader37
  store i32 %i.r, ptr %i.n, align 8, !tbaa !3
  %i.cd = load ptr, ptr %0, align 8, !tbaa !18    ; 2 uses
  %i.ce = ptrtoint ptr %i.cd to i64               ; 3 uses
  %i.cf = and i64 %i.ce, 1
  %i.cg = icmp eq i64 %i.cf, 0
  br i1 %i.cg, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge
  %.not.i11 = icmp ne ptr %i.cd, null
  %i.ch = zext i1 %.not.i11 to i32
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

_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit.i16: ; preds = %.preheader36
  %.not.i17 = icmp sgt i32 %i.r, 1
  br i1 %.not.i17, label %.thread.i, label %bb.k

_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit.thread.i12: ; preds = %.preheader36
  %i.co = add nsw i64 %i.t, -1
  %i.cp = inttoptr i64 %i.co to ptr               ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !21 ; 5 uses
  %.not7.i13 = icmp sgt i32 %i.r, %i.cq
  br i1 %.not7.i13, label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit.i26, label %bb.j

bb.j:                                             ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit.thread.i12
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit.i16
  %i.cs = phi ptr [ %i.cr, %bb.j ], [ %0, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit.i16 ]
  %i.ct = sext i32 %i.o to i64
  %i.cu = getelementptr inbounds [8 x i8], ptr %i.cs, i64 %i.ct
  br label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase15InternalReserveEiPNS0_5ArenaE.exit18

_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit.i26: ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit.thread.i12
  %i.cv = icmp slt i32 %i.r, 1
  br i1 %i.cv, label %_ZN6google8protobuf8internal20CalculateReserveSizeIPvLi8EEEiii.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit.i26
  %i.cw = icmp sgt i32 %i.cq, 1073741819
  br i1 %i.cw, label %_ZN6google8protobuf8internal20CalculateReserveSizeIPvLi8EEEiii.exit.i, label %.thread.i, !prof !23

.thread.i:                                        ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit.i16, %bb.l
  %i.cx = phi i32 [ %i.cq, %bb.l ], [ 1, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit.i16 ] ; 2 uses
  %i.cy = shl nsw i32 %i.cx, 1
  %i.cz = or disjoint i32 %i.cy, 1
  %.sroa.speculated.i.i = tail call i32 @llvm.smax.i32(i32 %i.cz, i32 %i.r)
  br label %_ZN6google8protobuf8internal20CalculateReserveSizeIPvLi8EEEiii.exit.i

_ZN6google8protobuf8internal20CalculateReserveSizeIPvLi8EEEiii.exit.i: ; preds = %.thread.i, %bb.l, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit.i26
  %i.da = phi i32 [ %i.cq, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit.i26 ], [ %i.cx, %.thread.i ], [ %i.cq, %bb.l ]
  %.1.i.i = phi i32 [ 1, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit.i26 ], [ %.sroa.speculated.i.i, %.thread.i ], [ 2147483647, %bb.l ] ; 3 uses
  %i.db = zext nneg i32 %.1.i.i to i64
  %i.dc = shl nuw nsw i64 %i.db, 3
  %i.dd = add nuw nsw i64 %i.dc, 8
  %i.de = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dd) #13 ; 8 uses
  %i.df = load ptr, ptr %0, align 8, !tbaa !18    ; 3 uses
  %i.dg = ptrtoint ptr %i.df to i64               ; 2 uses
  %i.dh = and i64 %i.dg, 1
  %i.di = icmp eq i64 %i.dh, 0
  br i1 %i.di, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeIPvLi8EEEiii.exit.i
  store i32 %.1.i.i, ptr %i.de, align 8, !tbaa !21
  %.not.i27 = icmp ne ptr %i.df, null
  %i.dj = zext i1 %.not.i27 to i32
  %i.dk = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  store i32 %i.dj, ptr %i.dk, align 4, !tbaa !24
  %i.dl = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  store ptr %i.df, ptr %i.dl, align 8, !tbaa !25
  br label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase14InternalExtendEiPNS0_5ArenaE.exit

bb.n:                                             ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeIPvLi8EEEiii.exit.i
  %i.dm = add nsw i64 %i.dg, -1
  %i.dn = inttoptr i64 %i.dm to ptr               ; 3 uses
  store i32 %.1.i.i, ptr %i.de, align 8, !tbaa !21
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 4
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !24 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  store i32 %i.dp, ptr %i.dq, align 4, !tbaa !24
  %i.dr = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dt = sext i32 %i.dp to i64
  %i.du = shl nsw i64 %i.dt, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.dr, ptr nonnull align 8 %i.ds, i64 %i.du, i1 false)
  %i.dv = sext i32 %i.da to i64
  %i.dw = shl nsw i64 %i.dv, 3
  %i.dx = add nsw i64 %i.dw, 8
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dn, i64 noundef %i.dx) #15
  br label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase14InternalExtendEiPNS0_5ArenaE.exit

_ZN6google8protobuf8internal20RepeatedPtrFieldBase14InternalExtendEiPNS0_5ArenaE.exit: ; preds = %bb.m, %bb.n
  %i.dy = ptrtoint ptr %i.de to i64
  %i.dz = add i64 %i.dy, 1                        ; 2 uses
  %i.ea = inttoptr i64 %i.dz to ptr               ; 2 uses
  store ptr %i.ea, ptr %0, align 8, !tbaa !18
  %i.eb = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.ec = load i32, ptr %i.n, align 8, !tbaa !64  ; 2 uses
  %i.ed = sext i32 %i.ec to i64
  %i.ee = getelementptr inbounds [8 x i8], ptr %i.eb, i64 %i.ed
  %.pre63 = load i32, ptr %i.p, align 8, !tbaa !64
  br label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase15InternalReserveEiPNS0_5ArenaE.exit18

_ZN6google8protobuf8internal20RepeatedPtrFieldBase15InternalReserveEiPNS0_5ArenaE.exit18: ; preds = %bb.k, %_ZN6google8protobuf8internal20RepeatedPtrFieldBase14InternalExtendEiPNS0_5ArenaE.exit
  %.pre-phi = phi i64 [ %i.t, %bb.k ], [ %i.dz, %_ZN6google8protobuf8internal20RepeatedPtrFieldBase14InternalExtendEiPNS0_5ArenaE.exit ] ; 2 uses
  %i.ef = phi i32 [ %i.o, %bb.k ], [ %i.ec, %_ZN6google8protobuf8internal20RepeatedPtrFieldBase14InternalExtendEiPNS0_5ArenaE.exit ]
  %i.eg = phi ptr [ %i.s, %bb.k ], [ %i.ea, %_ZN6google8protobuf8internal20RepeatedPtrFieldBase14InternalExtendEiPNS0_5ArenaE.exit ]
  %i.eh = phi i32 [ %i.q, %bb.k ], [ %.pre63, %_ZN6google8protobuf8internal20RepeatedPtrFieldBase14InternalExtendEiPNS0_5ArenaE.exit ] ; 2 uses
  %.0.i14 = phi ptr [ %i.cu, %bb.k ], [ %i.ee, %_ZN6google8protobuf8internal20RepeatedPtrFieldBase14InternalExtendEiPNS0_5ArenaE.exit ] ; 2 uses
  %i.ei = load ptr, ptr %1, align 8, !tbaa !18
  %i.ej = ptrtoint ptr %i.ei to i64               ; 2 uses
  %i.ek = and i64 %i.ej, 1
  %i.el = icmp eq i64 %i.ek, 0
  %i.em = add i64 %i.ej, -1
  %i.en = inttoptr i64 %i.em to ptr
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.ep = select i1 %i.el, ptr %1, ptr %i.eo      ; 4 uses
  %i.eq = sext i32 %i.eh to i64
  %i.er = getelementptr inbounds [8 x i8], ptr %i.ep, i64 %i.eq ; 2 uses
  %i.es = and i64 %.pre-phi, 1
  %i.et = icmp eq i64 %i.es, 0
  br i1 %i.et, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN6google8protobuf8internal20RepeatedPtrFieldBase15InternalReserveEiPNS0_5ArenaE.exit18
  %.not.i.i19 = icmp ne ptr %i.eg, null
  %i.eu = zext i1 %.not.i.i19 to i32
  br label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase12ClearedCountEv.exit20

bb.p:                                             ; preds = %_ZN6google8protobuf8internal20RepeatedPtrFieldBase15InternalReserveEiPNS0_5ArenaE.exit18
  %i.ev = add nsw i64 %.pre-phi, -1
  %i.ew = inttoptr i64 %i.ev to ptr
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 4
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !24
  br label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase12ClearedCountEv.exit20

_ZNK6google8protobuf8internal20RepeatedPtrFieldBase12ClearedCountEv.exit20: ; preds = %bb.o, %bb.p
  %i.ez = phi i32 [ %i.eu, %bb.o ], [ %i.ey, %bb.p ]
  %i.fa = sub nsw i32 %i.ez, %i.ef
  %.sroa.speculated33 = tail call i32 @llvm.smin.i32(i32 %i.eh, i32 %i.fa) ; 2 uses
  %i.fb = sext i32 %.sroa.speculated33 to i64
  %.idx56 = shl nuw nsw i64 %i.fb, 3
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ep, i64 %.idx56
  %i.fd = icmp sgt i32 %.sroa.speculated33, 0
  br i1 %i.fd, label %.lr.ph49, label %.preheader

.preheader:                                       ; preds = %.lr.ph49, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase12ClearedCountEv.exit20
  %.028.i5.lcssa = phi ptr [ %.0.i14, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase12ClearedCountEv.exit20 ], [ %i.fh, %.lr.ph49 ]
  %.0.i6.lcssa = phi ptr [ %i.ep, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase12ClearedCountEv.exit20 ], [ %i.fi, %.lr.ph49 ] ; 2 uses
  %i.fe = icmp ult ptr %.0.i6.lcssa, %i.er
  br i1 %i.fe, label %.lr.ph54, label %._crit_edge55

.lr.ph49:                                         ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase12ClearedCountEv.exit20, %.lr.ph49
  %.0.i648 = phi ptr [ %i.fi, %.lr.ph49 ], [ %i.ep, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase12ClearedCountEv.exit20 ] ; 2 uses
  %.028.i547 = phi ptr [ %i.fh, %.lr.ph49 ], [ %.0.i14, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase12ClearedCountEv.exit20 ] ; 2 uses
  %i.ff = load ptr, ptr %.028.i547, align 8, !tbaa !74
  %i.fg = load ptr, ptr %.0.i648, align 8, !tbaa !74
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ff, ptr noundef nonnull align 8 dereferenceable(32) %i.fg)
  %i.fh = getelementptr inbounds nuw i8, ptr %.028.i547, i64 8 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.0.i648, i64 8 ; 3 uses
  %i.fj = icmp ult ptr %i.fi, %i.fc
  br i1 %i.fj, label %.lr.ph49, label %.preheader, !llvm.loop !78

.lr.ph54:                                         ; preds = %.preheader, %"_ZZN6google8protobuf8internal20RepeatedPtrFieldBase17MergeFromInternalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNS2_9MergeFromIS9_EEvRKS2_PNS0_5ArenaEE3$_0EEvSC_SE_OT0_ENKUlSE_RKS9_E0_clB5cxx11ESE_SJ_.exit"
  %.1.i853 = phi ptr [ %i.gb, %"_ZZN6google8protobuf8internal20RepeatedPtrFieldBase17MergeFromInternalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNS2_9MergeFromIS9_EEvRKS2_PNS0_5ArenaEE3$_0EEvSC_SE_OT0_ENKUlSE_RKS9_E0_clB5cxx11ESE_SJ_.exit" ], [ %.0.i6.lcssa, %.preheader ] ; 2 uses
  %.129.i752 = phi ptr [ %i.ga, %"_ZZN6google8protobuf8internal20RepeatedPtrFieldBase17MergeFromInternalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNS2_9MergeFromIS9_EEvRKS2_PNS0_5ArenaEE3$_0EEvSC_SE_OT0_ENKUlSE_RKS9_E0_clB5cxx11ESE_SJ_.exit" ], [ %.028.i5.lcssa, %.preheader ] ; 2 uses
  %i.fk = load ptr, ptr %.1.i853, align 8, !tbaa !74 ; 2 uses
  %i.fl = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #13 ; 8 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 16 ; 3 uses
  store ptr %i.fm, ptr %i.fl, align 8, !tbaa !9
  %i.fn = load ptr, ptr %i.fk, align 8, !tbaa !13 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i64 %i.fp, ptr %i.a, align 8, !tbaa !17
  %i.fq = icmp ugt i64 %i.fp, 15
  br i1 %i.fq, label %.noexc.i.i23, label %._crit_edge.i.i.i22

.noexc.i.i23:                                     ; preds = %.lr.ph54
  %i.fr = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.fl, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i unwind label %bb.s   ; 2 uses

.noexc.i:                                         ; preds = %.noexc.i.i23
  store ptr %i.fr, ptr %i.fl, align 8, !tbaa !13
  %i.fs = load i64, ptr %i.a, align 8, !tbaa !17
  store i64 %i.fs, ptr %i.fm, align 8, !tbaa !7
  br label %._crit_edge.i.i.i22

._crit_edge.i.i.i22:                              ; preds = %.noexc.i, %.lr.ph54
  %i.ft = phi ptr [ %i.fr, %.noexc.i ], [ %i.fm, %.lr.ph54 ] ; 2 uses
  switch i64 %i.fp, label %bb.r [
    i64 1, label %bb.q
    i64 0, label %"_ZZN6google8protobuf8internal20RepeatedPtrFieldBase17MergeFromInternalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNS2_9MergeFromIS9_EEvRKS2_PNS0_5ArenaEE3$_0EEvSC_SE_OT0_ENKUlSE_RKS9_E0_clB5cxx11ESE_SJ_.exit"
  ]

bb.q:                                             ; preds = %._crit_edge.i.i.i22
  %i.fu = load i8, ptr %i.fn, align 1, !tbaa !7
  store i8 %i.fu, ptr %i.ft, align 1, !tbaa !7
  br label %"_ZZN6google8protobuf8internal20RepeatedPtrFieldBase17MergeFromInternalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNS2_9MergeFromIS9_EEvRKS2_PNS0_5ArenaEE3$_0EEvSC_SE_OT0_ENKUlSE_RKS9_E0_clB5cxx11ESE_SJ_.exit"

bb.r:                                             ; preds = %._crit_edge.i.i.i22
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ft, ptr align 1 %i.fn, i64 %i.fp, i1 false)
  br label %"_ZZN6google8protobuf8internal20RepeatedPtrFieldBase17MergeFromInternalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNS2_9MergeFromIS9_EEvRKS2_PNS0_5ArenaEE3$_0EEvSC_SE_OT0_ENKUlSE_RKS9_E0_clB5cxx11ESE_SJ_.exit"

bb.s:                                             ; preds = %.noexc.i.i23
  %i.fv = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.fl, i64 noundef 32) #14
  resume { ptr, i32 } %i.fv

"_ZZN6google8protobuf8internal20RepeatedPtrFieldBase17MergeFromInternalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNS2_9MergeFromIS9_EEvRKS2_PNS0_5ArenaEE3$_0EEvSC_SE_OT0_ENKUlSE_RKS9_E0_clB5cxx11ESE_SJ_.exit": ; preds = %._crit_edge.i.i.i22, %bb.q, %bb.r
  %i.fw = load i64, ptr %i.a, align 8, !tbaa !17  ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  store i64 %i.fw, ptr %i.fx, align 8, !tbaa !16
  %i.fy = load ptr, ptr %i.fl, align 8, !tbaa !13
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.fw
  store i8 0, ptr %i.fz, align 1, !tbaa !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  store ptr %i.fl, ptr %.129.i752, align 8, !tbaa !74
  %i.ga = getelementptr inbounds nuw i8, ptr %.129.i752, i64 8
  %i.gb = getelementptr inbounds nuw i8, ptr %.1.i853, i64 8 ; 2 uses
  %i.gc = icmp ult ptr %i.gb, %i.er
  br i1 %i.gc, label %.lr.ph54, label %._crit_edge55, !llvm.loop !79

._crit_edge55:                                    ; preds = %"_ZZN6google8protobuf8internal20RepeatedPtrFieldBase17MergeFromInternalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNS2_9MergeFromIS9_EEvRKS2_PNS0_5ArenaEE3$_0EEvSC_SE_OT0_ENKUlSE_RKS9_E0_clB5cxx11ESE_SJ_.exit", %.preheader
  store i32 %i.r, ptr %i.n, align 8, !tbaa !3
  %i.gd = load ptr, ptr %0, align 8, !tbaa !18    ; 2 uses
  %i.ge = ptrtoint ptr %i.gd to i64               ; 3 uses
  %i.gf = and i64 %i.ge, 1
  %i.gg = icmp eq i64 %i.gf, 0
  br i1 %i.gg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %._crit_edge55
  %.not.i24 = icmp ne ptr %i.gd, null
  %i.gh = zext i1 %.not.i24 to i32
  br label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit25

bb.u:                                             ; preds = %._crit_edge55
  %i.gi = add nsw i64 %i.ge, -1
  %i.gj = inttoptr i64 %i.gi to ptr
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 4
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !24
  br label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit25

_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit25: ; preds = %bb.t, %bb.u
  %i.gm = phi i32 [ %i.gh, %bb.t ], [ %i.gl, %bb.u ]
  %i.gn = icmp sgt i32 %i.r, %i.gm
  br i1 %i.gn, label %"_ZN6google8protobuf8internal20RepeatedPtrFieldBase17MergeFromInternalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNS2_9MergeFromIS9_EEvRKS2_PNS0_5ArenaEE3$_0EEvSC_SE_OT0_.exit.sink.split", label %"_ZN6google8protobuf8internal20RepeatedPtrFieldBase17MergeFromInternalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNS2_9MergeFromIS9_EEvRKS2_PNS0_5ArenaEE3$_0EEvSC_SE_OT0_.exit"

"_ZN6google8protobuf8internal20RepeatedPtrFieldBase17MergeFromInternalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNS2_9MergeFromIS9_EEvRKS2_PNS0_5ArenaEE3$_0EEvSC_SE_OT0_.exit.sink.split": ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit25, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit
  %.sink83 = phi i64 [ %i.ce, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit ], [ %i.ge, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit25 ]
  %i.go = add i64 %.sink83, -1
  %i.gp = inttoptr i64 %i.go to ptr
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 4
  store i32 %i.r, ptr %i.gq, align 4, !tbaa !24
  br label %"_ZN6google8protobuf8internal20RepeatedPtrFieldBase17MergeFromInternalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNS2_9MergeFromIS9_EEvRKS2_PNS0_5ArenaEE3$_0EEvSC_SE_OT0_.exit"

"_ZN6google8protobuf8internal20RepeatedPtrFieldBase17MergeFromInternalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNS2_9MergeFromIS9_EEvRKS2_PNS0_5ArenaEE3$_0EEvSC_SE_OT0_.exit": ; preds = %"_ZN6google8protobuf8internal20RepeatedPtrFieldBase17MergeFromInternalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNS2_9MergeFromIS9_EEvRKS2_PNS0_5ArenaEE3$_0EEvSC_SE_OT0_.exit.sink.split", %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit25, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit
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
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !90
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase24MergeFromConcreteMessageERKS2_PNS0_5ArenaEPFPvS6_PKvE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
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
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !64   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !64   ; 2 uses
  %i.p = add nsw i32 %i.o, %i.m                   ; 6 uses
  %i.q = load ptr, ptr %0, align 8, !tbaa !18     ; 2 uses
  %i.r = ptrtoint ptr %i.q to i64                 ; 3 uses
  %i.s = and i64 %i.r, 1
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit.i, label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit.thread.i

_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit.i: ; preds = %_ZN6google8protobuf8internal8PrefetchIL_ZZNS1_23Prefetch5LinesFrom1LineEPKvE5kOptsEvvEEvPKT1_.exit
  %.not.i = icmp sgt i32 %i.p, 1
  br i1 %.not.i, label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit6.i, label %bb.b

_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit.thread.i: ; preds = %_ZN6google8protobuf8internal8PrefetchIL_ZZNS1_23Prefetch5LinesFrom1LineEPKvE5kOptsEvvEEvPKT1_.exit
  %i.u = add nsw i64 %i.r, -1
  %i.v = inttoptr i64 %i.u to ptr                 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !21   ; 2 uses
  %.not7.i = icmp sgt i32 %i.p, %i.w
  br i1 %.not7.i, label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit6.i, label %bb.a

bb.a:                                             ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit.thread.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit.i
  %i.y = phi ptr [ %i.x, %bb.a ], [ %0, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit.i ]
  %i.z = sext i32 %i.m to i64
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.z
  br label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase15InternalReserveEiPNS0_5ArenaE.exit

_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit6.i: ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit.thread.i, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit.i
  %i.ab = phi i32 [ 1, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit.i ], [ %i.w, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit.thread.i ]
  %i.ac = sub nsw i32 %i.p, %i.ab
  %i.ad = tail call noundef ptr @_ZN6google8protobuf8internal20RepeatedPtrFieldBase14InternalExtendEiPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %i.ac, ptr noundef %2)
  %.pre = load i32, ptr %i.n, align 8, !tbaa !64
  %.pre50 = load ptr, ptr %0, align 8, !tbaa !18  ; 2 uses
  %.pre52 = ptrtoint ptr %.pre50 to i64
  br label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase15InternalReserveEiPNS0_5ArenaE.exit

_ZN6google8protobuf8internal20RepeatedPtrFieldBase15InternalReserveEiPNS0_5ArenaE.exit: ; preds = %bb.b, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit6.i
  %.pre-phi = phi i64 [ %i.r, %bb.b ], [ %.pre52, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit6.i ] ; 2 uses
  %i.ae = phi ptr [ %i.q, %bb.b ], [ %.pre50, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit6.i ]
  %i.af = phi i32 [ %i.o, %bb.b ], [ %.pre, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit6.i ] ; 2 uses
  %.0.i40 = phi ptr [ %i.aa, %bb.b ], [ %i.ad, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit6.i ] ; 2 uses
  %i.ag = load ptr, ptr %1, align 8, !tbaa !18
  %i.ah = ptrtoint ptr %i.ag to i64               ; 2 uses
  %i.ai = and i64 %i.ah, 1
  %i.aj = icmp eq i64 %i.ai, 0
  %i.ak = add i64 %i.ah, -1
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = select i1 %i.aj, ptr %1, ptr %i.am      ; 3 uses
  %i.ao = sext i32 %i.af to i64
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.ao ; 3 uses
  %i.aq = and i64 %.pre-phi, 1
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN6google8protobuf8internal20RepeatedPtrFieldBase15InternalReserveEiPNS0_5ArenaE.exit
  %.not.i.i = icmp ne ptr %i.ae, null
  %i.as = zext i1 %.not.i.i to i32
  br label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase12ClearedCountEv.exit

bb.d:                                             ; preds = %_ZN6google8protobuf8internal20RepeatedPtrFieldBase15InternalReserveEiPNS0_5ArenaE.exit
  %i.at = add nsw i64 %.pre-phi, -1
  %i.au = inttoptr i64 %i.at to ptr
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !24
  br label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase12ClearedCountEv.exit

_ZNK6google8protobuf8internal20RepeatedPtrFieldBase12ClearedCountEv.exit: ; preds = %bb.c, %bb.d
  %i.ax = phi i32 [ %i.as, %bb.c ], [ %i.aw, %bb.d ]
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
  %.idx = shl nuw nsw i64 %i.bm, 3
  %i.bn = getelementptr inbounds nuw i8, ptr %i.az, i64 %.idx
  %i.bo = icmp sgt i32 %.sroa.speculated, 0
  br i1 %i.bo, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase12ClearedCountEv.exit
  %i.bp = getelementptr i8, ptr %i.l, i64 24
  br label %bb.e

.preheader:                                       ; preds = %bb.e, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase12ClearedCountEv.exit
  %.028.i.lcssa = phi ptr [ %.0.i8, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase12ClearedCountEv.exit ], [ %i.bv, %bb.e ]
  %.0.i.lcssa = phi ptr [ %i.az, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase12ClearedCountEv.exit ], [ %i.bw, %bb.e ] ; 2 uses
  %i.bq = icmp ult ptr %.0.i.lcssa, %i.bb
  br i1 %i.bq, label %.lr.ph19, label %._crit_edge

.lr.ph19:                                         ; preds = %.preheader
  %i.br = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.bs = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %.0.i15 = phi ptr [ %i.az, %.lr.ph ], [ %i.bw, %bb.e ] ; 2 uses
  %.028.i14 = phi ptr [ %.0.i8, %.lr.ph ], [ %i.bv, %bb.e ] ; 2 uses
  %i.bt = load ptr, ptr %.028.i14, align 8, !tbaa !80
  %i.bu = load ptr, ptr %.0.i15, align 8, !tbaa !80
  %.val.val = load ptr, ptr %i.bp, align 8, !tbaa !83
  tail call void %.val.val(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, ptr noundef nonnull align 8 dereferenceable(16) %i.bu), !inline_history !93
  %i.bv = getelementptr inbounds nuw i8, ptr %.028.i14, i64 8 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.0.i15, i64 8 ; 3 uses
  %i.bx = icmp ult ptr %i.bw, %i.bn
  br i1 %i.bx, label %bb.e, label %.preheader, !llvm.loop !94

bb.f:                                             ; preds = %.lr.ph19, %bb.f
  %.1.i18 = phi ptr [ %.0.i.lcssa, %.lr.ph19 ], [ %i.cd, %bb.f ] ; 2 uses
  %.129.i17 = phi ptr [ %.028.i.lcssa, %.lr.ph19 ], [ %i.cc, %bb.f ] ; 2 uses
  %i.by = load ptr, ptr %.1.i18, align 8, !tbaa !80
  %i.bz = load ptr, ptr %i.l, align 8, !tbaa !95  ; 2 uses
  %i.ca = tail call noundef ptr @_ZNK6google8protobuf8internal14MessageCreator3NewINS0_11MessageLiteEEEPT_PKS5_S8_PNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16) %i.br, ptr noundef %i.bz, ptr noundef %i.bz, ptr noundef %2) ; 2 uses
  %i.cb = load ptr, ptr %i.bs, align 8, !tbaa !83
  tail call void %i.cb(ptr noundef nonnull align 8 dereferenceable(16) %i.ca, ptr noundef nonnull align 8 dereferenceable(16) %i.by), !inline_history !96
  store ptr %i.ca, ptr %.129.i17, align 8, !tbaa !80
  %i.cc = getelementptr inbounds nuw i8, ptr %.129.i17, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %.1.i18, i64 8 ; 2 uses
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
  %i.a = load i32, ptr %0, align 8, !tbaa !98
  %i.b = zext i32 %i.a to i64                     ; 2 uses
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

.preheader61.i:                                   ; preds = %bb.j
  %i.ai = icmp ugt i32 %i.l, 80
  br i1 %i.ai, label %.lr.ph.i, label %._crit_edge.i

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.aj, ptr noundef nonnull align 1 dereferenceable(16) %i.ak, i64 16, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.m
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -32
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 %i.m
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 -32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.am, ptr noundef nonnull align 1 dereferenceable(32) %i.ao, i64 32, i1 false)
  br label %bb.l

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.preheader61.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.m
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 -64
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 %i.m
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.aq, ptr noundef nonnull align 1 dereferenceable(64) %i.as, i64 64, i1 false)
  br label %bb.l

.lr.ph.i:                                         ; preds = %.preheader61.i, %.lr.ph.i
  %i.at = phi i64 [ %i.ay, %.lr.ph.i ], [ 80, %.preheader61.i ] ; 2 uses
  %.062.i = phi i64 [ %i.at, %.lr.ph.i ], [ 16, %.preheader61.i ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 %.062.i ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.av, i32 0, i32 3, i32 1)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 %.062.i ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  tail call void asm sideeffect "prefetchw $0", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i8) %i.ax) #15, !srcloc !101
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.aw, ptr noundef nonnull align 1 dereferenceable(64) %i.au, i64 64, i1 false)
  %i.ay = add nuw nsw i64 %i.at, 64               ; 2 uses
  %i.az = icmp samesign ult i64 %i.ay, %i.m
  br i1 %i.az, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !103

bb.l:                                             ; preds = %._crit_edge.i, %bb.k, %bb.i, %._crit_edge65.i, %bb.g, %bb.e
  %i.ba = load i64, ptr %2, align 1
  store i64 %i.ba, ptr %i.e, align 1
  %i.bb = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %3, ptr %i.bb, align 1
  br label %_ZNK6google8protobuf8internal14MessageCreator12PlacementNewINS0_11MessageLiteEEEPT_PKS5_S8_PvPNS0_5ArenaE.exit

.split8:                                          ; preds = %bb.a
  %i.bc = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.b) #13 ; 14 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.be = load i8, ptr %i.bd, align 4, !tbaa !99  ; 2 uses
  %i.bf = icmp slt i8 %i.be, 0
  br i1 %i.bf, label %bb.m, label %bb.n, !prof !8

bb.m:                                             ; preds = %.split8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !7
  %i.bi = tail call noundef ptr %i.bh(ptr noundef %1, ptr noundef nonnull %i.bc, ptr noundef null), !inline_history !100
  br label %_ZNK6google8protobuf8internal14MessageCreator12PlacementNewINS0_11MessageLiteEEEPT_PKS5_S8_PvPNS0_5ArenaE.exit

bb.n:                                             ; preds = %.split8
  %i.bj = load i32, ptr %0, align 8, !tbaa !98    ; 6 uses
  %i.bk = zext i32 %i.bj to i64                   ; 11 uses
  %i.bl = icmp eq i8 %i.be, 0
  %i.bm = icmp ult i32 %i.bj, 33                  ; 2 uses
  br i1 %i.bl, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  br i1 %i.bm, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bk
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 -16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bo, i8 0, i64 16, i1 false)
  br label %bb.w

bb.q:                                             ; preds = %bb.o
  %i.bp = icmp ult i32 %i.bj, 65
  br i1 %i.bp, label %bb.r, label %.preheader.i14

.preheader.i14:                                   ; preds = %bb.q
  %i.bq = icmp ugt i32 %i.bj, 80
  br i1 %i.bq, label %.lr.ph64.i16, label %._crit_edge65.i15

bb.r:                                             ; preds = %bb.q
  %i.br = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.br, i8 0, i64 16, i1 false)
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bk
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 -32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.bt, i8 0, i64 32, i1 false)
  br label %bb.w

._crit_edge65.i15:                                ; preds = %.lr.ph64.i16, %.preheader.i14
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bk
  %i.bv = getelementptr inbounds i8, ptr %i.bu, i64 -64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.bv, i8 0, i64 64, i1 false)
  br label %bb.w

.lr.ph64.i16:                                     ; preds = %.preheader.i14, %.lr.ph64.i16
  %i.bw = phi i64 [ %i.bz, %.lr.ph64.i16 ], [ 80, %.preheader.i14 ] ; 2 uses
  %.05563.i17 = phi i64 [ %i.bw, %.lr.ph64.i16 ], [ 16, %.preheader.i14 ]
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.05563.i17 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 64
  tail call void asm sideeffect "prefetchw $0", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i8) %i.by) #15, !srcloc !101
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.bx, i8 0, i64 64, i1 false)
  %i.bz = add nuw nsw i64 %i.bw, 64               ; 2 uses
  %i.ca = icmp samesign ult i64 %i.bz, %i.bk
  br i1 %i.ca, label %.lr.ph64.i16, label %._crit_edge65.i15, !llvm.loop !102

bb.s:                                             ; preds = %bb.n
  br i1 %i.bm, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bk
  %i.cc = getelementptr inbounds i8, ptr %i.cb, i64 -16
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 %i.bk
  %i.ce = getelementptr inbounds i8, ptr %i.cd, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.cc, ptr noundef nonnull align 1 dereferenceable(16) %i.ce, i64 16, i1 false)
  br label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.cf = icmp ult i32 %i.bj, 65
  br i1 %i.cf, label %bb.v, label %.preheader61.i9

.preheader61.i9:                                  ; preds = %bb.u
  %i.cg = icmp ugt i32 %i.bj, 80
  br i1 %i.cg, label %.lr.ph.i12, label %._crit_edge.i10

bb.v:                                             ; preds = %bb.u
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ch, ptr noundef nonnull align 1 dereferenceable(16) %i.ci, i64 16, i1 false)
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bk
  %i.ck = getelementptr inbounds i8, ptr %i.cj, i64 -32
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 %i.bk
  %i.cm = getelementptr inbounds i8, ptr %i.cl, i64 -32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ck, ptr noundef nonnull align 1 dereferenceable(32) %i.cm, i64 32, i1 false)
  br label %bb.w

._crit_edge.i10:                                  ; preds = %.lr.ph.i12, %.preheader61.i9
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bk
  %i.co = getelementptr inbounds i8, ptr %i.cn, i64 -64
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 %i.bk
  %i.cq = getelementptr inbounds i8, ptr %i.cp, i64 -64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.co, ptr noundef nonnull align 1 dereferenceable(64) %i.cq, i64 64, i1 false)
  br label %bb.w

.lr.ph.i12:                                       ; preds = %.preheader61.i9, %.lr.ph.i12
  %i.cr = phi i64 [ %i.cw, %.lr.ph.i12 ], [ 80, %.preheader61.i9 ] ; 2 uses
  %.062.i13 = phi i64 [ %i.cr, %.lr.ph.i12 ], [ 16, %.preheader61.i9 ] ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 %.062.i13 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ct, i32 0, i32 3, i32 1)
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.062.i13 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 64
  tail call void asm sideeffect "prefetchw $0", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i8) %i.cv) #15, !srcloc !101
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.cu, ptr noundef nonnull align 1 dereferenceable(64) %i.cs, i64 64, i1 false)
  %i.cw = add nuw nsw i64 %i.cr, 64               ; 2 uses
  %i.cx = icmp samesign ult i64 %i.cw, %i.bk
  br i1 %i.cx, label %.lr.ph.i12, label %._crit_edge.i10, !llvm.loop !103

bb.w:                                             ; preds = %._crit_edge.i10, %bb.v, %bb.t, %._crit_edge65.i15, %bb.r, %bb.p
  %i.cy = load i64, ptr %2, align 1
  store i64 %i.cy, ptr %i.bc, align 1
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr null, ptr %i.cz, align 1
  br label %_ZNK6google8protobuf8internal14MessageCreator12PlacementNewINS0_11MessageLiteEEEPT_PKS5_S8_PvPNS0_5ArenaE.exit

_ZNK6google8protobuf8internal14MessageCreator12PlacementNewINS0_11MessageLiteEEEPT_PKS5_S8_PvPNS0_5ArenaE.exit: ; preds = %bb.w, %bb.m, %bb.l, %bb.b
  %phi.call = phi ptr [ %i.e, %bb.l ], [ %i.k, %bb.b ], [ %i.bi, %bb.m ], [ %i.bc, %bb.w ]
  ret ptr %phi.call
}

declare noundef ptr @_ZN6google8protobuf5Arena8AllocateEm(ptr noundef nonnull align 8 dereferenceable(168), i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #12

attributes #0 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { builtin allocsize(0) }
attributes #14 = { builtin nounwind }
attributes #15 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!5, !5, i64 0}
!8 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!9 = !{!10, !11, i64 0}
!10 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !11, i64 0}
!11 = !{!"p1 omnipotent char", !12, i64 0}
!12 = !{!"any pointer", !5, i64 0}
!13 = !{!14, !11, i64 0}
!14 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !10, i64 0, !15, i64 8, !5, i64 16}
!15 = !{!"long", !5, i64 0}
!16 = !{!14, !15, i64 8}
!17 = !{!15, !15, i64 0}
!18 = !{!19, !12, i64 0}
!19 = !{!"_ZTSN6google8protobuf8internal20RepeatedPtrFieldBaseE", !12, i64 0, !4, i64 8, !20, i64 12}
!20 = !{!"_ZTSN6google8protobuf8internal30TaggedInternalMetadataResolverILj0EEE", !4, i64 0}
!21 = !{!22, !4, i64 0}
!22 = !{!"_ZTSN6google8protobuf8internal20RepeatedPtrFieldBase3RepE", !4, i64 0, !4, i64 4, !5, i64 8}
!23 = !{!"branch_weights", !"expected", i32 2146410, i32 2145337238}
!24 = !{!22, !4, i64 4}
!25 = !{!12, !12, i64 0}
!26 = !{!27, !15, i64 8}
!27 = !{!"_ZTSN6google8protobuf8internal15ThreadSafeArena11ThreadCacheE", !15, i64 0, !15, i64 8, !28, i64 16}
!28 = !{!"p1 _ZTSN6google8protobuf8internal11SerialArenaE", !12, i64 0}
!29 = !{!30, !15, i64 0}
!30 = !{!"_ZTSN6google8protobuf8internal15ThreadSafeArenaE", !15, i64 0, !31, i64 8, !32, i64 16, !35, i64 24, !36, i64 32, !39, i64 40, !12, i64 160}
!31 = !{!"_ZTSN6google8protobuf8internal25TaggedAllocationPolicyPtrE", !15, i64 0}
!32 = !{!"_ZTSSt6atomicIPN6google8protobuf8internal15ThreadSafeArena16SerialArenaChunkEE", !33, i64 0}
!33 = !{!"_ZTSSt13__atomic_baseIPN6google8protobuf8internal15ThreadSafeArena16SerialArenaChunkEE", !34, i64 0}
!34 = !{!"p1 _ZTSN6google8protobuf8internal15ThreadSafeArena16SerialArenaChunkE", !12, i64 0}
!35 = !{!"_ZTSN6google8protobuf8internal26ThreadSafeArenaStatsHandleE"}
!36 = !{!"_ZTSN4absl12lts_202505125MutexE", !37, i64 0}
!37 = !{!"_ZTSSt6atomicIlE", !38, i64 0}
!38 = !{!"_ZTSSt13__atomic_baseIlE", !15, i64 0}
!39 = !{!"_ZTSN6google8protobuf8internal11SerialArenaE", !5, i64 0, !11, i64 8, !40, i64 16, !43, i64 24, !11, i64 32, !45, i64 40, !47, i64 48, !49, i64 56, !52, i64 64, !45, i64 72, !53, i64 80, !45, i64 112}
!40 = !{!"_ZTSSt6atomicIPN6google8protobuf8internal10ArenaBlockEE", !41, i64 0}
!41 = !{!"_ZTSSt13__atomic_baseIPN6google8protobuf8internal10ArenaBlockEE", !42, i64 0}
!42 = !{!"p1 _ZTSN6google8protobuf8internal10ArenaBlockE", !12, i64 0}
!43 = !{!"_ZTSSt6atomicIPcE", !44, i64 0}
!44 = !{!"_ZTSSt13__atomic_baseIPcE", !11, i64 0}
!45 = !{!"_ZTSSt6atomicImE", !46, i64 0}
!46 = !{!"_ZTSSt13__atomic_baseImE", !15, i64 0}
!47 = !{!"p2 _ZTSN6google8protobuf8internal11SerialArena11CachedBlockE", !48, i64 0}
!48 = !{!"any p2 pointer", !12, i64 0}
!49 = !{!"_ZTSSt6atomicIPN6google8protobuf8internal11StringBlockEE", !50, i64 0}
!50 = !{!"_ZTSSt13__atomic_baseIPN6google8protobuf8internal11StringBlockEE", !51, i64 0}
!51 = !{!"p1 _ZTSN6google8protobuf8internal11StringBlockE", !12, i64 0}
!52 = !{!"p1 _ZTSN6google8protobuf8internal15ThreadSafeArenaE", !12, i64 0}
!53 = !{!"_ZTSN6google8protobuf8internal7cleanup9ChunkListE", !54, i64 0, !55, i64 8, !55, i64 16, !11, i64 24}
!54 = !{!"p1 _ZTSN6google8protobuf8internal7cleanup9ChunkList5ChunkE", !12, i64 0}
!55 = !{!"p1 _ZTSN6google8protobuf8internal7cleanup11CleanupNodeE", !12, i64 0}
!56 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!57 = !{!27, !28, i64 16}
!58 = !{!39, !5, i64 0}
!59 = !{!39, !47, i64 48}
!60 = !{!61, !61, i64 0}
!61 = !{!"p1 _ZTSN6google8protobuf8internal11SerialArena11CachedBlockE", !12, i64 0}
!62 = !{!63, !61, i64 0}
!63 = !{!"_ZTSN6google8protobuf8internal11SerialArena11CachedBlockE", !61, i64 0}
!64 = !{!19, !4, i64 8}
!65 = !{!66, !66, i64 0}
!66 = !{!"vtable pointer", !6, i64 0}
!67 = distinct !{null, null, ptr @_ZN6google8protobuf8internal34InternalOutOfLineDeleteMessageLiteEPNS0_11MessageLiteE}
!68 = distinct !{!68, !69}
!69 = !{!"llvm.loop.mustprogress"}
!70 = distinct !{!70, !69, !71, !72}
!71 = !{!"llvm.loop.isvectorized", i32 1}
!72 = !{!"llvm.loop.unroll.runtime.disable"}
!73 = distinct !{!73, !69, !71}
!74 = !{!75, !75, i64 0}
!75 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !12, i64 0}
!76 = distinct !{!76, !69}
!77 = distinct !{!77, !69}
!78 = distinct !{!78, !69}
!79 = distinct !{!79, !69}
!80 = !{!81, !81, i64 0}
!81 = !{!"p1 _ZTSN6google8protobuf11MessageLiteE", !12, i64 0}
!82 = distinct !{null}
!83 = !{!84, !12, i64 24}
!84 = !{!"_ZTSN6google8protobuf8internal9ClassDataE", !81, i64 0, !85, i64 8, !12, i64 16, !12, i64 24, !86, i64 32, !4, i64 48, !88, i64 52, !88, i64 53}
!85 = !{!"p1 _ZTSN6google8protobuf8internal16TcParseTableBaseE", !12, i64 0}
!86 = !{!"_ZTSN6google8protobuf8internal14MessageCreatorE", !4, i64 0, !87, i64 4, !5, i64 5, !5, i64 8}
!87 = !{!"_ZTSN6google8protobuf8internal14MessageCreator3TagE", !5, i64 0}
!88 = !{!"bool", !5, i64 0}
!89 = distinct !{null}
!90 = distinct !{!90, !69}
!91 = distinct !{!91, !69}
!92 = distinct !{!92, !69}
!93 = distinct !{null}
!94 = distinct !{!94, !69}
!95 = !{!84, !81, i64 0}
!96 = distinct !{null}
!97 = distinct !{!97, !69}
!98 = !{!86, !4, i64 0}
!99 = !{!86, !87, i64 4}
!100 = distinct !{null}
!101 = !{i64 2808550}
!102 = distinct !{!102, !69}
!103 = distinct !{!103, !69}
end_hunk_0
