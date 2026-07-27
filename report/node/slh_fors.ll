inline.NumInlined: 9
inline.NumDeleted: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.wpacket_st = type { ptr, ptr, i64, i64, i64, ptr, i8 }

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ossl_slh_fors_sign(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 14 uses
  %i.b = alloca [35 x i32], align 16              ; 5 uses
  %i.c = alloca [32 x i8], align 16               ; 8 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 160
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !16   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load i32, ptr %i.g, align 8, !tbaa !25
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 36
  %i.j = load i32, ptr %i.i, align 4, !tbaa !28   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.l = load i32, ptr %i.k, align 8, !tbaa !29
  %.fr66 = freeze i32 %i.l                        ; 7 uses
  %i.m = shl nuw i32 1, %.fr66                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #3
  %i.n = zext i32 %i.j to i64                     ; 3 uses
  %notmask.i = shl nsw i32 -1, %.fr66
  %i.o = xor i32 %notmask.i, -1
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %.critedge, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a, %._crit_edge.i
  %.031.i = phi ptr [ %.1.lcssa.i, %._crit_edge.i ], [ %1, %bb.a ] ; 2 uses
  %.01530.i = phi i32 [ %.116.lcssa.i, %._crit_edge.i ], [ 0, %bb.a ] ; 2 uses
  %.01729.i = phi i32 [ %i.x, %._crit_edge.i ], [ 0, %bb.a ] ; 3 uses
  %.01928.i = phi i64 [ %i.ab, %._crit_edge.i ], [ 0, %bb.a ]
  %.02027.i = phi ptr [ %i.aa, %._crit_edge.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.p = icmp ult i32 %.01729.i, %.fr66
  br i1 %i.p, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.124.i = phi ptr [ %i.r, %.lr.ph.i ], [ %.031.i, %.preheader.i ] ; 2 uses
  %.11623.i = phi i32 [ %i.u, %.lr.ph.i ], [ %.01530.i, %.preheader.i ]
  %.11822.i = phi i32 [ %i.v, %.lr.ph.i ], [ %.01729.i, %.preheader.i ]
  %i.q = shl i32 %.11623.i, 8
  %i.r = getelementptr inbounds nuw i8, ptr %.124.i, i64 1 ; 2 uses
  %i.s = load i8, ptr %.124.i, align 1, !tbaa !30
  %i.t = zext i8 %i.s to i32
  %i.u = or disjoint i32 %i.q, %i.t               ; 2 uses
  %i.v = add i32 %.11822.i, 8                     ; 3 uses
  %i.w = icmp ult i32 %i.v, %.fr66
  br i1 %i.w, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !31

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.preheader.i
  %.118.lcssa.i = phi i32 [ %.01729.i, %.preheader.i ], [ %i.v, %.lr.ph.i ]
  %.116.lcssa.i = phi i32 [ %.01530.i, %.preheader.i ], [ %i.u, %.lr.ph.i ] ; 2 uses
  %.1.lcssa.i = phi ptr [ %.031.i, %.preheader.i ], [ %i.r, %.lr.ph.i ]
  %i.x = sub nuw i32 %.118.lcssa.i, %.fr66        ; 2 uses
  %i.y = lshr i32 %.116.lcssa.i, %i.x
  %i.z = and i32 %i.y, %i.o
  %i.aa = getelementptr inbounds nuw i8, ptr %.02027.i, i64 4
  store i32 %i.z, ptr %.02027.i, align 4, !tbaa !33
  %i.ab = add nuw nsw i64 %.01928.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ab, %i.n
  br i1 %exitcond.not.i, label %.lr.ph58, label %.preheader.i, !llvm.loop !34

.lr.ph58:                                         ; preds = %._crit_edge.i
  %i.ac = zext i32 %i.h to i64                    ; 3 uses
  %.not67 = icmp eq i32 %.fr66, 0
  br i1 %.not67, label %.lr.ph58.split, label %.lr.ph58.split.us

.lr.ph58.split.us:                                ; preds = %.lr.ph58, %._crit_edge.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge.us ], [ 0, %.lr.ph58 ] ; 2 uses
  %.04157.us = phi i32 [ %i.be, %._crit_edge.us ], [ 0, %.lr.ph58 ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !33 ; 2 uses
  %i.af = add i32 %i.ae, %.04157.us
  %i.ag = load ptr, ptr %0, align 8, !tbaa !10    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 168
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !35 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 80
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !36
  call void %i.ak(ptr noundef nonnull %i.a, ptr noundef %4) #3, !inline_history !38
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !39
  call void %i.am(ptr noundef nonnull %i.a, i32 noundef 6) #3, !inline_history !38
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !40
  call void %i.ao(ptr noundef nonnull %i.a, ptr noundef %4) #3, !inline_history !38
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 64
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !41
  call void %i.aq(ptr noundef nonnull %i.a, i32 noundef %i.af) #3, !inline_history !38
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ag, i64 176
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !42
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !43
  %i.av = call i32 %i.au(ptr noundef nonnull %0, ptr noundef %3, ptr noundef %2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, i64 noundef 32) #3, !inline_history !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  %.not.us = icmp eq i32 %i.av, 0
  br i1 %.not.us, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph58.split.us
  %i.aw = call i32 @WPACKET_memcpy(ptr noundef %5, ptr noundef nonnull %i.c, i64 noundef %i.ac) #3
  %.not47.us = icmp eq i32 %i.aw, 0
  br i1 %.not47.us, label %.critedge, label %.preheader.us

.preheader.us:                                    ; preds = %bb.b, %bb.d
  %.04055.us = phi i32 [ %i.bc, %bb.d ], [ %i.ae, %bb.b ] ; 2 uses
  %.04554.us = phi i32 [ %i.bd, %bb.d ], [ 0, %bb.b ] ; 2 uses
  %.04653.us = phi i32 [ %i.bb, %bb.d ], [ %.04157.us, %bb.b ] ; 2 uses
  %i.ax = xor i32 %.04055.us, 1
  %i.ay = add i32 %i.ax, %.04653.us
  %i.az = call fastcc i32 @slh_fors_node(ptr noundef nonnull %0, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %i.ay, i32 noundef %.04554.us, ptr noundef %i.c)
  %.not48.us = icmp eq i32 %i.az, 0
  br i1 %.not48.us, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.preheader.us
  %i.ba = call i32 @WPACKET_memcpy(ptr noundef %5, ptr noundef nonnull %i.c, i64 noundef %i.ac) #3
  %.not49.us = icmp eq i32 %i.ba, 0
  br i1 %.not49.us, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bb = lshr i32 %.04653.us, 1
  %i.bc = lshr i32 %.04055.us, 1
  %i.bd = add nuw i32 %.04554.us, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.bd, %.fr66
  br i1 %exitcond.not, label %._crit_edge.us, label %.preheader.us, !llvm.loop !45

._crit_edge.us:                                   ; preds = %bb.d
  %i.be = add i32 %.04157.us, %i.m
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond74.not = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %exitcond74.not, label %.critedge, label %.lr.ph58.split.us, !llvm.loop !46

.lr.ph58.split:                                   ; preds = %.lr.ph58, %.preheader
  %indvars.iv75 = phi i64 [ %indvars.iv.next76, %.preheader ], [ 0, %.lr.ph58 ] ; 2 uses
  %.04157 = phi i32 [ %i.bz, %.preheader ], [ 0, %.lr.ph58 ] ; 2 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv75
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !33
  %i.bh = add i32 %i.bg, %.04157
  %i.bi = load ptr, ptr %0, align 8, !tbaa !10    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 168
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !35 ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 80
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !36
  call void %i.bm(ptr noundef nonnull %i.a, ptr noundef %4) #3, !inline_history !38
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !39
  call void %i.bo(ptr noundef nonnull %i.a, i32 noundef 6) #3, !inline_history !38
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !40
  call void %i.bq(ptr noundef nonnull %i.a, ptr noundef %4) #3, !inline_history !38
  %i.br = getelementptr inbounds nuw i8, ptr %i.bk, i64 64
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !41
  call void %i.bs(ptr noundef nonnull %i.a, i32 noundef %i.bh) #3, !inline_history !38
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bi, i64 176
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !42
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !43
  %i.bx = call i32 %i.bw(ptr noundef nonnull %0, ptr noundef %3, ptr noundef %2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, i64 noundef 32) #3, !inline_history !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  %.not = icmp eq i32 %i.bx, 0
  br i1 %.not, label %.critedge, label %bb.e

bb.e:                                             ; preds = %.lr.ph58.split
  %i.by = call i32 @WPACKET_memcpy(ptr noundef %5, ptr noundef nonnull %i.c, i64 noundef %i.ac) #3
  %.not47 = icmp eq i32 %i.by, 0
  br i1 %.not47, label %.critedge, label %.preheader

.preheader:                                       ; preds = %bb.e
  %i.bz = add i32 %.04157, %i.m
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1 ; 2 uses
  %exitcond79.not = icmp eq i64 %indvars.iv.next76, %i.n
  br i1 %exitcond79.not, label %.critedge, label %.lr.ph58.split, !llvm.loop !46

.critedge:                                        ; preds = %._crit_edge.us, %bb.b, %.lr.ph58.split.us, %bb.c, %.preheader.us, %.preheader, %bb.e, %.lr.ph58.split, %bb.a
  %.2 = phi i32 [ 0, %bb.c ], [ 1, %bb.a ], [ 1, %.preheader ], [ 0, %bb.e ], [ 0, %.lr.ph58.split ], [ 0, %.preheader.us ], [ 1, %._crit_edge.us ], [ 0, %.lr.ph58.split.us ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  ret i32 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @WPACKET_memcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @slh_fors_node(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull %6) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 7 uses
  %i.b = alloca [32 x i8], align 16               ; 5 uses
  %i.c = alloca [32 x i8], align 16               ; 4 uses
  %i.d = alloca [32 x i8], align 16               ; 4 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !10     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #3
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 160
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !16
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !25
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 168
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !35   ; 7 uses
  %i.l = icmp eq i32 %5, 0
  br i1 %i.l, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !36
  call void %i.n(ptr noundef nonnull %i.a, ptr noundef %3) #3, !inline_history !38
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !39
  call void %i.p(ptr noundef nonnull %i.a, i32 noundef 6) #3, !inline_history !38
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !40
  call void %i.r(ptr noundef nonnull %i.a, ptr noundef %3) #3, !inline_history !38
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 64 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !41
  call void %i.t(ptr noundef nonnull %i.a, i32 noundef %4) #3, !inline_history !38
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 176 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !42
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !43
  %i.y = call i32 %i.x(ptr noundef nonnull %0, ptr noundef %2, ptr noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i64 noundef 32) #3, !inline_history !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  %.not50 = icmp eq i32 %i.y, 0
  br i1 %.not50, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !47
  call void %i.aa(ptr noundef %3, i32 noundef 0) #3
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !41
  call void %i.ab(ptr noundef %3, i32 noundef %4) #3
  %i.ac = load ptr, ptr %i.u, align 8, !tbaa !42
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !48
  %i.af = zext i32 %i.i to i64                    ; 2 uses
  %i.ag = call i32 %i.ae(ptr noundef nonnull %0, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %i.b, i64 noundef %i.af, ptr noundef nonnull %6, i64 noundef 32) #3
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.b, i64 noundef %i.af) #3
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.ah = shl i32 %4, 1                           ; 2 uses
  %i.ai = add i32 %5, -1                          ; 2 uses
  %i.aj = call fastcc i32 @slh_fors_node(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %i.ah, i32 noundef %i.ai, ptr noundef %i.c)
  %.not = icmp eq i32 %i.aj, 0
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ak = or disjoint i32 %i.ah, 1
  %i.al = call fastcc i32 @slh_fors_node(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %i.ak, i32 noundef %i.ai, ptr noundef %i.d)
  %.not48 = icmp eq i32 %i.al, 0
  br i1 %.not48, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !47
  call void %i.an(ptr noundef %3, i32 noundef %5) #3
  %i.ao = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !41
  call void %i.ap(ptr noundef %3, i32 noundef %4) #3
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 176
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !42
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !49
  %i.au = call i32 %i.at(ptr noundef nonnull %0, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %6, i64 noundef 32) #3
  %.not49 = icmp ne i32 %i.au, 0
  %. = zext i1 %.not49 to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d, %bb.e, %bb.b, %bb.c
  %.0 = phi i32 [ %i.ag, %bb.c ], [ 0, %bb.b ], [ 0, %bb.d ], [ %., %bb.f ], [ 0, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @ossl_slh_fors_pk_from_sig(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [35 x i32], align 16              ; 5 uses
  %i.b = alloca [10080 x i8], align 16            ; 4 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 9 uses
  %7 = alloca %struct.wpacket_st, align 8         ; 7 uses
  %i.e = alloca [32 x i8], align 16               ; 6 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !10     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 160
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !16   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load i32, ptr %i.i, align 8, !tbaa !29
  %.fr131 = freeze i32 %i.j                       ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 36
  %i.l = load i32, ptr %i.k, align 4, !tbaa !28   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.n = load i32, ptr %i.m, align 8, !tbaa !25
  %i.o = shl nuw i32 1, %.fr131                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #3
  store i64 0, ptr %i.c, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #3
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 168
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !35   ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !41   ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !47   ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 176
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !42   ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !48   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !49  ; 2 uses
  %i.ab = call i32 @WPACKET_init_static_len(ptr noundef nonnull %7, ptr noundef nonnull %i.b, i64 noundef 10080, i64 noundef 0) #3
  %.not = icmp eq i32 %i.ab, 0
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ac = zext i32 %i.l to i64                    ; 3 uses
  %notmask.i = shl nsw i32 -1, %.fr131
  %i.ad = xor i32 %notmask.i, -1
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %._crit_edge129, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b, %._crit_edge.i
  %.031.i = phi ptr [ %.1.lcssa.i, %._crit_edge.i ], [ %2, %bb.b ] ; 2 uses
  %.01530.i = phi i32 [ %.116.lcssa.i, %._crit_edge.i ], [ 0, %bb.b ] ; 2 uses
  %.01729.i = phi i32 [ %i.am, %._crit_edge.i ], [ 0, %bb.b ] ; 3 uses
  %.01928.i = phi i64 [ %i.aq, %._crit_edge.i ], [ 0, %bb.b ]
  %.02027.i = phi ptr [ %i.ap, %._crit_edge.i ], [ %i.a, %bb.b ] ; 2 uses
  %i.ae = icmp ult i32 %.01729.i, %.fr131
  br i1 %i.ae, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.124.i = phi ptr [ %i.ag, %.lr.ph.i ], [ %.031.i, %.preheader.i ] ; 2 uses
  %.11623.i = phi i32 [ %i.aj, %.lr.ph.i ], [ %.01530.i, %.preheader.i ]
  %.11822.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %.01729.i, %.preheader.i ]
  %i.af = shl i32 %.11623.i, 8
  %i.ag = getelementptr inbounds nuw i8, ptr %.124.i, i64 1 ; 2 uses
  %i.ah = load i8, ptr %.124.i, align 1, !tbaa !30
  %i.ai = zext i8 %i.ah to i32
  %i.aj = or disjoint i32 %i.af, %i.ai            ; 2 uses
  %i.ak = add i32 %.11822.i, 8                    ; 3 uses
  %i.al = icmp ult i32 %i.ak, %.fr131
  br i1 %i.al, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !31

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.preheader.i
  %.118.lcssa.i = phi i32 [ %.01729.i, %.preheader.i ], [ %i.ak, %.lr.ph.i ]
  %.116.lcssa.i = phi i32 [ %.01530.i, %.preheader.i ], [ %i.aj, %.lr.ph.i ] ; 2 uses
  %.1.lcssa.i = phi ptr [ %.031.i, %.preheader.i ], [ %i.ag, %.lr.ph.i ]
  %i.am = sub nuw i32 %.118.lcssa.i, %.fr131      ; 2 uses
  %i.an = lshr i32 %.116.lcssa.i, %i.am
  %i.ao = and i32 %i.an, %i.ad
  %i.ap = getelementptr inbounds nuw i8, ptr %.02027.i, i64 4
  store i32 %i.ao, ptr %.02027.i, align 4, !tbaa !33
  %i.aq = add nuw nsw i64 %.01928.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.aq, %i.ac
  br i1 %exitcond.not.i, label %.lr.ph128, label %.preheader.i, !llvm.loop !34

.lr.ph128:                                        ; preds = %._crit_edge.i
  %i.ar = zext i32 %i.n to i64                    ; 17 uses
  %i.as = getelementptr i8, ptr %1, i64 8         ; 6 uses
  %.not132 = icmp eq i32 %.fr131, 0
  br i1 %.not132, label %.lr.ph128.split, label %.lr.ph128.split.us

.lr.ph128.split.us:                               ; preds = %.lr.ph128, %._crit_edge.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge.us ], [ 0, %.lr.ph128 ] ; 2 uses
  %.090126.us = phi i32 [ %i.bt, %._crit_edge.us ], [ 0, %.lr.ph128 ] ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.au = load i32, ptr %i.at, align 4, !tbaa !33 ; 2 uses
  %i.av = add i32 %i.au, %.090126.us              ; 2 uses
  call void %i.u(ptr noundef %4, i32 noundef 0) #3
  call void %i.s(ptr noundef %4, i32 noundef %i.av) #3
  %.val.i.i.us = load i64, ptr %i.as, align 8, !tbaa !51 ; 2 uses
  %i.aw = icmp ult i64 %.val.i.i.us, %i.ar
  br i1 %i.aw, label %.thread, label %bb.c

bb.c:                                             ; preds = %.lr.ph128.split.us
  %i.ax = load ptr, ptr %1, align 8, !tbaa !53    ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ar
  store ptr %i.ay, ptr %1, align 8, !tbaa !53
  %i.az = sub nuw i64 %.val.i.i.us, %i.ar
  store i64 %i.az, ptr %i.as, align 8, !tbaa !51
  %i.ba = call i32 @WPACKET_allocate_bytes(ptr noundef nonnull %7, i64 noundef %i.ar, ptr noundef nonnull %i.d) #3
  %.not94.us = icmp eq i32 %i.ba, 0
  br i1 %.not94.us, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bb = load ptr, ptr %i.d, align 8, !tbaa !54
  %i.bc = call i32 %i.y(ptr noundef nonnull %0, ptr noundef %3, ptr noundef %4, ptr noundef %i.ax, i64 noundef %i.ar, ptr noundef %i.bb, i64 noundef %i.ar) #3
  %.not95.us = icmp eq i32 %i.bc, 0
  br i1 %.not95.us, label %.thread, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %bb.d
  %i.bd = load ptr, ptr %i.d, align 8, !tbaa !54  ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph.us, %bb.i
  %.0125.us = phi i32 [ %i.av, %.lr.ph.us ], [ %.1.us, %bb.i ] ; 2 uses
  %.083124.us = phi i32 [ %i.au, %.lr.ph.us ], [ %i.bs, %bb.i ] ; 2 uses
  %.089123.us = phi i32 [ 0, %.lr.ph.us ], [ %i.bi, %bb.i ]
  %.val.i.i100.us = load i64, ptr %i.as, align 8, !tbaa !51 ; 2 uses
  %i.be = icmp ult i64 %.val.i.i100.us, %i.ar
  br i1 %i.be, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bf = load ptr, ptr %1, align 8, !tbaa !53    ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.ar
  store ptr %i.bg, ptr %1, align 8, !tbaa !53
  %i.bh = sub nuw i64 %.val.i.i100.us, %i.ar
  store i64 %i.bh, ptr %i.as, align 8, !tbaa !51
  %i.bi = add nuw i32 %.089123.us, 1              ; 3 uses
  call void %i.u(ptr noundef %4, i32 noundef %i.bi) #3
  %i.bj = and i32 %.083124.us, 1
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bl = add i32 %.0125.us, -1
  %i.bm = lshr i32 %i.bl, 1                       ; 2 uses
  call void %i.s(ptr noundef %4, i32 noundef %i.bm) #3
  %i.bn = load ptr, ptr %i.d, align 8, !tbaa !54
  %i.bo = call i32 %i.aa(ptr noundef nonnull %0, ptr noundef %3, ptr noundef %4, ptr noundef %i.bf, ptr noundef %i.bn, ptr noundef %i.bd, i64 noundef %i.ar) #3
  %.not97.us = icmp eq i32 %i.bo, 0
  br i1 %.not97.us, label %.thread, label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.bp = lshr i32 %.0125.us, 1                   ; 2 uses
  call void %i.s(ptr noundef %4, i32 noundef %i.bp) #3
  %i.bq = load ptr, ptr %i.d, align 8, !tbaa !54
  %i.br = call i32 %i.aa(ptr noundef nonnull %0, ptr noundef %3, ptr noundef %4, ptr noundef %i.bq, ptr noundef %i.bf, ptr noundef %i.bd, i64 noundef %i.ar) #3
  %.not98.us = icmp eq i32 %i.br, 0
  br i1 %.not98.us, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.1.us = phi i32 [ %i.bp, %bb.h ], [ %i.bm, %bb.g ]
  %i.bs = lshr i32 %.083124.us, 1
  %exitcond.not = icmp eq i32 %i.bi, %.fr131
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.e, !llvm.loop !55

._crit_edge.us:                                   ; preds = %bb.i
  %i.bt = add i32 %.090126.us, %i.o
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond139.not = icmp eq i64 %indvars.iv.next, %i.ac
  br i1 %exitcond139.not, label %._crit_edge129, label %.lr.ph128.split.us, !llvm.loop !56

.lr.ph128.split:                                  ; preds = %.lr.ph128, %bb.l
  %indvars.iv140 = phi i64 [ %indvars.iv.next141, %bb.l ], [ 0, %.lr.ph128 ] ; 2 uses
  %.090126 = phi i32 [ %i.ce, %bb.l ], [ 0, %.lr.ph128 ] ; 2 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv140
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !33
  %i.bw = add i32 %i.bv, %.090126
  call void %i.u(ptr noundef %4, i32 noundef 0) #3
  call void %i.s(ptr noundef %4, i32 noundef %i.bw) #3
  %.val.i.i = load i64, ptr %i.as, align 8, !tbaa !51 ; 2 uses
  %i.bx = icmp ult i64 %.val.i.i, %i.ar
  br i1 %i.bx, label %.thread, label %bb.j

bb.j:                                             ; preds = %.lr.ph128.split
  %i.by = load ptr, ptr %1, align 8, !tbaa !53    ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.ar
  store ptr %i.bz, ptr %1, align 8, !tbaa !53
  %i.ca = sub nuw i64 %.val.i.i, %i.ar
  store i64 %i.ca, ptr %i.as, align 8, !tbaa !51
  %i.cb = call i32 @WPACKET_allocate_bytes(ptr noundef nonnull %7, i64 noundef %i.ar, ptr noundef nonnull %i.d) #3
  %.not94 = icmp eq i32 %i.cb, 0
  br i1 %.not94, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cc = load ptr, ptr %i.d, align 8, !tbaa !54
  %i.cd = call i32 %i.y(ptr noundef nonnull %0, ptr noundef %3, ptr noundef %4, ptr noundef %i.by, i64 noundef %i.ar, ptr noundef %i.cc, i64 noundef %i.ar) #3
  %.not95 = icmp eq i32 %i.cd, 0
  br i1 %.not95, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ce = add i32 %.090126, %i.o
  %indvars.iv.next141 = add nuw nsw i64 %indvars.iv140, 1 ; 2 uses
  %exitcond144.not = icmp eq i64 %indvars.iv.next141, %i.ac
  br i1 %exitcond144.not, label %._crit_edge129, label %.lr.ph128.split, !llvm.loop !56

._crit_edge129:                                   ; preds = %._crit_edge.us, %bb.l, %bb.b
  %i.cf = call i32 @WPACKET_get_total_written(ptr noundef nonnull %7, ptr noundef nonnull %i.c) #3
  %.not92 = icmp eq i32 %i.cf, 0
  br i1 %.not92, label %.thread, label %bb.m

bb.m:                                             ; preds = %._crit_edge129
  %i.cg = getelementptr inbounds nuw i8, ptr %i.q, i64 80
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !36
  call void %i.ch(ptr noundef nonnull %i.e, ptr noundef %4) #3
  %i.ci = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !39
  call void %i.cj(ptr noundef nonnull %i.e, i32 noundef 4) #3
  %i.ck = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !40
  call void %i.cl(ptr noundef nonnull %i.e, ptr noundef %4) #3
  %i.cm = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !57
  %i.co = load i64, ptr %i.c, align 8, !tbaa !50
  %i.cp = call i32 %i.cn(ptr noundef nonnull %0, ptr noundef %3, ptr noundef nonnull %i.e, ptr noundef nonnull %i.b, i64 noundef %i.co, ptr noundef %5, i64 noundef %6) #3
  br label %.thread

.thread:                                          ; preds = %bb.d, %bb.c, %.lr.ph128.split.us, %bb.h, %bb.g, %bb.e, %bb.k, %bb.j, %.lr.ph128.split, %._crit_edge129, %bb.m
  %.086 = phi i32 [ 0, %._crit_edge129 ], [ %i.cp, %bb.m ], [ 0, %bb.h ], [ 0, %bb.k ], [ 0, %.lr.ph128.split ], [ 0, %bb.j ], [ 0, %bb.e ], [ 0, %bb.g ], [ 0, %.lr.ph128.split.us ], [ 0, %bb.c ], [ 0, %bb.d ]
  %i.cq = call i32 @WPACKET_finish(ptr noundef nonnull %7) #3
  %.not99 = icmp eq i32 %i.cq, 0
  %spec.select = select i1 %.not99, i32 0, i32 %.086
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %.thread
  %.085 = phi i32 [ 0, %bb.a ], [ %spec.select, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  ret i32 %.085
}

declare i32 @WPACKET_init_static_len(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @WPACKET_allocate_bytes(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @WPACKET_get_total_written(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @WPACKET_finish(ptr noundef) local_unnamed_addr #2

declare void @OPENSSL_cleanse(ptr noundef, i64 noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!5}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"__libc_errno", !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !12, i64 0}
!11 = !{!"slh_dsa_hash_ctx_st", !12, i64 0, !14, i64 8, !14, i64 16, !15, i64 24, !7, i64 32}
!12 = !{!"p1 _ZTS14slh_dsa_key_st", !13, i64 0}
!13 = !{!"any pointer", !8, i64 0}
!14 = !{!"p1 _ZTS13evp_md_ctx_st", !13, i64 0}
!15 = !{!"p1 _ZTS14evp_mac_ctx_st", !13, i64 0}
!16 = !{!17, !20, i64 160}
!17 = !{!"slh_dsa_key_st", !8, i64 0, !18, i64 128, !19, i64 136, !18, i64 144, !7, i64 152, !20, i64 160, !21, i64 168, !22, i64 176, !23, i64 184, !23, i64 192, !24, i64 200}
!18 = !{!"p1 omnipotent char", !13, i64 0}
!19 = !{!"p1 _ZTS15ossl_lib_ctx_st", !13, i64 0}
!20 = !{!"p1 _ZTS17slh_dsa_params_st", !13, i64 0}
!21 = !{!"p1 _ZTS16slh_adrs_func_st", !13, i64 0}
!22 = !{!"p1 _ZTS16slh_hash_func_st", !13, i64 0}
!23 = !{!"p1 _ZTS9evp_md_st", !13, i64 0}
!24 = !{!"p1 _ZTS10evp_mac_st", !13, i64 0}
!25 = !{!26, !7, i64 16}
!26 = !{!"slh_dsa_params_st", !18, i64 0, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !27, i64 56}
!27 = !{!"long", !8, i64 0}
!28 = !{!26, !7, i64 36}
!29 = !{!26, !7, i64 32}
!30 = !{!8, !8, i64 0}
!31 = distinct !{!31, !32}
!32 = !{!"llvm.loop.mustprogress"}
!33 = !{!7, !7, i64 0}
!34 = distinct !{!34, !32}
!35 = !{!17, !21, i64 168}
!36 = !{!37, !13, i64 80}
!37 = !{!"slh_adrs_func_st", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80}
!38 = distinct !{null}
!39 = !{!37, !13, i64 16}
!40 = !{!37, !13, i64 32}
!41 = !{!37, !13, i64 64}
!42 = !{!17, !22, i64 176}
!43 = !{!44, !13, i64 8}
!44 = !{!"slh_hash_func_st", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40}
!45 = distinct !{!45, !32}
!46 = distinct !{!46, !32}
!47 = !{!37, !13, i64 48}
!48 = !{!44, !13, i64 24}
!49 = !{!44, !13, i64 32}
!50 = !{!27, !27, i64 0}
!51 = !{!52, !27, i64 8}
!52 = !{!"", !18, i64 0, !27, i64 8}
!53 = !{!52, !18, i64 0}
!54 = !{!18, !18, i64 0}
!55 = distinct !{!55, !32}
!56 = distinct !{!56, !32}
!57 = !{!44, !13, i64 40}
end_hunk_0
