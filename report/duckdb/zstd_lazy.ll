inline.NumInlined: 1254
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 44
loop-unroll.NumRuntimeUnrolled: 126
loop-unroll.NumUnrolled: 170
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN11duckdb_zstd44ZSTD_dedicatedDictSearch_lazy_loadDictionaryEPNS_17ZSTD_matchState_tEPKh(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 3 uses
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = sub i64 %i.c, %i.d                       ; 3 uses
  %i.f = trunc i64 %i.e to i32                    ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !20   ; 15 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !21
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.l = load i32, ptr %i.k, align 4, !tbaa !22
  %i.m = shl nuw i32 1, %i.l                      ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !23   ; 5 uses
  %i.p = sub i32 %i.f, %i.o
  %i.q = icmp ult i32 %i.m, %i.p
  %i.r = sub i32 %i.f, %i.m
  %i.s = select i1 %i.q, i32 %i.r, i32 %i.o       ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.u = load i32, ptr %i.t, align 4, !tbaa !24
  %i.v = shl nuw i32 1, %i.u
  %i.w = add i32 %i.v, -3                         ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.y = load i32, ptr %i.x, align 8, !tbaa !25   ; 5 uses
  %i.z = add i32 %i.y, -2                         ; 6 uses
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = shl nuw i64 1, %i.aa
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.ab ; 5 uses
  %i.ad = shl i32 3, %i.z                         ; 2 uses
  %i.ae = icmp ult i32 %i.ad, %i.f
  %i.af = sub i32 %i.f, %i.ad
  %i.ag = select i1 %i.ae, i32 %i.af, i32 %i.o    ; 9 uses
  %i.ah = icmp ult i32 %i.o, %i.f
  br i1 %i.ah, label %.lr.ph, label %.preheader164

.lr.ph:                                           ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.aj = sub i32 66, %i.y
  %i.ak = zext nneg i32 %i.aj to i64              ; 4 uses
  %i.al = sub i32 34, %i.y
  %i.am = zext i32 %i.o to i64
  %i.an = zext i32 %i.ag to i64                   ; 2 uses
  %i.ao = and i64 %i.e, 4294967295
  br label %bb.b

.preheader164:                                    ; preds = %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit141._crit_edge, %bb.a
  %i.ap = shl nuw i32 1, %i.z                     ; 4 uses
  %.not197 = icmp eq i32 %i.w, 0
  %2 = tail call i32 @llvm.umax.i32(i32 %i.w, i32 1)
  %umax = tail call i32 @llvm.umin.i32(i32 %2, i32 255) ; 3 uses
  %wide.trip.count = zext i32 %i.ap to i64
  br label %bb.i

bb.b:                                             ; preds = %.lr.ph, %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit141._crit_edge
  %indvars.iv = phi i64 [ %i.am, %.lr.ph ], [ %indvars.iv.next, %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit141._crit_edge ] ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv ; 5 uses
  %i.ar = load i32, ptr %i.ai, align 8, !tbaa !26
  switch i32 %i.ar, label %bb.c [
    i32 8, label %bb.g
    i32 5, label %bb.d
    i32 6, label %bb.e
    i32 7, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  %.val = load i32, ptr %i.aq, align 1, !tbaa !3
  %i.as = mul i32 %.val, -1640531535
  %i.at = lshr i32 %i.as, %i.al
  %i.au = zext i32 %i.at to i64
  br label %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit141

bb.d:                                             ; preds = %bb.b
  %.val143 = load i64, ptr %i.aq, align 1, !tbaa !27
  %i.av = mul i64 %.val143, -3523014627271114752
  %i.aw = lshr i64 %i.av, %i.ak
  br label %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit141

bb.e:                                             ; preds = %bb.b
  %.val145 = load i64, ptr %i.aq, align 1, !tbaa !27
  %i.ax = mul i64 %.val145, -3523014627193847808
  %i.ay = lshr i64 %i.ax, %i.ak
  br label %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit141

bb.f:                                             ; preds = %bb.b
  %.val147 = load i64, ptr %i.aq, align 1, !tbaa !27
  %i.az = mul i64 %.val147, -3523014627193167104
  %i.ba = lshr i64 %i.az, %i.ak
  br label %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit141

bb.g:                                             ; preds = %bb.b
  %.val149 = load i64, ptr %i.aq, align 1, !tbaa !27
  %i.bb = mul i64 %.val149, -3523014627327384477
  %i.bc = lshr i64 %i.bb, %i.ak
  br label %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit141

_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit141:    ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.0.i140 = phi i64 [ %i.au, %bb.c ], [ %i.bc, %bb.g ], [ %i.aw, %bb.d ], [ %i.ay, %bb.e ], [ %i.ba, %bb.f ]
  %.not138 = icmp samesign ult i64 %indvars.iv, %i.an
  %.pre = and i64 %.0.i140, 4294967295            ; 2 uses
  br i1 %.not138, label %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit141._crit_edge, label %bb.h

bb.h:                                             ; preds = %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit141
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.pre
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !3
  %i.bf = sub nuw nsw i64 %indvars.iv, %i.an
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.bf
  store i32 %i.be, ptr %i.bg, align 4, !tbaa !3
  br label %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit141._crit_edge

_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit141._crit_edge: ; preds = %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit141, %bb.h
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.pre
  %i.bi = trunc nuw i64 %indvars.iv to i32
  store i32 %i.bi, ptr %i.bh, align 4, !tbaa !3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bj = icmp samesign ult i64 %indvars.iv.next, %i.ao
  br i1 %i.bj, label %bb.b, label %.preheader164, !llvm.loop !28

bb.i:                                             ; preds = %.preheader164, %.thread
  %indvars.iv205 = phi i64 [ 0, %.preheader164 ], [ %indvars.iv.next206, %.thread ] ; 2 uses
  %.0119188 = phi i32 [ 0, %.preheader164 ], [ %.2155, %.thread ] ; 5 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv205 ; 2 uses
  %.0121170 = load i32, ptr %i.bk, align 4, !tbaa !3 ; 3 uses
  %.not198 = icmp ult i32 %.0121170, %i.ag
  br i1 %.not198, label %.thread, label %.lr.ph174

.lr.ph174:                                        ; preds = %bb.i
  %i.bl = icmp ult i32 %.0121170, %i.s
  %i.bm = zext i1 %i.bl to i32
  %i.bn = sub nuw i32 %.0121170, %i.ag
  %i.bo = zext i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.bo
  %.0121 = load i32, ptr %i.bp, align 4, !tbaa !3 ; 3 uses
  %.not = icmp ult i32 %.0121, %i.ag
  br i1 %.not, label %.thread, label %.lr.ph174.1

.lr.ph174.1:                                      ; preds = %.lr.ph174
  %i.bq = icmp ult i32 %.0121, %i.s
  %i.br = zext i1 %i.bq to i32
  %spec.select.1 = add nuw nsw i32 %i.bm, %i.br
  %i.bs = sub nuw i32 %.0121, %i.ag
  %i.bt = zext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.bt
  %.0121.1 = load i32, ptr %i.bu, align 4, !tbaa !3 ; 3 uses
  %.not272 = icmp ult i32 %.0121.1, %i.ag
  br i1 %.not272, label %.thread, label %.lr.ph174.2

.lr.ph174.2:                                      ; preds = %.lr.ph174.1
  %i.bv = icmp ult i32 %.0121.1, %i.s
  %i.bw = zext i1 %i.bv to i32
  %spec.select.2 = add nuw nsw i32 %spec.select.1, %i.bw
  %i.bx = sub nuw i32 %.0121.1, %i.ag
  %i.by = zext i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.by
  %.0121.2 = load i32, ptr %i.bz, align 4, !tbaa !3
  br i1 %.not197, label %.thread, label %.lr.ph181

.lr.ph181:                                        ; preds = %.lr.ph174.2, %bb.l
  %.1120180 = phi i32 [ %i.cd, %bb.l ], [ %.0119188, %.lr.ph174.2 ] ; 5 uses
  %.1122179 = phi i32 [ %i.co, %bb.l ], [ %.0121.2, %.lr.ph174.2 ] ; 5 uses
  %.2125178 = phi i32 [ %.3, %bb.l ], [ %spec.select.2, %.lr.ph174.2 ] ; 2 uses
  %.1127177 = phi i32 [ %i.cg, %bb.l ], [ 0, %.lr.ph174.2 ] ; 5 uses
  %i.ca = icmp ult i32 %.1122179, %i.s
  br i1 %i.ca, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph181
  %.not136 = icmp eq i32 %.1122179, 0
  %i.cb = add i32 %.2125178, 1                    ; 2 uses
  %i.cc = icmp ugt i32 %i.cb, 3
  %or.cond = select i1 %.not136, i1 true, i1 %i.cc
  br i1 %or.cond, label %._crit_edge182, label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph181
  %.3 = phi i32 [ %i.cb, %bb.j ], [ %.2125178, %.lr.ph181 ]
  %i.cd = add i32 %.1120180, 1                    ; 4 uses
  %i.ce = zext i32 %.1120180 to i64
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.ce
  store i32 %.1122179, ptr %i.cf, align 4, !tbaa !3
  %i.cg = add i32 %.1127177, 1                    ; 3 uses
  %i.ch = icmp ult i32 %.1122179, %i.ag
  br i1 %i.ch, label %.thread157, label %bb.l

.thread157:                                       ; preds = %bb.k
  %i.ci = sub i32 %.1120180, %.1127177
  %i.cj = shl i32 %i.ci, 8
  %i.ck = add i32 %i.cj, %i.cg
  br label %.thread

bb.l:                                             ; preds = %bb.k
  %i.cl = sub nuw i32 %.1122179, %i.ag
  %i.cm = zext i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.cm
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !3
  %exitcond.not = icmp eq i32 %i.cg, %umax
  br i1 %exitcond.not, label %._crit_edge182.thread240, label %.lr.ph181, !llvm.loop !30

._crit_edge182.thread240:                         ; preds = %bb.l
  %i.cp = sub i32 %i.cd, %umax
  %i.cq = shl i32 %i.cp, 8
  %i.cr = or disjoint i32 %i.cq, %umax
  br label %.thread

._crit_edge182:                                   ; preds = %bb.j
  %.not137 = icmp eq i32 %.1127177, 0
  %i.cs = sub i32 %.1120180, %.1127177
  %i.ct = shl i32 %i.cs, 8
  %i.cu = add i32 %i.ct, %.1127177
  %spec.select254 = select i1 %.not137, i32 0, i32 %i.cu
  br label %.thread

.thread:                                          ; preds = %.lr.ph174, %.lr.ph174.1, %._crit_edge182, %.lr.ph174.2, %bb.i, %._crit_edge182.thread240, %.thread157
  %.2155 = phi i32 [ %i.cd, %.thread157 ], [ %.0119188, %bb.i ], [ %.0119188, %.lr.ph174.2 ], [ %i.cd, %._crit_edge182.thread240 ], [ %.1120180, %._crit_edge182 ], [ %.0119188, %.lr.ph174.1 ], [ %.0119188, %.lr.ph174 ]
  %i.cv = phi i32 [ %i.ck, %.thread157 ], [ 0, %bb.i ], [ 0, %.lr.ph174.2 ], [ %i.cr, %._crit_edge182.thread240 ], [ %spec.select254, %._crit_edge182 ], [ 0, %.lr.ph174.1 ], [ 0, %.lr.ph174 ]
  store i32 %i.cv, ptr %i.bk, align 4, !tbaa !3
  %indvars.iv.next206 = add nuw nsw i64 %indvars.iv205, 1 ; 2 uses
  %exitcond208.not = icmp eq i64 %indvars.iv.next206, %wide.trip.count
  br i1 %exitcond208.not, label %.preheader.preheader, label %bb.i, !llvm.loop !31

.preheader.preheader:                             ; preds = %.thread
  %i.cw = shl i32 4, %i.z
  %i.cx = add i32 %i.cw, -4                       ; 2 uses
  %i.cy = icmp eq i32 %i.z, 0
  br i1 %i.cy, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i32 %i.ap, -2
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %indvars.iv212 = phi i64 [ 0, %.preheader.preheader.new ], [ %indvars.iv.next213.1, %.preheader ] ; 3 uses
  %.1118191 = phi i32 [ %i.ap, %.preheader.preheader.new ], [ %i.ds, %.preheader ] ; 2 uses
  %niter = phi i32 [ 0, %.preheader.preheader.new ], [ %niter.next.1, %.preheader ]
  %i.cz = trunc nuw i64 %indvars.iv212 to i32
  %i.da = shl i32 %i.cz, 2
  %i.db = sub i32 %i.cx, %i.da
  %i.dc = zext i32 %i.db to i64
  %i.dd = shl nuw nsw i64 %i.dc, 2
  %scevgep = getelementptr nuw i8, ptr %i.h, i64 %i.dd
  %i.de = add i32 %.1118191, -1                   ; 2 uses
  %i.df = zext i32 %i.de to i64
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.df
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %scevgep, i8 0, i64 12, i1 false), !tbaa !3
  %i.di = shl i32 %i.de, 2
  %i.dj = or disjoint i32 %i.di, 3
  %i.dk = zext i32 %i.dj to i64
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.dk
  store i32 %i.dh, ptr %i.dl, align 4, !tbaa !3
  %i.dm = trunc i64 %indvars.iv212 to i32
  %i.dn = shl i32 %i.dm, 2
  %i.do = or disjoint i32 %i.dn, 4
  %i.dp = sub i32 %i.cx, %i.do
  %i.dq = zext i32 %i.dp to i64
  %i.dr = shl nuw nsw i64 %i.dq, 2
  %scevgep.1 = getelementptr nuw i8, ptr %i.h, i64 %i.dr
  %i.ds = add i32 %.1118191, -2                   ; 3 uses
  %i.dt = zext i32 %i.ds to i64
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.dt
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %scevgep.1, i8 0, i64 12, i1 false), !tbaa !3
  %i.dw = shl i32 %i.ds, 2
  %i.dx = or disjoint i32 %i.dw, 3
  %i.dy = zext i32 %i.dx to i64
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.dy
  store i32 %i.dv, ptr %i.dz, align 4, !tbaa !3
  %indvars.iv.next213.1 = add nuw nsw i64 %indvars.iv212, 2
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %.preheader, !llvm.loop !32

.preheader.epil.preheader:                        ; preds = %.preheader.preheader
  %lcmp.mod271 = icmp eq i32 %i.z, 0
  tail call void @llvm.assume(i1 %lcmp.mod271)
  %i.ea = add nsw i32 %i.ap, -1
  %i.eb = zext nneg i32 %i.ea to i64
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.eb
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.h, i8 0, i64 12, i1 false), !tbaa !3
  %i.ee = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 %i.ed, ptr %i.ee, align 4, !tbaa !3
  br label %.unr-lcssa

.unr-lcssa:                                       ; preds = %.preheader, %.preheader.epil.preheader
  %i.ef = load i32, ptr %i.n, align 4, !tbaa !23  ; 2 uses
  %i.eg = icmp ult i32 %i.ef, %i.f
  br i1 %i.eg, label %.lr.ph195, label %._crit_edge196

.lr.ph195:                                        ; preds = %.unr-lcssa
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.ei = sub i32 66, %i.y
  %i.ej = zext nneg i32 %i.ei to i64              ; 4 uses
  %i.ek = sub i32 34, %i.y
  %i.el = zext i32 %i.ef to i64
  %i.em = and i64 %i.e, 4294967295
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph195, %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit
  %indvars.iv221 = phi i64 [ %i.el, %.lr.ph195 ], [ %indvars.iv.next222, %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit ] ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv221 ; 5 uses
  %i.eo = load i32, ptr %i.eh, align 8, !tbaa !26
  switch i32 %i.eo, label %bb.n [
    i32 8, label %bb.r
    i32 5, label %bb.o
    i32 6, label %bb.p
    i32 7, label %bb.q
  ]

bb.n:                                             ; preds = %bb.m
  %.val142 = load i32, ptr %i.en, align 1, !tbaa !3
  %i.ep = mul i32 %.val142, -1640531535
  %i.eq = lshr i32 %i.ep, %i.ek
  %i.er = zext i32 %i.eq to i64
  br label %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit

bb.o:                                             ; preds = %bb.m
  %.val144 = load i64, ptr %i.en, align 1, !tbaa !27
  %i.es = mul i64 %.val144, -3523014627271114752
  %i.et = lshr i64 %i.es, %i.ej
  br label %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit

bb.p:                                             ; preds = %bb.m
  %.val146 = load i64, ptr %i.en, align 1, !tbaa !27
  %i.eu = mul i64 %.val146, -3523014627193847808
  %i.ev = lshr i64 %i.eu, %i.ej
  br label %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit

bb.q:                                             ; preds = %bb.m
  %.val148 = load i64, ptr %i.en, align 1, !tbaa !27
  %i.ew = mul i64 %.val148, -3523014627193167104
  %i.ex = lshr i64 %i.ew, %i.ej
  br label %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit

bb.r:                                             ; preds = %bb.m
  %.val150 = load i64, ptr %i.en, align 1, !tbaa !27
  %i.ey = mul i64 %.val150, -3523014627327384477
  %i.ez = lshr i64 %i.ey, %i.ej
  br label %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit

_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit:       ; preds = %bb.n, %bb.o, %bb.p, %bb.q, %bb.r
  %.0.i = phi i64 [ %i.er, %bb.n ], [ %i.ez, %bb.r ], [ %i.et, %bb.o ], [ %i.ev, %bb.p ], [ %i.ex, %bb.q ]
  %i.fa = shl i64 %.0.i, 2
  %i.fb = and i64 %i.fa, 4294967292               ; 2 uses
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.fb ; 2 uses
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.fb
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 4
  %i.ff = load <2 x i32>, ptr %i.fc, align 4, !tbaa !3
  store <2 x i32> %i.ff, ptr %i.fe, align 4, !tbaa !3
  %i.fg = trunc nuw i64 %indvars.iv221 to i32
  store i32 %i.fg, ptr %i.fc, align 4, !tbaa !3
  %indvars.iv.next222 = add nuw nsw i64 %indvars.iv221, 1 ; 2 uses
  %i.fh = icmp samesign ult i64 %indvars.iv.next222, %i.em
  br i1 %i.fh, label %bb.m, label %._crit_edge196, !llvm.loop !33

._crit_edge196:                                   ; preds = %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit, %.unr-lcssa
  store i32 %i.f, ptr %i.n, align 4, !tbaa !23
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZN11duckdb_zstd28ZSTD_insertAndFindFirstIndexEPNS_17ZSTD_matchState_tEPKh(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !20   ; 16 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.f = load i32, ptr %i.e, align 8, !tbaa !34   ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !21   ; 15 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !7    ; 16 uses
  %i.k = ptrtoint ptr %1 to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l                       ; 7 uses
  %i.n = trunc i64 %i.m to i32                    ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 6 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !23   ; 7 uses
  %i.q = icmp ult i32 %i.p, %i.n
  br i1 %i.q, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.s = load i32, ptr %i.r, align 4, !tbaa !35
  %notmask.i = shl nsw i32 -1, %i.s
  %i.t = xor i32 %notmask.i, -1
  %i.u = sub i32 64, %i.f
  %i.v = zext nneg i32 %i.u to i64                ; 12 uses
  %i.w = sub i32 32, %i.f                         ; 3 uses
  %i.x = zext i32 %i.p to i64                     ; 30 uses
  %i.y = and i64 %i.m, 4294967295                 ; 10 uses
  %i.z = zext nneg i32 %i.t to i64                ; 15 uses
  switch i32 %i.b, label %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit32.i.preheader [
    i32 8, label %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit32.i.us.preheader
    i32 5, label %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit32.i.us17.preheader
end_hunk_0
