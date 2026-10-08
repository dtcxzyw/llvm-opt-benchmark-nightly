Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meshoptimizer/original/tangentspace?download=true
inline.NumInlined: 32
inline.NumDeleted: 17
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@meshopt_generateTangents:bb.a
  store ptr %i.f, ptr %11, align 8, !tbaa !15
  %i.h = lshr i64 %4, 2
  %i.i = add i64 %i.h, %4
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.0.i.i = phi i64 [ 1, %bb.b ], [ %i.k, %bb.c ] ; 5 uses
  %i.j = icmp ult i64 %.0.i.i, %i.i
  %i.k = shl i64 %.0.i.i, 1
  br i1 %i.j, label %bb.c, label %_ZN7meshoptL12hashBuckets4Em.exit.i, !llvm.loop !19

_ZN7meshoptL12hashBuckets4Em.exit.i:              ; preds = %bb.c
  %i.l = lshr i64 %5, 2                           ; 8 uses
  %i.m = lshr i64 %7, 2                           ; 3 uses
  %i.n = lshr i64 %9, 2                           ; 5 uses
  %i.o = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !49
  %i.p = icmp ugt i64 %.0.i.i, 4611686018427387903
  %i.q = shl i64 %.0.i.i, 2                       ; 2 uses
  %i.r = select i1 %i.p, i64 -1, i64 %i.q
  %i.s = invoke noundef ptr %i.o(i64 noundef %i.r)
          to label %.noexc unwind label %bb.u, !inline_history !20 ; 6 uses

.noexc:                                           ; preds = %_ZN7meshoptL12hashBuckets4Em.exit.i
  store i64 2, ptr %i.g, align 8, !tbaa !14
  %i.t = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  store ptr %i.s, ptr %i.t, align 8, !tbaa !15
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.s, i8 -1, i64 %i.q, i1 false)
  %.not.i = icmp eq i64 %4, 0                     ; 3 uses
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph33.i

.lr.ph33.i:                                       ; preds = %.noexc
  %i.u = add i64 %.0.i.i, -1                      ; 3 uses
  br label %bb.d

._crit_edge.i:                                    ; preds = %_ZN7meshoptL11hashLookup4IjNS_13VertexHasherFEEEPT_S3_mRKT0_RKS2_S8_.exit.i, %.noexc
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN17meshopt_Allocator7storageEvE1s, i64 8), align 8, !tbaa !17
  invoke void %i.v(ptr noundef %i.s)
          to label %bb.k unwind label %bb.u, !inline_history !20

bb.d:                                             ; preds = %_ZN7meshoptL11hashLookup4IjNS_13VertexHasherFEEEPT_S3_mRKT0_RKS2_S8_.exit.i, %.lr.ph33.i
  %.032.i = phi i64 [ 0, %.lr.ph33.i ], [ %i.dy, %_ZN7meshoptL11hashLookup4IjNS_13VertexHasherFEEEPT_S3_mRKT0_RKS2_S8_.exit.i ] ; 3 uses
  %i.w = trunc i64 %.032.i to i32                 ; 2 uses
  %i.x = and i64 %.032.i, 4294967295              ; 4 uses
  %i.y = mul i64 %i.x, %i.l
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.y ; 3 uses
  %i.aa = mul i64 %i.x, %i.m
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.aa ; 3 uses
  %i.ac = load i32, ptr %i.z, align 4             ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ae = load i32, ptr %i.ad, align 4            ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ag = load i32, ptr %i.af, align 4            ; 3 uses
  %i.ah = icmp eq i32 %i.ac, -2147483648
  %i.ai = select i1 %i.ah, i32 0, i32 %i.ac       ; 2 uses
  %i.aj = icmp eq i32 %i.ae, -2147483648
  %i.ak = select i1 %i.aj, i32 0, i32 %i.ae       ; 2 uses
  %i.al = lshr i32 %i.ai, 17
  %i.am = lshr i32 %i.ak, 17
  %i.an = load i32, ptr %i.ab, align 4            ; 3 uses
  %i.ao = icmp eq i32 %i.an, -2147483648
  %i.ap = lshr i32 %i.an, 15
  %i.aq = select i1 %i.ao, i32 0, i32 %i.ap
  %i.ar = xor i32 %i.al, %i.aq
  %i.as = xor i32 %i.ar, %i.ai
  %i.at = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.au = load i32, ptr %i.at, align 4            ; 3 uses
  %i.av = icmp eq i32 %i.au, -2147483648
  %i.aw = lshr i32 %i.au, 15
  %i.ax = select i1 %i.av, i32 0, i32 %i.aw
  %i.ay = xor i32 %i.am, %i.ax
  %i.az = xor i32 %i.ay, %i.ak
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.bb = load i32, ptr %i.ba, align 4            ; 3 uses
  %i.bc = icmp eq i32 %i.bb, -2147483648
  %i.bd = lshr i32 %i.bb, 15
  %i.be = select i1 %i.bc, i32 0, i32 %i.bd
  %i.bf = icmp eq i32 %i.ag, -2147483648
  %i.bg = select i1 %i.bf, i32 0, i32 %i.ag       ; 2 uses
  %i.bh = lshr i32 %i.bg, 17
  %i.bi = mul i64 %i.x, %i.n
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %i.bi ; 2 uses
  %i.bk = xor i32 %i.bh, %i.be
  %i.bl = xor i32 %i.bk, %i.bg
  %i.bm = load i32, ptr %i.bj, align 4            ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  %i.bo = load i32, ptr %i.bn, align 4            ; 2 uses
  %i.bp = xor i32 %i.bo, %i.bm
  %i.bq = and i32 %i.bp, 2147483647               ; 2 uses
  %i.br = lshr i32 %i.bq, 13
  %i.bs = xor i32 %i.br, %i.bq
  %i.bt = mul i32 %i.as, 73856093
  %i.bu = mul i32 %i.az, 19349663
  %i.bv = xor i32 %i.bu, %i.bt
  %i.bw = mul i32 %i.bl, 83492791
  %i.bx = xor i32 %i.bv, %i.bw
  %i.by = mul i32 %i.bs, 50331653
  %i.bz = xor i32 %i.bx, %i.by
  %i.ca = zext i32 %i.bz to i64
  %i.cb = and i64 %i.u, %i.ca                     ; 3 uses
  %i.cc = bitcast i32 %i.ac to float
  %i.cd = bitcast i32 %i.ae to float
  %i.ce = bitcast i32 %i.ag to float
  %i.cf = bitcast i32 %i.an to float
  %i.cg = bitcast i32 %i.au to float
  %i.ch = bitcast i32 %i.bb to float
  %i.ci = bitcast i32 %i.bm to float
  %i.cj = bitcast i32 %i.bo to float
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.cb
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !50 ; 2 uses
  %i.cm = icmp eq i32 %i.cl, -1
  br i1 %i.cm, label %_ZN7meshoptL11hashLookup4IjNS_13VertexHasherFEEEPT_S3_mRKT0_RKS2_S8_.exit.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %_ZNK7meshopt13VertexHasherF5equalEjj.exit.thread.i.i
  %.pr.i = phi i32 [ %i.dt, %_ZNK7meshopt13VertexHasherF5equalEjj.exit.thread.i.i ], [ %i.cl, %bb.d ] ; 2 uses
  %.02311.i31.i = phi i64 [ %i.dr, %_ZNK7meshopt13VertexHasherF5equalEjj.exit.thread.i.i ], [ %i.cb, %bb.d ]
  %.02212.i30.i = phi i64 [ %i.dp, %_ZNK7meshopt13VertexHasherF5equalEjj.exit.thread.i.i ], [ 0, %bb.d ]
  %i.cn = zext i32 %.pr.i to i64                  ; 3 uses
  %i.co = mul i64 %i.l, %i.cn
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.co ; 3 uses
  %i.cq = mul i64 %i.m, %i.cn
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.cq ; 3 uses
  %i.cs = mul i64 %i.n, %i.cn
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %i.cs ; 2 uses
  %i.cu = load float, ptr %i.cp, align 4, !tbaa !52
  %i.cv = fcmp oeq float %i.cu, %i.cc
  br i1 %i.cv, label %bb.e, label %_ZNK7meshopt13VertexHasherF5equalEjj.exit.thread.i.i

bb.e:                                             ; preds = %.lr.ph.i
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cp, i64 4
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !52
  %i.cy = fcmp oeq float %i.cx, %i.cd
  br i1 %i.cy, label %bb.f, label %_ZNK7meshopt13VertexHasherF5equalEjj.exit.thread.i.i

bb.f:                                             ; preds = %bb.e
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.da = load float, ptr %i.cz, align 4, !tbaa !52
  %i.db = fcmp oeq float %i.da, %i.ce
  br i1 %i.db, label %bb.g, label %_ZNK7meshopt13VertexHasherF5equalEjj.exit.thread.i.i

bb.g:                                             ; preds = %bb.f
  %i.dc = load float, ptr %i.cr, align 4, !tbaa !52
  %i.dd = fcmp oeq float %i.dc, %i.cf
  br i1 %i.dd, label %bb.h, label %_ZNK7meshopt13VertexHasherF5equalEjj.exit.thread.i.i

bb.h:                                             ; preds = %bb.g
  %i.de = getelementptr inbounds nuw i8, ptr %i.cr, i64 4
  %i.df = load float, ptr %i.de, align 4, !tbaa !52
  %i.dg = fcmp oeq float %i.df, %i.cg
  br i1 %i.dg, label %bb.i, label %_ZNK7meshopt13VertexHasherF5equalEjj.exit.thread.i.i

bb.i:                                             ; preds = %bb.h
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.di = load float, ptr %i.dh, align 4, !tbaa !52
  %i.dj = fcmp oeq float %i.di, %i.ch
  br i1 %i.dj, label %bb.j, label %_ZNK7meshopt13VertexHasherF5equalEjj.exit.thread.i.i

bb.j:                                             ; preds = %bb.i
  %i.dk = load float, ptr %i.ct, align 4, !tbaa !52
  %i.dl = fcmp oeq float %i.dk, %i.ci
  br i1 %i.dl, label %_ZNK7meshopt13VertexHasherF5equalEjj.exit.i.i, label %_ZNK7meshopt13VertexHasherF5equalEjj.exit.thread.i.i

_ZNK7meshopt13VertexHasherF5equalEjj.exit.i.i:    ; preds = %bb.j
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !52
  %i.do = fcmp oeq float %i.dn, %i.cj
  br i1 %i.do, label %_ZN7meshoptL11hashLookup4IjNS_13VertexHasherFEEEPT_S3_mRKT0_RKS2_S8_.exit.i, label %_ZNK7meshopt13VertexHasherF5equalEjj.exit.thread.i.i

_ZNK7meshopt13VertexHasherF5equalEjj.exit.thread.i.i: ; preds = %_ZNK7meshopt13VertexHasherF5equalEjj.exit.i.i, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %.lr.ph.i
  %i.dp = add i64 %.02212.i30.i, 1                ; 3 uses
  %i.dq = add i64 %i.dp, %.02311.i31.i
  %i.dr = and i64 %i.dq, %i.u                     ; 3 uses
  %.not.i.i = icmp ule i64 %i.dp, %i.u
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.dr
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !50 ; 2 uses
  %i.du = icmp eq i32 %i.dt, -1
  br i1 %i.du, label %_ZN7meshoptL11hashLookup4IjNS_13VertexHasherFEEEPT_S3_mRKT0_RKS2_S8_.exit.thread.i, label %.lr.ph.i

_ZN7meshoptL11hashLookup4IjNS_13VertexHasherFEEEPT_S3_mRKT0_RKS2_S8_.exit.thread.i: ; preds = %_ZNK7meshopt13VertexHasherF5equalEjj.exit.thread.i.i, %bb.d
  %.02311.i.lcssa29.i = phi i64 [ %i.cb, %bb.d ], [ %i.dr, %_ZNK7meshopt13VertexHasherF5equalEjj.exit.thread.i.i ]
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.02311.i.lcssa29.i
  store i32 %i.w, ptr %i.dv, align 4, !tbaa !50
  br label %_ZN7meshoptL11hashLookup4IjNS_13VertexHasherFEEEPT_S3_mRKT0_RKS2_S8_.exit.i

_ZN7meshoptL11hashLookup4IjNS_13VertexHasherFEEEPT_S3_mRKT0_RKS2_S8_.exit.i: ; preds = %_ZNK7meshopt13VertexHasherF5equalEjj.exit.i.i, %_ZN7meshoptL11hashLookup4IjNS_13VertexHasherFEEEPT_S3_mRKT0_RKS2_S8_.exit.thread.i
  %i.dw = phi i32 [ %i.w, %_ZN7meshoptL11hashLookup4IjNS_13VertexHasherFEEEPT_S3_mRKT0_RKS2_S8_.exit.thread.i ], [ %.pr.i, %_ZNK7meshopt13VertexHasherF5equalEjj.exit.i.i ]
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.x
  store i32 %i.dw, ptr %i.dx, align 4, !tbaa !50
  %i.dy = add nuw i64 %.032.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.dy, %4
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.d, !llvm.loop !21

bb.k:                                             ; preds = %._crit_edge.i
  store i64 1, ptr %i.g, align 8, !tbaa !14
  %i.dz = add i64 %4, 1                           ; 2 uses
  %i.ea = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !49
  %i.eb = icmp ugt i64 %i.dz, 4611686018427387903
  %i.ec = shl nuw i64 %i.dz, 2
  %i.ed = select i1 %i.eb, i64 -1, i64 %i.ec
  %i.ee = invoke noundef ptr %i.ea(i64 noundef %i.ed)
          to label %.noexc164 unwind label %bb.v, !inline_history !22 ; 5 uses

.noexc164:                                        ; preds = %bb.k
  store i64 2, ptr %i.g, align 8, !tbaa !14
  store ptr %i.ee, ptr %i.t, align 8, !tbaa !15
  %i.ef = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !49
  %i.eg = icmp ugt i64 %2, 4611686018427387903
  %i.eh = shl nuw i64 %2, 2
  %i.ei = select i1 %i.eg, i64 -1, i64 %i.eh      ; 2 uses
  %i.ej = invoke noundef ptr %i.ef(i64 noundef %i.ei)
          to label %.noexc165 unwind label %bb.v, !inline_history !22 ; 5 uses

.noexc165:                                        ; preds = %.noexc164
  store i64 3, ptr %i.g, align 8, !tbaa !14
  %i.ek = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %i.ej, ptr %i.ek, align 8, !tbaa !15
  %i.el = getelementptr inbounds nuw i8, ptr %i.ee, i64 4 ; 17 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.el, i8 0, i64 %i.d, i1 false)
  %.not88.i = icmp eq i64 %2, 0                   ; 3 uses
  br i1 %.not88.i, label %.preheader81.i, label %.lr.ph.i160

.lr.ph.i160:                                      ; preds = %.noexc165
  %.not75.i = icmp eq ptr %1, null
  br i1 %.not75.i, label %.lr.ph.split.us.i.preheader, label %.lr.ph.split.i.preheader

.lr.ph.split.i.preheader:                         ; preds = %.lr.ph.i160
  %xtraiter = and i64 %2, 1
  %i.em = icmp eq i64 %2, 1
  br i1 %i.em, label %.lr.ph.split.i.epil.preheader, label %.lr.ph.split.i.preheader.new

.lr.ph.split.i.preheader.new:                     ; preds = %.lr.ph.split.i.preheader
  %unroll_iter = and i64 %2, -2
  br label %.lr.ph.split.i

.lr.ph.split.us.i.preheader:                      ; preds = %.lr.ph.i160
  %i.en = add i64 %2, -1
  %xtraiter367 = and i64 %2, 3                    ; 3 uses
  %i.eo = icmp ult i64 %i.en, 3
  br i1 %i.eo, label %.lr.ph.split.us.i.epil.preheader, label %.lr.ph.split.us.i.preheader.new

.lr.ph.split.us.i.preheader.new:                  ; preds = %.lr.ph.split.us.i.preheader
  %unroll_iter370 = and i64 %2, -4
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i, %.lr.ph.split.us.i.preheader.new
  %.06682.us.i = phi i64 [ 0, %.lr.ph.split.us.i.preheader.new ], [ %i.fm, %.lr.ph.split.us.i ] ; 5 uses
  %niter371 = phi i64 [ 0, %.lr.ph.split.us.i.preheader.new ], [ %niter371.next.3, %.lr.ph.split.us.i ]
  %.in76.us.i = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.06682.us.i
  %i.ep = load i32, ptr %.in76.us.i, align 4, !tbaa !50
  %i.eq = zext i32 %i.ep to i64
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %i.eq ; 2 uses
  %i.es = load i32, ptr %i.er, align 4, !tbaa !50
  %i.et = add i32 %i.es, 1
  store i32 %i.et, ptr %i.er, align 4, !tbaa !50
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.06682.us.i
  %.in76.us.i.1 = getelementptr inbounds nuw i8, ptr %i.eu, i64 4
  %i.ev = load i32, ptr %.in76.us.i.1, align 4, !tbaa !50
  %i.ew = zext i32 %i.ev to i64
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %i.ew ; 2 uses
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !50
  %i.ez = add i32 %i.ey, 1
  store i32 %i.ez, ptr %i.ex, align 4, !tbaa !50
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.06682.us.i
  %.in76.us.i.2 = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.fb = load i32, ptr %.in76.us.i.2, align 4, !tbaa !50
  %i.fc = zext i32 %i.fb to i64
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %i.fc ; 2 uses
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !50
  %i.ff = add i32 %i.fe, 1
  store i32 %i.ff, ptr %i.fd, align 4, !tbaa !50
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.06682.us.i
  %.in76.us.i.3 = getelementptr inbounds nuw i8, ptr %i.fg, i64 12
  %i.fh = load i32, ptr %.in76.us.i.3, align 4, !tbaa !50
  %i.fi = zext i32 %i.fh to i64
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %i.fi ; 2 uses
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !50
  %i.fl = add i32 %i.fk, 1
  store i32 %i.fl, ptr %i.fj, align 4, !tbaa !50
  %i.fm = add nuw i64 %.06682.us.i, 4             ; 2 uses
  %niter371.next.3 = add nuw i64 %niter371, 4     ; 2 uses
  %niter371.ncmp.3 = icmp eq i64 %niter371.next.3, %unroll_iter370
  br i1 %niter371.ncmp.3, label %.preheader81.i.loopexit.unr-lcssa, label %.lr.ph.split.us.i, !llvm.loop !23

.preheader81.i.loopexit.unr-lcssa:                ; preds = %.lr.ph.split.us.i
  %lcmp.mod368.not = icmp eq i64 %xtraiter367, 0
  br i1 %lcmp.mod368.not, label %.preheader81.i, label %.lr.ph.split.us.i.epil.preheader

.lr.ph.split.us.i.epil.preheader:                 ; preds = %.preheader81.i.loopexit.unr-lcssa, %.lr.ph.split.us.i.preheader
  %.06682.us.i.epil.init = phi i64 [ 0, %.lr.ph.split.us.i.preheader ], [ %i.fm, %.preheader81.i.loopexit.unr-lcssa ]
  %lcmp.mod369 = icmp ne i64 %xtraiter367, 0
  tail call void @llvm.assume(i1 %lcmp.mod369)
  br label %.lr.ph.split.us.i.epil

.lr.ph.split.us.i.epil:                           ; preds = %.lr.ph.split.us.i.epil, %.lr.ph.split.us.i.epil.preheader
  %.06682.us.i.epil = phi i64 [ %i.fs, %.lr.ph.split.us.i.epil ], [ %.06682.us.i.epil.init, %.lr.ph.split.us.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.split.us.i.epil ], [ 0, %.lr.ph.split.us.i.epil.preheader ]
  %.in76.us.i.epil = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.06682.us.i.epil
  %i.fn = load i32, ptr %.in76.us.i.epil, align 4, !tbaa !50
  %i.fo = zext i32 %i.fn to i64
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %i.fo ; 2 uses
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !50
  %i.fr = add i32 %i.fq, 1
  store i32 %i.fr, ptr %i.fp, align 4, !tbaa !50
  %i.fs = add nuw i64 %.06682.us.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter367
  br i1 %epil.iter.cmp.not, label %.preheader81.i, label %.lr.ph.split.us.i.epil, !llvm.loop !24

.preheader81.i.loopexit363.unr-lcssa:             ; preds = %.lr.ph.split.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader81.i, label %.lr.ph.split.i.epil.preheader

.lr.ph.split.i.epil.preheader:                    ; preds = %.preheader81.i.loopexit363.unr-lcssa, %.lr.ph.split.i.preheader
  %.06682.i.epil.init = phi i64 [ 0, %.lr.ph.split.i.preheader ], [ %i.gt, %.preheader81.i.loopexit363.unr-lcssa ]
  %lcmp.mod366 = trunc i64 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod366)
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.06682.i.epil.init
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !50
  %i.fv = zext i32 %i.fu to i64
  %.in76.i.epil = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.fv
  %i.fw = load i32, ptr %.in76.i.epil, align 4, !tbaa !50
  %i.fx = zext i32 %i.fw to i64
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %i.fx ; 2 uses
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !50
  %i.ga = add i32 %i.fz, 1
  store i32 %i.ga, ptr %i.fy, align 4, !tbaa !50
  br label %.preheader81.i

.preheader81.i:                                   ; preds = %.lr.ph.split.i.epil.preheader, %.preheader81.i.loopexit363.unr-lcssa, %.preheader81.i.loopexit.unr-lcssa, %.lr.ph.split.us.i.epil, %.noexc165
  br i1 %.not.i, label %.preheader.i, label %.lr.ph85.i.preheader

.lr.ph85.i.preheader:                             ; preds = %.preheader81.i
  %xtraiter372 = and i64 %4, 3                    ; 3 uses
  %i.gb = icmp ult i64 %4, 4
  br i1 %i.gb, label %.lr.ph85.i.epil.preheader, label %.lr.ph85.i.preheader.new

.lr.ph85.i.preheader.new:                         ; preds = %.lr.ph85.i.preheader
  %unroll_iter376 = and i64 %4, -4
  br label %.lr.ph85.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i, %.lr.ph.split.i.preheader.new
  %.06682.i = phi i64 [ 0, %.lr.ph.split.i.preheader.new ], [ %i.gt, %.lr.ph.split.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.split.i.preheader.new ], [ %niter.next.1, %.lr.ph.split.i ]
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.06682.i
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !50
  %i.ge = zext i32 %i.gd to i64
  %.in76.i = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ge
  %i.gf = load i32, ptr %.in76.i, align 4, !tbaa !50
  %i.gg = zext i32 %i.gf to i64
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %i.gg ; 2 uses
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !50
  %i.gj = add i32 %i.gi, 1
  store i32 %i.gj, ptr %i.gh, align 4, !tbaa !50
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.06682.i
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 4
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !50
  %i.gn = zext i32 %i.gm to i64
  %.in76.i.1 = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.gn
  %i.go = load i32, ptr %.in76.i.1, align 4, !tbaa !50
  %i.gp = zext i32 %i.go to i64
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %i.gp ; 2 uses
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !50
  %i.gs = add i32 %i.gr, 1
  store i32 %i.gs, ptr %i.gq, align 4, !tbaa !50
  %i.gt = add nuw i64 %.06682.i, 2                ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader81.i.loopexit363.unr-lcssa, label %.lr.ph.split.i, !llvm.loop !23

.preheader.i.loopexit.unr-lcssa:                  ; preds = %.lr.ph85.i
  %lcmp.mod374.not = icmp eq i64 %xtraiter372, 0
  br i1 %lcmp.mod374.not, label %.preheader.i, label %.lr.ph85.i.epil.preheader

.lr.ph85.i.epil.preheader:                        ; preds = %.preheader.i.loopexit.unr-lcssa, %.lr.ph85.i.preheader
  %.06484.i.epil.init = phi i64 [ 0, %.lr.ph85.i.preheader ], [ %i.hn, %.preheader.i.loopexit.unr-lcssa ]
  %.06583.i.epil.init = phi i32 [ 0, %.lr.ph85.i.preheader ], [ %i.hm, %.preheader.i.loopexit.unr-lcssa ]
  %lcmp.mod375 = icmp ne i64 %xtraiter372, 0
  tail call void @llvm.assume(i1 %lcmp.mod375)
  br label %.lr.ph85.i.epil

.lr.ph85.i.epil:                                  ; preds = %.lr.ph85.i.epil, %.lr.ph85.i.epil.preheader
  %.06484.i.epil = phi i64 [ %i.gx, %.lr.ph85.i.epil ], [ %.06484.i.epil.init, %.lr.ph85.i.epil.preheader ] ; 2 uses
  %.06583.i.epil = phi i32 [ %i.gw, %.lr.ph85.i.epil ], [ %.06583.i.epil.init, %.lr.ph85.i.epil.preheader ] ; 2 uses
  %epil.iter373 = phi i64 [ %epil.iter373.next, %.lr.ph85.i.epil ], [ 0, %.lr.ph85.i.epil.preheader ]
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %.06484.i.epil ; 2 uses
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !50
  store i32 %.06583.i.epil, ptr %i.gu, align 4, !tbaa !50
  %i.gw = add i32 %i.gv, %.06583.i.epil
  %i.gx = add nuw i64 %.06484.i.epil, 1
  %epil.iter373.next = add i64 %epil.iter373, 1   ; 2 uses
  %epil.iter373.cmp.not = icmp eq i64 %epil.iter373.next, %xtraiter372
  br i1 %epil.iter373.cmp.not, label %.preheader.i, label %.lr.ph85.i.epil, !llvm.loop !25

.preheader.i:                                     ; preds = %.preheader.i.loopexit.unr-lcssa, %.lr.ph85.i.epil, %.preheader81.i
  %.not90.i = icmp ult i64 %2, 3                  ; 4 uses
  br i1 %.not90.i, label %.loopexit, label %.lr.ph87.i

.lr.ph87.i:                                       ; preds = %.preheader.i
  %.not.i162 = icmp eq ptr %1, null
  br label %bb.l

end_hunk_0
begin_hunk_1_@meshopt_generateTangents:bb.a
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.ia = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx.i ; 3 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 4
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.in.i = phi ptr [ %i.hv, %bb.m ], [ %i.ib, %bb.n ]
  %.in80.i = phi ptr [ %i.hr, %bb.m ], [ %i.ia, %bb.n ]
  %.in74.i = phi ptr [ %i.hz, %bb.m ], [ %i.ic, %bb.n ]
  %i.id = load i32, ptr %.in80.i, align 4, !tbaa !50
  %i.ie = load i32, ptr %.in.i, align 4, !tbaa !50
  %i.if = load i32, ptr %.in74.i, align 4, !tbaa !50
  %.0.tr.i = trunc i64 %.086.i to i32
  %i.ig = shl i32 %.0.tr.i, 2                     ; 3 uses
  %i.ih = zext i32 %i.id to i64
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %i.ih ; 2 uses
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !50 ; 2 uses
  %i.ik = add i32 %i.ij, 1
  store i32 %i.ik, ptr %i.ii, align 4, !tbaa !50
  %i.il = zext i32 %i.ij to i64
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.il
  store i32 %i.ig, ptr %i.im, align 4, !tbaa !50
  %i.in = or disjoint i32 %i.ig, 1
  %i.io = zext i32 %i.ie to i64
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %i.io ; 2 uses
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !50 ; 2 uses
  %i.ir = add i32 %i.iq, 1
  store i32 %i.ir, ptr %i.ip, align 4, !tbaa !50
  %i.is = zext i32 %i.iq to i64
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.is
  store i32 %i.in, ptr %i.it, align 4, !tbaa !50
  %i.iu = or disjoint i32 %i.ig, 2
  %i.iv = zext i32 %i.if to i64
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %i.iv ; 2 uses
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !50 ; 2 uses
  %i.iy = add i32 %i.ix, 1
  store i32 %i.iy, ptr %i.iw, align 4, !tbaa !50
  %i.iz = zext i32 %i.ix to i64
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.iz
  store i32 %i.iu, ptr %i.ja, align 4, !tbaa !50
  %i.jb = add nuw nsw i64 %.086.i, 1              ; 2 uses
  %exitcond94.not.i = icmp eq i64 %i.jb, %i.a
  br i1 %exitcond94.not.i, label %.loopexit, label %bb.l, !llvm.loop !27

.loopexit:                                        ; preds = %bb.o, %.preheader.i
  store i32 0, ptr %i.ee, align 4, !tbaa !50
  %i.jc = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !49
  %i.jd = icmp ugt i64 %2, 3458764513820540927
  %i.je = shl nuw i64 %i.a, 4
  %i.jf = select i1 %i.jd, i64 -1, i64 %i.je
  %i.jg = invoke noundef ptr %i.jc(i64 noundef %i.jf)
          to label %bb.p unwind label %bb.w, !inline_history !28 ; 12 uses

bb.p:                                             ; preds = %.loopexit
  store i64 4, ptr %i.g, align 8, !tbaa !14
  %i.jh = getelementptr inbounds nuw i8, ptr %11, i64 24
  store ptr %i.jg, ptr %i.jh, align 8, !tbaa !15
  br i1 %.not90.i, label %_ZN7meshoptL19computeFaceTangentsEPNS_7TangentEmPKjPKfmS5_m.exit, label %.lr.ph.i167

.lr.ph.i167:                                      ; preds = %bb.p
  %.not.i168 = icmp eq ptr %1, null
  br label %bb.q

bb.q:                                             ; preds = %bb.t, %.lr.ph.i167
  %.0127.i = phi i64 [ 0, %.lr.ph.i167 ], [ %i.nh, %bb.t ] ; 4 uses
  br i1 %.not.i168, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.idx.i169 = mul nuw i64 %.0127.i, 12
  %i.ji = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i169 ; 3 uses
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !50
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ji, i64 4
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !50
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ji, i64 8
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !50
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.jo = trunc i64 %.0127.i to i32
  %i.jp = mul i32 %i.jo, 3                        ; 3 uses
  %i.jq = add i32 %i.jp, 1
  %i.jr = add i32 %i.jp, 2
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.js = phi i32 [ %i.jl, %bb.r ], [ %i.jq, %bb.s ]
  %i.jt = phi i32 [ %i.jj, %bb.r ], [ %i.jp, %bb.s ]
  %i.ju = phi i32 [ %i.jn, %bb.r ], [ %i.jr, %bb.s ]
  %i.jv = zext i32 %i.jt to i64                   ; 2 uses
  %i.jw = mul i64 %i.l, %i.jv
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.jw ; 2 uses
  %i.jy = zext i32 %i.js to i64                   ; 2 uses
  %i.jz = mul i64 %i.l, %i.jy
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.jz ; 2 uses
  %i.kb = zext i32 %i.ju to i64                   ; 2 uses
  %i.kc = mul i64 %i.l, %i.kb
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.kc ; 2 uses
  %i.ke = mul i64 %i.n, %i.jv
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %i.ke ; 2 uses
  %i.kg = mul i64 %i.n, %i.jy
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %i.kg ; 2 uses
  %i.ki = mul i64 %i.n, %i.kb
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %i.ki ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  %i.kl = load float, ptr %i.kk, align 4, !tbaa !52 ; 3 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.jx, i64 8
  %i.kn = load float, ptr %i.km, align 4, !tbaa !52 ; 4 uses
  %i.ko = fsub float %i.kl, %i.kn
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  %i.kq = load float, ptr %i.kp, align 4, !tbaa !52 ; 3 uses
  %i.kr = fsub float %i.kq, %i.kn
  %i.ks = load float, ptr %i.kh, align 4, !tbaa !52
  %i.kt = load float, ptr %i.kf, align 4, !tbaa !52 ; 2 uses
  %i.ku = fsub float %i.ks, %i.kt
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kh, i64 4
  %i.kw = load float, ptr %i.kv, align 4, !tbaa !52
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kf, i64 4
  %i.ky = load float, ptr %i.kx, align 4, !tbaa !52 ; 2 uses
  %i.kz = load float, ptr %i.kj, align 4, !tbaa !52
  %i.la = fsub float %i.kz, %i.kt
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kj, i64 4
  %i.lc = load float, ptr %i.lb, align 4, !tbaa !52
  %i.ld = fneg float %i.kr
  %i.le = fneg float %i.la
  %i.lf = fcmp oeq float %i.kn, %i.kl
  %i.lg = fcmp oeq float %i.kn, %i.kq
  %i.lh = fcmp oeq float %i.kl, %i.kq
  %i.li = getelementptr inbounds nuw [16 x i8], ptr %i.jg, i64 %.0127.i
  %i.lj = load <2 x float>, ptr %i.ka, align 4, !tbaa !52 ; 3 uses
  %i.lk = load <2 x float>, ptr %i.jx, align 4, !tbaa !52 ; 4 uses
  %i.ll = fsub <2 x float> %i.lj, %i.lk
  %i.lm = load <2 x float>, ptr %i.kd, align 4, !tbaa !52 ; 3 uses
  %i.ln = fsub <2 x float> %i.lm, %i.lk
  %i.lo = fsub float %i.kw, %i.ky                 ; 3 uses
  %i.lp = fsub float %i.lc, %i.ky                 ; 3 uses
  %i.lq = fneg <2 x float> %i.ln
  %i.lr = insertelement <2 x float> poison, float %i.lo, i64 0
  %i.ls = shufflevector <2 x float> %i.lr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lt = fmul <2 x float> %i.ls, %i.lq
  %i.lu = fmul float %i.lo, %i.ld
  %i.lv = tail call float @llvm.fmuladd.f32(float %i.lp, float %i.ko, float %i.lu) ; 3 uses
  %i.lw = fmul float %i.lo, %i.le
  %i.lx = tail call float @llvm.fmuladd.f32(float %i.ku, float %i.lp, float %i.lw) ; 2 uses
  %i.ly = fcmp oeq float %i.lx, 0.000000e+00
  %i.lz = fcmp ogt float %i.lx, 0.000000e+00
  %i.ma = select i1 %i.lz, float 1.000000e+00, float -1.000000e+00
  %i.mb = extractelement <2 x float> %i.lj, i64 0 ; 2 uses
  %i.mc = extractelement <2 x float> %i.lk, i64 0 ; 2 uses
  %i.md = fcmp oeq float %i.mc, %i.mb
  %i.me = extractelement <2 x float> %i.lj, i64 1 ; 2 uses
  %i.mf = extractelement <2 x float> %i.lk, i64 1 ; 2 uses
  %i.mg = fcmp oeq float %i.mf, %i.me
  %or.cond.i = select i1 %i.md, i1 %i.mg, i1 false
  %or.cond122.i = select i1 %or.cond.i, i1 %i.lf, i1 false
  %i.mh = extractelement <2 x float> %i.lm, i64 0 ; 2 uses
  %i.mi = fcmp oeq float %i.mc, %i.mh
  %i.mj = extractelement <2 x float> %i.lm, i64 1 ; 2 uses
  %i.mk = fcmp oeq float %i.mf, %i.mj
  %or.cond123.i = select i1 %i.mi, i1 %i.mk, i1 false
  %or.cond124.i = select i1 %or.cond123.i, i1 %i.lg, i1 false
  %i.ml = fcmp oeq float %i.mb, %i.mh
  %i.mm = fcmp oeq float %i.me, %i.mj
  %or.cond125.i = select i1 %i.ml, i1 %i.mm, i1 false
  %or.cond126.i = select i1 %or.cond125.i, i1 %i.lh, i1 false
  %i.mn = select i1 %or.cond126.i, i1 true, i1 %or.cond124.i
  %i.mo = select i1 %i.mn, i1 true, i1 %or.cond122.i
  %i.mp = select i1 %i.mo, i1 true, i1 %i.ly
  %i.mq = insertelement <2 x float> poison, float %i.lp, i64 0
  %i.mr = shufflevector <2 x float> %i.mq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ms = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mr, <2 x float> %i.ll, <2 x float> %i.lt) ; 4 uses
  %i.mt = select i1 %i.mp, float 0.000000e+00, float %i.ma ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %i.ms, %i.ms
  %i.mu = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.mv = extractelement <2 x float> %i.ms, i64 0 ; 2 uses
  %i.mw = tail call float @llvm.fmuladd.f32(float %i.mv, float %i.mv, float %i.mu)
  %i.mx = tail call float @llvm.fmuladd.f32(float %i.lv, float %i.lv, float %i.mw) ; 2 uses
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.mx)
  %i.my = fcmp une float %i.mx, 0.000000e+00
  %i.mz = fdiv float %i.mt, %sqrt.i
  %i.na = select i1 %i.my, float %i.mz, float 0.000000e+00
  %i.nb = shufflevector <2 x float> %i.ms, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.nc = insertelement <4 x float> %i.nb, float %i.na, i64 2 ; 2 uses
  %i.nd = insertelement <4 x float> %i.nc, float %i.mt, i64 3
  %i.ne = shufflevector <4 x float> %i.nc, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 2, i32 2, i32 poison, i32 7>
  %i.nf = insertelement <4 x float> %i.ne, float %i.lv, i64 2
  %i.ng = fmul <4 x float> %i.nd, %i.nf
  store <4 x float> %i.ng, ptr %i.li, align 4, !tbaa !52
  %i.nh = add nuw nsw i64 %.0127.i, 1             ; 2 uses
  %exitcond.not.i170 = icmp eq i64 %i.nh, %i.a
  br i1 %exitcond.not.i170, label %_ZN7meshoptL19computeFaceTangentsEPNS_7TangentEmPKjPKfmS5_m.exit, label %bb.q, !llvm.loop !29

_ZN7meshoptL19computeFaceTangentsEPNS_7TangentEmPKjPKfmS5_m.exit: ; preds = %bb.t, %bb.p
  %i.ni = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !49
  %i.nj = invoke noundef ptr %i.ni(i64 noundef %i.ei)
          to label %_ZN17meshopt_Allocator8allocateIjEEPT_m.exit173 unwind label %bb.x, !inline_history !18 ; 22 uses

_ZN17meshopt_Allocator8allocateIjEEPT_m.exit173:  ; preds = %_ZN7meshoptL19computeFaceTangentsEPNS_7TangentEmPKjPKfmS5_m.exit
  %i.nk = load i64, ptr %i.g, align 8, !tbaa !14  ; 4 uses
  %i.nl = add nuw nsw i64 %i.nk, 1                ; 2 uses
  store i64 %i.nl, ptr %i.g, align 8, !tbaa !14
  %i.nm = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %i.nk
  store ptr %i.nj, ptr %i.nm, align 8, !tbaa !15
  br i1 %.not88.i, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN17meshopt_Allocator8allocateIjEEPT_m.exit173
  %min.iters.check = icmp ult i64 %2, 8
  br i1 %min.iters.check, label %.lr.ph.preheader362, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %2, -8                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.nn = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %index ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 16
  store <4 x i32> %vec.ind, ptr %i.nn, align 4, !tbaa !50
  store <4 x i32> %step.add, ptr %i.no, align 4, !tbaa !50
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.np = icmp eq i64 %index.next, %n.vec
  br i1 %i.np, label %middle.block, label %vector.body, !llvm.loop !30

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader362

.lr.ph.preheader362:                              ; preds = %.lr.ph.preheader, %middle.block
  %.0133217.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %_ZN17meshopt_Allocator8allocateIjEEPT_m.exit173
  %i.nq = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !49
  %i.nr = icmp ugt i64 %2, -4611686018427387905
  %i.ns = shl nuw i64 %i.a, 2
  %i.nt = select i1 %i.nr, i64 -1, i64 %i.ns
  %i.nu = invoke noundef ptr %i.nq(i64 noundef %i.nt)
          to label %bb.y unwind label %bb.z, !inline_history !18 ; 15 uses

bb.u:                                             ; preds = %._crit_edge.i, %_ZN7meshoptL12hashBuckets4Em.exit.i, %bb.a
  %i.nv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.v:                                             ; preds = %.noexc164, %bb.k
  %i.nw = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.w:                                             ; preds = %.loopexit
  %i.nx = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.x:                                             ; preds = %_ZN7meshoptL19computeFaceTangentsEPNS_7TangentEmPKjPKfmS5_m.exit
  %i.ny = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

.lr.ph:                                           ; preds = %.lr.ph.preheader362, %.lr.ph
  %.0133217 = phi i64 [ %i.ob, %.lr.ph ], [ %.0133217.ph, %.lr.ph.preheader362 ] ; 3 uses
  %i.nz = trunc i64 %.0133217 to i32
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %.0133217
  store i32 %i.nz, ptr %i.oa, align 4, !tbaa !50
  %i.ob = add nuw i64 %.0133217, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ob, %2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !31

bb.y:                                             ; preds = %._crit_edge
  %i.oc = add nuw nsw i64 %i.nk, 2                ; 2 uses
  store i64 %i.oc, ptr %i.g, align 8, !tbaa !14
  %i.od = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %i.nl
  store ptr %i.nu, ptr %i.od, align 8, !tbaa !15
  %i.oe = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !49
  %i.of = invoke noundef ptr %i.oe(i64 noundef %i.a)
          to label %_ZN17meshopt_Allocator8allocateIhEEPT_m.exit unwind label %bb.aa, !inline_history !32 ; 13 uses

_ZN17meshopt_Allocator8allocateIhEEPT_m.exit:     ; preds = %bb.y
  %i.og = add nuw nsw i64 %i.nk, 3
  store i64 %i.og, ptr %i.g, align 8, !tbaa !14
  %i.oh = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %i.oc
  store ptr %i.of, ptr %i.oh, align 8, !tbaa !15
  br i1 %.not90.i, label %.preheader208, label %.lr.ph219.preheader

.lr.ph219.preheader:                              ; preds = %_ZN17meshopt_Allocator8allocateIhEEPT_m.exit
  %min.iters.check327 = icmp ult i64 %2, 51
  br i1 %min.iters.check327, label %.lr.ph219.preheader361, label %vector.memcheck

.lr.ph219.preheader361:                           ; preds = %vector.body337, %vector.memcheck, %.lr.ph219.preheader
  %.0132218.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph219.preheader ], [ %n.vec336, %vector.body337 ] ; 8 uses
  %i.oi = sub i64 %i.a, %.0132218.ph
  %.neg = add i64 %.0132218.ph, 1
  %xtraiter378 = and i64 %i.oi, 1
  %lcmp.mod379.not = icmp eq i64 %xtraiter378, 0
  br i1 %lcmp.mod379.not, label %.lr.ph219.prol.loopexit, label %.lr.ph219.prol

.lr.ph219.prol:                                   ; preds = %.lr.ph219.preheader361
  %i.oj = trunc i64 %.0132218.ph to i32
  %i.ok = getelementptr inbounds nuw [4 x i8], ptr %i.nu, i64 %.0132218.ph
  store i32 %i.oj, ptr %i.ok, align 4, !tbaa !50
  %i.ol = getelementptr inbounds nuw [16 x i8], ptr %i.jg, i64 %.0132218.ph
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 12
  %i.on = load float, ptr %i.om, align 4, !tbaa !57 ; 2 uses
  %i.oo = fcmp ogt float %i.on, 0.000000e+00
  %i.op = zext i1 %i.oo to i8
  %i.oq = fcmp olt float %i.on, 0.000000e+00
  %i.or = select i1 %i.oq, i8 2, i8 0
  %i.os = or disjoint i8 %i.or, %i.op
  %i.ot = getelementptr inbounds nuw i8, ptr %i.of, i64 %.0132218.ph
  store i8 %i.os, ptr %i.ot, align 1, !tbaa !58
  %i.ou = add nuw nsw i64 %.0132218.ph, 1
  br label %.lr.ph219.prol.loopexit

.lr.ph219.prol.loopexit:                          ; preds = %.lr.ph219.prol, %.lr.ph219.preheader361
  %.0132218.unr = phi i64 [ %.0132218.ph, %.lr.ph219.preheader361 ], [ %i.ou, %.lr.ph219.prol ]
  %i.ov = icmp eq i64 %i.a, %.neg
  br i1 %i.ov, label %.preheader208, label %.lr.ph219

vector.memcheck:                                  ; preds = %.lr.ph219.preheader
  %i.ow = shl i64 %i.a, 2
  %i.ox = getelementptr i8, ptr %i.nu, i64 %i.ow  ; 2 uses
  %i.oy = getelementptr i8, ptr %i.of, i64 %i.a   ; 2 uses
  %i.oz = getelementptr i8, ptr %i.jg, i64 12     ; 2 uses
  %i.pa = shl i64 %i.a, 4
  %i.pb = getelementptr i8, ptr %i.jg, i64 %i.pa  ; 2 uses
  %bound0 = icmp ult ptr %i.nu, %i.oy
  %bound1 = icmp ult ptr %i.of, %i.ox
  %found.conflict = and i1 %bound0, %bound1
  %bound0328 = icmp ult ptr %i.nu, %i.pb
  %bound1329 = icmp ult ptr %i.oz, %i.ox
  %found.conflict330 = and i1 %bound0328, %bound1329
  %conflict.rdx = or i1 %found.conflict, %found.conflict330
  %bound0331 = icmp ult ptr %i.of, %i.pb
  %bound1332 = icmp ult ptr %i.oz, %i.oy
  %found.conflict333 = and i1 %bound0331, %bound1332
  %conflict.rdx334 = or i1 %conflict.rdx, %found.conflict333
  br i1 %conflict.rdx334, label %.lr.ph219.preheader361, label %vector.ph335

vector.ph335:                                     ; preds = %vector.memcheck
  %i.pc = and i64 %i.a, 3                         ; 2 uses
  %i.pd = icmp eq i64 %i.pc, 0
  %i.pe = select i1 %i.pd, i64 4, i64 %i.pc
  %n.vec336 = sub nsw i64 %i.a, %i.pe             ; 2 uses
  br label %vector.body337

vector.body337:                                   ; preds = %vector.body337, %vector.ph335
  %index338 = phi i64 [ 0, %vector.ph335 ], [ %index.next340, %vector.body337 ] ; 7 uses
  %vec.ind339 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph335 ], [ %vec.ind.next341, %vector.body337 ] ; 2 uses
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr %i.nu, i64 %index338
  store <4 x i32> %vec.ind339, ptr %i.pf, align 4, !tbaa !50, !alias.scope !59, !noalias !60
  %i.pg = getelementptr inbounds nuw [16 x i8], ptr %i.jg, i64 %index338
  %i.ph = getelementptr inbounds nuw [16 x i8], ptr %i.jg, i64 %index338
  %i.pi = getelementptr inbounds nuw [16 x i8], ptr %i.jg, i64 %index338
  %i.pj = getelementptr inbounds nuw [16 x i8], ptr %i.jg, i64 %index338
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pg, i64 12
  %i.pl = getelementptr inbounds nuw i8, ptr %i.ph, i64 28
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pi, i64 44
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pj, i64 60
  %i.po = load float, ptr %i.pk, align 4, !tbaa !57, !alias.scope !61
  %i.pp = load float, ptr %i.pl, align 4, !tbaa !57, !alias.scope !61
  %i.pq = load float, ptr %i.pm, align 4, !tbaa !57, !alias.scope !61
  %i.pr = load float, ptr %i.pn, align 4, !tbaa !57, !alias.scope !61
  %i.ps = insertelement <4 x float> poison, float %i.po, i64 0
  %i.pt = insertelement <4 x float> %i.ps, float %i.pp, i64 1
  %i.pu = insertelement <4 x float> %i.pt, float %i.pq, i64 2
  %i.pv = insertelement <4 x float> %i.pu, float %i.pr, i64 3 ; 2 uses
  %i.pw = fcmp ogt <4 x float> %i.pv, zeroinitializer
  %i.px = zext <4 x i1> %i.pw to <4 x i8>
  %i.py = fcmp olt <4 x float> %i.pv, zeroinitializer
  %i.pz = select <4 x i1> %i.py, <4 x i8> splat (i8 2), <4 x i8> zeroinitializer
  %i.qa = or disjoint <4 x i8> %i.pz, %i.px
  %i.qb = getelementptr inbounds nuw i8, ptr %i.of, i64 %index338
  store <4 x i8> %i.qa, ptr %i.qb, align 1, !tbaa !58, !alias.scope !62, !noalias !61
  %index.next340 = add nuw i64 %index338, 4       ; 2 uses
  %vec.ind.next341 = add <4 x i32> %vec.ind339, splat (i32 4)
  %i.qc = icmp eq i64 %index.next340, %n.vec336
  br i1 %i.qc, label %.lr.ph219.preheader361, label %vector.body337, !llvm.loop !37

.preheader208:                                    ; preds = %.lr.ph219.prol.loopexit, %.lr.ph219, %_ZN17meshopt_Allocator8allocateIhEEPT_m.exit
  br i1 %.not.i, label %.preheader207, label %.lr.ph221

.lr.ph221:                                        ; preds = %.preheader208
  %.not.i177 = icmp eq ptr %1, null               ; 2 uses
  br label %bb.ab

bb.z:                                             ; preds = %._crit_edge
  %i.qd = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.aa:                                            ; preds = %bb.y
  %i.qe = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

.lr.ph219:                                        ; preds = %.lr.ph219.prol.loopexit, %.lr.ph219
  %.0132218 = phi i64 [ %i.rc, %.lr.ph219 ], [ %.0132218.unr, %.lr.ph219.prol.loopexit ] ; 6 uses
  %i.qf = trunc i64 %.0132218 to i32
  %i.qg = getelementptr inbounds nuw [4 x i8], ptr %i.nu, i64 %.0132218
  store i32 %i.qf, ptr %i.qg, align 4, !tbaa !50
  %i.qh = getelementptr inbounds nuw [16 x i8], ptr %i.jg, i64 %.0132218
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 12
  %i.qj = load float, ptr %i.qi, align 4, !tbaa !57 ; 2 uses
  %i.qk = fcmp ogt float %i.qj, 0.000000e+00
  %i.ql = zext i1 %i.qk to i8
  %i.qm = fcmp olt float %i.qj, 0.000000e+00
  %i.qn = select i1 %i.qm, i8 2, i8 0
  %i.qo = or disjoint i8 %i.qn, %i.ql
  %i.qp = getelementptr inbounds nuw i8, ptr %i.of, i64 %.0132218
  store i8 %i.qo, ptr %i.qp, align 1, !tbaa !58
  %i.qq = add nuw nsw i64 %.0132218, 1            ; 4 uses
  %i.qr = trunc i64 %i.qq to i32
  %i.qs = getelementptr inbounds nuw [4 x i8], ptr %i.nu, i64 %i.qq
  store i32 %i.qr, ptr %i.qs, align 4, !tbaa !50
  %i.qt = getelementptr inbounds nuw [16 x i8], ptr %i.jg, i64 %i.qq
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 12
  %i.qv = load float, ptr %i.qu, align 4, !tbaa !57 ; 2 uses
  %i.qw = fcmp ogt float %i.qv, 0.000000e+00
  %i.qx = zext i1 %i.qw to i8
  %i.qy = fcmp olt float %i.qv, 0.000000e+00
  %i.qz = select i1 %i.qy, i8 2, i8 0
  %i.ra = or disjoint i8 %i.qz, %i.qx
  %i.rb = getelementptr inbounds nuw i8, ptr %i.of, i64 %i.qq
  store i8 %i.ra, ptr %i.rb, align 1, !tbaa !58
  %i.rc = add nuw nsw i64 %.0132218, 2            ; 2 uses
  %exitcond247.not.1 = icmp eq i64 %i.rc, %i.a
  br i1 %exitcond247.not.1, label %.preheader208, label %.lr.ph219, !llvm.loop !38

.preheader207:                                    ; preds = %_ZN7meshoptL18mergeTangentGroupsEPjS0_PhPKjmS3_S3_.exit, %.preheader208
  br i1 %.not88.i, label %._crit_edge231, label %.lr.ph223.preheader

.lr.ph223.preheader:                              ; preds = %.preheader207
  %i.rd = add i64 %2, -1                          ; 2 uses
  %xtraiter380 = and i64 %2, 1
  %i.re = icmp eq i64 %i.rd, 0
  br i1 %i.re, label %.lr.ph223.epil.preheader, label %.lr.ph223.preheader.new

.lr.ph223.preheader.new:                          ; preds = %.lr.ph223.preheader
  %unroll_iter384 = and i64 %2, -2
  br label %.lr.ph223

bb.ab:                                            ; preds = %.lr.ph221, %_ZN7meshoptL18mergeTangentGroupsEPjS0_PhPKjmS3_S3_.exit
  %.0131220 = phi i64 [ 0, %.lr.ph221 ], [ %i.rf, %_ZN7meshoptL18mergeTangentGroupsEPjS0_PhPKjmS3_S3_.exit ] ; 2 uses
  %i.rf = add nuw i64 %.0131220, 1                ; 3 uses
  %i.rg = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %i.rf
  %12 = load i32, ptr %i.rg, align 4, !tbaa !50   ; 2 uses
  %13 = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %.0131220
  %i.rh = load i32, ptr %13, align 4, !tbaa !50   ; 3 uses
  %.not152 = icmp eq i32 %12, %i.rh
  br i1 %.not152, label %_ZN7meshoptL18mergeTangentGroupsEPjS0_PhPKjmS3_S3_.exit, label %.lr.ph134.i

.lr.ph134.i:                                      ; preds = %bb.ab
  %i.ri = zext i32 %i.rh to i64
  %i.rj = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.ri ; 2 uses
  %i.rk = sub i32 %12, %i.rh
  %i.rl = zext i32 %i.rk to i64                   ; 3 uses
  br label %bb.ac

.loopexit.i:                                      ; preds = %.critedge.i, %.thread.i
  %exitcond139.not.i = icmp eq i64 %i.sg, %i.rl
  br i1 %exitcond139.not.i, label %_ZN7meshoptL18mergeTangentGroupsEPjS0_PhPKjmS3_S3_.exit, label %bb.ac, !llvm.loop !39

bb.ac:                                            ; preds = %.loopexit.i, %.lr.ph134.i
  %.090133.i = phi i64 [ 0, %.lr.ph134.i ], [ %i.sg, %.loopexit.i ] ; 2 uses
  %i.rm = getelementptr inbounds nuw [4 x i8], ptr %i.rj, i64 %.090133.i ; 2 uses
  %i.rn = load i32, ptr %i.rm, align 4, !tbaa !50 ; 2 uses
  %i.ro = lshr i32 %i.rn, 2                       ; 4 uses
  %i.rp = mul nuw i32 %i.ro, 3                    ; 3 uses
  %i.rq = and i32 %i.rn, 3
  %i.rr = zext nneg i32 %i.rq to i64
  %i.rs = getelementptr inbounds nuw [4 x i8], ptr @_ZZN7meshoptL23accumulateTangentGroupsEPfPKjS2_mS2_PKNS_7TangentEPKfmS7_mjE4next, i64 %i.rr ; 2 uses
  %i.rt = load i32, ptr %i.rs, align 4, !tbaa !50
  %i.ru = add i32 %i.rp, %i.rt                    ; 2 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %i.rs, i64 4
  %i.rw = load i32, ptr %i.rv, align 4, !tbaa !50
  %i.rx = add i32 %i.rp, %i.rw                    ; 2 uses
  br i1 %.not.i177, label %.thread.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ry = zext i32 %i.ru to i64
  %i.rz = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ry
  %i.sa = load i32, ptr %i.rz, align 4, !tbaa !50
  %i.sb = zext i32 %i.rx to i64
  %i.sc = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.sb
  %i.sd = load i32, ptr %i.sc, align 4, !tbaa !50
  br label %.thread.i

.thread.i:                                        ; preds = %bb.ad, %bb.ac
  %.pn.pn.in.i = phi i32 [ %i.sa, %bb.ad ], [ %i.ru, %bb.ac ]
  %.pn98.in.i = phi i32 [ %i.sd, %bb.ad ], [ %i.rx, %bb.ac ]
  %.pn.pn.i = zext i32 %.pn.pn.in.i to i64
  %.in128.i = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.pn.pn.i
  %i.se = load i32, ptr %.in128.i, align 4, !tbaa !50
  %.pn98.i = zext i32 %.pn98.in.i to i64
  %.in97.i = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.pn98.i
  %i.sf = load i32, ptr %.in97.i, align 4, !tbaa !50
  %i.sg = add nuw nsw i64 %.090133.i, 1           ; 4 uses
  %i.sh = icmp samesign ult i64 %i.sg, %i.rl
  br i1 %i.sh, label %.lr.ph.i179, label %.loopexit.i

.lr.ph.i179:                                      ; preds = %.thread.i
  %i.si = zext nneg i32 %i.ro to i64              ; 2 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %i.of, i64 %i.si
  %i.sk = getelementptr inbounds nuw [4 x i8], ptr %i.nu, i64 %i.si ; 2 uses
  br label %bb.ae

bb.ae:                                            ; preds = %.critedge.i, %.lr.ph.i179
  %.0132.i = phi i64 [ %i.sg, %.lr.ph.i179 ], [ %i.vn, %.critedge.i ] ; 2 uses
  %i.sl = getelementptr inbounds nuw [4 x i8], ptr %i.rj, i64 %.0132.i ; 2 uses
  %i.sm = load i32, ptr %i.sl, align 4, !tbaa !50 ; 2 uses
  %i.sn = lshr i32 %i.sm, 2                       ; 4 uses
  %i.so = mul nuw i32 %i.sn, 3                    ; 3 uses
  %i.sp = and i32 %i.sm, 3
  %i.sq = zext nneg i32 %i.sp to i64
  %i.sr = getelementptr inbounds nuw [4 x i8], ptr @_ZZN7meshoptL23accumulateTangentGroupsEPfPKjS2_mS2_PKNS_7TangentEPKfmS7_mjE4next, i64 %i.sq ; 2 uses
  %i.ss = load i32, ptr %i.sr, align 4, !tbaa !50
  %i.st = add i32 %i.so, %i.ss                    ; 2 uses
  %i.su = getelementptr inbounds nuw i8, ptr %i.sr, i64 4
  %i.sv = load i32, ptr %i.su, align 4, !tbaa !50
  %i.sw = add i32 %i.so, %i.sv                    ; 2 uses
  br i1 %.not.i177, label %.thread124.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.sx = zext i32 %i.st to i64
  %i.sy = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.sx
  %i.sz = load i32, ptr %i.sy, align 4, !tbaa !50
  %i.ta = zext i32 %i.sw to i64
  %i.tb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ta
  %i.tc = load i32, ptr %i.tb, align 4, !tbaa !50
  br label %.thread124.i

.thread124.i:                                     ; preds = %bb.af, %bb.ae
  %.pn100.pn.in.i = phi i32 [ %i.sz, %bb.af ], [ %i.st, %bb.ae ]
  %.pn102.in.i = phi i32 [ %i.tc, %bb.af ], [ %i.sw, %bb.ae ]
  %.pn100.pn.i = zext i32 %.pn100.pn.in.i to i64
  %.in.i180 = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.pn100.pn.i
  %i.td = load i32, ptr %.in.i180, align 4, !tbaa !50
  %i.te = icmp eq i32 %i.td, %i.sf
  br i1 %i.te, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.thread124.i
  %.pn102.i = zext i32 %.pn102.in.i to i64
  %.in101.i = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.pn102.i
  %i.tf = load i32, ptr %.in101.i, align 4, !tbaa !50
  %i.tg = icmp eq i32 %i.tf, %i.se
  br i1 %i.tg, label %bb.ah, label %.critedge.i

bb.ah:                                            ; preds = %bb.ag, %.thread124.i
  %i.th = load i8, ptr %i.sj, align 1, !tbaa !58
  %i.ti = zext i8 %i.th to i32                    ; 2 uses
  %i.tj = zext nneg i32 %i.sn to i64              ; 2 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %i.of, i64 %i.tj
  %i.tl = load i8, ptr %i.tk, align 1, !tbaa !58
  %i.tm = zext i8 %i.tl to i32                    ; 2 uses
  %i.tn = or i32 %i.tm, %i.ti
  %.not103.i = icmp eq i32 %i.tn, 3
  br i1 %.not103.i, label %.critedge.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.to = and i32 %i.tm, %i.ti
  %i.tp = icmp eq i32 %i.to, 0
  br i1 %i.tp, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %bb.ai
  %i.tq = load i32, ptr %i.sk, align 4, !tbaa !50 ; 2 uses
  %.not11.i.i = icmp eq i32 %i.ro, %i.tq
  br i1 %.not11.i.i, label %_ZN7meshoptL7follow2EPjj.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.aj, %.lr.ph.i.i
  %i.tr = phi i32 [ %i.tv, %.lr.ph.i.i ], [ %i.tq, %bb.aj ] ; 3 uses
  %i.ts = phi ptr [ %i.tu, %.lr.ph.i.i ], [ %i.sk, %bb.aj ]
  %i.tt = zext i32 %i.tr to i64
  %i.tu = getelementptr inbounds nuw [4 x i8], ptr %i.nu, i64 %i.tt ; 2 uses
  %i.tv = load i32, ptr %i.tu, align 4, !tbaa !50 ; 3 uses
  store i32 %i.tv, ptr %i.ts, align 4, !tbaa !50
  %.not.i.i182 = icmp eq i32 %i.tr, %i.tv
  br i1 %.not.i.i182, label %_ZN7meshoptL7follow2EPjj.exit.i, label %.lr.ph.i.i, !llvm.loop !40

_ZN7meshoptL7follow2EPjj.exit.i:                  ; preds = %.lr.ph.i.i, %bb.aj
  %.0.lcssa.i.i = phi i32 [ %i.ro, %bb.aj ], [ %i.tr, %.lr.ph.i.i ] ; 3 uses
  %i.tw = getelementptr inbounds nuw [4 x i8], ptr %i.nu, i64 %i.tj ; 2 uses
  %i.tx = load i32, ptr %i.tw, align 4, !tbaa !50 ; 2 uses
  %.not11.i106.i = icmp eq i32 %i.sn, %i.tx
  br i1 %.not11.i106.i, label %_ZN7meshoptL7follow2EPjj.exit110.i, label %.lr.ph.i107.i

.lr.ph.i107.i:                                    ; preds = %_ZN7meshoptL7follow2EPjj.exit.i, %.lr.ph.i107.i
  %i.ty = phi i32 [ %i.uc, %.lr.ph.i107.i ], [ %i.tx, %_ZN7meshoptL7follow2EPjj.exit.i ] ; 3 uses
  %i.tz = phi ptr [ %i.ub, %.lr.ph.i107.i ], [ %i.tw, %_ZN7meshoptL7follow2EPjj.exit.i ]
  %i.ua = zext i32 %i.ty to i64
  %i.ub = getelementptr inbounds nuw [4 x i8], ptr %i.nu, i64 %i.ua ; 2 uses
  %i.uc = load i32, ptr %i.ub, align 4, !tbaa !50 ; 3 uses
  store i32 %i.uc, ptr %i.tz, align 4, !tbaa !50
  %.not.i108.i = icmp eq i32 %i.ty, %i.uc
  br i1 %.not.i108.i, label %_ZN7meshoptL7follow2EPjj.exit110.i, label %.lr.ph.i107.i, !llvm.loop !40

_ZN7meshoptL7follow2EPjj.exit110.i:               ; preds = %.lr.ph.i107.i, %_ZN7meshoptL7follow2EPjj.exit.i
  %.0.lcssa.i109.i = phi i32 [ %i.sn, %_ZN7meshoptL7follow2EPjj.exit.i ], [ %i.ty, %.lr.ph.i107.i ] ; 2 uses
  %.not104.i = icmp eq i32 %.0.lcssa.i.i, %.0.lcssa.i109.i
  br i1 %.not104.i, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %_ZN7meshoptL7follow2EPjj.exit110.i
  %i.ud = zext i32 %.0.lcssa.i.i to i64
  %i.ue = getelementptr inbounds nuw i8, ptr %i.of, i64 %i.ud ; 3 uses
  %i.uf = load i8, ptr %i.ue, align 1, !tbaa !58
  %i.ug = zext i32 %.0.lcssa.i109.i to i64        ; 2 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %i.of, i64 %i.ug ; 2 uses
  %i.ui = load i8, ptr %i.uh, align 1, !tbaa !58
  %i.uj = or i8 %i.ui, %i.uf
  %i.uk = icmp eq i8 %i.uj, 3
  br i1 %i.uk, label %.critedge.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ul = getelementptr inbounds nuw [4 x i8], ptr %i.nu, i64 %i.ug
  store i32 %.0.lcssa.i.i, ptr %i.ul, align 4, !tbaa !50
  %i.um = load i8, ptr %i.uh, align 1, !tbaa !58
  %i.un = load i8, ptr %i.ue, align 1, !tbaa !58
  %i.uo = or i8 %i.un, %i.um
  store i8 %i.uo, ptr %i.ue, align 1, !tbaa !58
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %_ZN7meshoptL7follow2EPjj.exit110.i, %bb.ai
  %i.up = load i32, ptr %i.rm, align 4, !tbaa !50
  %i.uq = and i32 %i.up, 3
  %i.ur = add nuw i32 %i.uq, %i.rp                ; 3 uses
  %i.us = zext i32 %i.ur to i64
  %i.ut = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %i.us ; 2 uses
  %i.uu = load i32, ptr %i.ut, align 4, !tbaa !50 ; 2 uses
  %.not11.i111.i = icmp eq i32 %i.ur, %i.uu
  br i1 %.not11.i111.i, label %_ZN7meshoptL7follow2EPjj.exit115.i, label %.lr.ph.i112.i

.lr.ph.i112.i:                                    ; preds = %bb.am, %.lr.ph.i112.i
  %i.uv = phi i32 [ %i.uz, %.lr.ph.i112.i ], [ %i.uu, %bb.am ] ; 3 uses
  %i.uw = phi ptr [ %i.uy, %.lr.ph.i112.i ], [ %i.ut, %bb.am ]
  %i.ux = zext i32 %i.uv to i64
  %i.uy = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %i.ux ; 2 uses
  %i.uz = load i32, ptr %i.uy, align 4, !tbaa !50 ; 3 uses
  store i32 %i.uz, ptr %i.uw, align 4, !tbaa !50
  %.not.i113.i = icmp eq i32 %i.uv, %i.uz
  br i1 %.not.i113.i, label %_ZN7meshoptL7follow2EPjj.exit115.i, label %.lr.ph.i112.i, !llvm.loop !40

_ZN7meshoptL7follow2EPjj.exit115.i:               ; preds = %.lr.ph.i112.i, %bb.am
  %.0.lcssa.i114.i = phi i32 [ %i.ur, %bb.am ], [ %i.uv, %.lr.ph.i112.i ] ; 2 uses
  %i.va = load i32, ptr %i.sl, align 4, !tbaa !50
  %i.vb = and i32 %i.va, 3
  %i.vc = add nuw i32 %i.vb, %i.so                ; 3 uses
  %i.vd = zext i32 %i.vc to i64
  %i.ve = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %i.vd ; 2 uses
  %i.vf = load i32, ptr %i.ve, align 4, !tbaa !50 ; 2 uses
  %.not11.i116.i = icmp eq i32 %i.vc, %i.vf
  br i1 %.not11.i116.i, label %_ZN7meshoptL7follow2EPjj.exit120.i, label %.lr.ph.i117.i

.lr.ph.i117.i:                                    ; preds = %_ZN7meshoptL7follow2EPjj.exit115.i, %.lr.ph.i117.i
  %i.vg = phi i32 [ %i.vk, %.lr.ph.i117.i ], [ %i.vf, %_ZN7meshoptL7follow2EPjj.exit115.i ] ; 3 uses
  %i.vh = phi ptr [ %i.vj, %.lr.ph.i117.i ], [ %i.ve, %_ZN7meshoptL7follow2EPjj.exit115.i ]
  %i.vi = zext i32 %i.vg to i64
end_hunk_1
