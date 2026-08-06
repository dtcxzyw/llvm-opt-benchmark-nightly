inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.PGLZ_Strategy = type { i32, i32, i32, i32, i32, i32 }
%struct.PGLZ_HistEntry = type { ptr, ptr, i32, ptr }

@strategy_default_data = internal constant %struct.PGLZ_Strategy { i32 32, i32 2147483647, i32 25, i32 1024, i32 128, i32 10 }, align 4
@PGLZ_strategy_default = dso_local local_unnamed_addr constant ptr @strategy_default_data, align 8
@strategy_always_data = internal constant %struct.PGLZ_Strategy { i32 0, i32 2147483647, i32 0, i32 2147483647, i32 128, i32 6 }, align 4
@PGLZ_strategy_always = dso_local local_unnamed_addr constant ptr @strategy_always_data, align 8
@hist_start = internal unnamed_addr global [8192 x i16] zeroinitializer, align 16
@hist_entries = internal global [4097 x %struct.PGLZ_HistEntry] zeroinitializer, align 16

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @pglz_compress(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(address_is_null) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = sext i32 %1 to i64
  %i.c = getelementptr inbounds i8, ptr %0, i64 %i.b ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 0, ptr %i.a, align 1
  %i.d = icmp eq ptr %3, null
  %spec.store.select = select i1 %i.d, ptr @strategy_default_data, ptr %3 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %spec.store.select, i64 16
  %i.f = load i32, ptr %i.e, align 4              ; 2 uses
  %i.g = icmp slt i32 %i.f, 1
  br i1 %i.g, label %.loopexit227, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load i32, ptr %spec.store.select, align 4
  %i.i = icmp slt i32 %1, %i.h
  br i1 %i.i, label %.loopexit227, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %spec.store.select, i64 4
  %i.k = load i32, ptr %i.j, align 4
  %i.l = icmp sgt i32 %1, %i.k
  br i1 %i.l, label %.loopexit227, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = tail call i32 @llvm.umax.i32(i32 %i.f, i32 17)
  %.0166 = tail call i32 @llvm.umin.i32(i32 %i.m, i32 273)
  %i.n = getelementptr inbounds nuw i8, ptr %spec.store.select, i64 20
  %i.o = load i32, ptr %i.n, align 4
  %i.p = tail call i32 @llvm.smax.i32(i32 %i.o, i32 0)
  %i.q = tail call i32 @llvm.umin.i32(i32 %i.p, i32 100)
  %i.r = getelementptr inbounds nuw i8, ptr %spec.store.select, i64 8
  %i.s = load i32, ptr %i.r, align 4              ; 2 uses
  %i.t = icmp slt i32 %i.s, 0
  %spec.store.select3 = tail call i32 @llvm.smin.i32(i32 %i.s, i32 99)
  %i.u = sub nuw nsw i32 100, %spec.store.select3
  %.0159 = select i1 %i.t, i32 100, i32 %i.u      ; 2 uses
  %i.v = icmp sgt i32 %1, 21474836
  br i1 %i.v, label %.thread215, label %bb.e

.thread215:                                       ; preds = %bb.d
  %i.w = udiv i32 %1, 100
  %i.x = mul nuw nsw i32 %.0159, %i.w
  br label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.y = mul i32 %.0159, %1
  %i.z = sdiv i32 %i.y, 100                       ; 5 uses
  %i.aa = icmp slt i32 %1, 128
  br i1 %i.aa, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = icmp samesign ult i32 %1, 256
  br i1 %i.ab, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = icmp samesign ult i32 %1, 512
  br i1 %i.ac, label %.thread, label %bb.h

bb.h:                                             ; preds = %.thread215, %bb.g
  %.0160210214217 = phi i32 [ %i.x, %.thread215 ], [ %i.z, %bb.g ]
  %i.ad = icmp samesign ult i32 %1, 1024
  %. = select i1 %i.ad, i32 4096, i32 8192
  br label %.thread

.thread:                                          ; preds = %bb.h, %bb.g, %bb.f
  %.0160211.ph = phi i32 [ %.0160210214217, %bb.h ], [ %i.z, %bb.f ], [ %i.z, %bb.g ]
  %.0158.ph = phi i32 [ %., %bb.h ], [ 1024, %bb.f ], [ 2048, %bb.g ] ; 2 uses
  %i.ae = add nsw i32 %.0158.ph, -1
  %i.af = shl nuw nsw i32 %.0158.ph, 1
  %i.ag = zext nneg i32 %i.af to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) @hist_start, i8 0, i64 %i.ag, i1 false)
  br label %.lr.ph249

bb.i:                                             ; preds = %bb.e
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) @hist_start, i8 0, i64 1024, i1 false)
  %i.ah = icmp sgt i32 %1, 0
  br i1 %i.ah, label %.lr.ph249, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.i
  %.pre = ptrtoint ptr %2 to i64                  ; 2 uses
  br label %._crit_edge

.lr.ph249:                                        ; preds = %.thread, %bb.i
  %i.ai = phi i32 [ %i.ae, %.thread ], [ 511, %bb.i ] ; 3 uses
  %.0160211276 = phi i32 [ %.0160211.ph, %.thread ], [ %i.z, %bb.i ] ; 2 uses
  %i.aj = ptrtoint ptr %2 to i64                  ; 2 uses
  %i.ak = sext i32 %.0160211276 to i64
  %i.al = getelementptr inbounds nuw i8, ptr %spec.store.select, i64 12
  %i.am = ptrtoint ptr %i.c to i64                ; 3 uses
  %i.an = trunc i64 %i.am to i32
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph249, %.loopexit
  %.0140248 = phi ptr [ %2, %.lr.ph249 ], [ %.4, %.loopexit ] ; 7 uses
  %.0141247 = phi i32 [ 1, %.lr.ph249 ], [ %.4145, %.loopexit ] ; 4 uses
  %.0146246 = phi i8 [ 0, %.lr.ph249 ], [ %.4150, %.loopexit ] ; 3 uses
  %.0151245 = phi ptr [ %0, %.lr.ph249 ], [ %.2153, %.loopexit ] ; 15 uses
  %.0154244 = phi ptr [ %i.a, %.lr.ph249 ], [ %.3157, %.loopexit ] ; 4 uses
  %.0161243 = phi i8 [ 0, %.lr.ph249 ], [ %.3164, %.loopexit ] ; 4 uses
  %.0167242 = phi i1 [ false, %.lr.ph249 ], [ %.1168, %.loopexit ] ; 2 uses
  %.0169241 = phi i8 [ 0, %.lr.ph249 ], [ %.3172, %.loopexit ] ; 4 uses
  %i.ao = ptrtoint ptr %.0140248 to i64
  %i.ap = sub i64 %i.ao, %i.aj                    ; 2 uses
  %.not187 = icmp slt i64 %i.ap, %i.ak
  br i1 %.not187, label %bb.k, label %.loopexit227

bb.k:                                             ; preds = %bb.j
  br i1 %.0167242, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aq = load i32, ptr %i.al, align 4
  %i.ar = sext i32 %i.aq to i64
  %.not188 = icmp slt i64 %i.ap, %i.ar
  br i1 %.not188, label %bb.m, label %.loopexit227

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.as = ptrtoint ptr %.0151245 to i64           ; 4 uses
  %i.at = sub i64 %i.am, %i.as
  %i.au = icmp slt i64 %i.at, 4                   ; 2 uses
  %i.av = load i8, ptr %.0151245, align 1
  %i.aw = sext i8 %i.av to i32                    ; 2 uses
  br i1 %i.au, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ax = shl nsw i32 %i.aw, 6
  %i.ay = getelementptr inbounds nuw i8, ptr %.0151245, i64 1
  %i.az = load i8, ptr %i.ay, align 1
  %i.ba = sext i8 %i.az to i32
  %i.bb = shl nsw i32 %i.ba, 4
  %i.bc = xor i32 %i.bb, %i.ax
  %i.bd = getelementptr inbounds nuw i8, ptr %.0151245, i64 2
  %i.be = load i8, ptr %i.bd, align 1
  %i.bf = sext i8 %i.be to i32
  %i.bg = shl nsw i32 %i.bf, 2
  %i.bh = xor i32 %i.bc, %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %.0151245, i64 3
  %i.bj = load i8, ptr %i.bi, align 1
  %i.bk = sext i8 %i.bj to i32
  %i.bl = xor i32 %i.bh, %i.bk
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bm = phi i32 [ %i.bl, %bb.n ], [ %i.aw, %bb.m ]
  %i.bn = and i32 %i.bm, %i.ai
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr @hist_start, i64 %i.bo
  %i.bq = load i16, ptr %i.bp, align 2            ; 2 uses
  %.not19.i = icmp eq i16 %i.bq, 0
  br i1 %.not19.i, label %.thread.i.thread, label %.lr.ph25.split.us.preheader.i

.lr.ph25.split.us.preheader.i:                    ; preds = %bb.o
  %i.br = sext i16 %i.bq to i64
  %.idx.i = shl nsw i64 %i.br, 5
  %i.bs = getelementptr inbounds i8, ptr @hist_entries, i64 %.idx.i ; 2 uses
  %i.bt = trunc i64 %i.as to i32
  %i.bu = sub i32 %i.an, %i.bt                    ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8            ; 2 uses
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = sub i64 %i.as, %i.bx
  %i.bz = trunc i64 %i.by to i32                  ; 2 uses
  %i.ca = icmp sgt i32 %i.bz, 4094
  br i1 %i.ca, label %.thread.i.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph25.split.us.preheader.i, %.lr.ph25.split.us.i
  %i.cb = phi i32 [ %i.cy, %.lr.ph25.split.us.i ], [ %i.bz, %.lr.ph25.split.us.preheader.i ]
  %i.cc = phi ptr [ %i.cv, %.lr.ph25.split.us.i ], [ %i.bw, %.lr.ph25.split.us.preheader.i ] ; 3 uses
  %.07920.us.i234 = phi ptr [ %i.cr, %.lr.ph25.split.us.i ], [ %i.bs, %.lr.ph25.split.us.preheader.i ]
  %.07621.us.i233 = phi i32 [ %i.ct, %.lr.ph25.split.us.i ], [ %.0166, %.lr.ph25.split.us.preheader.i ] ; 3 uses
  %.07222.us.i232 = phi i32 [ %spec.select.us.i, %.lr.ph25.split.us.i ], [ 0, %.lr.ph25.split.us.preheader.i ] ; 6 uses
  %.06924.us.i231 = phi i32 [ %spec.select85.us.i, %.lr.ph25.split.us.i ], [ 0, %.lr.ph25.split.us.preheader.i ]
  %i.cd = icmp sgt i32 %.07222.us.i232, 15
  br i1 %i.cd, label %4, label %.lr.ph15.us.i

4:                                                ; preds = %.lr.ph
  %5 = zext nneg i32 %.07222.us.i232 to i64       ; 3 uses
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %.0151245, ptr %i.cc, i64 %5)
  %6 = icmp eq i32 %bcmp.i, 0
  br i1 %6, label %7, label %.critedge.us.i

7:                                                ; preds = %4
  %8 = getelementptr inbounds nuw i8, ptr %.0151245, i64 %5 ; 2 uses
  %9 = icmp ult ptr %8, %i.c
  br i1 %9, label %.lr.ph15.preheader.i, label %.critedge.us.i

.lr.ph15.preheader.i:                             ; preds = %7
  %10 = getelementptr inbounds nuw i8, ptr %i.cc, i64 %5
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %bb.p, %.lr.ph15.preheader.i
  %.19.us.i = phi i32 [ %i.ch, %bb.p ], [ %.07222.us.i232, %.lr.ph15.preheader.i ] ; 3 uses
  %.1668.us.i = phi ptr [ %i.cj, %bb.p ], [ %10, %.lr.ph15.preheader.i ] ; 2 uses
  %.1687.us.i = phi ptr [ %i.ci, %bb.p ], [ %8, %.lr.ph15.preheader.i ] ; 2 uses
  %i.ce = load i8, ptr %.1687.us.i, align 1
  %i.cf = load i8, ptr %.1668.us.i, align 1
  %i.cg = icmp eq i8 %i.ce, %i.cf
  %11 = icmp slt i32 %.19.us.i, 273
  %or.cond5.us.i = select i1 %i.cg, i1 %11, i1 false
  br i1 %or.cond5.us.i, label %bb.p, label %.critedge.us.i

bb.p:                                             ; preds = %.preheader.us.i
  %i.ch = add nuw nsw i32 %.19.us.i, 1
  %i.ci = getelementptr inbounds nuw i8, ptr %.1687.us.i, i64 1 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.1668.us.i, i64 1
  %12 = icmp ult ptr %i.ci, %i.c
  br i1 %12, label %.preheader.us.i, label %.critedge.us.i, !llvm.loop !4

.lr.ph15.us.i:                                    ; preds = %.lr.ph, %bb.q
  %.06314.us.i = phi i32 [ %i.cn, %bb.q ], [ 0, %.lr.ph ] ; 3 uses
  %.06513.us.i = phi ptr [ %i.cp, %bb.q ], [ %i.cc, %.lr.ph ] ; 2 uses
  %.06712.us.i = phi ptr [ %i.co, %bb.q ], [ %.0151245, %.lr.ph ] ; 2 uses
  %i.ck = load i8, ptr %.06712.us.i, align 1
  %i.cl = load i8, ptr %.06513.us.i, align 1
  %i.cm = icmp eq i8 %i.ck, %i.cl
  %13 = icmp samesign ult i32 %.06314.us.i, 273
  %or.cond.us.i = select i1 %i.cm, i1 %13, i1 false
  br i1 %or.cond.us.i, label %bb.q, label %.critedge.us.i

bb.q:                                             ; preds = %.lr.ph15.us.i
  %i.cn = add nuw nsw i32 %.06314.us.i, 1
  %i.co = getelementptr inbounds nuw i8, ptr %.06712.us.i, i64 1 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.06513.us.i, i64 1
  %exitcond.not.i = icmp eq ptr %i.co, %i.c
  br i1 %exitcond.not.i, label %.critedge.us.i, label %.lr.ph15.us.i, !llvm.loop !6

.critedge.us.i:                                   ; preds = %bb.q, %.lr.ph15.us.i, %bb.p, %.preheader.us.i, %7, %4
  %.2.us.i = phi i32 [ 0, %4 ], [ %.19.us.i, %.preheader.us.i ], [ %.07222.us.i232, %7 ], [ %i.bu, %bb.p ], [ %.06314.us.i, %.lr.ph15.us.i ], [ %i.bu, %bb.q ] ; 2 uses
  %i.cq = icmp sgt i32 %.2.us.i, %.07222.us.i232
  %spec.select.us.i = tail call i32 @llvm.smax.i32(i32 %.2.us.i, i32 %.07222.us.i232) ; 7 uses
  %spec.select85.us.i = select i1 %i.cq, i32 %i.cb, i32 %.06924.us.i231 ; 3 uses
  %i.cr = load ptr, ptr %.07920.us.i234, align 8  ; 3 uses
  %.not83.us.i = icmp ne ptr %i.cr, @hist_entries
  %.not84.us.i = icmp slt i32 %spec.select.us.i, %.07621.us.i233
  %or.cond.i = select i1 %.not83.us.i, i1 %.not84.us.i, i1 false
  br i1 %or.cond.i, label %.lr.ph25.split.us.i, label %.thread.i

.lr.ph25.split.us.i:                              ; preds = %.critedge.us.i
  %i.cs = mul nuw nsw i32 %.07621.us.i233, %i.q
  %.neg.us.i = sdiv i32 %i.cs, -100
  %i.ct = add nsw i32 %.neg.us.i, %.07621.us.i233
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  %i.cv = load ptr, ptr %i.cu, align 8            ; 2 uses
  %i.cw = ptrtoint ptr %i.cv to i64
  %i.cx = sub i64 %i.as, %i.cw
  %i.cy = trunc i64 %i.cx to i32                  ; 2 uses
  %i.cz = icmp sgt i32 %i.cy, 4094
  br i1 %i.cz, label %.thread.i, label %.lr.ph

.thread.i:                                        ; preds = %.lr.ph25.split.us.i, %.critedge.us.i
  %i.da = icmp sgt i32 %spec.select.us.i, 2
  br i1 %i.da, label %pglz_find_match.exit, label %.thread.i.thread

pglz_find_match.exit:                             ; preds = %.thread.i
  %i.db = icmp eq i8 %.0169241, 0
  br i1 %i.db, label %bb.r, label %bb.s

bb.r:                                             ; preds = %pglz_find_match.exit
  store i8 %.0161243, ptr %.0154244, align 1
  %i.dc = getelementptr inbounds nuw i8, ptr %.0140248, i64 1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %pglz_find_match.exit
  %.1170 = phi i8 [ 1, %bb.r ], [ %.0169241, %pglz_find_match.exit ] ; 2 uses
  %.1162 = phi i8 [ 0, %bb.r ], [ %.0161243, %pglz_find_match.exit ]
  %.1155 = phi ptr [ %.0140248, %bb.r ], [ %.0154244, %pglz_find_match.exit ]
  %.1 = phi ptr [ %i.dc, %bb.r ], [ %.0140248, %pglz_find_match.exit ] ; 4 uses
  %i.dd = or i8 %.1162, %.1170
  %i.de = icmp samesign ugt i32 %spec.select.us.i, 17
  %i.df = lshr i32 %spec.select85.us.i, 4         ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.1, i64 2 ; 2 uses
  br i1 %i.de, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.dh = trunc i32 %i.df to i8
  %i.di = or i8 %i.dh, 15
  %i.dj = trunc i32 %spec.select.us.i to i8
  %i.dk = add i8 %i.dj, -18
  store i8 %i.dk, ptr %i.dg, align 1
  %i.dl = getelementptr inbounds nuw i8, ptr %.1, i64 3
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.dm = and i32 %i.df, 240
  %i.dn = add nuw nsw i32 %spec.select.us.i, 253
  %i.do = or i32 %i.dm, %i.dn
  %i.dp = trunc i32 %i.do to i8
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.sink255 = phi i8 [ %i.di, %bb.t ], [ %i.dp, %bb.u ]
  %.2 = phi ptr [ %i.dl, %bb.t ], [ %i.dg, %bb.u ]
  %.sink = trunc i32 %spec.select85.us.i to i8
  store i8 %.sink255, ptr %.1, align 1
  %i.dq = getelementptr inbounds nuw i8, ptr %.1, i64 1
  store i8 %.sink, ptr %i.dq, align 1
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.ae
  %.in = phi i32 [ %spec.select.us.i, %bb.v ], [ %i.dr, %bb.ae ]
  %.1142240 = phi i32 [ %.0141247, %bb.v ], [ %spec.select193, %bb.ae ] ; 3 uses
  %.1147239 = phi i8 [ %.0146246, %bb.v ], [ %spec.select, %bb.ae ] ; 2 uses
  %.1152238 = phi ptr [ %.0151245, %bb.v ], [ %i.fr, %bb.ae ] ; 7 uses
  %i.dr = add nsw i32 %.in, -1                    ; 2 uses
  %i.ds = ptrtoint ptr %.1152238 to i64
  %i.dt = sub i64 %i.am, %i.ds
  %i.du = icmp slt i64 %i.dt, 4
  %i.dv = load i8, ptr %.1152238, align 1
  %i.dw = sext i8 %i.dv to i32                    ; 2 uses
  br i1 %i.du, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dx = shl nsw i32 %i.dw, 6
  %i.dy = getelementptr inbounds nuw i8, ptr %.1152238, i64 1
  %i.dz = load i8, ptr %i.dy, align 1
  %i.ea = sext i8 %i.dz to i32
  %i.eb = shl nsw i32 %i.ea, 4
  %i.ec = xor i32 %i.eb, %i.dx
  %i.ed = getelementptr inbounds nuw i8, ptr %.1152238, i64 2
  %i.ee = load i8, ptr %i.ed, align 1
  %i.ef = sext i8 %i.ee to i32
  %i.eg = shl nsw i32 %i.ef, 2
  %i.eh = xor i32 %i.ec, %i.eg
  %i.ei = getelementptr inbounds nuw i8, ptr %.1152238, i64 3
  %i.ej = load i8, ptr %i.ei, align 1
  %i.ek = sext i8 %i.ej to i32
  %i.el = xor i32 %i.eh, %i.ek
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %i.em = phi i32 [ %i.el, %bb.x ], [ %i.dw, %bb.w ]
  %i.en = and i32 %i.em, %i.ai                    ; 2 uses
  %i.eo = zext nneg i32 %i.en to i64
  %i.ep = getelementptr inbounds nuw [2 x i8], ptr @hist_start, i64 %i.eo ; 2 uses
  %i.eq = sext i32 %.1142240 to i64
  %i.er = getelementptr inbounds [32 x i8], ptr @hist_entries, i64 %i.eq ; 8 uses
  %i.es = trunc nuw i8 %.1147239 to i1
  br i1 %i.es, label %bb.z, label %bb.ae

bb.z:                                             ; preds = %bb.y
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 8 ; 2 uses
  %i.eu = load ptr, ptr %i.et, align 8            ; 2 uses
  %i.ev = icmp eq ptr %i.eu, null
  %i.ew = load ptr, ptr %i.er, align 16           ; 4 uses
  br i1 %i.ev, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ex = ptrtoint ptr %i.ew to i64
  %i.ey = sub i64 %i.ex, ptrtoint (ptr @hist_entries to i64)
  %i.ez = lshr exact i64 %i.ey, 5
  %i.fa = trunc i64 %i.ez to i16
  %i.fb = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %i.fc = load i32, ptr %i.fb, align 16
  %i.fd = sext i32 %i.fc to i64
  %i.fe = getelementptr inbounds [2 x i8], ptr @hist_start, i64 %i.fd
  store i16 %i.fa, ptr %i.fe, align 2
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  store ptr %i.ew, ptr %i.eu, align 8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.not192 = icmp eq ptr %i.ew, null
  br i1 %.not192, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ff = load ptr, ptr %i.et, align 8
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  store ptr %i.ff, ptr %i.fg, align 8
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad, %bb.y
  %i.fh = load i16, ptr %i.ep, align 2
  %i.fi = sext i16 %i.fh to i64
  %i.fj = getelementptr inbounds [32 x i8], ptr @hist_entries, i64 %i.fi ; 2 uses
  store ptr %i.fj, ptr %i.er, align 16
  %i.fk = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  store ptr null, ptr %i.fk, align 8
  %i.fl = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  store i32 %i.en, ptr %i.fl, align 16
  %i.fm = getelementptr inbounds nuw i8, ptr %i.er, i64 24
  store ptr %.1152238, ptr %i.fm, align 8
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  store ptr %i.er, ptr %i.fn, align 8
  %i.fo = trunc i32 %.1142240 to i16
  store i16 %i.fo, ptr %i.ep, align 2
  %i.fp = add i32 %.1142240, 1                    ; 2 uses
  %i.fq = icmp sgt i32 %i.fp, 4096                ; 2 uses
  %spec.select = select i1 %i.fq, i8 1, i8 %.1147239 ; 2 uses
  %spec.select193 = select i1 %i.fq, i32 1, i32 %i.fp ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.1152238, i64 1 ; 2 uses
  %.not191 = icmp eq i32 %i.dr, 0
  br i1 %.not191, label %.loopexit, label %bb.w, !llvm.loop !7

.thread.i.thread:                                 ; preds = %.lr.ph25.split.us.preheader.i, %.thread.i, %bb.o
  %i.fs = icmp eq i8 %.0169241, 0
  br i1 %i.fs, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.thread.i.thread
  store i8 %.0161243, ptr %.0154244, align 1
  %i.ft = getelementptr inbounds nuw i8, ptr %.0140248, i64 1
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %.thread.i.thread
  %.2171 = phi i8 [ 1, %bb.af ], [ %.0169241, %.thread.i.thread ]
  %.2163 = phi i8 [ 0, %bb.af ], [ %.0161243, %.thread.i.thread ]
  %.2156 = phi ptr [ %.0140248, %bb.af ], [ %.0154244, %.thread.i.thread ]
  %.3 = phi ptr [ %i.ft, %bb.af ], [ %.0140248, %.thread.i.thread ] ; 2 uses
  %i.fu = load i8, ptr %.0151245, align 1         ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.3, i64 1
  store i8 %i.fu, ptr %.3, align 1
  %i.fw = sext i8 %i.fu to i32                    ; 2 uses
  br i1 %i.au, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fx = shl nsw i32 %i.fw, 6
  %i.fy = getelementptr inbounds nuw i8, ptr %.0151245, i64 1
  %i.fz = load i8, ptr %i.fy, align 1
  %i.ga = sext i8 %i.fz to i32
  %i.gb = shl nsw i32 %i.ga, 4
  %i.gc = xor i32 %i.gb, %i.fx
  %i.gd = getelementptr inbounds nuw i8, ptr %.0151245, i64 2
  %i.ge = load i8, ptr %i.gd, align 1
  %i.gf = sext i8 %i.ge to i32
  %i.gg = shl nsw i32 %i.gf, 2
  %i.gh = xor i32 %i.gc, %i.gg
  %i.gi = getelementptr inbounds nuw i8, ptr %.0151245, i64 3
end_hunk_0
