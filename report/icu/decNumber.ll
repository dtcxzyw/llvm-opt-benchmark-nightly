Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/decNumber?download=true
inline.NumInlined: 182
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 13
begin_hunk_0_@uprv_decNumberFMA_78:bb.a
bb.y:                                             ; preds = %bb.x
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.cg, align 4, !tbaa !17
  store i32 1, ptr %0, align 4, !tbaa !18
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 0, ptr %i.ch, align 1, !tbaa !19
  store i8 32, ptr %i.cf, align 4, !tbaa !16
  br label %bb.ab

bb.z:                                             ; preds = %bb.x
  %i.ci = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i8 0, ptr %i.ci, align 4, !tbaa !16
  %i.cj = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 0, ptr %i.cj, align 4, !tbaa !17
  store i32 1, ptr %7, align 4, !tbaa !18
  %i.ck = getelementptr inbounds nuw i8, ptr %7, i64 9
  store i8 0, ptr %i.ck, align 1, !tbaa !19
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.w
  %.030 = phi ptr [ %7, %bb.z ], [ %3, %bb.w ]
  %i.cl = call fastcc noundef ptr @_ZL8decAddOpP9decNumberPKS_S2_P10decContexthPj(ptr noundef %0, ptr noundef nonnull %.0, ptr noundef nonnull %.030, ptr noundef nonnull %4, i8 noundef zeroext 0, ptr noundef %i.a) ; 0 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.y
  %.not44 = icmp eq ptr %.029, null
  br i1 %.not44, label %.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @uprv_free_78(ptr noundef nonnull %.029)
  br label %.thread

.thread:                                          ; preds = %bb.ac, %bb.ab
  %.pr = load i32, ptr %i.a, align 4, !tbaa !21   ; 2 uses
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
  store i32 0, ptr %i.cs, align 4, !tbaa !17
  store i32 1, ptr %0, align 4, !tbaa !18
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 0, ptr %i.ct, align 1, !tbaa !19
  store i8 32, ptr %i.cr, align 4, !tbaa !16
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
  store i32 0, ptr %i.a, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #15
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i8, ptr %i.f, align 4, !tbaa !16    ; 3 uses
  %i.h = zext i8 %i.g to i32                      ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i8, ptr %i.i, align 4, !tbaa !16    ; 3 uses
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
  %i.t = load i8, ptr %i.s, align 1, !tbaa !19
  %i.u = icmp eq i8 %i.t, 0
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = load i32, ptr %1, align 4, !tbaa !18
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
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !19
  %i.ae = icmp eq i8 %i.ad, 0
  br i1 %i.ae, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.af = load i32, ptr %2, align 4, !tbaa !18
  %i.ag = icmp eq i32 %i.af, 1
  %i.ah = and i32 %i.z, 48
  %i.ai = icmp eq i32 %i.ah, 0
  %or.cond303 = and i1 %i.ai, %i.ag
  br i1 %or.cond303, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.f
  %i.aj = load i32, ptr %4, align 4, !tbaa !21
  %i.ak = or i32 %i.aj, 128
  store i32 %i.ak, ptr %4, align 4, !tbaa !21
  br label %bb.ax

bb.k:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.am, align 4, !tbaa !17
  store i32 1, ptr %0, align 4, !tbaa !18
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 0, ptr %i.an, align 1, !tbaa !19
  %i.ao = or disjoint i8 %i.l, 64
  store i8 %i.ao, ptr %i.al, align 4, !tbaa !16
  br label %bb.ax

bb.l:                                             ; preds = %bb.a
  %i.ap = load i32, ptr %1, align 4, !tbaa !18    ; 3 uses
  %i.aq = load i32, ptr %2, align 4, !tbaa !18    ; 3 uses
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
  %.0255424 = ptrtoaddr ptr %.0255 to i64         ; 2 uses
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
  %i.bt = load i32, ptr %4, align 4, !tbaa !21
  %i.bu = or i32 %i.bt, 16
  store i32 %i.bu, ptr %4, align 4, !tbaa !21
  br label %bb.ar

bb.u:                                             ; preds = %bb.s
  %i.bv = sext i32 %i.bk to i64                   ; 2 uses
  %i.bw = getelementptr [8 x i8], ptr %.0247, i64 %i.bv ; 5 uses
  %i.bx = load i32, ptr %spec.select304, align 4, !tbaa !18 ; 2 uses
  %i.by = icmp sgt i32 %i.bx, 0
  br i1 %i.by, label %.lr.ph332.preheader, label %._crit_edge

.lr.ph332.preheader:                              ; preds = %bb.u
  %i.bz = getelementptr inbounds nuw i8, ptr %spec.select304, i64 9
  br label %.lr.ph332

.lr.ph332:                                        ; preds = %.lr.ph332.preheader, %bb.w
  %.0232331 = phi ptr [ %.lcssa433, %bb.w ], [ %i.bz, %.lr.ph332.preheader ] ; 2 uses
  %.0236330 = phi i32 [ %.lcssa432.a, %bb.w ], [ %i.bx, %.lr.ph332.preheader ] ; 3 uses
  %.0245329 = phi ptr [ %i.dd, %bb.w ], [ %.0255, %.lr.ph332.preheader ] ; 5 uses
  store i32 0, ptr %.0245329, align 4, !tbaa !21
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
  %i.ce = load i8, ptr %.1233327, align 1, !tbaa !19
  %i.cf = zext i8 %i.ce to i32
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr @_ZL9DECPOWERS, i64 %indvars.iv381
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !21
  %i.ci = mul i32 %i.ch, %i.cf
  %i.cj = add i32 %i.cd, %i.ci                    ; 2 uses
  store i32 %i.cj, ptr %.0245329, align 4, !tbaa !21
  %i.ck = getelementptr inbounds nuw i8, ptr %.1233327, i64 1
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !19
  %i.cm = zext i8 %i.cl to i32
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr @_ZL9DECPOWERS, i64 %indvars.iv381
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !21
  %i.cq = mul i32 %i.cp, %i.cm
  %i.cr = add i32 %i.cj, %i.cq                    ; 3 uses
  store i32 %i.cr, ptr %.0245329, align 4, !tbaa !21
  %indvars.iv.next382.1 = add nuw nsw i64 %indvars.iv381, 2 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.1233327, i64 2 ; 3 uses
  %i.ct = add nsw i32 %.1237326, -2               ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.v, !llvm.loop !92

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
  %i.cv = load i8, ptr %.1233327.epil.init, align 1, !tbaa !19
  %i.cw = zext i8 %i.cv to i32
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr @_ZL9DECPOWERS, i64 %indvars.iv381.epil.init
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !21
  %i.cz = mul i32 %i.cy, %i.cw
  %i.da = add i32 %.epil.init, %i.cz
  store i32 %i.da, ptr %.0245329, align 4, !tbaa !21
  %i.db = getelementptr inbounds nuw i8, ptr %.1233327.epil.init, i64 1
  %i.dc = add nsw i32 %.1237326.epil.init, -1
  br label %bb.w

bb.w:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %.1237326.lcssa = phi i32 [ %i.cu, %.unr-lcssa ], [ %.1237326.epil.init, %.epil.preheader ]
  %.lcssa433 = phi ptr [ %i.cs, %.unr-lcssa ], [ %i.db, %.epil.preheader ]
  %.lcssa432.a = phi i32 [ %i.ct, %.unr-lcssa ], [ %i.dc, %.epil.preheader ]
  %i.dd = getelementptr inbounds nuw i8, ptr %.0245329, i64 4 ; 2 uses
  %i.de = icmp sgt i32 %.1237326.lcssa, 1
  br i1 %i.de, label %.lr.ph332, label %._crit_edge, !llvm.loop !93

._crit_edge:                                      ; preds = %bb.w, %bb.u
  %.0245.lcssa = phi ptr [ %.0255, %bb.u ], [ %i.dd, %bb.w ] ; 2 uses
  %.0245.lcssa425 = ptrtoaddr ptr %.0245.lcssa to i64
  %i.df = getelementptr inbounds i8, ptr %.0245.lcssa, i64 -4 ; 2 uses
  %i.dg = load i32, ptr %spec.select, align 4, !tbaa !18 ; 2 uses
  %i.dh = icmp sgt i32 %i.dg, 0
  br i1 %i.dh, label %.lr.ph341.preheader, label %._crit_edge342

.lr.ph341.preheader:                              ; preds = %._crit_edge
  %i.di = getelementptr inbounds nuw i8, ptr %spec.select, i64 9
  br label %.lr.ph341

.lr.ph341:                                        ; preds = %.lr.ph341.preheader, %bb.y
  %.2234339 = phi ptr [ %.lcssa430, %bb.y ], [ %i.di, %.lr.ph341.preheader ] ; 2 uses
  %.2238338 = phi i32 [ %.lcssa429, %bb.y ], [ %i.dg, %.lr.ph341.preheader ] ; 3 uses
  %.0243337 = phi ptr [ %i.em, %bb.y ], [ %.0251, %.lr.ph341.preheader ] ; 5 uses
  store i32 0, ptr %.0243337, align 4, !tbaa !21
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
  %i.dn = load i8, ptr %.3235335, align 1, !tbaa !19
  %i.do = zext i8 %i.dn to i32
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr @_ZL9DECPOWERS, i64 %indvars.iv384
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !21
  %i.dr = mul i32 %i.dq, %i.do
  %i.ds = add i32 %i.dm, %i.dr                    ; 2 uses
  store i32 %i.ds, ptr %.0243337, align 4, !tbaa !21
  %i.dt = getelementptr inbounds nuw i8, ptr %.3235335, i64 1
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !19
  %i.dv = zext i8 %i.du to i32
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr @_ZL9DECPOWERS, i64 %indvars.iv384
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 4
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !21
  %i.dz = mul i32 %i.dy, %i.dv
  %i.ea = add i32 %i.ds, %i.dz                    ; 3 uses
  store i32 %i.ea, ptr %.0243337, align 4, !tbaa !21
  %indvars.iv.next385.1 = add nuw nsw i64 %indvars.iv384, 2 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.3235335, i64 2 ; 3 uses
  %i.ec = add nsw i32 %.3239334, -2               ; 3 uses
  %niter453.next.1 = add i64 %niter453, 2         ; 2 uses
  %niter453.ncmp.1 = icmp eq i64 %niter453.next.1, %unroll_iter452
  br i1 %niter453.ncmp.1, label %.unr-lcssa440, label %bb.x, !llvm.loop !94

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
  %i.ee = load i8, ptr %.3235335.epil.init, align 1, !tbaa !19
  %i.ef = zext i8 %i.ee to i32
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr @_ZL9DECPOWERS, i64 %indvars.iv384.epil.init
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !21
  %i.ei = mul i32 %i.eh, %i.ef
  %i.ej = add i32 %.epil.init445, %i.ei
  store i32 %i.ej, ptr %.0243337, align 4, !tbaa !21
  %i.ek = getelementptr inbounds nuw i8, ptr %.3235335.epil.init, i64 1
  %i.el = add nsw i32 %.3239334.epil.init, -1
  br label %bb.y

bb.y:                                             ; preds = %.unr-lcssa440, %.epil.preheader441
  %.3239334.lcssa = phi i32 [ %i.ed, %.unr-lcssa440 ], [ %.3239334.epil.init, %.epil.preheader441 ]
  %.lcssa430 = phi ptr [ %i.eb, %.unr-lcssa440 ], [ %i.ek, %.epil.preheader441 ]
  %.lcssa429 = phi i32 [ %i.ec, %.unr-lcssa440 ], [ %i.el, %.epil.preheader441 ]
  %i.em = getelementptr inbounds nuw i8, ptr %.0243337, i64 4 ; 2 uses
  %i.en = icmp sgt i32 %.3239334.lcssa, 1
  br i1 %i.en, label %.lr.ph341, label %._crit_edge342, !llvm.loop !95

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
  call void @llvm.memset.p0.i64(ptr align 8 %i.bw, i8 0, i64 %i.ez, i1 false), !tbaa !103
  br label %.preheader321

.preheader321:                                    ; preds = %.lr.ph346.preheader, %._crit_edge342
  %.not290356 = icmp ugt ptr %.0251, %i.eo
  br i1 %.not290356, label %.preheader, label %.lr.ph359

.lr.ph359:                                        ; preds = %.preheader321
  %i.fa = ptrtoint ptr %.0251 to i64
  %.not291348 = icmp ugt ptr %.0255, %i.df
  %i.fb = icmp slt i32 %i.az, 1
  %i.fc = add i64 %.0245.lcssa425, -3
  %i.fd = add i64 %.0255424, 4
  %i.fe = call i64 @llvm.umax.i64(i64 %i.fc, i64 %i.fd)
  %i.ff = xor i64 %.0255424, -1
  %i.fg = add i64 %i.fe, %i.ff                    ; 2 uses
  %i.fh = lshr i64 %i.fg, 2
  %i.fi = add nuw nsw i64 %i.fh, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.fg, 12
  %n.vec = and i64 %i.fi, 9223372036854775804     ; 4 uses
  %i.fj = shl i64 %n.vec, 3
  %i.fk = shl i64 %n.vec, 2
  %i.fl = getelementptr i8, ptr %.0255, i64 %i.fk
  %cmp.n = icmp eq i64 %i.fi, %n.vec
  br label %bb.z

.preheader:                                       ; preds = %.loopexit, %.preheader321
  br i1 %i.eq, label %.lr.ph365, label %._crit_edge366

bb.z:                                             ; preds = %.lr.ph359, %.loopexit
  %.0241358 = phi i32 [ 18, %.lr.ph359 ], [ %.1242, %.loopexit ] ; 2 uses
  %.1244357 = phi ptr [ %.0251, %.lr.ph359 ], [ %i.hf, %.loopexit ] ; 4 uses
  br i1 %.not291348, label %._crit_edge353, label %.lr.ph352

.lr.ph352:                                        ; preds = %bb.z
  %i.fm = ptrtoint ptr %.1244357 to i64
  %i.fn = sub i64 %i.fm, %i.fa
  %i.fo = ashr exact i64 %i.fn, 2
  %i.fp = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.fo ; 3 uses
  %i.fq = load i32, ptr %.1244357, align 4, !tbaa !21
  %i.fr = zext i32 %i.fq to i64                   ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph352
  %i.fs = getelementptr i8, ptr %i.fp, i64 %i.fj
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.fr, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ft = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.fp, i64 %i.ft ; 3 uses
  %i.fu = shl i64 %index, 2
  %next.gep424 = getelementptr i8, ptr %.0255, i64 %i.fu ; 2 uses
  %i.fv = getelementptr i8, ptr %next.gep424, i64 8
  %wide.load = load <2 x i32>, ptr %next.gep424, align 4, !tbaa !21
  %wide.load425 = load <2 x i32>, ptr %i.fv, align 4, !tbaa !21
  %i.fw = zext <2 x i32> %wide.load to <2 x i64>
  %i.fx = zext <2 x i32> %wide.load425 to <2 x i64>
  %i.fy = mul nuw <2 x i64> %broadcast.splat, %i.fw
  %i.fz = mul nuw <2 x i64> %broadcast.splat, %i.fx
  %i.ga = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load426 = load <2 x i64>, ptr %next.gep, align 8, !tbaa !103
  %wide.load427 = load <2 x i64>, ptr %i.ga, align 8, !tbaa !103
  %i.gb = add <2 x i64> %i.fy, %wide.load426
  %i.gc = add <2 x i64> %i.fz, %wide.load427
  store <2 x i64> %i.gb, ptr %next.gep, align 8, !tbaa !103
  store <2 x i64> %i.gc, ptr %i.ga, align 8, !tbaa !103
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gd = icmp eq i64 %index.next, %n.vec
  br i1 %i.gd, label %middle.block, label %vector.body, !llvm.loop !96

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge353, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph352, %middle.block
  %.1228350.ph = phi ptr [ %i.fp, %.lr.ph352 ], [ %i.fs, %middle.block ]
  %.1246349.ph = phi ptr [ %.0255, %.lr.ph352 ], [ %i.fl, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.1228350 = phi ptr [ %i.gk, %scalar.ph ], [ %.1228350.ph, %scalar.ph.preheader ] ; 3 uses
  %.1246349 = phi ptr [ %i.gj, %scalar.ph ], [ %.1246349.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ge = load i32, ptr %.1246349, align 4, !tbaa !21
  %i.gf = zext i32 %i.ge to i64
  %i.gg = mul nuw i64 %i.fr, %i.gf
  %i.gh = load i64, ptr %.1228350, align 8, !tbaa !103
  %i.gi = add i64 %i.gg, %i.gh
  store i64 %i.gi, ptr %.1228350, align 8, !tbaa !103
  %i.gj = getelementptr inbounds nuw i8, ptr %.1246349, i64 4 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.1228350, i64 8
  %.not291 = icmp ugt ptr %i.gj, %i.df
  br i1 %.not291, label %._crit_edge353, label %scalar.ph, !llvm.loop !97

._crit_edge353:                                   ; preds = %scalar.ph, %middle.block, %bb.z
  %i.gl = icmp sgt i32 %.0241358, 1
  %i.gm = add nsw i32 %.0241358, -1
  %.not292 = icmp ne ptr %.1244357, %i.eo
  %or.cond305.not371 = select i1 %i.gl, i1 %.not292, i1 false ; 2 uses
  %brmerge = select i1 %or.cond305.not371, i1 true, i1 %i.fb
  %.mux = select i1 %or.cond305.not371, i32 %i.gm, i32 18
  br i1 %brmerge, label %.loopexit, label %.lr.ph355

.lr.ph355:                                        ; preds = %._crit_edge353, %bb.ad
  %.2229354 = phi ptr [ %i.hd, %bb.ad ], [ %i.bw, %._crit_edge353 ] ; 5 uses
  %i.gn = load i64, ptr %.2229354, align 8, !tbaa !103 ; 6 uses
  %i.go = icmp ult i64 %i.gn, 1000000000
  br i1 %i.go, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph355
  %i.gp = udiv i64 %i.gn, 1000000000              ; 2 uses
  %i.gq = icmp ult i64 %i.gn, 1000000000000000000
  br i1 %i.gq, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gr = udiv i64 %i.gn, 1000000000000000000     ; 3 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.2229354, i64 16 ; 2 uses
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !103
  %i.gu = add i64 %i.gt, %i.gr
  store i64 %i.gu, ptr %i.gs, align 8, !tbaa !103
  %.neg293 = mul i64 %i.gr, -1000000000000000000
  %i.gv = add i64 %.neg293, %i.gn
  %.neg294 = mul nuw nsw i64 %i.gr, 3294967296
  %i.gw = add nuw nsw i64 %.neg294, %i.gp
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  %i.gx = phi i64 [ %i.gv, %bb.ab ], [ %i.gn, %bb.aa ]
  %.0240.in = phi i64 [ %i.gw, %bb.ab ], [ %i.gp, %bb.aa ]
  %i.gy = and i64 %.0240.in, 4294967295           ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %.2229354, i64 8 ; 2 uses
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !103
  %i.hb = add i64 %i.ha, %i.gy
  store i64 %i.hb, ptr %i.gz, align 8, !tbaa !103
  %.neg295 = mul nsw i64 %i.gy, -1000000000
  %i.hc = add i64 %i.gx, %.neg295
  store i64 %i.hc, ptr %.2229354, align 8, !tbaa !103
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph355, %bb.ac
  %i.hd = getelementptr inbounds nuw i8, ptr %.2229354, i64 8 ; 2 uses
  %i.he = icmp ult ptr %i.hd, %i.ep
  br i1 %i.he, label %.lr.ph355, label %.loopexit, !llvm.loop !98

.loopexit:                                        ; preds = %bb.ad, %._crit_edge353
  %.1242 = phi i32 [ %.mux, %._crit_edge353 ], [ 18, %bb.ad ]
  %i.hf = getelementptr inbounds nuw i8, ptr %.1244357, i64 4 ; 2 uses
  %.not290 = icmp ugt ptr %i.hf, %i.eo
  br i1 %.not290, label %.preheader, label %bb.z, !llvm.loop !99

.lr.ph365:                                        ; preds = %.preheader, %.lr.ph365
  %.3364 = phi ptr [ %i.iq, %.lr.ph365 ], [ %i.bw, %.preheader ] ; 2 uses
  %.0230363 = phi ptr [ %i.ip, %.lr.ph365 ], [ %.0247, %.preheader ] ; 10 uses
  %i.hg = load i64, ptr %.3364, align 8, !tbaa !103
  %i.hh = trunc i64 %i.hg to i32                  ; 9 uses
  %i.hi = udiv i32 %i.hh, 10                      ; 2 uses
  %.neg = mul i32 %i.hi, 246
  %i.hj = add i32 %.neg, %i.hh
  %i.hk = trunc i32 %i.hj to i8
  store i8 %i.hk, ptr %.0230363, align 1, !tbaa !19
  %i.hl = getelementptr inbounds nuw i8, ptr %.0230363, i64 1
  %i.hm = udiv i32 %i.hh, 100                     ; 2 uses
  %.neg.1 = mul i32 %i.hm, 246
  %i.hn = add i32 %.neg.1, %i.hi
  %i.ho = trunc i32 %i.hn to i8
  store i8 %i.ho, ptr %i.hl, align 1, !tbaa !19
  %i.hp = getelementptr inbounds nuw i8, ptr %.0230363, i64 2
  %i.hq = udiv i32 %i.hh, 1000                    ; 2 uses
  %.neg.2 = mul nuw nsw i32 %i.hq, 246
  %i.hr = add nuw nsw i32 %.neg.2, %i.hm
  %i.hs = trunc i32 %i.hr to i8
  store i8 %i.hs, ptr %i.hp, align 1, !tbaa !19
  %i.ht = getelementptr inbounds nuw i8, ptr %.0230363, i64 3
  %i.hu = udiv i32 %i.hh, 10000                   ; 2 uses
  %.neg.3 = mul nuw nsw i32 %i.hu, 246
  %i.hv = add nuw nsw i32 %.neg.3, %i.hq
  %i.hw = trunc i32 %i.hv to i8
  store i8 %i.hw, ptr %i.ht, align 1, !tbaa !19
  %i.hx = getelementptr inbounds nuw i8, ptr %.0230363, i64 4
  %i.hy = udiv i32 %i.hh, 100000                  ; 2 uses
  %.neg.4 = mul nuw nsw i32 %i.hy, 246
  %i.hz = add nuw nsw i32 %.neg.4, %i.hu
  %i.ia = trunc i32 %i.hz to i8
  store i8 %i.ia, ptr %i.hx, align 1, !tbaa !19
  %i.ib = getelementptr inbounds nuw i8, ptr %.0230363, i64 5
  %i.ic = udiv i32 %i.hh, 1000000                 ; 2 uses
  %.neg.5 = mul nuw nsw i32 %i.ic, 246
  %i.id = add nuw nsw i32 %.neg.5, %i.hy
  %i.ie = trunc i32 %i.id to i8
  store i8 %i.ie, ptr %i.ib, align 1, !tbaa !19
  %i.if = getelementptr inbounds nuw i8, ptr %.0230363, i64 6
  %i.ig = udiv i32 %i.hh, 10000000                ; 2 uses
  %.neg.6 = mul nuw nsw i32 %i.ig, 246
  %i.ih = add nuw nsw i32 %.neg.6, %i.ic
  %i.ii = trunc i32 %i.ih to i8
  store i8 %i.ii, ptr %i.if, align 1, !tbaa !19
  %i.ij = getelementptr inbounds nuw i8, ptr %.0230363, i64 7
  %i.ik = udiv i32 %i.hh, 100000000               ; 2 uses
  %.neg.7 = mul nuw nsw i32 %i.ik, 246
  %i.il = add nuw nsw i32 %.neg.7, %i.ig
  %i.im = trunc i32 %i.il to i8
  store i8 %i.im, ptr %i.ij, align 1, !tbaa !19
  %i.in = getelementptr inbounds nuw i8, ptr %.0230363, i64 8
  %i.io = trunc nuw nsw i32 %i.ik to i8
  store i8 %i.io, ptr %i.in, align 1, !tbaa !19
  %i.ip = getelementptr inbounds nuw i8, ptr %.0230363, i64 9 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %.3364, i64 8 ; 2 uses
  %i.ir = icmp ult ptr %i.iq, %i.ep
  br i1 %i.ir, label %.lr.ph365, label %._crit_edge366, !llvm.loop !100

._crit_edge366:                                   ; preds = %.lr.ph365, %.preheader
  %.0230.lcssa = phi ptr [ %.0247, %.preheader ], [ %i.ip, %.lr.ph365 ]
  %i.is = ptrtoint ptr %.0230.lcssa to i64
  %i.it = ptrtoint ptr %.0247 to i64
end_hunk_0
begin_hunk_1_@_Z22uprv_decNumberClass_78PK9decNumberP10decContext:bb.a
  %i.g = and i8 %i.b, 112
  %.not.i = icmp ne i8 %i.g, 0                    ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 9
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !19 ; 2 uses
  br i1 %.not.i, label %uprv_decNumberIsNormal_78.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = icmp eq i8 %.pre, 0
  %.pre.i = load i32, ptr %0, align 4, !tbaa !18  ; 2 uses
  %i.i = icmp eq i32 %.pre.i, 1
  %or.cond.i = select i1 %i.h, i1 %i.i, i1 false
  br i1 %or.cond.i, label %uprv_decNumberIsNormal_78.exit.thread.thread, label %uprv_decNumberIsNormal_78.exit

uprv_decNumberIsNormal_78.exit:                   ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !17
  %i.l = add nsw i32 %i.k, %.pre.i
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i32, ptr %i.m, align 4, !tbaa !28
  %.not9.i.not = icmp sgt i32 %i.l, %i.n
  br i1 %.not9.i.not, label %bb.g, label %uprv_decNumberIsNormal_78.exit.thread

bb.g:                                             ; preds = %uprv_decNumberIsNormal_78.exit
  %.not15 = icmp sgt i8 %i.b, -1
  %.19 = select i1 %.not15, i32 8, i32 3
  br label %bb.j

uprv_decNumberIsNormal_78.exit.thread:            ; preds = %bb.e, %uprv_decNumberIsNormal_78.exit
  %i.o = icmp eq i8 %.pre, 0
  br i1 %i.o, label %uprv_decNumberIsNormal_78.exit.thread.thread, label %bb.i

uprv_decNumberIsNormal_78.exit.thread.thread:     ; preds = %bb.f, %uprv_decNumberIsNormal_78.exit.thread
  %i.p = load i32, ptr %0, align 4, !tbaa !18
  %i.q = icmp ne i32 %i.p, 1
  %brmerge = or i1 %.not.i, %i.q
  br i1 %brmerge, label %bb.i, label %bb.h

bb.h:                                             ; preds = %uprv_decNumberIsNormal_78.exit.thread.thread
  %.not14 = icmp sgt i8 %i.b, -1
  %.20 = select i1 %.not14, i32 6, i32 5
  br label %bb.j

bb.i:                                             ; preds = %uprv_decNumberIsNormal_78.exit.thread.thread, %uprv_decNumberIsNormal_78.exit.thread
  %.not13 = icmp sgt i8 %i.b, -1
  %.21 = select i1 %.not13, i32 7, i32 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ %.20, %bb.h ], [ 1, %bb.b ], [ %., %bb.d ], [ 0, %bb.c ], [ %.19, %bb.g ], [ %.21, %bb.i ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @uprv_decNumberClassToString_78(i32 noundef %0) local_unnamed_addr #11 {
bb.a:
  %i.a = icmp ult i32 %0, 10
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.uprv_decNumberClassToString_78, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.14, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef ptr @uprv_decNumberCopyNegate_78(ptr nofree noundef returned captures(address, ret: address, provenance) %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 4 uses
  %i.b = ptrtoaddr ptr %0 to i64
  %i.c = icmp eq ptr %0, %1
  br i1 %i.c, label %uprv_decNumberCopy_78.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i8, ptr %i.d, align 4, !tbaa !16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.e, ptr %i.f, align 4, !tbaa !16
  %i.g = load <2 x i32>, ptr %1, align 4, !tbaa !21
  store <2 x i32> %i.g, ptr %0, align 4, !tbaa !21
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 9 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !19
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.i, ptr %i.j, align 1, !tbaa !19
  %i.k = load i32, ptr %1, align 4, !tbaa !18     ; 3 uses
  %i.l = icmp sgt i32 %i.k, 1
  br i1 %i.l, label %bb.c, label %uprv_decNumberCopy_78.exit

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 5 uses
  %i.n = icmp samesign ult i32 %i.k, 50
  %i.o = zext nneg i32 %i.k to i64                ; 2 uses
  br i1 %i.n, label %bb.d, label %iter.check

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr @_ZL8d2utable, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !19
  %i.r = zext i8 %i.q to i64
  br label %iter.check

iter.check:                                       ; preds = %bb.c, %bb.d
  %.pn.i = phi i64 [ %i.r, %bb.d ], [ %i.o, %bb.c ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 %.pn.i
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 5 uses
  %i.u = add i64 %.pn.i, %i.a
  %i.v = add i64 %i.u, 9
  %i.w = add i64 %i.a, 11
  %umax = tail call i64 @llvm.umax.i64(i64 %i.v, i64 %i.w)
  %i.x = add i64 %umax, -10
  %i.y = sub i64 %i.x, %i.a                       ; 7 uses
  %min.iters.check = icmp ult i64 %i.y, 8
  %i.z = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.z, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check6 = icmp ult i64 %i.y, 32
  br i1 %min.iters.check6, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.aa = and i64 %i.y, 24
  %n.vec = and i64 %i.y, -32                      ; 5 uses
  %i.ab = getelementptr i8, ptr %i.m, i64 %n.vec
  %i.ac = getelementptr i8, ptr %i.t, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.m, i64 %index ; 2 uses
  %next.gep7 = getelementptr i8, ptr %i.t, i64 %index ; 2 uses
  %i.ad = getelementptr i8, ptr %next.gep7, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep7, align 1, !tbaa !19
  %wide.load8 = load <16 x i8>, ptr %i.ad, align 1, !tbaa !19
  %i.ae = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !19
  store <16 x i8> %wide.load8, ptr %i.ae, align 1, !tbaa !19
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !179

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %uprv_decNumberCopy_78.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.aa, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !34

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec10 = and i64 %i.y, -8                     ; 4 uses
  %i.ag = getelementptr i8, ptr %i.m, i64 %n.vec10
  %i.ah = getelementptr i8, ptr %i.t, i64 %n.vec10
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index11 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next15, %vec.epilog.vector.body ] ; 3 uses
  %next.gep12 = getelementptr i8, ptr %i.m, i64 %index11
  %next.gep13 = getelementptr i8, ptr %i.t, i64 %index11
  %wide.load14 = load <8 x i8>, ptr %next.gep13, align 1, !tbaa !19
  store <8 x i8> %wide.load14, ptr %next.gep12, align 1, !tbaa !19
  %index.next15 = add nuw i64 %index11, 8         ; 2 uses
  %i.ai = icmp eq i64 %index.next15, %n.vec10
  br i1 %i.ai, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !180

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n16 = icmp eq i64 %i.y, %n.vec10
  br i1 %cmp.n16, label %uprv_decNumberCopy_78.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.032.i.ph = phi ptr [ %i.m, %iter.check ], [ %i.ab, %vec.epilog.iter.check ], [ %i.ag, %vec.epilog.middle.block ]
  %.02631.i.ph = phi ptr [ %i.t, %iter.check ], [ %i.ac, %vec.epilog.iter.check ], [ %i.ah, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.032.i = phi ptr [ %i.al, %.lr.ph.i ], [ %.032.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.02631.i = phi ptr [ %i.ak, %.lr.ph.i ], [ %.02631.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.aj = load i8, ptr %.02631.i, align 1, !tbaa !19
  store i8 %i.aj, ptr %.032.i, align 1, !tbaa !19
  %i.ak = getelementptr inbounds nuw i8, ptr %.02631.i, i64 1 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.032.i, i64 1
  %i.am = icmp ult ptr %i.ak, %i.s
  br i1 %i.am, label %.lr.ph.i, label %uprv_decNumberCopy_78.exit, !llvm.loop !181

uprv_decNumberCopy_78.exit:                       ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.a, %bb.b
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 4, !tbaa !16
  %i.ap = xor i8 %i.ao, -128
  store i8 %i.ap, ptr %i.an, align 4, !tbaa !16
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef ptr @uprv_decNumberGetBCD_78(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef returned writeonly captures(address, ret: address, provenance) %1) local_unnamed_addr #0 {
bb.a:
  %2 = ptrtoaddr ptr %1 to i64                    ; 5 uses
  %i.a = load i32, ptr %0, align 4, !tbaa !18     ; 2 uses
  %.not13 = icmp slt i32 %i.a, 1
  br i1 %.not13, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.a
  %i.b = zext nneg i32 %i.a to i64                ; 3 uses
  %i.c = getelementptr i8, ptr %1, i64 %i.b       ; 2 uses
  %.01012 = getelementptr i8, ptr %i.c, i64 -1    ; 6 uses
  %i.d = getelementptr i8, ptr %0, i64 9          ; 7 uses
  %i.e = add i64 %2, %i.b                         ; 2 uses
  %i.f = sub i64 1, %i.e
  %i.g = sub i64 0, %2
  %i.h = tail call i64 @llvm.umax.i64(i64 %i.f, i64 %i.g)
  %i.i = add i64 %i.h, %i.e                       ; 7 uses
  %min.iters.check = icmp ult i64 %i.i, 8
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.j = add i64 %2, %i.b                         ; 2 uses
  %i.k = add i64 %i.j, -2
  %i.l = add i64 %2, -1
  %i.m = tail call i64 @llvm.umin.i64(i64 %i.k, i64 %i.l) ; 2 uses
  %i.n = add i64 %i.m, 1
  %i.o = sub i64 %i.n, %2
  %i.p = getelementptr i8, ptr %1, i64 %i.o
  %i.q = add i64 %i.j, 8
  %i.r = sub i64 %i.q, %i.m
  %i.s = getelementptr i8, ptr %0, i64 %i.r
  %bound0 = icmp ult ptr %i.p, %i.s
  %bound1 = icmp ult ptr %i.d, %i.c
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check17 = icmp ult i64 %i.i, 32
  br i1 %min.iters.check17, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.t = and i64 %i.i, 24
  %n.vec = and i64 %i.i, -32                      ; 5 uses
  %i.u = sub i64 0, %n.vec
  %i.v = getelementptr i8, ptr %.01012, i64 %i.u
  %i.w = getelementptr i8, ptr %i.d, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.x = sub i64 0, %index
  %next.gep = getelementptr i8, ptr %.01012, i64 %i.x ; 2 uses
  %next.gep18 = getelementptr i8, ptr %i.d, i64 %index ; 2 uses
  %i.y = getelementptr i8, ptr %next.gep18, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep18, align 1, !tbaa !19, !alias.scope !188
  %wide.load19 = load <16 x i8>, ptr %i.y, align 1, !tbaa !19, !alias.scope !188
  %i.z = getelementptr i8, ptr %next.gep, i64 -15
  %i.aa = getelementptr i8, ptr %next.gep, i64 -31
  %reverse = shufflevector <16 x i8> %wide.load, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse20 = shufflevector <16 x i8> %wide.load19, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %reverse, ptr %i.z, align 1, !tbaa !19, !alias.scope !189, !noalias !188
  store <16 x i8> %reverse20, ptr %i.aa, align 1, !tbaa !19, !alias.scope !189, !noalias !188
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !185

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.t, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !34

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec22 = and i64 %i.i, -8                     ; 4 uses
  %i.ac = sub i64 0, %n.vec22
  %i.ad = getelementptr i8, ptr %.01012, i64 %i.ac
  %i.ae = getelementptr i8, ptr %i.d, i64 %n.vec22
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index23 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next28, %vec.epilog.vector.body ] ; 3 uses
  %i.af = sub i64 0, %index23
  %next.gep24 = getelementptr i8, ptr %.01012, i64 %i.af
  %next.gep25 = getelementptr i8, ptr %i.d, i64 %index23
  %wide.load26 = load <8 x i8>, ptr %next.gep25, align 1, !tbaa !19, !alias.scope !188
  %i.ag = getelementptr i8, ptr %next.gep24, i64 -7
  %reverse27 = shufflevector <8 x i8> %wide.load26, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %reverse27, ptr %i.ag, align 1, !tbaa !19, !alias.scope !189, !noalias !188
  %index.next28 = add nuw i64 %index23, 8         ; 2 uses
  %i.ah = icmp eq i64 %index.next28, %n.vec22
  br i1 %i.ah, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !186

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n29 = icmp eq i64 %i.i, %n.vec22
  br i1 %cmp.n29, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.01015.ph = phi ptr [ %.01012, %iter.check ], [ %.01012, %vector.memcheck ], [ %i.v, %vec.epilog.iter.check ], [ %i.ad, %vec.epilog.middle.block ]
  %.014.ph = phi ptr [ %i.d, %iter.check ], [ %i.d, %vector.memcheck ], [ %i.w, %vec.epilog.iter.check ], [ %i.ae, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.01015 = phi ptr [ %.010, %.lr.ph ], [ %.01015.ph, %.lr.ph.preheader ] ; 2 uses
  %.014 = phi ptr [ %i.aj, %.lr.ph ], [ %.014.ph, %.lr.ph.preheader ] ; 2 uses
  %i.ai = load i8, ptr %.014, align 1, !tbaa !19
  store i8 %i.ai, ptr %.01015, align 1, !tbaa !19
  %i.aj = getelementptr inbounds nuw i8, ptr %.014, i64 1
  %.010 = getelementptr inbounds i8, ptr %.01015, i64 -1 ; 2 uses
  %.not = icmp ult ptr %.010, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !187

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret ptr %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef ptr @uprv_decNumberSetBCD_78(ptr nofree noundef returned captures(ret: address, provenance) %0, ptr nofree noundef readonly captures(address) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 7 uses
  %i.b = load i32, ptr %0, align 4, !tbaa !18     ; 3 uses
  %i.c = icmp slt i32 %i.b, 50
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = sext i32 %i.b to i64
  %i.e = getelementptr inbounds i8, ptr @_ZL8d2utable, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !19
  %i.g = zext i8 %i.f to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.g, %bb.b ], [ %i.b, %bb.a ]
  %i.i = zext i32 %2 to i64                       ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %i.i
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.c
  %i.k = zext nneg i32 %i.h to i64                ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 6 uses
  %i.n = add i64 %i.a, %i.i
  %i.o = add i64 %i.a, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.n, i64 %i.o)
  %i.p = sub i64 %umax, %i.a                      ; 7 uses
  %min.iters.check = icmp ult i64 %i.p, 8
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.q = add i64 %i.a, %i.i
  %i.r = add i64 %i.a, 1
  %i.s = tail call i64 @llvm.umax.i64(i64 %i.q, i64 %i.r) ; 2 uses
  %i.t = add i64 %i.a, %i.k
  %i.u = add i64 %i.t, 9
  %i.v = sub i64 %i.u, %i.s
  %i.w = getelementptr i8, ptr %0, i64 %i.v
  %i.x = getelementptr i8, ptr %0, i64 %i.k
  %i.y = getelementptr i8, ptr %i.x, i64 9
  %i.z = sub i64 %i.s, %i.a
  %i.aa = getelementptr i8, ptr %1, i64 %i.z
  %bound0 = icmp ult ptr %i.w, %i.aa
  %bound1 = icmp ult ptr %1, %i.y
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check20 = icmp ult i64 %i.p, 32
  br i1 %min.iters.check20, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ab = and i64 %i.p, 24
  %n.vec = and i64 %i.p, -32                      ; 5 uses
  %i.ac = getelementptr i8, ptr %1, i64 %n.vec
  %i.ad = sub i64 0, %n.vec
  %i.ae = getelementptr i8, ptr %i.m, i64 %i.ad
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %1, i64 %index ; 2 uses
  %i.af = sub i64 0, %index
  %next.gep21 = getelementptr i8, ptr %i.m, i64 %i.af ; 2 uses
  %i.ag = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !19, !alias.scope !196
  %wide.load22 = load <16 x i8>, ptr %i.ag, align 1, !tbaa !19, !alias.scope !196
  %i.ah = getelementptr i8, ptr %next.gep21, i64 -15
  %i.ai = getelementptr i8, ptr %next.gep21, i64 -31
  %reverse = shufflevector <16 x i8> %wide.load, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse23 = shufflevector <16 x i8> %wide.load22, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %reverse, ptr %i.ah, align 1, !tbaa !19, !alias.scope !197, !noalias !196
  store <16 x i8> %reverse23, ptr %i.ai, align 1, !tbaa !19, !alias.scope !197, !noalias !196
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !193

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ab, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !34

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec25 = and i64 %i.p, -8                     ; 4 uses
  %i.ak = getelementptr i8, ptr %1, i64 %n.vec25
  %i.al = sub i64 0, %n.vec25
  %i.am = getelementptr i8, ptr %i.m, i64 %i.al
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index26 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next31, %vec.epilog.vector.body ] ; 3 uses
  %next.gep27 = getelementptr i8, ptr %1, i64 %index26
  %i.an = sub i64 0, %index26
  %next.gep28 = getelementptr i8, ptr %i.m, i64 %i.an
  %wide.load29 = load <8 x i8>, ptr %next.gep27, align 1, !tbaa !19, !alias.scope !196
  %i.ao = getelementptr i8, ptr %next.gep28, i64 -7
  %reverse30 = shufflevector <8 x i8> %wide.load29, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %reverse30, ptr %i.ao, align 1, !tbaa !19, !alias.scope !197, !noalias !196
  %index.next31 = add nuw i64 %index26, 8         ; 2 uses
  %i.ap = icmp eq i64 %index.next31, %n.vec25
  br i1 %i.ap, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !194

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n32 = icmp eq i64 %i.p, %n.vec25
  br i1 %cmp.n32, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.017.ph = phi ptr [ %1, %iter.check ], [ %1, %vector.memcheck ], [ %i.ac, %vec.epilog.iter.check ], [ %i.ak, %vec.epilog.middle.block ]
  %.01416.ph = phi ptr [ %i.m, %iter.check ], [ %i.m, %vector.memcheck ], [ %i.ae, %vec.epilog.iter.check ], [ %i.am, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.017 = phi ptr [ %i.ar, %.lr.ph ], [ %.017.ph, %.lr.ph.preheader ] ; 2 uses
  %.01416 = phi ptr [ %i.as, %.lr.ph ], [ %.01416.ph, %.lr.ph.preheader ] ; 2 uses
  %i.aq = load i8, ptr %.017, align 1, !tbaa !19
  store i8 %i.aq, ptr %.01416, align 1, !tbaa !19
  %i.ar = getelementptr inbounds nuw i8, ptr %.017, i64 1 ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %.01416, i64 -1
  %i.at = icmp ult ptr %i.ar, %i.j
  br i1 %i.at, label %.lr.ph, label %._crit_edge, !llvm.loop !195

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.c
  store i32 %2, ptr %0, align 4, !tbaa !18
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 2) i32 @uprv_decNumberIsSubnormal_78(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 4, !tbaa !16
  %i.c = and i8 %i.b, 112
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.e = load i8, ptr %i.d, align 1, !tbaa !19
  %i.f = icmp eq i8 %i.e, 0
  %.pre = load i32, ptr %0, align 4, !tbaa !18    ; 2 uses
  %i.g = icmp eq i32 %.pre, 1
  %or.cond = select i1 %i.f, i1 %i.g, i1 false
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !17
  %i.j = add nsw i32 %.pre, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i32, ptr %i.k, align 4, !tbaa !28
  %.not9 = icmp sle i32 %i.j, %i.l
  %. = zext i1 %.not9 to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.a ], [ %., %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define noundef ptr @uprv_decNumberTrim_78(ptr nofree noundef returned captures(address, ret: address, provenance) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %1 = alloca %struct.decContext, align 4         ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  %i.b = call ptr @uprv_decContextDefault_78(ptr noundef nonnull %1, i32 noundef 0) ; 0 uses
  %i.c = call fastcc noundef ptr @_ZL7decTrimP9decNumberP10decContexthhPi(ptr noundef %0, ptr noundef nonnull %1, i8 noundef zeroext 0, i8 noundef zeroext 1, ptr noundef %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @uprv_decNumberVersion_78() local_unnamed_addr #11 {
bb.a:
  ret ptr @.str.15
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @_ZL13decUnitAddSubPKhiS0_iiPhi(ptr nofree noundef readonly captures(address) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef range(i32 0, -2147483648) %3, i32 noundef %4, ptr noundef %5, i32 noundef %6) unnamed_addr #0 {
bb.a:
  %i.a = sext i32 %1 to i64                       ; 3 uses
  %i.b = getelementptr inbounds i8, ptr %5, i64 %i.a ; 3 uses
  %i.c = zext nneg i32 %3 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 %i.c ; 2 uses
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %.loopexit154, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = sext i32 %4 to i64                       ; 3 uses
  %i.f = getelementptr inbounds i8, ptr %i.d, i64 %i.e ; 3 uses
  %i.g = icmp ne ptr %0, %5
  %.not144 = icmp sgt i32 %4, %1
  %or.cond = or i1 %.not144, %i.g
  %i.h = getelementptr inbounds i8, ptr %5, i64 %i.e ; 2 uses
  br i1 %or.cond, label %.preheader153, label %bb.c

.preheader153:                                    ; preds = %bb.b
  %i.i = icmp sgt i32 %4, 0
  br i1 %i.i, label %.lr.ph, label %.loopexit154

.lr.ph:                                           ; preds = %.preheader153
  %i.j = getelementptr inbounds i8, ptr %0, i64 %i.a
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds i8, ptr %0, i64 %i.e
  br label %.loopexit154

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %.0121156 = phi ptr [ %0, %.lr.ph ], [ %i.n, %bb.f ] ; 3 uses
  %.0126155 = phi ptr [ %5, %.lr.ph ], [ %i.o, %bb.f ] ; 2 uses
  %i.l = icmp ult ptr %.0121156, %i.j
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = load i8, ptr %.0121156, align 1, !tbaa !19
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %storemerge = phi i8 [ %i.m, %bb.e ], [ 0, %bb.d ]
  store i8 %storemerge, ptr %.0126155, align 1, !tbaa !19
  %i.n = getelementptr inbounds nuw i8, ptr %.0121156, i64 1 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.0126155, i64 1 ; 3 uses
  %i.p = icmp ult ptr %i.o, %i.h
  br i1 %i.p, label %bb.d, label %.loopexit154, !llvm.loop !198

.loopexit154:                                     ; preds = %bb.f, %.preheader153, %bb.c, %bb.a
  %.1127 = phi ptr [ %i.h, %bb.c ], [ %5, %bb.a ], [ %5, %.preheader153 ], [ %i.o, %bb.f ] ; 3 uses
  %.1122 = phi ptr [ %i.k, %bb.c ], [ %0, %bb.a ], [ %0, %.preheader153 ], [ %i.n, %bb.f ] ; 2 uses
  %.0119 = phi ptr [ %i.f, %bb.c ], [ %i.d, %bb.a ], [ %i.f, %.preheader153 ], [ %i.f, %bb.f ] ; 3 uses
  %i.q = icmp ugt ptr %.0119, %i.b                ; 2 uses
  %spec.select = select i1 %i.q, ptr %i.b, ptr %.0119 ; 2 uses
  %spec.select150 = select i1 %i.q, ptr %.0119, ptr %i.b ; 4 uses
  %i.r = icmp ult ptr %.1127, %spec.select
  br i1 %i.r, label %.lr.ph162, label %._crit_edge
end_hunk_1
