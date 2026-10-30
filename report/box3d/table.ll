Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d/original/table?download=true
inline.NumInlined: 13
inline.NumDeleted: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define hidden { ptr, i64 } @b3CreateSet(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %0, 16
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = add nsw i32 %0, -1
  %i.c = tail call range(i32 1, 28) i32 @llvm.ctlz.i32(i32 range(i32 16, 2147483647) %i.b, i1 true)
  %i.d = sub nuw nsw i32 32, %i.c
  %i.e = shl nuw i32 1, %i.d
  %.sroa.4.8.insert.ext = zext i32 %i.e to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.4.0 = phi i64 [ %.sroa.4.8.insert.ext, %bb.b ], [ 16, %bb.a ] ; 2 uses
  %i.f = shl nuw nsw i64 %.sroa.4.0, 4            ; 2 uses
  %i.g = tail call ptr @b3Alloc(i64 noundef %i.f) #10 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.g, i8 0, i64 %i.f, i1 false)
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %i.g, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.4.0, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

declare ptr @b3Alloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @b3DestroySet(ptr nofree noundef captures(none) initializes((12, 16)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !13
  %i.d = zext i32 %i.c to i64
  %i.e = shl nuw nsw i64 %i.d, 4
  tail call void @b3Free(ptr noundef %i.a, i64 noundef %i.e) #10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

declare void @b3Free(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @b3ClearSet(ptr nofree noundef captures(none) initializes((12, 16)) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.a, align 4, !tbaa !14
  %i.b = load ptr, ptr %0, align 8, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !13
  %i.e = zext i32 %i.d to i64
  %i.f = shl nuw nsw i64 %i.e, 4
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.f, i1 false)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden zeroext i1 @b3ContainsKey(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = lshr i64 %1, 33
  %i.b = xor i64 %i.a, %1
  %i.c = mul i64 %i.b, -49064778989728563         ; 2 uses
  %i.d = lshr i64 %i.c, 33
  %i.e = xor i64 %i.d, %i.c
  %i.f = mul i64 %i.e, -4265267296055464877       ; 2 uses
  %i.g = lshr i64 %i.f, 33
  %i.h = xor i64 %i.g, %i.f
  %i.i = trunc i64 %i.h to i32
  %.val = load ptr, ptr %0, align 8, !tbaa !12    ; 3 uses
  %i.j = getelementptr i8, ptr %0, i64 8
  %.val6 = load i32, ptr %i.j, align 8, !tbaa !13
  %i.k = add i32 %.val6, -1                       ; 2 uses
  %.01.i = and i32 %i.k, %i.i                     ; 2 uses
  %i.l = sext i32 %.01.i to i64                   ; 2 uses
  %i.m = getelementptr inbounds [16 x i8], ptr %.val, i64 %i.l ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !17
  %.not2.i = icmp eq i32 %i.o, 0
  br i1 %.not2.i, label %b3FindSlot.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %i.p = phi ptr [ %i.t, %bb.b ], [ %i.m, %bb.a ]
  %.03.i = phi i32 [ %.0.i, %bb.b ], [ %.01.i, %bb.a ] ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !18
  %.not11.i = icmp eq i64 %i.q, %1
  br i1 %.not11.i, label %.lr.ph.i.b3FindSlot.exit.loopexit_crit_edge, label %bb.b

.lr.ph.i.b3FindSlot.exit.loopexit_crit_edge:      ; preds = %.lr.ph.i
  %.pre7 = sext i32 %.03.i to i64
  br label %b3FindSlot.exit

bb.b:                                             ; preds = %.lr.ph.i
  %i.r = add nsw i32 %.03.i, 1
  %.0.i = and i32 %i.r, %i.k                      ; 2 uses
  %i.s = sext i32 %.0.i to i64                    ; 2 uses
  %i.t = getelementptr inbounds [16 x i8], ptr %.val, i64 %i.s ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i32, ptr %i.u, align 8, !tbaa !17
  %.not.i = icmp eq i32 %i.v, 0
  br i1 %.not.i, label %b3FindSlot.exit, label %.lr.ph.i, !llvm.loop !0

b3FindSlot.exit:                                  ; preds = %bb.b, %.lr.ph.i.b3FindSlot.exit.loopexit_crit_edge, %bb.a
  %.pre-phi = phi i64 [ %i.l, %bb.a ], [ %.pre7, %.lr.ph.i.b3FindSlot.exit.loopexit_crit_edge ], [ %i.s, %bb.b ]
  %i.w = getelementptr inbounds [16 x i8], ptr %.val, i64 %.pre-phi
  %i.x = load i64, ptr %i.w, align 8, !tbaa !18
  %i.y = icmp eq i64 %i.x, %1
  ret i1 %i.y
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden range(i32 0, -15) i32 @b3GetHashSetBytes(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !13
  %i.c = shl i32 %i.b, 4
  ret i32 %i.c
}

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @b3AddKey(ptr nofree noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i64 %1, 33
  %i.b = xor i64 %i.a, %1
  %i.c = mul i64 %i.b, -49064778989728563         ; 2 uses
  %i.d = lshr i64 %i.c, 33
  %i.e = xor i64 %i.d, %i.c
  %i.f = mul i64 %i.e, -4265267296055464877       ; 2 uses
  %i.g = lshr i64 %i.f, 33
  %i.h = xor i64 %i.g, %i.f
  %i.i = trunc i64 %i.h to i32                    ; 3 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !12    ; 5 uses
  %i.j = getelementptr i8, ptr %0, i64 8          ; 5 uses
  %.val13 = load i32, ptr %i.j, align 8, !tbaa !13 ; 5 uses
  %i.k = add i32 %.val13, -1                      ; 3 uses
  %.01.i = and i32 %i.k, %i.i                     ; 3 uses
  %i.l = sext i32 %.01.i to i64                   ; 2 uses
  %i.m = getelementptr inbounds [16 x i8], ptr %.val, i64 %i.l ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !17
  %.not2.i = icmp eq i32 %i.o, 0
  br i1 %.not2.i, label %b3FindSlot.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %i.p = phi ptr [ %i.t, %bb.b ], [ %i.m, %bb.a ]
  %.03.i = phi i32 [ %.0.i, %bb.b ], [ %.01.i, %bb.a ]
  %i.q = load i64, ptr %i.p, align 8, !tbaa !18
  %.not11.i = icmp eq i64 %i.q, %1                ; 3 uses
  br i1 %.not11.i, label %b3FindSlot.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.r = add nsw i32 %.03.i, 1
  %.0.i = and i32 %i.r, %i.k                      ; 2 uses
  %i.s = sext i32 %.0.i to i64
  %i.t = getelementptr inbounds [16 x i8], ptr %.val, i64 %i.s ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i32, ptr %i.u, align 8, !tbaa !17
  %.not.i = icmp eq i32 %i.v, 0
  br i1 %.not.i, label %b3FindSlot.exit, label %.lr.ph.i, !llvm.loop !0

b3FindSlot.exit:                                  ; preds = %.lr.ph.i, %bb.b, %bb.a
  %.not = phi i1 [ false, %bb.a ], [ %.not11.i, %bb.b ], [ %.not11.i, %.lr.ph.i ] ; 2 uses
  br i1 %.not, label %b3FindSlot.exit.a, label %.loopexit

.loopexit:                                        ; preds = %b3FindSlot.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 6 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !14
  %i.y = shl i32 %i.x, 1
  %.not12 = icmp ult i32 %i.y, %.val13
  br i1 %.not12, label %bb.g, label %bb.c

bb.c:                                             ; preds = %.loopexit
  store i32 0, ptr %i.w, align 4, !tbaa !14
  %i.z = shl i32 %.val13, 1                       ; 2 uses
  store i32 %i.z, ptr %i.j, align 8, !tbaa !13
  %i.aa = zext i32 %i.z to i64
  %i.ab = shl nuw nsw i64 %i.aa, 4
  %i.ac = tail call ptr @b3Alloc(i64 noundef %i.ab) #10 ; 2 uses
  store ptr %i.ac, ptr %0, align 8, !tbaa !12
  %i.ad = load i32, ptr %i.j, align 8, !tbaa !13
  %i.ae = zext i32 %i.ad to i64
  %i.af = shl nuw nsw i64 %i.ae, 4
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ac, i8 0, i64 %i.af, i1 false)
  %.not.i14 = icmp eq i32 %.val13, 0
  br i1 %.not.i14, label %b3GrowTable.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.c
  %wide.trip.count.i = zext i32 %.val13 to i64    ; 2 uses
  br label %.lr.ph.i15

._crit_edge.loopexit.i:                           ; preds = %bb.f
  %i.ag = shl nuw nsw i64 %wide.trip.count.i, 4
  br label %b3GrowTable.exit

.lr.ph.i15:                                       ; preds = %bb.f, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.f ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %indvars.iv.i ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !17 ; 3 uses
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i15
  %i.al = load i64, ptr %i.ah, align 8, !tbaa !18 ; 2 uses
  %.val.i.i = load ptr, ptr %0, align 8, !tbaa !12 ; 3 uses
  %.val10.i.i = load i32, ptr %i.j, align 8, !tbaa !13
  %i.am = add i32 %.val10.i.i, -1                 ; 2 uses
  %.01.i.i.i = and i32 %i.am, %i.aj               ; 2 uses
  %i.an = sext i32 %.01.i.i.i to i64              ; 2 uses
  %i.ao = getelementptr inbounds [16 x i8], ptr %.val.i.i, i64 %i.an ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !17
  %.not2.i.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not2.i.i.i, label %b3AddKeyHaveCapacity.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %bb.e
  %i.ar = phi ptr [ %i.av, %bb.e ], [ %i.ao, %bb.d ]
  %.03.i.i.i = phi i32 [ %.0.i.i.i, %bb.e ], [ %.01.i.i.i, %bb.d ] ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !18
  %.not11.i.i.i = icmp eq i64 %i.as, %i.al
  br i1 %.not11.i.i.i, label %.lr.ph.i.b3FindSlot.exit.loopexit_crit_edge.i.i, label %bb.e

.lr.ph.i.b3FindSlot.exit.loopexit_crit_edge.i.i:  ; preds = %.lr.ph.i.i.i
  %.pre11.i.i = sext i32 %.03.i.i.i to i64
  br label %b3AddKeyHaveCapacity.exit.i

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.at = add nsw i32 %.03.i.i.i, 1
  %.0.i.i.i = and i32 %i.at, %i.am                ; 2 uses
  %i.au = sext i32 %.0.i.i.i to i64               ; 2 uses
  %i.av = getelementptr inbounds [16 x i8], ptr %.val.i.i, i64 %i.au ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !17
  %.not.i.i.i = icmp eq i32 %i.ax, 0
  br i1 %.not.i.i.i, label %b3AddKeyHaveCapacity.exit.i, label %.lr.ph.i.i.i, !llvm.loop !0

b3AddKeyHaveCapacity.exit.i:                      ; preds = %bb.e, %.lr.ph.i.b3FindSlot.exit.loopexit_crit_edge.i.i, %bb.d
  %.pre-phi.i.i = phi i64 [ %i.an, %bb.d ], [ %.pre11.i.i, %.lr.ph.i.b3FindSlot.exit.loopexit_crit_edge.i.i ], [ %i.au, %bb.e ]
  %i.ay = getelementptr inbounds [16 x i8], ptr %.val.i.i, i64 %.pre-phi.i.i ; 2 uses
  store i64 %i.al, ptr %i.ay, align 8, !tbaa !18
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store i32 %i.aj, ptr %i.az, align 8, !tbaa !17
  %i.ba = load i32, ptr %i.w, align 4, !tbaa !14
  %i.bb = add i32 %i.ba, 1
  store i32 %i.bb, ptr %i.w, align 4, !tbaa !14
  br label %bb.f

bb.f:                                             ; preds = %b3AddKeyHaveCapacity.exit.i, %.lr.ph.i15
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i15, !llvm.loop !21

b3GrowTable.exit:                                 ; preds = %bb.c, %._crit_edge.loopexit.i
  %.pre-phi.i = phi i64 [ %i.ag, %._crit_edge.loopexit.i ], [ 0, %bb.c ]
  tail call void @b3Free(ptr noundef %.val, i64 noundef %.pre-phi.i) #10
  %.val.i.pre = load ptr, ptr %0, align 8, !tbaa !12
  %.val10.i.pre = load i32, ptr %i.j, align 8, !tbaa !13
  %.pre29 = add i32 %.val10.i.pre, -1             ; 2 uses
  %.pre31 = and i32 %.pre29, %i.i                 ; 2 uses
  %.pre32 = sext i32 %.pre31 to i64
  br label %bb.g

bb.g:                                             ; preds = %b3GrowTable.exit, %.loopexit
  %.pre-phi33 = phi i64 [ %.pre32, %b3GrowTable.exit ], [ %i.l, %.loopexit ] ; 2 uses
  %.01.i.i.pre-phi = phi i32 [ %.pre31, %b3GrowTable.exit ], [ %.01.i, %.loopexit ]
  %.pre-phi30 = phi i32 [ %.pre29, %b3GrowTable.exit ], [ %i.k, %.loopexit ]
  %.val.i = phi ptr [ %.val.i.pre, %b3GrowTable.exit ], [ %.val, %.loopexit ] ; 3 uses
  %i.bc = getelementptr inbounds [16 x i8], ptr %.val.i, i64 %.pre-phi33 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !17
  %.not2.i.i = icmp eq i32 %i.be, 0
  br i1 %.not2.i.i, label %b3AddKeyHaveCapacity.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g, %bb.h
  %i.bf = phi ptr [ %i.bj, %bb.h ], [ %i.bc, %bb.g ]
  %.03.i.i = phi i32 [ %.0.i.i, %bb.h ], [ %.01.i.i.pre-phi, %bb.g ] ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !18
  %.not11.i.i = icmp eq i64 %i.bg, %1
  br i1 %.not11.i.i, label %.lr.ph.i.b3FindSlot.exit.loopexit_crit_edge.i, label %bb.h

.lr.ph.i.b3FindSlot.exit.loopexit_crit_edge.i:    ; preds = %.lr.ph.i.i
  %.pre11.i = sext i32 %.03.i.i to i64
  br label %b3AddKeyHaveCapacity.exit

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.bh = add nsw i32 %.03.i.i, 1
  %.0.i.i = and i32 %i.bh, %.pre-phi30            ; 2 uses
  %i.bi = sext i32 %.0.i.i to i64                 ; 2 uses
  %i.bj = getelementptr inbounds [16 x i8], ptr %.val.i, i64 %i.bi ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !17
  %.not.i.i = icmp eq i32 %i.bl, 0
  br i1 %.not.i.i, label %b3AddKeyHaveCapacity.exit, label %.lr.ph.i.i, !llvm.loop !0

b3AddKeyHaveCapacity.exit:                        ; preds = %bb.h, %bb.g, %.lr.ph.i.b3FindSlot.exit.loopexit_crit_edge.i
  %.pre-phi.i16 = phi i64 [ %.pre-phi33, %bb.g ], [ %.pre11.i, %.lr.ph.i.b3FindSlot.exit.loopexit_crit_edge.i ], [ %i.bi, %bb.h ]
  %i.bm = getelementptr inbounds [16 x i8], ptr %.val.i, i64 %.pre-phi.i16 ; 2 uses
  store i64 %1, ptr %i.bm, align 8, !tbaa !18
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store i32 %i.i, ptr %i.bn, align 8, !tbaa !17
  %i.bo = load i32, ptr %i.w, align 4, !tbaa !14
  %i.bp = add i32 %i.bo, 1
  store i32 %i.bp, ptr %i.w, align 4, !tbaa !14
  br label %b3FindSlot.exit.a

b3FindSlot.exit.a:                                ; preds = %b3FindSlot.exit, %b3AddKeyHaveCapacity.exit
  ret i1 %.not
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @b3RemoveKey(ptr nofree noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = lshr i64 %1, 33
  %i.b = xor i64 %i.a, %1
  %i.c = mul i64 %i.b, -49064778989728563         ; 2 uses
  %i.d = lshr i64 %i.c, 33
  %i.e = xor i64 %i.d, %i.c
  %i.f = mul i64 %i.e, -4265267296055464877       ; 2 uses
  %i.g = lshr i64 %i.f, 33
  %i.h = xor i64 %i.g, %i.f
  %i.i = trunc i64 %i.h to i32
  %.val = load ptr, ptr %0, align 8, !tbaa !12    ; 6 uses
  %i.j = getelementptr i8, ptr %0, i64 8
  %.val50 = load i32, ptr %i.j, align 8, !tbaa !13
  %i.k = add i32 %.val50, -1                      ; 5 uses
  %.01.i = and i32 %i.k, %i.i                     ; 2 uses
  %i.l = sext i32 %.01.i to i64
  %i.m = getelementptr inbounds [16 x i8], ptr %.val, i64 %i.l ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !17
  %.not2.i = icmp eq i32 %i.o, 0
  br i1 %.not2.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %i.p = phi ptr [ %i.t, %bb.b ], [ %i.m, %bb.a ]
  %.03.i = phi i32 [ %.0.i, %bb.b ], [ %.01.i, %bb.a ] ; 4 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !18
  %.not11.i = icmp eq i64 %i.q, %1
  br i1 %.not11.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.r = add nsw i32 %.03.i, 1
  %.0.i = and i32 %i.r, %i.k                      ; 2 uses
  %i.s = sext i32 %.0.i to i64
  %i.t = getelementptr inbounds [16 x i8], ptr %.val, i64 %i.s ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i32, ptr %i.u, align 8, !tbaa !17
  %.not.i = icmp eq i32 %i.v, 0
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !0

bb.c:                                             ; preds = %.lr.ph.i
  %.phi.trans.insert.phi.trans.insert = sext i32 %.03.i to i64
  %i.w = getelementptr inbounds [16 x i8], ptr %.val, i64 %.phi.trans.insert.phi.trans.insert ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i64 0, ptr %i.w, align 8, !tbaa !18
  store i32 0, ptr %i.x, align 8, !tbaa !17
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !14
  %i.aa = add i32 %i.z, -1
  store i32 %i.aa, ptr %i.y, align 4, !tbaa !14
  %i.ab = add nsw i32 %.03.i, 1
  %i.ac = and i32 %i.ab, %i.k                     ; 2 uses
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds [16 x i8], ptr %.val, i64 %i.ad ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !17 ; 2 uses
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.g
  %i.ai = phi i32 [ %i.av, %bb.g ], [ %i.ag, %bb.c ]
  %i.aj = phi ptr [ %i.au, %bb.g ], [ %i.af, %bb.c ]
  %i.ak = phi ptr [ %i.at, %bb.g ], [ %i.ae, %bb.c ] ; 2 uses
  %i.al = phi i32 [ %i.ar, %bb.g ], [ %i.ac, %bb.c ] ; 4 uses
  %.04051 = phi i32 [ %.1, %bb.g ], [ %.03.i, %bb.c ] ; 5 uses
  %i.am = and i32 %i.ai, %i.k                     ; 2 uses
  %.not = icmp sgt i32 %.04051, %i.al
  %i.an = icmp sge i32 %.04051, %i.am             ; 2 uses
  %.not47 = icmp sgt i32 %i.am, %i.al             ; 2 uses
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %or.cond = or i1 %i.an, %.not47
  br i1 %or.cond, label %bb.f, label %bb.g

bb.e:                                             ; preds = %.lr.ph
  %or.cond49 = and i1 %i.an, %.not47
  br i1 %or.cond49, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ao = sext i32 %.04051 to i64
  %i.ap = getelementptr inbounds [16 x i8], ptr %.val, i64 %i.ao
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i64 16, i1 false), !tbaa.struct !23
  store i64 0, ptr %i.ak, align 8, !tbaa !18
  store i32 0, ptr %i.aj, align 8, !tbaa !17
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.f
  %.1 = phi i32 [ %.04051, %bb.d ], [ %i.al, %bb.f ], [ %.04051, %bb.e ]
  %i.aq = add nsw i32 %i.al, 1
  %i.ar = and i32 %i.aq, %i.k                     ; 2 uses
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds [16 x i8], ptr %.val, i64 %i.as ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 2 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !17 ; 2 uses
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %bb.b, %bb.g, %bb.a, %bb.c
  %i.ax = phi i1 [ true, %bb.g ], [ false, %bb.a ], [ true, %bb.c ], [ false, %bb.b ]
  ret i1 %i.ax
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #7

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden i32 @b3CountSetBits(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !28   ; 3 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !29     ; 2 uses
  %wide.trip.count = zext i32 %i.b to i64         ; 3 uses
  %min.iters.check = icmp ult i32 %i.b, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 4294967292   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.j, %vector.body ]
  %vec.phi11 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.k, %vector.body ]
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %wide.load = load <2 x i64>, ptr %i.d, align 8, !tbaa !20
  %wide.load12 = load <2 x i64>, ptr %i.e, align 8, !tbaa !20
  %i.f = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load)
  %i.g = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load12)
  %i.h = trunc nuw nsw <2 x i64> %i.f to <2 x i32>
  %i.i = trunc nuw nsw <2 x i64> %i.g to <2 x i32>
  %i.j = add <2 x i32> %vec.phi, %i.h             ; 2 uses
  %i.k = add <2 x i32> %vec.phi11, %i.i           ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !24

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.k, %i.j
  %i.m = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %.078.ph = phi i32 [ 0, %.lr.ph ], [ %i.m, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
  %.07.lcssa = phi i32 [ 0, %bb.a ], [ %i.m, %middle.block ], [ %i.r, %scalar.ph ]
  ret i32 %.07.lcssa

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.078 = phi i32 [ %i.r, %scalar.ph ], [ %.078.ph, %scalar.ph.preheader ]
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.o = load i64, ptr %i.n, align 8, !tbaa !20
  %i.p = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.o)
  %i.q = trunc nuw nsw i64 %i.p to i32
  %i.r = add nuw nsw i32 %.078, %i.q              ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !25
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.ctpop.v2i64(<2 x i64>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v2i32(<2 x i32>) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !19}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS9b3SetItem", !9, i64 0}
!11 = !{!"b3HashSet", !10, i64 0, !6, i64 8, !6, i64 12}
!12 = !{!11, !10, i64 0}
!13 = !{!11, !6, i64 8}
!14 = !{!11, !6, i64 12}
!15 = !{!"long", !5, i64 0}
!16 = !{!"b3SetItem", !15, i64 0, !6, i64 8}
!17 = !{!16, !6, i64 8}
!18 = !{!16, !15, i64 0}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!15, !15, i64 0}
!21 = distinct !{!21, !19}
!22 = !{!6, !6, i64 0}
!23 = !{i64 0, i64 8, !20, i64 8, i64 4, !22}
!24 = distinct !{!24, !19, !30, !31}
!25 = distinct !{!25, !19, !31, !30}
!26 = !{!"p1 long", !9, i64 0}
!27 = !{!"b3BitSet", !26, i64 0, !6, i64 8, !6, i64 12}
!28 = !{!27, !6, i64 12}
!29 = !{!27, !26, i64 0}
!30 = !{!"llvm.loop.isvectorized", i32 1}
!31 = !{!"llvm.loop.unroll.runtime.disable"}
end_hunk_0
