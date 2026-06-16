inline.NumInlined: 181
inline.NumDeleted: 7
begin_hunk_0_@uprv_decNumberFMA_78:bb.a
  %i.bw = phi i32 [ %i.bv, %bb.t ], [ %i.bo, %_ZL12decCheckMathPK9decNumberP10decContextPj.exit55.thread ] ; 2 uses
  %i.bx = icmp samesign ugt i32 %i.bw, 73
  br i1 %i.bx, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %narrow = add nuw i32 %i.bw, 11
  %i.by = zext i32 %narrow to i64
  %i.bz = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.by) #16 ; 3 uses
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %.thread72, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.029 = phi ptr [ null, %bb.u ], [ %i.bz, %bb.v ] ; 2 uses
  %.0 = phi ptr [ %6, %bb.u ], [ %i.bz, %bb.v ]   ; 2 uses
  %i.cb = call fastcc noundef ptr @_ZL13decMultiplyOpP9decNumberPKS_S2_P10decContextPj(ptr noundef nonnull %.0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %5, ptr noundef %i.a) ; 0 uses
  %i.cc = load i32, ptr %i.a, align 4             ; 2 uses
  %i.cd = and i32 %i.cc, 128
  %.not42 = icmp eq i32 %i.cd, 0
  br i1 %.not42, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ce = and i32 %i.cc, 1073741824
  %.not43 = icmp eq i32 %i.ce, 0
  br i1 %.not43, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.cg, align 4
  store i32 1, ptr %0, align 4
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 0, ptr %i.ch, align 1
  store i8 32, ptr %i.cf, align 4
  br label %bb.ab

bb.z:                                             ; preds = %bb.x
  %i.ci = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i8 0, ptr %i.ci, align 4
  %i.cj = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 0, ptr %i.cj, align 4
  store i32 1, ptr %7, align 4
  %i.ck = getelementptr inbounds nuw i8, ptr %7, i64 9
  store i8 0, ptr %i.ck, align 1
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.w
  %.030 = phi ptr [ %7, %bb.z ], [ %3, %bb.w ]
  %i.cl = call fastcc noundef ptr @_ZL8decAddOpP9decNumberPKS_S2_P10decContexthPj(ptr noundef %0, ptr noundef nonnull %.0, ptr noundef nonnull %.030, ptr noundef nonnull %4, i8 noundef zeroext 0, ptr noundef %i.a) ; 0 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.y
  %.not44 = icmp eq ptr %.029, null
  br i1 %.not44, label %.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @uprv_free_78(ptr noundef nonnull %.029) #15
  br label %.thread

.thread:                                          ; preds = %bb.ac, %bb.ab
  %.pr = load i32, ptr %i.a, align 4              ; 2 uses
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
  store i32 0, ptr %i.cs, align 4
  store i32 1, ptr %0, align 4
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 0, ptr %i.ct, align 1
  store i8 32, ptr %i.cr, align 4
  br label %_ZL9decStatusP9decNumberjP10decContext.exit

_ZL9decStatusP9decNumberjP10decContext.exit:      ; preds = %.thread.thread, %bb.ae, %.thread72
  %.0.i = phi i32 [ %i.cp, %bb.ae ], [ %i.cq, %.thread72 ], [ %i.cm, %.thread.thread ]
  %i.cu = call ptr @uprv_decContextSetStatus_78(ptr noundef nonnull %4, i32 noundef %.0.i) #15 ; 0 uses
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

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZL13decMultiplyOpP9decNumberPKS_S2_P10decContextPj(ptr noundef returned %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly captures(address) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef nonnull captures(none) %4) unnamed_addr #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca [145 x i8], align 16              ; 3 uses
  %i.c = alloca [10 x i32], align 16              ; 3 uses
  %i.d = alloca [10 x i32], align 16              ; 3 uses
  %i.e = alloca [20 x i64], align 16              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i32 0, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #15
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i8, ptr %i.f, align 4               ; 3 uses
  %i.h = zext i8 %i.g to i32                      ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i8, ptr %i.i, align 4               ; 3 uses
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
  %i.t = load i8, ptr %i.s, align 1
  %i.u = icmp eq i8 %i.t, 0
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = load i32, ptr %1, align 4
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
  %i.ad = load i8, ptr %i.ac, align 1
  %i.ae = icmp eq i8 %i.ad, 0
  br i1 %i.ae, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.af = load i32, ptr %2, align 4
  %i.ag = icmp eq i32 %i.af, 1
  %i.ah = and i32 %i.z, 48
  %i.ai = icmp eq i32 %i.ah, 0
  %or.cond303 = and i1 %i.ai, %i.ag
  br i1 %or.cond303, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.f
  %i.aj = load i32, ptr %4, align 4
  %i.ak = or i32 %i.aj, 128
  store i32 %i.ak, ptr %4, align 4
  br label %bb.ax

bb.k:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.am, align 4
  store i32 1, ptr %0, align 4
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 0, ptr %i.an, align 1
  %i.ao = or disjoint i8 %i.l, 64
  store i8 %i.ao, ptr %i.al, align 4
  br label %bb.ax

bb.l:                                             ; preds = %bb.a
  %i.ap = load i32, ptr %1, align 4               ; 3 uses
  %i.aq = load i32, ptr %2, align 4               ; 3 uses
  %i.ar = icmp slt i32 %i.ap, %i.aq               ; 2 uses
  %5 = tail call i32 @llvm.smin.i32(i32 %i.ap, i32 %i.aq) ; 4 uses
  %spec.select.a = select i1 %i.ar, ptr %1, ptr %2 ; 5 uses
  %i.as = tail call i32 @llvm.smax.i32(i32 %i.ap, i32 %i.aq) ; 6 uses
  %spec.select304 = select i1 %i.ar, ptr %2, ptr %1 ; 5 uses
  %6 = icmp sgt i32 %5, 2
  br i1 %6, label %bb.m, label %bb.ae

bb.m:                                             ; preds = %bb.l
  %i.at = add nsw i32 %i.as, 8
  %i.au = sdiv i32 %i.at, 9                       ; 2 uses
  %i.av = add nuw i32 %5, 8
  %i.aw = udiv i32 %i.av, 9                       ; 2 uses
  %i.ax = add nsw i32 %i.au, %i.aw                ; 5 uses
  %i.ay = icmp sgt i32 %i.as, 90
  br i1 %i.ay, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.az = shl nuw nsw i32 %i.au, 2
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.ba) #16 ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.0267 = phi ptr [ %i.bb, %bb.n ], [ %i.c, %bb.m ] ; 11 uses
  %.0264 = phi ptr [ %i.bb, %bb.n ], [ null, %bb.m ] ; 2 uses
  %.0267426 = ptrtoint ptr %.0267 to i64          ; 4 uses
  %i.bc = icmp samesign ugt i32 %5, 90
  br i1 %i.bc, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bd = shl nuw nsw i32 %i.aw, 2
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.be) #16 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.0263 = phi ptr [ %i.bf, %bb.p ], [ %i.d, %bb.o ] ; 8 uses
  %.0260 = phi ptr [ %i.bf, %bb.p ], [ null, %bb.o ] ; 2 uses
  %i.bg = sext i32 %i.ax to i64
  %i.bh = add nsw i32 %i.ax, 7
  %i.bi = sdiv i32 %i.bh, 8                       ; 2 uses
  %i.bj = add nsw i32 %i.bi, %i.ax
  %i.bk = shl i32 %i.bj, 3                        ; 2 uses
  %i.bl = icmp sgt i32 %i.bk, 160
  br i1 %i.bl, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bm = zext nneg i32 %i.bk to i64
  %i.bn = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.bm) #16 ; 2 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.0259 = phi ptr [ %i.bn, %bb.r ], [ %i.e, %bb.q ] ; 6 uses
  %.0249 = phi ptr [ %i.bn, %bb.r ], [ null, %bb.q ] ; 2 uses
  %.0259390 = ptrtoint ptr %.0259 to i64          ; 4 uses
  %i.bo = icmp eq ptr %.0267, null
  %i.bp = icmp eq ptr %.0263, null
  %or.cond = select i1 %i.bo, i1 true, i1 %i.bp
  %i.bq = icmp eq ptr %.0259, null
  %or.cond3 = select i1 %or.cond, i1 true, i1 %i.bq
  br i1 %or.cond3, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.br = load i32, ptr %4, align 4
  %i.bs = or i32 %i.br, 16
  store i32 %i.bs, ptr %4, align 4
  br label %bb.ar

bb.u:                                             ; preds = %bb.s
  %i.bt = sext i32 %i.bi to i64                   ; 3 uses
  %i.bu = getelementptr [8 x i8], ptr %.0259, i64 %i.bt ; 5 uses
  %i.bv = load i32, ptr %spec.select304, align 4  ; 2 uses
  %i.bw = icmp sgt i32 %i.bv, 0
  br i1 %i.bw, label %.lr.ph332.preheader, label %._crit_edge

.lr.ph332.preheader:                              ; preds = %bb.u
  %i.bx = getelementptr inbounds nuw i8, ptr %spec.select304, i64 9
  br label %.lr.ph332

.lr.ph332:                                        ; preds = %.lr.ph332.preheader, %bb.w
  %.0232331 = phi ptr [ %.lcssa447, %bb.w ], [ %i.bx, %.lr.ph332.preheader ] ; 2 uses
  %.0236330 = phi i32 [ %.lcssa446, %bb.w ], [ %i.bv, %.lr.ph332.preheader ] ; 3 uses
  %.0256329 = phi ptr [ %i.db, %bb.w ], [ %.0267, %.lr.ph332.preheader ] ; 5 uses
  store i32 0, ptr %.0256329, align 4
  %i.by = add nsw i32 %.0236330, -1               ; 2 uses
  %umin = call i32 @llvm.umin.i32(i32 %i.by, i32 8)
  %i.bz = add nuw nsw i32 %umin, 1                ; 2 uses
  %wide.trip.count = zext nneg i32 %i.bz to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ca = icmp eq i32 %i.by, 0
  br i1 %i.ca, label %.epil.preheader, label %.lr.ph332.new

.lr.ph332.new:                                    ; preds = %.lr.ph332
  %unroll_iter = and i64 %wide.trip.count, 30
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %.lr.ph332.new
  %indvars.iv381 = phi i64 [ 0, %.lr.ph332.new ], [ %indvars.iv.next382.1, %bb.v ] ; 3 uses
  %i.cb = phi i32 [ 0, %.lr.ph332.new ], [ %i.cp, %bb.v ]
  %.1233327 = phi ptr [ %.0232331, %.lr.ph332.new ], [ %i.cq, %bb.v ] ; 3 uses
  %.1237326 = phi i32 [ %.0236330, %.lr.ph332.new ], [ %i.cr, %bb.v ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph332.new ], [ %niter.next.1, %bb.v ]
  %i.cc = load i8, ptr %.1233327, align 1
  %i.cd = zext i8 %i.cc to i32
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr @_ZL9DECPOWERS, i64 %indvars.iv381
  %i.cf = load i32, ptr %i.ce, align 8
  %i.cg = mul i32 %i.cf, %i.cd
  %i.ch = add i32 %i.cb, %i.cg                    ; 2 uses
  store i32 %i.ch, ptr %.0256329, align 4
  %i.ci = getelementptr inbounds nuw i8, ptr %.1233327, i64 1
  %i.cj = load i8, ptr %i.ci, align 1
  %i.ck = zext i8 %i.cj to i32
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr @_ZL9DECPOWERS, i64 %indvars.iv381
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  %i.cn = load i32, ptr %i.cm, align 4
  %i.co = mul i32 %i.cn, %i.ck
  %i.cp = add i32 %i.ch, %i.co                    ; 3 uses
  store i32 %i.cp, ptr %.0256329, align 4
  %indvars.iv.next382.1 = add nuw nsw i64 %indvars.iv381, 2 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.1233327, i64 2 ; 3 uses
  %i.cr = add nsw i32 %.1237326, -2               ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.v, !llvm.loop !70

.unr-lcssa:                                       ; preds = %bb.v
  %i.cs = add nsw i32 %.1237326, -1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.w, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.lr.ph332
  %indvars.iv381.epil.init = phi i64 [ 0, %.lr.ph332 ], [ %indvars.iv.next382.1, %.unr-lcssa ]
  %.epil.init = phi i32 [ 0, %.lr.ph332 ], [ %i.cp, %.unr-lcssa ]
  %.1233327.epil.init = phi ptr [ %.0232331, %.lr.ph332 ], [ %i.cq, %.unr-lcssa ] ; 2 uses
  %.1237326.epil.init = phi i32 [ %.0236330, %.lr.ph332 ], [ %i.cr, %.unr-lcssa ] ; 2 uses
  %lcmp.mod453 = trunc i32 %i.bz to i1
  call void @llvm.assume(i1 %lcmp.mod453)
  %i.ct = load i8, ptr %.1233327.epil.init, align 1
  %i.cu = zext i8 %i.ct to i32
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr @_ZL9DECPOWERS, i64 %indvars.iv381.epil.init
  %i.cw = load i32, ptr %i.cv, align 4
  %i.cx = mul i32 %i.cw, %i.cu
  %i.cy = add i32 %.epil.init, %i.cx
  store i32 %i.cy, ptr %.0256329, align 4
  %i.cz = getelementptr inbounds nuw i8, ptr %.1233327.epil.init, i64 1
  %i.da = add nsw i32 %.1237326.epil.init, -1
  br label %bb.w

bb.w:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %.1237326.lcssa = phi i32 [ %i.cs, %.unr-lcssa ], [ %.1237326.epil.init, %.epil.preheader ]
  %.lcssa447 = phi ptr [ %i.cq, %.unr-lcssa ], [ %i.cz, %.epil.preheader ]
  %.lcssa446 = phi i32 [ %i.cr, %.unr-lcssa ], [ %i.da, %.epil.preheader ]
  %i.db = getelementptr inbounds nuw i8, ptr %.0256329, i64 4 ; 2 uses
  %i.dc = icmp sgt i32 %.1237326.lcssa, 1
  br i1 %i.dc, label %.lr.ph332, label %._crit_edge, !llvm.loop !71

._crit_edge:                                      ; preds = %bb.w, %bb.u
  %.0256.lcssa = phi ptr [ %.0267, %bb.u ], [ %i.db, %bb.w ] ; 2 uses
  %.0256.lcssa425 = ptrtoint ptr %.0256.lcssa to i64 ; 2 uses
  %i.dd = getelementptr inbounds i8, ptr %.0256.lcssa, i64 -4 ; 2 uses
  %i.de = load i32, ptr %spec.select.a, align 4   ; 2 uses
  %i.df = icmp sgt i32 %i.de, 0
  br i1 %i.df, label %.lr.ph341.preheader, label %._crit_edge342

.lr.ph341.preheader:                              ; preds = %._crit_edge
  %i.dg = getelementptr inbounds nuw i8, ptr %spec.select.a, i64 9
  br label %.lr.ph341

.lr.ph341:                                        ; preds = %.lr.ph341.preheader, %bb.y
  %.2234339 = phi ptr [ %.lcssa444, %bb.y ], [ %i.dg, %.lr.ph341.preheader ] ; 2 uses
  %.2238338 = phi i32 [ %.lcssa443, %bb.y ], [ %i.de, %.lr.ph341.preheader ] ; 3 uses
  %.0254337 = phi ptr [ %i.ek, %bb.y ], [ %.0263, %.lr.ph341.preheader ] ; 5 uses
  store i32 0, ptr %.0254337, align 4
  %i.dh = add nsw i32 %.2238338, -1               ; 2 uses
  %umin387 = call i32 @llvm.umin.i32(i32 %i.dh, i32 8)
  %i.di = add nuw nsw i32 %umin387, 1             ; 2 uses
  %wide.trip.count388 = zext nneg i32 %i.di to i64 ; 2 uses
  %xtraiter457 = and i64 %wide.trip.count388, 1
  %i.dj = icmp eq i32 %i.dh, 0
  br i1 %i.dj, label %.epil.preheader455, label %.lr.ph341.new

.lr.ph341.new:                                    ; preds = %.lr.ph341
  %unroll_iter466 = and i64 %wide.trip.count388, 30
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %.lr.ph341.new
  %indvars.iv384 = phi i64 [ 0, %.lr.ph341.new ], [ %indvars.iv.next385.1, %bb.x ] ; 3 uses
  %i.dk = phi i32 [ 0, %.lr.ph341.new ], [ %i.dy, %bb.x ]
  %.3235335 = phi ptr [ %.2234339, %.lr.ph341.new ], [ %i.dz, %bb.x ] ; 3 uses
  %.3239334 = phi i32 [ %.2238338, %.lr.ph341.new ], [ %i.ea, %bb.x ] ; 2 uses
  %niter467 = phi i64 [ 0, %.lr.ph341.new ], [ %niter467.next.1, %bb.x ]
  %i.dl = load i8, ptr %.3235335, align 1
  %i.dm = zext i8 %i.dl to i32
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr @_ZL9DECPOWERS, i64 %indvars.iv384
  %i.do = load i32, ptr %i.dn, align 8
  %i.dp = mul i32 %i.do, %i.dm
  %i.dq = add i32 %i.dk, %i.dp                    ; 2 uses
  store i32 %i.dq, ptr %.0254337, align 4
  %i.dr = getelementptr inbounds nuw i8, ptr %.3235335, i64 1
  %i.ds = load i8, ptr %i.dr, align 1
  %i.dt = zext i8 %i.ds to i32
  %i.du = getelementptr inbounds nuw [4 x i8], ptr @_ZL9DECPOWERS, i64 %indvars.iv384
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 4
  %i.dw = load i32, ptr %i.dv, align 4
  %i.dx = mul i32 %i.dw, %i.dt
  %i.dy = add i32 %i.dq, %i.dx                    ; 3 uses
  store i32 %i.dy, ptr %.0254337, align 4
  %indvars.iv.next385.1 = add nuw nsw i64 %indvars.iv384, 2 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.3235335, i64 2 ; 3 uses
  %i.ea = add nsw i32 %.3239334, -2               ; 3 uses
  %niter467.next.1 = add i64 %niter467, 2         ; 2 uses
  %niter467.ncmp.1 = icmp eq i64 %niter467.next.1, %unroll_iter466
  br i1 %niter467.ncmp.1, label %.unr-lcssa454, label %bb.x, !llvm.loop !72

.unr-lcssa454:                                    ; preds = %bb.x
  %i.eb = add nsw i32 %.3239334, -1
  %lcmp.mod460.not = icmp eq i64 %xtraiter457, 0
  br i1 %lcmp.mod460.not, label %bb.y, label %.epil.preheader455

.epil.preheader455:                               ; preds = %.unr-lcssa454, %.lr.ph341
  %indvars.iv384.epil.init = phi i64 [ 0, %.lr.ph341 ], [ %indvars.iv.next385.1, %.unr-lcssa454 ]
  %.epil.init459 = phi i32 [ 0, %.lr.ph341 ], [ %i.dy, %.unr-lcssa454 ]
  %.3235335.epil.init = phi ptr [ %.2234339, %.lr.ph341 ], [ %i.dz, %.unr-lcssa454 ] ; 2 uses
  %.3239334.epil.init = phi i32 [ %.2238338, %.lr.ph341 ], [ %i.ea, %.unr-lcssa454 ] ; 2 uses
  %lcmp.mod465 = trunc i32 %i.di to i1
  call void @llvm.assume(i1 %lcmp.mod465)
  %i.ec = load i8, ptr %.3235335.epil.init, align 1
  %i.ed = zext i8 %i.ec to i32
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr @_ZL9DECPOWERS, i64 %indvars.iv384.epil.init
  %i.ef = load i32, ptr %i.ee, align 4
  %i.eg = mul i32 %i.ef, %i.ed
  %i.eh = add i32 %.epil.init459, %i.eg
  store i32 %i.eh, ptr %.0254337, align 4
  %i.ei = getelementptr inbounds nuw i8, ptr %.3235335.epil.init, i64 1
  %i.ej = add nsw i32 %.3239334.epil.init, -1
  br label %bb.y

bb.y:                                             ; preds = %.unr-lcssa454, %.epil.preheader455
  %.3239334.lcssa = phi i32 [ %i.eb, %.unr-lcssa454 ], [ %.3239334.epil.init, %.epil.preheader455 ]
  %.lcssa444 = phi ptr [ %i.dz, %.unr-lcssa454 ], [ %i.ei, %.epil.preheader455 ]
  %.lcssa443 = phi i32 [ %i.ea, %.unr-lcssa454 ], [ %i.ej, %.epil.preheader455 ]
  %i.ek = getelementptr inbounds nuw i8, ptr %.0254337, i64 4 ; 2 uses
  %i.el = icmp sgt i32 %.3239334.lcssa, 1
  br i1 %i.el, label %.lr.ph341, label %._crit_edge342, !llvm.loop !73

._crit_edge342:                                   ; preds = %bb.y, %._crit_edge
  %.0254.lcssa = phi ptr [ %.0263, %._crit_edge ], [ %i.ek, %bb.y ] ; 2 uses
  %.0254.lcssa430 = ptrtoint ptr %.0254.lcssa to i64
  %i.em = getelementptr inbounds i8, ptr %.0254.lcssa, i64 -4 ; 3 uses
  %.idx = shl nsw i64 %i.bg, 3                    ; 2 uses
  %i.en = getelementptr inbounds i8, ptr %i.bu, i64 %.idx ; 2 uses
  %i.eo = icmp sgt i32 %i.ax, 0                   ; 2 uses
  br i1 %i.eo, label %.lr.ph346.preheader, label %.preheader321

.lr.ph346.preheader:                              ; preds = %._crit_edge342
  %i.ep = shl nuw nsw i64 %i.bt, 3                ; 2 uses
  %i.eq = add i64 %i.ep, %.0259390                ; 2 uses
  %i.er = add i64 %i.eq, %.idx
  %i.es = add i64 %i.eq, 8
  %umax = call i64 @llvm.umax.i64(i64 %i.er, i64 %i.es)
  %i.et = xor i64 %.0259390, -1
  %i.eu = add i64 %umax, %i.et
  %i.ev = sub i64 %i.eu, %i.ep
  %i.ew = and i64 %i.ev, -8
  %i.ex = add i64 %i.ew, 8
  call void @llvm.memset.p0.i64(ptr align 8 %i.bu, i8 0, i64 %i.ex, i1 false)
  br label %.preheader321

.preheader321:                                    ; preds = %.lr.ph346.preheader, %._crit_edge342
  %.not290356 = icmp ugt ptr %.0263, %i.em
  br i1 %.not290356, label %.preheader, label %.lr.ph359

.lr.ph359:                                        ; preds = %.preheader321
  %i.ey = ptrtoint ptr %.0263 to i64              ; 3 uses
  %.not291348 = icmp ugt ptr %.0267, %i.dd
  %i.ez = icmp slt i32 %i.ax, 1
  %i.fa = add i64 %.0256.lcssa425, -3
  %i.fb = add i64 %.0267426, 4
  %umax427 = call i64 @llvm.umax.i64(i64 %i.fa, i64 %i.fb)
  %i.fc = xor i64 %.0267426, -1
  %i.fd = add i64 %umax427, %i.fc                 ; 2 uses
  %i.fe = lshr i64 %i.fd, 2
  %i.ff = add nsw i64 %i.fe, %i.bt
  %i.fg = shl i64 %i.ff, 3
  %i.fh = getelementptr i8, ptr %.0259, i64 %i.fg
  %scevgep = getelementptr i8, ptr %i.fh, i64 8
  %i.fi = and i64 %i.fd, -4
  %i.fj = getelementptr i8, ptr %.0267, i64 %i.fi
  %scevgep429 = getelementptr i8, ptr %i.fj, i64 4
  %i.fk = add i64 %.0254.lcssa430, -3
  %i.fl = add i64 %i.ey, 4
  %umax431 = call i64 @llvm.umax.i64(i64 %i.fk, i64 %i.fl)
  %i.fm = xor i64 %i.ey, -1
  %i.fn = add i64 %umax431, %i.fm
  %i.fo = and i64 %i.fn, -4
  %i.fp = getelementptr i8, ptr %.0263, i64 %i.fo
  %scevgep432 = getelementptr i8, ptr %i.fp, i64 4
  %i.fq = add i64 %.0256.lcssa425, -3
  %i.fr = add i64 %.0267426, 4
  %umax436 = call i64 @llvm.umax.i64(i64 %i.fq, i64 %i.fr)
  %i.fs = xor i64 %.0267426, -1
  %i.ft = add i64 %umax436, %i.fs                 ; 2 uses
  %i.fu = lshr i64 %i.ft, 2
  %i.fv = add nuw nsw i64 %i.fu, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ft, 20
  %n.vec = and i64 %i.fv, 9223372036854775804     ; 4 uses
  %i.fw = shl i64 %n.vec, 3
  %i.fx = shl i64 %n.vec, 2
  %i.fy = getelementptr i8, ptr %.0267, i64 %i.fx
  %cmp.n = icmp eq i64 %i.fv, %n.vec
  br label %bb.z

.preheader:                                       ; preds = %.loopexit, %.preheader321
  br i1 %i.eo, label %.lr.ph365, label %._crit_edge366

bb.z:                                             ; preds = %.lr.ph359, %.loopexit
  %.0244358 = phi i32 [ 18, %.lr.ph359 ], [ %.1245, %.loopexit ] ; 2 uses
  %.1255357 = phi ptr [ %.0263, %.lr.ph359 ], [ %i.hv, %.loopexit ] ; 5 uses
  br i1 %.not291348, label %._crit_edge353, label %.lr.ph352.preheader

.lr.ph352.preheader:                              ; preds = %bb.z
  %i.fz = ptrtoint ptr %.1255357 to i64
  %i.ga = sub i64 %i.fz, %i.ey                    ; 2 uses
  %i.gb = ashr exact i64 %i.ga, 2
  %i.gc = getelementptr [8 x i8], ptr %i.bu, i64 %i.gb ; 6 uses
  br i1 %min.iters.check, label %.lr.ph352.preheader442, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph352.preheader
  %i.gd = shl i64 %i.ga, 1
  %scevgep428 = getelementptr i8, ptr %scevgep, i64 %i.gd ; 2 uses
  %bound0 = icmp ult ptr %i.gc, %scevgep429
  %bound1 = icmp ult ptr %.0267, %scevgep428
  %found.conflict = and i1 %bound0, %bound1
  %bound0433 = icmp ult ptr %i.gc, %scevgep432
  %bound1434 = icmp ult ptr %.0263, %scevgep428
  %found.conflict435 = and i1 %bound0433, %bound1434
  %conflict.rdx = or i1 %found.conflict, %found.conflict435
  br i1 %conflict.rdx, label %.lr.ph352.preheader442, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ge = getelementptr i8, ptr %i.gc, i64 %i.fw
  %i.gf = load i32, ptr %.1255357, align 4, !alias.scope !74
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %i.gf, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.gg = zext <2 x i32> %broadcast.splat to <2 x i64> ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.gh = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.gc, i64 %i.gh ; 3 uses
  %i.gi = shl i64 %index, 2
  %next.gep437 = getelementptr i8, ptr %.0267, i64 %i.gi ; 2 uses
  %i.gj = getelementptr i8, ptr %next.gep437, i64 8
  %wide.load = load <2 x i32>, ptr %next.gep437, align 4, !alias.scope !77
  %wide.load438 = load <2 x i32>, ptr %i.gj, align 4, !alias.scope !77
  %i.gk = zext <2 x i32> %wide.load to <2 x i64>
  %i.gl = zext <2 x i32> %wide.load438 to <2 x i64>
  %i.gm = mul nuw <2 x i64> %i.gg, %i.gk
  %i.gn = mul nuw <2 x i64> %i.gg, %i.gl
  %i.go = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load439 = load <2 x i64>, ptr %next.gep, align 8, !alias.scope !79, !noalias !81
  %wide.load440 = load <2 x i64>, ptr %i.go, align 8, !alias.scope !79, !noalias !81
  %i.gp = add <2 x i64> %i.gm, %wide.load439
  %i.gq = add <2 x i64> %i.gn, %wide.load440
  store <2 x i64> %i.gp, ptr %next.gep, align 8, !alias.scope !79, !noalias !81
  store <2 x i64> %i.gq, ptr %i.go, align 8, !alias.scope !79, !noalias !81
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gr = icmp eq i64 %index.next, %n.vec
  br i1 %i.gr, label %middle.block, label %vector.body, !llvm.loop !82

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge353, label %.lr.ph352.preheader442

.lr.ph352.preheader442:                           ; preds = %vector.memcheck, %.lr.ph352.preheader, %middle.block
  %.1228350.ph = phi ptr [ %i.gc, %vector.memcheck ], [ %i.gc, %.lr.ph352.preheader ], [ %i.ge, %middle.block ]
  %.1257349.ph = phi ptr [ %.0267, %vector.memcheck ], [ %.0267, %.lr.ph352.preheader ], [ %i.fy, %middle.block ]
  br label %.lr.ph352

.lr.ph352:                                        ; preds = %.lr.ph352.preheader442, %.lr.ph352
  %.1228350 = phi ptr [ %i.ha, %.lr.ph352 ], [ %.1228350.ph, %.lr.ph352.preheader442 ] ; 3 uses
  %.1257349 = phi ptr [ %i.gz, %.lr.ph352 ], [ %.1257349.ph, %.lr.ph352.preheader442 ] ; 2 uses
  %i.gs = load i32, ptr %.1257349, align 4
  %i.gt = zext i32 %i.gs to i64
  %i.gu = load i32, ptr %.1255357, align 4
  %i.gv = zext i32 %i.gu to i64
  %i.gw = mul nuw i64 %i.gv, %i.gt
  %i.gx = load i64, ptr %.1228350, align 8
  %i.gy = add i64 %i.gw, %i.gx
  store i64 %i.gy, ptr %.1228350, align 8
  %i.gz = getelementptr inbounds nuw i8, ptr %.1257349, i64 4 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.1228350, i64 8
  %.not291 = icmp ugt ptr %i.gz, %i.dd
  br i1 %.not291, label %._crit_edge353, label %.lr.ph352, !llvm.loop !83

._crit_edge353:                                   ; preds = %.lr.ph352, %middle.block, %bb.z
  %i.hb = icmp sgt i32 %.0244358, 1
  %i.hc = add nsw i32 %.0244358, -1
  %.not292 = icmp ne ptr %.1255357, %i.em
  %or.cond305.not371 = select i1 %i.hb, i1 %.not292, i1 false ; 2 uses
  %brmerge = select i1 %or.cond305.not371, i1 true, i1 %i.ez
  %.mux = select i1 %or.cond305.not371, i32 %i.hc, i32 18
  br i1 %brmerge, label %.loopexit, label %.lr.ph355

.lr.ph355:                                        ; preds = %._crit_edge353, %bb.ad
  %.2229354 = phi ptr [ %i.ht, %bb.ad ], [ %i.bu, %._crit_edge353 ] ; 5 uses
  %i.hd = load i64, ptr %.2229354, align 8        ; 6 uses
  %i.he = icmp ult i64 %i.hd, 1000000000
  br i1 %i.he, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph355
  %i.hf = udiv i64 %i.hd, 1000000000              ; 2 uses
  %i.hg = icmp ult i64 %i.hd, 1000000000000000000
  br i1 %i.hg, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.hh = udiv i64 %i.hd, 1000000000000000000     ; 3 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.2229354, i64 16 ; 2 uses
  %i.hj = load i64, ptr %i.hi, align 8
  %i.hk = add i64 %i.hj, %i.hh
  store i64 %i.hk, ptr %i.hi, align 8
  %.neg293 = mul i64 %i.hh, -1000000000000000000
  %i.hl = add i64 %.neg293, %i.hd
  %.neg294 = mul nuw nsw i64 %i.hh, 3294967296
  %i.hm = add nuw nsw i64 %.neg294, %i.hf
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  %i.hn = phi i64 [ %i.hl, %bb.ab ], [ %i.hd, %bb.aa ]
  %.0240.in = phi i64 [ %i.hm, %bb.ab ], [ %i.hf, %bb.aa ]
  %i.ho = and i64 %.0240.in, 4294967295           ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %.2229354, i64 8 ; 2 uses
  %i.hq = load i64, ptr %i.hp, align 8
  %i.hr = add i64 %i.hq, %i.ho
  store i64 %i.hr, ptr %i.hp, align 8
  %.neg295 = mul nsw i64 %i.ho, -1000000000
  %i.hs = add i64 %i.hn, %.neg295
  store i64 %i.hs, ptr %.2229354, align 8
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph355, %bb.ac
  %i.ht = getelementptr inbounds nuw i8, ptr %.2229354, i64 8 ; 2 uses
  %i.hu = icmp ult ptr %i.ht, %i.en
  br i1 %i.hu, label %.lr.ph355, label %.loopexit, !llvm.loop !84

.loopexit:                                        ; preds = %bb.ad, %._crit_edge353
  %.1245 = phi i32 [ %.mux, %._crit_edge353 ], [ 18, %bb.ad ]
  %i.hv = getelementptr inbounds nuw i8, ptr %.1255357, i64 4 ; 2 uses
  %.not290 = icmp ugt ptr %i.hv, %i.em
  br i1 %.not290, label %.preheader, label %bb.z, !llvm.loop !85

.lr.ph365:                                        ; preds = %.preheader, %.lr.ph365
  %.3364 = phi ptr [ %i.jg, %.lr.ph365 ], [ %i.bu, %.preheader ] ; 2 uses
  %.0230363 = phi ptr [ %i.jf, %.lr.ph365 ], [ %.0259, %.preheader ] ; 10 uses
  %i.hw = load i64, ptr %.3364, align 8
  %i.hx = trunc i64 %i.hw to i32                  ; 9 uses
  %i.hy = udiv i32 %i.hx, 10                      ; 2 uses
  %.neg = mul i32 %i.hy, 246
  %i.hz = add i32 %.neg, %i.hx
  %i.ia = trunc i32 %i.hz to i8
  store i8 %i.ia, ptr %.0230363, align 1
  %i.ib = getelementptr inbounds nuw i8, ptr %.0230363, i64 1
  %i.ic = udiv i32 %i.hx, 100                     ; 2 uses
  %.neg.1 = mul i32 %i.ic, 246
  %i.id = add i32 %.neg.1, %i.hy
  %i.ie = trunc i32 %i.id to i8
  store i8 %i.ie, ptr %i.ib, align 1
  %i.if = getelementptr inbounds nuw i8, ptr %.0230363, i64 2
  %i.ig = udiv i32 %i.hx, 1000                    ; 2 uses
  %.neg.2 = mul nuw nsw i32 %i.ig, 246
  %i.ih = add nuw nsw i32 %.neg.2, %i.ic
  %i.ii = trunc i32 %i.ih to i8
  store i8 %i.ii, ptr %i.if, align 1
  %i.ij = getelementptr inbounds nuw i8, ptr %.0230363, i64 3
  %i.ik = udiv i32 %i.hx, 10000                   ; 2 uses
  %.neg.3 = mul nuw nsw i32 %i.ik, 246
  %i.il = add nuw nsw i32 %.neg.3, %i.ig
  %i.im = trunc i32 %i.il to i8
  store i8 %i.im, ptr %i.ij, align 1
  %i.in = getelementptr inbounds nuw i8, ptr %.0230363, i64 4
  %i.io = udiv i32 %i.hx, 100000                  ; 2 uses
  %.neg.4 = mul nuw nsw i32 %i.io, 246
  %i.ip = add nuw nsw i32 %.neg.4, %i.ik
  %i.iq = trunc i32 %i.ip to i8
  store i8 %i.iq, ptr %i.in, align 1
  %i.ir = getelementptr inbounds nuw i8, ptr %.0230363, i64 5
  %i.is = udiv i32 %i.hx, 1000000                 ; 2 uses
  %.neg.5 = mul nuw nsw i32 %i.is, 246
  %i.it = add nuw nsw i32 %.neg.5, %i.io
  %i.iu = trunc i32 %i.it to i8
  store i8 %i.iu, ptr %i.ir, align 1
  %i.iv = getelementptr inbounds nuw i8, ptr %.0230363, i64 6
  %i.iw = udiv i32 %i.hx, 10000000                ; 2 uses
  %.neg.6 = mul nuw nsw i32 %i.iw, 246
  %i.ix = add nuw nsw i32 %.neg.6, %i.is
  %i.iy = trunc i32 %i.ix to i8
  store i8 %i.iy, ptr %i.iv, align 1
  %i.iz = getelementptr inbounds nuw i8, ptr %.0230363, i64 7
  %i.ja = udiv i32 %i.hx, 100000000               ; 2 uses
  %.neg.7 = mul nuw nsw i32 %i.ja, 246
  %i.jb = add nuw nsw i32 %.neg.7, %i.iw
  %i.jc = trunc i32 %i.jb to i8
  store i8 %i.jc, ptr %i.iz, align 1
  %i.jd = getelementptr inbounds nuw i8, ptr %.0230363, i64 8
  %i.je = trunc nuw nsw i32 %i.ja to i8
  store i8 %i.je, ptr %i.jd, align 1
  %i.jf = getelementptr inbounds nuw i8, ptr %.0230363, i64 9 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %.3364, i64 8 ; 2 uses
  %i.jh = icmp ult ptr %i.jg, %i.en
  br i1 %i.jh, label %.lr.ph365, label %._crit_edge366.loopexit, !llvm.loop !86

._crit_edge366.loopexit:                          ; preds = %.lr.ph365
  %.pre393 = ptrtoint ptr %i.jf to i64
  br label %._crit_edge366

._crit_edge366:                                   ; preds = %._crit_edge366.loopexit, %.preheader
  %.pre-phi = phi i64 [ %.pre393, %._crit_edge366.loopexit ], [ %.0259390, %.preheader ]
  %i.ji = sub i64 %.pre-phi, %.0259390
  %i.jj = trunc i64 %i.ji to i32
  br label %.loopexit322

bb.ae:                                            ; preds = %bb.l
  %i.jk = icmp slt i32 %i.as, 50
  br i1 %i.jk, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.jl = sext i32 %i.as to i64
  %i.jm = getelementptr inbounds i8, ptr @_ZL8d2utable, i64 %i.jl
  %i.jn = load i8, ptr %i.jm, align 1
  %i.jo = zext i8 %i.jn to i32
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af
  %i.jp = phi i32 [ %i.jo, %bb.af ], [ %i.as, %bb.ae ]
  %i.jq = sext i32 %5 to i64
  %i.jr = getelementptr inbounds i8, ptr @_ZL8d2utable, i64 %i.jq
  %i.js = load i8, ptr %i.jr, align 1
  %i.jt = zext i8 %i.js to i32
  %i.ju = add nuw nsw i32 %i.jp, %i.jt            ; 2 uses
  %i.jv = icmp samesign ugt i32 %i.ju, 145
  br i1 %i.jv, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.jw = zext nneg i32 %i.ju to i64
  %i.jx = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.jw) #16 ; 3 uses
  %i.jy = icmp eq ptr %i.jx, null
  br i1 %i.jy, label %.thread317, label %._crit_edge392

._crit_edge392:                                   ; preds = %bb.ah
  %.pre = load i32, ptr %spec.select304, align 4
  br label %bb.ai

.thread317:                                       ; preds = %bb.ah
  %i.jz = load i32, ptr %4, align 4
  %i.ka = or i32 %i.jz, 16
  store i32 %i.ka, ptr %4, align 4
  br label %bb.ax

bb.ai:                                            ; preds = %._crit_edge392, %bb.ag
  %i.kb = phi i32 [ %i.as, %bb.ag ], [ %.pre, %._crit_edge392 ] ; 3 uses
  %.1250 = phi ptr [ null, %bb.ag ], [ %i.jx, %._crit_edge392 ] ; 2 uses
  %.0247 = phi ptr [ %i.b, %bb.ag ], [ %i.jx, %._crit_edge392 ] ; 5 uses
  store i8 0, ptr %.0247, align 1
  %i.kc = icmp slt i32 %i.kb, 50
  br i1 %i.kc, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.kd = sext i32 %i.kb to i64
  %i.ke = getelementptr inbounds i8, ptr @_ZL8d2utable, i64 %i.kd
  %i.kf = load i8, ptr %i.ke, align 1
  %i.kg = zext i8 %i.kf to i32
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.aj
  %i.kh = phi i32 [ %i.kg, %bb.aj ], [ %i.kb, %bb.ai ]
  %i.ki = getelementptr inbounds nuw i8, ptr %spec.select.a, i64 9 ; 2 uses
  %i.kj = load i32, ptr %spec.select.a, align 4   ; 4 uses
  %i.kk = icmp slt i32 %i.kj, 50
  br i1 %i.kk, label %bb.al, label %.thread

.thread:                                          ; preds = %bb.ak
  %i.kl = zext nneg i32 %i.kj to i64
  br label %.lr.ph

bb.al:                                            ; preds = %bb.ak
  %i.km = sext i32 %i.kj to i64
  %i.kn = getelementptr inbounds i8, ptr @_ZL8d2utable, i64 %i.km
  %i.ko = load i8, ptr %i.kn, align 1
  %i.kp = zext i8 %i.ko to i64
  %.not369 = icmp eq i32 %i.kj, 0
  br i1 %.not369, label %.loopexit322, label %.lr.ph

.lr.ph:                                           ; preds = %.thread, %bb.al
  %.pn = phi i64 [ %i.kl, %.thread ], [ %i.kp, %bb.al ]
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ki, i64 %.pn
  %i.kr = getelementptr inbounds nuw i8, ptr %spec.select304, i64 9
  br label %bb.am

bb.am:                                            ; preds = %.lr.ph, %bb.ap
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ap ] ; 3 uses
  %.0241325 = phi i32 [ 1, %.lr.ph ], [ %.1242, %bb.ap ] ; 3 uses
  %.0253324 = phi ptr [ %i.ki, %.lr.ph ], [ %i.lc, %bb.ap ] ; 2 uses
  %i.ks = load i8, ptr %.0253324, align 1         ; 2 uses
  %.not289 = icmp eq i8 %i.ks, 0
  br i1 %.not289, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.kt = zext i8 %i.ks to i32
  %i.ku = getelementptr inbounds nuw i8, ptr %.0247, i64 %indvars.iv ; 2 uses
  %i.kv = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.kw = sub nsw i32 %.0241325, %i.kv
  %i.kx = call fastcc noundef i32 @_ZL13decUnitAddSubPKhiS0_iiPhi(ptr noundef nonnull %i.ku, i32 noundef %i.kw, ptr noundef nonnull %i.kr, i32 noundef %i.kh, i32 noundef 0, ptr noundef nonnull %i.ku, i32 noundef %i.kt)
  %i.ky = add nsw i32 %i.kx, %i.kv
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  %i.kz = sext i32 %.0241325 to i64
  %i.la = getelementptr inbounds i8, ptr %.0247, i64 %i.kz
  store i8 0, ptr %i.la, align 1
  %i.lb = add nsw i32 %.0241325, 1
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.1242 = phi i32 [ %i.ky, %bb.an ], [ %i.lb, %bb.ao ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.lc = getelementptr inbounds nuw i8, ptr %.0253324, i64 1 ; 2 uses
  %i.ld = icmp ult ptr %i.lc, %i.kq
  br i1 %i.ld, label %bb.am, label %.loopexit322, !llvm.loop !87

.loopexit322:                                     ; preds = %bb.ap, %bb.al, %._crit_edge366
  %.1265 = phi ptr [ %.0264, %._crit_edge366 ], [ null, %bb.al ], [ null, %bb.ap ]
  %.1261 = phi ptr [ %.0260, %._crit_edge366 ], [ null, %bb.al ], [ null, %bb.ap ]
  %.2251 = phi ptr [ %.0249, %._crit_edge366 ], [ %.1250, %bb.al ], [ %.1250, %bb.ap ]
  %.1248 = phi ptr [ %.0259, %._crit_edge366 ], [ %.0247, %bb.al ], [ %.0247, %bb.ap ] ; 4 uses
  %.2243 = phi i32 [ %i.jj, %._crit_edge366 ], [ 1, %bb.al ], [ %.1242, %bb.ap ] ; 3 uses
  %i.le = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.l, ptr %i.le, align 4
  %i.lf = sext i32 %.2243 to i64
  %i.lg = getelementptr i8, ptr %.1248, i64 %i.lf
  %.01011.i = getelementptr i8, ptr %i.lg, i64 -1 ; 2 uses
  %.not12.i = icmp ult ptr %.01011.i, %.1248
  br i1 %.not12.i, label %_ZL12decGetDigitsPhi.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.loopexit322, %bb.aq
  %.01014.i = phi ptr [ %.010.i, %bb.aq ], [ %.01011.i, %.loopexit322 ] ; 2 uses
  %.013.i = phi i32 [ %i.lk, %bb.aq ], [ %.2243, %.loopexit322 ] ; 3 uses
  %i.lh = load i8, ptr %.01014.i, align 1
  %i.li = icmp ne i8 %i.lh, 0
  %i.lj = icmp eq i32 %.013.i, 1
  %or.cond.i = select i1 %i.li, i1 true, i1 %i.lj
  br i1 %or.cond.i, label %_ZL12decGetDigitsPhi.exit, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph.i
  %i.lk = add nsw i32 %.013.i, -1                 ; 2 uses
  %.010.i = getelementptr i8, ptr %.01014.i, i64 -1 ; 2 uses
  %.not.i = icmp ult ptr %.010.i, %.1248
  br i1 %.not.i, label %_ZL12decGetDigitsPhi.exit, label %.lr.ph.i, !llvm.loop !7

_ZL12decGetDigitsPhi.exit:                        ; preds = %.lr.ph.i, %bb.aq, %.loopexit322
  %.0.lcssa.i = phi i32 [ %.2243, %.loopexit322 ], [ %i.lk, %bb.aq ], [ %.013.i, %.lr.ph.i ] ; 2 uses
  store i32 %.0.lcssa.i, ptr %0, align 4
  %i.ll = getelementptr inbounds nuw i8, ptr %spec.select304, i64 4
  %i.lm = load i32, ptr %i.ll, align 4
  %i.ln = getelementptr inbounds nuw i8, ptr %spec.select.a, i64 4
  %i.lo = load i32, ptr %i.ln, align 4
  %i.lp = add nsw i32 %i.lo, %i.lm
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.lp, ptr %i.lq, align 4
  call fastcc void @_ZL11decSetCoeffP9decNumberP10decContextPKhiPiPj(ptr noundef nonnull %0, ptr noundef %3, ptr noundef %.1248, i32 noundef %.0.lcssa.i, ptr noundef %i.a, ptr noundef %4)
  call fastcc void @_ZL11decFinalizeP9decNumberP10decContextPiPj(ptr noundef nonnull %0, ptr noundef %3, ptr noundef %i.a, ptr noundef %4)
  br label %bb.ar

bb.ar:                                            ; preds = %_ZL12decGetDigitsPhi.exit, %bb.t
  %.2266 = phi ptr [ %.0264, %bb.t ], [ %.1265, %_ZL12decGetDigitsPhi.exit ] ; 2 uses
  %.2262 = phi ptr [ %.0260, %bb.t ], [ %.1261, %_ZL12decGetDigitsPhi.exit ] ; 2 uses
  %.3252 = phi ptr [ %.0249, %bb.t ], [ %.2251, %_ZL12decGetDigitsPhi.exit ] ; 2 uses
  %.not296 = icmp eq ptr %.3252, null
  br i1 %.not296, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @uprv_free_78(ptr noundef nonnull %.3252) #15
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.not297 = icmp eq ptr %.2262, null
  br i1 %.not297, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @uprv_free_78(ptr noundef nonnull %.2262) #15
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %.not298 = icmp eq ptr %.2266, null
  br i1 %.not298, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @uprv_free_78(ptr noundef nonnull %.2266) #15
  br label %bb.ax

bb.ax:                                            ; preds = %.thread317, %bb.av, %bb.aw, %bb.k, %bb.j, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @uprv_decNumberInvert_78(ptr noundef returned %0, ptr nofree noundef readonly captures(address) %1, ptr noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i8, ptr %i.c, align 4
  %or.cond = icmp ult i8 %i.d, 16
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.f, align 4
  store i32 1, ptr %0, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 0, ptr %i.g, align 1
  store i8 32, ptr %i.e, align 4
  %i.h = tail call ptr @uprv_decContextSetStatus_78(ptr noundef %2, i32 noundef 128) #15 ; 0 uses
  br label %bb.o

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 9 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 8 uses
  %i.k = load i32, ptr %1, align 4                ; 3 uses
  %i.l = icmp slt i32 %i.k, 50
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = sext i32 %i.k to i64
  %i.n = getelementptr inbounds i8, ptr @_ZL8d2utable, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1
  %i.p = zext i8 %i.o to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.q = phi i32 [ %i.p, %bb.e ], [ %i.k, %bb.d ]
  %i.r = zext nneg i32 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.r
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -1
  %i.u = load i32, ptr %2, align 4                ; 5 uses
  %i.v = icmp slt i32 %i.u, 50
  br i1 %i.v, label %bb.g, label %.thread

.thread:                                          ; preds = %bb.f
  %i.w = zext nneg i32 %i.u to i64
  br label %.lr.ph.preheader

bb.g:                                             ; preds = %bb.f
  %i.x = sext i32 %i.u to i64
  %i.y = getelementptr inbounds i8, ptr @_ZL8d2utable, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1               ; 2 uses
  %i.aa = zext i8 %i.z to i64
  %i.ab = zext i8 %i.z to i32
  %i.ac = icmp ne i32 %i.u, %i.ab
  %.not6782 = icmp eq i32 %i.u, 0
  br i1 %.not6782, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.thread, %bb.g
  %.pn95 = phi i64 [ %i.w, %.thread ], [ %i.aa, %bb.g ]
  %.not7094 = phi i1 [ false, %.thread ], [ %i.ac, %bb.g ]
  %.pn = getelementptr i8, ptr %i.j, i64 %.pn95
  %i.ad = getelementptr i8, ptr %.pn, i64 -1      ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.split78
  %.05685 = phi ptr [ %i.ap, %.split78 ], [ %i.i, %.lr.ph.preheader ] ; 3 uses
  %.05783 = phi ptr [ %i.aq, %.split78 ], [ %i.j, %.lr.ph.preheader ] ; 5 uses
  %i.ae = icmp ugt ptr %.05685, %i.t
  br i1 %i.ae, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %i.af = load i8, ptr %.05685, align 1
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.h
  %.053 = phi i8 [ %i.af, %bb.h ], [ 0, %.lr.ph ] ; 3 uses
  store i8 0, ptr %.05783, align 1
  %i.ag = icmp ne ptr %.05783, %i.ad
  %brmerge = select i1 %i.ag, i1 true, i1 %.not7094
  %brmerge.fr = freeze i1 %brmerge
  %i.ah = and i8 %.053, 1
  %.not68.not.us = icmp eq i8 %i.ah, 0            ; 2 uses
  br i1 %brmerge.fr, label %.split.us, label %.split, !llvm.loop !88

.split.us:                                        ; preds = %bb.i
  br i1 %.not68.not.us, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.split.us
  store i8 1, ptr %.05783, align 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.split.us
  %i.ai = urem i8 %.053, 10
  %i.aj = icmp samesign ugt i8 %i.ai, 1
  br i1 %i.aj, label %.split80.us, label %.split78

.split:                                           ; preds = %bb.i
  br i1 %.not68.not.us, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.split
  store i8 1, ptr %.05783, align 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.split
  %i.ak = urem i8 %.053, 10
  %i.al = icmp samesign ugt i8 %i.ak, 1
  br i1 %i.al, label %.split80.us, label %.split78

.split80.us:                                      ; preds = %bb.m, %bb.k
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.an, align 4
  store i32 1, ptr %0, align 4
  store i8 0, ptr %i.j, align 1
  store i8 32, ptr %i.am, align 4
  %i.ao = tail call ptr @uprv_decContextSetStatus_78(ptr noundef nonnull %2, i32 noundef 128) #15 ; 0 uses
  br label %bb.o

.split78:                                         ; preds = %bb.k, %bb.m
  %i.ap = getelementptr inbounds nuw i8, ptr %.05685, i64 1
  %i.aq = getelementptr inbounds nuw i8, ptr %.05783, i64 1 ; 3 uses
  %.not67 = icmp ugt ptr %i.aq, %i.ad
  br i1 %.not67, label %._crit_edge, label %.lr.ph, !llvm.loop !89

._crit_edge:                                      ; preds = %.split78, %bb.g
  %.057.lcssa = phi ptr [ %i.j, %bb.g ], [ %i.aq, %.split78 ]
  %i.ar = ptrtoint ptr %.057.lcssa to i64
  %i.as = ptrtoint ptr %i.j to i64
  %i.at = sub i64 %i.ar, %i.as                    ; 2 uses
  %i.au = trunc i64 %i.at to i32                  ; 2 uses
  %sext = shl i64 %i.at, 32
  %i.av = ashr exact i64 %sext, 32
  %i.aw = getelementptr i8, ptr %i.j, i64 %i.av
  %.01011.i = getelementptr i8, ptr %i.aw, i64 -1 ; 2 uses
  %.not12.i = icmp ult ptr %.01011.i, %i.j
  br i1 %.not12.i, label %_ZL12decGetDigitsPhi.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge, %bb.n
  %.01014.i = phi ptr [ %.010.i, %bb.n ], [ %.01011.i, %._crit_edge ] ; 2 uses
  %.013.i = phi i32 [ %i.ba, %bb.n ], [ %i.au, %._crit_edge ] ; 3 uses
  %i.ax = load i8, ptr %.01014.i, align 1
  %i.ay = icmp ne i8 %i.ax, 0
  %i.az = icmp eq i32 %.013.i, 1
  %or.cond.i = select i1 %i.ay, i1 true, i1 %i.az
  br i1 %or.cond.i, label %_ZL12decGetDigitsPhi.exit, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i
  %i.ba = add nsw i32 %.013.i, -1                 ; 2 uses
  %.010.i = getelementptr i8, ptr %.01014.i, i64 -1 ; 2 uses
  %.not.i = icmp ult ptr %.010.i, %i.j
  br i1 %.not.i, label %_ZL12decGetDigitsPhi.exit, label %.lr.ph.i, !llvm.loop !7
end_hunk_0
