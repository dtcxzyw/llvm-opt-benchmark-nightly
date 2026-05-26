inline.NumInlined: 4
inline.NumDeleted: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lmat = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr }
%struct.smat = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i64, i64 }

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 17) i32 @cli_regexec(ptr noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef captures(none) %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.lmat, align 8               ; 34 uses
  %6 = alloca %struct.smat, align 8               ; 20 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 16 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !14
  %.not = icmp eq i32 %i.c, 62053
  br i1 %.not, label %bb.b, label %bb.dz

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %i.b, align 8, !tbaa !15
  %.not17 = icmp eq i32 %i.d, 53829
  br i1 %.not17, label %bb.c, label %bb.dz

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.f = load i32, ptr %i.e, align 8, !tbaa !18
  %i.g = and i32 %i.f, 4
  %.not18 = icmp eq i32 %i.g, 0
  br i1 %.not18, label %bb.d, label %bb.dz

bb.d:                                             ; preds = %bb.c
  %i.h = and i32 %4, 7                            ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !19   ; 2 uses
  %i.k = icmp ult i64 %i.j, 65
  %i.l = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %.not158.i = icmp samesign ult i32 %i.h, 4      ; 2 uses
  br i1 %i.k, label %bb.e, label %bb.bo

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.p = load i64, ptr %i.m, align 8, !tbaa !20
  %i.q = add nsw i64 %i.p, 1                      ; 11 uses
  %i.r = load i64, ptr %i.n, align 8, !tbaa !21   ; 11 uses
  %i.s = load i32, ptr %i.o, align 8, !tbaa !22
  %i.t = and i32 %i.s, 4
  %.not.i = icmp eq i32 %i.t, 0
  %spec.select.i = select i1 %.not.i, i64 %2, i64 0 ; 4 uses
  br i1 %.not158.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = load i64, ptr %3, align 8, !tbaa !23
  %i.v = getelementptr inbounds i8, ptr %1, i64 %i.u ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !25
  %.pre240.i = ptrtoint ptr %i.v to i64
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.y = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #15
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0138233.pre-phi.i = phi i64 [ %i.l, %bb.g ], [ %.pre240.i, %bb.f ]
  %.0138.i = phi ptr [ %1, %bb.g ], [ %i.v, %bb.f ] ; 7 uses
  %.pn.i = phi i64 [ %i.y, %bb.g ], [ %i.x, %bb.f ] ; 2 uses
  %.0.i = getelementptr inbounds i8, ptr %1, i64 %.pn.i ; 9 uses
  %i.z = icmp ult ptr %.0.i, %.0138.i
  br i1 %i.z, label %smatcher.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !26 ; 3 uses
  %.not159.i = icmp eq ptr %i.ab, null
  br i1 %.not159.i, label %bb.n, label %.preheader191.i

.preheader191.i:                                  ; preds = %bb.i
  %i.ac = icmp ult ptr %.0138.i, %.0.i
  br i1 %i.ac, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader191.i
  %i.ad = load i8, ptr %i.ab, align 1, !tbaa !27
  %i.ae = ptrtoint ptr %.0.i to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.ag = sub i64 %i.l, %.0138233.pre-phi.i
  %i.ah = getelementptr i8, ptr %.0138.i, i64 %i.ag
  %scevgep.i = getelementptr i8, ptr %i.ah, i64 %.pn.i ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.m, %.lr.ph.i
  %.0141211.i = phi ptr [ %.0138.i, %.lr.ph.i ], [ %i.ap, %bb.m ] ; 5 uses
  %i.ai = load i8, ptr %.0141211.i, align 1, !tbaa !27
  %i.aj = icmp eq i8 %i.ai, %i.ad
  br i1 %i.aj, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ak = ptrtoint ptr %.0141211.i to i64
  %i.al = sub i64 %i.ae, %i.ak
  %i.am = load i32, ptr %i.af, align 8, !tbaa !28
  %i.an = sext i32 %i.am to i64                   ; 2 uses
  %.not160.i = icmp slt i64 %i.al, %i.an
  br i1 %.not160.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %.0141211.i, ptr nonnull %i.ab, i64 %i.an)
  %i.ao = icmp eq i32 %bcmp.i, 0
  br i1 %i.ao, label %._crit_edge.i, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %.0141211.i, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.ap, %scevgep.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.j, !llvm.loop !29

._crit_edge.i:                                    ; preds = %bb.m, %bb.l, %.preheader191.i
  %.0141.lcssa.i = phi ptr [ %.0138.i, %.preheader191.i ], [ %scevgep.i, %bb.m ], [ %.0141211.i, %bb.l ]
  %i.aq = icmp eq ptr %.0141.lcssa.i, %.0.i
  br i1 %i.aq, label %smatcher.exit, label %bb.n

bb.n:                                             ; preds = %._crit_edge.i, %bb.i
  store ptr %i.b, ptr %6, align 8, !tbaa !31
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store i32 %i.h, ptr %i.ar, align 8, !tbaa !35
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr null, ptr %i.as, align 8, !tbaa !36
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 5 uses
  store ptr null, ptr %i.at, align 8, !tbaa !37
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  store ptr %1, ptr %i.au, align 8, !tbaa !38
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  store ptr %.0138.i, ptr %i.av, align 8, !tbaa !39
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  store ptr %.0.i, ptr %i.aw, align 8, !tbaa !40
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.ay = shl nuw i64 1, %i.q                     ; 2 uses
  %i.az = shl nuw i64 1, %i.r
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 6 uses
  %i.bb = icmp eq i64 %spec.select.i, 0           ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 120 ; 3 uses
  %i.bd = icmp eq i64 %spec.select.i, 1           ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 128 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ax, i8 0, i64 32, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %bb.bc, %bb.n
  %.1.i = phi ptr [ %.0138.i, %bb.n ], [ %i.fv, %bb.bc ] ; 3 uses
  %i.bf = load ptr, ptr %i.av, align 8, !tbaa !39
  %i.bg = icmp eq ptr %.1.i, %i.bf
  br i1 %i.bg, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bh = getelementptr inbounds i8, ptr %.1.i, i64 -1
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !27
  %i.bj = sext i8 %i.bi to i32
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bk = phi i32 [ %i.bj, %bb.p ], [ 128, %bb.o ]
  %i.bl = load ptr, ptr %6, align 8, !tbaa !31    ; 9 uses
  %i.bm = call fastcc i64 @sstep(ptr noundef %i.bl, i64 noundef range(i64 -9223372036854775807, -9223372036854775808) %i.q, i64 noundef %i.r, i64 noundef %i.ay, i32 noundef 132, i64 noundef %i.ay) ; 3 uses
  %i.bn = load ptr, ptr %i.aw, align 8, !tbaa !40
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 40 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 76
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 80
  %i.br = load i32, ptr %i.ar, align 8            ; 2 uses
  %i.bs = and i32 %i.br, 1
  %.not117.i.i = icmp eq i32 %i.bs, 0
  %i.bt = and i32 %i.br, 2
  %.not119.i.i = icmp eq i32 %i.bt, 0
  br label %bb.r

bb.r:                                             ; preds = %bb.ak, %bb.q
  %.0111.i.i = phi i64 [ %i.bm, %bb.q ], [ %i.dp, %bb.ak ] ; 3 uses
  %.0110.i.i = phi ptr [ %.1.i, %bb.q ], [ %i.dq, %bb.ak ] ; 5 uses
  %.0109.i.i = phi i32 [ %i.bk, %bb.q ], [ %i.bx, %bb.ak ] ; 7 uses
  %.0.i.i = phi ptr [ null, %bb.q ], [ %spec.select.i.i, %bb.ak ]
  %i.bu = icmp eq ptr %.0110.i.i, %i.bn
  br i1 %i.bu, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bv = load i8, ptr %.0110.i.i, align 1, !tbaa !27
  %i.bw = sext i8 %i.bv to i32
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bx = phi i32 [ %i.bw, %bb.s ], [ 128, %bb.r ] ; 10 uses
  %i.by = icmp eq i64 %.0111.i.i, %i.bm
  %spec.select.i.i = select i1 %i.by, ptr %.0110.i.i, ptr %.0.i.i ; 5 uses
  switch i32 %.0109.i.i, label %bb.x [
    i32 10, label %bb.u
    i32 128, label %bb.v
  ]

bb.u:                                             ; preds = %bb.t
  %i.bz = load i32, ptr %i.bo, align 8, !tbaa !22
  %i.ca = and i32 %i.bz, 8
  %.not.i.i = icmp eq i32 %i.ca, 0
  br i1 %.not.i.i, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.t
  br i1 %.not117.i.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.cb = load i32, ptr %i.bp, align 4, !tbaa !41
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u, %bb.t
  %i.cc = phi i32 [ 131, %bb.w ], [ 130, %bb.v ], [ 130, %bb.t ], [ 130, %bb.u ]
  %.0105.i.i = phi i32 [ 129, %bb.w ], [ 0, %bb.v ], [ 0, %bb.t ], [ 0, %bb.u ] ; 3 uses
  %.0103.i.i = phi i32 [ %i.cb, %bb.w ], [ 0, %bb.v ], [ 0, %bb.t ], [ 0, %bb.u ] ; 4 uses
  switch i32 %i.bx, label %bb.ab [
    i32 10, label %bb.y
    i32 128, label %bb.z
  ]

bb.y:                                             ; preds = %bb.x
  %i.cd = load i32, ptr %i.bo, align 8, !tbaa !22
  %i.ce = and i32 %i.cd, 8
  %.not118.i.i = icmp eq i32 %i.ce, 0
  br i1 %.not118.i.i, label %bb.ab, label %bb.aa

bb.z:                                             ; preds = %bb.x
  br i1 %.not119.i.i, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.cf = load i32, ptr %i.bq, align 8, !tbaa !42
  %i.cg = add nsw i32 %i.cf, %.0103.i.i
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y, %bb.x
  %.1106.i.i = phi i32 [ %i.cc, %bb.aa ], [ %.0105.i.i, %bb.z ], [ %.0105.i.i, %bb.x ], [ %.0105.i.i, %bb.y ] ; 4 uses
  %.1104.i.i = phi i32 [ %i.cg, %bb.aa ], [ %.0103.i.i, %bb.z ], [ %.0103.i.i, %bb.x ], [ %.0103.i.i, %bb.y ] ; 2 uses
  %i.ch = icmp sgt i32 %.1104.i.i, 0
  br i1 %i.ch, label %.preheader.i.i, label %.loopexit.i.i

.preheader.i.i:                                   ; preds = %bb.ab, %.preheader.i.i
  %.1112.i.i = phi i64 [ %i.ci, %.preheader.i.i ], [ %.0111.i.i, %bb.ab ] ; 2 uses
  %.2.i.i = phi i32 [ %i.cj, %.preheader.i.i ], [ %.1104.i.i, %bb.ab ] ; 2 uses
  %i.ci = call fastcc i64 @sstep(ptr noundef %i.bl, i64 noundef range(i64 -9223372036854775807, -9223372036854775808) %i.q, i64 noundef %i.r, i64 noundef %.1112.i.i, i32 noundef %.1106.i.i, i64 noundef %.1112.i.i) ; 2 uses
  %i.cj = add nsw i32 %.2.i.i, -1
  %.old17.i.i = icmp samesign ugt i32 %.2.i.i, 1
  br i1 %.old17.i.i, label %.preheader.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.preheader.i.i, %bb.ab
  %.2113.i.i = phi i64 [ %.0111.i.i, %bb.ab ], [ %i.ci, %.preheader.i.i ] ; 4 uses
  %i.ck = icmp eq i32 %.1106.i.i, 129
  br i1 %i.ck, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %.loopexit.i.i
  %.not120.i.i = icmp eq i32 %.0109.i.i, 128
  br i1 %.not120.i.i, label %.thread.thread.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cl = tail call ptr @__ctype_b_loc() #16
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !43 ; 3 uses
  %i.cn = sext i32 %.0109.i.i to i64
  %i.co = getelementptr inbounds [2 x i8], ptr %i.cm, i64 %i.cn
  %i.cp = load i16, ptr %i.co, align 2, !tbaa !45
  %i.cq = and i16 %i.cp, 8                        ; 2 uses
  %i.cr = icmp eq i16 %i.cq, 0
  %i.cs = icmp ne i32 %.0109.i.i, 95
  %or.cond.not123.i.i = select i1 %i.cr, i1 %i.cs, i1 false
  %i.ct = icmp ne i32 %i.bx, 128
  %or.cond3.i.i = select i1 %or.cond.not123.i.i, i1 %i.ct, i1 false
  br i1 %or.cond3.i.i, label %bb.af, label %.thread130.i.i

bb.ae:                                            ; preds = %.loopexit.i.i
  %.old2.not.i.i = icmp eq i32 %i.bx, 128
  br i1 %.old2.not.i.i, label %bb.ag, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.ae
  %.pre140.i.i = tail call ptr @__ctype_b_loc() #16
  %.pre.i = load ptr, ptr %.pre140.i.i, align 8, !tbaa !43
  br label %bb.af

bb.af:                                            ; preds = %._crit_edge.i.i, %bb.ad
  %i.cu = phi ptr [ %.pre.i, %._crit_edge.i.i ], [ %i.cm, %bb.ad ]
  %i.cv = sext i32 %i.bx to i64
  %i.cw = getelementptr inbounds [2 x i8], ptr %i.cu, i64 %i.cv
  %i.cx = load i16, ptr %i.cw, align 2, !tbaa !45
  %i.cy = and i16 %i.cx, 8
  %i.cz = icmp ne i16 %i.cy, 0
  %i.da = icmp eq i32 %i.bx, 95
  %or.cond6.i.i = select i1 %i.cz, i1 true, i1 %i.da
  %spec.select127.i.i = select i1 %or.cond6.i.i, i32 133, i32 %.1106.i.i
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.2107.i.i = phi i32 [ 129, %bb.ae ], [ %spec.select127.i.i, %bb.af ] ; 2 uses
  %.not124.i.i = icmp eq i32 %.0109.i.i, 128
  br i1 %.not124.i.i, label %.thread.i.i, label %..thread130_crit_edge.i.i

..thread130_crit_edge.i.i:                        ; preds = %bb.ag
  %.pre.i.i = tail call ptr @__ctype_b_loc() #16
  %.pre138.i.i = sext i32 %.0109.i.i to i64
  %.pre236.i = load ptr, ptr %.pre.i.i, align 8, !tbaa !43 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds [2 x i8], ptr %.pre236.i, i64 %.pre138.i.i
  %.pre237.i = load i16, ptr %.phi.trans.insert.i, align 2, !tbaa !45
  %.pre241.i = and i16 %.pre237.i, 8
  br label %.thread130.i.i

.thread130.i.i:                                   ; preds = %..thread130_crit_edge.i.i, %bb.ad
  %.pre-phi.i = phi i16 [ %.pre241.i, %..thread130_crit_edge.i.i ], [ %i.cq, %bb.ad ]
  %i.db = phi ptr [ %.pre236.i, %..thread130_crit_edge.i.i ], [ %i.cm, %bb.ad ]
  %.2107133.i.i = phi i32 [ %.2107.i.i, %..thread130_crit_edge.i.i ], [ %.1106.i.i, %bb.ad ] ; 4 uses
  %i.dc = icmp ne i16 %.pre-phi.i, 0
  %i.dd = icmp eq i32 %.0109.i.i, 95
  %or.cond9.i.i = select i1 %i.dc, i1 true, i1 %i.dd
  br i1 %or.cond9.i.i, label %bb.ah, label %.thread.i.i

bb.ah:                                            ; preds = %.thread130.i.i
  %i.de = icmp eq i32 %.2107133.i.i, 130
  br i1 %i.de, label %.thread134.i.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %.not125.i.i = icmp eq i32 %i.bx, 128
  br i1 %.not125.i.i, label %.thread.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.df = sext i32 %i.bx to i64
  %i.dg = getelementptr inbounds [2 x i8], ptr %i.db, i64 %i.df
  %i.dh = load i16, ptr %i.dg, align 2, !tbaa !45
  %i.di = and i16 %i.dh, 8
  %i.dj = icmp ne i16 %i.di, 0
  %i.dk = icmp eq i32 %i.bx, 95
  %or.cond12.i.i = select i1 %i.dj, i1 true, i1 %i.dk
  br i1 %or.cond12.i.i, label %.thread.i.i, label %.thread134.i.i

.thread.i.i:                                      ; preds = %bb.aj, %bb.ai, %.thread130.i.i, %bb.ag
  %.3.i.i = phi i32 [ %.2107.i.i, %bb.ag ], [ %.2107133.i.i, %bb.aj ], [ %.2107133.i.i, %bb.ai ], [ %.2107133.i.i, %.thread130.i.i ]
  %i.dl = icmp eq i32 %.3.i.i, 133
  br i1 %i.dl, label %.thread134.i.i, label %.thread.thread.i.i

.thread134.i.i:                                   ; preds = %.thread.i.i, %bb.aj, %bb.ah
  %.3137.i.i = phi i32 [ 133, %.thread.i.i ], [ 134, %bb.ah ], [ 134, %bb.aj ]
  %i.dm = call fastcc i64 @sstep(ptr noundef %i.bl, i64 noundef range(i64 -9223372036854775807, -9223372036854775808) %i.q, i64 noundef %i.r, i64 noundef %.2113.i.i, i32 noundef %.3137.i.i, i64 noundef %.2113.i.i)
  br label %.thread.thread.i.i

.thread.thread.i.i:                               ; preds = %.thread134.i.i, %.thread.i.i, %bb.ac
  %.3114.i.i = phi i64 [ %i.dm, %.thread134.i.i ], [ %.2113.i.i, %.thread.i.i ], [ %.2113.i.i, %bb.ac ] ; 2 uses
  %i.dn = and i64 %.3114.i.i, %i.az
  %.not126.i.i = icmp ne i64 %i.dn, 0             ; 2 uses
  %i.do = icmp eq ptr %.0110.i.i, %.0.i
  %or.cond.i.i = or i1 %i.do, %.not126.i.i
  br i1 %or.cond.i.i, label %sfast.exit.i, label %bb.ak

bb.ak:                                            ; preds = %.thread.thread.i.i
  %i.dp = call fastcc i64 @sstep(ptr noundef %i.bl, i64 noundef range(i64 -9223372036854775807, -9223372036854775808) %i.q, i64 noundef %i.r, i64 noundef %.3114.i.i, i32 noundef %i.bx, i64 noundef %i.bm)
  %i.dq = getelementptr inbounds nuw i8, ptr %.0110.i.i, i64 1
  br label %bb.r

sfast.exit.i:                                     ; preds = %.thread.thread.i.i
  store ptr %spec.select.i.i, ptr %i.ba, align 8, !tbaa !47
  br i1 %.not126.i.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %sfast.exit.i
  %i.dr = load ptr, ptr %i.as, align 8, !tbaa !36
  call void @free(ptr noundef %i.dr) #14
  %i.ds = load ptr, ptr %i.at, align 8, !tbaa !37
  br label %.loopexit189.sink.split.i

bb.am:                                            ; preds = %sfast.exit.i
  br i1 %i.bb, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.dt = load i32, ptr %i.bc, align 8, !tbaa !48
  %.not161.i = icmp eq i32 %i.dt, 0
  br i1 %.not161.i, label %.thread185.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.du = call fastcc ptr @sslow(ptr noundef %6, ptr noundef %spec.select.i.i, ptr noundef %.0.i, i64 noundef %i.q, i64 noundef %i.r) ; 2 uses
  %.not162214.i = icmp eq ptr %i.du, null
  br i1 %.not162214.i, label %.lr.ph216.i, label %._crit_edge217.i

.lr.ph216.i:                                      ; preds = %bb.ao, %.lr.ph216.i
  %i.dv = phi ptr [ %i.dw, %.lr.ph216.i ], [ %spec.select.i.i, %bb.ao ]
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 1 ; 4 uses
  store ptr %i.dw, ptr %i.ba, align 8, !tbaa !47
  %i.dx = call fastcc ptr @sslow(ptr noundef %6, ptr noundef nonnull %i.dw, ptr noundef %.0.i, i64 noundef %i.q, i64 noundef %i.r) ; 2 uses
  %.not162.i = icmp eq ptr %i.dx, null
  br i1 %.not162.i, label %.lr.ph216.i, label %._crit_edge217.i

._crit_edge217.i:                                 ; preds = %.lr.ph216.i, %bb.ao
  %i.dy = phi ptr [ %spec.select.i.i, %bb.ao ], [ %i.dw, %.lr.ph216.i ]
  %.lcssa192.i = phi ptr [ %i.du, %bb.ao ], [ %i.dx, %.lr.ph216.i ] ; 5 uses
  br i1 %i.bd, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %._crit_edge217.i
  %i.dz = load i32, ptr %i.bc, align 8, !tbaa !48
  %.not163.i = icmp eq i32 %i.dz, 0
  br i1 %.not163.i, label %.thread181.thread.i, label %bb.aq

.thread181.thread.i:                              ; preds = %bb.ap
  %i.ea = load ptr, ptr %i.au, align 8, !tbaa !38
  %i.eb = ptrtoint ptr %i.dy to i64
  %i.ec = ptrtoint ptr %i.ea to i64               ; 2 uses
  %i.ed = sub i64 %i.eb, %i.ec
  store i64 %i.ed, ptr %3, align 8, !tbaa !23
  %i.ee = ptrtoint ptr %.lcssa192.i to i64
  %i.ef = sub i64 %i.ee, %i.ec
  %i.eg = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.ef, ptr %i.eg, align 8, !tbaa !25
  br label %.thread185.i

bb.aq:                                            ; preds = %bb.ap, %._crit_edge217.i
  %i.eh = load ptr, ptr %i.as, align 8, !tbaa !36 ; 2 uses
  %i.ei = icmp eq ptr %i.eh, null
  br i1 %i.ei, label %bb.ar, label %.preheader187.i

bb.ar:                                            ; preds = %bb.aq
  %i.ej = getelementptr inbounds nuw i8, ptr %i.bl, i64 112
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !49
  %i.el = shl i64 %i.ek, 4
  %i.em = add i64 %i.el, 16
  %i.en = call ptr @cli_malloc(i64 noundef %i.em) #14 ; 3 uses
  store ptr %i.en, ptr %i.as, align 8, !tbaa !36
  %i.eo = icmp eq ptr %i.en, null
  br i1 %i.eo, label %smatcher.exit, label %..preheader187.i_crit_edge

..preheader187.i_crit_edge:                       ; preds = %bb.ar
  %.pre = load ptr, ptr %6, align 8, !tbaa !31
  br label %.preheader187.i

.preheader187.i:                                  ; preds = %..preheader187.i_crit_edge, %bb.aq
  %i.ep = phi ptr [ %.pre, %..preheader187.i_crit_edge ], [ %i.bl, %bb.aq ]
  %i.eq = phi ptr [ %i.en, %..preheader187.i_crit_edge ], [ %i.eh, %bb.aq ]
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 112
  %i.es = load i64, ptr %i.er, align 8, !tbaa !49 ; 2 uses
  %.not164219.i = icmp eq i64 %i.es, 0
  br i1 %.not164219.i, label %._crit_edge222.i, label %.lr.ph221.preheader.i

.lr.ph221.preheader.i:                            ; preds = %.preheader187.i
  %scevgep234.i = getelementptr i8, ptr %i.eq, i64 16
  %i.et = add i64 %i.es, 1
  %umax.i = call i64 @llvm.umax.i64(i64 %i.et, i64 2)
  %i.eu = shl i64 %umax.i, 4
  %i.ev = add i64 %i.eu, -16
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep234.i, i8 -1, i64 %i.ev, i1 false), !tbaa !50
  br label %._crit_edge222.i

._crit_edge222.i:                                 ; preds = %.lr.ph221.preheader.i, %.preheader187.i
  %i.ew = load i32, ptr %i.bc, align 8, !tbaa !48
  %.not165.i = icmp eq i32 %i.ew, 0
  br i1 %.not165.i, label %bb.as, label %bb.au

bb.as:                                            ; preds = %._crit_edge222.i
  %i.ex = load i32, ptr %i.ar, align 8, !tbaa !35
  %i.ey = and i32 %i.ex, 1024
  %.not166.i = icmp eq i32 %i.ey, 0
  br i1 %.not166.i, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.ez = load ptr, ptr %i.ba, align 8, !tbaa !47
  %i.fa = call fastcc ptr @sdissect(ptr noundef %6, ptr noundef %i.ez, ptr noundef nonnull %.lcssa192.i, i64 noundef %i.q, i64 noundef %i.r)
  br label %bb.az

bb.au:                                            ; preds = %bb.as, %._crit_edge222.i
  %i.fb = load i64, ptr %i.be, align 8, !tbaa !51 ; 3 uses
  %i.fc = icmp sgt i64 %i.fb, 0
  %i.fd = load ptr, ptr %i.at, align 8            ; 2 uses
  %i.fe = icmp eq ptr %i.fd, null
  %or.cond.i = select i1 %i.fc, i1 %i.fe, i1 false
  br i1 %or.cond.i, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.ff = shl i64 %i.fb, 3
  %i.fg = add i64 %i.ff, 8
  %i.fh = call ptr @cli_malloc(i64 noundef %i.fg) #14 ; 2 uses
  store ptr %i.fh, ptr %i.at, align 8, !tbaa !37
  %.pre238.i = load i64, ptr %i.be, align 8, !tbaa !51
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.fi = phi ptr [ %i.fh, %bb.av ], [ %i.fd, %bb.au ]
  %i.fj = phi i64 [ %.pre238.i, %bb.av ], [ %i.fb, %bb.au ]
  %i.fk = icmp sgt i64 %i.fj, 0
  %i.fl = icmp eq ptr %i.fi, null
  %or.cond176.i = select i1 %i.fk, i1 %i.fl, i1 false
  br i1 %or.cond176.i, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.fm = load ptr, ptr %i.as, align 8, !tbaa !36
  br label %.loopexit189.sink.split.i

bb.ay:                                            ; preds = %bb.aw
  %i.fn = load ptr, ptr %i.ba, align 8, !tbaa !47
  %i.fo = call fastcc ptr @sbackref(ptr noundef %6, ptr noundef %i.fn, ptr noundef %.lcssa192.i, i64 noundef %i.q, i64 noundef %i.r, i64 noundef 0, i32 noundef 0)
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.at
  %.1142.i = phi ptr [ %i.fo, %bb.ay ], [ %i.fa, %bb.at ]
  %.not167.i = icmp eq ptr %.1142.i, null
  br i1 %.not167.i, label %.preheader186.i, label %.loopexit.i

.preheader186.i:                                  ; preds = %bb.az, %bb.bb
  %.0143223.i = phi ptr [ %i.fr, %bb.bb ], [ %.lcssa192.i, %bb.az ] ; 3 uses
  %i.fp = load ptr, ptr %i.ba, align 8, !tbaa !47 ; 5 uses
  %.not169.i = icmp ugt ptr %.0143223.i, %i.fp
  br i1 %.not169.i, label %bb.ba, label %bb.bc

bb.ba:                                            ; preds = %.preheader186.i
  %i.fq = getelementptr inbounds i8, ptr %.0143223.i, i64 -1
  %i.fr = call fastcc ptr @sslow(ptr noundef %6, ptr noundef %i.fp, ptr noundef nonnull %i.fq, i64 noundef %i.q, i64 noundef %i.r) ; 4 uses
  %i.fs = icmp eq ptr %i.fr, null
  br i1 %i.fs, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ft = call fastcc ptr @sbackref(ptr noundef %6, ptr noundef %i.fp, ptr noundef %i.fr, i64 noundef %i.q, i64 noundef %i.r, i64 noundef 0, i32 noundef 0)
  %.not168.i = icmp eq ptr %i.ft, null
  br i1 %.not168.i, label %.preheader186.i, label %.loopexit.i

bb.bc:                                            ; preds = %bb.ba, %.preheader186.i
  %.1144.ph.i = phi ptr [ null, %bb.ba ], [ %.0143223.i, %.preheader186.i ]
  %i.fu = icmp eq ptr %i.fp, %.0.i
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fp, i64 1
  br i1 %i.fu, label %.loopexit.i, label %bb.o

.loopexit.i:                                      ; preds = %bb.bc, %bb.az, %bb.bb
  %.2145.i = phi ptr [ %i.fr, %bb.bb ], [ %.1144.ph.i, %bb.bc ], [ %.lcssa192.i, %bb.az ]
  br i1 %i.bb, label %.thread185.i, label %.thread181.i

.thread181.i:                                     ; preds = %.loopexit.i
  %.pre239.i = load ptr, ptr %i.ba, align 8, !tbaa !47
  %i.fw = load ptr, ptr %i.au, align 8, !tbaa !38
  %i.fx = ptrtoint ptr %.pre239.i to i64
  %i.fy = ptrtoint ptr %i.fw to i64               ; 2 uses
  %i.fz = sub i64 %i.fx, %i.fy
  store i64 %i.fz, ptr %3, align 8, !tbaa !23
  %i.ga = ptrtoint ptr %.2145.i to i64
  %i.gb = sub i64 %i.ga, %i.fy
  %i.gc = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.gb, ptr %i.gc, align 8, !tbaa !25
  br i1 %i.bd, label %.thread185.i, label %.preheader.i

.preheader.i:                                     ; preds = %.thread181.i
  %i.gd = load ptr, ptr %6, align 8, !tbaa !31
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 112 ; 3 uses
  %i.gf = load ptr, ptr %i.as, align 8            ; 3 uses
  %i.gg = add i64 %spec.select.i, -1              ; 3 uses
  %xtraiter210 = and i64 %i.gg, 1
  %i.gh = icmp eq i64 %spec.select.i, 2
  br i1 %i.gh, label %.epil.preheader209, label %.preheader.i.new

.preheader.i.new:                                 ; preds = %.preheader.i
  %unroll_iter213 = and i64 %i.gg, -2
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bj, %.preheader.i.new
  %.1147224.i = phi i64 [ 1, %.preheader.i.new ], [ %i.gp, %bb.bj ] ; 6 uses
  %niter214 = phi i64 [ 0, %.preheader.i.new ], [ %niter214.next.1, %bb.bj ]
  %i.gi = load i64, ptr %i.ge, align 8, !tbaa !49
  %.not173.i = icmp ugt i64 %.1147224.i, %i.gi
  %i.gj = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %.1147224.i ; 2 uses
  br i1 %.not173.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gk = getelementptr inbounds nuw [16 x i8], ptr %i.gf, i64 %.1147224.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gj, ptr noundef nonnull align 8 dereferenceable(16) %i.gk, i64 16, i1 false), !tbaa.struct !52
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bd
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gj, i8 -1, i64 16, i1 false)
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.gl = add nuw i64 %.1147224.i, 1              ; 2 uses
  %i.gm = load i64, ptr %i.ge, align 8, !tbaa !49
  %.not173.i.1.not = icmp ult i64 %.1147224.i, %i.gm
  %i.gn = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.gl ; 2 uses
  br i1 %.not173.i.1.not, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.go = getelementptr inbounds nuw [16 x i8], ptr %i.gf, i64 %i.gl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gn, ptr noundef nonnull align 8 dereferenceable(16) %i.go, i64 16, i1 false), !tbaa.struct !52
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bg
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gn, i8 -1, i64 16, i1 false)
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %i.gp = add nuw i64 %.1147224.i, 2              ; 2 uses
  %niter214.next.1 = add i64 %niter214, 2         ; 2 uses
  %niter214.ncmp.1 = icmp eq i64 %niter214.next.1, %unroll_iter213
  br i1 %niter214.ncmp.1, label %.thread185.i.loopexit.unr-lcssa, label %bb.bd, !llvm.loop !53

.thread185.i.loopexit.unr-lcssa:                  ; preds = %bb.bj
  %lcmp.mod211.not = icmp eq i64 %xtraiter210, 0
  br i1 %lcmp.mod211.not, label %.thread185.i, label %.epil.preheader209

.epil.preheader209:                               ; preds = %.thread185.i.loopexit.unr-lcssa, %.preheader.i
  %.1147224.i.epil.init = phi i64 [ 1, %.preheader.i ], [ %i.gp, %.thread185.i.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod212 = trunc i64 %i.gg to i1
  call void @llvm.assume(i1 %lcmp.mod212)
  %i.gq = load i64, ptr %i.ge, align 8, !tbaa !49
  %.not173.i.epil = icmp ugt i64 %.1147224.i.epil.init, %i.gq
  %i.gr = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %.1147224.i.epil.init ; 2 uses
  br i1 %.not173.i.epil, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %.epil.preheader209
  %i.gs = getelementptr inbounds nuw [16 x i8], ptr %i.gf, i64 %.1147224.i.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gr, ptr noundef nonnull align 8 dereferenceable(16) %i.gs, i64 16, i1 false), !tbaa.struct !52
  br label %.thread185.i

bb.bl:                                            ; preds = %.epil.preheader209
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gr, i8 -1, i64 16, i1 false)
  br label %.thread185.i

.thread185.i:                                     ; preds = %bb.an, %.thread185.i.loopexit.unr-lcssa, %bb.bl, %bb.bk, %.thread181.i, %.loopexit.i, %.thread181.thread.i
  %i.gt = load ptr, ptr %i.as, align 8, !tbaa !36 ; 2 uses
  %.not171.i = icmp eq ptr %i.gt, null
  br i1 %.not171.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %.thread185.i
  call void @free(ptr noundef nonnull %i.gt) #14
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %.thread185.i
  %i.gu = load ptr, ptr %i.at, align 8, !tbaa !37 ; 2 uses
  %.not172.i = icmp eq ptr %i.gu, null
  br i1 %.not172.i, label %smatcher.exit, label %.loopexit189.sink.split.i

.loopexit189.sink.split.i:                        ; preds = %bb.bn, %bb.ax, %bb.al
  %.sink.i = phi ptr [ %i.ds, %bb.al ], [ %i.fm, %bb.ax ], [ %i.gu, %bb.bn ]
  %.0139.ph.i = phi i32 [ 1, %bb.al ], [ 12, %bb.ax ], [ 0, %bb.bn ]
  call void @free(ptr noundef %.sink.i) #14
  br label %smatcher.exit

smatcher.exit:                                    ; preds = %bb.ar, %bb.h, %._crit_edge.i, %bb.bn, %.loopexit189.sink.split.i
  %.0139.i = phi i32 [ 0, %bb.bn ], [ 16, %bb.h ], [ %.0139.ph.i, %.loopexit189.sink.split.i ], [ 1, %._crit_edge.i ], [ 12, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  br label %bb.dz

bb.bo:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  %i.gv = load i64, ptr %i.m, align 8, !tbaa !20
  %i.gw = add nsw i64 %i.gv, 1                    ; 11 uses
  %i.gx = load i64, ptr %i.n, align 8, !tbaa !21  ; 11 uses
  %i.gy = load i32, ptr %i.o, align 8, !tbaa !22
  %i.gz = and i32 %i.gy, 4
  %.not.i19 = icmp eq i32 %i.gz, 0
  %spec.select.i20 = select i1 %.not.i19, i64 %2, i64 0 ; 5 uses
  br i1 %.not158.i, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ha = load i64, ptr %3, align 8, !tbaa !23
  %i.hb = getelementptr inbounds i8, ptr %1, i64 %i.ha ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.hd = load i64, ptr %i.hc, align 8, !tbaa !25
  %.pre259.i = ptrtoint ptr %i.hb to i64
  br label %bb.br

bb.bq:                                            ; preds = %bb.bo
  %i.he = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #15
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %.0159252.pre-phi.i = phi i64 [ %i.l, %bb.bq ], [ %.pre259.i, %bb.bp ]
  %.0159.i = phi ptr [ %1, %bb.bq ], [ %i.hb, %bb.bp ] ; 7 uses
  %.pn.i21 = phi i64 [ %i.he, %bb.bq ], [ %i.hd, %bb.bp ] ; 2 uses
  %.0.i22 = getelementptr inbounds i8, ptr %1, i64 %.pn.i21 ; 9 uses
  %i.hf = icmp ult ptr %.0.i22, %.0159.i
  br i1 %i.hf, label %lmatcher.exit, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.hg = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !26 ; 3 uses
  %.not180.i = icmp eq ptr %i.hh, null
  br i1 %.not180.i, label %bb.bx, label %.preheader211.i

.preheader211.i:                                  ; preds = %bb.bs
  %i.hi = icmp ult ptr %.0159.i, %.0.i22
  br i1 %i.hi, label %.lr.ph.i52, label %._crit_edge.i23

.lr.ph.i52:                                       ; preds = %.preheader211.i
  %i.hj = load i8, ptr %i.hh, align 1, !tbaa !27
  %i.hk = ptrtoint ptr %.0.i22 to i64
  %i.hl = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.hm = sub i64 %i.l, %.0159252.pre-phi.i
  %i.hn = getelementptr i8, ptr %.0159.i, i64 %i.hm
  %scevgep.i53 = getelementptr i8, ptr %i.hn, i64 %.pn.i21 ; 2 uses
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bw, %.lr.ph.i52
  %.0162230.i = phi ptr [ %.0159.i, %.lr.ph.i52 ], [ %i.hv, %bb.bw ] ; 5 uses
  %i.ho = load i8, ptr %.0162230.i, align 1, !tbaa !27
  %i.hp = icmp eq i8 %i.ho, %i.hj
  br i1 %i.hp, label %bb.bu, label %bb.bw

bb.bu:                                            ; preds = %bb.bt
  %i.hq = ptrtoint ptr %.0162230.i to i64
  %i.hr = sub i64 %i.hk, %i.hq
  %i.hs = load i32, ptr %i.hl, align 8, !tbaa !28
  %i.ht = sext i32 %i.hs to i64                   ; 2 uses
  %.not181.i = icmp slt i64 %i.hr, %i.ht
  br i1 %.not181.i, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %bcmp.i55 = tail call i32 @bcmp(ptr nonnull %.0162230.i, ptr nonnull %i.hh, i64 %i.ht)
  %i.hu = icmp eq i32 %bcmp.i55, 0
  br i1 %i.hu, label %._crit_edge.i23, label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu, %bb.bt
  %i.hv = getelementptr inbounds nuw i8, ptr %.0162230.i, i64 1 ; 2 uses
  %exitcond.not.i54 = icmp eq ptr %i.hv, %scevgep.i53
  br i1 %exitcond.not.i54, label %._crit_edge.i23, label %bb.bt, !llvm.loop !54

._crit_edge.i23:                                  ; preds = %bb.bw, %bb.bv, %.preheader211.i
  %.0162.lcssa.i = phi ptr [ %.0159.i, %.preheader211.i ], [ %scevgep.i53, %bb.bw ], [ %.0162230.i, %bb.bv ]
  %i.hw = icmp eq ptr %.0162.lcssa.i, %.0.i22
  br i1 %i.hw, label %lmatcher.exit, label %bb.bx

bb.bx:                                            ; preds = %._crit_edge.i23, %bb.bs
  store ptr %i.b, ptr %5, align 8, !tbaa !55
  %i.hx = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store i32 %i.h, ptr %i.hx, align 8, !tbaa !57
  %i.hy = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr null, ptr %i.hy, align 8, !tbaa !58
  %i.hz = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 5 uses
  store ptr null, ptr %i.hz, align 8, !tbaa !59
  %i.ia = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store ptr %1, ptr %i.ia, align 8, !tbaa !60
  %i.ib = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  store ptr %.0159.i, ptr %i.ib, align 8, !tbaa !61
  %i.ic = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  store ptr %.0.i22, ptr %i.ic, align 8, !tbaa !62
  %i.id = shl nsw i64 %i.j, 2
  %i.ie = tail call ptr @cli_malloc(i64 noundef %i.id) #14 ; 6 uses
  %i.if = getelementptr inbounds nuw i8, ptr %5, i64 72 ; 2 uses
  store ptr %i.ie, ptr %i.if, align 8, !tbaa !63
  %i.ig = icmp eq ptr %i.ie, null
  br i1 %i.ig, label %lmatcher.exit, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ih = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.ii = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 2 uses
  store ptr %i.ie, ptr %i.ii, align 8, !tbaa !64
  %i.ij = load i64, ptr %i.i, align 8, !tbaa !19  ; 4 uses
  %i.ik = getelementptr inbounds i8, ptr %i.ie, i64 %i.ij
  %i.il = getelementptr inbounds nuw i8, ptr %5, i64 88 ; 2 uses
  store ptr %i.ik, ptr %i.il, align 8, !tbaa !65
  %i.im = shl nsw i64 %i.ij, 1
  %i.in = getelementptr inbounds i8, ptr %i.ie, i64 %i.im
  %i.io = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  store ptr %i.in, ptr %i.io, align 8, !tbaa !66
  store i64 4, ptr %i.ih, align 8, !tbaa !67
  %i.ip = mul nsw i64 %i.ij, 3
  %i.iq = getelementptr inbounds i8, ptr %i.ie, i64 %i.ip ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %5, i64 104
  store ptr %i.iq, ptr %i.ir, align 8, !tbaa !68
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.iq, i8 0, i64 %i.ij, i1 false)
  %i.is = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 8 uses
  %i.it = icmp eq i64 %spec.select.i20, 0         ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.b, i64 120 ; 3 uses
  %i.iv = icmp eq i64 %spec.select.i20, 1
  %i.iw = getelementptr inbounds nuw i8, ptr %i.b, i64 128 ; 2 uses
  br label %bb.bz

bb.bz:                                            ; preds = %bb.dn, %bb.by
  %.1.i24 = phi ptr [ %.0159.i, %bb.by ], [ %i.oh, %bb.dn ] ; 3 uses
  %i.ix = load ptr, ptr %i.ii, align 8, !tbaa !64 ; 14 uses
  %i.iy = load ptr, ptr %i.il, align 8, !tbaa !65 ; 3 uses
  %i.iz = load ptr, ptr %i.io, align 8, !tbaa !66 ; 2 uses
  %i.ja = load ptr, ptr %i.ib, align 8, !tbaa !61
  %i.jb = icmp eq ptr %.1.i24, %i.ja
  br i1 %i.jb, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.jc = getelementptr inbounds i8, ptr %.1.i24, i64 -1
  %i.jd = load i8, ptr %i.jc, align 1, !tbaa !27
  %i.je = sext i8 %i.jd to i32
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %i.jf = phi i32 [ %i.je, %bb.ca ], [ 128, %bb.bz ]
  %i.jg = load ptr, ptr %5, align 8, !tbaa !55
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 48
  %i.ji = load i64, ptr %i.jh, align 8, !tbaa !19
  call void @llvm.memset.p0.i64(ptr align 1 %i.ix, i8 0, i64 %i.ji, i1 false)
  %i.jj = getelementptr inbounds i8, ptr %i.ix, i64 %i.gw
  store i8 1, ptr %i.jj, align 1, !tbaa !27
  %i.jk = load ptr, ptr %5, align 8, !tbaa !55
  %i.jl = call fastcc ptr @lstep(ptr noundef %i.jk, i64 noundef range(i64 -9223372036854775807, -9223372036854775808) %i.gw, i64 noundef %i.gx, ptr noundef %i.ix, i32 noundef 132, ptr noundef %i.ix) ; 0 uses
  %i.jm = load ptr, ptr %5, align 8, !tbaa !55
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 48
  %i.jo = load i64, ptr %i.jn, align 8, !tbaa !19
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.iy, ptr align 1 %i.ix, i64 %i.jo, i1 false)
  %i.jp = getelementptr inbounds i8, ptr %i.ix, i64 %i.gx ; 2 uses
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cv, %bb.cb
  %.0119.i.i = phi ptr [ %.1.i24, %bb.cb ], [ %i.mh, %bb.cv ] ; 5 uses
  %.0118.i.i = phi i32 [ %i.jf, %bb.cb ], [ %i.ju, %bb.cv ] ; 7 uses
  %.0.i.i25 = phi ptr [ null, %bb.cb ], [ %spec.select.i.i26, %bb.cv ]
  %i.jq = load ptr, ptr %i.ic, align 8, !tbaa !62
  %i.jr = icmp eq ptr %.0119.i.i, %i.jq
  br i1 %i.jr, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.js = load i8, ptr %.0119.i.i, align 1, !tbaa !27
  %i.jt = sext i8 %i.js to i32
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %i.ju = phi i32 [ %i.jt, %bb.cd ], [ 128, %bb.cc ] ; 10 uses
  %i.jv = load ptr, ptr %5, align 8, !tbaa !55    ; 5 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 48
  %i.jx = load i64, ptr %i.jw, align 8, !tbaa !19
  %bcmp.i.i = call i32 @bcmp(ptr nonnull %i.ix, ptr %i.iy, i64 %i.jx)
  %i.jy = icmp eq i32 %bcmp.i.i, 0
  %spec.select.i.i26 = select i1 %i.jy, ptr %.0119.i.i, ptr %.0.i.i25 ; 3 uses
  switch i32 %.0118.i.i, label %bb.ci [
    i32 10, label %bb.cf
    i32 128, label %bb.cg
  ]

bb.cf:                                            ; preds = %bb.ce
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jv, i64 40
  %i.ka = load i32, ptr %i.jz, align 8, !tbaa !22
  %i.kb = and i32 %i.ka, 8
  %.not.i.i51 = icmp eq i32 %i.kb, 0
  br i1 %.not.i.i51, label %bb.ci, label %bb.ch

bb.cg:                                            ; preds = %bb.ce
  %i.kc = load i32, ptr %i.hx, align 8, !tbaa !57
  %i.kd = and i32 %i.kc, 1
  %.not126.i.i27 = icmp eq i32 %i.kd, 0
  br i1 %.not126.i.i27, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jv, i64 76
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !41
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg, %bb.cf, %bb.ce
  %i.kg = phi i32 [ 131, %bb.ch ], [ 130, %bb.cg ], [ 130, %bb.ce ], [ 130, %bb.cf ]
  %.0114.i.i = phi i32 [ 129, %bb.ch ], [ 0, %bb.cg ], [ 0, %bb.ce ], [ 0, %bb.cf ] ; 3 uses
  %.0112.i.i = phi i32 [ %i.kf, %bb.ch ], [ 0, %bb.cg ], [ 0, %bb.ce ], [ 0, %bb.cf ] ; 4 uses
  switch i32 %i.ju, label %bb.cm [
    i32 10, label %bb.cj
    i32 128, label %bb.ck
  ]

bb.cj:                                            ; preds = %bb.ci
  %i.kh = getelementptr inbounds nuw i8, ptr %i.jv, i64 40
  %i.ki = load i32, ptr %i.kh, align 8, !tbaa !22
  %i.kj = and i32 %i.ki, 8
  %.not127.i.i = icmp eq i32 %i.kj, 0
  br i1 %.not127.i.i, label %bb.cm, label %bb.cl

bb.ck:                                            ; preds = %bb.ci
  %i.kk = load i32, ptr %i.hx, align 8, !tbaa !57
  %i.kl = and i32 %i.kk, 2
  %.not128.i.i = icmp eq i32 %i.kl, 0
  br i1 %.not128.i.i, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %i.km = getelementptr inbounds nuw i8, ptr %i.jv, i64 80
  %i.kn = load i32, ptr %i.km, align 8, !tbaa !42
  %i.ko = add nsw i32 %i.kn, %.0112.i.i
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck, %bb.cj, %bb.ci
  %.1115.i.i = phi i32 [ %i.kg, %bb.cl ], [ %.0114.i.i, %bb.ck ], [ %.0114.i.i, %bb.ci ], [ %.0114.i.i, %bb.cj ] ; 4 uses
  %.1113.i.i = phi i32 [ %i.ko, %bb.cl ], [ %.0112.i.i, %bb.ck ], [ %.0112.i.i, %bb.ci ], [ %.0112.i.i, %bb.cj ] ; 2 uses
  %i.kp = icmp sgt i32 %.1113.i.i, 0
  br i1 %i.kp, label %.preheader.i.i48, label %.loopexit.i.i28

.preheader.i.i48:                                 ; preds = %bb.cm, %.preheader.i.i48
  %.2.i.i49 = phi i32 [ %i.ks, %.preheader.i.i48 ], [ %.1113.i.i, %bb.cm ] ; 2 uses
  %i.kq = load ptr, ptr %5, align 8, !tbaa !55
  %i.kr = call fastcc ptr @lstep(ptr noundef %i.kq, i64 noundef range(i64 -9223372036854775807, -9223372036854775808) %i.gw, i64 noundef %i.gx, ptr noundef nonnull %i.ix, i32 noundef %.1115.i.i, ptr noundef nonnull %i.ix) ; 0 uses
  %i.ks = add nsw i32 %.2.i.i49, -1
  %.old17.i.i50 = icmp samesign ugt i32 %.2.i.i49, 1
  br i1 %.old17.i.i50, label %.preheader.i.i48, label %.loopexit.i.i28

.loopexit.i.i28:                                  ; preds = %.preheader.i.i48, %bb.cm
  %i.kt = icmp eq i32 %.1115.i.i, 129
  br i1 %i.kt, label %bb.cp, label %bb.cn

bb.cn:                                            ; preds = %.loopexit.i.i28
  %.not129.i.i = icmp eq i32 %.0118.i.i, 128
  br i1 %.not129.i.i, label %.thread.thread.i.i34, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.ku = tail call ptr @__ctype_b_loc() #16
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !43 ; 3 uses
  %i.kw = sext i32 %.0118.i.i to i64
  %i.kx = getelementptr inbounds [2 x i8], ptr %i.kv, i64 %i.kw
  %i.ky = load i16, ptr %i.kx, align 2, !tbaa !45
  %i.kz = and i16 %i.ky, 8                        ; 2 uses
  %i.la = icmp eq i16 %i.kz, 0
  %i.lb = icmp ne i32 %.0118.i.i, 95
  %or.cond.not132.i.i = select i1 %i.la, i1 %i.lb, i1 false
  %i.lc = icmp ne i32 %i.ju, 128
  %or.cond3.i.i29 = select i1 %or.cond.not132.i.i, i1 %i.lc, i1 false
  br i1 %or.cond3.i.i29, label %bb.cq, label %.thread140.i.i

bb.cp:                                            ; preds = %.loopexit.i.i28
  %.old2.not.i.i45 = icmp eq i32 %i.ju, 128
  br i1 %.old2.not.i.i45, label %bb.cr, label %._crit_edge.i.i46

._crit_edge.i.i46:                                ; preds = %bb.cp
  %.pre150.i.i = tail call ptr @__ctype_b_loc() #16
  %.pre.i47 = load ptr, ptr %.pre150.i.i, align 8, !tbaa !43
  br label %bb.cq

bb.cq:                                            ; preds = %._crit_edge.i.i46, %bb.co
  %i.ld = phi ptr [ %.pre.i47, %._crit_edge.i.i46 ], [ %i.kv, %bb.co ]
  %i.le = sext i32 %i.ju to i64
  %i.lf = getelementptr inbounds [2 x i8], ptr %i.ld, i64 %i.le
  %i.lg = load i16, ptr %i.lf, align 2, !tbaa !45
  %i.lh = and i16 %i.lg, 8
  %i.li = icmp ne i16 %i.lh, 0
  %i.lj = icmp eq i32 %i.ju, 95
  %or.cond6.i.i42 = select i1 %i.li, i1 true, i1 %i.lj
  %spec.select137.i.i = select i1 %or.cond6.i.i42, i32 133, i32 %.1115.i.i
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %.2116.i.i = phi i32 [ 129, %bb.cp ], [ %spec.select137.i.i, %bb.cq ] ; 2 uses
  %.not133.i.i = icmp eq i32 %.0118.i.i, 128
  br i1 %.not133.i.i, label %.thread.i.i32, label %..thread140_crit_edge.i.i

..thread140_crit_edge.i.i:                        ; preds = %bb.cr
  %.pre.i.i43 = tail call ptr @__ctype_b_loc() #16
  %.pre148.i.i = sext i32 %.0118.i.i to i64
  %.pre255.i = load ptr, ptr %.pre.i.i43, align 8, !tbaa !43 ; 2 uses
  %.phi.trans.insert.i44 = getelementptr inbounds [2 x i8], ptr %.pre255.i, i64 %.pre148.i.i
  %.pre256.i = load i16, ptr %.phi.trans.insert.i44, align 2, !tbaa !45
  %.pre260.i = and i16 %.pre256.i, 8
  br label %.thread140.i.i

.thread140.i.i:                                   ; preds = %..thread140_crit_edge.i.i, %bb.co
  %.pre-phi.i30 = phi i16 [ %.pre260.i, %..thread140_crit_edge.i.i ], [ %i.kz, %bb.co ]
  %i.lk = phi ptr [ %.pre255.i, %..thread140_crit_edge.i.i ], [ %i.kv, %bb.co ]
  %.2116143.i.i = phi i32 [ %.2116.i.i, %..thread140_crit_edge.i.i ], [ %.1115.i.i, %bb.co ] ; 4 uses
  %i.ll = icmp ne i16 %.pre-phi.i30, 0
  %i.lm = icmp eq i32 %.0118.i.i, 95
  %or.cond9.i.i31 = select i1 %i.ll, i1 true, i1 %i.lm
  br i1 %or.cond9.i.i31, label %bb.cs, label %.thread.i.i32

bb.cs:                                            ; preds = %.thread140.i.i
  %i.ln = icmp eq i32 %.2116143.i.i, 130
  br i1 %i.ln, label %.thread144.i.i, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %.not134.i.i = icmp eq i32 %i.ju, 128
  br i1 %.not134.i.i, label %.thread.i.i32, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.lo = sext i32 %i.ju to i64
  %i.lp = getelementptr inbounds [2 x i8], ptr %i.lk, i64 %i.lo
  %i.lq = load i16, ptr %i.lp, align 2, !tbaa !45
  %i.lr = and i16 %i.lq, 8
  %i.ls = icmp ne i16 %i.lr, 0
  %i.lt = icmp eq i32 %i.ju, 95
  %or.cond12.i.i41 = select i1 %i.ls, i1 true, i1 %i.lt
  br i1 %or.cond12.i.i41, label %.thread.i.i32, label %.thread144.i.i

.thread.i.i32:                                    ; preds = %bb.cu, %bb.ct, %.thread140.i.i, %bb.cr
  %.3.i.i33 = phi i32 [ %.2116.i.i, %bb.cr ], [ %.2116143.i.i, %bb.cu ], [ %.2116143.i.i, %bb.ct ], [ %.2116143.i.i, %.thread140.i.i ]
  %i.lu = icmp eq i32 %.3.i.i33, 133
  br i1 %i.lu, label %.thread144.i.i, label %.thread.thread.i.i34

.thread144.i.i:                                   ; preds = %.thread.i.i32, %bb.cu, %bb.cs
  %.3147.i.i = phi i32 [ 133, %.thread.i.i32 ], [ 134, %bb.cs ], [ 134, %bb.cu ]
  %i.lv = load ptr, ptr %5, align 8, !tbaa !55
  %i.lw = call fastcc ptr @lstep(ptr noundef %i.lv, i64 noundef range(i64 -9223372036854775807, -9223372036854775808) %i.gw, i64 noundef %i.gx, ptr noundef nonnull %i.ix, i32 noundef %.3147.i.i, ptr noundef nonnull %i.ix) ; 0 uses
  br label %.thread.thread.i.i34

.thread.thread.i.i34:                             ; preds = %.thread144.i.i, %.thread.i.i32, %bb.cn
  %i.lx = load i8, ptr %i.jp, align 1, !tbaa !27
  %.not135.i.i = icmp ne i8 %i.lx, 0
  %i.ly = icmp eq ptr %.0119.i.i, %.0.i22
  %or.cond.i.i35 = or i1 %i.ly, %.not135.i.i
  br i1 %or.cond.i.i35, label %lfast.exit.i, label %bb.cv

bb.cv:                                            ; preds = %.thread.thread.i.i34
  %i.lz = load ptr, ptr %5, align 8, !tbaa !55
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 48
  %i.mb = load i64, ptr %i.ma, align 8, !tbaa !19
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.iz, ptr nonnull align 1 %i.ix, i64 %i.mb, i1 false)
  %i.mc = load ptr, ptr %5, align 8, !tbaa !55
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 48
  %i.me = load i64, ptr %i.md, align 8, !tbaa !19
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ix, ptr align 1 %i.iy, i64 %i.me, i1 false)
  %i.mf = load ptr, ptr %5, align 8, !tbaa !55
  %i.mg = call fastcc ptr @lstep(ptr noundef %i.mf, i64 noundef range(i64 -9223372036854775807, -9223372036854775808) %i.gw, i64 noundef %i.gx, ptr noundef %i.iz, i32 noundef %i.ju, ptr noundef nonnull %i.ix) ; 0 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %.0119.i.i, i64 1
  br label %bb.cc

lfast.exit.i:                                     ; preds = %.thread.thread.i.i34
  store ptr %spec.select.i.i26, ptr %i.is, align 8, !tbaa !69
  %i.mi = load i8, ptr %i.jp, align 1, !tbaa !27
  %.not136.i.i = icmp eq i8 %i.mi, 0
  br i1 %.not136.i.i, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %lfast.exit.i
  %i.mj = load ptr, ptr %i.hy, align 8, !tbaa !58
  call void @free(ptr noundef %i.mj) #14
  %i.mk = load ptr, ptr %i.hz, align 8, !tbaa !59
  br label %.sink.split.sink.split.i

bb.cx:                                            ; preds = %lfast.exit.i
  br i1 %i.it, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.ml = load i32, ptr %i.iu, align 8, !tbaa !48
  %.not182.i = icmp eq i32 %i.ml, 0
  br i1 %.not182.i, label %.thread206.i, label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  %i.mm = call fastcc ptr @lslow(ptr noundef %5, ptr noundef %spec.select.i.i26, ptr noundef %.0.i22, i64 noundef %i.gw, i64 noundef %i.gx) ; 2 uses
  %.not183233.i = icmp eq ptr %i.mm, null
  br i1 %.not183233.i, label %.lr.ph235.i, label %._crit_edge236.i

.lr.ph235.i:                                      ; preds = %bb.cz, %.lr.ph235.i
  %i.mn = load ptr, ptr %i.is, align 8, !tbaa !69
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 1 ; 2 uses
  store ptr %i.mo, ptr %i.is, align 8, !tbaa !69
  %i.mp = call fastcc ptr @lslow(ptr noundef %5, ptr noundef nonnull %i.mo, ptr noundef %.0.i22, i64 noundef %i.gw, i64 noundef %i.gx) ; 2 uses
  %.not183.i = icmp eq ptr %i.mp, null
  br i1 %.not183.i, label %.lr.ph235.i, label %._crit_edge236.i

._crit_edge236.i:                                 ; preds = %.lr.ph235.i, %bb.cz
  %.lcssa.i = phi ptr [ %i.mm, %bb.cz ], [ %i.mp, %.lr.ph235.i ] ; 5 uses
  br i1 %i.iv, label %bb.da, label %bb.db

bb.da:                                            ; preds = %._crit_edge236.i
  %i.mq = load i32, ptr %i.iu, align 8, !tbaa !48
  %.not184.i = icmp eq i32 %i.mq, 0
  br i1 %.not184.i, label %.thread202.i, label %bb.db

bb.db:                                            ; preds = %bb.da, %._crit_edge236.i
  %i.mr = load ptr, ptr %i.hy, align 8, !tbaa !58 ; 2 uses
  %i.ms = icmp eq ptr %i.mr, null
  br i1 %i.ms, label %bb.dc, label %.preheader208.i

bb.dc:                                            ; preds = %bb.db
  %i.mt = load ptr, ptr %5, align 8, !tbaa !55
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 112
  %i.mv = load i64, ptr %i.mu, align 8, !tbaa !49
  %i.mw = shl i64 %i.mv, 4
  %i.mx = add i64 %i.mw, 16
  %i.my = call ptr @cli_malloc(i64 noundef %i.mx) #14 ; 3 uses
  store ptr %i.my, ptr %i.hy, align 8, !tbaa !58
  %i.mz = icmp eq ptr %i.my, null
  br i1 %i.mz, label %.sink.split.i, label %.preheader208.i

.preheader208.i:                                  ; preds = %bb.dc, %bb.db
  %i.na = phi ptr [ %i.my, %bb.dc ], [ %i.mr, %bb.db ]
  %i.nb = load ptr, ptr %5, align 8, !tbaa !55
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 112
  %i.nd = load i64, ptr %i.nc, align 8, !tbaa !49 ; 2 uses
  %.not185238.i = icmp eq i64 %i.nd, 0
  br i1 %.not185238.i, label %._crit_edge241.i, label %.lr.ph240.preheader.i

.lr.ph240.preheader.i:                            ; preds = %.preheader208.i
  %scevgep253.i = getelementptr i8, ptr %i.na, i64 16
  %i.ne = add i64 %i.nd, 1
  %umax.i36 = call i64 @llvm.umax.i64(i64 %i.ne, i64 2)
  %i.nf = shl i64 %umax.i36, 4
  %i.ng = add i64 %i.nf, -16
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep253.i, i8 -1, i64 %i.ng, i1 false), !tbaa !50
  br label %._crit_edge241.i

._crit_edge241.i:                                 ; preds = %.lr.ph240.preheader.i, %.preheader208.i
  %i.nh = load i32, ptr %i.iu, align 8, !tbaa !48
  %.not186.i = icmp eq i32 %i.nh, 0
  br i1 %.not186.i, label %bb.dd, label %bb.df

bb.dd:                                            ; preds = %._crit_edge241.i
  %i.ni = load i32, ptr %i.hx, align 8, !tbaa !57
  %i.nj = and i32 %i.ni, 1024
  %.not187.i = icmp eq i32 %i.nj, 0
  br i1 %.not187.i, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  %i.nk = load ptr, ptr %i.is, align 8, !tbaa !69
  %i.nl = call fastcc ptr @ldissect(ptr noundef %5, ptr noundef %i.nk, ptr noundef nonnull %.lcssa.i, i64 noundef %i.gw, i64 noundef %i.gx)
  br label %bb.dk

bb.df:                                            ; preds = %bb.dd, %._crit_edge241.i
  %i.nm = load i64, ptr %i.iw, align 8, !tbaa !51 ; 3 uses
  %i.nn = icmp sgt i64 %i.nm, 0
  %i.no = load ptr, ptr %i.hz, align 8            ; 2 uses
  %i.np = icmp eq ptr %i.no, null
  %or.cond.i37 = select i1 %i.nn, i1 %i.np, i1 false
  br i1 %or.cond.i37, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  %i.nq = shl i64 %i.nm, 3
  %i.nr = add i64 %i.nq, 8
  %i.ns = call ptr @cli_malloc(i64 noundef %i.nr) #14 ; 2 uses
  store ptr %i.ns, ptr %i.hz, align 8, !tbaa !59
  %.pre257.i = load i64, ptr %i.iw, align 8, !tbaa !51
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.df
  %i.nt = phi ptr [ %i.ns, %bb.dg ], [ %i.no, %bb.df ]
  %i.nu = phi i64 [ %.pre257.i, %bb.dg ], [ %i.nm, %bb.df ]
  %i.nv = icmp sgt i64 %i.nu, 0
  %i.nw = icmp eq ptr %i.nt, null
  %or.cond197.i = select i1 %i.nv, i1 %i.nw, i1 false
  br i1 %or.cond197.i, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  %i.nx = load ptr, ptr %i.hy, align 8, !tbaa !58
  br label %.sink.split.sink.split.i

bb.dj:                                            ; preds = %bb.dh
  %i.ny = load ptr, ptr %i.is, align 8, !tbaa !69
  %i.nz = call fastcc ptr @lbackref(ptr noundef %5, ptr noundef %i.ny, ptr noundef %.lcssa.i, i64 noundef %i.gw, i64 noundef %i.gx, i64 noundef 0, i32 noundef 0)
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.de
  %.1163.i = phi ptr [ %i.nz, %bb.dj ], [ %i.nl, %bb.de ]
  %.not188.i = icmp eq ptr %.1163.i, null
  br i1 %.not188.i, label %.preheader207.i, label %.loopexit.i38

.preheader207.i:                                  ; preds = %bb.dk, %bb.dm
  %.0164242.i = phi ptr [ %i.oc, %bb.dm ], [ %.lcssa.i, %bb.dk ] ; 3 uses
  %i.oa = load ptr, ptr %i.is, align 8, !tbaa !69 ; 3 uses
  %.not190.i = icmp ugt ptr %.0164242.i, %i.oa
  br i1 %.not190.i, label %bb.dl, label %bb.dn

bb.dl:                                            ; preds = %.preheader207.i
  %i.ob = getelementptr inbounds i8, ptr %.0164242.i, i64 -1
  %i.oc = call fastcc ptr @lslow(ptr noundef %5, ptr noundef %i.oa, ptr noundef nonnull %i.ob, i64 noundef %i.gw, i64 noundef %i.gx) ; 4 uses
  %i.od = icmp eq ptr %i.oc, null
  %.pre258.i = load ptr, ptr %i.is, align 8, !tbaa !69 ; 2 uses
  br i1 %i.od, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.oe = call fastcc ptr @lbackref(ptr noundef %5, ptr noundef %.pre258.i, ptr noundef %i.oc, i64 noundef %i.gw, i64 noundef %i.gx, i64 noundef 0, i32 noundef 0)
  %.not189.i = icmp eq ptr %i.oe, null
  br i1 %.not189.i, label %.preheader207.i, label %.loopexit.i38

bb.dn:                                            ; preds = %bb.dl, %.preheader207.i
  %i.of = phi ptr [ %.pre258.i, %bb.dl ], [ %i.oa, %.preheader207.i ] ; 2 uses
  %.1165.ph.i = phi ptr [ null, %bb.dl ], [ %.0164242.i, %.preheader207.i ]
  %i.og = icmp eq ptr %i.of, %.0.i22
  %i.oh = getelementptr inbounds nuw i8, ptr %i.of, i64 1
  br i1 %i.og, label %.loopexit.i38, label %bb.bz

.loopexit.i38:                                    ; preds = %bb.dn, %bb.dk, %bb.dm
  %.2166.i = phi ptr [ %i.oc, %bb.dm ], [ %.1165.ph.i, %bb.dn ], [ %.lcssa.i, %bb.dk ]
  br i1 %i.it, label %.thread206.i, label %.thread202.i

.thread202.i:                                     ; preds = %bb.da, %.loopexit.i38
  %.2166204.i = phi ptr [ %.2166.i, %.loopexit.i38 ], [ %.lcssa.i, %bb.da ]
  %i.oi = load ptr, ptr %i.is, align 8, !tbaa !69
  %i.oj = load ptr, ptr %i.ia, align 8, !tbaa !60
  %i.ok = ptrtoint ptr %i.oi to i64
  %i.ol = ptrtoint ptr %i.oj to i64               ; 2 uses
  %i.om = sub i64 %i.ok, %i.ol
  store i64 %i.om, ptr %3, align 8, !tbaa !23
  %i.on = ptrtoint ptr %.2166204.i to i64
  %i.oo = sub i64 %i.on, %i.ol
  %i.op = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.oo, ptr %i.op, align 8, !tbaa !25
  %i.oq = icmp ugt i64 %spec.select.i20, 1
  br i1 %i.oq, label %.preheader.i40, label %.thread206.i

.preheader.i40:                                   ; preds = %.thread202.i
  %i.or = load ptr, ptr %5, align 8, !tbaa !55
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 112 ; 3 uses
  %i.ot = load ptr, ptr %i.hy, align 8            ; 3 uses
  %i.ou = add i64 %spec.select.i20, -1            ; 3 uses
  %xtraiter = and i64 %i.ou, 1
  %i.ov = icmp eq i64 %spec.select.i20, 2
  br i1 %i.ov, label %.epil.preheader, label %.preheader.i40.new

.preheader.i40.new:                               ; preds = %.preheader.i40
  %unroll_iter = and i64 %i.ou, -2
  br label %bb.do

bb.do:                                            ; preds = %bb.du, %.preheader.i40.new
  %.1168243.i = phi i64 [ 1, %.preheader.i40.new ], [ %i.pd, %bb.du ] ; 6 uses
  %niter = phi i64 [ 0, %.preheader.i40.new ], [ %niter.next.1, %bb.du ]
  %i.ow = load i64, ptr %i.os, align 8, !tbaa !49
  %.not194.i = icmp ugt i64 %.1168243.i, %i.ow
  %i.ox = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %.1168243.i ; 2 uses
  br i1 %.not194.i, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.oy = getelementptr inbounds nuw [16 x i8], ptr %i.ot, i64 %.1168243.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ox, ptr noundef nonnull align 8 dereferenceable(16) %i.oy, i64 16, i1 false), !tbaa.struct !52
  br label %bb.dr

bb.dq:                                            ; preds = %bb.do
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ox, i8 -1, i64 16, i1 false)
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp
  %i.oz = add nuw i64 %.1168243.i, 1              ; 2 uses
  %i.pa = load i64, ptr %i.os, align 8, !tbaa !49
  %.not194.i.1.not = icmp ult i64 %.1168243.i, %i.pa
  %i.pb = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.oz ; 2 uses
  br i1 %.not194.i.1.not, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %bb.dr
  %i.pc = getelementptr inbounds nuw [16 x i8], ptr %i.ot, i64 %i.oz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.pb, ptr noundef nonnull align 8 dereferenceable(16) %i.pc, i64 16, i1 false), !tbaa.struct !52
  br label %bb.du

bb.dt:                                            ; preds = %bb.dr
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.pb, i8 -1, i64 16, i1 false)
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %bb.ds
  %i.pd = add nuw i64 %.1168243.i, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.thread206.i.loopexit.unr-lcssa, label %bb.do, !llvm.loop !70

.thread206.i.loopexit.unr-lcssa:                  ; preds = %bb.du
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.thread206.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.thread206.i.loopexit.unr-lcssa, %.preheader.i40
  %.1168243.i.epil.init = phi i64 [ 1, %.preheader.i40 ], [ %i.pd, %.thread206.i.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod208 = trunc i64 %i.ou to i1
  call void @llvm.assume(i1 %lcmp.mod208)
  %i.pe = load i64, ptr %i.os, align 8, !tbaa !49
  %.not194.i.epil = icmp ugt i64 %.1168243.i.epil.init, %i.pe
  %i.pf = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %.1168243.i.epil.init ; 2 uses
  br i1 %.not194.i.epil, label %bb.dw, label %bb.dv

bb.dv:                                            ; preds = %.epil.preheader
  %i.pg = getelementptr inbounds nuw [16 x i8], ptr %i.ot, i64 %.1168243.i.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.pf, ptr noundef nonnull align 8 dereferenceable(16) %i.pg, i64 16, i1 false), !tbaa.struct !52
  br label %.thread206.i

bb.dw:                                            ; preds = %.epil.preheader
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.pf, i8 -1, i64 16, i1 false)
  br label %.thread206.i

.thread206.i:                                     ; preds = %bb.cy, %.thread206.i.loopexit.unr-lcssa, %bb.dw, %bb.dv, %.thread202.i, %.loopexit.i38
  %i.ph = load ptr, ptr %i.hy, align 8, !tbaa !58 ; 2 uses
  %.not192.i = icmp eq ptr %i.ph, null
  br i1 %.not192.i, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %.thread206.i
  call void @free(ptr noundef nonnull %i.ph) #14
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %.thread206.i
  %i.pi = load ptr, ptr %i.hz, align 8, !tbaa !59 ; 2 uses
  %.not193.i = icmp eq ptr %i.pi, null
  br i1 %.not193.i, label %.sink.split.i, label %.sink.split.sink.split.i

.sink.split.sink.split.i:                         ; preds = %bb.dy, %bb.di, %bb.cw
  %.sink.i39 = phi ptr [ %i.nx, %bb.di ], [ %i.mk, %bb.cw ], [ %i.pi, %bb.dy ]
  %.0160.ph.ph.i = phi i32 [ 12, %bb.di ], [ 1, %bb.cw ], [ 0, %bb.dy ]
  call void @free(ptr noundef %.sink.i39) #14
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.dc, %.sink.split.sink.split.i, %bb.dy
  %.0160.ph.i = phi i32 [ 0, %bb.dy ], [ %.0160.ph.ph.i, %.sink.split.sink.split.i ], [ 12, %bb.dc ]
  %i.pj = load ptr, ptr %i.if, align 8, !tbaa !63
  call void @free(ptr noundef %i.pj) #14
  br label %lmatcher.exit

lmatcher.exit:                                    ; preds = %bb.br, %._crit_edge.i23, %bb.bx, %.sink.split.i
  %.0160.i = phi i32 [ 12, %bb.bx ], [ 16, %bb.br ], [ 1, %._crit_edge.i23 ], [ %.0160.ph.i, %.sink.split.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  br label %bb.dz

bb.dz:                                            ; preds = %bb.c, %bb.a, %bb.b, %lmatcher.exit, %smatcher.exit
  %.0 = phi i32 [ %.0139.i, %smatcher.exit ], [ 2, %bb.a ], [ %.0160.i, %lmatcher.exit ], [ 2, %bb.b ], [ 2, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc ptr @sslow(ptr noundef nonnull readonly captures(none) %0, ptr noundef readonly captures(address, ret: address, provenance) %1, ptr noundef readnone captures(address) %2, i64 noundef range(i64 -9223372036854775807, -9223372036854775808) %3, i64 noundef %4) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load i64, ptr %i.a, align 8, !tbaa !71   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !39
  %i.e = icmp eq ptr %1, %i.d
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %1, i64 -1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !27
  %i.h = sext i8 %i.g to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.i = phi i32 [ %i.h, %bb.b ], [ 128, %bb.a ]
  %i.j = shl nuw i64 1, %3                        ; 2 uses
  %i.k = load ptr, ptr %0, align 8, !tbaa !31     ; 7 uses
  %i.l = tail call fastcc i64 @sstep(ptr noundef %i.k, i64 noundef %3, i64 noundef %4, i64 noundef %i.j, i32 noundef 132, i64 noundef %i.j)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !40
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 40 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 76
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  %i.s = shl nuw i64 1, %4
  br label %bb.d

bb.d:                                             ; preds = %bb.w, %bb.c
  %.0107 = phi ptr [ %1, %bb.c ], [ %i.bw, %bb.w ] ; 5 uses
  %.0106 = phi i32 [ %i.i, %bb.c ], [ %i.w, %bb.w ] ; 7 uses
  %.0102 = phi i64 [ %i.l, %bb.c ], [ %i.bv, %bb.w ] ; 2 uses
  %.0 = phi ptr [ null, %bb.c ], [ %spec.select121, %bb.w ]
  %i.t = icmp eq ptr %.0107, %i.n
  br i1 %i.t, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = load i8, ptr %.0107, align 1, !tbaa !27
  %i.v = sext i8 %i.u to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.w = phi i32 [ %i.v, %bb.e ], [ 128, %bb.d ]  ; 10 uses
  switch i32 %.0106, label %bb.j [
    i32 10, label %bb.g
    i32 128, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.x = load i32, ptr %i.p, align 8, !tbaa !22
  %i.y = and i32 %i.x, 8
  %.not = icmp eq i32 %i.y, 0
  br i1 %.not, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.z = load i32, ptr %i.o, align 8, !tbaa !35
  %i.aa = and i32 %i.z, 1
  %.not111 = icmp eq i32 %i.aa, 0
  br i1 %.not111, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ab = load i32, ptr %i.q, align 4, !tbaa !41
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.f, %bb.i, %bb.h
  %i.ac = phi i32 [ 131, %bb.i ], [ 130, %bb.h ], [ 130, %bb.f ], [ 130, %bb.g ]
  %.099 = phi i32 [ 129, %bb.i ], [ 0, %bb.h ], [ 0, %bb.f ], [ 0, %bb.g ] ; 3 uses
  %.097 = phi i32 [ %i.ab, %bb.i ], [ 0, %bb.h ], [ 0, %bb.f ], [ 0, %bb.g ] ; 4 uses
  switch i32 %i.w, label %bb.n [
    i32 10, label %bb.k
    i32 128, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  %i.ad = load i32, ptr %i.p, align 8, !tbaa !22
  %i.ae = and i32 %i.ad, 8
  %.not112 = icmp eq i32 %i.ae, 0
  br i1 %.not112, label %bb.n, label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.af = load i32, ptr %i.o, align 8, !tbaa !35
  %i.ag = and i32 %i.af, 2
  %.not113 = icmp eq i32 %i.ag, 0
  br i1 %.not113, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ah = load i32, ptr %i.r, align 8, !tbaa !42
  %i.ai = add nsw i32 %i.ah, %.097
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %bb.j, %bb.m, %bb.l
  %.1100 = phi i32 [ %i.ac, %bb.m ], [ %.099, %bb.l ], [ %.099, %bb.j ], [ %.099, %bb.k ] ; 4 uses
  %.198 = phi i32 [ %i.ai, %bb.m ], [ %.097, %bb.l ], [ %.097, %bb.j ], [ %.097, %bb.k ] ; 2 uses
  %i.aj = icmp sgt i32 %.198, 0
  br i1 %i.aj, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.n, %.preheader
  %.1103 = phi i64 [ %i.ak, %.preheader ], [ %.0102, %bb.n ] ; 2 uses
  %.2 = phi i32 [ %i.al, %.preheader ], [ %.198, %bb.n ] ; 2 uses
  %i.ak = tail call fastcc i64 @sstep(ptr noundef %i.k, i64 noundef %3, i64 noundef %4, i64 noundef %.1103, i32 noundef %.1100, i64 noundef %.1103) ; 2 uses
  %i.al = add nsw i32 %.2, -1
  %.old17 = icmp samesign ugt i32 %.2, 1
  br i1 %.old17, label %.preheader, label %.loopexit

.loopexit:                                        ; preds = %.preheader, %bb.n
  %.2104 = phi i64 [ %.0102, %bb.n ], [ %i.ak, %.preheader ] ; 4 uses
  %i.am = icmp eq i32 %.1100, 129
  br i1 %i.am, label %bb.q, label %bb.o

bb.o:                                             ; preds = %.loopexit
  %.not114 = icmp eq i32 %.0106, 128
  br i1 %.not114, label %.thread.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.an = tail call ptr @__ctype_b_loc() #16      ; 3 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !43
  %i.ap = sext i32 %.0106 to i64                  ; 2 uses
  %i.aq = getelementptr inbounds [2 x i8], ptr %i.ao, i64 %i.ap
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !45
  %i.as = and i16 %i.ar, 8
  %i.at = icmp eq i16 %i.as, 0
  %i.au = icmp ne i32 %.0106, 95
  %or.cond.not117 = select i1 %i.at, i1 %i.au, i1 false
  %i.av = icmp ne i32 %i.w, 128
  %or.cond3 = select i1 %or.cond.not117, i1 %i.av, i1 false
  br i1 %or.cond3, label %bb.r, label %.thread124

bb.q:                                             ; preds = %.loopexit
  %.old2.not = icmp eq i32 %i.w, 128
  br i1 %.old2.not, label %bb.s, label %._crit_edge

._crit_edge:                                      ; preds = %bb.q
  %.pre134 = tail call ptr @__ctype_b_loc() #16
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge, %bb.p
  %.pre-phi135 = phi ptr [ %.pre134, %._crit_edge ], [ %i.an, %bb.p ]
  %i.aw = load ptr, ptr %.pre-phi135, align 8, !tbaa !43
  %i.ax = sext i32 %i.w to i64
  %i.ay = getelementptr inbounds [2 x i8], ptr %i.aw, i64 %i.ax
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !45
  %i.ba = and i16 %i.az, 8
  %i.bb = icmp ne i16 %i.ba, 0
  %i.bc = icmp eq i32 %i.w, 95
  %or.cond6 = select i1 %i.bb, i1 true, i1 %i.bc
  %spec.select = select i1 %or.cond6, i32 133, i32 %.1100
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.2101 = phi i32 [ 129, %bb.q ], [ %spec.select, %bb.r ] ; 2 uses
  %.not118 = icmp eq i32 %.0106, 128
  br i1 %.not118, label %.thread, label %..thread124_crit_edge

..thread124_crit_edge:                            ; preds = %bb.s
  %.pre = tail call ptr @__ctype_b_loc() #16
  %.pre132 = sext i32 %.0106 to i64
  br label %.thread124

.thread124:                                       ; preds = %..thread124_crit_edge, %bb.p
  %.pre-phi133 = phi i64 [ %.pre132, %..thread124_crit_edge ], [ %i.ap, %bb.p ]
  %.pre-phi = phi ptr [ %.pre, %..thread124_crit_edge ], [ %i.an, %bb.p ]
  %.2101127 = phi i32 [ %.2101, %..thread124_crit_edge ], [ %.1100, %bb.p ] ; 4 uses
  %i.bd = load ptr, ptr %.pre-phi, align 8, !tbaa !43 ; 2 uses
  %i.be = getelementptr inbounds [2 x i8], ptr %i.bd, i64 %.pre-phi133
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !45
  %i.bg = and i16 %i.bf, 8
  %i.bh = icmp ne i16 %i.bg, 0
  %i.bi = icmp eq i32 %.0106, 95
  %or.cond9 = select i1 %i.bh, i1 true, i1 %i.bi
  br i1 %or.cond9, label %bb.t, label %.thread

bb.t:                                             ; preds = %.thread124
  %i.bj = icmp eq i32 %.2101127, 130
  br i1 %i.bj, label %.thread128, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.not119 = icmp eq i32 %i.w, 128
  br i1 %.not119, label %.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bk = sext i32 %i.w to i64
  %i.bl = getelementptr inbounds [2 x i8], ptr %i.bd, i64 %i.bk
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !45
  %i.bn = and i16 %i.bm, 8
  %i.bo = icmp ne i16 %i.bn, 0
  %i.bp = icmp eq i32 %i.w, 95
  %or.cond12 = select i1 %i.bo, i1 true, i1 %i.bp
  br i1 %or.cond12, label %.thread, label %.thread128

.thread:                                          ; preds = %.thread124, %bb.v, %bb.u, %bb.s
  %.3 = phi i32 [ %.2101, %bb.s ], [ %.2101127, %bb.v ], [ %.2101127, %bb.u ], [ %.2101127, %.thread124 ]
  %i.bq = icmp eq i32 %.3, 133
  br i1 %i.bq, label %.thread128, label %.thread.thread

.thread128:                                       ; preds = %bb.v, %bb.t, %.thread
  %.3131 = phi i32 [ 133, %.thread ], [ 134, %bb.t ], [ 134, %bb.v ]
  %i.br = tail call fastcc i64 @sstep(ptr noundef %i.k, i64 noundef %3, i64 noundef %4, i64 noundef %.2104, i32 noundef %.3131, i64 noundef %.2104)
  br label %.thread.thread

.thread.thread:                                   ; preds = %bb.o, %.thread, %.thread128
  %.3105 = phi i64 [ %i.br, %.thread128 ], [ %.2104, %.thread ], [ %.2104, %bb.o ] ; 3 uses
  %i.bs = and i64 %.3105, %i.s
  %.not120 = icmp eq i64 %i.bs, 0
  %spec.select121 = select i1 %.not120, ptr %.0, ptr %.0107 ; 2 uses
  %i.bt = icmp eq i64 %.3105, %i.b
  %i.bu = icmp eq ptr %.0107, %2
  %or.cond = or i1 %i.bu, %i.bt
  br i1 %or.cond, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.thread.thread
  %i.bv = tail call fastcc i64 @sstep(ptr noundef %i.k, i64 noundef %3, i64 noundef %4, i64 noundef %.3105, i32 noundef %i.w, i64 noundef %i.b)
  %i.bw = getelementptr inbounds nuw i8, ptr %.0107, i64 1
  br label %bb.d

bb.x:                                             ; preds = %.thread.thread
  ret ptr %spec.select121
}

declare ptr @cli_malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc ptr @sdissect(ptr noundef nonnull %0, ptr noundef %1, ptr noundef readnone captures(address) %2, i64 noundef range(i64 -9223372036854775807, -9223372036854775808) %3, i64 noundef %4) unnamed_addr #6 {
bb.a:
  %i.a = icmp slt i64 %3, %4
  br i1 %i.a, label %.lr.ph171, label %._crit_edge172

.lr.ph171:                                        ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph171, %bb.n
  %.0142169 = phi ptr [ %1, %.lr.ph171 ], [ %.1143, %bb.n ] ; 17 uses
  %.0146168 = phi i64 [ %3, %.lr.ph171 ], [ %i.s, %bb.n ] ; 12 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !31
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !72   ; 4 uses
  %i.g = getelementptr inbounds [8 x i8], ptr %i.f, i64 %.0146168
  %i.h = load i64, ptr %i.g, align 8, !tbaa !50   ; 8 uses
  %i.i = trunc i64 %i.h to i32
  %trunc = and i32 %i.i, -134217728
  switch i32 %trunc, label %.loopexit [
    i32 1207959552, label %bb.c
    i32 1476395008, label %bb.c
    i32 2013265920, label %.preheader156
  ]

.preheader156:                                    ; preds = %bb.b
  %i.j = and i64 %i.h, 4160749568
  %.not161 = icmp eq i64 %i.j, 2415919104
  br i1 %.not161, label %.loopexit, label %.lr.ph

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.k = and i64 %i.h, 134217727
  %i.l = add i64 %i.k, %.0146168
  br label %.loopexit

.lr.ph:                                           ; preds = %.preheader156, %.lr.ph
  %i.m = phi i64 [ %i.q, %.lr.ph ], [ %i.h, %.preheader156 ]
  %.0144162 = phi i64 [ %i.o, %.lr.ph ], [ %.0146168, %.preheader156 ]
  %i.n = and i64 %i.m, 134217727
  %i.o = add i64 %i.n, %.0144162                  ; 3 uses
  %i.p = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.o
  %i.q = load i64, ptr %i.p, align 8, !tbaa !50   ; 2 uses
  %i.r = and i64 %i.q, 4160749568
  %.not = icmp eq i64 %i.r, 2415919104
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !73

.loopexit:                                        ; preds = %.lr.ph, %.preheader156, %bb.c, %bb.b
  %.1145 = phi i64 [ %.0146168, %bb.b ], [ %i.l, %bb.c ], [ %.0146168, %.preheader156 ], [ %i.o, %.lr.ph ] ; 5 uses
  %i.s = add nsw i64 %.1145, 1                    ; 8 uses
  %i.t = and i64 %i.h, 4160749568
  %i.u = add nsw i64 %i.t, -134217728
  %i.v = lshr exact i64 %i.u, 27
  switch i64 %i.v, label %bb.n [
    i64 13, label %bb.m
    i64 1, label %bb.d
    i64 12, label %bb.l
    i64 14, label %.preheader
    i64 8, label %.preheader154
    i64 10, label %.preheader155
    i64 4, label %bb.e
    i64 5, label %bb.e
  ]

bb.d:                                             ; preds = %.loopexit
  %i.w = getelementptr inbounds nuw i8, ptr %.0142169, i64 1
  br label %bb.n

bb.e:                                             ; preds = %.loopexit, %.loopexit
  %i.x = getelementptr inbounds nuw i8, ptr %.0142169, i64 1
  br label %bb.n

.preheader155:                                    ; preds = %.loopexit, %.preheader155
  %.0140 = phi ptr [ %i.ab, %.preheader155 ], [ %2, %.loopexit ]
  %i.y = tail call fastcc ptr @sslow(ptr noundef %0, ptr noundef %.0142169, ptr noundef %.0140, i64 noundef %.0146168, i64 noundef %i.s) ; 6 uses
  %i.z = tail call fastcc ptr @sslow(ptr noundef %0, ptr noundef %i.y, ptr noundef %2, i64 noundef %i.s, i64 noundef %4)
  %i.aa = icmp eq ptr %i.z, %2
  %i.ab = getelementptr inbounds i8, ptr %i.y, i64 -1
  br i1 %i.aa, label %bb.f, label %.preheader155

bb.f:                                             ; preds = %.preheader155
  %i.ac = add nsw i64 %.0146168, 1                ; 2 uses
  %i.ad = tail call fastcc ptr @sslow(ptr noundef %0, ptr noundef %.0142169, ptr noundef %i.y, i64 noundef %i.ac, i64 noundef %.1145)
  %.not151 = icmp eq ptr %i.ad, null
  br i1 %.not151, label %bb.n, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = tail call fastcc ptr @sdissect(ptr noundef %0, ptr noundef %.0142169, ptr noundef %i.y, i64 noundef %i.ac, i64 noundef %.1145) ; 0 uses
  br label %bb.n

.preheader154:                                    ; preds = %.loopexit, %.preheader154
  %.1141 = phi ptr [ %i.ai, %.preheader154 ], [ %2, %.loopexit ]
  %i.af = tail call fastcc ptr @sslow(ptr noundef %0, ptr noundef %.0142169, ptr noundef %.1141, i64 noundef %.0146168, i64 noundef %i.s) ; 4 uses
  %i.ag = tail call fastcc ptr @sslow(ptr noundef %0, ptr noundef %i.af, ptr noundef %2, i64 noundef %i.s, i64 noundef %4)
  %i.ah = icmp eq ptr %i.ag, %2
  %i.ai = getelementptr inbounds i8, ptr %i.af, i64 -1
  br i1 %i.ah, label %bb.h, label %.preheader154

bb.h:                                             ; preds = %.preheader154
  %i.aj = add nsw i64 %.0146168, 1                ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %bb.h
  %.0136 = phi ptr [ %.0142169, %bb.h ], [ %i.ak, %bb.i ] ; 5 uses
  %.0 = phi ptr [ %.0142169, %bb.h ], [ %.0136, %bb.i ]
  %i.ak = tail call fastcc ptr @sslow(ptr noundef %0, ptr noundef %.0136, ptr noundef %i.af, i64 noundef %i.aj, i64 noundef %.1145) ; 4 uses
  %i.al = icmp eq ptr %i.ak, null                 ; 3 uses
  %i.am = icmp eq ptr %i.ak, %.0136
  %or.cond = or i1 %i.al, %i.am
  br i1 %or.cond, label %bb.j, label %bb.i

bb.j:                                             ; preds = %bb.i
  %spec.select = select i1 %i.al, ptr %.0, ptr %.0136
  %spec.select152 = select i1 %i.al, ptr %.0136, ptr %i.ak
  %i.an = tail call fastcc ptr @sdissect(ptr noundef %0, ptr noundef %spec.select, ptr noundef %spec.select152, i64 noundef %i.aj, i64 noundef %.1145) ; 0 uses
  br label %bb.n

.preheader:                                       ; preds = %.loopexit, %.preheader
  %.2 = phi ptr [ %i.ar, %.preheader ], [ %2, %.loopexit ]
  %i.ao = tail call fastcc ptr @sslow(ptr noundef %0, ptr noundef %.0142169, ptr noundef %.2, i64 noundef %.0146168, i64 noundef %i.s) ; 8 uses
  %i.ap = tail call fastcc ptr @sslow(ptr noundef %0, ptr noundef %i.ao, ptr noundef %2, i64 noundef %i.s, i64 noundef %4)
  %i.aq = icmp eq ptr %i.ap, %2
  %i.ar = getelementptr inbounds i8, ptr %i.ao, i64 -1
  br i1 %i.aq, label %bb.k, label %.preheader

bb.k:                                             ; preds = %.preheader
  %i.as = and i64 %i.h, 134217727
  %i.at = add nsw i64 %.0146168, -1
  %i.au = add i64 %i.at, %i.as                    ; 3 uses
  %.0139163 = add nsw i64 %.0146168, 1            ; 2 uses
  %i.av = tail call fastcc ptr @sslow(ptr noundef %0, ptr noundef %.0142169, ptr noundef %i.ao, i64 noundef %.0139163, i64 noundef %i.au)
  %i.aw = icmp eq ptr %i.av, %i.ao
  br i1 %i.aw, label %._crit_edge, label %.lr.ph165

.lr.ph165:                                        ; preds = %bb.k, %.lr.ph165
  %.0137164 = phi i64 [ %spec.select153, %.lr.ph165 ], [ %i.au, %bb.k ] ; 3 uses
  %i.ax = add nsw i64 %.0137164, 1                ; 2 uses
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.ax
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !50
  %i.ba = and i64 %i.az, 134217727                ; 2 uses
  %i.bb = add i64 %i.ba, %i.ax                    ; 2 uses
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.bb
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !50
  %i.be = and i64 %i.bd, 4160749568
  %i.bf = icmp eq i64 %i.be, 2281701376
  %i.bg = add i64 %i.ba, %.0137164
  %spec.select153 = select i1 %i.bf, i64 %i.bg, i64 %i.bb ; 3 uses
  %.0139 = add nsw i64 %.0137164, 2               ; 2 uses
  %i.bh = tail call fastcc ptr @sslow(ptr noundef %0, ptr noundef %.0142169, ptr noundef %i.ao, i64 noundef %.0139, i64 noundef %spec.select153)
  %i.bi = icmp eq ptr %i.bh, %i.ao
  br i1 %i.bi, label %._crit_edge, label %.lr.ph165

._crit_edge:                                      ; preds = %.lr.ph165, %bb.k
  %.0137.lcssa = phi i64 [ %i.au, %bb.k ], [ %spec.select153, %.lr.ph165 ]
  %.0139.lcssa = phi i64 [ %.0139163, %bb.k ], [ %.0139, %.lr.ph165 ]
  %i.bj = tail call fastcc ptr @sdissect(ptr noundef %0, ptr noundef %.0142169, ptr noundef %i.ao, i64 noundef %.0139.lcssa, i64 noundef %.0137.lcssa) ; 0 uses
  br label %bb.n

bb.l:                                             ; preds = %.loopexit
  %i.bk = and i64 %i.h, 134217727
  %i.bl = load ptr, ptr %i.b, align 8, !tbaa !38
  %i.bm = ptrtoint ptr %.0142169 to i64
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = load ptr, ptr %i.c, align 8, !tbaa !36
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %i.bp, i64 %i.bk
  store i64 %i.bo, ptr %i.bq, align 8, !tbaa !23
  br label %bb.n

bb.m:                                             ; preds = %.loopexit
  %i.br = and i64 %i.h, 134217727
  %i.bs = load ptr, ptr %i.b, align 8, !tbaa !38
  %i.bt = ptrtoint ptr %.0142169 to i64
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = sub i64 %i.bt, %i.bu
  %i.bw = load ptr, ptr %i.c, align 8, !tbaa !36
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %i.bw, i64 %i.br
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store i64 %i.bv, ptr %i.by, align 8, !tbaa !25
  br label %bb.n

bb.n:                                             ; preds = %bb.g, %bb.f, %bb.d, %bb.e, %bb.j, %._crit_edge, %bb.l, %bb.m, %.loopexit
  %.1143 = phi ptr [ %.0142169, %.loopexit ], [ %.0142169, %bb.m ], [ %i.w, %bb.d ], [ %.0142169, %bb.l ], [ %i.ao, %._crit_edge ], [ %i.af, %bb.j ], [ %i.x, %bb.e ], [ %i.y, %bb.f ], [ %i.y, %bb.g ] ; 2 uses
  %i.bz = icmp slt i64 %i.s, %4
  br i1 %i.bz, label %bb.b, label %._crit_edge172, !llvm.loop !74

._crit_edge172:                                   ; preds = %bb.n, %bb.a
  %.0142.lcssa = phi ptr [ %1, %bb.a ], [ %.1143, %bb.n ]
  ret ptr %.0142.lcssa
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc ptr @sbackref(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i32 noundef %6) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.g = icmp slt i64 %3, %4
  br i1 %i.g, label %.lr.ph.lr.ph.lr.ph, label %.loopexit438

.lr.ph.lr.ph.lr.ph:                               ; preds = %bb.a, %tailrecurse.outer.backedge
  %.tr274.ph596 = phi i32 [ %.tr274.ph282590, %tailrecurse.outer.backedge ], [ %6, %bb.a ]
  %.tr273.ph595 = phi i64 [ %.tr273.ph.be, %tailrecurse.outer.backedge ], [ %5, %bb.a ] ; 10 uses
  %.tr271.ph594 = phi i64 [ %i.du, %tailrecurse.outer.backedge ], [ %3, %bb.a ]
  %.tr269.ph593 = phi ptr [ %.0234343, %tailrecurse.outer.backedge ], [ %1, %bb.a ]
  br label %.lr.ph.lr.ph

.lr.ph.lr.ph:                                     ; preds = %.lr.ph.lr.ph.lr.ph, %tailrecurse.outer279
  %.tr274.ph282590 = phi i32 [ %.tr274.ph596, %.lr.ph.lr.ph.lr.ph ], [ %.0230, %tailrecurse.outer279 ] ; 10 uses
  %.tr271.ph281589 = phi i64 [ %.tr271.ph594, %.lr.ph.lr.ph.lr.ph ], [ %i.ew, %tailrecurse.outer279 ]
  %.tr269.ph280588 = phi ptr [ %.tr269.ph593, %.lr.ph.lr.ph.lr.ph ], [ %i.ex, %tailrecurse.outer279 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %tailrecurse
  %.tr271586 = phi i64 [ %.tr271.ph281589, %.lr.ph.lr.ph ], [ %i.fb, %tailrecurse ]
  %.tr269585 = phi ptr [ %.tr269.ph280588, %.lr.ph.lr.ph ], [ %.0234343, %tailrecurse ]
  %i.h = load ptr, ptr %0, align 8, !tbaa !31     ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !72   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.loopexit275
  %.0234343 = phi ptr [ %.tr269585, %.lr.ph ], [ %.1235, %.loopexit275 ] ; 52 uses
  %.0236342 = phi i64 [ %.tr271586, %.lr.ph ], [ %i.ds, %.loopexit275 ] ; 16 uses
  %i.m = getelementptr inbounds [8 x i8], ptr %i.j, i64 %.0236342
  %i.n = load i64, ptr %i.m, align 8, !tbaa !50   ; 3 uses
  %i.o = and i64 %i.n, 4160749568
  %i.p = add nsw i64 %i.o, -268435456
  %i.q = lshr exact i64 %i.p, 27
  switch i64 %i.q, label %bb.ak [
    i64 0, label %bb.c
    i64 3, label %bb.e
    i64 4, label %bb.g
    i64 1, label %bb.i
    i64 2, label %bb.n
    i64 17, label %bb.s
    i64 18, label %bb.aa
    i64 10, label %.loopexit275
    i64 14, label %bb.ai
  ]

bb.c:                                             ; preds = %bb.b
  %i.r = icmp eq ptr %.0234343, %2
  br i1 %i.r, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.0234343, i64 1
  %i.t = load i8, ptr %.0234343, align 1, !tbaa !27
  %i.u = trunc i64 %i.n to i8
  %.not265 = icmp eq i8 %i.t, %i.u
  br i1 %.not265, label %.loopexit275, label %.loopexit

bb.e:                                             ; preds = %bb.b
  %i.v = icmp eq ptr %.0234343, %2
  br i1 %i.v, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %.0234343, i64 1
  br label %.loopexit275

bb.g:                                             ; preds = %bb.b
  %i.x = icmp eq ptr %.0234343, %2
  br i1 %i.x, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = load ptr, ptr %i.l, align 8, !tbaa !75
  %i.z = and i64 %i.n, 134217727
  %i.aa = getelementptr inbounds nuw [32 x i8], ptr %i.y, i64 %i.z ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !76
  %i.ac = getelementptr inbounds nuw i8, ptr %.0234343, i64 1
  %i.ad = load i8, ptr %.0234343, align 1, !tbaa !27
  %i.ae = zext i8 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !27
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !78
  %i.aj = and i8 %i.ai, %i.ag
  %.not264 = icmp eq i8 %i.aj, 0
  br i1 %.not264, label %.loopexit, label %.loopexit275

bb.i:                                             ; preds = %bb.b
  %i.ak = load ptr, ptr %i.c, align 8, !tbaa !39
  %i.al = icmp eq ptr %.0234343, %i.ak
  br i1 %i.al, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.am = load i32, ptr %i.b, align 8, !tbaa !35
  %i.an = and i32 %i.am, 1
  %.not262 = icmp eq i32 %i.an, 0
  br i1 %.not262, label %.loopexit275, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !40
  %i.ap = icmp ult ptr %.0234343, %i.ao
  br i1 %i.ap, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %bb.k
  %i.aq = getelementptr inbounds i8, ptr %.0234343, i64 -1
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !27
  %i.as = icmp eq i8 %i.ar, 10
  br i1 %i.as, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %bb.l
  %i.at = load i32, ptr %i.k, align 8, !tbaa !22
  %i.au = and i32 %i.at, 8
  %.not263 = icmp eq i32 %i.au, 0
  br i1 %.not263, label %.loopexit, label %.loopexit275

bb.n:                                             ; preds = %bb.b
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !40  ; 2 uses
  %i.aw = icmp eq ptr %.0234343, %i.av
  br i1 %i.aw, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ax = load i32, ptr %i.b, align 8, !tbaa !35
  %i.ay = and i32 %i.ax, 2
  %.not260 = icmp eq i32 %i.ay, 0
  br i1 %.not260, label %.loopexit275, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.az = icmp ult ptr %.0234343, %i.av
  br i1 %i.az, label %bb.q, label %.loopexit

bb.q:                                             ; preds = %bb.p
  %i.ba = load i8, ptr %.0234343, align 1, !tbaa !27
  %i.bb = icmp eq i8 %i.ba, 10
  br i1 %i.bb, label %bb.r, label %.loopexit

bb.r:                                             ; preds = %bb.q
  %i.bc = load i32, ptr %i.k, align 8, !tbaa !22
  %i.bd = and i32 %i.bc, 8
  %.not261 = icmp eq i32 %i.bd, 0
  br i1 %.not261, label %.loopexit, label %.loopexit275

bb.s:                                             ; preds = %bb.b
  %i.be = load ptr, ptr %i.c, align 8, !tbaa !39  ; 2 uses
  %i.bf = icmp eq ptr %.0234343, %i.be
  br i1 %i.bf, label %bb.t, label %._crit_edge415

._crit_edge415:                                   ; preds = %bb.s
  %.pre416 = load ptr, ptr %i.a, align 8, !tbaa !40
  br label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bg = load i32, ptr %i.b, align 8, !tbaa !35
  %i.bh = and i32 %i.bg, 1
  %.not256 = icmp eq i32 %i.bh, 0
  %.pre417 = load ptr, ptr %i.a, align 8, !tbaa !40 ; 2 uses
  br i1 %.not256, label %._crit_edge414, label %bb.u

bb.u:                                             ; preds = %._crit_edge415, %bb.t
  %i.bi = phi ptr [ %.pre416, %._crit_edge415 ], [ %.pre417, %bb.t ] ; 3 uses
  %i.bj = icmp ult ptr %.0234343, %i.bi
  br i1 %i.bj, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.bk = getelementptr inbounds i8, ptr %.0234343, i64 -1
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !27
  %i.bm = icmp eq i8 %i.bl, 10
  br i1 %i.bm, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bn = load i32, ptr %i.k, align 8, !tbaa !22
  %i.bo = and i32 %i.bn, 8
  %.not257 = icmp eq i32 %i.bo, 0
  br i1 %.not257, label %bb.x, label %._crit_edge414

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %i.bp = icmp ugt ptr %.0234343, %i.be
  br i1 %i.bp, label %bb.y, label %.loopexit

bb.y:                                             ; preds = %bb.x
  %i.bq = tail call ptr @__ctype_b_loc() #16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !43
  %i.bs = getelementptr inbounds i8, ptr %.0234343, i64 -1
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !27  ; 2 uses
  %i.bu = sext i8 %i.bt to i64
  %i.bv = getelementptr inbounds [2 x i8], ptr %i.br, i64 %i.bu
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !45
  %i.bx = and i16 %i.bw, 8
  %.not258 = icmp ne i16 %i.bx, 0
  %i.by = icmp eq i8 %i.bt, 95
  %or.cond = or i1 %i.by, %.not258
  br i1 %or.cond, label %.loopexit, label %._crit_edge414

._crit_edge414:                                   ; preds = %bb.t, %bb.y, %bb.w
  %i.bz = phi ptr [ %i.bi, %bb.w ], [ %i.bi, %bb.y ], [ %.pre417, %bb.t ]
  %i.ca = icmp ult ptr %.0234343, %i.bz
  br i1 %i.ca, label %bb.z, label %.loopexit

bb.z:                                             ; preds = %._crit_edge414
  %i.cb = tail call ptr @__ctype_b_loc() #16
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !43
  %i.cd = load i8, ptr %.0234343, align 1, !tbaa !27 ; 2 uses
  %i.ce = sext i8 %i.cd to i64
  %i.cf = getelementptr inbounds [2 x i8], ptr %i.cc, i64 %i.ce
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !45
  %i.ch = and i16 %i.cg, 8
  %.not259 = icmp ne i16 %i.ch, 0
  %i.ci = icmp eq i8 %i.cd, 95
  %or.cond266 = or i1 %i.ci, %.not259
  br i1 %or.cond266, label %.loopexit275, label %.loopexit

bb.aa:                                            ; preds = %bb.b
  %i.cj = load ptr, ptr %i.a, align 8, !tbaa !40  ; 2 uses
  %i.ck = icmp eq ptr %.0234343, %i.cj
  br i1 %i.ck, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cl = load i32, ptr %i.b, align 8, !tbaa !35
  %i.cm = and i32 %i.cl, 2
  %.not252 = icmp eq i32 %i.cm, 0
  br i1 %.not252, label %bb.ag, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.cn = icmp ult ptr %.0234343, %i.cj
  br i1 %i.cn, label %bb.ad, label %.loopexit

bb.ad:                                            ; preds = %bb.ac
  %i.co = load i8, ptr %.0234343, align 1, !tbaa !27 ; 3 uses
  %i.cp = icmp eq i8 %i.co, 10
  br i1 %i.cp, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.cq = load i32, ptr %i.k, align 8, !tbaa !22
  %i.cr = and i32 %i.cq, 8
  %.not253 = icmp eq i32 %i.cr, 0
  br i1 %.not253, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.cs = tail call ptr @__ctype_b_loc() #16
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !43
  %i.cu = sext i8 %i.co to i64
  %i.cv = getelementptr inbounds [2 x i8], ptr %i.ct, i64 %i.cu
  %i.cw = load i16, ptr %i.cv, align 2, !tbaa !45
  %i.cx = and i16 %i.cw, 8
  %.not254 = icmp ne i16 %i.cx, 0
  %i.cy = icmp eq i8 %i.co, 95
  %or.cond267 = or i1 %i.cy, %.not254
  br i1 %or.cond267, label %.loopexit, label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ab
  %i.cz = load ptr, ptr %i.c, align 8, !tbaa !39
  %i.da = icmp ugt ptr %.0234343, %i.cz
  br i1 %i.da, label %bb.ah, label %.loopexit

bb.ah:                                            ; preds = %bb.ag
  %i.db = tail call ptr @__ctype_b_loc() #16
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !43
  %i.dd = getelementptr inbounds i8, ptr %.0234343, i64 -1
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !27  ; 2 uses
  %i.df = sext i8 %i.de to i64
  %i.dg = getelementptr inbounds [2 x i8], ptr %i.dc, i64 %i.df
  %i.dh = load i16, ptr %i.dg, align 2, !tbaa !45
  %i.di = and i16 %i.dh, 8
  %.not255 = icmp ne i16 %i.di, 0
  %i.dj = icmp eq i8 %i.de, 95
  %or.cond268 = or i1 %i.dj, %.not255
  br i1 %or.cond268, label %.loopexit275, label %.loopexit

bb.ai:                                            ; preds = %bb.b
  %i.dk = add nsw i64 %.0236342, 1                ; 2 uses
  %i.dl = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.dk
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !50
  br label %bb.aj

bb.aj:                                            ; preds = %bb.aj, %bb.ai
  %.1237 = phi i64 [ %i.dk, %bb.ai ], [ %i.do, %bb.aj ]
  %.0228 = phi i64 [ %i.dm, %bb.ai ], [ %i.dq, %bb.aj ]
  %i.dn = and i64 %.0228, 134217727
  %i.do = add i64 %i.dn, %.1237                   ; 3 uses
  %i.dp = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.do
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !50 ; 2 uses
  %i.dr = and i64 %i.dq, 4160749568
  %.not251 = icmp eq i64 %i.dr, 2415919104
  br i1 %.not251, label %.loopexit275, label %bb.aj, !llvm.loop !79

.loopexit275:                                     ; preds = %bb.aj, %bb.b, %bb.f, %bb.d, %bb.h, %bb.j, %bb.m, %bb.o, %bb.r, %bb.z, %bb.ah
  %.2 = phi i64 [ %.0236342, %bb.ah ], [ %.0236342, %bb.d ], [ %.0236342, %bb.f ], [ %.0236342, %bb.h ], [ %.0236342, %bb.m ], [ %.0236342, %bb.j ], [ %.0236342, %bb.r ], [ %.0236342, %bb.o ], [ %.0236342, %bb.z ], [ %.0236342, %bb.b ], [ %i.do, %bb.aj ]
  %.1235 = phi ptr [ %.0234343, %bb.ah ], [ %i.s, %bb.d ], [ %i.w, %bb.f ], [ %i.ac, %bb.h ], [ %.0234343, %bb.m ], [ %.0234343, %bb.j ], [ %.0234343, %bb.r ], [ %.0234343, %bb.o ], [ %.0234343, %bb.z ], [ %.0234343, %bb.b ], [ %.0234343, %bb.aj ] ; 2 uses
  %i.ds = add nsw i64 %.2, 1                      ; 2 uses
  %i.dt = icmp slt i64 %i.ds, %4
  br i1 %i.dt, label %bb.b, label %.loopexit438, !llvm.loop !80

.loopexit438:                                     ; preds = %tailrecurse.outer.backedge, %tailrecurse.outer279, %tailrecurse, %.loopexit275, %bb.a
  %.0234.lcssa.ph = phi ptr [ %i.ex, %tailrecurse.outer279 ], [ %.1235, %.loopexit275 ], [ %.0234343, %tailrecurse ], [ %1, %bb.a ], [ %.0234343, %tailrecurse.outer.backedge ] ; 2 uses
  %.not244 = icmp eq ptr %.0234.lcssa.ph, %2
  %.0234. = select i1 %.not244, ptr %.0234.lcssa.ph, ptr null
  br label %.loopexit

bb.ak:                                            ; preds = %bb.b
  %i.du = add nsw i64 %.0236342, 1                ; 8 uses
  %i.dv = load ptr, ptr %0, align 8, !tbaa !31
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !72 ; 2 uses
  %i.dy = getelementptr inbounds [8 x i8], ptr %i.dx, i64 %.0236342
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !50 ; 7 uses
  %i.ea = and i64 %i.dz, 4160749568
  %i.eb = add nsw i64 %i.ea, -939524096
  %i.ec = lshr exact i64 %i.eb, 27
  switch i64 %i.ec, label %.loopexit [
    i64 0, label %bb.al
    i64 4, label %bb.ar
    i64 2, label %bb.as
    i64 3, label %bb.at
    i64 8, label %bb.ax
    i64 6, label %bb.az
    i64 7, label %bb.bb
  ]

bb.al:                                            ; preds = %bb.ak
  %i.ed = and i64 %i.dz, 134217727                ; 2 uses
  %i.ee = load ptr, ptr %i.d, align 8, !tbaa !36
  %i.ef = getelementptr inbounds nuw [16 x i8], ptr %i.ee, i64 %i.ed ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !25 ; 3 uses
  %i.ei = icmp eq i64 %i.eh, -1
  br i1 %i.ei, label %.loopexit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ej = load i64, ptr %i.ef, align 8, !tbaa !23 ; 3 uses
  %i.ek = sub nsw i64 %i.eh, %i.ej                ; 3 uses
  %i.el = icmp eq i64 %i.eh, %i.ej
  br i1 %i.el, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.em = add nsw i32 %.tr274.ph282590, 1
  %i.en = icmp sgt i32 %.tr274.ph282590, 100
  br i1 %i.en, label %.loopexit, label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.0230 = phi i32 [ %i.em, %bb.an ], [ %.tr274.ph282590, %bb.am ]
  %i.eo = sub i64 0, %i.ek
  %i.ep = getelementptr inbounds i8, ptr %2, i64 %i.eo
  %i.eq = icmp ugt ptr %.0234343, %i.ep
  br i1 %i.eq, label %.loopexit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.er = load ptr, ptr %i.e, align 8, !tbaa !38
  %i.es = getelementptr inbounds i8, ptr %i.er, i64 %i.ej
  %bcmp = tail call i32 @bcmp(ptr %.0234343, ptr %i.es, i64 %i.ek)
  %.not249 = icmp eq i32 %bcmp, 0
  br i1 %.not249, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.ap
  %i.et = or disjoint i64 %i.ed, 1073741824
  br label %bb.aq

bb.aq:                                            ; preds = %bb.aq, %.preheader
  %.3 = phi i64 [ %i.ew, %bb.aq ], [ %.0236342, %.preheader ] ; 2 uses
  %i.eu = getelementptr inbounds [8 x i8], ptr %i.dx, i64 %.3
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !50
  %.not250 = icmp eq i64 %i.ev, %i.et
  %i.ew = add nsw i64 %.3, 1                      ; 3 uses
  br i1 %.not250, label %tailrecurse.outer279, label %bb.aq, !llvm.loop !81

tailrecurse.outer279:                             ; preds = %bb.aq
  %i.ex = getelementptr inbounds nuw i8, ptr %.0234343, i64 %i.ek ; 2 uses
  %i.ey = icmp slt i64 %i.ew, %4
  br i1 %i.ey, label %.lr.ph.lr.ph, label %.loopexit438

bb.ar:                                            ; preds = %bb.ak
  %i.ez = tail call fastcc ptr @sbackref(ptr noundef %0, ptr noundef %.0234343, ptr noundef %2, i64 noundef %i.du, i64 noundef %4, i64 noundef %.tr273.ph595, i32 noundef %.tr274.ph282590) ; 2 uses
  %.not248 = icmp eq ptr %i.ez, null
  br i1 %.not248, label %tailrecurse, label %.loopexit

tailrecurse:                                      ; preds = %bb.ar
  %i.fa = and i64 %i.dz, 134217727
  %i.fb = add i64 %i.fa, %i.du                    ; 2 uses
  %i.fc = icmp slt i64 %i.fb, %4
  br i1 %i.fc, label %.lr.ph, label %.loopexit438

bb.as:                                            ; preds = %bb.ak
  %i.fd = load ptr, ptr %i.f, align 8, !tbaa !37
  %i.fe = add nsw i64 %.tr273.ph595, 1            ; 2 uses
  %i.ff = getelementptr inbounds [8 x i8], ptr %i.fd, i64 %i.fe
  store ptr %.0234343, ptr %i.ff, align 8, !tbaa !82
  br label %tailrecurse.outer.backedge

tailrecurse.outer.backedge:                       ; preds = %bb.as, %bb.au, %bb.aw
  %.tr273.ph.be = phi i64 [ %i.fq, %bb.aw ], [ %i.fl, %bb.au ], [ %i.fe, %bb.as ]
  %i.fg = icmp slt i64 %i.du, %4
  br i1 %i.fg, label %.lr.ph.lr.ph.lr.ph, label %.loopexit438

bb.at:                                            ; preds = %bb.ak
  %i.fh = load ptr, ptr %i.f, align 8, !tbaa !37
  %i.fi = getelementptr inbounds [8 x i8], ptr %i.fh, i64 %.tr273.ph595 ; 2 uses
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !82
  %i.fk = icmp eq ptr %.0234343, %i.fj
  br i1 %i.fk, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.fl = add nsw i64 %.tr273.ph595, -1
  br label %tailrecurse.outer.backedge

bb.av:                                            ; preds = %bb.at
  store ptr %.0234343, ptr %i.fi, align 8, !tbaa !82
  %i.fm = and i64 %i.dz, 134217727
  %i.fn = sub i64 %i.du, %i.fm
  %i.fo = tail call fastcc ptr @sbackref(ptr noundef %0, ptr noundef %.0234343, ptr noundef %2, i64 noundef %i.fn, i64 noundef %4, i64 noundef %.tr273.ph595, i32 noundef %.tr274.ph282590) ; 2 uses
  %i.fp = icmp eq ptr %i.fo, null
  br i1 %i.fp, label %bb.aw, label %.loopexit

bb.aw:                                            ; preds = %bb.av
  %i.fq = add nsw i64 %.tr273.ph595, -1
  br label %tailrecurse.outer.backedge

bb.ax:                                            ; preds = %bb.ak
  %i.fr = and i64 %i.dz, 134217727
  %i.fs = add i64 %.0236342, -1
  %i.ft = add i64 %i.fs, %i.fr                    ; 2 uses
  %i.fu = tail call fastcc ptr @sbackref(ptr noundef %0, ptr noundef %.0234343, ptr noundef %2, i64 noundef %i.du, i64 noundef %i.ft, i64 noundef %.tr273.ph595, i32 noundef %.tr274.ph282590) ; 2 uses
  %.not247346 = icmp eq ptr %i.fu, null
  br i1 %.not247346, label %.lr.ph349, label %.loopexit

.lr.ph349:                                        ; preds = %bb.ax, %bb.ay
  %.0231347 = phi i64 [ %spec.select, %bb.ay ], [ %i.ft, %bb.ax ] ; 4 uses
  %i.fv = load ptr, ptr %0, align 8, !tbaa !31
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !72 ; 3 uses
  %i.fy = getelementptr inbounds [8 x i8], ptr %i.fx, i64 %.0231347
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !50
  %i.ga = and i64 %i.fz, 4160749568
  %i.gb = icmp eq i64 %i.ga, 2415919104
  br i1 %i.gb, label %.loopexit, label %bb.ay

bb.ay:                                            ; preds = %.lr.ph349
  %i.gc = add nsw i64 %.0231347, 1                ; 2 uses
  %i.gd = add nsw i64 %.0231347, 2
  %i.ge = getelementptr inbounds [8 x i8], ptr %i.fx, i64 %i.gc
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !50
  %i.gg = and i64 %i.gf, 134217727                ; 2 uses
  %i.gh = add i64 %i.gg, %i.gc                    ; 2 uses
  %i.gi = getelementptr inbounds [8 x i8], ptr %i.fx, i64 %i.gh
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !50
  %i.gk = and i64 %i.gj, 4160749568
  %i.gl = icmp eq i64 %i.gk, 2281701376
  %i.gm = add i64 %i.gg, %.0231347
  %spec.select = select i1 %i.gl, i64 %i.gm, i64 %i.gh ; 2 uses
  %i.gn = tail call fastcc ptr @sbackref(ptr noundef %0, ptr noundef %.0234343, ptr noundef %2, i64 noundef %i.gd, i64 noundef %spec.select, i64 noundef %.tr273.ph595, i32 noundef %.tr274.ph282590) ; 2 uses
  %.not247 = icmp eq ptr %i.gn, null
  br i1 %.not247, label %.lr.ph349, label %.loopexit

bb.az:                                            ; preds = %bb.ak
  %i.go = and i64 %i.dz, 134217727                ; 2 uses
  %i.gp = load ptr, ptr %i.d, align 8, !tbaa !36
  %i.gq = getelementptr inbounds nuw [16 x i8], ptr %i.gp, i64 %i.go ; 2 uses
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !23
  %i.gs = load ptr, ptr %i.e, align 8, !tbaa !38
  %i.gt = ptrtoint ptr %.0234343 to i64
  %i.gu = ptrtoint ptr %i.gs to i64
  %i.gv = sub i64 %i.gt, %i.gu
  store i64 %i.gv, ptr %i.gq, align 8, !tbaa !23
  %i.gw = tail call fastcc ptr @sbackref(ptr noundef %0, ptr noundef %.0234343, ptr noundef %2, i64 noundef %i.du, i64 noundef %4, i64 noundef %.tr273.ph595, i32 noundef %.tr274.ph282590) ; 2 uses
  %.not246 = icmp eq ptr %i.gw, null
  br i1 %.not246, label %bb.ba, label %.loopexit

bb.ba:                                            ; preds = %bb.az
  %i.gx = load ptr, ptr %i.d, align 8, !tbaa !36
  %i.gy = getelementptr inbounds nuw [16 x i8], ptr %i.gx, i64 %i.go
  store i64 %i.gr, ptr %i.gy, align 8, !tbaa !23
  br label %.loopexit

bb.bb:                                            ; preds = %bb.ak
  %i.gz = and i64 %i.dz, 134217727                ; 2 uses
  %i.ha = load ptr, ptr %i.d, align 8, !tbaa !36
  %i.hb = getelementptr inbounds nuw [16 x i8], ptr %i.ha, i64 %i.gz
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 8 ; 2 uses
  %i.hd = load i64, ptr %i.hc, align 8, !tbaa !25
  %i.he = load ptr, ptr %i.e, align 8, !tbaa !38
  %i.hf = ptrtoint ptr %.0234343 to i64
  %i.hg = ptrtoint ptr %i.he to i64
  %i.hh = sub i64 %i.hf, %i.hg
  store i64 %i.hh, ptr %i.hc, align 8, !tbaa !25
  %i.hi = tail call fastcc ptr @sbackref(ptr noundef %0, ptr noundef %.0234343, ptr noundef %2, i64 noundef %i.du, i64 noundef %4, i64 noundef %.tr273.ph595, i32 noundef %.tr274.ph282590) ; 2 uses
  %.not245 = icmp eq ptr %i.hi, null
  br i1 %.not245, label %bb.bc, label %.loopexit

bb.bc:                                            ; preds = %bb.bb
  %i.hj = load ptr, ptr %i.d, align 8, !tbaa !36
  %i.hk = getelementptr inbounds nuw [16 x i8], ptr %i.hj, i64 %i.gz
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  store i64 %i.hd, ptr %i.hl, align 8, !tbaa !25
  br label %.loopexit

.loopexit:                                        ; preds = %bb.av, %bb.ap, %bb.ao, %bb.an, %bb.al, %bb.ak, %bb.ar, %bb.ac, %bb.af, %bb.ag, %bb.ah, %bb.x, %bb.y, %._crit_edge414, %bb.z, %bb.p, %bb.q, %bb.r, %bb.k, %bb.l, %bb.m, %bb.g, %bb.h, %bb.e, %bb.c, %bb.d, %bb.ay, %.lr.ph349, %bb.ax, %bb.bb, %bb.az, %.loopexit438, %bb.bc, %bb.ba
  %.0 = phi ptr [ %i.hi, %bb.bb ], [ %.0234., %.loopexit438 ], [ undef, %bb.ak ], [ null, %bb.ba ], [ %i.gw, %bb.az ], [ null, %bb.bc ], [ null, %.lr.ph349 ], [ null, %bb.ac ], [ %i.fu, %bb.ax ], [ null, %bb.ap ], [ %i.gn, %bb.ay ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.e ], [ null, %bb.h ], [ null, %bb.g ], [ null, %bb.m ], [ null, %bb.l ], [ null, %bb.k ], [ null, %bb.r ], [ null, %bb.q ], [ null, %bb.p ], [ null, %bb.z ], [ null, %._crit_edge414 ], [ null, %bb.y ], [ null, %bb.x ], [ null, %bb.ah ], [ null, %bb.ag ], [ null, %bb.af ], [ %i.ez, %bb.ar ], [ null, %bb.al ], [ null, %bb.an ], [ null, %bb.ao ], [ %i.fo, %bb.av ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @sstep(ptr noundef readonly captures(none) %0, i64 noundef range(i64 -9223372036854775807, -9223372036854775808) %1, i64 noundef %2, i64 noundef %3, i32 noundef range(i32 -128, 135) %4, i64 noundef %5) unnamed_addr #7 {
bb.a:
  %.not131 = icmp eq i64 %1, %2
  br i1 %.not131, label %._crit_edge137, label %.lr.ph136

.lr.ph136:                                        ; preds = %bb.a
  %i.a = shl nuw i64 1, %1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !72
  %i.d = icmp sgt i32 %4, 127                     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = and i32 %4, 255
  %i.g = zext nneg i32 %i.f to i64
  %i.h = icmp eq i32 %4, 134
  %i.i = icmp eq i32 %4, 133
  %i.j = and i32 %4, -2
  %or.cond3 = icmp eq i32 %i.j, 130
  %i.k = and i32 %4, -3
  %or.cond = icmp eq i32 %i.k, 129
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph136, %bb.ad
  %.0134 = phi i64 [ %5, %.lr.ph136 ], [ %.1, %bb.ad ] ; 37 uses
  %.0116133 = phi i64 [ %i.a, %.lr.ph136 ], [ %i.dj, %bb.ad ] ; 50 uses
  %.0118132 = phi i64 [ %1, %.lr.ph136 ], [ %i.di, %bb.ad ] ; 30 uses
  %i.l = getelementptr inbounds [8 x i8], ptr %i.c, i64 %.0118132 ; 4 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !50   ; 7 uses
  %i.n = and i64 %i.m, 4160749568
  %i.o = add nsw i64 %i.n, -134217728
  %i.p = lshr exact i64 %i.o, 27
  switch i64 %i.p, label %bb.ad [
    i64 17, label %bb.ac
    i64 1, label %bb.c
    i64 2, label %bb.e
    i64 3, label %bb.g
    i64 18, label %bb.i
    i64 19, label %bb.k
    i64 4, label %bb.m
    i64 5, label %bb.o
    i64 6, label %bb.r
    i64 7, label %bb.r
    i64 8, label %bb.s
    i64 9, label %bb.t
    i64 10, label %bb.v
    i64 11, label %bb.w
    i64 12, label %bb.x
    i64 13, label %bb.x
    i64 14, label %bb.y
    i64 15, label %bb.z
    i64 16, label %bb.aa
  ]

bb.c:                                             ; preds = %bb.b
  %i.q = trunc i64 %i.m to i8
  %i.r = sext i8 %i.q to i32
  %i.s = icmp eq i32 %4, %i.r
  br i1 %i.s, label %bb.d, label %bb.ad

bb.d:                                             ; preds = %bb.c
  %i.t = and i64 %.0116133, %3
  %i.u = shl i64 %i.t, 1
  %i.v = or i64 %i.u, %.0134
  br label %bb.ad

bb.e:                                             ; preds = %bb.b
  br i1 %or.cond, label %bb.f, label %bb.ad

bb.f:                                             ; preds = %bb.e
  %i.w = and i64 %.0116133, %3
  %i.x = shl i64 %i.w, 1
  %i.y = or i64 %i.x, %.0134
  br label %bb.ad

bb.g:                                             ; preds = %bb.b
  br i1 %or.cond3, label %bb.h, label %bb.ad

bb.h:                                             ; preds = %bb.g
  %i.z = and i64 %.0116133, %3
  %i.aa = shl i64 %i.z, 1
  %i.ab = or i64 %i.aa, %.0134
  br label %bb.ad

bb.i:                                             ; preds = %bb.b
  br i1 %i.i, label %bb.j, label %bb.ad

bb.j:                                             ; preds = %bb.i
  %i.ac = and i64 %.0116133, %3
  %i.ad = shl i64 %i.ac, 1
  %i.ae = or i64 %i.ad, %.0134
  br label %bb.ad

bb.k:                                             ; preds = %bb.b
  br i1 %i.h, label %bb.l, label %bb.ad

bb.l:                                             ; preds = %bb.k
  %i.af = and i64 %.0116133, %3
  %i.ag = shl i64 %i.af, 1
  %i.ah = or i64 %i.ag, %.0134
  br label %bb.ad

bb.m:                                             ; preds = %bb.b
  br i1 %i.d, label %bb.ad, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ai = and i64 %.0116133, %3
  %i.aj = shl i64 %i.ai, 1
  %i.ak = or i64 %i.aj, %.0134
  br label %bb.ad

bb.o:                                             ; preds = %bb.b
  br i1 %i.d, label %bb.ad, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.al = load ptr, ptr %i.e, align 8, !tbaa !75
  %i.am = and i64 %i.m, 134217727
  %i.an = getelementptr inbounds nuw [32 x i8], ptr %i.al, i64 %i.am ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !76
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.g
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !27
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.as = load i8, ptr %i.ar, align 8, !tbaa !78
  %i.at = and i8 %i.as, %i.aq
  %.not127 = icmp eq i8 %i.at, 0
  br i1 %.not127, label %bb.ad, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.au = and i64 %.0116133, %3
  %i.av = shl i64 %i.au, 1
  %i.aw = or i64 %i.av, %.0134
  br label %bb.ad

bb.r:                                             ; preds = %bb.b, %bb.b
  %i.ax = and i64 %.0134, %.0116133
  %i.ay = shl i64 %i.ax, 1
  %i.az = or i64 %i.ay, %.0134
  br label %bb.ad

bb.s:                                             ; preds = %bb.b
  %i.ba = and i64 %.0134, %.0116133
  %i.bb = shl i64 %i.ba, 1
  %i.bc = or i64 %i.bb, %.0134
  br label %bb.ad

bb.t:                                             ; preds = %bb.b
  %i.bd = and i64 %.0134, %.0116133
  %i.be = shl i64 %i.bd, 1
  %i.bf = or i64 %i.be, %.0134                    ; 3 uses
  %i.bg = and i64 %i.m, 134217727                 ; 3 uses
  %i.bh = lshr i64 %.0116133, %i.bg               ; 2 uses
  %i.bi = and i64 %i.bh, %i.bf
  %.not125 = icmp ne i64 %i.bi, 0
  %i.bj = and i64 %i.bf, %.0116133
  %i.bk = lshr i64 %i.bj, %i.bg
  %i.bl = or i64 %i.bk, %i.bf                     ; 3 uses
  %i.bm = and i64 %i.bl, %i.bh
  %.not126 = icmp eq i64 %i.bm, 0
  %or.cond128 = select i1 %.not125, i1 true, i1 %.not126
  br i1 %or.cond128, label %bb.ad, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.neg = xor i64 %i.bg, -1
  %i.bn = add i64 %.0118132, %.neg                ; 2 uses
  %i.bo = shl nuw i64 1, %i.bn
  br label %bb.ad

bb.v:                                             ; preds = %bb.b
  %i.bp = and i64 %.0134, %.0116133
  %i.bq = shl i64 %i.bp, 1
  %i.br = or i64 %i.bq, %.0134                    ; 2 uses
  %i.bs = and i64 %i.br, %.0116133
  %i.bt = and i64 %i.m, 134217727
  %i.bu = shl i64 %i.bs, %i.bt
  %i.bv = or i64 %i.bu, %i.br
  br label %bb.ad

bb.w:                                             ; preds = %bb.b
  %i.bw = and i64 %.0134, %.0116133
  %i.bx = shl i64 %i.bw, 1
  %i.by = or i64 %i.bx, %.0134
  br label %bb.ad

bb.x:                                             ; preds = %bb.b, %bb.b
  %i.bz = and i64 %.0134, %.0116133
  %i.ca = shl i64 %i.bz, 1
  %i.cb = or i64 %i.ca, %.0134
  br label %bb.ad

bb.y:                                             ; preds = %bb.b
  %i.cc = and i64 %.0134, %.0116133
  %i.cd = shl i64 %i.cc, 1
  %i.ce = or i64 %i.cd, %.0134                    ; 2 uses
  %i.cf = and i64 %i.ce, %.0116133
  %i.cg = and i64 %i.m, 134217727
  %i.ch = shl i64 %i.cf, %i.cg
  %i.ci = or i64 %i.ch, %i.ce
  br label %bb.ad

bb.z:                                             ; preds = %bb.b
  %i.cj = and i64 %.0134, %.0116133               ; 2 uses
  %.not123 = icmp eq i64 %i.cj, 0
  br i1 %.not123, label %bb.ad, label %.preheader

.preheader:                                       ; preds = %bb.z
  %i.ck = getelementptr i8, ptr %i.l, i64 8
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !50 ; 2 uses
  %i.cm = and i64 %i.cl, 4160749568
  %.not124129 = icmp eq i64 %i.cm, 2415919104
  br i1 %.not124129, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %i.cn = phi i64 [ %i.cr, %.lr.ph ], [ %i.cl, %.preheader ]
  %.0115130 = phi i64 [ %i.cp, %.lr.ph ], [ 1, %.preheader ]
  %i.co = and i64 %i.cn, 134217727
  %i.cp = add i64 %i.co, %.0115130                ; 3 uses
  %i.cq = getelementptr [8 x i8], ptr %i.l, i64 %i.cp
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !50 ; 2 uses
  %i.cs = and i64 %i.cr, 4160749568
  %.not124 = icmp eq i64 %i.cs, 2415919104
  br i1 %.not124, label %._crit_edge, label %.lr.ph, !llvm.loop !83

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %.0115.lcssa = phi i64 [ 1, %.preheader ], [ %i.cp, %.lr.ph ]
  %i.ct = shl i64 %i.cj, %.0115.lcssa
  %i.cu = or i64 %i.ct, %.0134
  br label %bb.ad

bb.aa:                                            ; preds = %bb.b
  %i.cv = and i64 %.0134, %.0116133
  %i.cw = shl i64 %i.cv, 1
  %i.cx = or i64 %i.cw, %.0134                    ; 3 uses
  %i.cy = and i64 %i.m, 134217727                 ; 2 uses
  %i.cz = getelementptr [8 x i8], ptr %i.l, i64 %i.cy
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !50
  %i.db = and i64 %i.da, 4160749568
  %.not122 = icmp eq i64 %i.db, 2415919104
  br i1 %.not122, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dc = and i64 %i.cx, %.0116133
  %i.dd = shl i64 %i.dc, %i.cy
  %i.de = or i64 %i.dd, %i.cx
  br label %bb.ad

bb.ac:                                            ; preds = %bb.b
  %i.df = and i64 %.0134, %.0116133
  %i.dg = shl i64 %i.df, 1
  %i.dh = or i64 %i.dg, %.0134
  br label %bb.ad

bb.ad:                                            ; preds = %bb.r, %bb.s, %bb.v, %bb.w, %bb.x, %bb.y, %bb.ac, %bb.d, %bb.c, %bb.e, %bb.f, %bb.g, %bb.h, %bb.j, %bb.i, %bb.l, %bb.k, %bb.n, %bb.m, %bb.q, %bb.p, %bb.o, %bb.u, %bb.t, %._crit_edge, %bb.z, %bb.ab, %bb.aa, %bb.b
  %.1119 = phi i64 [ %.0118132, %bb.b ], [ %.0118132, %bb.ac ], [ %.0118132, %bb.d ], [ %.0118132, %bb.c ], [ %.0118132, %bb.f ], [ %.0118132, %bb.e ], [ %.0118132, %bb.h ], [ %.0118132, %bb.g ], [ %.0118132, %bb.j ], [ %.0118132, %bb.i ], [ %.0118132, %bb.l ], [ %.0118132, %bb.k ], [ %.0118132, %bb.m ], [ %.0118132, %bb.n ], [ %.0118132, %bb.o ], [ %.0118132, %bb.q ], [ %.0118132, %bb.p ], [ %.0118132, %bb.r ], [ %.0118132, %bb.s ], [ %.0118132, %bb.t ], [ %i.bn, %bb.u ], [ %.0118132, %bb.aa ], [ %.0118132, %bb.v ], [ %.0118132, %bb.w ], [ %.0118132, %bb.x ], [ %.0118132, %bb.y ], [ %.0118132, %._crit_edge ], [ %.0118132, %bb.z ], [ %.0118132, %bb.ab ]
  %.1117 = phi i64 [ %.0116133, %bb.b ], [ %.0116133, %bb.ac ], [ %.0116133, %bb.d ], [ %.0116133, %bb.c ], [ %.0116133, %bb.f ], [ %.0116133, %bb.e ], [ %.0116133, %bb.h ], [ %.0116133, %bb.g ], [ %.0116133, %bb.j ], [ %.0116133, %bb.i ], [ %.0116133, %bb.l ], [ %.0116133, %bb.k ], [ %.0116133, %bb.m ], [ %.0116133, %bb.n ], [ %.0116133, %bb.o ], [ %.0116133, %bb.q ], [ %.0116133, %bb.p ], [ %.0116133, %bb.r ], [ %.0116133, %bb.s ], [ %.0116133, %bb.t ], [ %i.bo, %bb.u ], [ %.0116133, %bb.aa ], [ %.0116133, %bb.v ], [ %.0116133, %bb.w ], [ %.0116133, %bb.x ], [ %.0116133, %bb.y ], [ %.0116133, %._crit_edge ], [ %.0116133, %bb.z ], [ %.0116133, %bb.ab ]
  %.1 = phi i64 [ %.0134, %bb.b ], [ %i.dh, %bb.ac ], [ %i.v, %bb.d ], [ %.0134, %bb.c ], [ %i.y, %bb.f ], [ %.0134, %bb.e ], [ %i.ab, %bb.h ], [ %.0134, %bb.g ], [ %i.ae, %bb.j ], [ %.0134, %bb.i ], [ %i.ah, %bb.l ], [ %.0134, %bb.k ], [ %.0134, %bb.m ], [ %i.ak, %bb.n ], [ %.0134, %bb.o ], [ %i.aw, %bb.q ], [ %.0134, %bb.p ], [ %i.az, %bb.r ], [ %i.bc, %bb.s ], [ %i.bl, %bb.t ], [ %i.bl, %bb.u ], [ %i.cx, %bb.aa ], [ %i.bv, %bb.v ], [ %i.by, %bb.w ], [ %i.cb, %bb.x ], [ %i.ci, %bb.y ], [ %i.cu, %._crit_edge ], [ %.0134, %bb.z ], [ %i.de, %bb.ab ] ; 2 uses
  %i.di = add nsw i64 %.1119, 1                   ; 2 uses
  %i.dj = shl i64 %.1117, 1
  %.not = icmp eq i64 %i.di, %2
  br i1 %.not, label %._crit_edge137, label %bb.b, !llvm.loop !84

._crit_edge137:                                   ; preds = %bb.ad, %bb.a
  %.0.lcssa = phi i64 [ %5, %bb.a ], [ %.1, %bb.ad ]
  ret i64 %.0.lcssa
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc ptr @lslow(ptr noundef nonnull readonly captures(none) %0, ptr noundef readonly captures(address, ret: address, provenance) %1, ptr noundef readnone captures(address) %2, i64 noundef range(i64 -9223372036854775807, -9223372036854775808) %3, i64 noundef %4) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !64   ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !68   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !66   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !61
  %i.i = icmp eq ptr %1, %i.h
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds i8, ptr %1, i64 -1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !27
  %i.l = sext i8 %i.k to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.m = phi i32 [ %i.l, %bb.b ], [ 128, %bb.a ]
  %i.n = load ptr, ptr %0, align 8, !tbaa !55
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.p = load i64, ptr %i.o, align 8, !tbaa !19
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.b, i8 0, i64 %i.p, i1 false)
  %i.q = getelementptr inbounds i8, ptr %i.b, i64 %3
  store i8 1, ptr %i.q, align 1, !tbaa !27
  %i.r = load ptr, ptr %0, align 8, !tbaa !55
  %i.s = tail call fastcc ptr @lstep(ptr noundef %i.r, i64 noundef %3, i64 noundef %4, ptr noundef %i.b, i32 noundef 132, ptr noundef %i.b) ; 0 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %i.b, i64 %4
  br label %bb.d

bb.d:                                             ; preds = %bb.w, %bb.c
  %.0114 = phi ptr [ %1, %bb.c ], [ %i.cr, %bb.w ] ; 5 uses
  %.0113 = phi i32 [ %i.m, %bb.c ], [ %i.aa, %bb.w ] ; 7 uses
  %.0 = phi ptr [ null, %bb.c ], [ %spec.select127, %bb.w ]
  %i.w = load ptr, ptr %i.t, align 8, !tbaa !62
  %i.x = icmp eq ptr %.0114, %i.w
  br i1 %i.x, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = load i8, ptr %.0114, align 1, !tbaa !27
  %i.z = sext i8 %i.y to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.aa = phi i32 [ %i.z, %bb.e ], [ 128, %bb.d ] ; 10 uses
  switch i32 %.0113, label %bb.j [
    i32 10, label %bb.g
    i32 128, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.ab = load ptr, ptr %0, align 8, !tbaa !55    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !22
  %i.ae = and i32 %i.ad, 8
  %.not = icmp eq i32 %i.ae, 0
  br i1 %.not, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.af = load i32, ptr %i.u, align 8, !tbaa !57
  %i.ag = and i32 %i.af, 1
  %.not117 = icmp eq i32 %i.ag, 0
  br i1 %.not117, label %._crit_edge, label %bb.j

._crit_edge:                                      ; preds = %bb.h
  %.pre = load ptr, ptr %0, align 8, !tbaa !55
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %bb.g
  %i.ah = phi ptr [ %.pre, %._crit_edge ], [ %i.ab, %bb.g ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 76
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !41
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.f, %bb.i, %bb.h
  %i.ak = phi i32 [ 131, %bb.i ], [ 130, %bb.h ], [ 130, %bb.f ], [ 130, %bb.g ]
  %.0106 = phi i32 [ 129, %bb.i ], [ 0, %bb.h ], [ 0, %bb.f ], [ 0, %bb.g ] ; 3 uses
  %.0104 = phi i32 [ %i.aj, %bb.i ], [ 0, %bb.h ], [ 0, %bb.f ], [ 0, %bb.g ] ; 4 uses
  switch i32 %i.aa, label %bb.n [
    i32 10, label %bb.k
    i32 128, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  %i.al = load ptr, ptr %0, align 8, !tbaa !55    ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %i.an = load i32, ptr %i.am, align 8, !tbaa !22
  %i.ao = and i32 %i.an, 8
  %.not118 = icmp eq i32 %i.ao, 0
  br i1 %.not118, label %bb.n, label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ap = load i32, ptr %i.u, align 8, !tbaa !57
  %i.aq = and i32 %i.ap, 2
  %.not119 = icmp eq i32 %i.aq, 0
  br i1 %.not119, label %._crit_edge138, label %bb.n

._crit_edge138:                                   ; preds = %bb.l
  %.pre139 = load ptr, ptr %0, align 8, !tbaa !55
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge138, %bb.k
  %i.ar = phi ptr [ %.pre139, %._crit_edge138 ], [ %i.al, %bb.k ]
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 80
  %i.at = load i32, ptr %i.as, align 8, !tbaa !42
  %i.au = add nsw i32 %i.at, %.0104
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %bb.j, %bb.m, %bb.l
  %.1107 = phi i32 [ %i.ak, %bb.m ], [ %.0106, %bb.l ], [ %.0106, %bb.j ], [ %.0106, %bb.k ] ; 4 uses
  %.1105 = phi i32 [ %i.au, %bb.m ], [ %.0104, %bb.l ], [ %.0104, %bb.j ], [ %.0104, %bb.k ] ; 2 uses
  %i.av = icmp sgt i32 %.1105, 0
  br i1 %i.av, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.n, %.preheader
  %.2 = phi i32 [ %i.ay, %.preheader ], [ %.1105, %bb.n ] ; 2 uses
  %i.aw = load ptr, ptr %0, align 8, !tbaa !55
  %i.ax = tail call fastcc ptr @lstep(ptr noundef %i.aw, i64 noundef %3, i64 noundef %4, ptr noundef %i.b, i32 noundef %.1107, ptr noundef %i.b) ; 0 uses
  %i.ay = add nsw i32 %.2, -1
  %.old17 = icmp samesign ugt i32 %.2, 1
  br i1 %.old17, label %.preheader, label %.loopexit

.loopexit:                                        ; preds = %.preheader, %bb.n
  %i.az = icmp eq i32 %.1107, 129
  br i1 %i.az, label %bb.q, label %bb.o

bb.o:                                             ; preds = %.loopexit
  %.not120 = icmp eq i32 %.0113, 128
  br i1 %.not120, label %.thread.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ba = tail call ptr @__ctype_b_loc() #16      ; 3 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !43
  %i.bc = sext i32 %.0113 to i64                  ; 2 uses
  %i.bd = getelementptr inbounds [2 x i8], ptr %i.bb, i64 %i.bc
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !45
  %i.bf = and i16 %i.be, 8
  %i.bg = icmp eq i16 %i.bf, 0
  %i.bh = icmp ne i32 %.0113, 95
  %or.cond.not123 = select i1 %i.bg, i1 %i.bh, i1 false
  %i.bi = icmp ne i32 %i.aa, 128
  %or.cond3 = select i1 %or.cond.not123, i1 %i.bi, i1 false
  br i1 %or.cond3, label %bb.r, label %.thread130

bb.q:                                             ; preds = %.loopexit
  %.old2.not = icmp eq i32 %i.aa, 128
  br i1 %.old2.not, label %bb.s, label %._crit_edge140

._crit_edge140:                                   ; preds = %bb.q
  %.pre144 = tail call ptr @__ctype_b_loc() #16
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge140, %bb.p
  %.pre-phi145 = phi ptr [ %.pre144, %._crit_edge140 ], [ %i.ba, %bb.p ]
  %i.bj = load ptr, ptr %.pre-phi145, align 8, !tbaa !43
  %i.bk = sext i32 %i.aa to i64
  %i.bl = getelementptr inbounds [2 x i8], ptr %i.bj, i64 %i.bk
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !45
  %i.bn = and i16 %i.bm, 8
  %i.bo = icmp ne i16 %i.bn, 0
  %i.bp = icmp eq i32 %i.aa, 95
  %or.cond6 = select i1 %i.bo, i1 true, i1 %i.bp
  %spec.select = select i1 %or.cond6, i32 133, i32 %.1107
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.2108 = phi i32 [ 129, %bb.q ], [ %spec.select, %bb.r ] ; 2 uses
  %.not124 = icmp eq i32 %.0113, 128
  br i1 %.not124, label %.thread, label %..thread130_crit_edge

..thread130_crit_edge:                            ; preds = %bb.s
  %.pre141 = tail call ptr @__ctype_b_loc() #16
  %.pre142 = sext i32 %.0113 to i64
  br label %.thread130

.thread130:                                       ; preds = %..thread130_crit_edge, %bb.p
  %.pre-phi143 = phi i64 [ %.pre142, %..thread130_crit_edge ], [ %i.bc, %bb.p ]
  %.pre-phi = phi ptr [ %.pre141, %..thread130_crit_edge ], [ %i.ba, %bb.p ]
  %.2108133 = phi i32 [ %.2108, %..thread130_crit_edge ], [ %.1107, %bb.p ] ; 4 uses
  %i.bq = load ptr, ptr %.pre-phi, align 8, !tbaa !43 ; 2 uses
  %i.br = getelementptr inbounds [2 x i8], ptr %i.bq, i64 %.pre-phi143
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !45
  %i.bt = and i16 %i.bs, 8
  %i.bu = icmp ne i16 %i.bt, 0
  %i.bv = icmp eq i32 %.0113, 95
  %or.cond9 = select i1 %i.bu, i1 true, i1 %i.bv
  br i1 %or.cond9, label %bb.t, label %.thread

bb.t:                                             ; preds = %.thread130
  %i.bw = icmp eq i32 %.2108133, 130
  br i1 %i.bw, label %.thread134, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.not125 = icmp eq i32 %i.aa, 128
  br i1 %.not125, label %.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bx = sext i32 %i.aa to i64
  %i.by = getelementptr inbounds [2 x i8], ptr %i.bq, i64 %i.bx
  %i.bz = load i16, ptr %i.by, align 2, !tbaa !45
  %i.ca = and i16 %i.bz, 8
  %i.cb = icmp ne i16 %i.ca, 0
  %i.cc = icmp eq i32 %i.aa, 95
  %or.cond12 = select i1 %i.cb, i1 true, i1 %i.cc
  br i1 %or.cond12, label %.thread, label %.thread134

.thread:                                          ; preds = %.thread130, %bb.v, %bb.u, %bb.s
  %.3 = phi i32 [ %.2108, %bb.s ], [ %.2108133, %bb.v ], [ %.2108133, %bb.u ], [ %.2108133, %.thread130 ]
  %i.cd = icmp eq i32 %.3, 133
  br i1 %i.cd, label %.thread134, label %.thread.thread

.thread134:                                       ; preds = %bb.v, %bb.t, %.thread
  %.3137 = phi i32 [ 133, %.thread ], [ 134, %bb.t ], [ 134, %bb.v ]
  %i.ce = load ptr, ptr %0, align 8, !tbaa !55
  %i.cf = tail call fastcc ptr @lstep(ptr noundef %i.ce, i64 noundef %3, i64 noundef %4, ptr noundef %i.b, i32 noundef %.3137, ptr noundef %i.b) ; 0 uses
  br label %.thread.thread

.thread.thread:                                   ; preds = %bb.o, %.thread, %.thread134
  %i.cg = load i8, ptr %i.v, align 1, !tbaa !27
  %.not126 = icmp eq i8 %i.cg, 0
  %spec.select127 = select i1 %.not126, ptr %.0, ptr %.0114 ; 2 uses
  %i.ch = load ptr, ptr %0, align 8, !tbaa !55
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 48
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !19 ; 2 uses
  %bcmp = tail call i32 @bcmp(ptr %i.b, ptr %i.d, i64 %i.cj)
  %i.ck = icmp eq i32 %bcmp, 0
  %i.cl = icmp eq ptr %.0114, %2
  %or.cond = or i1 %i.cl, %i.ck
  br i1 %or.cond, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.thread.thread
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.f, ptr nonnull align 1 %i.b, i64 %i.cj, i1 false)
  %i.cm = load ptr, ptr %0, align 8, !tbaa !55
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 48
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !19
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.b, ptr align 1 %i.d, i64 %i.co, i1 false)
  %i.cp = load ptr, ptr %0, align 8, !tbaa !55
  %i.cq = tail call fastcc ptr @lstep(ptr noundef %i.cp, i64 noundef %3, i64 noundef %4, ptr noundef %i.f, i32 noundef %i.aa, ptr noundef nonnull %i.b) ; 0 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.0114, i64 1
  br label %bb.d

bb.x:                                             ; preds = %.thread.thread
  ret ptr %spec.select127
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc ptr @ldissect(ptr noundef nonnull %0, ptr noundef %1, ptr noundef readnone captures(address) %2, i64 noundef range(i64 -9223372036854775807, -9223372036854775808) %3, i64 noundef %4) unnamed_addr #6 {
bb.a:
  %i.a = icmp slt i64 %3, %4
  br i1 %i.a, label %.lr.ph171, label %._crit_edge172

.lr.ph171:                                        ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph171, %bb.n
  %.0142169 = phi ptr [ %1, %.lr.ph171 ], [ %.1143, %bb.n ] ; 17 uses
  %.0146168 = phi i64 [ %3, %.lr.ph171 ], [ %i.s, %bb.n ] ; 13 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !55
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !72   ; 2 uses
  %i.g = getelementptr inbounds [8 x i8], ptr %i.f, i64 %.0146168
  %i.h = load i64, ptr %i.g, align 8, !tbaa !50   ; 7 uses
  %i.i = trunc i64 %i.h to i32
  %trunc = and i32 %i.i, -134217728
  switch i32 %trunc, label %.loopexit [
    i32 1207959552, label %bb.c
    i32 1476395008, label %bb.c
    i32 2013265920, label %.preheader156
  ]

.preheader156:                                    ; preds = %bb.b
  %i.j = and i64 %i.h, 4160749568
  %.not161 = icmp eq i64 %i.j, 2415919104
  br i1 %.not161, label %.loopexit, label %.lr.ph

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.k = and i64 %i.h, 134217727
  %i.l = add i64 %i.k, %.0146168
  br label %.loopexit

.lr.ph:                                           ; preds = %.preheader156, %.lr.ph
  %i.m = phi i64 [ %i.q, %.lr.ph ], [ %i.h, %.preheader156 ]
  %.0144162 = phi i64 [ %i.o, %.lr.ph ], [ %.0146168, %.preheader156 ]
  %i.n = and i64 %i.m, 134217727
  %i.o = add i64 %i.n, %.0144162                  ; 3 uses
  %i.p = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.o
  %i.q = load i64, ptr %i.p, align 8, !tbaa !50   ; 2 uses
  %i.r = and i64 %i.q, 4160749568
  %.not = icmp eq i64 %i.r, 2415919104
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !85

.loopexit:                                        ; preds = %.lr.ph, %.preheader156, %bb.c, %bb.b
  %.1145 = phi i64 [ %.0146168, %bb.b ], [ %i.l, %bb.c ], [ %.0146168, %.preheader156 ], [ %i.o, %.lr.ph ] ; 5 uses
  %i.s = add nsw i64 %.1145, 1                    ; 8 uses
  %i.t = and i64 %i.h, 4160749568
  %i.u = add nsw i64 %i.t, -134217728
  %i.v = lshr exact i64 %i.u, 27
  switch i64 %i.v, label %bb.n [
    i64 13, label %bb.m
    i64 1, label %bb.d
    i64 12, label %bb.l
    i64 14, label %.preheader
    i64 8, label %.preheader154
    i64 10, label %.preheader155
    i64 4, label %bb.e
    i64 5, label %bb.e
  ]

bb.d:                                             ; preds = %.loopexit
  %i.w = getelementptr inbounds nuw i8, ptr %.0142169, i64 1
  br label %bb.n

bb.e:                                             ; preds = %.loopexit, %.loopexit
  %i.x = getelementptr inbounds nuw i8, ptr %.0142169, i64 1
  br label %bb.n

.preheader155:                                    ; preds = %.loopexit, %.preheader155
  %.0140 = phi ptr [ %i.ab, %.preheader155 ], [ %2, %.loopexit ]
  %i.y = tail call fastcc ptr @lslow(ptr noundef %0, ptr noundef %.0142169, ptr noundef %.0140, i64 noundef %.0146168, i64 noundef %i.s) ; 6 uses
  %i.z = tail call fastcc ptr @lslow(ptr noundef %0, ptr noundef %i.y, ptr noundef %2, i64 noundef %i.s, i64 noundef %4)
  %i.aa = icmp eq ptr %i.z, %2
  %i.ab = getelementptr inbounds i8, ptr %i.y, i64 -1
  br i1 %i.aa, label %bb.f, label %.preheader155

bb.f:                                             ; preds = %.preheader155
  %i.ac = add nsw i64 %.0146168, 1                ; 2 uses
  %i.ad = tail call fastcc ptr @lslow(ptr noundef %0, ptr noundef %.0142169, ptr noundef %i.y, i64 noundef %i.ac, i64 noundef %.1145)
  %.not151 = icmp eq ptr %i.ad, null
  br i1 %.not151, label %bb.n, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = tail call fastcc ptr @ldissect(ptr noundef %0, ptr noundef %.0142169, ptr noundef %i.y, i64 noundef %i.ac, i64 noundef %.1145) ; 0 uses
  br label %bb.n

.preheader154:                                    ; preds = %.loopexit, %.preheader154
  %.1141 = phi ptr [ %i.ai, %.preheader154 ], [ %2, %.loopexit ]
  %i.af = tail call fastcc ptr @lslow(ptr noundef %0, ptr noundef %.0142169, ptr noundef %.1141, i64 noundef %.0146168, i64 noundef %i.s) ; 4 uses
  %i.ag = tail call fastcc ptr @lslow(ptr noundef %0, ptr noundef %i.af, ptr noundef %2, i64 noundef %i.s, i64 noundef %4)
  %i.ah = icmp eq ptr %i.ag, %2
  %i.ai = getelementptr inbounds i8, ptr %i.af, i64 -1
  br i1 %i.ah, label %bb.h, label %.preheader154

bb.h:                                             ; preds = %.preheader154
  %i.aj = add nsw i64 %.0146168, 1                ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %bb.h
  %.0136 = phi ptr [ %.0142169, %bb.h ], [ %i.ak, %bb.i ] ; 5 uses
  %.0 = phi ptr [ %.0142169, %bb.h ], [ %.0136, %bb.i ]
  %i.ak = tail call fastcc ptr @lslow(ptr noundef %0, ptr noundef %.0136, ptr noundef %i.af, i64 noundef %i.aj, i64 noundef %.1145) ; 4 uses
  %i.al = icmp eq ptr %i.ak, null                 ; 3 uses
  %i.am = icmp eq ptr %i.ak, %.0136
  %or.cond = or i1 %i.al, %i.am
  br i1 %or.cond, label %bb.j, label %bb.i

bb.j:                                             ; preds = %bb.i
  %spec.select = select i1 %i.al, ptr %.0, ptr %.0136
  %spec.select152 = select i1 %i.al, ptr %.0136, ptr %i.ak
  %i.an = tail call fastcc ptr @ldissect(ptr noundef %0, ptr noundef %spec.select, ptr noundef %spec.select152, i64 noundef %i.aj, i64 noundef %.1145) ; 0 uses
  br label %bb.n

.preheader:                                       ; preds = %.loopexit, %.preheader
  %.2 = phi ptr [ %i.ar, %.preheader ], [ %2, %.loopexit ]
  %i.ao = tail call fastcc ptr @lslow(ptr noundef %0, ptr noundef %.0142169, ptr noundef %.2, i64 noundef %.0146168, i64 noundef %i.s) ; 8 uses
  %i.ap = tail call fastcc ptr @lslow(ptr noundef %0, ptr noundef %i.ao, ptr noundef %2, i64 noundef %i.s, i64 noundef %4)
  %i.aq = icmp eq ptr %i.ap, %2
  %i.ar = getelementptr inbounds i8, ptr %i.ao, i64 -1
  br i1 %i.aq, label %bb.k, label %.preheader

bb.k:                                             ; preds = %.preheader
  %i.as = load ptr, ptr %0, align 8, !tbaa !55
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !72
  %i.av = getelementptr inbounds [8 x i8], ptr %i.au, i64 %.0146168
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !50
  %i.ax = and i64 %i.aw, 134217727
  %i.ay = add nsw i64 %.0146168, -1
  %i.az = add i64 %i.ay, %i.ax                    ; 3 uses
  %.0139163 = add nsw i64 %.0146168, 1            ; 2 uses
  %i.ba = tail call fastcc ptr @lslow(ptr noundef %0, ptr noundef %.0142169, ptr noundef %i.ao, i64 noundef %.0139163, i64 noundef %i.az)
  %i.bb = icmp eq ptr %i.ba, %i.ao
  br i1 %i.bb, label %._crit_edge, label %.lr.ph165

.lr.ph165:                                        ; preds = %bb.k, %.lr.ph165
  %.0137164 = phi i64 [ %spec.select153, %.lr.ph165 ], [ %i.az, %bb.k ] ; 3 uses
  %i.bc = add nsw i64 %.0137164, 1                ; 2 uses
  %i.bd = load ptr, ptr %0, align 8, !tbaa !55
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !72 ; 2 uses
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.bc
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !50
  %i.bi = and i64 %i.bh, 134217727                ; 2 uses
  %i.bj = add i64 %i.bi, %i.bc                    ; 2 uses
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.bj
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !50
  %i.bm = and i64 %i.bl, 4160749568
  %i.bn = icmp eq i64 %i.bm, 2281701376
  %i.bo = add i64 %i.bi, %.0137164
  %spec.select153 = select i1 %i.bn, i64 %i.bo, i64 %i.bj ; 3 uses
  %.0139 = add nsw i64 %.0137164, 2               ; 2 uses
  %i.bp = tail call fastcc ptr @lslow(ptr noundef %0, ptr noundef %.0142169, ptr noundef %i.ao, i64 noundef %.0139, i64 noundef %spec.select153)
  %i.bq = icmp eq ptr %i.bp, %i.ao
  br i1 %i.bq, label %._crit_edge, label %.lr.ph165

._crit_edge:                                      ; preds = %.lr.ph165, %bb.k
  %.0137.lcssa = phi i64 [ %i.az, %bb.k ], [ %spec.select153, %.lr.ph165 ]
  %.0139.lcssa = phi i64 [ %.0139163, %bb.k ], [ %.0139, %.lr.ph165 ]
  %i.br = tail call fastcc ptr @ldissect(ptr noundef %0, ptr noundef %.0142169, ptr noundef %i.ao, i64 noundef %.0139.lcssa, i64 noundef %.0137.lcssa) ; 0 uses
  br label %bb.n

bb.l:                                             ; preds = %.loopexit
  %i.bs = and i64 %i.h, 134217727
  %i.bt = load ptr, ptr %i.b, align 8, !tbaa !60
  %i.bu = ptrtoint ptr %.0142169 to i64
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = load ptr, ptr %i.c, align 8, !tbaa !58
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %i.bx, i64 %i.bs
  store i64 %i.bw, ptr %i.by, align 8, !tbaa !23
  br label %bb.n

bb.m:                                             ; preds = %.loopexit
  %i.bz = and i64 %i.h, 134217727
  %i.ca = load ptr, ptr %i.b, align 8, !tbaa !60
  %i.cb = ptrtoint ptr %.0142169 to i64
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = sub i64 %i.cb, %i.cc
  %i.ce = load ptr, ptr %i.c, align 8, !tbaa !58
  %i.cf = getelementptr inbounds nuw [16 x i8], ptr %i.ce, i64 %i.bz
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store i64 %i.cd, ptr %i.cg, align 8, !tbaa !25
  br label %bb.n

bb.n:                                             ; preds = %bb.g, %bb.f, %bb.d, %bb.e, %bb.j, %._crit_edge, %bb.l, %bb.m, %.loopexit
  %.1143 = phi ptr [ %.0142169, %.loopexit ], [ %.0142169, %bb.m ], [ %i.w, %bb.d ], [ %.0142169, %bb.l ], [ %i.ao, %._crit_edge ], [ %i.af, %bb.j ], [ %i.x, %bb.e ], [ %i.y, %bb.f ], [ %i.y, %bb.g ] ; 2 uses
  %i.ch = icmp slt i64 %i.s, %4
  br i1 %i.ch, label %bb.b, label %._crit_edge172, !llvm.loop !86

._crit_edge172:                                   ; preds = %bb.n, %bb.a
  %.0142.lcssa = phi ptr [ %1, %bb.a ], [ %.1143, %bb.n ]
  ret ptr %.0142.lcssa
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc ptr @lbackref(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i32 noundef %6) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.g = icmp slt i64 %3, %4
  br i1 %i.g, label %.lr.ph.lr.ph.lr.ph, label %.loopexit438

.lr.ph.lr.ph.lr.ph:                               ; preds = %bb.a, %tailrecurse.outer.backedge
  %.tr274.ph596 = phi i32 [ %.tr274.ph282590, %tailrecurse.outer.backedge ], [ %6, %bb.a ]
  %.tr273.ph595 = phi i64 [ %.tr273.ph.be, %tailrecurse.outer.backedge ], [ %5, %bb.a ] ; 10 uses
  %.tr271.ph594 = phi i64 [ %i.du, %tailrecurse.outer.backedge ], [ %3, %bb.a ]
  %.tr269.ph593 = phi ptr [ %.0234343, %tailrecurse.outer.backedge ], [ %1, %bb.a ]
  br label %.lr.ph.lr.ph

.lr.ph.lr.ph:                                     ; preds = %.lr.ph.lr.ph.lr.ph, %tailrecurse.outer279
  %.tr274.ph282590 = phi i32 [ %.tr274.ph596, %.lr.ph.lr.ph.lr.ph ], [ %.0230, %tailrecurse.outer279 ] ; 10 uses
  %.tr271.ph281589 = phi i64 [ %.tr271.ph594, %.lr.ph.lr.ph.lr.ph ], [ %i.ew, %tailrecurse.outer279 ]
  %.tr269.ph280588 = phi ptr [ %.tr269.ph593, %.lr.ph.lr.ph.lr.ph ], [ %i.ex, %tailrecurse.outer279 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %tailrecurse
  %.tr271586 = phi i64 [ %.tr271.ph281589, %.lr.ph.lr.ph ], [ %i.fb, %tailrecurse ]
  %.tr269585 = phi ptr [ %.tr269.ph280588, %.lr.ph.lr.ph ], [ %.0234343, %tailrecurse ]
  %i.h = load ptr, ptr %0, align 8, !tbaa !55     ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !72   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.loopexit275
  %.0234343 = phi ptr [ %.tr269585, %.lr.ph ], [ %.1235, %.loopexit275 ] ; 52 uses
  %.0236342 = phi i64 [ %.tr271586, %.lr.ph ], [ %i.ds, %.loopexit275 ] ; 16 uses
  %i.m = getelementptr inbounds [8 x i8], ptr %i.j, i64 %.0236342
  %i.n = load i64, ptr %i.m, align 8, !tbaa !50   ; 3 uses
  %i.o = and i64 %i.n, 4160749568
  %i.p = add nsw i64 %i.o, -268435456
  %i.q = lshr exact i64 %i.p, 27
  switch i64 %i.q, label %bb.ak [
    i64 0, label %bb.c
    i64 3, label %bb.e
    i64 4, label %bb.g
    i64 1, label %bb.i
    i64 2, label %bb.n
    i64 17, label %bb.s
    i64 18, label %bb.aa
    i64 10, label %.loopexit275
    i64 14, label %bb.ai
  ]

bb.c:                                             ; preds = %bb.b
  %i.r = icmp eq ptr %.0234343, %2
  br i1 %i.r, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.0234343, i64 1
  %i.t = load i8, ptr %.0234343, align 1, !tbaa !27
  %i.u = trunc i64 %i.n to i8
  %.not265 = icmp eq i8 %i.t, %i.u
  br i1 %.not265, label %.loopexit275, label %.loopexit

bb.e:                                             ; preds = %bb.b
  %i.v = icmp eq ptr %.0234343, %2
  br i1 %i.v, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %.0234343, i64 1
  br label %.loopexit275

bb.g:                                             ; preds = %bb.b
  %i.x = icmp eq ptr %.0234343, %2
  br i1 %i.x, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = load ptr, ptr %i.l, align 8, !tbaa !75
  %i.z = and i64 %i.n, 134217727
  %i.aa = getelementptr inbounds nuw [32 x i8], ptr %i.y, i64 %i.z ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !76
  %i.ac = getelementptr inbounds nuw i8, ptr %.0234343, i64 1
  %i.ad = load i8, ptr %.0234343, align 1, !tbaa !27
  %i.ae = zext i8 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !27
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !78
  %i.aj = and i8 %i.ai, %i.ag
  %.not264 = icmp eq i8 %i.aj, 0
  br i1 %.not264, label %.loopexit, label %.loopexit275

bb.i:                                             ; preds = %bb.b
  %i.ak = load ptr, ptr %i.c, align 8, !tbaa !61
  %i.al = icmp eq ptr %.0234343, %i.ak
  br i1 %i.al, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.am = load i32, ptr %i.b, align 8, !tbaa !57
  %i.an = and i32 %i.am, 1
  %.not262 = icmp eq i32 %i.an, 0
  br i1 %.not262, label %.loopexit275, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !62
  %i.ap = icmp ult ptr %.0234343, %i.ao
  br i1 %i.ap, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %bb.k
  %i.aq = getelementptr inbounds i8, ptr %.0234343, i64 -1
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !27
  %i.as = icmp eq i8 %i.ar, 10
  br i1 %i.as, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %bb.l
  %i.at = load i32, ptr %i.k, align 8, !tbaa !22
  %i.au = and i32 %i.at, 8
  %.not263 = icmp eq i32 %i.au, 0
  br i1 %.not263, label %.loopexit, label %.loopexit275

bb.n:                                             ; preds = %bb.b
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !62  ; 2 uses
  %i.aw = icmp eq ptr %.0234343, %i.av
  br i1 %i.aw, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ax = load i32, ptr %i.b, align 8, !tbaa !57
  %i.ay = and i32 %i.ax, 2
  %.not260 = icmp eq i32 %i.ay, 0
  br i1 %.not260, label %.loopexit275, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.az = icmp ult ptr %.0234343, %i.av
  br i1 %i.az, label %bb.q, label %.loopexit

bb.q:                                             ; preds = %bb.p
  %i.ba = load i8, ptr %.0234343, align 1, !tbaa !27
  %i.bb = icmp eq i8 %i.ba, 10
  br i1 %i.bb, label %bb.r, label %.loopexit

bb.r:                                             ; preds = %bb.q
  %i.bc = load i32, ptr %i.k, align 8, !tbaa !22
  %i.bd = and i32 %i.bc, 8
  %.not261 = icmp eq i32 %i.bd, 0
  br i1 %.not261, label %.loopexit, label %.loopexit275

bb.s:                                             ; preds = %bb.b
  %i.be = load ptr, ptr %i.c, align 8, !tbaa !61  ; 2 uses
  %i.bf = icmp eq ptr %.0234343, %i.be
  br i1 %i.bf, label %bb.t, label %._crit_edge415

._crit_edge415:                                   ; preds = %bb.s
  %.pre416 = load ptr, ptr %i.a, align 8, !tbaa !62
  br label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bg = load i32, ptr %i.b, align 8, !tbaa !57
  %i.bh = and i32 %i.bg, 1
  %.not256 = icmp eq i32 %i.bh, 0
  %.pre417 = load ptr, ptr %i.a, align 8, !tbaa !62 ; 2 uses
  br i1 %.not256, label %._crit_edge414, label %bb.u

bb.u:                                             ; preds = %._crit_edge415, %bb.t
  %i.bi = phi ptr [ %.pre416, %._crit_edge415 ], [ %.pre417, %bb.t ] ; 3 uses
  %i.bj = icmp ult ptr %.0234343, %i.bi
  br i1 %i.bj, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.bk = getelementptr inbounds i8, ptr %.0234343, i64 -1
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !27
  %i.bm = icmp eq i8 %i.bl, 10
  br i1 %i.bm, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bn = load i32, ptr %i.k, align 8, !tbaa !22
  %i.bo = and i32 %i.bn, 8
  %.not257 = icmp eq i32 %i.bo, 0
  br i1 %.not257, label %bb.x, label %._crit_edge414

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %i.bp = icmp ugt ptr %.0234343, %i.be
  br i1 %i.bp, label %bb.y, label %.loopexit

bb.y:                                             ; preds = %bb.x
  %i.bq = tail call ptr @__ctype_b_loc() #16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !43
  %i.bs = getelementptr inbounds i8, ptr %.0234343, i64 -1
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !27  ; 2 uses
  %i.bu = sext i8 %i.bt to i64
  %i.bv = getelementptr inbounds [2 x i8], ptr %i.br, i64 %i.bu
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !45
  %i.bx = and i16 %i.bw, 8
  %.not258 = icmp ne i16 %i.bx, 0
  %i.by = icmp eq i8 %i.bt, 95
  %or.cond = or i1 %i.by, %.not258
  br i1 %or.cond, label %.loopexit, label %._crit_edge414

._crit_edge414:                                   ; preds = %bb.t, %bb.y, %bb.w
  %i.bz = phi ptr [ %i.bi, %bb.w ], [ %i.bi, %bb.y ], [ %.pre417, %bb.t ]
  %i.ca = icmp ult ptr %.0234343, %i.bz
  br i1 %i.ca, label %bb.z, label %.loopexit

bb.z:                                             ; preds = %._crit_edge414
  %i.cb = tail call ptr @__ctype_b_loc() #16
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !43
  %i.cd = load i8, ptr %.0234343, align 1, !tbaa !27 ; 2 uses
  %i.ce = sext i8 %i.cd to i64
  %i.cf = getelementptr inbounds [2 x i8], ptr %i.cc, i64 %i.ce
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !45
  %i.ch = and i16 %i.cg, 8
  %.not259 = icmp ne i16 %i.ch, 0
  %i.ci = icmp eq i8 %i.cd, 95
  %or.cond266 = or i1 %i.ci, %.not259
  br i1 %or.cond266, label %.loopexit275, label %.loopexit

bb.aa:                                            ; preds = %bb.b
  %i.cj = load ptr, ptr %i.a, align 8, !tbaa !62  ; 2 uses
  %i.ck = icmp eq ptr %.0234343, %i.cj
  br i1 %i.ck, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cl = load i32, ptr %i.b, align 8, !tbaa !57
  %i.cm = and i32 %i.cl, 2
  %.not252 = icmp eq i32 %i.cm, 0
  br i1 %.not252, label %bb.ag, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.cn = icmp ult ptr %.0234343, %i.cj
  br i1 %i.cn, label %bb.ad, label %.loopexit

bb.ad:                                            ; preds = %bb.ac
  %i.co = load i8, ptr %.0234343, align 1, !tbaa !27 ; 3 uses
  %i.cp = icmp eq i8 %i.co, 10
  br i1 %i.cp, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.cq = load i32, ptr %i.k, align 8, !tbaa !22
  %i.cr = and i32 %i.cq, 8
  %.not253 = icmp eq i32 %i.cr, 0
  br i1 %.not253, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.cs = tail call ptr @__ctype_b_loc() #16
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !43
  %i.cu = sext i8 %i.co to i64
  %i.cv = getelementptr inbounds [2 x i8], ptr %i.ct, i64 %i.cu
  %i.cw = load i16, ptr %i.cv, align 2, !tbaa !45
  %i.cx = and i16 %i.cw, 8
  %.not254 = icmp ne i16 %i.cx, 0
  %i.cy = icmp eq i8 %i.co, 95
  %or.cond267 = or i1 %i.cy, %.not254
  br i1 %or.cond267, label %.loopexit, label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ab
  %i.cz = load ptr, ptr %i.c, align 8, !tbaa !61
  %i.da = icmp ugt ptr %.0234343, %i.cz
  br i1 %i.da, label %bb.ah, label %.loopexit

bb.ah:                                            ; preds = %bb.ag
  %i.db = tail call ptr @__ctype_b_loc() #16
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !43
  %i.dd = getelementptr inbounds i8, ptr %.0234343, i64 -1
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !27  ; 2 uses
  %i.df = sext i8 %i.de to i64
  %i.dg = getelementptr inbounds [2 x i8], ptr %i.dc, i64 %i.df
  %i.dh = load i16, ptr %i.dg, align 2, !tbaa !45
  %i.di = and i16 %i.dh, 8
  %.not255 = icmp ne i16 %i.di, 0
  %i.dj = icmp eq i8 %i.de, 95
  %or.cond268 = or i1 %i.dj, %.not255
  br i1 %or.cond268, label %.loopexit275, label %.loopexit

bb.ai:                                            ; preds = %bb.b
  %i.dk = add nsw i64 %.0236342, 1                ; 2 uses
  %i.dl = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.dk
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !50
  br label %bb.aj

bb.aj:                                            ; preds = %bb.aj, %bb.ai
  %.1237 = phi i64 [ %i.dk, %bb.ai ], [ %i.do, %bb.aj ]
  %.0228 = phi i64 [ %i.dm, %bb.ai ], [ %i.dq, %bb.aj ]
  %i.dn = and i64 %.0228, 134217727
  %i.do = add i64 %i.dn, %.1237                   ; 3 uses
  %i.dp = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.do
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !50 ; 2 uses
  %i.dr = and i64 %i.dq, 4160749568
  %.not251 = icmp eq i64 %i.dr, 2415919104
  br i1 %.not251, label %.loopexit275, label %bb.aj, !llvm.loop !87

.loopexit275:                                     ; preds = %bb.aj, %bb.b, %bb.f, %bb.d, %bb.h, %bb.j, %bb.m, %bb.o, %bb.r, %bb.z, %bb.ah
  %.2 = phi i64 [ %.0236342, %bb.ah ], [ %.0236342, %bb.d ], [ %.0236342, %bb.f ], [ %.0236342, %bb.h ], [ %.0236342, %bb.m ], [ %.0236342, %bb.j ], [ %.0236342, %bb.r ], [ %.0236342, %bb.o ], [ %.0236342, %bb.z ], [ %.0236342, %bb.b ], [ %i.do, %bb.aj ]
  %.1235 = phi ptr [ %.0234343, %bb.ah ], [ %i.s, %bb.d ], [ %i.w, %bb.f ], [ %i.ac, %bb.h ], [ %.0234343, %bb.m ], [ %.0234343, %bb.j ], [ %.0234343, %bb.r ], [ %.0234343, %bb.o ], [ %.0234343, %bb.z ], [ %.0234343, %bb.b ], [ %.0234343, %bb.aj ] ; 2 uses
  %i.ds = add nsw i64 %.2, 1                      ; 2 uses
  %i.dt = icmp slt i64 %i.ds, %4
  br i1 %i.dt, label %bb.b, label %.loopexit438, !llvm.loop !88

.loopexit438:                                     ; preds = %tailrecurse.outer.backedge, %tailrecurse.outer279, %tailrecurse, %.loopexit275, %bb.a
  %.0234.lcssa.ph = phi ptr [ %i.ex, %tailrecurse.outer279 ], [ %.1235, %.loopexit275 ], [ %.0234343, %tailrecurse ], [ %1, %bb.a ], [ %.0234343, %tailrecurse.outer.backedge ] ; 2 uses
  %.not244 = icmp eq ptr %.0234.lcssa.ph, %2
  %.0234. = select i1 %.not244, ptr %.0234.lcssa.ph, ptr null
  br label %.loopexit

bb.ak:                                            ; preds = %bb.b
  %i.du = add nsw i64 %.0236342, 1                ; 8 uses
  %i.dv = load ptr, ptr %0, align 8, !tbaa !55
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !72 ; 2 uses
  %i.dy = getelementptr inbounds [8 x i8], ptr %i.dx, i64 %.0236342
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !50 ; 7 uses
  %i.ea = and i64 %i.dz, 4160749568
  %i.eb = add nsw i64 %i.ea, -939524096
  %i.ec = lshr exact i64 %i.eb, 27
  switch i64 %i.ec, label %.loopexit [
    i64 0, label %bb.al
    i64 4, label %bb.ar
    i64 2, label %bb.as
    i64 3, label %bb.at
    i64 8, label %bb.ax
    i64 6, label %bb.az
    i64 7, label %bb.bb
  ]

bb.al:                                            ; preds = %bb.ak
  %i.ed = and i64 %i.dz, 134217727                ; 2 uses
  %i.ee = load ptr, ptr %i.d, align 8, !tbaa !58
  %i.ef = getelementptr inbounds nuw [16 x i8], ptr %i.ee, i64 %i.ed ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !25 ; 3 uses
  %i.ei = icmp eq i64 %i.eh, -1
  br i1 %i.ei, label %.loopexit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ej = load i64, ptr %i.ef, align 8, !tbaa !23 ; 3 uses
  %i.ek = sub nsw i64 %i.eh, %i.ej                ; 3 uses
  %i.el = icmp eq i64 %i.eh, %i.ej
  br i1 %i.el, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.em = add nsw i32 %.tr274.ph282590, 1
  %i.en = icmp sgt i32 %.tr274.ph282590, 100
  br i1 %i.en, label %.loopexit, label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.0230 = phi i32 [ %i.em, %bb.an ], [ %.tr274.ph282590, %bb.am ]
  %i.eo = sub i64 0, %i.ek
  %i.ep = getelementptr inbounds i8, ptr %2, i64 %i.eo
  %i.eq = icmp ugt ptr %.0234343, %i.ep
  br i1 %i.eq, label %.loopexit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.er = load ptr, ptr %i.e, align 8, !tbaa !60
  %i.es = getelementptr inbounds i8, ptr %i.er, i64 %i.ej
  %bcmp = tail call i32 @bcmp(ptr %.0234343, ptr %i.es, i64 %i.ek)
  %.not249 = icmp eq i32 %bcmp, 0
  br i1 %.not249, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.ap
  %i.et = or disjoint i64 %i.ed, 1073741824
  br label %bb.aq

bb.aq:                                            ; preds = %bb.aq, %.preheader
  %.3 = phi i64 [ %i.ew, %bb.aq ], [ %.0236342, %.preheader ] ; 2 uses
  %i.eu = getelementptr inbounds [8 x i8], ptr %i.dx, i64 %.3
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !50
  %.not250 = icmp eq i64 %i.ev, %i.et
  %i.ew = add nsw i64 %.3, 1                      ; 3 uses
  br i1 %.not250, label %tailrecurse.outer279, label %bb.aq, !llvm.loop !89

tailrecurse.outer279:                             ; preds = %bb.aq
  %i.ex = getelementptr inbounds nuw i8, ptr %.0234343, i64 %i.ek ; 2 uses
  %i.ey = icmp slt i64 %i.ew, %4
  br i1 %i.ey, label %.lr.ph.lr.ph, label %.loopexit438

bb.ar:                                            ; preds = %bb.ak
  %i.ez = tail call fastcc ptr @lbackref(ptr noundef %0, ptr noundef %.0234343, ptr noundef %2, i64 noundef %i.du, i64 noundef %4, i64 noundef %.tr273.ph595, i32 noundef %.tr274.ph282590) ; 2 uses
  %.not248 = icmp eq ptr %i.ez, null
  br i1 %.not248, label %tailrecurse, label %.loopexit

tailrecurse:                                      ; preds = %bb.ar
  %i.fa = and i64 %i.dz, 134217727
  %i.fb = add i64 %i.fa, %i.du                    ; 2 uses
  %i.fc = icmp slt i64 %i.fb, %4
  br i1 %i.fc, label %.lr.ph, label %.loopexit438

bb.as:                                            ; preds = %bb.ak
  %i.fd = load ptr, ptr %i.f, align 8, !tbaa !59
  %i.fe = add nsw i64 %.tr273.ph595, 1            ; 2 uses
  %i.ff = getelementptr inbounds [8 x i8], ptr %i.fd, i64 %i.fe
  store ptr %.0234343, ptr %i.ff, align 8, !tbaa !82
  br label %tailrecurse.outer.backedge

tailrecurse.outer.backedge:                       ; preds = %bb.as, %bb.au, %bb.aw
  %.tr273.ph.be = phi i64 [ %i.fq, %bb.aw ], [ %i.fl, %bb.au ], [ %i.fe, %bb.as ]
  %i.fg = icmp slt i64 %i.du, %4
  br i1 %i.fg, label %.lr.ph.lr.ph.lr.ph, label %.loopexit438

bb.at:                                            ; preds = %bb.ak
  %i.fh = load ptr, ptr %i.f, align 8, !tbaa !59
  %i.fi = getelementptr inbounds [8 x i8], ptr %i.fh, i64 %.tr273.ph595 ; 2 uses
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !82
  %i.fk = icmp eq ptr %.0234343, %i.fj
  br i1 %i.fk, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.fl = add nsw i64 %.tr273.ph595, -1
  br label %tailrecurse.outer.backedge

bb.av:                                            ; preds = %bb.at
  store ptr %.0234343, ptr %i.fi, align 8, !tbaa !82
  %i.fm = and i64 %i.dz, 134217727
  %i.fn = sub i64 %i.du, %i.fm
  %i.fo = tail call fastcc ptr @lbackref(ptr noundef %0, ptr noundef %.0234343, ptr noundef %2, i64 noundef %i.fn, i64 noundef %4, i64 noundef %.tr273.ph595, i32 noundef %.tr274.ph282590) ; 2 uses
  %i.fp = icmp eq ptr %i.fo, null
  br i1 %i.fp, label %bb.aw, label %.loopexit

bb.aw:                                            ; preds = %bb.av
  %i.fq = add nsw i64 %.tr273.ph595, -1
  br label %tailrecurse.outer.backedge

bb.ax:                                            ; preds = %bb.ak
  %i.fr = and i64 %i.dz, 134217727
  %i.fs = add i64 %.0236342, -1
  %i.ft = add i64 %i.fs, %i.fr                    ; 2 uses
  %i.fu = tail call fastcc ptr @lbackref(ptr noundef %0, ptr noundef %.0234343, ptr noundef %2, i64 noundef %i.du, i64 noundef %i.ft, i64 noundef %.tr273.ph595, i32 noundef %.tr274.ph282590) ; 2 uses
  %.not247346 = icmp eq ptr %i.fu, null
  br i1 %.not247346, label %.lr.ph349, label %.loopexit

.lr.ph349:                                        ; preds = %bb.ax, %bb.ay
  %.0231347 = phi i64 [ %spec.select, %bb.ay ], [ %i.ft, %bb.ax ] ; 4 uses
  %i.fv = load ptr, ptr %0, align 8, !tbaa !55
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !72 ; 3 uses
  %i.fy = getelementptr inbounds [8 x i8], ptr %i.fx, i64 %.0231347
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !50
  %i.ga = and i64 %i.fz, 4160749568
  %i.gb = icmp eq i64 %i.ga, 2415919104
  br i1 %i.gb, label %.loopexit, label %bb.ay

bb.ay:                                            ; preds = %.lr.ph349
  %i.gc = add nsw i64 %.0231347, 1                ; 2 uses
  %i.gd = add nsw i64 %.0231347, 2
  %i.ge = getelementptr inbounds [8 x i8], ptr %i.fx, i64 %i.gc
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !50
  %i.gg = and i64 %i.gf, 134217727                ; 2 uses
  %i.gh = add i64 %i.gg, %i.gc                    ; 2 uses
  %i.gi = getelementptr inbounds [8 x i8], ptr %i.fx, i64 %i.gh
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !50
  %i.gk = and i64 %i.gj, 4160749568
  %i.gl = icmp eq i64 %i.gk, 2281701376
  %i.gm = add i64 %i.gg, %.0231347
  %spec.select = select i1 %i.gl, i64 %i.gm, i64 %i.gh ; 2 uses
  %i.gn = tail call fastcc ptr @lbackref(ptr noundef %0, ptr noundef %.0234343, ptr noundef %2, i64 noundef %i.gd, i64 noundef %spec.select, i64 noundef %.tr273.ph595, i32 noundef %.tr274.ph282590) ; 2 uses
  %.not247 = icmp eq ptr %i.gn, null
  br i1 %.not247, label %.lr.ph349, label %.loopexit

bb.az:                                            ; preds = %bb.ak
  %i.go = and i64 %i.dz, 134217727                ; 2 uses
  %i.gp = load ptr, ptr %i.d, align 8, !tbaa !58
  %i.gq = getelementptr inbounds nuw [16 x i8], ptr %i.gp, i64 %i.go ; 2 uses
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !23
  %i.gs = load ptr, ptr %i.e, align 8, !tbaa !60
  %i.gt = ptrtoint ptr %.0234343 to i64
  %i.gu = ptrtoint ptr %i.gs to i64
  %i.gv = sub i64 %i.gt, %i.gu
  store i64 %i.gv, ptr %i.gq, align 8, !tbaa !23
  %i.gw = tail call fastcc ptr @lbackref(ptr noundef %0, ptr noundef %.0234343, ptr noundef %2, i64 noundef %i.du, i64 noundef %4, i64 noundef %.tr273.ph595, i32 noundef %.tr274.ph282590) ; 2 uses
  %.not246 = icmp eq ptr %i.gw, null
  br i1 %.not246, label %bb.ba, label %.loopexit

bb.ba:                                            ; preds = %bb.az
  %i.gx = load ptr, ptr %i.d, align 8, !tbaa !58
  %i.gy = getelementptr inbounds nuw [16 x i8], ptr %i.gx, i64 %i.go
  store i64 %i.gr, ptr %i.gy, align 8, !tbaa !23
  br label %.loopexit

bb.bb:                                            ; preds = %bb.ak
  %i.gz = and i64 %i.dz, 134217727                ; 2 uses
  %i.ha = load ptr, ptr %i.d, align 8, !tbaa !58
  %i.hb = getelementptr inbounds nuw [16 x i8], ptr %i.ha, i64 %i.gz
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 8 ; 2 uses
  %i.hd = load i64, ptr %i.hc, align 8, !tbaa !25
  %i.he = load ptr, ptr %i.e, align 8, !tbaa !60
  %i.hf = ptrtoint ptr %.0234343 to i64
  %i.hg = ptrtoint ptr %i.he to i64
  %i.hh = sub i64 %i.hf, %i.hg
  store i64 %i.hh, ptr %i.hc, align 8, !tbaa !25
  %i.hi = tail call fastcc ptr @lbackref(ptr noundef %0, ptr noundef %.0234343, ptr noundef %2, i64 noundef %i.du, i64 noundef %4, i64 noundef %.tr273.ph595, i32 noundef %.tr274.ph282590) ; 2 uses
  %.not245 = icmp eq ptr %i.hi, null
  br i1 %.not245, label %bb.bc, label %.loopexit

bb.bc:                                            ; preds = %bb.bb
  %i.hj = load ptr, ptr %i.d, align 8, !tbaa !58
  %i.hk = getelementptr inbounds nuw [16 x i8], ptr %i.hj, i64 %i.gz
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  store i64 %i.hd, ptr %i.hl, align 8, !tbaa !25
  br label %.loopexit

.loopexit:                                        ; preds = %bb.av, %bb.ap, %bb.ao, %bb.an, %bb.al, %bb.ak, %bb.ar, %bb.ac, %bb.af, %bb.ag, %bb.ah, %bb.x, %bb.y, %._crit_edge414, %bb.z, %bb.p, %bb.q, %bb.r, %bb.k, %bb.l, %bb.m, %bb.g, %bb.h, %bb.e, %bb.c, %bb.d, %bb.ay, %.lr.ph349, %bb.ax, %bb.bb, %bb.az, %.loopexit438, %bb.bc, %bb.ba
  %.0 = phi ptr [ %i.hi, %bb.bb ], [ %.0234., %.loopexit438 ], [ undef, %bb.ak ], [ null, %bb.ba ], [ %i.gw, %bb.az ], [ null, %bb.bc ], [ null, %.lr.ph349 ], [ null, %bb.ac ], [ %i.fu, %bb.ax ], [ null, %bb.ap ], [ %i.gn, %bb.ay ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.e ], [ null, %bb.h ], [ null, %bb.g ], [ null, %bb.m ], [ null, %bb.l ], [ null, %bb.k ], [ null, %bb.r ], [ null, %bb.q ], [ null, %bb.p ], [ null, %bb.z ], [ null, %._crit_edge414 ], [ null, %bb.y ], [ null, %bb.x ], [ null, %bb.ah ], [ null, %bb.ag ], [ null, %bb.af ], [ %i.ez, %bb.ar ], [ null, %bb.al ], [ null, %bb.an ], [ null, %bb.ao ], [ %i.fo, %bb.av ]
  ret ptr %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef ptr @lstep(ptr noundef readonly captures(none) %0, i64 noundef range(i64 -9223372036854775807, -9223372036854775808) %1, i64 noundef %2, ptr noundef readonly captures(none) %3, i32 noundef range(i32 -128, 135) %4, ptr noundef returned captures(ret: address, provenance) %5) unnamed_addr #10 {
bb.a:
  %.not149 = icmp eq i64 %1, %2
  br i1 %.not149, label %._crit_edge154, label %.lr.ph153

.lr.ph153:                                        ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = icmp sgt i32 %4, 127                     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = and i32 %4, 255
  %i.e = zext nneg i32 %i.d to i64
  %i.f = icmp eq i32 %4, 134
  %i.g = icmp eq i32 %4, 133
  %i.h = and i32 %4, -2
  %or.cond3 = icmp eq i32 %i.h, 130
  %i.i = and i32 %4, -3
  %or.cond = icmp eq i32 %i.i, 129
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph153, %bb.ad
  %.0136151 = phi i64 [ %1, %.lr.ph153 ], [ %i.ew, %bb.ad ] ; 53 uses
  %.0137150 = phi i64 [ %1, %.lr.ph153 ], [ %i.ev, %bb.ad ] ; 31 uses
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !72
  %i.k = getelementptr inbounds [8 x i8], ptr %i.j, i64 %.0137150 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !50   ; 7 uses
  %i.m = and i64 %i.l, 4160749568
  %i.n = add nsw i64 %i.m, -134217728
  %i.o = lshr exact i64 %i.n, 27
  switch i64 %i.o, label %bb.ad [
    i64 17, label %bb.ac
    i64 1, label %bb.c
    i64 2, label %bb.e
    i64 3, label %bb.g
    i64 18, label %bb.i
    i64 19, label %bb.k
    i64 4, label %bb.m
    i64 5, label %bb.o
    i64 6, label %bb.r
    i64 7, label %bb.r
    i64 8, label %bb.s
    i64 9, label %bb.t
    i64 10, label %bb.v
    i64 11, label %bb.w
    i64 12, label %bb.x
    i64 13, label %bb.x
    i64 14, label %bb.y
    i64 15, label %bb.z
    i64 16, label %bb.aa
  ]

bb.c:                                             ; preds = %bb.b
  %i.p = trunc i64 %i.l to i8
  %i.q = sext i8 %i.p to i32
  %i.r = icmp eq i32 %4, %i.q
  br i1 %i.r, label %bb.d, label %bb.ad

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds i8, ptr %3, i64 %.0136151
  %i.t = load i8, ptr %i.s, align 1, !tbaa !27
  %i.u = getelementptr i8, ptr %5, i64 %.0136151
  %i.v = getelementptr i8, ptr %i.u, i64 1        ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !27
  %i.x = or i8 %i.w, %i.t
  store i8 %i.x, ptr %i.v, align 1, !tbaa !27
  br label %bb.ad

bb.e:                                             ; preds = %bb.b
  br i1 %or.cond, label %bb.f, label %bb.ad

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds i8, ptr %3, i64 %.0136151
  %i.z = load i8, ptr %i.y, align 1, !tbaa !27
  %i.aa = getelementptr i8, ptr %5, i64 %.0136151
  %i.ab = getelementptr i8, ptr %i.aa, i64 1      ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !27
  %i.ad = or i8 %i.ac, %i.z
  store i8 %i.ad, ptr %i.ab, align 1, !tbaa !27
  br label %bb.ad

bb.g:                                             ; preds = %bb.b
  br i1 %or.cond3, label %bb.h, label %bb.ad

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds i8, ptr %3, i64 %.0136151
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !27
  %i.ag = getelementptr i8, ptr %5, i64 %.0136151
  %i.ah = getelementptr i8, ptr %i.ag, i64 1      ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !27
  %i.aj = or i8 %i.ai, %i.af
  store i8 %i.aj, ptr %i.ah, align 1, !tbaa !27
  br label %bb.ad

bb.i:                                             ; preds = %bb.b
  br i1 %i.g, label %bb.j, label %bb.ad

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds i8, ptr %3, i64 %.0136151
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !27
  %i.am = getelementptr i8, ptr %5, i64 %.0136151
  %i.an = getelementptr i8, ptr %i.am, i64 1      ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !27
  %i.ap = or i8 %i.ao, %i.al
  store i8 %i.ap, ptr %i.an, align 1, !tbaa !27
  br label %bb.ad

bb.k:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.l, label %bb.ad

bb.l:                                             ; preds = %bb.k
  %i.aq = getelementptr inbounds i8, ptr %3, i64 %.0136151
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !27
  %i.as = getelementptr i8, ptr %5, i64 %.0136151
  %i.at = getelementptr i8, ptr %i.as, i64 1      ; 2 uses
  %i.au = load i8, ptr %i.at, align 1, !tbaa !27
  %i.av = or i8 %i.au, %i.ar
  store i8 %i.av, ptr %i.at, align 1, !tbaa !27
  br label %bb.ad

bb.m:                                             ; preds = %bb.b
  br i1 %i.b, label %bb.ad, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aw = getelementptr inbounds i8, ptr %3, i64 %.0136151
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !27
  %i.ay = getelementptr i8, ptr %5, i64 %.0136151
  %i.az = getelementptr i8, ptr %i.ay, i64 1      ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !27
  %i.bb = or i8 %i.ba, %i.ax
  store i8 %i.bb, ptr %i.az, align 1, !tbaa !27
  br label %bb.ad

bb.o:                                             ; preds = %bb.b
  br i1 %i.b, label %bb.ad, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bc = load ptr, ptr %i.c, align 8, !tbaa !75
  %i.bd = and i64 %i.l, 134217727
  %i.be = getelementptr inbounds nuw [32 x i8], ptr %i.bc, i64 %i.bd ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !76
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.e
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !27
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bj = load i8, ptr %i.bi, align 8, !tbaa !78
  %i.bk = and i8 %i.bj, %i.bh
  %.not145 = icmp eq i8 %i.bk, 0
  br i1 %.not145, label %bb.ad, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bl = getelementptr inbounds i8, ptr %3, i64 %.0136151
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !27
  %i.bn = getelementptr i8, ptr %5, i64 %.0136151
  %i.bo = getelementptr i8, ptr %i.bn, i64 1      ; 2 uses
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !27
  %i.bq = or i8 %i.bp, %i.bm
  store i8 %i.bq, ptr %i.bo, align 1, !tbaa !27
  br label %bb.ad

bb.r:                                             ; preds = %bb.b, %bb.b
  %i.br = getelementptr inbounds i8, ptr %5, i64 %.0136151 ; 2 uses
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !27
  %i.bt = getelementptr i8, ptr %i.br, i64 1      ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !27
  %i.bv = or i8 %i.bu, %i.bs
  store i8 %i.bv, ptr %i.bt, align 1, !tbaa !27
  br label %bb.ad

bb.s:                                             ; preds = %bb.b
  %i.bw = getelementptr inbounds i8, ptr %5, i64 %.0136151 ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !27
  %i.by = getelementptr i8, ptr %i.bw, i64 1      ; 2 uses
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !27
  %i.ca = or i8 %i.bz, %i.bx
  store i8 %i.ca, ptr %i.by, align 1, !tbaa !27
  br label %bb.ad

bb.t:                                             ; preds = %bb.b
  %i.cb = getelementptr inbounds i8, ptr %5, i64 %.0136151 ; 2 uses
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !27  ; 2 uses
  %i.cd = getelementptr i8, ptr %i.cb, i64 1      ; 2 uses
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !27
  %i.cf = or i8 %i.ce, %i.cc
  store i8 %i.cf, ptr %i.cd, align 1, !tbaa !27
  %i.cg = and i64 %i.l, 134217727                 ; 2 uses
  %i.ch = sub i64 %.0136151, %i.cg
  %i.ci = getelementptr inbounds nuw i8, ptr %5, i64 %i.ch ; 2 uses
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !27  ; 2 uses
  %i.ck = or i8 %i.cj, %i.cc                      ; 2 uses
  store i8 %i.ck, ptr %i.ci, align 1, !tbaa !27
  %.not143 = icmp ne i8 %i.cj, 0
  %.not144 = icmp eq i8 %i.ck, 0
  %or.cond146 = select i1 %.not143, i1 true, i1 %.not144
  br i1 %or.cond146, label %bb.ad, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.neg = xor i64 %i.cg, -1
  %i.cl = add i64 %.0137150, %.neg                ; 2 uses
  br label %bb.ad

bb.v:                                             ; preds = %bb.b
  %i.cm = getelementptr inbounds i8, ptr %5, i64 %.0136151 ; 3 uses
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !27  ; 2 uses
  %i.co = getelementptr i8, ptr %i.cm, i64 1      ; 2 uses
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !27
  %i.cq = or i8 %i.cp, %i.cn
  store i8 %i.cq, ptr %i.co, align 1, !tbaa !27
  %i.cr = and i64 %i.l, 134217727
  %i.cs = getelementptr i8, ptr %i.cm, i64 %i.cr  ; 2 uses
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !27
  %i.cu = or i8 %i.ct, %i.cn
  store i8 %i.cu, ptr %i.cs, align 1, !tbaa !27
  br label %bb.ad

bb.w:                                             ; preds = %bb.b
  %i.cv = getelementptr inbounds i8, ptr %5, i64 %.0136151 ; 2 uses
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !27
  %i.cx = getelementptr i8, ptr %i.cv, i64 1      ; 2 uses
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !27
  %i.cz = or i8 %i.cy, %i.cw
  store i8 %i.cz, ptr %i.cx, align 1, !tbaa !27
  br label %bb.ad

bb.x:                                             ; preds = %bb.b, %bb.b
  %i.da = getelementptr inbounds i8, ptr %5, i64 %.0136151 ; 2 uses
  %i.db = load i8, ptr %i.da, align 1, !tbaa !27
  %i.dc = getelementptr i8, ptr %i.da, i64 1      ; 2 uses
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !27
  %i.de = or i8 %i.dd, %i.db
  store i8 %i.de, ptr %i.dc, align 1, !tbaa !27
  br label %bb.ad

bb.y:                                             ; preds = %bb.b
  %i.df = getelementptr inbounds i8, ptr %5, i64 %.0136151 ; 3 uses
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !27  ; 2 uses
  %i.dh = getelementptr i8, ptr %i.df, i64 1      ; 2 uses
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !27
  %i.dj = or i8 %i.di, %i.dg
  store i8 %i.dj, ptr %i.dh, align 1, !tbaa !27
  %i.dk = and i64 %i.l, 134217727
  %i.dl = getelementptr i8, ptr %i.df, i64 %i.dk  ; 2 uses
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !27
  %i.dn = or i8 %i.dm, %i.dg
  store i8 %i.dn, ptr %i.dl, align 1, !tbaa !27
  br label %bb.ad

bb.z:                                             ; preds = %bb.b
  %i.do = getelementptr inbounds i8, ptr %5, i64 %.0136151 ; 2 uses
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !27  ; 2 uses
  %.not141 = icmp eq i8 %i.dp, 0
  br i1 %.not141, label %bb.ad, label %.preheader

.preheader:                                       ; preds = %bb.z
  %i.dq = getelementptr i8, ptr %i.k, i64 8
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !50 ; 2 uses
  %i.ds = and i64 %i.dr, 4160749568
  %.not142147 = icmp eq i64 %i.ds, 2415919104
  br i1 %.not142147, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %i.dt = phi i64 [ %i.dx, %.lr.ph ], [ %i.dr, %.preheader ]
  %.0148 = phi i64 [ %i.dv, %.lr.ph ], [ 1, %.preheader ]
  %i.du = and i64 %i.dt, 134217727
  %i.dv = add i64 %i.du, %.0148                   ; 3 uses
  %i.dw = getelementptr [8 x i8], ptr %i.k, i64 %i.dv
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !50 ; 2 uses
  %i.dy = and i64 %i.dx, 4160749568
  %.not142 = icmp eq i64 %i.dy, 2415919104
  br i1 %.not142, label %._crit_edge, label %.lr.ph, !llvm.loop !90

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %.0.lcssa = phi i64 [ 1, %.preheader ], [ %i.dv, %.lr.ph ]
  %i.dz = getelementptr i8, ptr %i.do, i64 %.0.lcssa ; 2 uses
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !27
  %i.eb = or i8 %i.ea, %i.dp
  store i8 %i.eb, ptr %i.dz, align 1, !tbaa !27
  br label %bb.ad

bb.aa:                                            ; preds = %bb.b
  %i.ec = getelementptr inbounds i8, ptr %5, i64 %.0136151 ; 3 uses
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !27  ; 2 uses
  %i.ee = getelementptr i8, ptr %i.ec, i64 1      ; 2 uses
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !27
  %i.eg = or i8 %i.ef, %i.ed
  store i8 %i.eg, ptr %i.ee, align 1, !tbaa !27
  %i.eh = load ptr, ptr %i.a, align 8, !tbaa !72
  %i.ei = and i64 %i.l, 134217727                 ; 2 uses
  %i.ej = getelementptr [8 x i8], ptr %i.eh, i64 %.0137150
  %i.ek = getelementptr [8 x i8], ptr %i.ej, i64 %i.ei
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !50
  %i.em = and i64 %i.el, 4160749568
  %.not140 = icmp eq i64 %i.em, 2415919104
  br i1 %.not140, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.en = getelementptr i8, ptr %i.ec, i64 %i.ei  ; 2 uses
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !27
  %i.ep = or i8 %i.eo, %i.ed
  store i8 %i.ep, ptr %i.en, align 1, !tbaa !27
  br label %bb.ad

bb.ac:                                            ; preds = %bb.b
  %i.eq = getelementptr inbounds i8, ptr %5, i64 %.0136151 ; 2 uses
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !27
  %i.es = getelementptr i8, ptr %i.eq, i64 1      ; 2 uses
  %i.et = load i8, ptr %i.es, align 1, !tbaa !27
  %i.eu = or i8 %i.et, %i.er
  store i8 %i.eu, ptr %i.es, align 1, !tbaa !27
  br label %bb.ad

bb.ad:                                            ; preds = %bb.r, %bb.s, %bb.v, %bb.w, %bb.x, %bb.y, %bb.ac, %bb.d, %bb.c, %bb.e, %bb.f, %bb.g, %bb.h, %bb.j, %bb.i, %bb.l, %bb.k, %bb.n, %bb.m, %bb.q, %bb.p, %bb.o, %bb.u, %bb.t, %._crit_edge, %bb.z, %bb.ab, %bb.aa, %bb.b
  %.1138 = phi i64 [ %.0137150, %bb.b ], [ %.0137150, %bb.ac ], [ %.0137150, %bb.d ], [ %.0137150, %bb.c ], [ %.0137150, %bb.f ], [ %.0137150, %bb.e ], [ %.0137150, %bb.h ], [ %.0137150, %bb.g ], [ %.0137150, %bb.j ], [ %.0137150, %bb.i ], [ %.0137150, %bb.l ], [ %.0137150, %bb.k ], [ %.0137150, %bb.m ], [ %.0137150, %bb.n ], [ %.0137150, %bb.o ], [ %.0137150, %bb.q ], [ %.0137150, %bb.p ], [ %.0137150, %bb.r ], [ %.0137150, %bb.s ], [ %.0137150, %bb.t ], [ %i.cl, %bb.u ], [ %.0137150, %bb.aa ], [ %.0137150, %bb.v ], [ %.0137150, %bb.w ], [ %.0137150, %bb.x ], [ %.0137150, %bb.y ], [ %.0137150, %._crit_edge ], [ %.0137150, %bb.z ], [ %.0137150, %bb.ab ]
  %.1 = phi i64 [ %.0136151, %bb.b ], [ %.0136151, %bb.ac ], [ %.0136151, %bb.d ], [ %.0136151, %bb.c ], [ %.0136151, %bb.f ], [ %.0136151, %bb.e ], [ %.0136151, %bb.h ], [ %.0136151, %bb.g ], [ %.0136151, %bb.j ], [ %.0136151, %bb.i ], [ %.0136151, %bb.l ], [ %.0136151, %bb.k ], [ %.0136151, %bb.m ], [ %.0136151, %bb.n ], [ %.0136151, %bb.o ], [ %.0136151, %bb.q ], [ %.0136151, %bb.p ], [ %.0136151, %bb.r ], [ %.0136151, %bb.s ], [ %.0136151, %bb.t ], [ %i.cl, %bb.u ], [ %.0136151, %bb.aa ], [ %.0136151, %bb.v ], [ %.0136151, %bb.w ], [ %.0136151, %bb.x ], [ %.0136151, %bb.y ], [ %.0136151, %._crit_edge ], [ %.0136151, %bb.z ], [ %.0136151, %bb.ab ]
  %i.ev = add nsw i64 %.1138, 1                   ; 2 uses
  %i.ew = add nsw i64 %.1, 1
  %.not = icmp eq i64 %i.ev, %2
  br i1 %.not, label %._crit_edge154, label %bb.b, !llvm.loop !91

._crit_edge154:                                   ; preds = %bb.ad, %bb.a
  ret ptr %5
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nounwind }
attributes #15 = { nounwind willreturn memory(read) }
attributes #16 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !13, i64 24}
!9 = !{!"", !5, i64 0, !10, i64 8, !11, i64 16, !13, i64 24}
!10 = !{!"long", !6, i64 0}
!11 = !{!"p1 omnipotent char", !12, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!"p1 _ZTS7re_guts", !12, i64 0}
!14 = !{!9, !5, i64 0}
!15 = !{!16, !5, i64 0}
!16 = !{!"re_guts", !5, i64 0, !17, i64 8, !5, i64 16, !5, i64 20, !12, i64 24, !11, i64 32, !5, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !5, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !11, i64 88, !11, i64 96, !5, i64 104, !10, i64 112, !5, i64 120, !10, i64 128, !6, i64 136}
!17 = !{!"p1 long", !12, i64 0}
!18 = !{!16, !5, i64 72}
!19 = !{!16, !10, i64 48}
!20 = !{!16, !10, i64 56}
!21 = !{!16, !10, i64 64}
!22 = !{!16, !5, i64 40}
!23 = !{!24, !10, i64 0}
!24 = !{!"", !10, i64 0, !10, i64 8}
!25 = !{!24, !10, i64 8}
!26 = !{!16, !11, i64 96}
!27 = !{!6, !6, i64 0}
!28 = !{!16, !5, i64 104}
!29 = distinct !{!29, !30}
!30 = !{!"llvm.loop.mustprogress"}
!31 = !{!32, !13, i64 0}
!32 = !{!"smat", !13, i64 0, !5, i64 8, !12, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !33, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96}
!33 = !{!"p2 omnipotent char", !34, i64 0}
!34 = !{!"any p2 pointer", !12, i64 0}
!35 = !{!32, !5, i64 8}
!36 = !{!32, !12, i64 16}
!37 = !{!32, !33, i64 56}
!38 = !{!32, !11, i64 24}
!39 = !{!32, !11, i64 32}
!40 = !{!32, !11, i64 40}
!41 = !{!16, !5, i64 76}
!42 = !{!16, !5, i64 80}
!43 = !{!44, !44, i64 0}
!44 = !{!"p1 short", !12, i64 0}
!45 = !{!46, !46, i64 0}
!46 = !{!"short", !6, i64 0}
!47 = !{!32, !11, i64 48}
!48 = !{!16, !5, i64 120}
!49 = !{!16, !10, i64 112}
!50 = !{!10, !10, i64 0}
!51 = !{!16, !10, i64 128}
!52 = !{i64 0, i64 8, !50, i64 8, i64 8, !50}
!53 = distinct !{!53, !30}
!54 = distinct !{!54, !30}
!55 = !{!56, !13, i64 0}
!56 = !{!"lmat", !13, i64 0, !5, i64 8, !12, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !33, i64 56, !10, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104}
!57 = !{!56, !5, i64 8}
!58 = !{!56, !12, i64 16}
!59 = !{!56, !33, i64 56}
!60 = !{!56, !11, i64 24}
!61 = !{!56, !11, i64 32}
!62 = !{!56, !11, i64 40}
!63 = !{!56, !11, i64 72}
!64 = !{!56, !11, i64 80}
!65 = !{!56, !11, i64 88}
!66 = !{!56, !11, i64 96}
!67 = !{!56, !10, i64 64}
!68 = !{!56, !11, i64 104}
!69 = !{!56, !11, i64 48}
!70 = distinct !{!70, !30}
!71 = !{!32, !10, i64 96}
!72 = !{!16, !17, i64 8}
!73 = distinct !{!73, !30}
!74 = distinct !{!74, !30}
!75 = !{!16, !12, i64 24}
!76 = !{!77, !11, i64 0}
!77 = !{!"", !11, i64 0, !6, i64 8, !6, i64 9, !10, i64 16, !11, i64 24}
!78 = !{!77, !6, i64 8}
!79 = distinct !{!79, !30}
!80 = distinct !{!80, !30}
!81 = distinct !{!81, !30}
!82 = !{!11, !11, i64 0}
!83 = distinct !{!83, !30}
!84 = distinct !{!84, !30}
!85 = distinct !{!85, !30}
!86 = distinct !{!86, !30}
!87 = distinct !{!87, !30}
!88 = distinct !{!88, !30}
!89 = distinct !{!89, !30}
!90 = distinct !{!90, !30}
!91 = distinct !{!91, !30}
end_hunk_0
