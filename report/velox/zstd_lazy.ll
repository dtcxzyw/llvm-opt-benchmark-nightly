Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/zstd_lazy?download=true
inline.NumInlined: 1254
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumRuntimeUnrolled: 126
loop-unroll.NumUnrolled: 169
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @ZSTD_dedicatedDictSearch_lazy_loadDictionary(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 3 uses
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = sub i64 %i.c, %i.d                       ; 3 uses
  %i.f = trunc i64 %i.e to i32                    ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !18   ; 16 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !19
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.l = load i32, ptr %i.k, align 4, !tbaa !20
  %i.m = shl nuw i32 1, %i.l                      ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !21   ; 5 uses
  %i.p = sub i32 %i.f, %i.o
  %i.q = icmp ult i32 %i.m, %i.p
  %i.r = sub i32 %i.f, %i.m
  %i.s = select i1 %i.q, i32 %i.r, i32 %i.o       ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.u = load i32, ptr %i.t, align 4, !tbaa !22
  %i.v = shl nuw i32 1, %i.u
  %i.w = add i32 %i.v, -3                         ; 2 uses
  %i.x = tail call i32 @llvm.umin.i32(i32 %i.w, i32 255) ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.z = load i32, ptr %i.y, align 8, !tbaa !23   ; 5 uses
  %i.aa = add i32 %i.z, -2                        ; 6 uses
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = shl nuw i64 1, %i.ab
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.ac ; 5 uses
  %i.ae = shl i32 3, %i.aa                        ; 2 uses
  %i.af = icmp ult i32 %i.ae, %i.f
  %i.ag = sub i32 %i.f, %i.ae
  %i.ah = select i1 %i.af, i32 %i.ag, i32 %i.o    ; 9 uses
  %i.ai = icmp ult i32 %i.o, %i.f
  br i1 %i.ai, label %.lr.ph, label %.preheader164

.lr.ph:                                           ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.ak = sub i32 66, %i.z
  %i.al = zext nneg i32 %i.ak to i64              ; 4 uses
  %i.am = sub i32 34, %i.z
  %i.an = zext i32 %i.o to i64
  %i.ao = zext i32 %i.ah to i64                   ; 2 uses
  %i.ap = and i64 %i.e, 4294967295
  br label %bb.b

.preheader164:                                    ; preds = %ZSTD_hashPtr.exit141._crit_edge, %bb.a
  %i.aq = shl nuw i32 1, %i.aa                    ; 4 uses
  %.not197 = icmp eq i32 %i.w, 0
  %wide.trip.count = zext i32 %i.aq to i64
  br label %bb.i

bb.b:                                             ; preds = %.lr.ph, %ZSTD_hashPtr.exit141._crit_edge
  %indvars.iv = phi i64 [ %i.an, %.lr.ph ], [ %indvars.iv.next, %ZSTD_hashPtr.exit141._crit_edge ] ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv ; 5 uses
  %i.as = load i32, ptr %i.aj, align 8, !tbaa !24
  switch i32 %i.as, label %bb.c [
    i32 8, label %bb.g
    i32 5, label %bb.d
    i32 6, label %bb.e
    i32 7, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  %.val = load i32, ptr %i.ar, align 1, !tbaa !25
  %i.at = mul i32 %.val, -1640531535
  %i.au = lshr i32 %i.at, %i.am
  %i.av = zext i32 %i.au to i64
  br label %ZSTD_hashPtr.exit141

bb.d:                                             ; preds = %bb.b
  %.val143 = load i64, ptr %i.ar, align 1, !tbaa !26
  %i.aw = mul i64 %.val143, -3523014627271114752
  %i.ax = lshr i64 %i.aw, %i.al
  br label %ZSTD_hashPtr.exit141

bb.e:                                             ; preds = %bb.b
  %.val145 = load i64, ptr %i.ar, align 1, !tbaa !26
  %i.ay = mul i64 %.val145, -3523014627193847808
  %i.az = lshr i64 %i.ay, %i.al
  br label %ZSTD_hashPtr.exit141

bb.f:                                             ; preds = %bb.b
  %.val147 = load i64, ptr %i.ar, align 1, !tbaa !26
  %i.ba = mul i64 %.val147, -3523014627193167104
  %i.bb = lshr i64 %i.ba, %i.al
  br label %ZSTD_hashPtr.exit141

bb.g:                                             ; preds = %bb.b
  %.val149 = load i64, ptr %i.ar, align 1, !tbaa !26
  %i.bc = mul i64 %.val149, -3523014627327384477
  %i.bd = lshr i64 %i.bc, %i.al
  br label %ZSTD_hashPtr.exit141

ZSTD_hashPtr.exit141:                             ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.0.i140 = phi i64 [ %i.av, %bb.c ], [ %i.bd, %bb.g ], [ %i.ax, %bb.d ], [ %i.az, %bb.e ], [ %i.bb, %bb.f ]
  %.not138 = icmp samesign ult i64 %indvars.iv, %i.ao
  %.pre = and i64 %.0.i140, 4294967295            ; 2 uses
  br i1 %.not138, label %ZSTD_hashPtr.exit141._crit_edge, label %bb.h

bb.h:                                             ; preds = %ZSTD_hashPtr.exit141
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.pre
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !25
  %i.bg = sub nuw nsw i64 %indvars.iv, %i.ao
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.bg
  store i32 %i.bf, ptr %i.bh, align 4, !tbaa !25
  br label %ZSTD_hashPtr.exit141._crit_edge

ZSTD_hashPtr.exit141._crit_edge:                  ; preds = %ZSTD_hashPtr.exit141, %bb.h
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.pre
  %i.bj = trunc nuw i64 %indvars.iv to i32
  store i32 %i.bj, ptr %i.bi, align 4, !tbaa !25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bk = icmp samesign ult i64 %indvars.iv.next, %i.ap
  br i1 %i.bk, label %bb.b, label %.preheader164, !llvm.loop !27

bb.i:                                             ; preds = %.preheader164, %.thread
  %indvars.iv205 = phi i64 [ 0, %.preheader164 ], [ %indvars.iv.next206, %.thread ] ; 2 uses
  %.0122189 = phi i32 [ 0, %.preheader164 ], [ %.2124155, %.thread ] ; 5 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv205 ; 2 uses
  %.0116170 = load i32, ptr %i.bl, align 4, !tbaa !25 ; 3 uses
  %.not198 = icmp ult i32 %.0116170, %i.ah
  br i1 %.not198, label %.thread, label %.lr.ph174

.lr.ph174:                                        ; preds = %bb.i
  %i.bm = icmp ult i32 %.0116170, %i.s
  %i.bn = zext i1 %i.bm to i32
  %i.bo = sub nuw i32 %.0116170, %i.ah
  %i.bp = zext i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.bp
  %.0116 = load i32, ptr %i.bq, align 4, !tbaa !25 ; 3 uses
  %.not = icmp ult i32 %.0116, %i.ah
  br i1 %.not, label %.thread, label %.lr.ph174.1

.lr.ph174.1:                                      ; preds = %.lr.ph174
  %i.br = icmp ult i32 %.0116, %i.s
  %i.bs = zext i1 %i.br to i32
  %spec.select.1 = add nuw nsw i32 %i.bn, %i.bs
  %i.bt = sub nuw i32 %.0116, %i.ah
  %i.bu = zext i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.bu
  %.0116.1 = load i32, ptr %i.bv, align 4, !tbaa !25 ; 3 uses
  %.not273 = icmp ult i32 %.0116.1, %i.ah
  br i1 %.not273, label %.thread, label %.lr.ph174.2

.lr.ph174.2:                                      ; preds = %.lr.ph174.1
  %i.bw = icmp ult i32 %.0116.1, %i.s
  %i.bx = zext i1 %i.bw to i32
  %spec.select.2 = add nuw nsw i32 %spec.select.1, %i.bx
  %i.by = sub nuw i32 %.0116.1, %i.ah
  %i.bz = zext i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.bz
  %.0116.2 = load i32, ptr %i.ca, align 4, !tbaa !25
  br i1 %.not197, label %.thread, label %.lr.ph181

.lr.ph181:                                        ; preds = %.lr.ph174.2, %bb.l
  %.1180 = phi i32 [ %i.cp, %bb.l ], [ %.0116.2, %.lr.ph174.2 ] ; 5 uses
  %.2179 = phi i32 [ %.3, %bb.l ], [ %spec.select.2, %.lr.ph174.2 ] ; 2 uses
  %.1120178 = phi i32 [ %i.ch, %bb.l ], [ 0, %.lr.ph174.2 ] ; 5 uses
  %.1123177 = phi i32 [ %i.ce, %bb.l ], [ %.0122189, %.lr.ph174.2 ] ; 5 uses
  %i.cb = icmp ult i32 %.1180, %i.s
  br i1 %i.cb, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph181
  %.not136 = icmp eq i32 %.1180, 0
  %i.cc = add i32 %.2179, 1                       ; 2 uses
  %i.cd = icmp ugt i32 %i.cc, 3
  %or.cond = select i1 %.not136, i1 true, i1 %i.cd
  br i1 %or.cond, label %._crit_edge182, label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph181
  %.3 = phi i32 [ %i.cc, %bb.j ], [ %.2179, %.lr.ph181 ]
  %i.ce = add i32 %.1123177, 1                    ; 4 uses
  %i.cf = zext i32 %.1123177 to i64
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.cf
  store i32 %.1180, ptr %i.cg, align 4, !tbaa !25
  %i.ch = add i32 %.1120178, 1                    ; 3 uses
  %i.ci = icmp ult i32 %.1180, %i.ah
  br i1 %i.ci, label %.thread157, label %bb.l

.thread157:                                       ; preds = %bb.k
  %i.cj = sub i32 %.1123177, %.1120178
  %i.ck = shl i32 %i.cj, 8
  %i.cl = add i32 %i.ck, %i.ch
  br label %.thread

bb.l:                                             ; preds = %bb.k
  %i.cm = sub nuw i32 %.1180, %i.ah
  %i.cn = zext i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.cn
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !25
  %exitcond.not = icmp eq i32 %i.ch, %i.x
  br i1 %exitcond.not, label %._crit_edge182.thread241, label %.lr.ph181, !llvm.loop !29

._crit_edge182.thread241:                         ; preds = %bb.l
  %i.cq = sub i32 %i.ce, %i.x
  %i.cr = shl i32 %i.cq, 8
  %i.cs = or disjoint i32 %i.cr, %i.x
  br label %.thread

._crit_edge182:                                   ; preds = %bb.j
  %.not137 = icmp eq i32 %.1120178, 0
  %i.ct = sub i32 %.1123177, %.1120178
  %i.cu = shl i32 %i.ct, 8
  %i.cv = add i32 %i.cu, %.1120178
  %spec.select255 = select i1 %.not137, i32 0, i32 %i.cv
  br label %.thread

.thread:                                          ; preds = %.lr.ph174, %.lr.ph174.1, %._crit_edge182, %.lr.ph174.2, %bb.i, %._crit_edge182.thread241, %.thread157
  %.2124155 = phi i32 [ %i.ce, %.thread157 ], [ %.0122189, %bb.i ], [ %.0122189, %.lr.ph174.2 ], [ %i.ce, %._crit_edge182.thread241 ], [ %.1123177, %._crit_edge182 ], [ %.0122189, %.lr.ph174.1 ], [ %.0122189, %.lr.ph174 ]
  %i.cw = phi i32 [ %i.cl, %.thread157 ], [ 0, %bb.i ], [ 0, %.lr.ph174.2 ], [ %i.cs, %._crit_edge182.thread241 ], [ %spec.select255, %._crit_edge182 ], [ 0, %.lr.ph174.1 ], [ 0, %.lr.ph174 ]
  store i32 %i.cw, ptr %i.bl, align 4, !tbaa !25
  %indvars.iv.next206 = add nuw nsw i64 %indvars.iv205, 1 ; 2 uses
  %exitcond208.not = icmp eq i64 %indvars.iv.next206, %wide.trip.count
  br i1 %exitcond208.not, label %.preheader.preheader, label %bb.i, !llvm.loop !30

.preheader.preheader:                             ; preds = %.thread
  %i.cx = shl i32 4, %i.aa
  %i.cy = add i32 %i.cx, -4                       ; 2 uses
  %i.cz = icmp eq i32 %i.aa, 0
  br i1 %i.cz, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i32 %i.aq, -2
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %indvars.iv212.a = phi i64 [ 0, %.preheader.preheader.new ], [ %indvars.iv.next213.1, %.preheader ] ; 3 uses
  %.1126191 = phi i32 [ %i.aq, %.preheader.preheader.new ], [ %8, %.preheader ] ; 2 uses
  %niter = phi i32 [ 0, %.preheader.preheader.new ], [ %niter.next.1, %.preheader ]
  %i.da = trunc nuw i64 %indvars.iv212.a to i32
  %i.db = shl i32 %i.da, 2
  %i.dc = sub i32 %i.cy, %i.db
  %i.dd = zext i32 %i.dc to i64
  %i.de = shl nuw nsw i64 %i.dd, 2
  %scevgep = getelementptr nuw i8, ptr %i.h, i64 %i.de
  %2 = add i32 %.1126191, -1                      ; 2 uses
  %3 = zext i32 %2 to i64
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %3
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %scevgep, i8 0, i64 12, i1 false), !tbaa !25
  %4 = shl i32 %2, 2
  %5 = or disjoint i32 %4, 3
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %6
  store i32 %i.dg, ptr %7, align 4, !tbaa !25
  %i.dh = trunc i64 %indvars.iv212.a to i32
  %i.di = shl i32 %i.dh, 2
  %i.dj = or disjoint i32 %i.di, 4
  %i.dk = sub i32 %i.cy, %i.dj
  %i.dl = zext i32 %i.dk to i64
  %i.dm = shl nuw nsw i64 %i.dl, 2
  %scevgep.1 = getelementptr nuw i8, ptr %i.h, i64 %i.dm
  %8 = add i32 %.1126191, -2                      ; 3 uses
  %9 = zext i32 %8 to i64
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %9
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %scevgep.1, i8 0, i64 12, i1 false), !tbaa !25
  %10 = shl i32 %8, 2
  %11 = or disjoint i32 %10, 3
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %12
  store i32 %i.do, ptr %13, align 4, !tbaa !25
  %indvars.iv.next213.1 = add nuw nsw i64 %indvars.iv212.a, 2
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa.a, label %.preheader, !llvm.loop !31

.preheader.epil.preheader:                        ; preds = %.preheader.preheader
  %lcmp.mod272 = icmp eq i32 %i.aa, 0
  tail call void @llvm.assume(i1 %lcmp.mod272)
  %14 = add nsw i32 %i.aq, -1
  %i.dp = zext nneg i32 %14 to i64
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.dp
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.h, i8 0, i64 12, i1 false), !tbaa !25
  %i.ds = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 %i.dr, ptr %i.ds, align 4, !tbaa !25
  br label %.unr-lcssa.a

.unr-lcssa.a:                                     ; preds = %.preheader, %.preheader.epil.preheader
  %i.dt = load i32, ptr %i.n, align 4, !tbaa !21  ; 2 uses
  %i.du = icmp ult i32 %i.dt, %i.f
  br i1 %i.du, label %.lr.ph195, label %._crit_edge196

.lr.ph195:                                        ; preds = %.unr-lcssa.a
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.dw = sub i32 66, %i.z
  %i.dx = zext nneg i32 %i.dw to i64              ; 4 uses
  %i.dy = sub i32 34, %i.z
  %scevgep215 = getelementptr nuw i8, ptr %i.h, i64 4
  %i.dz = zext i32 %i.dt to i64
  %i.ea = and i64 %i.e, 4294967295
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph195, %ZSTD_hashPtr.exit
  %indvars.iv221 = phi i64 [ %i.dz, %.lr.ph195 ], [ %indvars.iv.next222, %ZSTD_hashPtr.exit ] ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv221 ; 5 uses
  %i.ec = load i32, ptr %i.dv, align 8, !tbaa !24
  switch i32 %i.ec, label %bb.n [
    i32 8, label %bb.r
    i32 5, label %bb.o
    i32 6, label %bb.p
    i32 7, label %bb.q
  ]

bb.n:                                             ; preds = %bb.m
  %.val142 = load i32, ptr %i.eb, align 1, !tbaa !25
  %i.ed = mul i32 %.val142, -1640531535
  %i.ee = lshr i32 %i.ed, %i.dy
  %i.ef = zext i32 %i.ee to i64
  br label %ZSTD_hashPtr.exit

bb.o:                                             ; preds = %bb.m
  %.val144 = load i64, ptr %i.eb, align 1, !tbaa !26
  %i.eg = mul i64 %.val144, -3523014627271114752
  %i.eh = lshr i64 %i.eg, %i.dx
  br label %ZSTD_hashPtr.exit

bb.p:                                             ; preds = %bb.m
  %.val146 = load i64, ptr %i.eb, align 1, !tbaa !26
  %i.ei = mul i64 %.val146, -3523014627193847808
  %i.ej = lshr i64 %i.ei, %i.dx
  br label %ZSTD_hashPtr.exit

bb.q:                                             ; preds = %bb.m
  %.val148 = load i64, ptr %i.eb, align 1, !tbaa !26
  %i.ek = mul i64 %.val148, -3523014627193167104
  %i.el = lshr i64 %i.ek, %i.dx
  br label %ZSTD_hashPtr.exit

bb.r:                                             ; preds = %bb.m
  %.val150 = load i64, ptr %i.eb, align 1, !tbaa !26
  %i.em = mul i64 %.val150, -3523014627327384477
  %i.en = lshr i64 %i.em, %i.dx
  br label %ZSTD_hashPtr.exit

ZSTD_hashPtr.exit:                                ; preds = %bb.n, %bb.o, %bb.p, %bb.q, %bb.r
  %.0.i = phi i64 [ %i.ef, %bb.n ], [ %i.en, %bb.r ], [ %i.eh, %bb.o ], [ %i.ej, %bb.p ], [ %i.el, %bb.q ] ; 2 uses
  %i.eo = shl i64 %.0.i, 4
  %i.ep = and i64 %i.eo, 17179869168              ; 2 uses
  %scevgep216 = getelementptr nuw i8, ptr %scevgep215, i64 %i.ep
  %scevgep217 = getelementptr nuw i8, ptr %i.h, i64 %i.ep
  %i.eq = load i64, ptr %scevgep217, align 4, !tbaa !25
  store i64 %i.eq, ptr %scevgep216, align 4, !tbaa !25
  %i.er = shl i64 %.0.i, 2
  %i.es = and i64 %i.er, 4294967292
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.es
  %i.eu = trunc nuw i64 %indvars.iv221 to i32
  store i32 %i.eu, ptr %i.et, align 4, !tbaa !25
  %indvars.iv.next222 = add nuw nsw i64 %indvars.iv221, 1 ; 2 uses
  %i.ev = icmp samesign ult i64 %indvars.iv.next222, %i.ea
  br i1 %i.ev, label %bb.m, label %._crit_edge196, !llvm.loop !32

._crit_edge196:                                   ; preds = %ZSTD_hashPtr.exit, %.unr-lcssa.a
  store i32 %i.f, ptr %i.n, align 4, !tbaa !21
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i32 @ZSTD_insertAndFindFirstIndex(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.b = load i32, ptr %i.a, align 8, !tbaa !24   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !18   ; 16 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.f = load i32, ptr %i.e, align 8, !tbaa !33   ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !19   ; 15 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !8    ; 16 uses
  %i.k = ptrtoint ptr %1 to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l                       ; 7 uses
  %i.n = trunc i64 %i.m to i32                    ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 6 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !21   ; 7 uses
  %i.q = icmp ult i32 %i.p, %i.n
  br i1 %i.q, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.s = load i32, ptr %i.r, align 4, !tbaa !34
  %notmask.i = shl nsw i32 -1, %i.s
  %i.t = xor i32 %notmask.i, -1
  %i.u = sub i32 64, %i.f
  %i.v = zext nneg i32 %i.u to i64                ; 12 uses
  %i.w = sub i32 32, %i.f                         ; 3 uses
  %i.x = zext i32 %i.p to i64                     ; 30 uses
  %i.y = and i64 %i.m, 4294967295                 ; 10 uses
  %i.z = zext nneg i32 %i.t to i64                ; 15 uses
  switch i32 %i.b, label %ZSTD_hashPtr.exit32.i.preheader [
    i32 8, label %ZSTD_hashPtr.exit32.i.us.preheader
    i32 5, label %ZSTD_hashPtr.exit32.i.us17.preheader
    i32 6, label %ZSTD_hashPtr.exit32.i.us21.preheader
    i32 7, label %ZSTD_hashPtr.exit32.i.us25.preheader
  ]

ZSTD_hashPtr.exit32.i.us25.preheader:             ; preds = %.lr.ph
  %i.aa = sub i64 %i.m, %i.x
  %.neg = add nuw nsw i64 %i.x, 1
  %xtraiter = and i64 %i.aa, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %ZSTD_hashPtr.exit32.i.us25.prol.loopexit, label %ZSTD_hashPtr.exit32.i.us25.prol

ZSTD_hashPtr.exit32.i.us25.prol:                  ; preds = %ZSTD_hashPtr.exit32.i.us25.preheader
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.x
  %.val10.us.prol = load i64, ptr %i.ab, align 1, !tbaa !26
  %i.ac = mul i64 %.val10.us.prol, -3523014627193167104
  %i.ad = lshr i64 %i.ac, %i.v
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ad ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !25
  %i.ag = and i64 %i.x, %i.z
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.ag
  store i32 %i.af, ptr %i.ah, align 4, !tbaa !25
  store i32 %i.p, ptr %i.ae, align 4, !tbaa !25
  %indvars.iv.next.prol = add nuw nsw i64 %i.x, 1
  br label %ZSTD_hashPtr.exit32.i.us25.prol.loopexit

ZSTD_hashPtr.exit32.i.us25.prol.loopexit:         ; preds = %ZSTD_hashPtr.exit32.i.us25.prol, %ZSTD_hashPtr.exit32.i.us25.preheader
  %indvars.iv.unr = phi i64 [ %i.x, %ZSTD_hashPtr.exit32.i.us25.preheader ], [ %indvars.iv.next.prol, %ZSTD_hashPtr.exit32.i.us25.prol ]
  %i.ai = icmp eq i64 %i.y, %.neg
  br i1 %i.ai, label %._crit_edge.thread47, label %ZSTD_hashPtr.exit32.i.us25

ZSTD_hashPtr.exit32.i.us21.preheader:             ; preds = %.lr.ph
  %i.aj = sub i64 %i.m, %i.x
  %.neg56 = add nuw nsw i64 %i.x, 1
  %xtraiter48 = and i64 %i.aj, 1
  %lcmp.mod49.not = icmp eq i64 %xtraiter48, 0
  br i1 %lcmp.mod49.not, label %ZSTD_hashPtr.exit32.i.us21.prol.loopexit, label %ZSTD_hashPtr.exit32.i.us21.prol

ZSTD_hashPtr.exit32.i.us21.prol:                  ; preds = %ZSTD_hashPtr.exit32.i.us21.preheader
  %i.ak = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.x
  %.val8.us.prol = load i64, ptr %i.ak, align 1, !tbaa !26
  %i.al = mul i64 %.val8.us.prol, -3523014627193847808
  %i.am = lshr i64 %i.al, %i.v
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.am ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !25
  %i.ap = and i64 %i.x, %i.z
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.ap
  store i32 %i.ao, ptr %i.aq, align 4, !tbaa !25
  store i32 %i.p, ptr %i.an, align 4, !tbaa !25
  %indvars.iv.next33.prol = add nuw nsw i64 %i.x, 1
  br label %ZSTD_hashPtr.exit32.i.us21.prol.loopexit

ZSTD_hashPtr.exit32.i.us21.prol.loopexit:         ; preds = %ZSTD_hashPtr.exit32.i.us21.prol, %ZSTD_hashPtr.exit32.i.us21.preheader
  %indvars.iv32.unr = phi i64 [ %i.x, %ZSTD_hashPtr.exit32.i.us21.preheader ], [ %indvars.iv.next33.prol, %ZSTD_hashPtr.exit32.i.us21.prol ]
  %i.ar = icmp eq i64 %i.y, %.neg56
  br i1 %i.ar, label %._crit_edge.thread46, label %ZSTD_hashPtr.exit32.i.us21

ZSTD_hashPtr.exit32.i.us17.preheader:             ; preds = %.lr.ph
  %i.as = sub i64 %i.m, %i.x
  %.neg57 = add nuw nsw i64 %i.x, 1
  %xtraiter50 = and i64 %i.as, 1
  %lcmp.mod51.not = icmp eq i64 %xtraiter50, 0
  br i1 %lcmp.mod51.not, label %ZSTD_hashPtr.exit32.i.us17.prol.loopexit, label %ZSTD_hashPtr.exit32.i.us17.prol

ZSTD_hashPtr.exit32.i.us17.prol:                  ; preds = %ZSTD_hashPtr.exit32.i.us17.preheader
  %i.at = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.x
  %.val6.us.prol = load i64, ptr %i.at, align 1, !tbaa !26
  %i.au = mul i64 %.val6.us.prol, -3523014627271114752
  %i.av = lshr i64 %i.au, %i.v
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.av ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !25
  %i.ay = and i64 %i.x, %i.z
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.ay
  store i32 %i.ax, ptr %i.az, align 4, !tbaa !25
  store i32 %i.p, ptr %i.aw, align 4, !tbaa !25
  %indvars.iv.next36.prol = add nuw nsw i64 %i.x, 1
  br label %ZSTD_hashPtr.exit32.i.us17.prol.loopexit

ZSTD_hashPtr.exit32.i.us17.prol.loopexit:         ; preds = %ZSTD_hashPtr.exit32.i.us17.prol, %ZSTD_hashPtr.exit32.i.us17.preheader
  %indvars.iv35.unr = phi i64 [ %i.x, %ZSTD_hashPtr.exit32.i.us17.preheader ], [ %indvars.iv.next36.prol, %ZSTD_hashPtr.exit32.i.us17.prol ]
  %i.ba = icmp eq i64 %i.y, %.neg57
end_hunk_0
