inline.NumInlined: 1
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define noundef i32 @dsymv_L(i64 noundef %0, i64 noundef %1, double noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %9) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %9 to i64
  %i.b = add i64 %i.a, 4607
  %i.c = and i64 %i.b, -4096                      ; 2 uses
  %i.d = inttoptr i64 %i.c to ptr                 ; 3 uses
  %.not = icmp eq i64 %8, 1                       ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = shl i64 %0, 3
  %i.f = add i64 %i.e, 4088
  %i.g = add i64 %i.f, %i.c
  %i.h = and i64 %i.g, -4096
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = tail call i32 @dcopy_k(i64 noundef %0, ptr noundef %7, i64 noundef %8, ptr noundef %i.d, i64 noundef 1) #3 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.089 = phi ptr [ %i.d, %bb.b ], [ %7, %bb.a ]  ; 3 uses
  %.0 = phi ptr [ %i.i, %bb.b ], [ %i.d, %bb.a ]  ; 4 uses
  %.not98 = icmp eq i64 %6, 1
  br i1 %.not98, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = ptrtoint ptr %.0 to i64
  %i.l = shl i64 %0, 3
  %i.m = add i64 %i.l, 4095
  %i.n = add i64 %i.m, %i.k
  %i.o = and i64 %i.n, -4096
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = tail call i32 @dcopy_k(i64 noundef %0, ptr noundef %5, i64 noundef %6, ptr noundef %.0, i64 noundef 1) #3 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.090 = phi ptr [ %.0, %bb.d ], [ %5, %bb.c ]   ; 2 uses
  %.1 = phi ptr [ %i.p, %bb.d ], [ %.0, %bb.c ]   ; 3 uses
  %i.r = icmp sgt i64 %1, 0
  br i1 %i.r, label %.lr.ph133.i.lr.ph, label %._crit_edge

.lr.ph133.i.lr.ph:                                ; preds = %bb.e
  %.idx.i = shl i64 %4, 4                         ; 4 uses
  br label %.lr.ph133.i

.lr.ph133.i:                                      ; preds = %.lr.ph133.i.lr.ph, %bb.o
  %indvar = phi i64 [ 0, %.lr.ph133.i.lr.ph ], [ %indvar.next, %bb.o ] ; 2 uses
  %.091101 = phi i64 [ 0, %.lr.ph133.i.lr.ph ], [ %i.gc, %bb.o ] ; 8 uses
  %i.s = shl i64 %indvar, 3
  %i.t = sub i64 %1, %i.s
  %smin = tail call i64 @llvm.smin.i64(i64 %i.t, i64 8)
  %i.u = add i64 %smin, -2
  %i.v = sub nsw i64 %1, %.091101                 ; 8 uses
  %i.w = tail call i64 @llvm.smin.i64(i64 %i.v, i64 8) ; 21 uses
  %i.x = mul nsw i64 %.091101, %4                 ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.091101
  %i.z = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.x ; 6 uses
  %i.aa = shl nuw nsw i64 %i.w, 1                 ; 16 uses
  %i.ab = add nuw nsw i64 %i.aa, 2                ; 4 uses
  %i.ac = and i64 %i.w, 1
  %.not.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i, label %.lr.ph133.split.us.i, label %.lr.ph133.split.i

.lr.ph133.split.us.i:                             ; preds = %.lr.ph133.i
  %i.ad = getelementptr i8, ptr %i.z, i64 %.idx.i ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 16     ; 4 uses
  %i.af = getelementptr [8 x i8], ptr %9, i64 %i.ab ; 5 uses
  %i.ag = icmp sgt i64 %i.v, 1
  br i1 %i.ag, label %bb.f, label %._crit_edge.us.i

bb.f:                                             ; preds = %.lr.ph133.split.us.i
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %i.w ; 4 uses
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.z, i64 %4 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.al = load double, ptr %i.ak, align 8, !tbaa !8
  %i.am = load double, ptr %i.aj, align 8, !tbaa !8
  %i.an = load <2 x double>, ptr %i.z, align 8, !tbaa !8
  store <2 x double> %i.an, ptr %9, align 8, !tbaa !8
  store double %i.am, ptr %i.ah, align 8, !tbaa !8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store double %i.al, ptr %i.ao, align 8, !tbaa !8
  %i.ap = add nsw i64 %i.w, -2                    ; 2 uses
  %.not136.i = icmp eq i64 %i.ap, 0
  br i1 %.not136.i, label %._crit_edge.us.i, label %.lr.ph.us.preheader.i

.lr.ph.us.preheader.i:                            ; preds = %bb.f
  %i.aq = lshr exact i64 %i.ap, 1
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %.lr.ph.us.i, %.lr.ph.us.preheader.i
  %.093119.us.pn.i = phi ptr [ %.093119.us.i, %.lr.ph.us.i ], [ %9, %.lr.ph.us.preheader.i ]
  %.pn107118.us.i = phi ptr [ %.0.us.i, %.lr.ph.us.i ], [ %i.ah, %.lr.ph.us.preheader.i ]
  %.pn106117.us.i = phi ptr [ %.094120.us.i, %.lr.ph.us.i ], [ %i.ah, %.lr.ph.us.preheader.i ]
  %.097.pn116.us.i = phi ptr [ %.095121.us.i, %.lr.ph.us.i ], [ %9, %.lr.ph.us.preheader.i ]
  %.pn115.us.i = phi ptr [ %.098122.us.i, %.lr.ph.us.i ], [ %i.ai, %.lr.ph.us.preheader.i ]
  %.0103.pn114.us.i = phi ptr [ %.099123.us.i, %.lr.ph.us.i ], [ %i.z, %.lr.ph.us.preheader.i ]
  %.0102113.us.i = phi i64 [ %i.ax, %.lr.ph.us.i ], [ %i.aq, %.lr.ph.us.preheader.i ] ; 2 uses
  %.099123.us.i = getelementptr inbounds nuw i8, ptr %.0103.pn114.us.i, i64 16 ; 2 uses
  %.095121.us.i = getelementptr inbounds nuw i8, ptr %.097.pn116.us.i, i64 16 ; 2 uses
  %.093119.us.i = getelementptr inbounds nuw [8 x i8], ptr %.093119.us.pn.i, i64 %i.aa ; 3 uses
  %.094120.us.i = getelementptr inbounds nuw i8, ptr %.pn106117.us.i, i64 16 ; 2 uses
  %.098122.us.i = getelementptr inbounds nuw i8, ptr %.pn115.us.i, i64 16 ; 2 uses
  %.0.us.i = getelementptr inbounds nuw [8 x i8], ptr %.pn107118.us.i, i64 %i.aa ; 2 uses
  %i.ar = load <2 x double>, ptr %.099123.us.i, align 8, !tbaa !8 ; 3 uses
  %i.as = load <2 x double>, ptr %.098122.us.i, align 8, !tbaa !8 ; 3 uses
  store <2 x double> %i.ar, ptr %.095121.us.i, align 8, !tbaa !8
  store <2 x double> %i.as, ptr %.094120.us.i, align 8, !tbaa !8
  %i.at = extractelement <2 x double> %i.ar, i64 0
  store double %i.at, ptr %.093119.us.i, align 8, !tbaa !8
  %i.au = getelementptr inbounds nuw i8, ptr %.093119.us.i, i64 8
  %i.av = extractelement <2 x double> %i.as, i64 0
  store double %i.av, ptr %i.au, align 8, !tbaa !8
  %i.aw = shufflevector <2 x double> %i.ar, <2 x double> %i.as, <2 x i32> <i32 1, i32 3>
  store <2 x double> %i.aw, ptr %.0.us.i, align 8, !tbaa !8
  %i.ax = add nsw i64 %.0102113.us.i, -1
  %i.ay = icmp samesign ugt i64 %.0102113.us.i, 1
  br i1 %i.ay, label %.lr.ph.us.i, label %._crit_edge.us.i, !llvm.loop !10

._crit_edge.us.i:                                 ; preds = %.lr.ph.us.i, %bb.f, %.lr.ph133.split.us.i
  %i.az = icmp sgt i64 %i.v, 2
  br i1 %i.az, label %.lr.ph133.split.us.i.1, label %SYMCOPY_L.exit

.lr.ph133.split.us.i.1:                           ; preds = %._crit_edge.us.i
  %i.ba = getelementptr i8, ptr %i.ae, i64 %.idx.i ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ba, i64 16     ; 4 uses
  %i.bc = getelementptr [8 x i8], ptr %i.af, i64 %i.ab ; 5 uses
  %.not122 = icmp eq i64 %i.v, 3
  br i1 %.not122, label %._crit_edge.us.i.1, label %bb.g

bb.g:                                             ; preds = %.lr.ph133.split.us.i.1
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.w ; 4 uses
  %i.be = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %4 ; 2 uses
  %i.bf = getelementptr i8, ptr %i.ad, i64 24
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !8
  %i.bi = load double, ptr %i.bf, align 8, !tbaa !8
  %i.bj = load <2 x double>, ptr %i.ae, align 8, !tbaa !8
  store <2 x double> %i.bj, ptr %i.af, align 8, !tbaa !8
  store double %i.bi, ptr %i.bd, align 8, !tbaa !8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store double %i.bh, ptr %i.bk, align 8, !tbaa !8
  %i.bl = add nsw i64 %i.w, -4                    ; 2 uses
  %.not136.i.1 = icmp eq i64 %i.bl, 0
  br i1 %.not136.i.1, label %._crit_edge.us.i.1, label %.lr.ph.us.preheader.i.1

.lr.ph.us.preheader.i.1:                          ; preds = %bb.g
  %i.bm = lshr exact i64 %i.bl, 1
  br label %.lr.ph.us.i.1

.lr.ph.us.i.1:                                    ; preds = %.lr.ph.us.i.1, %.lr.ph.us.preheader.i.1
  %.093119.us.pn.i.1 = phi ptr [ %.093119.us.i.1, %.lr.ph.us.i.1 ], [ %i.af, %.lr.ph.us.preheader.i.1 ]
  %.pn107118.us.i.1 = phi ptr [ %.0.us.i.1, %.lr.ph.us.i.1 ], [ %i.bd, %.lr.ph.us.preheader.i.1 ]
  %.pn106117.us.i.1 = phi ptr [ %.094120.us.i.1, %.lr.ph.us.i.1 ], [ %i.bd, %.lr.ph.us.preheader.i.1 ]
  %.097.pn116.us.i.1 = phi ptr [ %.095121.us.i.1, %.lr.ph.us.i.1 ], [ %i.af, %.lr.ph.us.preheader.i.1 ]
  %.pn115.us.i.1 = phi ptr [ %.098122.us.i.1, %.lr.ph.us.i.1 ], [ %i.be, %.lr.ph.us.preheader.i.1 ]
  %.0103.pn114.us.i.1 = phi ptr [ %.099123.us.i.1, %.lr.ph.us.i.1 ], [ %i.ae, %.lr.ph.us.preheader.i.1 ]
  %.0102113.us.i.1 = phi i64 [ %i.bt, %.lr.ph.us.i.1 ], [ %i.bm, %.lr.ph.us.preheader.i.1 ] ; 2 uses
  %.099123.us.i.1 = getelementptr inbounds nuw i8, ptr %.0103.pn114.us.i.1, i64 16 ; 2 uses
  %.095121.us.i.1 = getelementptr inbounds nuw i8, ptr %.097.pn116.us.i.1, i64 16 ; 2 uses
  %.093119.us.i.1 = getelementptr inbounds nuw [8 x i8], ptr %.093119.us.pn.i.1, i64 %i.aa ; 3 uses
  %.094120.us.i.1 = getelementptr inbounds nuw i8, ptr %.pn106117.us.i.1, i64 16 ; 2 uses
  %.098122.us.i.1 = getelementptr inbounds nuw i8, ptr %.pn115.us.i.1, i64 16 ; 2 uses
  %.0.us.i.1 = getelementptr inbounds nuw [8 x i8], ptr %.pn107118.us.i.1, i64 %i.aa ; 2 uses
  %i.bn = load <2 x double>, ptr %.099123.us.i.1, align 8, !tbaa !8 ; 3 uses
  %i.bo = load <2 x double>, ptr %.098122.us.i.1, align 8, !tbaa !8 ; 3 uses
  store <2 x double> %i.bn, ptr %.095121.us.i.1, align 8, !tbaa !8
  store <2 x double> %i.bo, ptr %.094120.us.i.1, align 8, !tbaa !8
  %i.bp = extractelement <2 x double> %i.bn, i64 0
  store double %i.bp, ptr %.093119.us.i.1, align 8, !tbaa !8
  %i.bq = getelementptr inbounds nuw i8, ptr %.093119.us.i.1, i64 8
  %i.br = extractelement <2 x double> %i.bo, i64 0
  store double %i.br, ptr %i.bq, align 8, !tbaa !8
  %i.bs = shufflevector <2 x double> %i.bn, <2 x double> %i.bo, <2 x i32> <i32 1, i32 3>
  store <2 x double> %i.bs, ptr %.0.us.i.1, align 8, !tbaa !8
  %i.bt = add nsw i64 %.0102113.us.i.1, -1
  %i.bu = icmp samesign ugt i64 %.0102113.us.i.1, 1
  br i1 %i.bu, label %.lr.ph.us.i.1, label %._crit_edge.us.i.1, !llvm.loop !10

._crit_edge.us.i.1:                               ; preds = %.lr.ph.us.i.1, %bb.g, %.lr.ph133.split.us.i.1
  %i.bv = icmp sgt i64 %i.v, 4
  br i1 %i.bv, label %.lr.ph133.split.us.i.2, label %SYMCOPY_L.exit

.lr.ph133.split.us.i.2:                           ; preds = %._crit_edge.us.i.1
  %i.bw = getelementptr i8, ptr %i.bb, i64 %.idx.i ; 2 uses
  %i.bx = getelementptr i8, ptr %i.bw, i64 16     ; 3 uses
  %i.by = getelementptr [8 x i8], ptr %i.bc, i64 %i.ab ; 4 uses
  %.not123 = icmp eq i64 %i.v, 5
  br i1 %.not123, label %._crit_edge.us.i.2, label %bb.h

bb.h:                                             ; preds = %.lr.ph133.split.us.i.2
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.w ; 4 uses
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %4 ; 2 uses
  %i.cb = getelementptr i8, ptr %i.ba, i64 24
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !8
  %i.ce = load double, ptr %i.cb, align 8, !tbaa !8
  %i.cf = load <2 x double>, ptr %i.bb, align 8, !tbaa !8
  store <2 x double> %i.cf, ptr %i.bc, align 8, !tbaa !8
  store double %i.ce, ptr %i.bz, align 8, !tbaa !8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store double %i.cd, ptr %i.cg, align 8, !tbaa !8
  %i.ch = add nsw i64 %i.w, -6                    ; 2 uses
  %.not136.i.2 = icmp eq i64 %i.ch, 0
  br i1 %.not136.i.2, label %._crit_edge.us.i.2, label %.lr.ph.us.preheader.i.2

.lr.ph.us.preheader.i.2:                          ; preds = %bb.h
  %i.ci = lshr exact i64 %i.ch, 1
  br label %.lr.ph.us.i.2

.lr.ph.us.i.2:                                    ; preds = %.lr.ph.us.i.2, %.lr.ph.us.preheader.i.2
  %.093119.us.pn.i.2 = phi ptr [ %.093119.us.i.2, %.lr.ph.us.i.2 ], [ %i.bc, %.lr.ph.us.preheader.i.2 ]
  %.pn107118.us.i.2 = phi ptr [ %.0.us.i.2, %.lr.ph.us.i.2 ], [ %i.bz, %.lr.ph.us.preheader.i.2 ]
  %.pn106117.us.i.2 = phi ptr [ %.094120.us.i.2, %.lr.ph.us.i.2 ], [ %i.bz, %.lr.ph.us.preheader.i.2 ]
  %.097.pn116.us.i.2 = phi ptr [ %.095121.us.i.2, %.lr.ph.us.i.2 ], [ %i.bc, %.lr.ph.us.preheader.i.2 ]
  %.pn115.us.i.2 = phi ptr [ %.098122.us.i.2, %.lr.ph.us.i.2 ], [ %i.ca, %.lr.ph.us.preheader.i.2 ]
  %.0103.pn114.us.i.2 = phi ptr [ %.099123.us.i.2, %.lr.ph.us.i.2 ], [ %i.bb, %.lr.ph.us.preheader.i.2 ]
  %.0102113.us.i.2 = phi i64 [ %i.cp, %.lr.ph.us.i.2 ], [ %i.ci, %.lr.ph.us.preheader.i.2 ] ; 2 uses
  %.099123.us.i.2 = getelementptr inbounds nuw i8, ptr %.0103.pn114.us.i.2, i64 16 ; 2 uses
  %.095121.us.i.2 = getelementptr inbounds nuw i8, ptr %.097.pn116.us.i.2, i64 16 ; 2 uses
  %.093119.us.i.2 = getelementptr inbounds nuw [8 x i8], ptr %.093119.us.pn.i.2, i64 %i.aa ; 3 uses
  %.094120.us.i.2 = getelementptr inbounds nuw i8, ptr %.pn106117.us.i.2, i64 16 ; 2 uses
  %.098122.us.i.2 = getelementptr inbounds nuw i8, ptr %.pn115.us.i.2, i64 16 ; 2 uses
  %.0.us.i.2 = getelementptr inbounds nuw [8 x i8], ptr %.pn107118.us.i.2, i64 %i.aa ; 2 uses
  %i.cj = load <2 x double>, ptr %.099123.us.i.2, align 8, !tbaa !8 ; 3 uses
  %i.ck = load <2 x double>, ptr %.098122.us.i.2, align 8, !tbaa !8 ; 3 uses
  store <2 x double> %i.cj, ptr %.095121.us.i.2, align 8, !tbaa !8
  store <2 x double> %i.ck, ptr %.094120.us.i.2, align 8, !tbaa !8
  %i.cl = extractelement <2 x double> %i.cj, i64 0
  store double %i.cl, ptr %.093119.us.i.2, align 8, !tbaa !8
  %i.cm = getelementptr inbounds nuw i8, ptr %.093119.us.i.2, i64 8
  %i.cn = extractelement <2 x double> %i.ck, i64 0
  store double %i.cn, ptr %i.cm, align 8, !tbaa !8
  %i.co = shufflevector <2 x double> %i.cj, <2 x double> %i.ck, <2 x i32> <i32 1, i32 3>
  store <2 x double> %i.co, ptr %.0.us.i.2, align 8, !tbaa !8
  %i.cp = add nsw i64 %.0102113.us.i.2, -1
  %i.cq = icmp samesign ugt i64 %.0102113.us.i.2, 1
  br i1 %i.cq, label %.lr.ph.us.i.2, label %._crit_edge.us.i.2, !llvm.loop !10

._crit_edge.us.i.2:                               ; preds = %.lr.ph.us.i.2, %bb.h, %.lr.ph133.split.us.i.2
  %i.cr = icmp sle i64 %i.v, 6
  %.not124 = icmp eq i64 %i.v, 7
  %or.cond = or i1 %i.cr, %.not124
  br i1 %or.cond, label %SYMCOPY_L.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge.us.i.2
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.w ; 4 uses
  %i.ct = getelementptr inbounds [8 x i8], ptr %i.bx, i64 %4 ; 2 uses
  %i.cu = getelementptr i8, ptr %i.bw, i64 24
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !8
  %i.cx = load double, ptr %i.cu, align 8, !tbaa !8
  %i.cy = load <2 x double>, ptr %i.bx, align 8, !tbaa !8
  store <2 x double> %i.cy, ptr %i.by, align 8, !tbaa !8
  store double %i.cx, ptr %i.cs, align 8, !tbaa !8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store double %i.cw, ptr %i.cz, align 8, !tbaa !8
  %i.da = add nsw i64 %i.w, -8                    ; 2 uses
  %.not136.i.3 = icmp eq i64 %i.da, 0
  br i1 %.not136.i.3, label %SYMCOPY_L.exit, label %.lr.ph.us.preheader.i.3

.lr.ph.us.preheader.i.3:                          ; preds = %bb.i
  %i.db = lshr exact i64 %i.da, 1
  br label %.lr.ph.us.i.3

.lr.ph.us.i.3:                                    ; preds = %.lr.ph.us.i.3, %.lr.ph.us.preheader.i.3
  %.093119.us.pn.i.3 = phi ptr [ %.093119.us.i.3, %.lr.ph.us.i.3 ], [ %i.by, %.lr.ph.us.preheader.i.3 ]
  %.pn107118.us.i.3 = phi ptr [ %.0.us.i.3, %.lr.ph.us.i.3 ], [ %i.cs, %.lr.ph.us.preheader.i.3 ]
  %.pn106117.us.i.3 = phi ptr [ %.094120.us.i.3, %.lr.ph.us.i.3 ], [ %i.cs, %.lr.ph.us.preheader.i.3 ]
  %.097.pn116.us.i.3 = phi ptr [ %.095121.us.i.3, %.lr.ph.us.i.3 ], [ %i.by, %.lr.ph.us.preheader.i.3 ]
  %.pn115.us.i.3 = phi ptr [ %.098122.us.i.3, %.lr.ph.us.i.3 ], [ %i.ct, %.lr.ph.us.preheader.i.3 ]
  %.0103.pn114.us.i.3 = phi ptr [ %.099123.us.i.3, %.lr.ph.us.i.3 ], [ %i.bx, %.lr.ph.us.preheader.i.3 ]
  %.0102113.us.i.3 = phi i64 [ %i.di, %.lr.ph.us.i.3 ], [ %i.db, %.lr.ph.us.preheader.i.3 ] ; 2 uses
  %.099123.us.i.3 = getelementptr inbounds nuw i8, ptr %.0103.pn114.us.i.3, i64 16 ; 2 uses
  %.095121.us.i.3 = getelementptr inbounds nuw i8, ptr %.097.pn116.us.i.3, i64 16 ; 2 uses
  %.093119.us.i.3 = getelementptr inbounds nuw [8 x i8], ptr %.093119.us.pn.i.3, i64 %i.aa ; 3 uses
  %.094120.us.i.3 = getelementptr inbounds nuw i8, ptr %.pn106117.us.i.3, i64 16 ; 2 uses
  %.098122.us.i.3 = getelementptr inbounds nuw i8, ptr %.pn115.us.i.3, i64 16 ; 2 uses
  %.0.us.i.3 = getelementptr inbounds nuw [8 x i8], ptr %.pn107118.us.i.3, i64 %i.aa ; 2 uses
  %i.dc = load <2 x double>, ptr %.099123.us.i.3, align 8, !tbaa !8 ; 3 uses
  %i.dd = load <2 x double>, ptr %.098122.us.i.3, align 8, !tbaa !8 ; 3 uses
  store <2 x double> %i.dc, ptr %.095121.us.i.3, align 8, !tbaa !8
  store <2 x double> %i.dd, ptr %.094120.us.i.3, align 8, !tbaa !8
  %i.de = extractelement <2 x double> %i.dc, i64 0
  store double %i.de, ptr %.093119.us.i.3, align 8, !tbaa !8
  %i.df = getelementptr inbounds nuw i8, ptr %.093119.us.i.3, i64 8
  %i.dg = extractelement <2 x double> %i.dd, i64 0
  store double %i.dg, ptr %i.df, align 8, !tbaa !8
  %i.dh = shufflevector <2 x double> %i.dc, <2 x double> %i.dd, <2 x i32> <i32 1, i32 3>
  store <2 x double> %i.dh, ptr %.0.us.i.3, align 8, !tbaa !8
  %i.di = add nsw i64 %.0102113.us.i.3, -1
  %i.dj = icmp samesign ugt i64 %.0102113.us.i.3, 1
  br i1 %i.dj, label %.lr.ph.us.i.3, label %SYMCOPY_L.exit, !llvm.loop !10

.lr.ph133.split.i:                                ; preds = %.lr.ph133.i, %bb.m
  %indvar120 = phi i64 [ %indvar.next121, %bb.m ], [ 0, %.lr.ph133.i ] ; 2 uses
  %.096131.i = phi ptr [ %i.dm, %bb.m ], [ %9, %.lr.ph133.i ] ; 9 uses
  %.0101129.i = phi i64 [ %i.fn, %bb.m ], [ 0, %.lr.ph133.i ] ; 2 uses
  %.0103128.i = phi ptr [ %i.dl, %bb.m ], [ %i.z, %.lr.ph133.i ] ; 9 uses
  %10 = shl i64 %indvar120, 1
  %11 = sub i64 %i.u, %10                         ; 2 uses
  %i.dk = getelementptr i8, ptr %.0103128.i, i64 %.idx.i
  %i.dl = getelementptr i8, ptr %i.dk, i64 16
  %i.dm = getelementptr [8 x i8], ptr %.096131.i, i64 %i.ab
  %i.dn = sub nsw i64 %i.w, %.0101129.i           ; 3 uses
  %i.do = icmp sgt i64 %i.dn, 1
  br i1 %i.do, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph133.split.i
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %.096131.i, i64 %i.w ; 8 uses
  %i.dq = getelementptr inbounds [8 x i8], ptr %.0103128.i, i64 %4 ; 5 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.0103128.i, i64 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !8
  %i.du = load double, ptr %i.dr, align 8, !tbaa !8
  %i.dv = load <2 x double>, ptr %.0103128.i, align 8, !tbaa !8
  store <2 x double> %i.dv, ptr %.096131.i, align 8, !tbaa !8
  store double %i.du, ptr %i.dp, align 8, !tbaa !8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  store double %i.dt, ptr %i.dw, align 8, !tbaa !8
  %i.dx = add nsw i64 %i.dn, -2
  %i.dy = lshr i64 %i.dx, 1                       ; 3 uses
  %.093108.i = getelementptr inbounds nuw [8 x i8], ptr %.096131.i, i64 %i.aa ; 5 uses
  %.094109.i = getelementptr inbounds nuw i8, ptr %i.dp, i64 16 ; 4 uses
  %.095110.i = getelementptr inbounds nuw i8, ptr %.096131.i, i64 16 ; 4 uses
  %.098111.i = getelementptr inbounds nuw i8, ptr %i.dq, i64 16 ; 4 uses
  %.099112.i = getelementptr inbounds nuw i8, ptr %.0103128.i, i64 16 ; 4 uses
  %.not135.i = icmp eq i64 %i.dy, 0
  br i1 %.not135.i, label %.thread.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.j
  %i.dz = and i64 %11, 2
  %lcmp.mod.not = icmp eq i64 %i.dz, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %.0.i.prol = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.aa ; 3 uses
  %i.ea = load double, ptr %.099112.i, align 8, !tbaa !8 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.0103128.i, i64 24
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !8 ; 2 uses
  %i.ed = load double, ptr %.098111.i, align 8, !tbaa !8 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !8 ; 2 uses
  store double %i.ea, ptr %.095110.i, align 8, !tbaa !8
  %i.eg = getelementptr inbounds nuw i8, ptr %.096131.i, i64 24
  store double %i.ec, ptr %i.eg, align 8, !tbaa !8
  store double %i.ed, ptr %.094109.i, align 8, !tbaa !8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  store double %i.ef, ptr %i.eh, align 8, !tbaa !8
  store double %i.ea, ptr %.093108.i, align 8, !tbaa !8
  %i.ei = getelementptr inbounds nuw i8, ptr %.093108.i, i64 8
  store double %i.ed, ptr %i.ei, align 8, !tbaa !8
  store double %i.ec, ptr %.0.i.prol, align 8, !tbaa !8
  %i.ej = getelementptr inbounds nuw i8, ptr %.0.i.prol, i64 8
  store double %i.ef, ptr %i.ej, align 8, !tbaa !8
  %i.ek = add nsw i64 %i.dy, -1
  %.093.i.prol = getelementptr inbounds nuw [8 x i8], ptr %.093108.i, i64 %i.aa ; 2 uses
  %.094.i.prol = getelementptr inbounds nuw i8, ptr %i.dp, i64 32 ; 2 uses
  %.095.i.prol = getelementptr inbounds nuw i8, ptr %.096131.i, i64 32 ; 2 uses
  %.098.i.prol = getelementptr inbounds nuw i8, ptr %i.dq, i64 32 ; 2 uses
  %.099.i.prol = getelementptr inbounds nuw i8, ptr %.0103128.i, i64 32 ; 2 uses
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.099123.i.unr = phi ptr [ %.099112.i, %.lr.ph.i.preheader ], [ %.099.i.prol, %.lr.ph.i.prol ]
  %.098122.i.unr = phi ptr [ %.098111.i, %.lr.ph.i.preheader ], [ %.098.i.prol, %.lr.ph.i.prol ]
  %.095121.i.unr = phi ptr [ %.095110.i, %.lr.ph.i.preheader ], [ %.095.i.prol, %.lr.ph.i.prol ]
  %.094120.i.unr = phi ptr [ %.094109.i, %.lr.ph.i.preheader ], [ %.094.i.prol, %.lr.ph.i.prol ]
  %.093119.i.unr = phi ptr [ %.093108.i, %.lr.ph.i.preheader ], [ %.093.i.prol, %.lr.ph.i.prol ]
  %.pn107118.i.unr = phi ptr [ %i.dp, %.lr.ph.i.preheader ], [ %.0.i.prol, %.lr.ph.i.prol ]
  %.pn106117.i.unr = phi ptr [ %i.dp, %.lr.ph.i.preheader ], [ %.094109.i, %.lr.ph.i.prol ]
  %.097.pn116.i.unr = phi ptr [ %.096131.i, %.lr.ph.i.preheader ], [ %.095110.i, %.lr.ph.i.prol ]
  %.pn115.i.unr = phi ptr [ %i.dq, %.lr.ph.i.preheader ], [ %.098111.i, %.lr.ph.i.prol ]
  %.0103.pn114.i.unr = phi ptr [ %.0103128.i, %.lr.ph.i.preheader ], [ %.099112.i, %.lr.ph.i.prol ]
  %.0102113.i.unr = phi i64 [ %i.dy, %.lr.ph.i.preheader ], [ %i.ek, %.lr.ph.i.prol ]
  %.093.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %.093.i.prol, %.lr.ph.i.prol ]
  %.094.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %.094.i.prol, %.lr.ph.i.prol ]
  %.095.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %.095.i.prol, %.lr.ph.i.prol ]
  %.098.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %.098.i.prol, %.lr.ph.i.prol ]
  %.099.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %.099.i.prol, %.lr.ph.i.prol ]
  %.mask = and i64 %11, -2
  %i.el = icmp eq i64 %.mask, 2
  br i1 %i.el, label %.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.099123.i = phi ptr [ %.099.i.1, %.lr.ph.i ], [ %.099123.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %.098122.i = phi ptr [ %.098.i.1, %.lr.ph.i ], [ %.098122.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %.095121.i = phi ptr [ %.095.i.1, %.lr.ph.i ], [ %.095121.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %.094120.i = phi ptr [ %.094.i.1, %.lr.ph.i ], [ %.094120.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %.093119.i = phi ptr [ %.093.i.1, %.lr.ph.i ], [ %.093119.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %.pn107118.i = phi ptr [ %.0.i.1, %.lr.ph.i ], [ %.pn107118.i.unr, %.lr.ph.i.prol.loopexit ]
  %.pn106117.i = phi ptr [ %.094.i, %.lr.ph.i ], [ %.pn106117.i.unr, %.lr.ph.i.prol.loopexit ]
  %.097.pn116.i = phi ptr [ %.095.i, %.lr.ph.i ], [ %.097.pn116.i.unr, %.lr.ph.i.prol.loopexit ]
  %.pn115.i = phi ptr [ %.098.i, %.lr.ph.i ], [ %.pn115.i.unr, %.lr.ph.i.prol.loopexit ]
  %.0103.pn114.i = phi ptr [ %.099.i, %.lr.ph.i ], [ %.0103.pn114.i.unr, %.lr.ph.i.prol.loopexit ]
  %.0102113.i = phi i64 [ %i.fg, %.lr.ph.i ], [ %.0102113.i.unr, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %.0.i = getelementptr inbounds nuw [8 x i8], ptr %.pn107118.i, i64 %i.aa ; 3 uses
  %i.em = load double, ptr %.099123.i, align 8, !tbaa !8 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.0103.pn114.i, i64 24
  %i.eo = load double, ptr %i.en, align 8, !tbaa !8 ; 2 uses
  %i.ep = load double, ptr %.098122.i, align 8, !tbaa !8 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.pn115.i, i64 24
  %i.er = load double, ptr %i.eq, align 8, !tbaa !8 ; 2 uses
  store double %i.em, ptr %.095121.i, align 8, !tbaa !8
  %i.es = getelementptr inbounds nuw i8, ptr %.097.pn116.i, i64 24
  store double %i.eo, ptr %i.es, align 8, !tbaa !8
  store double %i.ep, ptr %.094120.i, align 8, !tbaa !8
  %i.et = getelementptr inbounds nuw i8, ptr %.pn106117.i, i64 24
  store double %i.er, ptr %i.et, align 8, !tbaa !8
  store double %i.em, ptr %.093119.i, align 8, !tbaa !8
  %i.eu = getelementptr inbounds nuw i8, ptr %.093119.i, i64 8
  store double %i.ep, ptr %i.eu, align 8, !tbaa !8
  store double %i.eo, ptr %.0.i, align 8, !tbaa !8
  %i.ev = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  store double %i.er, ptr %i.ev, align 8, !tbaa !8
  %.093.i = getelementptr inbounds nuw [8 x i8], ptr %.093119.i, i64 %i.aa ; 3 uses
  %.094.i = getelementptr inbounds nuw i8, ptr %.094120.i, i64 16 ; 2 uses
  %.095.i = getelementptr inbounds nuw i8, ptr %.095121.i, i64 16 ; 2 uses
  %.098.i = getelementptr inbounds nuw i8, ptr %.098122.i, i64 16 ; 2 uses
  %.099.i = getelementptr inbounds nuw i8, ptr %.099123.i, i64 16 ; 2 uses
  %.0.i.1 = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.aa ; 3 uses
  %i.ew = load double, ptr %.099.i, align 8, !tbaa !8 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.099123.i, i64 24
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !8 ; 2 uses
  %i.ez = load double, ptr %.098.i, align 8, !tbaa !8 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.098122.i, i64 24
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !8 ; 2 uses
  store double %i.ew, ptr %.095.i, align 8, !tbaa !8
  %i.fc = getelementptr inbounds nuw i8, ptr %.095121.i, i64 24
  store double %i.ey, ptr %i.fc, align 8, !tbaa !8
  store double %i.ez, ptr %.094.i, align 8, !tbaa !8
  %i.fd = getelementptr inbounds nuw i8, ptr %.094120.i, i64 24
  store double %i.fb, ptr %i.fd, align 8, !tbaa !8
  store double %i.ew, ptr %.093.i, align 8, !tbaa !8
  %i.fe = getelementptr inbounds nuw i8, ptr %.093.i, i64 8
  store double %i.ez, ptr %i.fe, align 8, !tbaa !8
  store double %i.ey, ptr %.0.i.1, align 8, !tbaa !8
  %i.ff = getelementptr inbounds nuw i8, ptr %.0.i.1, i64 8
  store double %i.fb, ptr %i.ff, align 8, !tbaa !8
  %i.fg = add nsw i64 %.0102113.i, -2
  %.093.i.1 = getelementptr inbounds nuw [8 x i8], ptr %.093.i, i64 %i.aa ; 2 uses
  %.094.i.1 = getelementptr inbounds nuw i8, ptr %.094120.i, i64 32 ; 2 uses
  %.095.i.1 = getelementptr inbounds nuw i8, ptr %.095121.i, i64 32 ; 2 uses
  %.098.i.1 = getelementptr inbounds nuw i8, ptr %.098122.i, i64 32 ; 2 uses
  %.099.i.1 = getelementptr inbounds nuw i8, ptr %.099123.i, i64 32 ; 2 uses
  %i.fh = icmp sgt i64 %.0102113.i, 2
  br i1 %i.fh, label %.lr.ph.i, label %.thread.i, !llvm.loop !10

.thread.i:                                        ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.j
  %.093.lcssa.i = phi ptr [ %.093108.i, %bb.j ], [ %.093.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.093.i.1, %.lr.ph.i ] ; 2 uses
  %.094.lcssa.i = phi ptr [ %.094109.i, %bb.j ], [ %.094.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.094.i.1, %.lr.ph.i ]
  %.095.lcssa.i = phi ptr [ %.095110.i, %bb.j ], [ %.095.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.095.i.1, %.lr.ph.i ]
  %.098.lcssa.i = phi ptr [ %.098111.i, %bb.j ], [ %.098.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.098.i.1, %.lr.ph.i ]
  %.099.lcssa.i = phi ptr [ %.099112.i, %bb.j ], [ %.099.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.099.i.1, %.lr.ph.i ]
  %i.fi = load double, ptr %.099.lcssa.i, align 8, !tbaa !8 ; 2 uses
  %i.fj = load double, ptr %.098.lcssa.i, align 8, !tbaa !8 ; 2 uses
  store double %i.fi, ptr %.095.lcssa.i, align 8, !tbaa !8
  store double %i.fj, ptr %.094.lcssa.i, align 8, !tbaa !8
  store double %i.fi, ptr %.093.lcssa.i, align 8, !tbaa !8
  %i.fk = getelementptr inbounds nuw i8, ptr %.093.lcssa.i, i64 8
  store double %i.fj, ptr %i.fk, align 8, !tbaa !8
  br label %bb.m

bb.k:                                             ; preds = %.lr.ph133.split.i
  %i.fl = icmp eq i64 %i.dn, 1
  br i1 %i.fl, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.fm = load double, ptr %.0103128.i, align 8, !tbaa !8
  store double %i.fm, ptr %.096131.i, align 8, !tbaa !8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %.thread.i
  %i.fn = add nuw nsw i64 %.0101129.i, 2          ; 2 uses
  %i.fo = icmp slt i64 %i.fn, %i.w
  %indvar.next121 = add i64 %indvar120, 1
  br i1 %i.fo, label %.lr.ph133.split.i, label %SYMCOPY_L.exit, !llvm.loop !12

SYMCOPY_L.exit:                                   ; preds = %bb.m, %._crit_edge.us.i, %._crit_edge.us.i.1, %._crit_edge.us.i.2, %.lr.ph.us.i.3, %bb.i
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %.090, i64 %.091101 ; 2 uses
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %.089, i64 %.091101 ; 2 uses
  %i.fr = tail call i32 @dgemv_n(i64 noundef %i.w, i64 noundef %i.w, i64 noundef 0, double noundef %2, ptr noundef %9, i64 noundef %i.w, ptr noundef %i.fp, i64 noundef 1, ptr noundef %i.fq, i64 noundef 1, ptr noundef %.1) #3 ; 0 uses
  %i.fs = sub nsw i64 %0, %.091101                ; 2 uses
  %i.ft = icmp sgt i64 %i.fs, %i.w
  br i1 %i.ft, label %bb.n, label %bb.o

bb.n:                                             ; preds = %SYMCOPY_L.exit
  %i.fu = sub nsw i64 %i.fs, %i.w                 ; 2 uses
  %i.fv = add nsw i64 %i.w, %.091101              ; 3 uses
  %i.fw = getelementptr inbounds [8 x i8], ptr %3, i64 %i.fv
  %i.fx = getelementptr inbounds [8 x i8], ptr %i.fw, i64 %i.x ; 2 uses
  %i.fy = getelementptr inbounds [8 x i8], ptr %.090, i64 %i.fv
  %i.fz = tail call i32 @dgemv_t(i64 noundef %i.fu, i64 noundef %i.w, i64 noundef 0, double noundef %2, ptr noundef %i.fx, i64 noundef %4, ptr noundef %i.fy, i64 noundef 1, ptr noundef %i.fq, i64 noundef 1, ptr noundef %.1) #3 ; 0 uses
  %i.ga = getelementptr inbounds [8 x i8], ptr %.089, i64 %i.fv
  %i.gb = tail call i32 @dgemv_n(i64 noundef %i.fu, i64 noundef %i.w, i64 noundef 0, double noundef %2, ptr noundef %i.fx, i64 noundef %4, ptr noundef %i.fp, i64 noundef 1, ptr noundef %i.ga, i64 noundef 1, ptr noundef %.1) #3 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %SYMCOPY_L.exit, %bb.n
  %i.gc = add nuw nsw i64 %.091101, 8             ; 2 uses
  %i.gd = icmp slt i64 %i.gc, %1
  %indvar.next = add i64 %indvar, 1
  br i1 %i.gd, label %.lr.ph133.i, label %._crit_edge, !llvm.loop !13

._crit_edge:                                      ; preds = %bb.o, %bb.e
  br i1 %.not, label %bb.q, label %bb.p

bb.p:                                             ; preds = %._crit_edge
  %i.ge = tail call i32 @dcopy_k(i64 noundef %0, ptr noundef %.089, i64 noundef 1, ptr noundef %7, i64 noundef %8) #3 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %._crit_edge
  ret i32 0
}

declare i32 @dcopy_k(i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @dgemv_n(i64 noundef, i64 noundef, i64 noundef, double noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @dgemv_t(i64 noundef, i64 noundef, i64 noundef, double noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"double", !6, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
!13 = distinct !{!13, !11}
end_hunk_0
