Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/zstd_lazy?download=true
inline.NumInlined: 1254
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumRuntimeUnrolled: 126
loop-unroll.NumUnrolled: 169
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN11duckdb_zstd44ZSTD_dedicatedDictSearch_lazy_loadDictionaryEPNS_17ZSTD_matchState_tEPKh(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36   ; 3 uses
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = sub i64 %i.c, %i.d                       ; 3 uses
  %i.f = trunc i64 %i.e to i32                    ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !37   ; 16 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !38
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.l = load i32, ptr %i.k, align 4, !tbaa !39
  %i.m = shl nuw i32 1, %i.l                      ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !40   ; 5 uses
  %i.p = sub i32 %i.f, %i.o
  %i.q = icmp ult i32 %i.m, %i.p
  %i.r = sub i32 %i.f, %i.m
  %i.s = select i1 %i.q, i32 %i.r, i32 %i.o       ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.u = load i32, ptr %i.t, align 4, !tbaa !41
  %i.v = shl nuw i32 1, %i.u
  %i.w = add i32 %i.v, -3
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.y = load i32, ptr %i.x, align 8, !tbaa !42   ; 5 uses
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
  %2 = tail call i32 @llvm.umax.i32(i32 %i.w, i32 1)
  %umax = tail call i32 @llvm.umin.i32(i32 %2, i32 255) ; 2 uses
  %wide.trip.count = zext i32 %i.ap to i64
  br label %bb.i

bb.b:                                             ; preds = %.lr.ph, %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit141._crit_edge
  %indvars.iv = phi i64 [ %i.am, %.lr.ph ], [ %indvars.iv.next, %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit141._crit_edge ] ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv ; 5 uses
  %i.ar = load i32, ptr %i.ai, align 8, !tbaa !43
  switch i32 %i.ar, label %bb.c [
    i32 8, label %bb.g
    i32 5, label %bb.d
    i32 6, label %bb.e
    i32 7, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  %.val = load i32, ptr %i.aq, align 1, !tbaa !23
  %i.as = mul i32 %.val, -1640531535
  %i.at = lshr i32 %i.as, %i.al
  %i.au = zext i32 %i.at to i64
  br label %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit141

bb.d:                                             ; preds = %bb.b
  %.val143 = load i64, ptr %i.aq, align 1, !tbaa !44
  %i.av = mul i64 %.val143, -3523014627271114752
  %i.aw = lshr i64 %i.av, %i.ak
  br label %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit141

bb.e:                                             ; preds = %bb.b
  %.val145 = load i64, ptr %i.aq, align 1, !tbaa !44
  %i.ax = mul i64 %.val145, -3523014627193847808
  %i.ay = lshr i64 %i.ax, %i.ak
  br label %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit141

bb.f:                                             ; preds = %bb.b
  %.val147 = load i64, ptr %i.aq, align 1, !tbaa !44
  %i.az = mul i64 %.val147, -3523014627193167104
  %i.ba = lshr i64 %i.az, %i.ak
  br label %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit141

bb.g:                                             ; preds = %bb.b
  %.val149 = load i64, ptr %i.aq, align 1, !tbaa !44
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
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !23
  %i.bf = sub nuw nsw i64 %indvars.iv, %i.an
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.bf
  store i32 %i.be, ptr %i.bg, align 4, !tbaa !23
  br label %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit141._crit_edge

_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit141._crit_edge: ; preds = %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit141, %bb.h
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.pre
  %i.bi = trunc nuw i64 %indvars.iv to i32
  store i32 %i.bi, ptr %i.bh, align 4, !tbaa !23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bj = icmp samesign ult i64 %indvars.iv.next, %i.ao
  br i1 %i.bj, label %bb.b, label %.preheader164, !llvm.loop !84

bb.i:                                             ; preds = %.preheader164, %.thread
  %indvars.iv205 = phi i64 [ 0, %.preheader164 ], [ %indvars.iv.next206, %.thread ] ; 2 uses
  %.0122189 = phi i32 [ 0, %.preheader164 ], [ %.2124155, %.thread ] ; 4 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv205 ; 2 uses
  %.0116170 = load i32, ptr %i.bk, align 4, !tbaa !23 ; 3 uses
  %.not198 = icmp ult i32 %.0116170, %i.ag
  br i1 %.not198, label %.thread, label %.lr.ph174

.lr.ph174:                                        ; preds = %bb.i
  %i.bl = icmp ult i32 %.0116170, %i.s
  %i.bm = zext i1 %i.bl to i32
  %i.bn = sub nuw i32 %.0116170, %i.ag
  %i.bo = zext i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.bo
  %.0116 = load i32, ptr %i.bp, align 4, !tbaa !23 ; 3 uses
  %.not = icmp ult i32 %.0116, %i.ag
  br i1 %.not, label %.thread, label %.lr.ph174.1

.lr.ph174.1:                                      ; preds = %.lr.ph174
  %i.bq = icmp ult i32 %.0116, %i.s
  %i.br = zext i1 %i.bq to i32
  %spec.select.1 = add nuw nsw i32 %i.bm, %i.br
  %i.bs = sub nuw i32 %.0116, %i.ag
  %i.bt = zext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.bt
  %.0116.1 = load i32, ptr %i.bu, align 4, !tbaa !23 ; 3 uses
  %.not247 = icmp ult i32 %.0116.1, %i.ag
  br i1 %.not247, label %.thread, label %.lr.ph174.2

.lr.ph174.2:                                      ; preds = %.lr.ph174.1
  %i.bv = icmp ult i32 %.0116.1, %i.s
  %i.bw = zext i1 %i.bv to i32
  %spec.select.2 = add nuw nsw i32 %spec.select.1, %i.bw
  %i.bx = sub nuw i32 %.0116.1, %i.ag
  %i.by = zext i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.by
  %.0116.2 = load i32, ptr %i.bz, align 4, !tbaa !23
  br label %.lr.ph181

.lr.ph181:                                        ; preds = %.lr.ph174.2, %bb.l
  %.1180 = phi i32 [ %i.co, %bb.l ], [ %.0116.2, %.lr.ph174.2 ] ; 5 uses
  %.2179 = phi i32 [ %.3, %bb.l ], [ %spec.select.2, %.lr.ph174.2 ] ; 2 uses
  %.1120178 = phi i32 [ %i.cg, %bb.l ], [ 0, %.lr.ph174.2 ] ; 3 uses
  %.1123177 = phi i32 [ %i.cd, %bb.l ], [ %.0122189, %.lr.ph174.2 ] ; 4 uses
  %i.ca = icmp ult i32 %.1180, %i.s
  br i1 %i.ca, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph181
  %.not136 = icmp eq i32 %.1180, 0
  %i.cb = add i32 %.2179, 1                       ; 2 uses
  %i.cc = icmp ugt i32 %i.cb, 3
  %or.cond = select i1 %.not136, i1 true, i1 %i.cc
  br i1 %or.cond, label %._crit_edge182, label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph181
  %.3 = phi i32 [ %i.cb, %bb.j ], [ %.2179, %.lr.ph181 ]
  %i.cd = add i32 %.1123177, 1                    ; 3 uses
  %i.ce = zext i32 %.1123177 to i64
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.ce
  store i32 %.1180, ptr %i.cf, align 4, !tbaa !23
  %i.cg = add nuw nsw i32 %.1120178, 1            ; 3 uses
  %i.ch = icmp ult i32 %.1180, %i.ag
  br i1 %i.ch, label %.thread157, label %bb.l

.thread157:                                       ; preds = %bb.k
  %i.ci = sub i32 %.1123177, %.1120178
  %i.cj = shl i32 %i.ci, 8
  %i.ck = add i32 %i.cj, %i.cg
  br label %.thread

bb.l:                                             ; preds = %bb.k
  %i.cl = sub nuw i32 %.1180, %i.ag
  %i.cm = zext i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.cm
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !23
  %exitcond.not = icmp eq i32 %i.cg, %umax
  br i1 %exitcond.not, label %._crit_edge182, label %.lr.ph181, !llvm.loop !85

._crit_edge182:                                   ; preds = %bb.j, %bb.l
  %.1123.lcssa.ph = phi i32 [ %.1123177, %bb.j ], [ %i.cd, %bb.l ] ; 2 uses
  %.1120.lcssa.ph = phi i32 [ %.1120178, %bb.j ], [ %umax, %bb.l ] ; 3 uses
  %.not137 = icmp eq i32 %.1120.lcssa.ph, 0
  %i.cp = sub i32 %.1123.lcssa.ph, %.1120.lcssa.ph
  %i.cq = shl i32 %i.cp, 8
  %i.cr = add i32 %i.cq, %.1120.lcssa.ph
  %spec.select162 = select i1 %.not137, i32 0, i32 %i.cr
  br label %.thread

.thread:                                          ; preds = %.lr.ph174, %.lr.ph174.1, %bb.i, %._crit_edge182, %.thread157
  %.2124155 = phi i32 [ %i.cd, %.thread157 ], [ %.1123.lcssa.ph, %._crit_edge182 ], [ %.0122189, %bb.i ], [ %.0122189, %.lr.ph174.1 ], [ %.0122189, %.lr.ph174 ]
  %3 = phi i32 [ %i.ck, %.thread157 ], [ %spec.select162, %._crit_edge182 ], [ 0, %bb.i ], [ 0, %.lr.ph174.1 ], [ 0, %.lr.ph174 ]
  store i32 %3, ptr %i.bk, align 4, !tbaa !23
  %indvars.iv.next206 = add nuw nsw i64 %indvars.iv205, 1 ; 2 uses
  %exitcond208.not = icmp eq i64 %indvars.iv.next206, %wide.trip.count
  br i1 %exitcond208.not, label %.preheader.preheader, label %bb.i, !llvm.loop !86

.preheader.preheader:                             ; preds = %.thread
  %i.cs = shl i32 4, %i.z
  %i.ct = add i32 %i.cs, -4                       ; 2 uses
  %i.cu = icmp eq i32 %i.z, 0
  br i1 %i.cu, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i32 %i.ap, -2
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %indvars.iv212 = phi i64 [ 0, %.preheader.preheader.new ], [ %indvars.iv.next213.1, %.preheader ] ; 3 uses
  %.1126191 = phi i32 [ %i.ap, %.preheader.preheader.new ], [ %i.do, %.preheader ] ; 2 uses
  %niter = phi i32 [ 0, %.preheader.preheader.new ], [ %niter.next.1, %.preheader ]
  %i.cv = trunc nuw i64 %indvars.iv212 to i32
  %i.cw = shl i32 %i.cv, 2
  %i.cx = sub i32 %i.ct, %i.cw
  %i.cy = zext i32 %i.cx to i64
  %i.cz = shl nuw nsw i64 %i.cy, 2
  %scevgep = getelementptr nuw i8, ptr %i.h, i64 %i.cz
  %i.da = add i32 %.1126191, -1                   ; 2 uses
  %i.db = zext i32 %i.da to i64
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.db
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %scevgep, i8 0, i64 12, i1 false), !tbaa !23
  %i.de = shl i32 %i.da, 2
  %i.df = or disjoint i32 %i.de, 3
  %i.dg = zext i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.dg
  store i32 %i.dd, ptr %i.dh, align 4, !tbaa !23
  %i.di = trunc i64 %indvars.iv212 to i32
  %i.dj = shl i32 %i.di, 2
  %i.dk = or disjoint i32 %i.dj, 4
  %i.dl = sub i32 %i.ct, %i.dk
  %i.dm = zext i32 %i.dl to i64
  %i.dn = shl nuw nsw i64 %i.dm, 2
  %scevgep.1 = getelementptr nuw i8, ptr %i.h, i64 %i.dn
  %i.do = add i32 %.1126191, -2                   ; 3 uses
  %i.dp = zext i32 %i.do to i64
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.dp
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %scevgep.1, i8 0, i64 12, i1 false), !tbaa !23
  %i.ds = shl i32 %i.do, 2
  %i.dt = or disjoint i32 %i.ds, 3
  %i.du = zext i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.du
  store i32 %i.dr, ptr %i.dv, align 4, !tbaa !23
  %indvars.iv.next213.1 = add nuw nsw i64 %indvars.iv212, 2
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %.preheader, !llvm.loop !87

.preheader.epil.preheader:                        ; preds = %.preheader.preheader
  %lcmp.mod246 = icmp eq i32 %i.z, 0
  tail call void @llvm.assume(i1 %lcmp.mod246)
  %i.dw = add nsw i32 %i.ap, -1
  %i.dx = zext nneg i32 %i.dw to i64
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.dx
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.h, i8 0, i64 12, i1 false), !tbaa !23
  %i.ea = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 %i.dz, ptr %i.ea, align 4, !tbaa !23
  br label %.unr-lcssa

.unr-lcssa:                                       ; preds = %.preheader, %.preheader.epil.preheader
  %i.eb = load i32, ptr %i.n, align 4, !tbaa !40  ; 2 uses
  %i.ec = icmp ult i32 %i.eb, %i.f
  br i1 %i.ec, label %.lr.ph195, label %._crit_edge196

.lr.ph195:                                        ; preds = %.unr-lcssa
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.ee = sub i32 66, %i.y
  %i.ef = zext nneg i32 %i.ee to i64              ; 4 uses
  %i.eg = sub i32 34, %i.y
  %scevgep215 = getelementptr nuw i8, ptr %i.h, i64 4
  %i.eh = zext i32 %i.eb to i64
  %i.ei = and i64 %i.e, 4294967295
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph195, %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit
  %indvars.iv221 = phi i64 [ %i.eh, %.lr.ph195 ], [ %indvars.iv.next222, %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit ] ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv221 ; 5 uses
  %i.ek = load i32, ptr %i.ed, align 8, !tbaa !43
  switch i32 %i.ek, label %bb.n [
    i32 8, label %bb.r
    i32 5, label %bb.o
    i32 6, label %bb.p
    i32 7, label %bb.q
  ]

bb.n:                                             ; preds = %bb.m
  %.val142 = load i32, ptr %i.ej, align 1, !tbaa !23
  %i.el = mul i32 %.val142, -1640531535
  %i.em = lshr i32 %i.el, %i.eg
  %i.en = zext i32 %i.em to i64
  br label %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit

bb.o:                                             ; preds = %bb.m
  %.val144 = load i64, ptr %i.ej, align 1, !tbaa !44
  %i.eo = mul i64 %.val144, -3523014627271114752
  %i.ep = lshr i64 %i.eo, %i.ef
  br label %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit

bb.p:                                             ; preds = %bb.m
  %.val146 = load i64, ptr %i.ej, align 1, !tbaa !44
  %i.eq = mul i64 %.val146, -3523014627193847808
  %i.er = lshr i64 %i.eq, %i.ef
  br label %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit

bb.q:                                             ; preds = %bb.m
  %.val148 = load i64, ptr %i.ej, align 1, !tbaa !44
  %i.es = mul i64 %.val148, -3523014627193167104
  %i.et = lshr i64 %i.es, %i.ef
  br label %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit

bb.r:                                             ; preds = %bb.m
  %.val150 = load i64, ptr %i.ej, align 1, !tbaa !44
  %i.eu = mul i64 %.val150, -3523014627327384477
  %i.ev = lshr i64 %i.eu, %i.ef
  br label %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit

_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit:       ; preds = %bb.n, %bb.o, %bb.p, %bb.q, %bb.r
  %.0.i = phi i64 [ %i.en, %bb.n ], [ %i.ev, %bb.r ], [ %i.ep, %bb.o ], [ %i.er, %bb.p ], [ %i.et, %bb.q ] ; 2 uses
  %i.ew = shl i64 %.0.i, 4
  %i.ex = and i64 %i.ew, 17179869168              ; 2 uses
  %scevgep216 = getelementptr nuw i8, ptr %scevgep215, i64 %i.ex
  %scevgep217 = getelementptr nuw i8, ptr %i.h, i64 %i.ex
  %i.ey = load i64, ptr %scevgep217, align 4, !tbaa !23
  store i64 %i.ey, ptr %scevgep216, align 4, !tbaa !23
  %i.ez = shl i64 %.0.i, 2
  %i.fa = and i64 %i.ez, 4294967292
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.fa
  %i.fc = trunc nuw i64 %indvars.iv221 to i32
  store i32 %i.fc, ptr %i.fb, align 4, !tbaa !23
  %indvars.iv.next222 = add nuw nsw i64 %indvars.iv221, 1 ; 2 uses
  %i.fd = icmp samesign ult i64 %indvars.iv.next222, %i.ei
  br i1 %i.fd, label %bb.m, label %._crit_edge196, !llvm.loop !88

._crit_edge196:                                   ; preds = %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit, %.unr-lcssa
  store i32 %i.f, ptr %i.n, align 4, !tbaa !40
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
  %i.b = load i32, ptr %i.a, align 8, !tbaa !43   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !37   ; 16 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.f = load i32, ptr %i.e, align 8, !tbaa !46   ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !38   ; 15 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !36   ; 16 uses
  %i.k = ptrtoint ptr %1 to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l                       ; 7 uses
  %i.n = trunc i64 %i.m to i32                    ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 6 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !40   ; 7 uses
  %i.q = icmp ult i32 %i.p, %i.n
  br i1 %i.q, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.s = load i32, ptr %i.r, align 4, !tbaa !47
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

end_hunk_0
