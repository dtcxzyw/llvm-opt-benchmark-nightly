Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/DetourNode?download=true
inline.NumInlined: 4
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@_ZN10dtNodePoolC1Eii = unnamed_addr alias void (ptr, i32, i32), ptr @_ZN10dtNodePoolC2Eii
@_ZN10dtNodePoolD1Ev = unnamed_addr alias void (ptr), ptr @_ZN10dtNodePoolD2Ev
@_ZN11dtNodeQueueC1Ei = unnamed_addr alias void (ptr, i32), ptr @_ZN11dtNodeQueueC2Ei
@_ZN11dtNodeQueueD1Ev = unnamed_addr alias void (ptr), ptr @_ZN11dtNodeQueueD2Ev

; Function Attrs: nounwind uwtable
define void @_ZN10dtNodePoolC2Eii(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(36) initializes((0, 36)) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  store i32 %1, ptr %i.c, align 8, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  store i32 %2, ptr %i.d, align 4, !tbaa !16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.e, align 8, !tbaa !17
  %i.f = sext i32 %1 to i64
  %i.g = mul nsw i64 %i.f, 28
  %i.h = tail call noundef ptr @_Z7dtAllocm11dtAllocHint(i64 noundef %i.g, i32 noundef 0) #7
  store ptr %i.h, ptr %0, align 8, !tbaa !18
  %i.i = load i32, ptr %i.c, align 8, !tbaa !15
  %i.j = sext i32 %i.i to i64
  %i.k = shl nsw i64 %i.j, 1
  %i.l = tail call noundef ptr @_Z7dtAllocm11dtAllocHint(i64 noundef %i.k, i32 noundef 0) #7
  store ptr %i.l, ptr %i.b, align 8, !tbaa !19
  %i.m = sext i32 %2 to i64
  %i.n = shl nsw i64 %i.m, 1
  %i.o = tail call noundef ptr @_Z7dtAllocm11dtAllocHint(i64 noundef %i.n, i32 noundef 0) #7 ; 2 uses
  store ptr %i.o, ptr %i.a, align 8, !tbaa !20
  %i.p = load i32, ptr %i.d, align 4, !tbaa !16
  %i.q = sext i32 %i.p to i64
  %i.r = shl nsw i64 %i.q, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %i.o, i8 -1, i64 %i.r, i1 false)
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.t = load i32, ptr %i.c, align 8, !tbaa !15
  %i.u = sext i32 %i.t to i64
  %i.v = shl nsw i64 %i.u, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %i.s, i8 -1, i64 %i.v, i1 false)
  ret void
}

declare noundef ptr @_Z7dtAllocm11dtAllocHint(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define void @_ZN10dtNodePoolD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(36) dereferenceable(36) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !18
  tail call void @_Z6dtFreePv(ptr noundef %i.a) #7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19
  tail call void @_Z6dtFreePv(ptr noundef %i.c) #7
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !20
  tail call void @_Z6dtFreePv(ptr noundef %i.e) #7
  ret void
}

declare void @_Z6dtFreePv(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN10dtNodePool5clearEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(36) initializes((32, 36)) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !16
  %i.e = sext i32 %i.d to i64
  %i.f = shl nsw i64 %i.e, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %i.b, i8 -1, i64 %i.f, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.g, align 8, !tbaa !17
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZN10dtNodePool9findNodesEjPP6dtNodei(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(36) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = shl i32 %1, 15
  %i.b = xor i32 %i.a, -1
  %i.c = add i32 %1, %i.b                         ; 2 uses
  %i.d = lshr i32 %i.c, 10
  %i.e = xor i32 %i.d, %i.c
  %i.f = mul i32 %i.e, 9                          ; 2 uses
  %i.g = lshr i32 %i.f, 6
  %i.h = xor i32 %i.g, %i.f                       ; 2 uses
  %i.i = shl i32 %i.h, 11
  %i.j = xor i32 %i.i, -1
  %i.k = add i32 %i.h, %i.j                       ; 2 uses
  %i.l = lshr i32 %i.k, 16
  %i.m = xor i32 %i.l, %i.k
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.o = load i32, ptr %i.n, align 4, !tbaa !16
  %i.p = add nsw i32 %i.o, -1
  %i.q = and i32 %i.p, %i.m
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !20
  %i.t = zext i32 %i.q to i64
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.t
  %.017 = load i16, ptr %i.u, align 2, !tbaa !22  ; 2 uses
  %.not18 = icmp eq i16 %.017, -1
  br i1 %.not18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %4 = load ptr, ptr %i.v, align 8
  %i.w = load ptr, ptr %0, align 8, !tbaa !18
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %5 = phi ptr [ %i.w, %.lr.ph ], [ %6, %bb.e ]   ; 2 uses
  %.020 = phi i16 [ %.017, %.lr.ph ], [ %.0, %bb.e ]
  %.01419 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.e ] ; 5 uses
  %i.x = zext i16 %.020 to i64                    ; 2 uses
  %i.y = getelementptr inbounds nuw [28 x i8], ptr %5, i64 %i.x ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !25
  %i.ab = icmp eq i32 %i.aa, %1
  br i1 %i.ab, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %.not16 = icmp slt i32 %.01419, %3
  br i1 %.not16, label %bb.d, label %._crit_edge

bb.d:                                             ; preds = %bb.c
  %i.ac = add nsw i32 %.01419, 1
  %i.ad = sext i32 %.01419 to i64
  %i.ae = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ad
  store ptr %i.y, ptr %i.ae, align 8, !tbaa !26
  %.pre = load ptr, ptr %0, align 8, !tbaa !18
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %6 = phi ptr [ %.pre, %bb.d ], [ %5, %bb.b ]
  %.1 = phi i32 [ %i.ac, %bb.d ], [ %.01419, %bb.b ] ; 2 uses
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.x
  %.0 = load i16, ptr %i.af, align 2, !tbaa !22   ; 2 uses
  %.not = icmp eq i16 %.0, -1
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.c, %bb.e, %bb.a
  %.014.lcssa = phi i32 [ 0, %bb.a ], [ %.1, %bb.e ], [ %.01419, %bb.c ]
  ret i32 %.014.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @_ZN10dtNodePool8findNodeEjh(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(36) %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = shl i32 %1, 15
  %i.b = xor i32 %i.a, -1
  %i.c = add i32 %1, %i.b                         ; 2 uses
  %i.d = lshr i32 %i.c, 10
  %i.e = xor i32 %i.d, %i.c
  %i.f = mul i32 %i.e, 9                          ; 2 uses
  %i.g = lshr i32 %i.f, 6
  %i.h = xor i32 %i.g, %i.f                       ; 2 uses
  %i.i = shl i32 %i.h, 11
  %i.j = xor i32 %i.i, -1
  %i.k = add i32 %i.h, %i.j                       ; 2 uses
  %i.l = lshr i32 %i.k, 16
  %i.m = xor i32 %i.l, %i.k
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.o = load i32, ptr %i.n, align 4, !tbaa !16
  %i.p = add nsw i32 %i.o, -1
  %i.q = and i32 %i.p, %i.m
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !20
  %i.t = zext i32 %i.q to i64
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.t
  %.011 = load i16, ptr %i.u, align 2, !tbaa !22  ; 2 uses
  %.not12 = icmp eq i16 %.011, -1
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.v = load ptr, ptr %0, align 8, !tbaa !18
  %i.w = zext i8 %2 to i32
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.013 = phi i16 [ %.011, %.lr.ph ], [ %.0, %bb.d ]
  %i.z = zext i16 %.013 to i64                    ; 2 uses
  %i.aa = getelementptr inbounds nuw [28 x i8], ptr %i.v, i64 %i.z ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !25
  %i.ad = icmp eq i32 %i.ac, %1
  br i1 %i.ad, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 20
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = lshr i32 %i.af, 24
  %i.ah = and i32 %i.ag, 3
  %i.ai = icmp eq i32 %i.ah, %i.w
  br i1 %i.ai, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %i.z
  %.0 = load i16, ptr %i.aj, align 2, !tbaa !22   ; 2 uses
  %.not = icmp eq i16 %.0, -1
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.c, %bb.d, %bb.a
  %.010 = phi ptr [ null, %bb.a ], [ null, %bb.d ], [ %i.aa, %bb.c ]
  ret ptr %.010
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @_ZN10dtNodePool7getNodeEjh(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(36) %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = shl i32 %1, 15
  %i.b = xor i32 %i.a, -1
  %i.c = add i32 %1, %i.b                         ; 2 uses
  %i.d = lshr i32 %i.c, 10
  %i.e = xor i32 %i.d, %i.c
  %i.f = mul i32 %i.e, 9                          ; 2 uses
  %i.g = lshr i32 %i.f, 6
  %i.h = xor i32 %i.g, %i.f                       ; 2 uses
  %i.i = shl i32 %i.h, 11
  %i.j = xor i32 %i.i, -1
  %i.k = add i32 %i.h, %i.j                       ; 2 uses
  %i.l = lshr i32 %i.k, 16
  %i.m = xor i32 %i.l, %i.k
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.o = load i32, ptr %i.n, align 4, !tbaa !16
  %i.p = add nsw i32 %i.o, -1
  %i.q = and i32 %i.p, %i.m
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !20
  %i.t = zext i32 %i.q to i64                     ; 2 uses
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.t
  %.027 = load i16, ptr %i.u, align 2, !tbaa !22  ; 2 uses
  %.not28 = icmp eq i16 %.027, -1
  br i1 %.not28, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.v = load ptr, ptr %0, align 8, !tbaa !18
  %i.w = zext i8 %2 to i32
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.029 = phi i16 [ %.027, %.lr.ph ], [ %.0, %bb.d ]
  %i.z = zext i16 %.029 to i64                    ; 2 uses
  %i.aa = getelementptr inbounds nuw [28 x i8], ptr %i.v, i64 %i.z ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !25
  %i.ad = icmp eq i32 %i.ac, %1
  br i1 %i.ad, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 20
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = lshr i32 %i.af, 24
  %i.ah = and i32 %i.ag, 3
  %i.ai = icmp eq i32 %i.ah, %i.w
  br i1 %i.ai, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %i.z
  %.0 = load i16, ptr %i.aj, align 2, !tbaa !22   ; 2 uses
  %.not = icmp eq i16 %.0, -1
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !17 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.an = load i32, ptr %i.am, align 8, !tbaa !15
  %.not26 = icmp slt i32 %i.al, %i.an
  br i1 %.not26, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %._crit_edge
  %i.ao = trunc i32 %i.al to i16
  %i.ap = add nsw i32 %i.al, 1
  store i32 %i.ap, ptr %i.ak, align 8, !tbaa !17
  %i.aq = load ptr, ptr %0, align 8, !tbaa !18
  %.mask = and i32 %i.al, 65535
  %i.ar = zext nneg i32 %.mask to i64             ; 2 uses
  %i.as = getelementptr inbounds nuw [28 x i8], ptr %i.aq, i64 %i.ar ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 20 ; 2 uses
  %i.au = load i32, ptr %i.at, align 4
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  store <2 x float> zeroinitializer, ptr %i.av, align 4, !tbaa !33
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  store i32 %1, ptr %i.aw, align 4, !tbaa !25
  %i.ax = and i8 %2, 3
  %i.ay = zext nneg i8 %i.ax to i32
  %i.az = shl nuw nsw i32 %i.ay, 24
  %i.ba = and i32 %i.au, -536870912
  %i.bb = or disjoint i32 %i.ba, %i.az
  store i32 %i.bb, ptr %i.at, align 4
  %i.bc = load ptr, ptr %i.r, align 8, !tbaa !20
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %i.bc, i64 %i.t ; 2 uses
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !22
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !19
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %i.bg, i64 %i.ar
  store i16 %i.be, ptr %i.bh, align 2, !tbaa !22
  store i16 %i.ao, ptr %i.bd, align 2, !tbaa !22
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %._crit_edge, %bb.e
  %.024 = phi ptr [ %i.as, %bb.e ], [ null, %._crit_edge ], [ %i.aa, %bb.c ]
  ret ptr %.024
}

; Function Attrs: nounwind uwtable
define void @_ZN11dtNodeQueueC2Ei(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, i32 noundef %1) unnamed_addr #0 align 2 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !30
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %i.a, align 8, !tbaa !34
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.b, align 4, !tbaa !31
  %i.c = add nsw i32 %1, 1
  %i.d = sext i32 %i.c to i64
  %i.e = shl nsw i64 %i.d, 3
  %i.f = tail call noundef ptr @_Z7dtAllocm11dtAllocHint(i64 noundef %i.e, i32 noundef 0) #7
  store ptr %i.f, ptr %0, align 8, !tbaa !30
  ret void
}

; Function Attrs: nounwind uwtable
define void @_ZN11dtNodeQueueD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(16) dereferenceable(16) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !30
  tail call void @_Z6dtFreePv(ptr noundef %i.a) #7
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN11dtNodeQueue8bubbleUpEiP6dtNode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #6 align 2 {
bb.a:
end_hunk_0
