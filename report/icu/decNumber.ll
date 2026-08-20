inline.NumInlined: 181
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 13
begin_hunk_0_@uprv_decNumberFMA_78:bb.a

bb.ac:                                            ; preds = %bb.ab
  call void @uprv_free_78(ptr noundef nonnull %.029)
  br label %.thread

.thread:                                          ; preds = %bb.ac, %bb.ab
  %.pr = load i32, ptr %i.a, align 4, !tbaa !16   ; 2 uses
  %.not45 = icmp eq i32 %.pr, 0
  br i1 %.not45, label %bb.af, label %.thread.thread

.thread.thread:                                   ; preds = %bb.s, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.e, %bb.d, %bb.c, %bb.b, %.thread
  %i.cm = phi i32 [ %.pr, %.thread ], [ 128, %bb.g ], [ 128, %bb.m ], [ 64, %bb.b ], [ 64, %bb.d ], [ 64, %bb.c ], [ 128, %bb.e ], [ 64, %bb.h ], [ 64, %bb.j ], [ 64, %bb.i ], [ 128, %bb.k ], [ 64, %bb.n ], [ 64, %bb.p ], [ 64, %bb.o ], [ 128, %bb.q ], [ 128, %bb.s ] ; 5 uses
  %i.cn = and i32 %i.cm, 221
  %.not.i = icmp eq i32 %i.cn, 0
  br i1 %.not.i, label %_ZL9decStatusP9decNumberjP10decContext.exit, label %bb.ad

bb.ad:                                            ; preds = %.thread.thread
  %i.co = and i32 %i.cm, 1073741824
  %.not6.i = icmp eq i32 %i.co, 0
  br i1 %.not6.i, label %.thread72, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cp = and i32 %i.cm, -1073741825
  br label %_ZL9decStatusP9decNumberjP10decContext.exit

.thread72:                                        ; preds = %bb.v, %bb.ad
  %i.cq = phi i32 [ %i.cm, %bb.ad ], [ 16, %bb.v ]
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.cs, align 4, !tbaa !10
  store i32 1, ptr %0, align 4, !tbaa !11
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 0, ptr %i.ct, align 1, !tbaa !12
  store i8 32, ptr %i.cr, align 4, !tbaa !8
  br label %_ZL9decStatusP9decNumberjP10decContext.exit

_ZL9decStatusP9decNumberjP10decContext.exit:      ; preds = %.thread.thread, %bb.ae, %.thread72
  %.0.i = phi i32 [ %i.cp, %bb.ae ], [ %i.cq, %.thread72 ], [ %i.cm, %.thread.thread ]
  %i.cu = call ptr @uprv_decContextSetStatus_78(ptr noundef nonnull %4, i32 noundef %.0.i) ; 0 uses
  br label %bb.af

bb.af:                                            ; preds = %_ZL9decStatusP9decNumberjP10decContext.exit, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret ptr %0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define internal fastcc noundef ptr @_ZL13decMultiplyOpP9decNumberPKS_S2_P10decContextPj(ptr noundef returned %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly captures(address) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef nonnull captures(none) %4) unnamed_addr #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca [145 x i8], align 16              ; 3 uses
  %i.c = alloca [10 x i32], align 16              ; 3 uses
  %i.d = alloca [10 x i32], align 16              ; 3 uses
  %i.e = alloca [20 x i64], align 16              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i32 0, ptr %i.a, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #15
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i8, ptr %i.f, align 4, !tbaa !8     ; 3 uses
  %i.h = zext i8 %i.g to i32                      ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i8, ptr %i.i, align 4, !tbaa !8     ; 3 uses
  %i.k = xor i8 %i.j, %i.g
  %i.l = and i8 %i.k, -128                        ; 2 uses
  %i.m = or i8 %i.j, %i.g                         ; 2 uses
  %i.n = and i8 %i.m, 112
  %.not = icmp eq i8 %i.n, 0
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = and i8 %i.m, 48
  %.not299 = icmp eq i8 %i.o, 0
  br i1 %.not299, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = tail call fastcc noundef ptr @_ZL7decNaNsP9decNumberPKS_S2_P10decContextPj(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4) ; 0 uses
  br label %bb.ax

bb.d:                                             ; preds = %bb.b
  %i.q = and i32 %i.h, 64
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.t = load i8, ptr %i.s, align 1, !tbaa !12
  %i.u = icmp eq i8 %i.t, 0
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = load i32, ptr %1, align 4, !tbaa !11
  %i.w = icmp eq i32 %i.v, 1
  %i.x = and i32 %i.h, 48
  %i.y = icmp eq i32 %i.x, 0
  %or.cond301 = and i1 %i.y, %i.w
  br i1 %or.cond301, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.z = zext i8 %i.j to i32                      ; 2 uses
  %i.aa = and i32 %i.z, 64
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 9
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !12
  %i.ae = icmp eq i8 %i.ad, 0
  br i1 %i.ae, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.af = load i32, ptr %2, align 4, !tbaa !11
  %i.ag = icmp eq i32 %i.af, 1
  %i.ah = and i32 %i.z, 48
  %i.ai = icmp eq i32 %i.ah, 0
  %or.cond303 = and i1 %i.ai, %i.ag
  br i1 %or.cond303, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.f
  %i.aj = load i32, ptr %4, align 4, !tbaa !16
  %i.ak = or i32 %i.aj, 128
  store i32 %i.ak, ptr %4, align 4, !tbaa !16
  br label %bb.ax

bb.k:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.am, align 4, !tbaa !10
  store i32 1, ptr %0, align 4, !tbaa !11
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 0, ptr %i.an, align 1, !tbaa !12
  %i.ao = or disjoint i8 %i.l, 64
  store i8 %i.ao, ptr %i.al, align 4, !tbaa !8
  br label %bb.ax

bb.l:                                             ; preds = %bb.a
  %i.ap = load i32, ptr %1, align 4, !tbaa !11    ; 3 uses
  %i.aq = load i32, ptr %2, align 4, !tbaa !11    ; 3 uses
  %i.ar = icmp slt i32 %i.ap, %i.aq               ; 2 uses
  %spec.select = select i1 %i.ar, ptr %1, ptr %2  ; 5 uses
  %spec.select304 = select i1 %i.ar, ptr %2, ptr %1 ; 5 uses
  %i.as = tail call i32 @llvm.smin.i32(i32 %i.ap, i32 %i.aq) ; 4 uses
  %i.at = icmp sgt i32 %i.as, 2
  %i.au = tail call i32 @llvm.smax.i32(i32 %i.ap, i32 %i.aq) ; 6 uses
  br i1 %i.at, label %bb.m, label %bb.ae

bb.m:                                             ; preds = %bb.l
  %i.av = add nsw i32 %i.au, 8
  %i.aw = sdiv i32 %i.av, 9                       ; 2 uses
  %i.ax = add nuw i32 %i.as, 8
  %i.ay = udiv i32 %i.ax, 9                       ; 2 uses
  %i.az = add nsw i32 %i.aw, %i.ay                ; 5 uses
  %i.ba = icmp sgt i32 %i.au, 90
  br i1 %i.ba, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bb = shl nuw nsw i32 %i.aw, 2
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.bc) #16 ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.0255 = phi ptr [ %i.bd, %bb.n ], [ %i.c, %bb.m ] ; 8 uses
  %.0252 = phi ptr [ %i.bd, %bb.n ], [ null, %bb.m ] ; 2 uses
  %i.be = icmp samesign ugt i32 %i.as, 90
  br i1 %i.be, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bf = shl nuw nsw i32 %i.ay, 2
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.bg) #16 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.0251 = phi ptr [ %i.bh, %bb.p ], [ %i.d, %bb.o ] ; 6 uses
  %.0248 = phi ptr [ %i.bh, %bb.p ], [ null, %bb.o ] ; 2 uses
  %i.bi = sext i32 %i.az to i64
  %i.bj = add nsw i32 %i.az, 7
  %i.bk = sdiv i32 %i.bj, 8                       ; 2 uses
  %i.bl = add nsw i32 %i.bk, %i.az
  %i.bm = shl i32 %i.bl, 3                        ; 2 uses
  %i.bn = icmp sgt i32 %i.bm, 160
  br i1 %i.bn, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bo = zext nneg i32 %i.bm to i64
  %i.bp = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.bo) #16 ; 2 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.0258 = phi ptr [ %i.bp, %bb.r ], [ null, %bb.q ] ; 2 uses
  %.0247 = phi ptr [ %i.bp, %bb.r ], [ %i.e, %bb.q ] ; 7 uses
  %.0247390 = ptrtoaddr ptr %.0247 to i64         ; 2 uses
  %i.bq = icmp eq ptr %.0255, null
  %i.br = icmp eq ptr %.0251, null
  %or.cond = select i1 %i.bq, i1 true, i1 %i.br
  %i.bs = icmp eq ptr %.0247, null
  %or.cond3 = select i1 %or.cond, i1 true, i1 %i.bs
  br i1 %or.cond3, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bt = load i32, ptr %4, align 4, !tbaa !16
  %i.bu = or i32 %i.bt, 16
  store i32 %i.bu, ptr %4, align 4, !tbaa !16
  br label %bb.ar

bb.u:                                             ; preds = %bb.s
  %i.bv = sext i32 %i.bk to i64                   ; 2 uses
  %i.bw = getelementptr [8 x i8], ptr %.0247, i64 %i.bv ; 5 uses
  %i.bx = load i32, ptr %spec.select304, align 4, !tbaa !11 ; 2 uses
  %i.by = icmp sgt i32 %i.bx, 0
  br i1 %i.by, label %.lr.ph332.preheader, label %._crit_edge

.lr.ph332.preheader:                              ; preds = %bb.u
  %i.bz = getelementptr inbounds nuw i8, ptr %spec.select304, i64 9
  br label %.lr.ph332

.lr.ph332:                                        ; preds = %.lr.ph332.preheader, %bb.w
  %.0232331 = phi ptr [ %.lcssa433, %bb.w ], [ %i.bz, %.lr.ph332.preheader ] ; 2 uses
  %.0236330 = phi i32 [ %.lcssa432, %bb.w ], [ %i.bx, %.lr.ph332.preheader ] ; 3 uses
  %.0245329 = phi ptr [ %i.dd, %bb.w ], [ %.0255, %.lr.ph332.preheader ] ; 5 uses
  store i32 0, ptr %.0245329, align 4, !tbaa !16
  %i.ca = add nsw i32 %.0236330, -1               ; 2 uses
  %umin = call i32 @llvm.umin.i32(i32 %i.ca, i32 8)
  %i.cb = add nuw nsw i32 %umin, 1                ; 2 uses
  %wide.trip.count = zext nneg i32 %i.cb to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.cc = icmp eq i32 %i.ca, 0
  br i1 %i.cc, label %.epil.preheader, label %.lr.ph332.new

.lr.ph332.new:                                    ; preds = %.lr.ph332
  %unroll_iter = and i64 %wide.trip.count, 30
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %.lr.ph332.new
  %indvars.iv381 = phi i64 [ 0, %.lr.ph332.new ], [ %indvars.iv.next382.1, %bb.v ] ; 3 uses
  %i.cd = phi i32 [ 0, %.lr.ph332.new ], [ %i.cr, %bb.v ]
  %.1233327 = phi ptr [ %.0232331, %.lr.ph332.new ], [ %i.cs, %bb.v ] ; 3 uses
  %.1237326 = phi i32 [ %.0236330, %.lr.ph332.new ], [ %i.ct, %bb.v ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph332.new ], [ %niter.next.1, %bb.v ]
  %i.ce = load i8, ptr %.1233327, align 1, !tbaa !12
  %i.cf = zext i8 %i.ce to i32
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr @_ZL9DECPOWERS, i64 %indvars.iv381
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !16
  %i.ci = mul i32 %i.ch, %i.cf
  %i.cj = add i32 %i.cd, %i.ci                    ; 2 uses
  store i32 %i.cj, ptr %.0245329, align 4, !tbaa !16
  %i.ck = getelementptr inbounds nuw i8, ptr %.1233327, i64 1
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !12
  %i.cm = zext i8 %i.cl to i32
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr @_ZL9DECPOWERS, i64 %indvars.iv381
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !16
  %i.cq = mul i32 %i.cp, %i.cm
  %i.cr = add i32 %i.cj, %i.cq                    ; 3 uses
  store i32 %i.cr, ptr %.0245329, align 4, !tbaa !16
  %indvars.iv.next382.1 = add nuw nsw i64 %indvars.iv381, 2 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.1233327, i64 2 ; 3 uses
  %i.ct = add nsw i32 %.1237326, -2               ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.v, !llvm.loop !88

.unr-lcssa:                                       ; preds = %bb.v
  %i.cu = add nsw i32 %.1237326, -1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.w, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.lr.ph332
  %indvars.iv381.epil.init = phi i64 [ 0, %.lr.ph332 ], [ %indvars.iv.next382.1, %.unr-lcssa ]
  %.epil.init = phi i32 [ 0, %.lr.ph332 ], [ %i.cr, %.unr-lcssa ]
  %.1233327.epil.init = phi ptr [ %.0232331, %.lr.ph332 ], [ %i.cs, %.unr-lcssa ] ; 2 uses
  %.1237326.epil.init = phi i32 [ %.0236330, %.lr.ph332 ], [ %i.ct, %.unr-lcssa ] ; 2 uses
  %lcmp.mod439 = trunc i32 %i.cb to i1
  call void @llvm.assume(i1 %lcmp.mod439)
  %i.cv = load i8, ptr %.1233327.epil.init, align 1, !tbaa !12
  %i.cw = zext i8 %i.cv to i32
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr @_ZL9DECPOWERS, i64 %indvars.iv381.epil.init
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !16
  %i.cz = mul i32 %i.cy, %i.cw
  %i.da = add i32 %.epil.init, %i.cz
  store i32 %i.da, ptr %.0245329, align 4, !tbaa !16
  %i.db = getelementptr inbounds nuw i8, ptr %.1233327.epil.init, i64 1
  %i.dc = add nsw i32 %.1237326.epil.init, -1
  br label %bb.w

bb.w:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %.1237326.lcssa = phi i32 [ %i.cu, %.unr-lcssa ], [ %.1237326.epil.init, %.epil.preheader ]
  %.lcssa433 = phi ptr [ %i.cs, %.unr-lcssa ], [ %i.db, %.epil.preheader ]
  %.lcssa432 = phi i32 [ %i.ct, %.unr-lcssa ], [ %i.dc, %.epil.preheader ]
  %i.dd = getelementptr inbounds nuw i8, ptr %.0245329, i64 4 ; 2 uses
  %i.de = icmp sgt i32 %.1237326.lcssa, 1
  br i1 %i.de, label %.lr.ph332, label %._crit_edge, !llvm.loop !89

._crit_edge:                                      ; preds = %bb.w, %bb.u
  %.0245.lcssa = phi ptr [ %.0255, %bb.u ], [ %i.dd, %bb.w ] ; 2 uses
  %i.df = getelementptr inbounds i8, ptr %.0245.lcssa, i64 -4 ; 2 uses
  %i.dg = load i32, ptr %spec.select, align 4, !tbaa !11 ; 2 uses
  %i.dh = icmp sgt i32 %i.dg, 0
  br i1 %i.dh, label %.lr.ph341.preheader, label %._crit_edge342

.lr.ph341.preheader:                              ; preds = %._crit_edge
  %i.di = getelementptr inbounds nuw i8, ptr %spec.select, i64 9
  br label %.lr.ph341

.lr.ph341:                                        ; preds = %.lr.ph341.preheader, %bb.y
  %.2234339 = phi ptr [ %.lcssa430, %bb.y ], [ %i.di, %.lr.ph341.preheader ] ; 2 uses
  %.2238338 = phi i32 [ %.lcssa429, %bb.y ], [ %i.dg, %.lr.ph341.preheader ] ; 3 uses
  %.0243337 = phi ptr [ %i.em, %bb.y ], [ %.0251, %.lr.ph341.preheader ] ; 5 uses
  store i32 0, ptr %.0243337, align 4, !tbaa !16
  %i.dj = add nsw i32 %.2238338, -1               ; 2 uses
  %umin387 = call i32 @llvm.umin.i32(i32 %i.dj, i32 8)
  %i.dk = add nuw nsw i32 %umin387, 1             ; 2 uses
  %wide.trip.count388 = zext nneg i32 %i.dk to i64 ; 2 uses
  %xtraiter443 = and i64 %wide.trip.count388, 1
  %i.dl = icmp eq i32 %i.dj, 0
  br i1 %i.dl, label %.epil.preheader441, label %.lr.ph341.new

.lr.ph341.new:                                    ; preds = %.lr.ph341
  %unroll_iter452 = and i64 %wide.trip.count388, 30
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %.lr.ph341.new
  %indvars.iv384 = phi i64 [ 0, %.lr.ph341.new ], [ %indvars.iv.next385.1, %bb.x ] ; 3 uses
  %i.dm = phi i32 [ 0, %.lr.ph341.new ], [ %i.ea, %bb.x ]
  %.3235335 = phi ptr [ %.2234339, %.lr.ph341.new ], [ %i.eb, %bb.x ] ; 3 uses
  %.3239334 = phi i32 [ %.2238338, %.lr.ph341.new ], [ %i.ec, %bb.x ] ; 2 uses
  %niter453 = phi i64 [ 0, %.lr.ph341.new ], [ %niter453.next.1, %bb.x ]
  %i.dn = load i8, ptr %.3235335, align 1, !tbaa !12
  %i.do = zext i8 %i.dn to i32
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr @_ZL9DECPOWERS, i64 %indvars.iv384
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !16
  %i.dr = mul i32 %i.dq, %i.do
  %i.ds = add i32 %i.dm, %i.dr                    ; 2 uses
  store i32 %i.ds, ptr %.0243337, align 4, !tbaa !16
  %i.dt = getelementptr inbounds nuw i8, ptr %.3235335, i64 1
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !12
  %i.dv = zext i8 %i.du to i32
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr @_ZL9DECPOWERS, i64 %indvars.iv384
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 4
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !16
  %i.dz = mul i32 %i.dy, %i.dv
  %i.ea = add i32 %i.ds, %i.dz                    ; 3 uses
  store i32 %i.ea, ptr %.0243337, align 4, !tbaa !16
  %indvars.iv.next385.1 = add nuw nsw i64 %indvars.iv384, 2 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.3235335, i64 2 ; 3 uses
  %i.ec = add nsw i32 %.3239334, -2               ; 3 uses
  %niter453.next.1 = add i64 %niter453, 2         ; 2 uses
  %niter453.ncmp.1 = icmp eq i64 %niter453.next.1, %unroll_iter452
  br i1 %niter453.ncmp.1, label %.unr-lcssa440, label %bb.x, !llvm.loop !90

.unr-lcssa440:                                    ; preds = %bb.x
  %i.ed = add nsw i32 %.3239334, -1
  %lcmp.mod446.not = icmp eq i64 %xtraiter443, 0
  br i1 %lcmp.mod446.not, label %bb.y, label %.epil.preheader441

.epil.preheader441:                               ; preds = %.unr-lcssa440, %.lr.ph341
  %indvars.iv384.epil.init = phi i64 [ 0, %.lr.ph341 ], [ %indvars.iv.next385.1, %.unr-lcssa440 ]
  %.epil.init445 = phi i32 [ 0, %.lr.ph341 ], [ %i.ea, %.unr-lcssa440 ]
  %.3235335.epil.init = phi ptr [ %.2234339, %.lr.ph341 ], [ %i.eb, %.unr-lcssa440 ] ; 2 uses
  %.3239334.epil.init = phi i32 [ %.2238338, %.lr.ph341 ], [ %i.ec, %.unr-lcssa440 ] ; 2 uses
  %lcmp.mod451 = trunc i32 %i.dk to i1
  call void @llvm.assume(i1 %lcmp.mod451)
  %i.ee = load i8, ptr %.3235335.epil.init, align 1, !tbaa !12
  %i.ef = zext i8 %i.ee to i32
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr @_ZL9DECPOWERS, i64 %indvars.iv384.epil.init
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !16
  %i.ei = mul i32 %i.eh, %i.ef
  %i.ej = add i32 %.epil.init445, %i.ei
  store i32 %i.ej, ptr %.0243337, align 4, !tbaa !16
  %i.ek = getelementptr inbounds nuw i8, ptr %.3235335.epil.init, i64 1
  %i.el = add nsw i32 %.3239334.epil.init, -1
  br label %bb.y

bb.y:                                             ; preds = %.unr-lcssa440, %.epil.preheader441
  %.3239334.lcssa = phi i32 [ %i.ed, %.unr-lcssa440 ], [ %.3239334.epil.init, %.epil.preheader441 ]
  %.lcssa430 = phi ptr [ %i.eb, %.unr-lcssa440 ], [ %i.ek, %.epil.preheader441 ]
  %.lcssa429 = phi i32 [ %i.ec, %.unr-lcssa440 ], [ %i.el, %.epil.preheader441 ]
  %i.em = getelementptr inbounds nuw i8, ptr %.0243337, i64 4 ; 2 uses
  %i.en = icmp sgt i32 %.3239334.lcssa, 1
  br i1 %i.en, label %.lr.ph341, label %._crit_edge342, !llvm.loop !91

._crit_edge342:                                   ; preds = %bb.y, %._crit_edge
  %.0243.lcssa = phi ptr [ %.0251, %._crit_edge ], [ %i.em, %bb.y ]
  %i.eo = getelementptr inbounds i8, ptr %.0243.lcssa, i64 -4 ; 3 uses
  %.idx = shl nsw i64 %i.bi, 3                    ; 2 uses
  %i.ep = getelementptr inbounds i8, ptr %i.bw, i64 %.idx ; 2 uses
  %i.eq = icmp sgt i32 %i.az, 0                   ; 2 uses
  br i1 %i.eq, label %.lr.ph346.preheader, label %.preheader321

.lr.ph346.preheader:                              ; preds = %._crit_edge342
  %i.er = shl nuw nsw i64 %i.bv, 3                ; 2 uses
  %i.es = add i64 %i.er, %.0247390                ; 2 uses
  %i.et = add i64 %i.es, %.idx
  %i.eu = add i64 %i.es, 8
  %umax = call i64 @llvm.umax.i64(i64 %i.et, i64 %i.eu)
  %i.ev = xor i64 %.0247390, -1
  %i.ew = add i64 %umax, %i.ev
  %i.ex = sub i64 %i.ew, %i.er
  %i.ey = and i64 %i.ex, -8
  %i.ez = add i64 %i.ey, 8
  call void @llvm.memset.p0.i64(ptr align 8 %i.bw, i8 0, i64 %i.ez, i1 false), !tbaa !92
  br label %.preheader321

.preheader321:                                    ; preds = %.lr.ph346.preheader, %._crit_edge342
  %.not290356 = icmp ugt ptr %.0251, %i.eo
  br i1 %.not290356, label %.preheader, label %.lr.ph359

.lr.ph359:                                        ; preds = %.preheader321
  %i.fa = ptrtoint ptr %.0251 to i64
  %.not291348 = icmp ugt ptr %.0255, %i.df
  %i.fb = icmp slt i32 %i.az, 1
  %i.fc = ptrtoaddr ptr %.0245.lcssa to i64
  %i.fd = add i64 %i.fc, -3
  %i.fe = ptrtoaddr ptr %.0255 to i64             ; 2 uses
  %i.ff = add i64 %i.fe, 4
  %i.fg = call i64 @llvm.umax.i64(i64 %i.fd, i64 %i.ff)
  %i.fh = xor i64 %i.fe, -1
  %i.fi = add i64 %i.fg, %i.fh                    ; 2 uses
  %i.fj = lshr i64 %i.fi, 2
  %i.fk = add nuw nsw i64 %i.fj, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.fi, 12
  %n.vec = and i64 %i.fk, 9223372036854775804     ; 4 uses
  %i.fl = shl i64 %n.vec, 3
  %i.fm = shl i64 %n.vec, 2
  %i.fn = getelementptr i8, ptr %.0255, i64 %i.fm
  %cmp.n = icmp eq i64 %i.fk, %n.vec
  br label %bb.z

.preheader:                                       ; preds = %.loopexit, %.preheader321
  br i1 %i.eq, label %.lr.ph365, label %._crit_edge366

bb.z:                                             ; preds = %.lr.ph359, %.loopexit
  %.0241358 = phi i32 [ 18, %.lr.ph359 ], [ %.1242, %.loopexit ] ; 2 uses
  %.1244357 = phi ptr [ %.0251, %.lr.ph359 ], [ %i.hh, %.loopexit ] ; 4 uses
  br i1 %.not291348, label %._crit_edge353, label %.lr.ph352

.lr.ph352:                                        ; preds = %bb.z
  %i.fo = ptrtoint ptr %.1244357 to i64
  %i.fp = sub i64 %i.fo, %i.fa
  %i.fq = ashr exact i64 %i.fp, 2
  %i.fr = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.fq ; 3 uses
  %i.fs = load i32, ptr %.1244357, align 4, !tbaa !16
  %i.ft = zext i32 %i.fs to i64                   ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph352
  %i.fu = getelementptr i8, ptr %i.fr, i64 %i.fl
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.ft, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.fv = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.fr, i64 %i.fv ; 3 uses
  %i.fw = shl i64 %index, 2
  %next.gep424 = getelementptr i8, ptr %.0255, i64 %i.fw ; 2 uses
  %i.fx = getelementptr i8, ptr %next.gep424, i64 8
  %wide.load = load <2 x i32>, ptr %next.gep424, align 4, !tbaa !16
  %wide.load425 = load <2 x i32>, ptr %i.fx, align 4, !tbaa !16
  %i.fy = zext <2 x i32> %wide.load to <2 x i64>
  %i.fz = zext <2 x i32> %wide.load425 to <2 x i64>
  %i.ga = mul nuw <2 x i64> %broadcast.splat, %i.fy
  %i.gb = mul nuw <2 x i64> %broadcast.splat, %i.fz
  %i.gc = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load426 = load <2 x i64>, ptr %next.gep, align 8, !tbaa !92
  %wide.load427 = load <2 x i64>, ptr %i.gc, align 8, !tbaa !92
  %i.gd = add <2 x i64> %i.ga, %wide.load426
  %i.ge = add <2 x i64> %i.gb, %wide.load427
  store <2 x i64> %i.gd, ptr %next.gep, align 8, !tbaa !92
  store <2 x i64> %i.ge, ptr %i.gc, align 8, !tbaa !92
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gf = icmp eq i64 %index.next, %n.vec
  br i1 %i.gf, label %middle.block, label %vector.body, !llvm.loop !94

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge353, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph352, %middle.block
  %.1228350.ph = phi ptr [ %i.fr, %.lr.ph352 ], [ %i.fu, %middle.block ]
  %.1246349.ph = phi ptr [ %.0255, %.lr.ph352 ], [ %i.fn, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.1228350 = phi ptr [ %i.gm, %scalar.ph ], [ %.1228350.ph, %scalar.ph.preheader ] ; 3 uses
  %.1246349 = phi ptr [ %i.gl, %scalar.ph ], [ %.1246349.ph, %scalar.ph.preheader ] ; 2 uses
  %i.gg = load i32, ptr %.1246349, align 4, !tbaa !16
  %i.gh = zext i32 %i.gg to i64
  %i.gi = mul nuw i64 %i.ft, %i.gh
  %i.gj = load i64, ptr %.1228350, align 8, !tbaa !92
  %i.gk = add i64 %i.gi, %i.gj
  store i64 %i.gk, ptr %.1228350, align 8, !tbaa !92
  %i.gl = getelementptr inbounds nuw i8, ptr %.1246349, i64 4 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.1228350, i64 8
  %.not291 = icmp ugt ptr %i.gl, %i.df
  br i1 %.not291, label %._crit_edge353, label %scalar.ph, !llvm.loop !95

._crit_edge353:                                   ; preds = %scalar.ph, %middle.block, %bb.z
  %i.gn = icmp sgt i32 %.0241358, 1
  %i.go = add nsw i32 %.0241358, -1
  %.not292 = icmp ne ptr %.1244357, %i.eo
  %or.cond305.not371 = select i1 %i.gn, i1 %.not292, i1 false ; 2 uses
  %brmerge = select i1 %or.cond305.not371, i1 true, i1 %i.fb
  %.mux = select i1 %or.cond305.not371, i32 %i.go, i32 18
  br i1 %brmerge, label %.loopexit, label %.lr.ph355

.lr.ph355:                                        ; preds = %._crit_edge353, %bb.ad
  %.2229354 = phi ptr [ %i.hf, %bb.ad ], [ %i.bw, %._crit_edge353 ] ; 5 uses
  %i.gp = load i64, ptr %.2229354, align 8, !tbaa !92 ; 6 uses
  %i.gq = icmp ult i64 %i.gp, 1000000000
  br i1 %i.gq, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph355
  %i.gr = udiv i64 %i.gp, 1000000000              ; 2 uses
  %i.gs = icmp ult i64 %i.gp, 1000000000000000000
  br i1 %i.gs, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gt = udiv i64 %i.gp, 1000000000000000000     ; 3 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.2229354, i64 16 ; 2 uses
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !92
  %i.gw = add i64 %i.gv, %i.gt
  store i64 %i.gw, ptr %i.gu, align 8, !tbaa !92
  %.neg293 = mul i64 %i.gt, -1000000000000000000
  %i.gx = add i64 %.neg293, %i.gp
  %.neg294 = mul nuw nsw i64 %i.gt, 3294967296
  %i.gy = add nuw nsw i64 %.neg294, %i.gr
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  %i.gz = phi i64 [ %i.gx, %bb.ab ], [ %i.gp, %bb.aa ]
  %.0240.in = phi i64 [ %i.gy, %bb.ab ], [ %i.gr, %bb.aa ]
  %i.ha = and i64 %.0240.in, 4294967295           ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.2229354, i64 8 ; 2 uses
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !92
  %i.hd = add i64 %i.hc, %i.ha
  store i64 %i.hd, ptr %i.hb, align 8, !tbaa !92
  %.neg295 = mul nsw i64 %i.ha, -1000000000
  %i.he = add i64 %i.gz, %.neg295
  store i64 %i.he, ptr %.2229354, align 8, !tbaa !92
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph355, %bb.ac
  %i.hf = getelementptr inbounds nuw i8, ptr %.2229354, i64 8 ; 2 uses
  %i.hg = icmp ult ptr %i.hf, %i.ep
  br i1 %i.hg, label %.lr.ph355, label %.loopexit, !llvm.loop !96

.loopexit:                                        ; preds = %bb.ad, %._crit_edge353
  %.1242 = phi i32 [ %.mux, %._crit_edge353 ], [ 18, %bb.ad ]
  %i.hh = getelementptr inbounds nuw i8, ptr %.1244357, i64 4 ; 2 uses
  %.not290 = icmp ugt ptr %i.hh, %i.eo
  br i1 %.not290, label %.preheader, label %bb.z, !llvm.loop !97

.lr.ph365:                                        ; preds = %.preheader, %.lr.ph365
  %.3364 = phi ptr [ %i.is, %.lr.ph365 ], [ %i.bw, %.preheader ] ; 2 uses
  %.0230363 = phi ptr [ %i.ir, %.lr.ph365 ], [ %.0247, %.preheader ] ; 10 uses
  %i.hi = load i64, ptr %.3364, align 8, !tbaa !92
  %i.hj = trunc i64 %i.hi to i32                  ; 9 uses
  %i.hk = udiv i32 %i.hj, 10                      ; 2 uses
  %.neg = mul i32 %i.hk, 246
  %i.hl = add i32 %.neg, %i.hj
  %i.hm = trunc i32 %i.hl to i8
  store i8 %i.hm, ptr %.0230363, align 1, !tbaa !12
  %i.hn = getelementptr inbounds nuw i8, ptr %.0230363, i64 1
  %i.ho = udiv i32 %i.hj, 100                     ; 2 uses
  %.neg.1 = mul i32 %i.ho, 246
  %i.hp = add i32 %.neg.1, %i.hk
  %i.hq = trunc i32 %i.hp to i8
  store i8 %i.hq, ptr %i.hn, align 1, !tbaa !12
  %i.hr = getelementptr inbounds nuw i8, ptr %.0230363, i64 2
  %i.hs = udiv i32 %i.hj, 1000                    ; 2 uses
  %.neg.2 = mul nuw nsw i32 %i.hs, 246
  %i.ht = add nuw nsw i32 %.neg.2, %i.ho
  %i.hu = trunc i32 %i.ht to i8
  store i8 %i.hu, ptr %i.hr, align 1, !tbaa !12
  %i.hv = getelementptr inbounds nuw i8, ptr %.0230363, i64 3
  %i.hw = udiv i32 %i.hj, 10000                   ; 2 uses
  %.neg.3 = mul nuw nsw i32 %i.hw, 246
  %i.hx = add nuw nsw i32 %.neg.3, %i.hs
  %i.hy = trunc i32 %i.hx to i8
  store i8 %i.hy, ptr %i.hv, align 1, !tbaa !12
  %i.hz = getelementptr inbounds nuw i8, ptr %.0230363, i64 4
  %i.ia = udiv i32 %i.hj, 100000                  ; 2 uses
  %.neg.4 = mul nuw nsw i32 %i.ia, 246
  %i.ib = add nuw nsw i32 %.neg.4, %i.hw
  %i.ic = trunc i32 %i.ib to i8
  store i8 %i.ic, ptr %i.hz, align 1, !tbaa !12
  %i.id = getelementptr inbounds nuw i8, ptr %.0230363, i64 5
  %i.ie = udiv i32 %i.hj, 1000000                 ; 2 uses
  %.neg.5 = mul nuw nsw i32 %i.ie, 246
  %i.if = add nuw nsw i32 %.neg.5, %i.ia
  %i.ig = trunc i32 %i.if to i8
  store i8 %i.ig, ptr %i.id, align 1, !tbaa !12
  %i.ih = getelementptr inbounds nuw i8, ptr %.0230363, i64 6
  %i.ii = udiv i32 %i.hj, 10000000                ; 2 uses
end_hunk_0
