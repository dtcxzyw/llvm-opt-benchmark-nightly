Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/xhistogram?download=true
inline.NumInlined: 10
inline.NumDeleted: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.s_xpparam = type { i64, ptr, i64, ptr, i64 }
%struct.histindex = type { ptr, ptr, %struct.s_chastore, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.s_chastore = type { ptr, ptr, i64, i64, ptr, ptr, i64 }

; Function Attrs: nounwind uwtable
define dso_local i32 @xdl_do_histogram_diff(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.c = trunc i64 %i.b to i32
  %i.d = add i32 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !20
  %i.g = sub nsw i64 %i.f, %i.b
  %i.h = trunc i64 %i.g to i32
  %i.i = add i32 %i.h, 1
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.k = load i64, ptr %i.j, align 8, !tbaa !21   ; 2 uses
  %i.l = trunc i64 %i.k to i32
  %i.m = add i32 %i.l, 1
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.o = load i64, ptr %i.n, align 8, !tbaa !22
  %i.p = sub nsw i64 %i.o, %i.k
  %i.q = trunc i64 %i.p to i32
  %i.r = add i32 %i.q, 1
  %i.s = tail call fastcc i32 @histogram_diff(ptr noundef %0, ptr noundef %1, i32 noundef %i.d, i32 noundef %i.i, i32 noundef %i.m, i32 noundef %i.r)
  ret i32 %i.s
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @histogram_diff(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.s_xpparam, align 8          ; 5 uses
  %7 = alloca %struct.histindex, align 8          ; 20 uses
  %i.a = icmp slt i32 %3, 1
  %i.b = icmp slt i32 %5, 1
  %or.cond114 = and i1 %i.a, %i.b
  br i1 %or.cond114, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 112 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 120
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 80 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 84
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 88
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 72 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 100 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 92 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 104 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 108 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.ah
  %.048118 = phi i32 [ %5, %.lr.ph ], [ %i.he, %bb.ah ] ; 7 uses
  %.049117 = phi i32 [ %4, %.lr.ph ], [ %i.hf, %bb.ah ] ; 10 uses
  %.052116 = phi i32 [ %3, %.lr.ph ], [ %i.ha, %bb.ah ] ; 9 uses
  %.055115 = phi i32 [ %2, %.lr.ph ], [ %i.hb, %bb.ah ] ; 12 uses
  %i.p = add nsw i32 %.052116, %.055115           ; 4 uses
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq i32 %.052116, 0
  %.not62130 = icmp eq i32 %.048118, 0            ; 2 uses
  br i1 %.not, label %.preheader, label %bb.d

.preheader:                                       ; preds = %bb.c
  br i1 %.not62130, label %.loopexit, label %.lr.ph133

.lr.ph133:                                        ; preds = %.preheader
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !30
  %scevgep218 = getelementptr i8, ptr %i.s, i64 -1
  %i.t = sext i32 %.049117 to i64
  %scevgep223 = getelementptr i8, ptr %scevgep218, i64 %i.t
  %i.u = zext i32 %.048118 to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep223, i8 1, i64 %i.u, i1 false), !tbaa !32
  br label %.loopexit

bb.d:                                             ; preds = %bb.c
  br i1 %.not62130, label %.preheader71, label %bb.e

.preheader71:                                     ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !33
  %scevgep203 = getelementptr i8, ptr %i.w, i64 -1
  %i.x = sext i32 %.055115 to i64
  %scevgep208 = getelementptr i8, ptr %scevgep203, i64 %i.x
  %i.y = zext i32 %.052116 to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep208, i8 1, i64 %i.y, i1 false), !tbaa !32
  br label %.loopexit

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.c, i8 0, i64 88, i1 false)
  store ptr %1, ptr %i.d, align 8, !tbaa !42
  store ptr %0, ptr %i.e, align 8, !tbaa !43
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.z = call i32 @xdl_hashbits(i32 noundef range(i32 1, 0) %.052116) #6 ; 2 uses
  store i32 %i.z, ptr %i.h, align 8, !tbaa !44
  %i.aa = shl nuw i32 1, %i.z                     ; 2 uses
  store i32 %i.aa, ptr %i.i, align 4, !tbaa !45
  %i.ab = zext i32 %i.aa to i64
  %i.ac = call ptr @xcalloc(i64 noundef %i.ab, i64 noundef 8) #6 ; 2 uses
  store ptr %i.ac, ptr %7, align 8, !tbaa !46
  %.not.i = icmp eq ptr %i.ac, null
  br i1 %.not.i, label %find_lcs.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 %.052116, ptr %i.j, align 8, !tbaa !47
  %i.ad = zext i32 %.052116 to i64                ; 2 uses
  %i.ae = call ptr @xcalloc(i64 noundef %i.ad, i64 noundef 8) #6 ; 2 uses
  store ptr %i.ae, ptr %i.f, align 8, !tbaa !48
  %.not19.i = icmp eq ptr %i.ae, null
  br i1 %.not19.i, label %find_lcs.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = call ptr @xcalloc(i64 noundef %i.ad, i64 noundef 4) #6 ; 2 uses
  store ptr %i.af, ptr %i.k, align 8, !tbaa !49
  %.not20.i = icmp eq ptr %i.af, null
  br i1 %.not20.i, label %find_lcs.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = sdiv i32 %.052116, 4
  %i.ah = add nsw i32 %i.ag, 1
  %i.ai = sext i32 %i.ah to i64
  %i.aj = call i32 @xdl_cha_init(ptr noundef nonnull %i.g, i64 noundef 16, i64 noundef %i.ai) #6
  %i.ak = icmp slt i32 %i.aj, 0
  br i1 %i.ak, label %find_lcs.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 %.055115, ptr %i.l, align 4, !tbaa !50
  store i32 64, ptr %i.m, align 4, !tbaa !51
  %.04963.i.i = add i32 %i.p, -1                  ; 4 uses
  %.not64.i.i = icmp ugt i32 %.055115, %.04963.i.i
  br i1 %.not64.i.i, label %.loopexit.i, label %.lr.ph68.i.preheader.i

.lr.ph68.i.preheader.i:                           ; preds = %bb.i
  %.pre81.i = load ptr, ptr %7, align 8, !tbaa !46
  br label %.lr.ph68.i.i

.lr.ph68.i.i:                                     ; preds = %bb.n, %.lr.ph68.i.preheader.i
  %i.al = phi i32 [ %i.by, %bb.n ], [ %.055115, %.lr.ph68.i.preheader.i ]
  %i.am = phi ptr [ %i.bw, %bb.n ], [ %.pre81.i, %.lr.ph68.i.preheader.i ] ; 2 uses
  %.04966.i.i = phi i32 [ %.049.i.i, %bb.n ], [ %.04963.i.i, %.lr.ph68.i.preheader.i ] ; 6 uses
  %.049.in65.i.i = phi i32 [ %.04966.i.i, %bb.n ], [ %i.p, %.lr.ph68.i.preheader.i ]
  %i.an = load ptr, ptr %i.d, align 8, !tbaa !42
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !52 ; 2 uses
  %i.ap = add i32 %.049.in65.i.i, -2
  %i.aq = zext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load i64, ptr %i.as, align 8, !tbaa !55 ; 3 uses
  %i.au = load i32, ptr %i.h, align 8, !tbaa !44
  %i.av = zext i32 %i.au to i64                   ; 2 uses
  %i.aw = lshr i64 %i.at, %i.av
  %i.ax = add i64 %i.aw, %i.at
  %notmask.i.i = shl nsw i64 -1, %i.av
  %i.ay = and i64 %notmask.i.i, 4294967295
  %i.az = xor i64 %i.ay, 4294967295
  %i.ba = and i64 %i.az, %i.ax
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.ba ; 3 uses
  %.059.i.i = load ptr, ptr %i.bb, align 8, !tbaa !57 ; 2 uses
  %.not5260.i.i = icmp eq ptr %.059.i.i, null
  br i1 %.not5260.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph68.i.i, %bb.k
  %.062.i.i = phi ptr [ %.0.i.i, %bb.k ], [ %.059.i.i, %.lr.ph68.i.i ] ; 5 uses
  %.04861.i.i = phi i32 [ %i.bp, %bb.k ], [ 0, %.lr.ph68.i.i ]
  %i.bc = load i32, ptr %.062.i.i, align 8, !tbaa !59 ; 2 uses
  %i.bd = add i32 %i.bc, -1
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %i.be
  %i.bg = getelementptr i8, ptr %i.bf, i64 16
  %.val.i.i = load i64, ptr %i.bg, align 8, !tbaa !55
  %.not56.i.i = icmp eq i64 %.val.i.i, %i.at
  br i1 %.not56.i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph.i.i
  %i.bh = load ptr, ptr %i.k, align 8, !tbaa !49
  %i.bi = sub i32 %.04966.i.i, %i.al
  %i.bj = zext i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.bj
  store i32 %i.bc, ptr %i.bk, align 4, !tbaa !60
  store i32 %.04966.i.i, ptr %.062.i.i, align 8, !tbaa !59
  %i.bl = getelementptr inbounds nuw i8, ptr %.062.i.i, i64 4 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !61
  %i.bn = add i32 %i.bm, 1
  store i32 %i.bn, ptr %i.bl, align 4, !tbaa !61
  br label %bb.n

bb.k:                                             ; preds = %.lr.ph.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %.062.i.i, i64 8
  %i.bp = add i32 %.04861.i.i, 1                  ; 2 uses
  %.0.i.i = load ptr, ptr %i.bo, align 8, !tbaa !57 ; 2 uses
  %.not52.i.i = icmp eq ptr %.0.i.i, null
  br i1 %.not52.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !23

._crit_edge.i.i:                                  ; preds = %bb.k, %.lr.ph68.i.i
  %.048.lcssa.i.i = phi i32 [ 0, %.lr.ph68.i.i ], [ %i.bp, %bb.k ]
  %i.bq = load i32, ptr %i.m, align 4, !tbaa !51
  %i.br = icmp eq i32 %.048.lcssa.i.i, %i.bq
  br i1 %i.br, label %find_lcs.exit, label %bb.l

bb.l:                                             ; preds = %._crit_edge.i.i
  %i.bs = call ptr @xdl_cha_alloc(ptr noundef nonnull %i.g) #6 ; 6 uses
  %.not53.i.i = icmp eq ptr %i.bs, null
  br i1 %.not53.i.i, label %find_lcs.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.pre.i = load ptr, ptr %7, align 8, !tbaa !46
  store i32 %.04966.i.i, ptr %i.bs, align 8, !tbaa !59
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  store i32 1, ptr %i.bt, align 4, !tbaa !61
  %i.bu = load ptr, ptr %i.bb, align 8, !tbaa !57
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store ptr %i.bu, ptr %i.bv, align 8, !tbaa !63
  store ptr %i.bs, ptr %i.bb, align 8, !tbaa !57
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.j
  %i.bw = phi ptr [ %i.am, %bb.j ], [ %.pre.i, %bb.m ]
  %.062.lcssa.sink.i.i = phi ptr [ %.062.i.i, %bb.j ], [ %i.bs, %bb.m ]
  %i.bx = load ptr, ptr %i.f, align 8, !tbaa !48
  %i.by = load i32, ptr %i.l, align 4, !tbaa !50  ; 2 uses
  %i.bz = sub i32 %.04966.i.i, %i.by
  %i.ca = zext i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.ca
  store ptr %.062.lcssa.sink.i.i, ptr %i.cb, align 8, !tbaa !57
  %.049.i.i = add i32 %.04966.i.i, -1             ; 2 uses
  %.not.i.i = icmp ugt i32 %.055115, %.049.i.i
  br i1 %.not.i.i, label %.loopexit.loopexit.i, label %.lr.ph68.i.i, !llvm.loop !24

.loopexit.loopexit.i:                             ; preds = %bb.n
  %.pre82.i = load i32, ptr %i.m, align 4, !tbaa !51
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit.i, %bb.i
  %i.cc = phi i32 [ %.pre82.i, %.loopexit.loopexit.i ], [ 64, %bb.i ] ; 2 uses
  %i.cd = add i32 %i.cc, 1                        ; 3 uses
  store i32 %i.cd, ptr %i.n, align 8, !tbaa !64
  %i.ce = add i32 %.048118, %.049117              ; 2 uses
  %.not22.not61.i = icmp sgt i32 %.048118, 0
  br i1 %.not22.not61.i, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.loopexit.i
  %i.cf = load ptr, ptr %7, align 8, !tbaa !46
  %i.cg = load ptr, ptr %i.d, align 8, !tbaa !42  ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 56
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !65 ; 3 uses
  %i.cj = load i32, ptr %i.h, align 8, !tbaa !44
  %i.ck = zext i32 %i.cj to i64                   ; 2 uses
  %notmask.i24.i = shl nsw i64 -1, %i.ck
  %i.cl = xor i64 %notmask.i24.i, -1
  %i.cm = add i32 %i.ce, -1                       ; 2 uses
  %i.cn = zext i32 %i.cm to i64
  %i.co = zext i32 %.04963.i.i to i64
  %i.cp = load ptr, ptr %i.k, align 8             ; 2 uses
  %i.cq = load i32, ptr %i.l, align 4             ; 4 uses
  %i.cr = load ptr, ptr %i.f, align 8             ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %try_lcs.exit.i, %.lr.ph.i
  %.sroa.0.1 = phi i32 [ 0, %.lr.ph.i ], [ %.sroa.0.4, %try_lcs.exit.i ] ; 2 uses
  %.sroa.6.1 = phi i32 [ 0, %.lr.ph.i ], [ %.sroa.6.4, %try_lcs.exit.i ] ; 2 uses
  %.sroa.9.1 = phi i32 [ 0, %.lr.ph.i ], [ %.sroa.9.4, %try_lcs.exit.i ] ; 2 uses
  %.sroa.11.1 = phi i32 [ 0, %.lr.ph.i ], [ %.sroa.11.4, %try_lcs.exit.i ] ; 2 uses
  %.01863.i = phi i32 [ %.049117, %.lr.ph.i ], [ %.0110.lcssa.i.i, %try_lcs.exit.i ] ; 7 uses
  %.pre.i5962.i = phi i32 [ %i.cd, %.lr.ph.i ], [ %.pre.i58.i, %try_lcs.exit.i ] ; 4 uses
  %i.cs = add nsw i32 %.01863.i, 1                ; 3 uses
  %i.ct = sext i32 %.01863.i to i64
  %i.cu = getelementptr [24 x i8], ptr %i.ci, i64 %i.ct
  %i.cv = getelementptr i8, ptr %i.cu, i64 -8
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !55 ; 4 uses
  %i.cx = lshr i64 %i.cw, %i.ck
  %i.cy = add i64 %i.cx, %i.cw
  %i.cz = and i64 %i.cy, %i.cl
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.cz
  %.0109163.i.i = load ptr, ptr %i.da, align 8, !tbaa !57 ; 2 uses
  %.not164.i.i = icmp eq ptr %.0109163.i.i, null
  br i1 %.not164.i.i, label %try_lcs.exit.i, label %.lr.ph167.i.i

.lr.ph167.i.i:                                    ; preds = %bb.o
  %i.db = icmp ult i32 %.049117, %.01863.i
  %i.dc = icmp ult i32 %.01863.i, %i.cm
  %i.dd = zext i32 %.01863.i to i64               ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %.thread.i.i, %.lr.ph167.i.i
  %.sroa.0.2 = phi i32 [ %.sroa.0.1, %.lr.ph167.i.i ], [ %.sroa.0.3, %.thread.i.i ] ; 5 uses
  %.sroa.6.2 = phi i32 [ %.sroa.6.1, %.lr.ph167.i.i ], [ %.sroa.6.3, %.thread.i.i ] ; 5 uses
  %.sroa.9.2 = phi i32 [ %.sroa.9.1, %.lr.ph167.i.i ], [ %.sroa.9.3, %.thread.i.i ] ; 4 uses
  %.sroa.11.2 = phi i32 [ %.sroa.11.1, %.lr.ph167.i.i ], [ %.sroa.11.3, %.thread.i.i ] ; 4 uses
  %.pre.i57.i = phi i32 [ %.pre.i5962.i, %.lr.ph167.i.i ], [ %.pre.i54.i, %.thread.i.i ] ; 4 uses
  %i.de = phi i32 [ %.pre.i5962.i, %.lr.ph167.i.i ], [ %i.fz, %.thread.i.i ] ; 4 uses
  %i.df = phi i32 [ %.pre.i5962.i, %.lr.ph167.i.i ], [ %i.ga, %.thread.i.i ] ; 4 uses
  %.0109166.i.i = phi ptr [ %.0109163.i.i, %.lr.ph167.i.i ], [ %.0109.i.i, %.thread.i.i ] ; 4 uses
  %.0110165.i.i = phi i32 [ %i.cs, %.lr.ph167.i.i ], [ %.3113.i.i, %.thread.i.i ] ; 4 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.0109166.i.i, i64 4
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !61 ; 3 uses
  %i.di = icmp ugt i32 %i.dh, %i.df
  br i1 %i.di, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.dj = load i32, ptr %i.o, align 4, !tbaa !66
  %.not125.i.i = icmp eq i32 %i.dj, 0
  br i1 %.not125.i.i, label %bb.r, label %.thread.i.i

bb.r:                                             ; preds = %bb.q
  %i.dk = load ptr, ptr %i.cg, align 8, !tbaa !52
  %i.dl = load i32, ptr %.0109166.i.i, align 8, !tbaa !59
  %i.dm = add i32 %i.dl, -1
  %i.dn = zext i32 %i.dm to i64
  %i.do = getelementptr inbounds nuw [24 x i8], ptr %i.dk, i64 %i.dn
  %i.dp = getelementptr i8, ptr %i.do, i64 16
  %.val131.i.i = load i64, ptr %i.dp, align 8, !tbaa !55
  %i.dq = icmp eq i64 %.val131.i.i, %i.cw
  %i.dr = zext i1 %i.dq to i32
  store i32 %i.dr, ptr %i.o, align 4, !tbaa !66
  br label %.thread.i.i

bb.s:                                             ; preds = %bb.p
  %i.ds = load i32, ptr %.0109166.i.i, align 8, !tbaa !59 ; 2 uses
  %i.dt = load ptr, ptr %i.cg, align 8, !tbaa !52 ; 3 uses
  %i.du = add i32 %i.ds, -1
  %i.dv = zext i32 %i.du to i64
  %i.dw = getelementptr inbounds nuw [24 x i8], ptr %i.dt, i64 %i.dv
  %i.dx = getelementptr i8, ptr %i.dw, i64 16
  %.val129.i.i = load i64, ptr %i.dx, align 8, !tbaa !55
  %.not134.i.i = icmp eq i64 %.val129.i.i, %i.cw
  br i1 %.not134.i.i, label %bb.t, label %.thread.i.i

bb.t:                                             ; preds = %bb.s
  store i32 1, ptr %i.o, align 4, !tbaa !66
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.preheader.i.i, %bb.t
  %.sroa.0.5 = phi i32 [ %.sroa.0.2, %bb.t ], [ %.sroa.0.6, %.preheader.i.i ]
  %.sroa.6.5 = phi i32 [ %.sroa.6.2, %bb.t ], [ %.sroa.6.6, %.preheader.i.i ]
  %.sroa.9.5 = phi i32 [ %.sroa.9.2, %bb.t ], [ %.sroa.9.6, %.preheader.i.i ]
  %.sroa.11.5 = phi i32 [ %.sroa.11.2, %bb.t ], [ %.sroa.11.6, %.preheader.i.i ]
  %.pre.i56.i = phi i32 [ %.pre.i57.i, %bb.t ], [ %.pre.i55.i, %.preheader.i.i ]
  %.1108.lcssa.i52.i = phi i32 [ %.sroa.0.2, %bb.t ], [ %.1108.lcssa.i51.i, %.preheader.i.i ] ; 2 uses
  %.0106.lcssa.i49.i = phi i32 [ %.sroa.6.2, %bb.t ], [ %.0106.lcssa.i48.i, %.preheader.i.i ] ; 2 uses
  %i.dy = phi i32 [ %i.de, %bb.t ], [ %i.fs, %.preheader.i.i ] ; 2 uses
  %.1111.i.i = phi i32 [ %.0110165.i.i, %bb.t ], [ %spec.select.i.i, %.preheader.i.i ] ; 2 uses
  %.0107.i.i = phi i32 [ %i.ds, %bb.t ], [ %.0102.i.i, %.preheader.i.i ] ; 7 uses
  %i.dz = sub i32 %.0107.i.i, %i.cq
  %i.ea = zext i32 %i.dz to i64
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %i.ea
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !60 ; 2 uses
  %i.ed = icmp ult i32 %.055115, %.0107.i.i
  %or.cond141.i.i = and i1 %i.db, %i.ed
  br i1 %or.cond141.i.i, label %.lr.ph.preheader.i.i, label %.critedge.i.i

.lr.ph.preheader.i.i:                             ; preds = %.loopexit.i.i
  %i.ee = zext i32 %.0107.i.i to i64
  br label %.lr.ph.i28.i

.lr.ph.i28.i:                                     ; preds = %bb.w, %.lr.ph.preheader.i.i
  %indvars.iv172.i.i = phi i64 [ %i.ee, %.lr.ph.preheader.i.i ], [ %indvars.iv.next173.i.i, %bb.w ] ; 3 uses
  %indvars.iv.i.i = phi i64 [ %i.dd, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.w ] ; 3 uses
  %.0101144.i.i = phi i32 [ %i.dh, %.lr.ph.preheader.i.i ], [ %.1.i.i, %bb.w ] ; 4 uses
  %i.ef = add nsw i64 %indvars.iv172.i.i, 4294967294
  %i.eg = and i64 %i.ef, 4294967295
  %i.eh = getelementptr inbounds nuw [24 x i8], ptr %i.dt, i64 %i.eg
  %i.ei = add nsw i64 %indvars.iv.i.i, 4294967294
  %i.ej = and i64 %i.ei, 4294967295
  %i.ek = getelementptr inbounds nuw [24 x i8], ptr %i.ci, i64 %i.ej
  %i.el = getelementptr i8, ptr %i.eh, i64 16
  %.val127.i.i = load i64, ptr %i.el, align 8, !tbaa !55
  %i.em = getelementptr i8, ptr %i.ek, i64 16
  %.val128.i.i = load i64, ptr %i.em, align 8, !tbaa !55
  %.not135.i.i = icmp eq i64 %.val127.i.i, %.val128.i.i
  br i1 %.not135.i.i, label %bb.u, label %.critedge.loopexit.split.loop.exit197.i.i

bb.u:                                             ; preds = %.lr.ph.i28.i
  %indvars.iv.next173.i.i = add nsw i64 %indvars.iv172.i.i, -1 ; 2 uses
  %indvars175.i.i = trunc i64 %indvars.iv.next173.i.i to i32 ; 3 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 2 uses
  %indvars.i.i = trunc i64 %indvars.iv.next.i.i to i32 ; 2 uses
  %i.en = icmp ugt i32 %.0101144.i.i, 1
  br i1 %i.en, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.eo = sub i32 %indvars175.i.i, %i.cq
  %i.ep = zext i32 %i.eo to i64
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.ep
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !57
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 4
  %i.et = load i32, ptr %i.es, align 4, !tbaa !61
  %.0101..i.i = call i32 @llvm.umin.i32(i32 %.0101144.i.i, i32 %i.et)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.1.i.i = phi i32 [ %.0101..i.i, %bb.v ], [ %.0101144.i.i, %bb.u ] ; 2 uses
  %i.eu = icmp ult i32 %.055115, %indvars175.i.i
  %i.ev = icmp ult i32 %.049117, %indvars.i.i
  %or.cond.i.i = and i1 %i.eu, %i.ev
  br i1 %or.cond.i.i, label %.lr.ph.i28.i, label %.critedge.i.i, !llvm.loop !25

.critedge.loopexit.split.loop.exit197.i.i:        ; preds = %.lr.ph.i28.i
  %i.ew = trunc nuw i64 %indvars.iv172.i.i to i32
  %i.ex = trunc nuw i64 %indvars.iv.i.i to i32
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.w, %.critedge.loopexit.split.loop.exit197.i.i, %.loopexit.i.i
  %.1108.lcssa.i.i = phi i32 [ %.0107.i.i, %.loopexit.i.i ], [ %i.ew, %.critedge.loopexit.split.loop.exit197.i.i ], [ %indvars175.i.i, %bb.w ] ; 3 uses
  %.0105.lcssa.i.i = phi i32 [ %.01863.i, %.loopexit.i.i ], [ %i.ex, %.critedge.loopexit.split.loop.exit197.i.i ], [ %indvars.i.i, %bb.w ]
  %.0101.lcssa.i.i = phi i32 [ %i.dh, %.loopexit.i.i ], [ %.0101144.i.i, %.critedge.loopexit.split.loop.exit197.i.i ], [ %.1.i.i, %bb.w ] ; 2 uses
  %i.ey = icmp ult i32 %.0107.i.i, %.04963.i.i
  %or.cond137151.i.i = and i1 %i.dc, %i.ey
  br i1 %or.cond137151.i.i, label %.lr.ph155.preheader.i.i, label %.critedge2.i.i

.lr.ph155.preheader.i.i:                          ; preds = %.critedge.i.i
  %i.ez = zext i32 %.0107.i.i to i64
  br label %.lr.ph155.i.i

.lr.ph155.i.i:                                    ; preds = %bb.z, %.lr.ph155.preheader.i.i
  %indvars.iv179.i.i = phi i64 [ %i.ez, %.lr.ph155.preheader.i.i ], [ %indvars.iv.next180.i.i, %bb.z ] ; 3 uses
  %indvars.iv177.i.i = phi i64 [ %i.dd, %.lr.ph155.preheader.i.i ], [ %indvars.iv.next178.i.i, %bb.z ] ; 3 uses
  %.2154.i.i = phi i32 [ %.0101.lcssa.i.i, %.lr.ph155.preheader.i.i ], [ %.3.i.i, %bb.z ] ; 4 uses
  %indvars.iv.next180.i.i = add nuw nsw i64 %indvars.iv179.i.i, 1 ; 3 uses
  %indvars183.i.i = trunc nuw i64 %indvars.iv.next180.i.i to i32 ; 2 uses
  %i.fa = getelementptr inbounds nuw [24 x i8], ptr %i.dt, i64 %indvars.iv179.i.i
  %indvars.iv.next178.i.i = add nuw nsw i64 %indvars.iv177.i.i, 1 ; 3 uses
  %i.fb = getelementptr inbounds nuw [24 x i8], ptr %i.ci, i64 %indvars.iv177.i.i
  %i.fc = getelementptr i8, ptr %i.fa, i64 16
  %.val.i27.i = load i64, ptr %i.fc, align 8, !tbaa !55
  %i.fd = getelementptr i8, ptr %i.fb, i64 16
  %.val126.i.i = load i64, ptr %i.fd, align 8, !tbaa !55
end_hunk_0
