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
  %i.x = tail call i32 @llvm.umin.i32(i32 %i.w, i32 255) ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.z = load i32, ptr %i.y, align 8, !tbaa !25   ; 5 uses
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

.preheader164:                                    ; preds = %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit141._crit_edge, %bb.a
  %i.aq = shl nuw i32 1, %i.aa                    ; 4 uses
  %.not197 = icmp eq i32 %i.w, 0
  %wide.trip.count = zext i32 %i.aq to i64
  br label %bb.i

bb.b:                                             ; preds = %.lr.ph, %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit141._crit_edge
  %indvars.iv = phi i64 [ %i.an, %.lr.ph ], [ %indvars.iv.next, %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit141._crit_edge ] ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv ; 5 uses
  %i.as = load i32, ptr %i.aj, align 8, !tbaa !26
  switch i32 %i.as, label %bb.c [
    i32 8, label %bb.g
    i32 5, label %bb.d
    i32 6, label %bb.e
    i32 7, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  %.val = load i32, ptr %i.ar, align 1, !tbaa !3
  %i.at = mul i32 %.val, -1640531535
  %i.au = lshr i32 %i.at, %i.am
  %i.av = zext i32 %i.au to i64
  br label %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit141

bb.d:                                             ; preds = %bb.b
  %.val143 = load i64, ptr %i.ar, align 1, !tbaa !27
  %i.aw = mul i64 %.val143, -3523014627271114752
  %i.ax = lshr i64 %i.aw, %i.al
  br label %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit141

bb.e:                                             ; preds = %bb.b
  %.val145 = load i64, ptr %i.ar, align 1, !tbaa !27
  %i.ay = mul i64 %.val145, -3523014627193847808
  %i.az = lshr i64 %i.ay, %i.al
  br label %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit141

bb.f:                                             ; preds = %bb.b
  %.val147 = load i64, ptr %i.ar, align 1, !tbaa !27
  %i.ba = mul i64 %.val147, -3523014627193167104
  %i.bb = lshr i64 %i.ba, %i.al
  br label %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit141

bb.g:                                             ; preds = %bb.b
  %.val149 = load i64, ptr %i.ar, align 1, !tbaa !27
  %i.bc = mul i64 %.val149, -3523014627327384477
  %i.bd = lshr i64 %i.bc, %i.al
  br label %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit141

_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit141:    ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.0.i140 = phi i64 [ %i.av, %bb.c ], [ %i.bd, %bb.g ], [ %i.ax, %bb.d ], [ %i.az, %bb.e ], [ %i.bb, %bb.f ]
  %.not138 = icmp samesign ult i64 %indvars.iv, %i.ao
  %.pre = and i64 %.0.i140, 4294967295            ; 2 uses
  br i1 %.not138, label %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit141._crit_edge, label %bb.h

bb.h:                                             ; preds = %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit141
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.pre
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !3
  %i.bg = sub nuw nsw i64 %indvars.iv, %i.ao
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.bg
  store i32 %i.bf, ptr %i.bh, align 4, !tbaa !3
  br label %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit141._crit_edge

_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit141._crit_edge: ; preds = %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit141, %bb.h
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.pre
  %i.bj = trunc nuw i64 %indvars.iv to i32
  store i32 %i.bj, ptr %i.bi, align 4, !tbaa !3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bk = icmp samesign ult i64 %indvars.iv.next, %i.ap
  br i1 %i.bk, label %bb.b, label %.preheader164, !llvm.loop !28

bb.i:                                             ; preds = %.preheader164, %.thread
  %indvars.iv205 = phi i64 [ 0, %.preheader164 ], [ %indvars.iv.next206, %.thread ] ; 2 uses
  %.0119188 = phi i32 [ 0, %.preheader164 ], [ %.2155, %.thread ] ; 5 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv205 ; 2 uses
  %.0121170 = load i32, ptr %i.bl, align 4, !tbaa !3 ; 3 uses
  %.not198 = icmp ult i32 %.0121170, %i.ah
  br i1 %.not198, label %.thread, label %.lr.ph174

.lr.ph174:                                        ; preds = %bb.i
  %i.bm = icmp ult i32 %.0121170, %i.s
  %i.bn = zext i1 %i.bm to i32
  %i.bo = sub nuw i32 %.0121170, %i.ah
  %i.bp = zext i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.bp
  %.0121 = load i32, ptr %i.bq, align 4, !tbaa !3 ; 3 uses
  %.not = icmp ult i32 %.0121, %i.ah
  br i1 %.not, label %.thread, label %.lr.ph174.1

.lr.ph174.1:                                      ; preds = %.lr.ph174
  %i.br = icmp ult i32 %.0121, %i.s
  %i.bs = zext i1 %i.br to i32
  %spec.select.1 = add nuw nsw i32 %i.bn, %i.bs
  %i.bt = sub nuw i32 %.0121, %i.ah
  %i.bu = zext i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.bu
  %.0121.1 = load i32, ptr %i.bv, align 4, !tbaa !3 ; 3 uses
  %.not273 = icmp ult i32 %.0121.1, %i.ah
  br i1 %.not273, label %.thread, label %.lr.ph174.2

.lr.ph174.2:                                      ; preds = %.lr.ph174.1
  %i.bw = icmp ult i32 %.0121.1, %i.s
  %i.bx = zext i1 %i.bw to i32
  %spec.select.2 = add nuw nsw i32 %spec.select.1, %i.bx
  %i.by = sub nuw i32 %.0121.1, %i.ah
  %i.bz = zext i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.bz
  %.0121.2 = load i32, ptr %i.ca, align 4, !tbaa !3
  br i1 %.not197, label %.thread, label %.lr.ph181

.lr.ph181:                                        ; preds = %.lr.ph174.2, %bb.l
  %.1120180 = phi i32 [ %i.ce, %bb.l ], [ %.0119188, %.lr.ph174.2 ] ; 5 uses
  %.1122179 = phi i32 [ %i.cp, %bb.l ], [ %.0121.2, %.lr.ph174.2 ] ; 5 uses
  %.2125178 = phi i32 [ %.3, %bb.l ], [ %spec.select.2, %.lr.ph174.2 ] ; 2 uses
  %.1127177 = phi i32 [ %i.ch, %bb.l ], [ 0, %.lr.ph174.2 ] ; 5 uses
  %i.cb = icmp ult i32 %.1122179, %i.s
  br i1 %i.cb, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph181
  %.not136 = icmp eq i32 %.1122179, 0
  %i.cc = add i32 %.2125178, 1                    ; 2 uses
  %i.cd = icmp ugt i32 %i.cc, 3
  %or.cond = select i1 %.not136, i1 true, i1 %i.cd
  br i1 %or.cond, label %._crit_edge182, label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph181
  %.3 = phi i32 [ %i.cc, %bb.j ], [ %.2125178, %.lr.ph181 ]
  %i.ce = add i32 %.1120180, 1                    ; 4 uses
  %i.cf = zext i32 %.1120180 to i64
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.cf
  store i32 %.1122179, ptr %i.cg, align 4, !tbaa !3
  %i.ch = add i32 %.1127177, 1                    ; 3 uses
  %i.ci = icmp ult i32 %.1122179, %i.ah
  br i1 %i.ci, label %.thread157, label %bb.l

.thread157:                                       ; preds = %bb.k
  %i.cj = sub i32 %.1120180, %.1127177
  %i.ck = shl i32 %i.cj, 8
  %i.cl = add i32 %i.ck, %i.ch
  br label %.thread

bb.l:                                             ; preds = %bb.k
  %i.cm = sub nuw i32 %.1122179, %i.ah
  %i.cn = zext i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.cn
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !3
  %exitcond.not = icmp eq i32 %i.ch, %i.x
  br i1 %exitcond.not, label %._crit_edge182.thread241, label %.lr.ph181, !llvm.loop !30

._crit_edge182.thread241:                         ; preds = %bb.l
  %i.cq = sub i32 %i.ce, %i.x
  %i.cr = shl i32 %i.cq, 8
  %i.cs = or disjoint i32 %i.cr, %i.x
  br label %.thread

._crit_edge182:                                   ; preds = %bb.j
  %.not137 = icmp eq i32 %.1127177, 0
  %i.ct = sub i32 %.1120180, %.1127177
  %i.cu = shl i32 %i.ct, 8
  %i.cv = add i32 %i.cu, %.1127177
  %spec.select255 = select i1 %.not137, i32 0, i32 %i.cv
  br label %.thread

.thread:                                          ; preds = %.lr.ph174, %.lr.ph174.1, %._crit_edge182, %.lr.ph174.2, %bb.i, %._crit_edge182.thread241, %.thread157
  %.2155 = phi i32 [ %i.ce, %.thread157 ], [ %.0119188, %bb.i ], [ %.0119188, %.lr.ph174.2 ], [ %i.ce, %._crit_edge182.thread241 ], [ %.1120180, %._crit_edge182 ], [ %.0119188, %.lr.ph174.1 ], [ %.0119188, %.lr.ph174 ]
  %i.cw = phi i32 [ %i.cl, %.thread157 ], [ 0, %bb.i ], [ 0, %.lr.ph174.2 ], [ %i.cs, %._crit_edge182.thread241 ], [ %spec.select255, %._crit_edge182 ], [ 0, %.lr.ph174.1 ], [ 0, %.lr.ph174 ]
  store i32 %i.cw, ptr %i.bl, align 4, !tbaa !3
  %indvars.iv.next206 = add nuw nsw i64 %indvars.iv205, 1 ; 2 uses
  %exitcond208.not = icmp eq i64 %indvars.iv.next206, %wide.trip.count
  br i1 %exitcond208.not, label %.preheader.preheader, label %bb.i, !llvm.loop !31

.preheader.preheader:                             ; preds = %.thread
  %i.cx = shl i32 4, %i.aa
  %i.cy = add i32 %i.cx, -4                       ; 2 uses
  %i.cz = icmp eq i32 %i.aa, 0
  br i1 %i.cz, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i32 %i.aq, -2
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %indvars.iv212 = phi i64 [ 0, %.preheader.preheader.new ], [ %indvars.iv.next213.1, %.preheader ] ; 3 uses
  %.1118191 = phi i32 [ %i.aq, %.preheader.preheader.new ], [ %i.dt, %.preheader ] ; 2 uses
  %niter = phi i32 [ 0, %.preheader.preheader.new ], [ %niter.next.1, %.preheader ]
  %i.da = trunc nuw i64 %indvars.iv212 to i32
  %i.db = shl i32 %i.da, 2
  %i.dc = sub i32 %i.cy, %i.db
  %i.dd = zext i32 %i.dc to i64
  %i.de = shl nuw nsw i64 %i.dd, 2
  %scevgep = getelementptr nuw i8, ptr %i.h, i64 %i.de
  %i.df = add i32 %.1118191, -1                   ; 2 uses
  %i.dg = zext i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.dg
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %scevgep, i8 0, i64 12, i1 false), !tbaa !3
  %i.dj = shl i32 %i.df, 2
  %i.dk = or disjoint i32 %i.dj, 3
  %i.dl = zext i32 %i.dk to i64
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.dl
  store i32 %i.di, ptr %i.dm, align 4, !tbaa !3
  %i.dn = trunc i64 %indvars.iv212 to i32
  %i.do = shl i32 %i.dn, 2
  %i.dp = or disjoint i32 %i.do, 4
  %i.dq = sub i32 %i.cy, %i.dp
  %i.dr = zext i32 %i.dq to i64
  %i.ds = shl nuw nsw i64 %i.dr, 2
  %scevgep.1 = getelementptr nuw i8, ptr %i.h, i64 %i.ds
  %i.dt = add i32 %.1118191, -2                   ; 3 uses
  %i.du = zext i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.du
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %scevgep.1, i8 0, i64 12, i1 false), !tbaa !3
  %i.dx = shl i32 %i.dt, 2
  %i.dy = or disjoint i32 %i.dx, 3
  %i.dz = zext i32 %i.dy to i64
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.dz
  store i32 %i.dw, ptr %i.ea, align 4, !tbaa !3
  %indvars.iv.next213.1 = add nuw nsw i64 %indvars.iv212, 2
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %.preheader, !llvm.loop !32

.preheader.epil.preheader:                        ; preds = %.preheader.preheader
  %lcmp.mod272 = icmp eq i32 %i.aa, 0
  tail call void @llvm.assume(i1 %lcmp.mod272)
  %i.eb = add nsw i32 %i.aq, -1
  %i.ec = zext nneg i32 %i.eb to i64
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.ec
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.h, i8 0, i64 12, i1 false), !tbaa !3
  %i.ef = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 %i.ee, ptr %i.ef, align 4, !tbaa !3
  br label %.unr-lcssa

.unr-lcssa:                                       ; preds = %.preheader, %.preheader.epil.preheader
  %i.eg = load i32, ptr %i.n, align 4, !tbaa !23  ; 2 uses
  %i.eh = icmp ult i32 %i.eg, %i.f
  br i1 %i.eh, label %.lr.ph195, label %._crit_edge196

.lr.ph195:                                        ; preds = %.unr-lcssa
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.ej = sub i32 66, %i.z
  %i.ek = zext nneg i32 %i.ej to i64              ; 4 uses
  %i.el = sub i32 34, %i.z
  %i.em = zext i32 %i.eg to i64
  %i.en = and i64 %i.e, 4294967295
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph195, %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit
  %indvars.iv221 = phi i64 [ %i.em, %.lr.ph195 ], [ %indvars.iv.next222, %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit ] ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv221 ; 5 uses
  %i.ep = load i32, ptr %i.ei, align 8, !tbaa !26
  switch i32 %i.ep, label %bb.n [
    i32 8, label %bb.r
    i32 5, label %bb.o
    i32 6, label %bb.p
    i32 7, label %bb.q
  ]

bb.n:                                             ; preds = %bb.m
  %.val142 = load i32, ptr %i.eo, align 1, !tbaa !3
  %i.eq = mul i32 %.val142, -1640531535
  %i.er = lshr i32 %i.eq, %i.el
  %i.es = zext i32 %i.er to i64
  br label %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit

bb.o:                                             ; preds = %bb.m
  %.val144 = load i64, ptr %i.eo, align 1, !tbaa !27
  %i.et = mul i64 %.val144, -3523014627271114752
  %i.eu = lshr i64 %i.et, %i.ek
  br label %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit

bb.p:                                             ; preds = %bb.m
  %.val146 = load i64, ptr %i.eo, align 1, !tbaa !27
  %i.ev = mul i64 %.val146, -3523014627193847808
  %i.ew = lshr i64 %i.ev, %i.ek
  br label %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit

bb.q:                                             ; preds = %bb.m
  %.val148 = load i64, ptr %i.eo, align 1, !tbaa !27
  %i.ex = mul i64 %.val148, -3523014627193167104
  %i.ey = lshr i64 %i.ex, %i.ek
  br label %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit

bb.r:                                             ; preds = %bb.m
  %.val150 = load i64, ptr %i.eo, align 1, !tbaa !27
  %i.ez = mul i64 %.val150, -3523014627327384477
  %i.fa = lshr i64 %i.ez, %i.ek
  br label %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit

_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit:       ; preds = %bb.n, %bb.o, %bb.p, %bb.q, %bb.r
  %.0.i = phi i64 [ %i.es, %bb.n ], [ %i.fa, %bb.r ], [ %i.eu, %bb.o ], [ %i.ew, %bb.p ], [ %i.ey, %bb.q ]
  %i.fb = shl i64 %.0.i, 2
  %i.fc = and i64 %i.fb, 4294967292               ; 2 uses
  %2 = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.fc ; 2 uses
  %3 = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.fc
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %5 = load <2 x i32>, ptr %2, align 4, !tbaa !3
  store <2 x i32> %5, ptr %4, align 4, !tbaa !3
  %i.fd = trunc nuw i64 %indvars.iv221 to i32
  store i32 %i.fd, ptr %2, align 4, !tbaa !3
  %indvars.iv.next222 = add nuw nsw i64 %indvars.iv221, 1 ; 2 uses
  %i.fe = icmp samesign ult i64 %indvars.iv.next222, %i.en
  br i1 %i.fe, label %bb.m, label %._crit_edge196, !llvm.loop !33

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
    i32 6, label %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit32.i.us21.preheader
    i32 7, label %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit32.i.us25.preheader
  ]

_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit32.i.us25.preheader: ; preds = %.lr.ph
  %i.aa = sub i64 %i.m, %i.x
  %.neg = add nuw nsw i64 %i.x, 1
  %xtraiter = and i64 %i.aa, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit32.i.us25.prol.loopexit, label %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit32.i.us25.prol

_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit32.i.us25.prol: ; preds = %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit32.i.us25.preheader
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.x
  %.val10.us.prol = load i64, ptr %i.ab, align 1, !tbaa !27
  %i.ac = mul i64 %.val10.us.prol, -3523014627193167104
  %i.ad = lshr i64 %i.ac, %i.v
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ad ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !3
  %i.ag = and i64 %i.x, %i.z
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.ag
  store i32 %i.af, ptr %i.ah, align 4, !tbaa !3
  store i32 %i.p, ptr %i.ae, align 4, !tbaa !3
  %indvars.iv.next.prol = add nuw nsw i64 %i.x, 1
  br label %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit32.i.us25.prol.loopexit

_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit32.i.us25.prol.loopexit: ; preds = %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit32.i.us25.prol, %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit32.i.us25.preheader
  %indvars.iv.unr = phi i64 [ %i.x, %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit32.i.us25.preheader ], [ %indvars.iv.next.prol, %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit32.i.us25.prol ]
  %i.ai = icmp eq i64 %i.y, %.neg
  br i1 %i.ai, label %._crit_edge.thread47, label %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit32.i.us25

_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit32.i.us21.preheader: ; preds = %.lr.ph
  %i.aj = sub i64 %i.m, %i.x
  %.neg56 = add nuw nsw i64 %i.x, 1
  %xtraiter48 = and i64 %i.aj, 1
  %lcmp.mod49.not = icmp eq i64 %xtraiter48, 0
  br i1 %lcmp.mod49.not, label %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit32.i.us21.prol.loopexit, label %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit32.i.us21.prol

_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit32.i.us21.prol: ; preds = %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit32.i.us21.preheader
  %i.ak = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.x
  %.val8.us.prol = load i64, ptr %i.ak, align 1, !tbaa !27
  %i.al = mul i64 %.val8.us.prol, -3523014627193847808
  %i.am = lshr i64 %i.al, %i.v
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.am ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !3
  %i.ap = and i64 %i.x, %i.z
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.ap
  store i32 %i.ao, ptr %i.aq, align 4, !tbaa !3
  store i32 %i.p, ptr %i.an, align 4, !tbaa !3
  %indvars.iv.next33.prol = add nuw nsw i64 %i.x, 1
  br label %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit32.i.us21.prol.loopexit

_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit32.i.us21.prol.loopexit: ; preds = %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit32.i.us21.prol, %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit32.i.us21.preheader
  %indvars.iv32.unr = phi i64 [ %i.x, %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit32.i.us21.preheader ], [ %indvars.iv.next33.prol, %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit32.i.us21.prol ]
  %i.ar = icmp eq i64 %i.y, %.neg56
  br i1 %i.ar, label %._crit_edge.thread46, label %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit32.i.us21

_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit32.i.us17.preheader: ; preds = %.lr.ph
  %i.as = sub i64 %i.m, %i.x
  %.neg57 = add nuw nsw i64 %i.x, 1
  %xtraiter50 = and i64 %i.as, 1
  %lcmp.mod51.not = icmp eq i64 %xtraiter50, 0
  br i1 %lcmp.mod51.not, label %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit32.i.us17.prol.loopexit, label %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit32.i.us17.prol

_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit32.i.us17.prol: ; preds = %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit32.i.us17.preheader
  %i.at = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.x
  %.val6.us.prol = load i64, ptr %i.at, align 1, !tbaa !27
  %i.au = mul i64 %.val6.us.prol, -3523014627271114752
  %i.av = lshr i64 %i.au, %i.v
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.av ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !3
  %i.ay = and i64 %i.x, %i.z
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.ay
  store i32 %i.ax, ptr %i.az, align 4, !tbaa !3
  store i32 %i.p, ptr %i.aw, align 4, !tbaa !3
  %indvars.iv.next36.prol = add nuw nsw i64 %i.x, 1
  br label %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit32.i.us17.prol.loopexit

_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit32.i.us17.prol.loopexit: ; preds = %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit32.i.us17.prol, %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit32.i.us17.preheader
  %indvars.iv35.unr = phi i64 [ %i.x, %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit32.i.us17.preheader ], [ %indvars.iv.next36.prol, %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit32.i.us17.prol ]
  %i.ba = icmp eq i64 %i.y, %.neg57
  br i1 %i.ba, label %._crit_edge.thread45, label %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit32.i.us17

_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit32.i.us.preheader: ; preds = %.lr.ph
  %i.bb = sub i64 %i.m, %i.x
  %.neg58 = add nuw nsw i64 %i.x, 1
  %xtraiter52 = and i64 %i.bb, 1
  %lcmp.mod53.not = icmp eq i64 %xtraiter52, 0
  br i1 %lcmp.mod53.not, label %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit32.i.us.prol.loopexit, label %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit32.i.us.prol

_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit32.i.us.prol: ; preds = %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit32.i.us.preheader
  %i.bc = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.x
  %.val12.us.prol = load i64, ptr %i.bc, align 1, !tbaa !27
  %i.bd = mul i64 %.val12.us.prol, -3523014627327384477
  %i.be = lshr i64 %i.bd, %i.v
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.be ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !3
  %i.bh = and i64 %i.x, %i.z
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.bh
  store i32 %i.bg, ptr %i.bi, align 4, !tbaa !3
  store i32 %i.p, ptr %i.bf, align 4, !tbaa !3
  %indvars.iv.next39.prol = add nuw nsw i64 %i.x, 1
  br label %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit32.i.us.prol.loopexit

_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit32.i.us.prol.loopexit: ; preds = %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit32.i.us.prol, %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit32.i.us.preheader
  %indvars.iv38.unr = phi i64 [ %i.x, %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit32.i.us.preheader ], [ %indvars.iv.next39.prol, %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit32.i.us.prol ]
  %i.bj = icmp eq i64 %i.y, %.neg58
  br i1 %i.bj, label %._crit_edge.thread, label %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit32.i.us

_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit32.i.preheader: ; preds = %.lr.ph
  %i.bk = sub i64 %i.m, %i.x
  %.neg59 = add nuw nsw i64 %i.x, 1
  %xtraiter54 = and i64 %i.bk, 1
  %lcmp.mod55.not = icmp eq i64 %xtraiter54, 0
  br i1 %lcmp.mod55.not, label %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit32.i.prol.loopexit, label %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit32.i.prol

_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit32.i.prol: ; preds = %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit32.i.preheader
  %i.bl = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.x
  %.val.prol = load i32, ptr %i.bl, align 1, !tbaa !3
  %i.bm = mul i32 %.val.prol, -1640531535
  %i.bn = lshr i32 %i.bm, %i.w
  %i.bo = zext i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.bo ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !3
  %i.br = and i64 %i.x, %i.z
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.br
  store i32 %i.bq, ptr %i.bs, align 4, !tbaa !3
  store i32 %i.p, ptr %i.bp, align 4, !tbaa !3
  %indvars.iv.next42.prol = add nuw nsw i64 %i.x, 1
  br label %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit32.i.prol.loopexit

_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit32.i.prol.loopexit: ; preds = %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit32.i.prol, %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit32.i.preheader
  %indvars.iv41.unr = phi i64 [ %i.x, %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit32.i.preheader ], [ %indvars.iv.next42.prol, %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit32.i.prol ]
  %i.bt = icmp eq i64 %i.y, %.neg59
  br i1 %i.bt, label %._crit_edge, label %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit32.i

_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit32.i.us: ; preds = %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit32.i.us.prol.loopexit, %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit32.i.us
  %indvars.iv38 = phi i64 [ %indvars.iv.next39.1, %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit32.i.us ], [ %indvars.iv38.unr, %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit32.i.us.prol.loopexit ] ; 5 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv38
  %.val12.us = load i64, ptr %i.bu, align 1, !tbaa !27
  %i.bv = mul i64 %.val12.us, -3523014627327384477
  %i.bw = lshr i64 %i.bv, %i.v
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.bw ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !3
  %i.bz = trunc nuw i64 %indvars.iv38 to i32
  %i.ca = and i64 %indvars.iv38, %i.z
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.ca
  store i32 %i.by, ptr %i.cb, align 4, !tbaa !3
  store i32 %i.bz, ptr %i.bx, align 4, !tbaa !3
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1 ; 3 uses
end_hunk_0
