inline.NumInlined: 6
begin_hunk_0_@_Z8stricompPKcS0_:bb.a
  %i.n = tail call i32 @toupper(i32 noundef %i.m) #14
  %i.o = load i8, ptr %i.k, align 1, !tbaa !8
  %i.p = sext i8 %i.o to i32
  %i.q = tail call i32 @toupper(i32 noundef %i.p) #14
  %i.r = icmp eq i32 %i.n, %i.q
  br i1 %i.r, label %.lr.ph, label %._crit_edge, !llvm.loop !13

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.07.lcssa = phi ptr [ %0, %bb.a ], [ %i.j, %bb.b ]
  %.0.lcssa = phi ptr [ %1, %bb.a ], [ %i.k, %bb.b ]
  %i.s = icmp ult ptr %.07.lcssa, %.0.lcssa
  %i.t = select i1 %i.s, i32 -1, i32 1
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %._crit_edge
  %.08 = phi i32 [ %i.t, %._crit_edge ], [ 0, %.lr.ph ]
  ret i32 %.08
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @toupper(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define noundef range(i32 -1, 2) i32 @_Z9strnicompPKcS0_m(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readonly captures(address) %1, i64 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = load i8, ptr %0, align 1, !tbaa !8       ; 2 uses
  %i.c = sext i8 %i.b to i32
  %i.d = tail call i32 @toupper(i32 noundef %i.c) #14
  %i.e = load i8, ptr %1, align 1, !tbaa !8
  %i.f = sext i8 %i.e to i32
  %i.g = tail call i32 @toupper(i32 noundef %i.f) #14
  %i.h = icmp eq i32 %i.d, %i.g
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %bb.c
  %i.i = phi i8 [ %i.o, %bb.c ], [ %i.b, %.preheader ]
  %.018 = phi i64 [ %i.k, %bb.c ], [ %2, %.preheader ]
  %.0917 = phi ptr [ %i.n, %bb.c ], [ %1, %.preheader ]
  %.01016 = phi ptr [ %i.m, %bb.c ], [ %0, %.preheader ]
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.k = add i64 %.018, -1                        ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %.01016, i64 1 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.0917, i64 1 ; 3 uses
  %i.o = load i8, ptr %i.m, align 1, !tbaa !8     ; 2 uses
  %i.p = sext i8 %i.o to i32
  %i.q = tail call i32 @toupper(i32 noundef %i.p) #14
  %i.r = load i8, ptr %i.n, align 1, !tbaa !8
  %i.s = sext i8 %i.r to i32
  %i.t = tail call i32 @toupper(i32 noundef %i.s) #14
  %i.u = icmp eq i32 %i.q, %i.t
  br i1 %i.u, label %.lr.ph, label %._crit_edge, !llvm.loop !14

._crit_edge:                                      ; preds = %bb.c, %.preheader
  %.010.lcssa = phi ptr [ %0, %.preheader ], [ %i.m, %bb.c ]
  %.09.lcssa = phi ptr [ %1, %.preheader ], [ %i.n, %bb.c ]
  %i.v = icmp ult ptr %.010.lcssa, %.09.lcssa
  %i.w = select i1 %i.v, i32 -1, i32 1
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.b, %bb.a, %._crit_edge
  %.011 = phi i32 [ %i.w, %._crit_edge ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %.lr.ph ]
  ret i32 %.011
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef ptr @_Z9RemoveEOLPw(ptr nofree noundef returned captures(ret: address, provenance) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i64 @wcslen(ptr noundef %0) #14 ; 2 uses
  %i.b = trunc i64 %i.a to i32
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = and i64 %i.a, 2147483647
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.critedge2
  %indvars.iv = phi i64 [ %i.d, %.lr.ph.preheader ], [ %indvars.iv.next, %.critedge2 ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !11
  switch i32 %i.f, label %.critedge [
    i32 13, label %.critedge2
    i32 10, label %.critedge2
    i32 32, label %.critedge2
    i32 9, label %.critedge2
  ]

.critedge:                                        ; preds = %.critedge2, %.lr.ph, %bb.a
  ret ptr %0

.critedge2:                                       ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  store i32 0, ptr %i.e, align 4, !tbaa !11
  %i.g = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.g, label %.lr.ph, label %.critedge, !llvm.loop !15
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @wcslen(ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef ptr @_Z8RemoveLFPw(ptr nofree noundef returned captures(ret: address, provenance) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i64 @wcslen(ptr noundef %0) #14 ; 2 uses
  %i.b = trunc i64 %i.a to i32
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = and i64 %i.a, 2147483647
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.critedge2
  %indvars.iv = phi i64 [ %i.d, %.lr.ph.preheader ], [ %indvars.iv.next, %.critedge2 ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !11
  switch i32 %i.f, label %.critedge [
    i32 13, label %.critedge2
    i32 10, label %.critedge2
  ]

.critedge:                                        ; preds = %.critedge2, %.lr.ph, %bb.a
  ret ptr %0

.critedge2:                                       ; preds = %.lr.ph, %.lr.ph
  store i32 0, ptr %i.e, align 4, !tbaa !11
  %i.g = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.g, label %.lr.ph, label %.critedge, !llvm.loop !16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef signext i32 @_Z9etoupperww(i32 noundef signext %0) local_unnamed_addr #0 {
bb.a:
  %i.a = add i32 %0, -97
  %or.cond = icmp ult i32 %i.a, 26
  %i.b = add nsw i32 %0, -32
  %i.c = select i1 %or.cond, i32 %i.b, i32 %0
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @_Z7IsDigiti(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = add i32 %0, -48
  %i.b = icmp ult i32 %i.a, 10
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @_Z7IsSpacei(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %0, 32
  %i.b = icmp eq i32 %0, 9
  %i.c = or i1 %i.a, %i.b
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @_Z7IsAlphai(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = and i32 %0, -33
  %i.b = add i32 %i.a, -65
  %i.c = icmp ult i32 %i.b, 26
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_Z8BinToHexPKhmPcPwm(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3, i64 noundef %4) local_unnamed_addr #1 {
bb.a:
  %.not72 = icmp eq i64 %1, 0
  br i1 %.not72, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.not = icmp eq ptr %2, null
  %i.a = add i64 %4, -2                           ; 4 uses
  %.not55 = icmp eq ptr %3, null                  ; 2 uses
  br i1 %.not, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %.not55, label %.thread, label %.lr.ph.split.us.split

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us, %bb.c
  %indvars.iv81 = phi i64 [ %indvars.iv.next82, %bb.c ], [ 0, %.lr.ph.split.us ] ; 2 uses
  %.04157.us = phi i32 [ %.1.us, %bb.c ], [ 0, %.lr.ph.split.us ] ; 4 uses
  %i.b = zext i32 %.04157.us to i64               ; 2 uses
  %i.c = icmp ugt i64 %i.a, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.split.us.split
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv81
  %i.e = load i8, ptr %i.d, align 1, !tbaa !8     ; 2 uses
  %i.f = zext i8 %i.e to i32                      ; 2 uses
  %i.g = and i32 %i.f, 15                         ; 3 uses
  %i.h = icmp samesign ugt i32 %i.g, 9
  %i.i = add nuw nsw i32 %i.g, 87
  %i.j = or disjoint i32 %i.g, 48
  %i.k = select i1 %i.h, i32 %i.i, i32 %i.j
  %i.l = icmp ugt i8 %i.e, -97
  %i.m = lshr i32 %i.f, 4                         ; 2 uses
  %i.n = add nuw nsw i32 %i.m, 87
  %i.o = or disjoint i32 %i.m, 48
  %i.p = select i1 %i.l, i32 %i.n, i32 %i.o
  %i.q = add i32 %.04157.us, 1
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.b
  store i32 %i.p, ptr %i.r, align 4, !tbaa !11
  %i.s = add i32 %.04157.us, 2
  %i.t = zext i32 %i.q to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.t
  store i32 %i.k, ptr %i.u, align 4, !tbaa !11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.split.us.split
  %.1.us = phi i32 [ %i.s, %bb.b ], [ %.04157.us, %.lr.ph.split.us.split ] ; 2 uses
  %indvars.iv.next82 = add i64 %indvars.iv81, 1   ; 2 uses
  %5 = and i64 %indvars.iv.next82, 4294967295
  %i.v = icmp ugt i64 %1, %5
  br i1 %i.v, label %.lr.ph.split.us.split, label %._crit_edge, !llvm.loop !17

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %.not55, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %bb.e
  %indvars.iv77 = phi i64 [ %indvars.iv.next78, %bb.e ], [ 0, %.lr.ph.split ] ; 2 uses
  %.04256.us63 = phi i32 [ %.143.us64, %bb.e ], [ 0, %.lr.ph.split ] ; 4 uses
  %i.w = zext i32 %.04256.us63 to i64             ; 2 uses
  %i.x = icmp ugt i64 %i.a, %i.w
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.split.split.us
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv77
  %i.z = load i8, ptr %i.y, align 1, !tbaa !8     ; 3 uses
  %i.aa = and i8 %i.z, 15                         ; 3 uses
  %i.ab = icmp samesign ugt i8 %i.aa, 9
  %i.ac = add nuw nsw i8 %i.aa, 87
  %i.ad = or disjoint i8 %i.aa, 48
  %i.ae = select i1 %i.ab, i8 %i.ac, i8 %i.ad
  %i.af = icmp ugt i8 %i.z, -97
  %i.ag = lshr i8 %i.z, 4                         ; 2 uses
  %i.ah = add nuw nsw i8 %i.ag, 87
  %i.ai = or disjoint i8 %i.ag, 48
  %i.aj = select i1 %i.af, i8 %i.ah, i8 %i.ai
  %i.ak = add i32 %.04256.us63, 1
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 %i.w
  store i8 %i.aj, ptr %i.al, align 1, !tbaa !8
  %i.am = add i32 %.04256.us63, 2
  %i.an = zext i32 %i.ak to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 %i.an
  store i8 %i.ae, ptr %i.ao, align 1, !tbaa !8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.split.split.us
  %.143.us64 = phi i32 [ %i.am, %bb.d ], [ %.04256.us63, %.lr.ph.split.split.us ] ; 2 uses
  %indvars.iv.next78 = add i64 %indvars.iv77, 1   ; 2 uses
  %6 = and i64 %indvars.iv.next78, 4294967295
  %i.ap = icmp ugt i64 %1, %6
  br i1 %i.ap, label %.lr.ph.split.split.us, label %._crit_edge, !llvm.loop !17

._crit_edge:                                      ; preds = %bb.i, %bb.e, %bb.c, %bb.a
  %.042.lcssa = phi i32 [ 0, %bb.a ], [ %.143.us64, %bb.e ], [ 0, %bb.c ], [ %.143, %bb.i ]
  %.041.lcssa = phi i32 [ 0, %bb.a ], [ 0, %bb.e ], [ %.1.us, %bb.c ], [ %.1, %bb.i ]
  %i.aq = icmp ne ptr %2, null
  %i.ar = icmp ne i64 %4, 0                       ; 2 uses
  %or.cond = and i1 %i.aq, %i.ar
  br i1 %or.cond, label %bb.j, label %bb.k

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %bb.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.i ], [ 0, %.lr.ph.split ] ; 2 uses
  %.04157 = phi i32 [ %.1, %bb.i ], [ 0, %.lr.ph.split ] ; 4 uses
  %.04256 = phi i32 [ %.143, %bb.i ], [ 0, %.lr.ph.split ] ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.at = load i8, ptr %i.as, align 1, !tbaa !8   ; 2 uses
  %i.au = zext i8 %i.at to i32                    ; 2 uses
  %i.av = lshr i32 %i.au, 4                       ; 2 uses
  %i.aw = and i32 %i.au, 15                       ; 3 uses
  %i.ax = icmp ugt i8 %i.at, -97
  %i.ay = add nuw nsw i32 %i.av, 87
  %i.az = or disjoint i32 %i.av, 48
  %i.ba = select i1 %i.ax, i32 %i.ay, i32 %i.az   ; 2 uses
  %i.bb = icmp samesign ugt i32 %i.aw, 9
  %i.bc = add nuw nsw i32 %i.aw, 87
  %i.bd = or disjoint i32 %i.aw, 48
  %i.be = select i1 %i.bb, i32 %i.bc, i32 %i.bd   ; 2 uses
  %i.bf = zext i32 %.04256 to i64                 ; 2 uses
  %i.bg = icmp ugt i64 %i.a, %i.bf
  br i1 %i.bg, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.split.split
  %i.bh = trunc nuw nsw i32 %i.ba to i8
  %i.bi = add i32 %.04256, 1
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 %i.bf
  store i8 %i.bh, ptr %i.bj, align 1, !tbaa !8
  %i.bk = trunc nuw nsw i32 %i.be to i8
  %i.bl = add i32 %.04256, 2
  %i.bm = zext i32 %i.bi to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 %i.bm
  store i8 %i.bk, ptr %i.bn, align 1, !tbaa !8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.split.split
  %.143 = phi i32 [ %i.bl, %bb.f ], [ %.04256, %.lr.ph.split.split ] ; 2 uses
  %i.bo = zext i32 %.04157 to i64                 ; 2 uses
  %i.bp = icmp ugt i64 %i.a, %i.bo
  br i1 %i.bp, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bq = add i32 %.04157, 1
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bo
  store i32 %i.ba, ptr %i.br, align 4, !tbaa !11
  %i.bs = add i32 %.04157, 2
  %i.bt = zext i32 %i.bq to i64
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bt
  store i32 %i.be, ptr %i.bu, align 4, !tbaa !11
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.1 = phi i32 [ %i.bs, %bb.h ], [ %.04157, %bb.g ] ; 2 uses
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %7 = and i64 %indvars.iv.next, 4294967295
  %i.bv = icmp ugt i64 %1, %7
  br i1 %i.bv, label %.lr.ph.split.split, label %._crit_edge, !llvm.loop !17

bb.j:                                             ; preds = %._crit_edge
  %i.bw = zext i32 %.042.lcssa to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 %i.bw
  store i8 0, ptr %i.bx, align 1, !tbaa !8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge
  %i.by = icmp ne ptr %3, null
  %or.cond3 = and i1 %i.by, %i.ar
  br i1 %or.cond3, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  %i.bz = zext i32 %.041.lcssa to i64
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bz
  store i32 0, ptr %i.ca, align 4, !tbaa !11
  br label %.thread

.thread:                                          ; preds = %.lr.ph.split.us, %bb.l, %bb.k
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @_Z9GetDigitsj(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ugt i32 %0, 9
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.06 = phi i32 [ %i.c, %.lr.ph ], [ 1, %bb.a ]
  %.045 = phi i32 [ %i.b, %.lr.ph ], [ %0, %bb.a ] ; 2 uses
  %i.b = udiv i32 %.045, 10
  %i.c = add i32 %.06, 1                          ; 2 uses
  %i.d = icmp ugt i32 %.045, 99
  br i1 %i.d, label %.lr.ph, label %._crit_edge, !llvm.loop !18

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i32 [ 1, %bb.a ], [ %i.c, %.lr.ph ]
  ret i32 %.0.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_Z8LowAsciiPKc(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #8 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.06 = phi i64 [ 0, %bb.a ], [ %i.c, %bb.b ]    ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.06
  %i.b = load i8, ptr %i.a, align 1, !tbaa !8     ; 2 uses
  %or.cond = icmp slt i8 %i.b, 1
  %i.c = add i64 %.06, 1
  br i1 %or.cond, label %bb.c, label %bb.b, !llvm.loop !19

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq i8 %i.b, 0
  ret i1 %.not
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_Z8LowAsciiPKw(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #8 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.06 = phi i64 [ 0, %bb.a ], [ %i.d, %bb.b ]    ; 2 uses
  %i.a = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.06
  %i.b = load i32, ptr %i.a, align 4, !tbaa !11   ; 2 uses
  %i.c = add i32 %i.b, -128
  %or.cond = icmp ult i32 %i.c, -127
  %i.d = add i64 %.06, 1
  br i1 %or.cond, label %bb.c, label %bb.b, !llvm.loop !20

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq i32 %i.b, 0
  ret i1 %.not
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define noundef i32 @_Z9wcsicompcPKwS0_(ptr nofree noundef readonly %0, ptr nofree noundef readonly %1) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call i32 @wcscmp(ptr noundef %0, ptr noundef %1) #14
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @wcscmp(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define noundef i32 @_Z10wcsnicompcPKwS0_m(ptr nofree noundef readonly %0, ptr nofree noundef readonly %1, i64 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call i32 @wcsncmp(ptr noundef %0, ptr noundef %1, i64 noundef %2) #14
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @wcsncmp(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_Z8wcsncpyzPwPKwm(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.a = add i64 %2, -1                           ; 2 uses
  %.not1012 = icmp eq i64 %i.a, 0
  br i1 %.not1012, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.b
  %i.b = phi i64 [ %i.f, %bb.b ], [ %i.a, %.preheader ]
  %.0514 = phi ptr [ %i.d, %bb.b ], [ %1, %.preheader ] ; 2 uses
  %.0613 = phi ptr [ %i.e, %bb.b ], [ %0, %.preheader ] ; 3 uses
  %i.c = load i32, ptr %.0514, align 4, !tbaa !11 ; 2 uses
  %.not11 = icmp eq i32 %i.c, 0
  br i1 %.not11, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.d = getelementptr inbounds nuw i8, ptr %.0514, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %.0613, i64 4 ; 2 uses
  store i32 %i.c, ptr %.0613, align 4, !tbaa !11
  %i.f = add i64 %i.b, -1                         ; 2 uses
  %.not10 = icmp eq i64 %i.f, 0
  br i1 %.not10, label %.critedge, label %.lr.ph, !llvm.loop !21

.critedge:                                        ; preds = %.lr.ph, %bb.b, %.preheader
  %.06.lcssa = phi ptr [ %0, %.preheader ], [ %i.e, %bb.b ], [ %.0613, %.lr.ph ]
  store i32 0, ptr %.06.lcssa, align 4, !tbaa !11
  br label %bb.c

bb.c:                                             ; preds = %.critedge, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_Z8strncatzPcPKcm(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #14 ; 3 uses
  %i.b = icmp ugt i64 %2, %i.a
  br i1 %i.b, label %.preheader.i, label %_Z8strncpyzPcPKcm.exit

.preheader.i:                                     ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %i.a ; 2 uses
  %i.d = xor i64 %i.a, -1
  %i.e = add i64 %2, %i.d                         ; 2 uses
  %.not911.i = icmp eq i64 %i.e, 0
  br i1 %.not911.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.b
  %i.f = phi i64 [ %i.j, %bb.b ], [ %i.e, %.preheader.i ]
  %.0513.i = phi ptr [ %i.h, %bb.b ], [ %1, %.preheader.i ] ; 2 uses
  %.0612.i = phi ptr [ %i.i, %bb.b ], [ %i.c, %.preheader.i ] ; 3 uses
  %i.g = load i8, ptr %.0513.i, align 1, !tbaa !8 ; 2 uses
  %.not10.i = icmp eq i8 %i.g, 0
  br i1 %.not10.i, label %.critedge.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.h = getelementptr inbounds nuw i8, ptr %.0513.i, i64 1
  %i.i = getelementptr inbounds nuw i8, ptr %.0612.i, i64 1 ; 2 uses
  store i8 %i.g, ptr %.0612.i, align 1, !tbaa !8
  %i.j = add i64 %i.f, -1                         ; 2 uses
  %.not9.i = icmp eq i64 %i.j, 0
  br i1 %.not9.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !9

.critedge.i:                                      ; preds = %bb.b, %.lr.ph.i, %.preheader.i
  %.06.lcssa.i = phi ptr [ %i.c, %.preheader.i ], [ %.0612.i, %.lr.ph.i ], [ %i.i, %bb.b ]
  store i8 0, ptr %.06.lcssa.i, align 1, !tbaa !8
  br label %_Z8strncpyzPcPKcm.exit

_Z8strncpyzPcPKcm.exit:                           ; preds = %.critedge.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_Z8wcsncatzPwPKwm(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i64 @wcslen(ptr noundef %0) #14 ; 3 uses
  %i.b = icmp ugt i64 %2, %i.a
  br i1 %i.b, label %.preheader.i, label %_Z8wcsncpyzPwPKwm.exit

.preheader.i:                                     ; preds = %bb.a
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.a ; 2 uses
  %i.d = xor i64 %i.a, -1
  %i.e = add i64 %2, %i.d                         ; 2 uses
  %.not1012.i = icmp eq i64 %i.e, 0
  br i1 %.not1012.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.b
  %i.f = phi i64 [ %i.j, %bb.b ], [ %i.e, %.preheader.i ]
  %.0514.i = phi ptr [ %i.h, %bb.b ], [ %1, %.preheader.i ] ; 2 uses
  %.0613.i = phi ptr [ %i.i, %bb.b ], [ %i.c, %.preheader.i ] ; 3 uses
  %i.g = load i32, ptr %.0514.i, align 4, !tbaa !11 ; 2 uses
  %.not11.i = icmp eq i32 %i.g, 0
  br i1 %.not11.i, label %.critedge.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
end_hunk_0
