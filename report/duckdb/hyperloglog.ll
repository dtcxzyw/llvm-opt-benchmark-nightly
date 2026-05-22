inline.NumInlined: 21
inline.NumDeleted: 3
begin_hunk_0_@_ZN10duckdb_hll16hllSparseToDenseEPNS_4robjE:bb.a
  %i.bc = xor i8 %i.bb, -1
  %i.bd = and i8 %i.ba, %i.bc
  %i.be = shl nuw nsw i64 %i.ar, %i.aw
  %i.bf = trunc i64 %i.be to i8
  %i.bg = or i8 %i.bd, %i.bf
  store i8 %i.bg, ptr %i.az, align 1, !tbaa !11
  %i.bh = trunc nuw nsw i64 %i.ax to i16
  %i.bi = ashr i16 -64, %i.bh
  %i.bj = getelementptr i8, ptr %i.az, i64 1      ; 2 uses
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !11
  %i.bl = trunc nsw i16 %i.bi to i8
  %i.bm = and i8 %i.bk, %i.bl
  %i.bn = lshr i64 %i.ar, %i.ax
  %i.bo = trunc nuw nsw i64 %i.bn to i8
  %i.bp = or i8 %i.bm, %i.bo
  store i8 %i.bp, ptr %i.bj, align 1, !tbaa !11
  %i.bq = add nsw i32 %.05463, 1                  ; 2 uses
  %.not59 = icmp eq i32 %i.an, 0
  br i1 %.not59, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.br = mul nsw i32 %i.bq, 6                    ; 2 uses
  %i.bs = sdiv i32 %i.br, 8
  %i.bt = sext i32 %i.bs to i64
  %i.bu = and i32 %i.br, 6                        ; 2 uses
  %i.bv = zext nneg i32 %i.bu to i64              ; 2 uses
  %i.bw = sub nuw nsw i64 8, %i.bv                ; 2 uses
  %i.bx = shl nuw nsw i32 63, %i.bu
  %i.by = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.bt ; 3 uses
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !11
  %i.ca = trunc i32 %i.bx to i8
  %i.cb = xor i8 %i.ca, -1
  %i.cc = and i8 %i.bz, %i.cb
  %i.cd = shl nuw nsw i64 %i.ar, %i.bv
  %i.ce = trunc i64 %i.cd to i8
  %i.cf = or i8 %i.cc, %i.ce
  store i8 %i.cf, ptr %i.by, align 1, !tbaa !11
  %i.cg = trunc nuw nsw i64 %i.bw to i16
  %i.ch = ashr i16 -64, %i.cg
  %i.ci = getelementptr i8, ptr %i.by, i64 1      ; 2 uses
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !11
  %i.ck = trunc nsw i16 %i.ch to i8
  %i.cl = and i8 %i.cj, %i.ck
  %i.cm = lshr i64 %i.ar, %i.bw
  %i.cn = trunc nuw nsw i64 %i.cm to i8
  %i.co = or i8 %i.cl, %i.cn
  store i8 %i.co, ptr %i.ci, align 1, !tbaa !11
  %i.cp = add nsw i32 %.05463, 2                  ; 2 uses
  %.not59.1 = icmp eq i32 %i.an, 1
  br i1 %.not59.1, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cq = mul nsw i32 %i.cp, 6                    ; 2 uses
  %i.cr = sdiv i32 %i.cq, 8
  %i.cs = sext i32 %i.cr to i64
  %i.ct = and i32 %i.cq, 6                        ; 2 uses
  %i.cu = zext nneg i32 %i.ct to i64              ; 2 uses
  %i.cv = sub nuw nsw i64 8, %i.cu                ; 2 uses
  %i.cw = shl nuw nsw i32 63, %i.ct
  %i.cx = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.cs ; 3 uses
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !11
  %i.cz = trunc i32 %i.cw to i8
  %i.da = xor i8 %i.cz, -1
  %i.db = and i8 %i.cy, %i.da
  %i.dc = shl nuw nsw i64 %i.ar, %i.cu
  %i.dd = trunc i64 %i.dc to i8
  %i.de = or i8 %i.db, %i.dd
  store i8 %i.de, ptr %i.cx, align 1, !tbaa !11
  %i.df = trunc nuw nsw i64 %i.cv to i16
  %i.dg = ashr i16 -64, %i.df
  %i.dh = getelementptr i8, ptr %i.cx, i64 1      ; 2 uses
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !11
  %i.dj = trunc nsw i16 %i.dg to i8
  %i.dk = and i8 %i.di, %i.dj
  %i.dl = lshr i64 %i.ar, %i.cv
  %i.dm = trunc nuw nsw i64 %i.dl to i8
  %i.dn = or i8 %i.dk, %i.dm
  store i8 %i.dn, ptr %i.dh, align 1, !tbaa !11
  %i.do = add nsw i32 %.05463, 3                  ; 2 uses
  %.not59.2 = icmp eq i32 %i.an, 2
  br i1 %.not59.2, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dp = mul nsw i32 %i.do, 6                    ; 2 uses
  %i.dq = sdiv i32 %i.dp, 8
  %i.dr = sext i32 %i.dq to i64
  %i.ds = and i32 %i.dp, 6                        ; 2 uses
  %i.dt = zext nneg i32 %i.ds to i64              ; 2 uses
  %i.du = sub nuw nsw i64 8, %i.dt                ; 2 uses
  %i.dv = shl nuw nsw i32 63, %i.ds
  %i.dw = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.dr ; 3 uses
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !11
  %i.dy = trunc i32 %i.dv to i8
  %i.dz = xor i8 %i.dy, -1
  %i.ea = and i8 %i.dx, %i.dz
  %i.eb = shl nuw nsw i64 %i.ar, %i.dt
  %i.ec = trunc i64 %i.eb to i8
  %i.ed = or i8 %i.ea, %i.ec
  store i8 %i.ed, ptr %i.dw, align 1, !tbaa !11
  %i.ee = trunc nuw nsw i64 %i.du to i16
  %i.ef = ashr i16 -64, %i.ee
  %i.eg = getelementptr i8, ptr %i.dw, i64 1      ; 2 uses
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !11
  %i.ei = trunc nsw i16 %i.ef to i8
  %i.ej = and i8 %i.eh, %i.ei
  %i.ek = lshr i64 %i.ar, %i.du
  %i.el = trunc nuw nsw i64 %i.ek to i8
  %i.em = or i8 %i.ej, %i.el
  store i8 %i.em, ptr %i.eg, align 1, !tbaa !11
  %i.en = add nsw i32 %.05463, 4
  br label %.loopexit

.loopexit:                                        ; preds = %bb.k, %bb.l, %bb.m, %bb.n, %bb.j, %bb.i
  %.sink = phi i64 [ 2, %bb.j ], [ 1, %bb.i ], [ 1, %bb.n ], [ 1, %bb.m ], [ 1, %bb.l ], [ 1, %bb.k ]
  %.2 = phi i32 [ %i.am, %bb.j ], [ %i.ae, %bb.i ], [ %i.bq, %bb.k ], [ %i.cp, %bb.l ], [ %i.do, %bb.m ], [ %i.en, %bb.n ] ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.05662, i64 %.sink ; 2 uses
  %i.ep = icmp ult ptr %i.eo, %i.s
  br i1 %i.ep, label %bb.h, label %._crit_edge, !llvm.loop !29

._crit_edge:                                      ; preds = %.loopexit
  %i.eq = icmp eq i32 %.2, 4096
  br i1 %i.eq, label %bb.o, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.g, %._crit_edge
  tail call void @_ZN10duckdb_hll7sdsfreeEPc(ptr noundef nonnull %i.w)
  br label %bb.p

bb.o:                                             ; preds = %._crit_edge
  %i.er = load ptr, ptr %0, align 8, !tbaa !14
  tail call void @_ZN10duckdb_hll7sdsfreeEPc(ptr noundef %i.er)
  store ptr %i.w, ptr %0, align 8, !tbaa !14
  br label %bb.p

bb.p:                                             ; preds = %_ZN10duckdb_hllL6sdslenEPc.exit, %bb.o, %._crit_edge.thread
  %.0 = phi i32 [ 0, %bb.o ], [ -1, %._crit_edge.thread ], [ 0, %_ZN10duckdb_hllL6sdslenEPc.exit ]
  ret i32 %.0
}

declare noundef ptr @_ZN10duckdb_hll9sdsnewlenEPKvm(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @_ZN10duckdb_hll7sdsfreeEPc(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define noundef range(i32 -1, 2) i32 @_ZN10duckdb_hll12hllSparseSetEPNS_4robjElh(ptr noundef captures(none) %0, i64 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [5 x i8], align 1                 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.b = icmp ugt i8 %2, 32
  br i1 %i.b, label %bb.av, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !14
  %i.d = tail call noundef ptr @_ZN10duckdb_hll14sdsMakeRoomForEPcm(ptr noundef %i.c, i64 noundef 3) ; 13 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !14
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 17 ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %i.d, i64 -1 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !11
  %i.h = zext i8 %i.g to i32                      ; 2 uses
  %i.i = and i32 %i.h, 7
  switch i32 %i.i, label %_ZN10duckdb_hllL11hllDenseSetEPhlh.exit [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 3, label %bb.f
    i32 4, label %bb.g
  ]

bb.c:                                             ; preds = %bb.b
  %i.j = lshr i32 %i.h, 3
  %i.k = zext nneg i32 %i.j to i64
  br label %_ZN10duckdb_hllL6sdslenEPc.exit

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %i.d, i64 -4
  %i.m = load i8, ptr %i.l, align 1, !tbaa !17
  %i.n = zext i8 %i.m to i64
  br label %_ZN10duckdb_hllL6sdslenEPc.exit

bb.e:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds i8, ptr %i.d, i64 -6
  %i.p = load i16, ptr %i.o, align 1, !tbaa !19
  %i.q = zext i16 %i.p to i64
  br label %_ZN10duckdb_hllL6sdslenEPc.exit

bb.f:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds i8, ptr %i.d, i64 -10
  %i.s = load i32, ptr %i.r, align 1, !tbaa !22
  %i.t = zext i32 %i.s to i64
  br label %_ZN10duckdb_hllL6sdslenEPc.exit

bb.g:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds i8, ptr %i.d, i64 -18
  %i.v = load i64, ptr %i.u, align 1, !tbaa !24
  br label %_ZN10duckdb_hllL6sdslenEPc.exit

_ZN10duckdb_hllL6sdslenEPc.exit:                  ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.0.i = phi i64 [ %i.v, %bb.g ], [ %i.k, %bb.c ], [ %i.n, %bb.d ], [ %i.q, %bb.e ], [ %i.t, %bb.f ] ; 2 uses
  %i.w = getelementptr i8, ptr %i.d, i64 %.0.i    ; 5 uses
  %i.x = icmp sgt i64 %.0.i, 17
  br i1 %i.x, label %.lr.ph, label %_ZN10duckdb_hllL11hllDenseSetEPhlh.exit

.lr.ph:                                           ; preds = %_ZN10duckdb_hllL6sdslenEPc.exit, %bb.l
  %.0167275 = phi ptr [ %i.aj, %bb.l ], [ %i.e, %_ZN10duckdb_hllL6sdslenEPc.exit ] ; 6 uses
  %.0172274 = phi ptr [ %.0167275, %bb.l ], [ null, %_ZN10duckdb_hllL6sdslenEPc.exit ]
  %.0175273 = phi i64 [ %i.ai, %bb.l ], [ 0, %_ZN10duckdb_hllL6sdslenEPc.exit ] ; 2 uses
  %i.y = load i8, ptr %.0167275, align 1, !tbaa !11 ; 4 uses
  %i.z = zext i8 %i.y to i32                      ; 4 uses
  %i.aa = icmp ult i8 %i.y, 64
  br i1 %i.aa, label %bb.k, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %.not = icmp sgt i8 %i.y, -1
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = and i32 %i.z, 3
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.ac = shl nuw nsw i32 %i.z, 8
  %i.ad = and i32 %i.ac, 16128
  %i.ae = getelementptr inbounds nuw i8, ptr %.0167275, i64 1
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !11
  %i.ag = zext i8 %i.af to i32
  %i.ah = or disjoint i32 %i.ad, %i.ag
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.i, %bb.j
  %.1183.in.in = phi i32 [ %i.ah, %bb.j ], [ %i.ab, %bb.i ], [ %i.z, %.lr.ph ] ; 3 uses
  %.0181 = phi i64 [ 2, %bb.j ], [ 1, %bb.i ], [ 1, %.lr.ph ]
  %.1183.in = add nuw nsw i32 %.1183.in.in, 1
  %.1183 = zext nneg i32 %.1183.in to i64
  %i.ai = add nuw nsw i64 %.0175273, %.1183       ; 3 uses
  %.not209.not = icmp slt i64 %1, %i.ai
  br i1 %.not209.not, label %.thread228, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %.0167275, i64 %.0181 ; 4 uses
  %i.ak = icmp ult ptr %i.aj, %i.w
  br i1 %i.ak, label %.lr.ph, label %._crit_edge..thread228_crit_edge

._crit_edge..thread228_crit_edge:                 ; preds = %bb.l
  %.pre = load i8, ptr %i.aj, align 1, !tbaa !11  ; 2 uses
  %.pre301 = zext i8 %.pre to i32
  br label %.thread228

.thread228:                                       ; preds = %bb.k, %._crit_edge..thread228_crit_edge
  %.pre-phi = phi i32 [ %.pre301, %._crit_edge..thread228_crit_edge ], [ %i.z, %bb.k ] ; 2 uses
  %i.al = phi i8 [ %.pre, %._crit_edge..thread228_crit_edge ], [ %i.y, %bb.k ] ; 2 uses
  %.0175271 = phi i64 [ %i.ai, %._crit_edge..thread228_crit_edge ], [ %.0175273, %bb.k ] ; 6 uses
  %.0172269 = phi ptr [ %.0167275, %._crit_edge..thread228_crit_edge ], [ %.0172274, %bb.k ] ; 2 uses
  %.0167266 = phi ptr [ %i.aj, %._crit_edge..thread228_crit_edge ], [ %.0167275, %bb.k ] ; 3 uses
  %i.am = and i32 %.pre-phi, 192                  ; 2 uses
  %i.an = icmp eq i32 %i.am, 64                   ; 2 uses
  %.v = select i1 %i.an, i64 2, i64 1
  %i.ao = getelementptr inbounds nuw i8, ptr %.0167266, i64 %.v ; 3 uses
  %.not210 = icmp ult ptr %i.ao, %i.w             ; 2 uses
  %spec.store.select = select i1 %.not210, ptr %i.ao, ptr null ; 2 uses
  %.not257 = icmp eq i32 %i.am, 0                 ; 4 uses
  br i1 %.not257, label %bb.p, label %bb.m

bb.m:                                             ; preds = %.thread228
  br i1 %i.an, label %.thread244, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ap = lshr i8 %i.al, 2
  %i.aq = and i8 %i.ap, 31                        ; 3 uses
  %narrow = add nuw nsw i8 %i.aq, 1
  %.not212 = icmp ult i8 %narrow, %2
  br i1 %.not212, label %bb.o, label %_ZN10duckdb_hllL11hllDenseSetEPhlh.exit

bb.o:                                             ; preds = %bb.n
  %i.ar = and i32 %.pre-phi, 3
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %.sink.split, label %bb.q

bb.p:                                             ; preds = %.thread228
  %i.at = icmp eq i8 %i.al, 0
  br i1 %i.at, label %.sink.split, label %.thread244

.thread244:                                       ; preds = %bb.p, %bb.m
  %i.au = trunc i64 %.0175271 to i32
  %i.av = add i32 %.1183.in.in, %i.au             ; 2 uses
  %.not215 = icmp eq i64 %1, %.0175271
  br i1 %.not215, label %bb.u, label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.aw = trunc i64 %.0175271 to i32
  %i.ax = add i32 %.1183.in.in, %i.aw             ; 2 uses
  %.not213 = icmp eq i64 %1, %.0175271
  br i1 %.not213, label %bb.z, label %bb.y

bb.r:                                             ; preds = %.thread244
  %i.ay = sub nsw i64 %1, %.0175271               ; 2 uses
  %i.az = trunc i64 %i.ay to i32                  ; 2 uses
  %i.ba = icmp sgt i32 %i.az, 64
  br i1 %i.ba, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bb = add nsw i32 %i.az, -1                   ; 2 uses
  %i.bc = lshr i32 %i.bb, 8
  %i.bd = trunc i32 %i.bc to i8
  %i.be = or i8 %i.bd, 64
  store i8 %i.be, ptr %i.a, align 1, !tbaa !11
  %i.bf = trunc i32 %i.bb to i8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.bf, ptr %i.bg, align 1, !tbaa !11
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.bi = trunc i64 %i.ay to i8
  %i.bj = add i8 %i.bi, -1
  store i8 %i.bj, ptr %i.a, align 1, !tbaa !11
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  br label %bb.u

bb.u:                                             ; preds = %.thread244, %bb.t, %bb.s
  %.0188 = phi ptr [ %i.bh, %bb.s ], [ %i.bk, %bb.t ], [ %i.a, %.thread244 ] ; 5 uses
  %i.bl = shl nuw i8 %2, 2
  %i.bm = add nuw i8 %i.bl, 124
  %i.bn = or i8 %i.bm, -128
  store i8 %i.bn, ptr %.0188, align 1, !tbaa !11
  %i.bo = getelementptr inbounds nuw i8, ptr %.0188, i64 1 ; 3 uses
  %i.bp = sext i32 %i.av to i64
  %.not216 = icmp eq i64 %1, %i.bp
  br i1 %.not216, label %bb.ab, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bq = trunc i64 %1 to i32
  %i.br = sub i32 %i.av, %i.bq                    ; 3 uses
  %i.bs = icmp sgt i32 %i.br, 64
  br i1 %i.bs, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bt = add nsw i32 %i.br, -1                   ; 2 uses
  %i.bu = lshr i32 %i.bt, 8
  %i.bv = trunc i32 %i.bu to i8
  %i.bw = or i8 %i.bv, 64
  store i8 %i.bw, ptr %i.bo, align 1, !tbaa !11
  %i.bx = trunc i32 %i.bt to i8
  %i.by = getelementptr inbounds nuw i8, ptr %.0188, i64 2
  store i8 %i.bx, ptr %i.by, align 1, !tbaa !11
  %i.bz = getelementptr inbounds nuw i8, ptr %.0188, i64 3
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = ptrtoint ptr %i.a to i64
  %i.cc = sub i64 %i.ca, %i.cb                    ; 3 uses
  %i.cd = trunc i64 %i.cc to i32                  ; 2 uses
  br i1 %.not257, label %bb.ad, label %bb.ac

bb.x:                                             ; preds = %bb.v
  %i.ce = trunc i32 %i.br to i8
  %i.cf = add i8 %i.ce, -1
  store i8 %i.cf, ptr %i.bo, align 1, !tbaa !11
  %i.cg = getelementptr inbounds nuw i8, ptr %.0188, i64 2
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = ptrtoint ptr %i.a to i64
  %i.cj = sub i64 %i.ch, %i.ci                    ; 3 uses
  %i.ck = trunc i64 %i.cj to i32                  ; 2 uses
  br i1 %.not257, label %bb.ad, label %bb.ac

bb.y:                                             ; preds = %bb.q
  %i.cl = sub nsw i64 %1, %.0175271
  %i.cm = trunc i64 %i.cl to i8
  %i.cn = shl nuw nsw i8 %i.aq, 2
  %i.co = add i8 %i.cm, 127
  %i.cp = or i8 %i.co, %i.cn
  %i.cq = or i8 %i.cp, -128
  store i8 %i.cq, ptr %i.a, align 1, !tbaa !11
  %i.cr = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  br label %bb.z

bb.z:                                             ; preds = %bb.q, %bb.y
  %.1189 = phi ptr [ %i.cr, %bb.y ], [ %i.a, %bb.q ] ; 3 uses
  %i.cs = shl nuw i8 %2, 2
  %i.ct = add nuw i8 %i.cs, 124
  %i.cu = or i8 %i.ct, -128
  store i8 %i.cu, ptr %.1189, align 1, !tbaa !11
  %i.cv = getelementptr inbounds nuw i8, ptr %.1189, i64 1 ; 2 uses
  %i.cw = sext i32 %i.ax to i64
  %.not214 = icmp eq i64 %1, %i.cw
  br i1 %.not214, label %.thread247, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cx = trunc i64 %1 to i32
  %i.cy = shl nuw nsw i8 %i.aq, 2
  %i.cz = xor i32 %i.cx, -1
  %i.da = add i32 %i.ax, %i.cz
  %i.db = trunc i32 %i.da to i8
  %i.dc = or i8 %i.cy, %i.db
  %i.dd = or i8 %i.dc, -128
  store i8 %i.dd, ptr %i.cv, align 1, !tbaa !11
  %i.de = getelementptr inbounds nuw i8, ptr %.1189, i64 2
  br label %.thread247

.thread247:                                       ; preds = %bb.aa, %bb.z
  %.3191.ph = phi ptr [ %i.cv, %bb.z ], [ %i.de, %bb.aa ]
  %i.df = ptrtoint ptr %.3191.ph to i64
  %i.dg = ptrtoint ptr %i.a to i64
  %i.dh = sub i64 %i.df, %i.dg                    ; 2 uses
  %i.di = trunc i64 %i.dh to i32
  br label %bb.ad

bb.ab:                                            ; preds = %bb.u
  %i.dj = ptrtoint ptr %i.bo to i64
  %i.dk = ptrtoint ptr %i.a to i64
  %i.dl = sub i64 %i.dj, %i.dk                    ; 3 uses
  %i.dm = trunc i64 %i.dl to i32                  ; 2 uses
  br i1 %.not257, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.x, %bb.w, %bb.ab
  %i.dn = phi i32 [ %i.cd, %bb.w ], [ %i.dm, %bb.ab ], [ %i.ck, %bb.x ]
  %i.do = phi i64 [ %i.cc, %bb.w ], [ %i.dl, %bb.ab ], [ %i.cj, %bb.x ]
  br label %bb.ad

bb.ad:                                            ; preds = %bb.x, %bb.w, %.thread247, %bb.ab, %bb.ac
  %i.dp = phi i32 [ %i.dn, %bb.ac ], [ %i.dm, %bb.ab ], [ %i.di, %.thread247 ], [ %i.cd, %bb.w ], [ %i.ck, %bb.x ]
  %i.dq = phi i64 [ %i.do, %bb.ac ], [ %i.dl, %bb.ab ], [ %i.dh, %.thread247 ], [ %i.cc, %bb.w ], [ %i.cj, %bb.x ]
  %i.dr = phi i32 [ -2, %bb.ac ], [ -1, %bb.ab ], [ -1, %.thread247 ], [ -1, %bb.w ], [ -1, %bb.x ]
  %i.ds = add i32 %i.dr, %i.dp                    ; 4 uses
  %i.dt = icmp sgt i32 %i.ds, 0
  br i1 %i.dt, label %bb.ae, label %bb.ak

bb.ae:                                            ; preds = %bb.ad
  %i.du = load i8, ptr %i.f, align 1, !tbaa !11
  %i.dv = zext i8 %i.du to i32                    ; 2 uses
  %i.dw = and i32 %i.dv, 7
  switch i32 %i.dw, label %_ZN10duckdb_hllL6sdslenEPc.exit222 [
    i32 0, label %bb.af
    i32 1, label %bb.ag
    i32 2, label %bb.ah
    i32 3, label %bb.ai
    i32 4, label %bb.aj
  ]

bb.af:                                            ; preds = %bb.ae
  %i.dx = lshr i32 %i.dv, 3
  %i.dy = zext nneg i32 %i.dx to i64
  br label %_ZN10duckdb_hllL6sdslenEPc.exit222

bb.ag:                                            ; preds = %bb.ae
  %i.dz = getelementptr inbounds i8, ptr %i.d, i64 -4
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !17
  %i.eb = zext i8 %i.ea to i64
  br label %_ZN10duckdb_hllL6sdslenEPc.exit222

bb.ah:                                            ; preds = %bb.ae
  %i.ec = getelementptr inbounds i8, ptr %i.d, i64 -6
  %i.ed = load i16, ptr %i.ec, align 1, !tbaa !19
  %i.ee = zext i16 %i.ed to i64
  br label %_ZN10duckdb_hllL6sdslenEPc.exit222

bb.ai:                                            ; preds = %bb.ae
  %i.ef = getelementptr inbounds i8, ptr %i.d, i64 -10
  %i.eg = load i32, ptr %i.ef, align 1, !tbaa !22
  %i.eh = zext i32 %i.eg to i64
  br label %_ZN10duckdb_hllL6sdslenEPc.exit222

bb.aj:                                            ; preds = %bb.ae
  %i.ei = getelementptr inbounds i8, ptr %i.d, i64 -18
  %i.ej = load i64, ptr %i.ei, align 1, !tbaa !24
  br label %_ZN10duckdb_hllL6sdslenEPc.exit222

_ZN10duckdb_hllL6sdslenEPc.exit222:               ; preds = %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.ai, %bb.aj
  %.0.i221 = phi i64 [ %i.ej, %bb.aj ], [ %i.dy, %bb.af ], [ %i.eb, %bb.ag ], [ %i.ee, %bb.ah ], [ %i.eh, %bb.ai ], [ 0, %bb.ae ]
  %i.ek = zext nneg i32 %i.ds to i64
  %i.el = add i64 %.0.i221, %i.ek
  %i.em = icmp ugt i64 %i.el, 3000
  br i1 %i.em, label %bb.av, label %bb.ak

bb.ak:                                            ; preds = %_ZN10duckdb_hllL6sdslenEPc.exit222, %bb.ad
  %i.en = icmp ne i32 %i.ds, 0
  %or.cond5 = select i1 %i.en, i1 %.not210, i1 false
  %i.eo = sext i32 %i.ds to i64                   ; 3 uses
  br i1 %or.cond5, label %bb.al, label %._crit_edge302

bb.al:                                            ; preds = %bb.ak
  %i.ep = getelementptr inbounds i8, ptr %i.ao, i64 %i.eo
  %i.eq = ptrtoint ptr %i.w to i64
  %i.er = ptrtoint ptr %spec.store.select to i64
  %i.es = sub i64 %i.eq, %i.er
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ep, ptr align 1 %spec.store.select, i64 %i.es, i1 false)
  %.pre300 = load ptr, ptr %0, align 8, !tbaa !14
  br label %._crit_edge302

._crit_edge302:                                   ; preds = %bb.ak, %bb.al
  %i.et = phi ptr [ %.pre300, %bb.al ], [ %i.d, %bb.ak ]
  call void @_ZN10duckdb_hll10sdsIncrLenEPcl(ptr noundef %i.et, i64 noundef %i.eo)
  %sext = shl i64 %i.dq, 32
  %i.eu = ashr exact i64 %sext, 32
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0167266, ptr nonnull align 1 %i.a, i64 %i.eu, i1 false)
  %i.ev = getelementptr inbounds i8, ptr %i.w, i64 %i.eo
  br label %bb.am

.sink.split:                                      ; preds = %bb.p, %bb.o
  %3 = shl nuw i8 %2, 2
  %4 = add nuw i8 %3, 124
  %5 = or i8 %4, -128
  store i8 %5, ptr %.0167266, align 1, !tbaa !11
  br label %bb.am

bb.am:                                            ; preds = %.sink.split, %._crit_edge302
  %.0166 = phi ptr [ %i.ev, %._crit_edge302 ], [ %i.w, %.sink.split ] ; 2 uses
  %.not217 = icmp eq ptr %.0172269, null
  %i.ew = select i1 %.not217, ptr %i.e, ptr %.0172269 ; 2 uses
  %i.ex = icmp ult ptr %i.ew, %.0166
  br i1 %i.ex, label %.lr.ph281, label %.critedge

.lr.ph281:                                        ; preds = %bb.am, %.outer.backedge
  %.1.ph285 = phi ptr [ %.1280, %.outer.backedge ], [ %.0166, %bb.am ]
  %.3170.ph284 = phi ptr [ %.3170.ph.be, %.outer.backedge ], [ %i.ew, %bb.am ] ; 6 uses
  %.0171.ph283 = phi i32 [ %i.fa, %.outer.backedge ], [ 5, %bb.am ]
  %i.ey = getelementptr inbounds nuw i8, ptr %.3170.ph284, i64 1 ; 9 uses
  %i.ez = ptrtoint ptr %.3170.ph284 to i64
  br label %bb.an

bb.an:                                            ; preds = %.lr.ph281, %bb.au
  %.1280 = phi ptr [ %.1.ph285, %.lr.ph281 ], [ %i.fx, %bb.au ] ; 5 uses
  %.0171279 = phi i32 [ %.0171.ph283, %.lr.ph281 ], [ %i.fa, %bb.au ] ; 2 uses
  %i.fa = add nsw i32 %.0171279, -1               ; 2 uses
  %.not218 = icmp eq i32 %.0171279, 0
  br i1 %.not218, label %.critedge, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fb = load i8, ptr %.3170.ph284, align 1, !tbaa !11 ; 2 uses
  %i.fc = zext i8 %i.fb to i32                    ; 3 uses
  %trunc = and i8 %i.fb, -64
  switch i8 %trunc, label %bb.aq [
    i8 64, label %bb.ap
    i8 0, label %.outer.backedge
  ]

bb.ap:                                            ; preds = %bb.ao
  %i.fd = getelementptr inbounds nuw i8, ptr %.3170.ph284, i64 2
  br label %.outer.backedge

.outer.backedge:                                  ; preds = %bb.ao, %bb.aq, %bb.ar, %bb.as, %bb.at, %bb.ap
  %.3170.ph.be = phi ptr [ %i.fd, %bb.ap ], [ %i.ey, %bb.at ], [ %i.ey, %bb.as ], [ %i.ey, %bb.ar ], [ %i.ey, %bb.aq ], [ %i.ey, %bb.ao ] ; 2 uses
  %i.fe = icmp ult ptr %.3170.ph.be, %.1280
  br i1 %i.fe, label %.lr.ph281, label %.critedge, !llvm.loop !30

bb.aq:                                            ; preds = %bb.ao
  %i.ff = icmp ult ptr %i.ey, %.1280
  br i1 %i.ff, label %bb.ar, label %.outer.backedge

bb.ar:                                            ; preds = %bb.aq
  %i.fg = load i8, ptr %i.ey, align 1, !tbaa !11  ; 2 uses
  %i.fh = zext i8 %i.fg to i32                    ; 2 uses
  %.not219 = icmp sgt i8 %i.fg, -1
  br i1 %.not219, label %.outer.backedge, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fi = and i32 %i.fc, 124
  %i.fj = xor i32 %i.fh, %i.fc
  %i.fk = and i32 %i.fj, 124
  %i.fl = icmp eq i32 %i.fk, 0
  br i1 %i.fl, label %bb.at, label %.outer.backedge

bb.at:                                            ; preds = %bb.as
  %i.fm = and i32 %i.fc, 3
  %i.fn = and i32 %i.fh, 3
  %i.fo = add nuw nsw i32 %i.fn, %i.fm            ; 2 uses
  %i.fp = icmp samesign ugt i32 %i.fo, 2
  br i1 %i.fp, label %.outer.backedge, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fq = add nuw nsw i32 %i.fo, 1
  %i.fr = or i32 %i.fq, %i.fi
  %i.fs = trunc nuw nsw i32 %i.fr to i8
  %i.ft = or disjoint i8 %i.fs, -128
  store i8 %i.ft, ptr %i.ey, align 1, !tbaa !11
  %i.fu = ptrtoint ptr %.1280 to i64
  %i.fv = sub i64 %i.fu, %i.ez
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.3170.ph284, ptr nonnull align 1 %i.ey, i64 %i.fv, i1 false)
  %i.fw = load ptr, ptr %0, align 8, !tbaa !14
  call void @_ZN10duckdb_hll10sdsIncrLenEPcl(ptr noundef %i.fw, i64 noundef -1)
  %i.fx = getelementptr inbounds i8, ptr %.1280, i64 -1 ; 2 uses
  %i.fy = icmp ult ptr %.3170.ph284, %i.fx
  br i1 %i.fy, label %bb.an, label %.critedge

.critedge:                                        ; preds = %.outer.backedge, %bb.an, %bb.au, %bb.am
  %i.fz = load ptr, ptr %0, align 8, !tbaa !14
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 15 ; 2 uses
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !11
  %i.gc = or i8 %i.gb, -128
  store i8 %i.gc, ptr %i.ga, align 1, !tbaa !11
  br label %_ZN10duckdb_hllL11hllDenseSetEPhlh.exit

bb.av:                                            ; preds = %_ZN10duckdb_hllL6sdslenEPc.exit222, %bb.a
  %i.gd = call noundef i32 @_ZN10duckdb_hll16hllSparseToDenseEPNS_4robjE(ptr noundef %0)
  %i.ge = icmp eq i32 %i.gd, -1
  br i1 %i.ge, label %_ZN10duckdb_hllL11hllDenseSetEPhlh.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gf = load ptr, ptr %0, align 8, !tbaa !14
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 17
  %i.gh = mul nsw i64 %1, 6                       ; 2 uses
  %i.gi = sdiv i64 %i.gh, 8
  %i.gj = and i64 %i.gh, 6                        ; 4 uses
  %i.gk = sub nuw nsw i64 8, %i.gj                ; 3 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gg, i64 %i.gi ; 3 uses
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !11  ; 2 uses
  %i.gn = zext i8 %i.gm to i64
  %i.go = getelementptr i8, ptr %i.gl, i64 1      ; 2 uses
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !11  ; 2 uses
  %i.gq = zext i8 %i.gp to i64
  %i.gr = lshr i64 %i.gn, %i.gj
  %i.gs = shl nuw nsw i64 %i.gq, %i.gk
  %i.gt = or i64 %i.gs, %i.gr
  %i.gu = trunc nuw nsw i64 %i.gt to i32
  %i.gv = and i32 %i.gu, 63
  %i.gw = zext i8 %2 to i32
  %i.gx = icmp samesign ult i32 %i.gv, %i.gw
  br i1 %i.gx, label %bb.ax, label %_ZN10duckdb_hllL11hllDenseSetEPhlh.exit

bb.ax:                                            ; preds = %bb.aw
  %i.gy = zext i8 %2 to i64                       ; 2 uses
  %i.gz = trunc nuw nsw i64 %i.gj to i8
  %i.ha = shl i8 63, %i.gz
  %i.hb = xor i8 %i.ha, -1
  %i.hc = and i8 %i.gm, %i.hb
  %i.hd = shl nuw nsw i64 %i.gy, %i.gj
  %i.he = trunc i64 %i.hd to i8
  %i.hf = or i8 %i.hc, %i.he
  store i8 %i.hf, ptr %i.gl, align 1, !tbaa !11
  %i.hg = trunc nuw nsw i64 %i.gk to i16
  %i.hh = ashr i16 -64, %i.hg
  %i.hi = trunc nsw i16 %i.hh to i8
  %i.hj = and i8 %i.gp, %i.hi
  %i.hk = lshr i64 %i.gy, %i.gk
  %i.hl = trunc nuw nsw i64 %i.hk to i8
  %i.hm = or i8 %i.hj, %i.hl
  store i8 %i.hm, ptr %i.go, align 1, !tbaa !11
  br label %_ZN10duckdb_hllL11hllDenseSetEPhlh.exit

_ZN10duckdb_hllL11hllDenseSetEPhlh.exit:          ; preds = %bb.b, %_ZN10duckdb_hllL6sdslenEPc.exit, %bb.ax, %bb.aw, %bb.av, %bb.n, %.critedge
  %.0 = phi i32 [ 0, %bb.n ], [ -1, %bb.av ], [ 1, %.critedge ], [ 0, %bb.aw ], [ 1, %bb.ax ], [ -1, %_ZN10duckdb_hllL6sdslenEPc.exit ], [ -1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i32 %.0
}

declare noundef ptr @_ZN10duckdb_hll14sdsMakeRoomForEPcm(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare void @_ZN10duckdb_hll10sdsIncrLenEPcl(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define noundef range(i32 -1, 2) i32 @_ZN10duckdb_hll12hllSparseAddEPNS_4robjEPhm(ptr noundef captures(none) %0, ptr noundef readonly captures(address) %1, i64 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.b = call noundef i32 @_ZN10duckdb_hll9hllPatLenEPhmPl(ptr noundef %1, i64 noundef %2, ptr noundef nonnull %i.a)
  %i.c = trunc i32 %i.b to i8
  %i.d = load i64, ptr %i.a, align 8, !tbaa !7
  %i.e = tail call noundef i32 @_ZN10duckdb_hll12hllSparseSetEPNS_4robjElh(ptr noundef %0, i64 noundef %i.d, i8 noundef zeroext %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i32 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN10duckdb_hll17hllSparseRegHistoEPhiPiS1_(ptr noundef readonly captures(address) %0, i32 noundef %1, ptr noundef writeonly captures(address_is_null) %2, ptr noundef captures(none) %3) local_unnamed_addr #2 {
bb.a:
  %i.a = sext i32 %1 to i64
  %i.b = getelementptr inbounds i8, ptr %0, i64 %i.a
  %i.c = icmp sgt i32 %1, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %.036 = phi ptr [ %i.aa, %bb.e ], [ %0, %bb.a ] ; 3 uses
  %.03135 = phi i32 [ %.132, %bb.e ], [ 0, %bb.a ]
  %i.d = load i8, ptr %.036, align 1, !tbaa !11   ; 2 uses
  %i.e = zext i8 %i.d to i32                      ; 4 uses
  %trunc = and i8 %i.d, -64
  switch i8 %trunc, label %bb.d [
    i8 0, label %bb.b
    i8 64, label %bb.c
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.f = add nuw nsw i32 %i.e, 1                  ; 2 uses
  %i.g = load i32, ptr %3, align 4, !tbaa !3
  %i.h = add nsw i32 %i.g, %i.f
  store i32 %i.h, ptr %3, align 4, !tbaa !3
  br label %bb.e

bb.c:                                             ; preds = %.lr.ph
  %i.i = shl nuw nsw i32 %i.e, 8
  %i.j = and i32 %i.i, 16128
  %i.k = getelementptr inbounds nuw i8, ptr %.036, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !11
  %i.m = zext i8 %i.l to i32
  %i.n = or disjoint i32 %i.j, %i.m
  %i.o = add nuw nsw i32 %i.n, 1                  ; 2 uses
  %i.p = load i32, ptr %3, align 4, !tbaa !3
  %i.q = add nsw i32 %i.o, %i.p
  store i32 %i.q, ptr %3, align 4, !tbaa !3
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.r = and i32 %i.e, 3
  %i.s = add nuw nsw i32 %i.r, 1                  ; 2 uses
end_hunk_0
