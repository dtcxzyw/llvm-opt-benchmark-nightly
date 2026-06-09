inline.NumInlined: 181
inline.NumDeleted: 100
begin_hunk_0
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"struct.google::protobuf::internal::ThreadSafeArena::ThreadCache" = type { i64, i64, ptr, [8 x i8] }

$_ZN6google8protobuf8internal7memswapILm12EEEvPcS3_ = comdat any

$_ZNK6google8protobuf8internal14MessageCreator3NewINS0_11MessageLiteEEEPT_PKS5_S8_PNS0_5ArenaE = comdat any

@_ZN6google8protobuf8internal15ThreadSafeArena13thread_cache_E = external thread_local local_unnamed_addr global %"struct.google::protobuf::internal::ThreadSafeArena::ThreadCache", align 32

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr void @_ZN6google8protobuf8internal7memswapILm12EEEvPcS3_(ptr noalias noundef %0, ptr noalias noundef %1) local_unnamed_addr #0 comdat {
.lr.ph.i:
  %i.a = load <8 x i8>, ptr %1, align 1, !tbaa !7
  %i.b = load <8 x i8>, ptr %0, align 1, !tbaa !7
  store <8 x i8> %i.a, ptr %0, align 1, !tbaa !7
  store <8 x i8> %i.b, ptr %1, align 1, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.079.i.ptr.8 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load <4 x i8>, ptr %i.c, align 1, !tbaa !7
  %i.e = load <4 x i8>, ptr %.079.i.ptr.8, align 1, !tbaa !7
  store <4 x i8> %i.d, ptr %.079.i.ptr.8, align 1, !tbaa !7
  store <4 x i8> %i.e, ptr %i.c, align 1, !tbaa !7
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6google8protobuf8internal9CloneSlowEPNS0_5ArenaERKNS0_11MessageLiteE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK6google8protobuf11MessageLite3NewEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %0) ; 2 uses
  tail call void @_ZN6google8protobuf11MessageLite21CheckTypeAndMergeFromERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %1)
  ret ptr %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare noundef ptr @_ZNK6google8protobuf11MessageLite3NewEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #3

declare void @_ZN6google8protobuf11MessageLite21CheckTypeAndMergeFromERKS1_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6google8protobuf8internal9CloneSlowEPNS0_5ArenaERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %bb.b, label %bb.d, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #13 ; 3 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %_ZN6google8protobuf5Arena6CreateINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS8_EEEPT_PS1_DpOT0_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 32) #14
  resume { ptr, i32 } %i.d

bb.d:                                             ; preds = %bb.a
  %i.e = tail call noundef ptr @_ZN6google8protobuf8internal15ThreadSafeArena23AllocateFromStringBlockEv(ptr noundef nonnull align 8 dereferenceable(168) %0) ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  store ptr %i.f, ptr %i.e, align 8, !tbaa !9
  %i.g = load ptr, ptr %1, align 8, !tbaa !13     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !16   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i64 %i.i, ptr %i.a, align 8, !tbaa !17
  %i.j = icmp ugt i64 %i.i, 15
  br i1 %i.j, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.d
  %i.k = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.k, ptr %i.e, align 8, !tbaa !13
  %i.l = load i64, ptr %i.a, align 8, !tbaa !17
  store i64 %i.l, ptr %i.f, align 8, !tbaa !7
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.d
  %i.m = phi ptr [ %i.k, %.noexc.i ], [ %i.f, %bb.d ] ; 2 uses
  switch i64 %i.i, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.n = load i8, ptr %i.g, align 1, !tbaa !7
  store i8 %i.n, ptr %i.m, align 1, !tbaa !7
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.f:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.g, i64 %i.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.e, %bb.f
  %i.o = load i64, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.o, ptr %i.p, align 8, !tbaa !16
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1, !tbaa !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %_ZN6google8protobuf5Arena6CreateINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS8_EEEPT_PS1_DpOT0_.exit

_ZN6google8protobuf5Arena6CreateINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS8_EEEPT_PS1_DpOT0_.exit: ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %.0.i = phi ptr [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ], [ %i.c, %bb.b ]
  ret ptr %.0.i
}

; Function Attrs: mustprogress uwtable
define noundef nonnull ptr @_ZN6google8protobuf8internal20RepeatedPtrFieldBase14InternalExtendEiPNS0_5ArenaE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !18     ; 2 uses
  %i.b = ptrtoint ptr %i.a to i64                 ; 3 uses
  %i.c = and i64 %i.b, 1
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit.thread, label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit

_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit: ; preds = %bb.a
  %i.e = add nsw i64 %i.b, -1
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load i32, ptr %i.f, align 8, !tbaa !21   ; 5 uses
  %i.h = add nsw i32 %i.g, %1                     ; 2 uses
  %i.i = icmp slt i32 %i.h, 1
  br i1 %i.i, label %_ZN6google8protobuf8internal20CalculateReserveSizeIPvLi8EEEiii.exit, label %bb.b

_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit.thread: ; preds = %bb.a
  %i.j = add nuw nsw i32 %1, 1
  %i.k = icmp slt i32 %1, 0
  br i1 %i.k, label %_ZN6google8protobuf8internal20CalculateReserveSizeIPvLi8EEEiii.exit, label %.thread

bb.b:                                             ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit
  %i.l = icmp sgt i32 %i.g, 1073741819
  br i1 %i.l, label %_ZN6google8protobuf8internal20CalculateReserveSizeIPvLi8EEEiii.exit, label %.thread, !prof !23

.thread:                                          ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit.thread, %bb.b
  %i.m = phi i32 [ %i.g, %bb.b ], [ 1, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit.thread ] ; 2 uses
  %i.n = phi i32 [ %i.h, %bb.b ], [ %i.j, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit.thread ]
  %i.o = shl nsw i32 %i.m, 1
  %i.p = or disjoint i32 %i.o, 1
  %.sroa.speculated.i = tail call i32 @llvm.smax.i32(i32 %i.p, i32 %i.n)
  br label %_ZN6google8protobuf8internal20CalculateReserveSizeIPvLi8EEEiii.exit

_ZN6google8protobuf8internal20CalculateReserveSizeIPvLi8EEEiii.exit: ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit.thread, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit, %bb.b, %.thread
  %i.q = phi i32 [ %i.g, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit ], [ %i.m, %.thread ], [ %i.g, %bb.b ], [ 1, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit.thread ]
  %.1.i = phi i32 [ 1, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit ], [ %.sroa.speculated.i, %.thread ], [ 2147483647, %bb.b ], [ 1, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit.thread ] ; 3 uses
  %i.r = zext nneg i32 %.1.i to i64
  %i.s = shl nuw nsw i64 %i.r, 3
  %i.t = icmp eq ptr %2, null                     ; 2 uses
  %i.u = add nuw nsw i64 %i.s, 8                  ; 2 uses
  br i1 %i.t, label %bb.c, label %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit

bb.c:                                             ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeIPvLi8EEEiii.exit
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #13
  br label %bb.d

_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit: ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeIPvLi8EEEiii.exit
  %i.w = tail call noundef ptr @_ZN6google8protobuf5Arena16AllocateForArrayEm(ptr noundef nonnull align 8 dereferenceable(168) %2, i64 noundef %i.u)
  %.pre = load ptr, ptr %0, align 8, !tbaa !18    ; 2 uses
  %.pre34 = ptrtoint ptr %.pre to i64
  br label %bb.d

bb.d:                                             ; preds = %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit, %bb.c
  %.pre-phi = phi i64 [ %.pre34, %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit ], [ %i.b, %bb.c ] ; 2 uses
  %i.x = phi ptr [ %.pre, %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit ], [ %i.a, %bb.c ] ; 2 uses
  %.0 = phi ptr [ %i.w, %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit ], [ %i.v, %bb.c ] ; 8 uses
  %i.y = and i64 %.pre-phi, 1
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 %.1.i, ptr %.0, align 8, !tbaa !21
  %.not = icmp ne ptr %i.x, null
  %i.aa = zext i1 %.not to i32
  %i.ab = getelementptr inbounds nuw i8, ptr %.0, i64 4
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !24
  %i.ac = getelementptr inbounds nuw i8, ptr %.0, i64 8
  store ptr %i.x, ptr %i.ac, align 8, !tbaa !25
  br label %_ZN6google8protobuf5Arena17ReturnArrayMemoryEPvm.exit

bb.f:                                             ; preds = %bb.d
  %i.ad = add nsw i64 %.pre-phi, -1
  %i.ae = inttoptr i64 %i.ad to ptr               ; 9 uses
  store i32 %.1.i, ptr %.0, align 8, !tbaa !21
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !24 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0, i64 4
  store i32 %i.ag, ptr %i.ah, align 4, !tbaa !24
  %i.ai = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ak = sext i32 %i.ag to i64
  %i.al = shl nsw i64 %i.ak, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ai, ptr nonnull align 8 %i.aj, i64 %i.al, i1 false)
  %i.am = sext i32 %i.q to i64
  %i.an = shl nsw i64 %i.am, 3
  %i.ao = add nsw i64 %i.an, 8                    ; 5 uses
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.ao) #15
  br label %_ZN6google8protobuf5Arena17ReturnArrayMemoryEPvm.exit

bb.h:                                             ; preds = %bb.f
  %i.ap = tail call noundef nonnull align 32 dereferenceable(24) ptr @llvm.threadlocal.address.p0(ptr align 32 @_ZN6google8protobuf8internal15ThreadSafeArena13thread_cache_E) ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !26
  %i.as = load i64, ptr %2, align 8, !tbaa !29
  %i.at = icmp eq i64 %i.ar, %i.as
  br i1 %i.at, label %bb.i, label %_ZN6google8protobuf5Arena17ReturnArrayMemoryEPvm.exit, !prof !56

bb.i:                                             ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.av = load ptr, ptr %i.au, align 16, !tbaa !57 ; 5 uses
  %i.aw = icmp ugt i64 %i.ao, 15
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ao, i1 true)
  %i.ay = sub nuw nsw i64 59, %i.ax               ; 2 uses
  %i.az = load i8, ptr %i.av, align 8, !tbaa !58  ; 3 uses
  %i.ba = zext i8 %i.az to i64                    ; 2 uses
  %.not.i.i.i = icmp samesign ult i64 %i.ay, %i.ba
  br i1 %.not.i.i.i, label %bb.m, label %bb.j, !prof !56

bb.j:                                             ; preds = %bb.i
  %i.bb = lshr exact i64 %i.ao, 3                 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.av, i64 48 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !59 ; 2 uses
  %i.be = icmp ugt i8 %i.az, 1
  br i1 %i.be, label %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i, label %bb.k, !prof !56

bb.k:                                             ; preds = %bb.j
  %i.bf = icmp eq i8 %i.az, 1
  br i1 %i.bf, label %bb.l, label %.lr.ph.preheader.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.bg = load ptr, ptr %i.bd, align 8, !tbaa !60
  store ptr %i.bg, ptr %i.ae, align 8, !tbaa !60
  br label %.lr.ph.preheader.i.i.i.i.i.i

_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i: ; preds = %bb.j
  %.idx.i.i.i = shl nuw nsw i64 %i.ba, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ae, ptr align 8 %i.bd, i64 %.idx.i.i.i, i1 false)
  %.pre.i.i.i = load i8, ptr %i.av, align 8, !tbaa !58
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
  %min.iters.check = icmp ult i64 %i.q, 6
  %i.r = mul nsw i64 %i.o, -8
  %diff.check = icmp ult i64 %i.r, 32
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
end_hunk_0
begin_hunk_1_@_ZNK6google8protobuf8internal14MessageCreator3NewINS0_11MessageLiteEEEPT_PKS5_S8_PNS0_5ArenaE:bb.a
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
  %i.bj = icmp eq i8 %i.be, 0
  %i.bk = icmp ult i32 %i.a, 33                   ; 2 uses
  br i1 %i.bj, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  br i1 %i.bk, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.b
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 -16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bm, i8 0, i64 16, i1 false)
  br label %bb.w

bb.q:                                             ; preds = %bb.o
  %i.bn = icmp ult i32 %i.a, 65
  br i1 %i.bn, label %bb.r, label %.preheader.i14

.preheader.i14:                                   ; preds = %bb.q
  %i.bo = icmp ugt i32 %i.a, 80
  br i1 %i.bo, label %.lr.ph64.i16, label %._crit_edge65.i15

bb.r:                                             ; preds = %bb.q
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bp, i8 0, i64 16, i1 false)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.b
  %i.br = getelementptr inbounds i8, ptr %i.bq, i64 -32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.br, i8 0, i64 32, i1 false)
  br label %bb.w

._crit_edge65.i15:                                ; preds = %.lr.ph64.i16, %.preheader.i14
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.b
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 -64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.bt, i8 0, i64 64, i1 false)
  br label %bb.w

.lr.ph64.i16:                                     ; preds = %.preheader.i14, %.lr.ph64.i16
  %i.bu = phi i64 [ %i.bx, %.lr.ph64.i16 ], [ 80, %.preheader.i14 ] ; 2 uses
  %.05563.i17 = phi i64 [ %i.bu, %.lr.ph64.i16 ], [ 16, %.preheader.i14 ]
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.05563.i17 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 64
  tail call void asm sideeffect "prefetchw $0", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i8) %i.bw) #15, !srcloc !101
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.bv, i8 0, i64 64, i1 false)
  %i.bx = add nuw nsw i64 %i.bu, 64               ; 2 uses
  %i.by = icmp samesign ult i64 %i.bx, %i.b
  br i1 %i.by, label %.lr.ph64.i16, label %._crit_edge65.i15, !llvm.loop !102

bb.s:                                             ; preds = %bb.n
  br i1 %i.bk, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.b
  %i.ca = getelementptr inbounds i8, ptr %i.bz, i64 -16
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 %i.b
  %i.cc = getelementptr inbounds i8, ptr %i.cb, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ca, ptr noundef nonnull align 1 dereferenceable(16) %i.cc, i64 16, i1 false)
  br label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.cd = icmp ult i32 %i.a, 65
  br i1 %i.cd, label %bb.v, label %.preheader61.i9

.preheader61.i9:                                  ; preds = %bb.u
  %i.ce = icmp ugt i32 %i.a, 80
  br i1 %i.ce, label %.lr.ph.i12, label %._crit_edge.i10

bb.v:                                             ; preds = %bb.u
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.cf, ptr noundef nonnull align 1 dereferenceable(16) %i.cg, i64 16, i1 false)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.b
  %i.ci = getelementptr inbounds i8, ptr %i.ch, i64 -32
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 %i.b
  %i.ck = getelementptr inbounds i8, ptr %i.cj, i64 -32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ci, ptr noundef nonnull align 1 dereferenceable(32) %i.ck, i64 32, i1 false)
  br label %bb.w

._crit_edge.i10:                                  ; preds = %.lr.ph.i12, %.preheader61.i9
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.b
  %i.cm = getelementptr inbounds i8, ptr %i.cl, i64 -64
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 %i.b
  %i.co = getelementptr inbounds i8, ptr %i.cn, i64 -64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.cm, ptr noundef nonnull align 1 dereferenceable(64) %i.co, i64 64, i1 false)
  br label %bb.w

.lr.ph.i12:                                       ; preds = %.preheader61.i9, %.lr.ph.i12
  %i.cp = phi i64 [ %i.cu, %.lr.ph.i12 ], [ 80, %.preheader61.i9 ] ; 2 uses
  %.062.i13 = phi i64 [ %i.cp, %.lr.ph.i12 ], [ 16, %.preheader61.i9 ] ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 %.062.i13 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.cr, i32 0, i32 3, i32 1)
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.062.i13 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 64
  tail call void asm sideeffect "prefetchw $0", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i8) %i.ct) #15, !srcloc !101
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.cs, ptr noundef nonnull align 1 dereferenceable(64) %i.cq, i64 64, i1 false)
  %i.cu = add nuw nsw i64 %i.cp, 64               ; 2 uses
  %i.cv = icmp samesign ult i64 %i.cu, %i.b
  br i1 %i.cv, label %.lr.ph.i12, label %._crit_edge.i10, !llvm.loop !103

bb.w:                                             ; preds = %._crit_edge.i10, %bb.v, %bb.t, %._crit_edge65.i15, %bb.r, %bb.p
  %i.cw = load i64, ptr %2, align 1
  store i64 %i.cw, ptr %i.bc, align 1
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr null, ptr %i.cx, align 1
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
end_hunk_1
