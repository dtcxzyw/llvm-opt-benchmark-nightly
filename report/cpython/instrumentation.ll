inline.NumInlined: 253
inline.NumDeleted: 86
begin_hunk_0_@_PyMonitoring_SetLocalEvents:bb.a
  %i.bl = getelementptr i8, ptr %i.ad, i64 6
  %i.bm = getelementptr i8, ptr %i.ad, i64 5
  %i.bn = getelementptr i8, ptr %i.ad, i64 4
  %i.bo = getelementptr i8, ptr %i.ad, i64 3
  %i.bp = getelementptr i8, ptr %i.ad, i64 2
  %i.bq = trunc i32 %i.ak to i8
  %i.br = xor i8 %i.bq, -1                        ; 11 uses
  %i.bs = and i32 %2, 1
  %i.bt = and i8 %i.al, %i.br
  %i.bu = shl nuw i32 %i.bs, %1
  %i.bv = trunc i32 %i.bu to i8
  %i.bw = or i8 %i.bt, %i.bv
  store i8 %i.bw, ptr %i.ad, align 1, !tbaa !39
  %i.bx = lshr i32 %2, 1
  %i.by = and i32 %i.bx, 1
  %i.bz = extractelement <8 x i8> %i.aq, i64 0
  %i.ca = and i8 %i.bz, %i.br
  %i.cb = shl nuw i32 %i.by, %1
  %i.cc = trunc i32 %i.cb to i8
  %i.cd = or i8 %i.ca, %i.cc
  store i8 %i.cd, ptr %i.ap, align 1, !tbaa !39
  %i.ce = lshr i32 %2, 2
  %i.cf = and i32 %i.ce, 1
  %i.cg = extractelement <8 x i8> %i.aq, i64 1
  %i.ch = and i8 %i.cg, %i.br
  %i.ci = shl nuw i32 %i.cf, %1
  %i.cj = trunc i32 %i.ci to i8
  %i.ck = or i8 %i.ch, %i.cj
  store i8 %i.ck, ptr %i.bp, align 1, !tbaa !39
  %i.cl = lshr i32 %2, 3
  %i.cm = and i32 %i.cl, 1
  %i.cn = extractelement <8 x i8> %i.aq, i64 2
  %i.co = and i8 %i.cn, %i.br
  %i.cp = shl nuw i32 %i.cm, %1
  %i.cq = trunc i32 %i.cp to i8
  %i.cr = or i8 %i.co, %i.cq
  store i8 %i.cr, ptr %i.bo, align 1, !tbaa !39
  %i.cs = lshr i32 %2, 4
  %i.ct = and i32 %i.cs, 1
  %i.cu = extractelement <8 x i8> %i.aq, i64 3
  %i.cv = and i8 %i.cu, %i.br
  %i.cw = shl nuw i32 %i.ct, %1
  %i.cx = trunc i32 %i.cw to i8
  %i.cy = or i8 %i.cv, %i.cx
  store i8 %i.cy, ptr %i.bn, align 1, !tbaa !39
  %i.cz = lshr i32 %2, 5
  %i.da = and i32 %i.cz, 1
  %i.db = extractelement <8 x i8> %i.aq, i64 4
  %i.dc = and i8 %i.db, %i.br
  %i.dd = shl nuw i32 %i.da, %1
  %i.de = trunc i32 %i.dd to i8
  %i.df = or i8 %i.dc, %i.de
  store i8 %i.df, ptr %i.bm, align 1, !tbaa !39
  %i.dg = lshr i32 %2, 6
  %i.dh = and i32 %i.dg, 1
  %i.di = extractelement <8 x i8> %i.aq, i64 5
  %i.dj = and i8 %i.di, %i.br
  %i.dk = shl nuw i32 %i.dh, %1
  %i.dl = trunc i32 %i.dk to i8
  %i.dm = or i8 %i.dj, %i.dl
  store i8 %i.dm, ptr %i.bl, align 1, !tbaa !39
  %i.dn = lshr i32 %2, 7
  %i.do = and i32 %i.dn, 1
  %i.dp = extractelement <8 x i8> %i.aq, i64 6
  %i.dq = and i8 %i.dp, %i.br
  %i.dr = shl nuw i32 %i.do, %1
  %i.ds = trunc i32 %i.dr to i8
  %i.dt = or i8 %i.dq, %i.ds
  store i8 %i.dt, ptr %i.bk, align 1, !tbaa !39
  %i.du = lshr i32 %2, 8
  %i.dv = and i32 %i.du, 1
  %i.dw = extractelement <8 x i8> %i.aq, i64 7
  %i.dx = and i8 %i.dw, %i.br
  %i.dy = shl nuw i32 %i.dv, %1
  %i.dz = trunc i32 %i.dy to i8
  %i.ea = or i8 %i.dx, %i.dz
  store i8 %i.ea, ptr %i.bj, align 1, !tbaa !39
  %i.eb = lshr i32 %2, 9
  %i.ec = and i32 %i.eb, 1
  %i.ed = and i8 %i.ay, %i.br
  %i.ee = shl nuw i32 %i.ec, %1
  %i.ef = trunc i32 %i.ee to i8
  %i.eg = or i8 %i.ed, %i.ef
  store i8 %i.eg, ptr %i.ax, align 1, !tbaa !39
  %i.eh = lshr i32 %2, 10
  %i.ei = and i32 %i.eh, 1
  %i.ej = and i8 %i.bd, %i.br
  %i.ek = shl nuw i32 %i.ei, %1
  %i.el = trunc i32 %i.ek to i8
  %i.em = or i8 %i.ej, %i.el
  store i8 %i.em, ptr %i.bc, align 1, !tbaa !39
  %i.en = tail call fastcc i32 @force_instrument_lock_held(ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  br label %bb.j

bb.j:                                             ; preds = %allocate_instrumentation_data.exit, %check_tool.exit, %bb.i, %bb.h, %bb.b
  %.1 = phi i32 [ -1, %bb.b ], [ -1, %allocate_instrumentation_data.exit ], [ -1, %check_tool.exit ], [ %i.en, %bb.i ], [ 0, %bb.h ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @force_instrument_lock_held(ptr noundef %0, ptr nofree noundef captures(none) %1) unnamed_addr #4 {
bb.a:
  %2 = alloca %struct._line_offsets, align 8      ; 4 uses
  %3 = alloca %struct._line_offsets, align 8      ; 6 uses
  %4 = alloca %struct._Py_LocalMonitors, align 8  ; 7 uses
  %5 = alloca %struct._Py_LocalMonitors, align 8  ; 10 uses
  %i.a = getelementptr i8, ptr %0, i64 16         ; 4 uses
  %.val = load i64, ptr %i.a, align 8, !tbaa !167 ; 12 uses
  %i.b = trunc i64 %.val to i32                   ; 15 uses
  %i.c = getelementptr i8, ptr %0, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !170
  %i.e = and i32 %i.d, 33554432
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %update_instrumentation_data.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 176        ; 81 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !32   ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.i = tail call ptr @PyMem_Malloc(i64 noundef 128) #12 ; 3 uses
  store ptr %i.i, ptr %i.f, align 8, !tbaa !32
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %allocate_instrumentation_data.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.i, i8 0, i64 11, i1 false)
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.l = getelementptr i8, ptr %i.k, i64 11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.l, i8 0, i64 11, i1 false)
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !32   ; 2 uses
  %i.n = getelementptr i8, ptr %i.m, i64 24
  store ptr null, ptr %i.n, align 8, !tbaa !57
  %i.o = getelementptr i8, ptr %i.m, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, i8 0, i64 32, i1 false)
  %.pre.i = load ptr, ptr %i.f, align 8, !tbaa !32
  br label %bb.e

allocate_instrumentation_data.exit.i:             ; preds = %bb.c
  %i.p = tail call ptr @PyErr_NoMemory() #12      ; 0 uses
  br label %update_instrumentation_data.exit.thread

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.q = phi ptr [ %.pre.i, %bb.d ], [ %i.g, %bb.b ] ; 42 uses
  %i.r = getelementptr i8, ptr %1, i64 224776
  %i.s = getelementptr i8, ptr %i.q, i64 32
  %i.t = load i64, ptr %i.s, align 8, !tbaa !169
  %i.u = load i64, ptr %i.r, align 8, !tbaa !169
  %.not98.i = icmp eq i64 %i.t, %i.u
  br i1 %.not98.i, label %.loopexit136.i, label %.preheader135.i

bb.f:                                             ; preds = %.loopexit136.7.i
  %.sroa.0.1.extract.shift.i = lshr i64 %6, 8
  %.sroa.0.1.extract.trunc.i = trunc i64 %.sroa.0.1.extract.shift.i to i8
  %i.v = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %.sroa.0.1.extract.trunc.i)
  %i.w = icmp samesign ugt i8 %i.v, 1
  br i1 %i.w, label %multiple_tools.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.sroa.0.2.extract.shift.i = lshr i64 %6, 16
  %.sroa.0.2.extract.trunc.i = trunc i64 %.sroa.0.2.extract.shift.i to i8
  %i.x = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %.sroa.0.2.extract.trunc.i)
  %i.y = icmp samesign ugt i8 %i.x, 1
  br i1 %i.y, label %multiple_tools.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.0.3.extract.shift.i = lshr i64 %6, 24
  %.sroa.0.3.extract.trunc.i = trunc i64 %.sroa.0.3.extract.shift.i to i8
  %i.z = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %.sroa.0.3.extract.trunc.i)
  %i.aa = icmp samesign ugt i8 %i.z, 1
  br i1 %i.aa, label %multiple_tools.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.sroa.0.4.extract.shift.i = lshr i64 %6, 32
  %.sroa.0.4.extract.trunc.i = trunc i64 %.sroa.0.4.extract.shift.i to i8
  %i.ab = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %.sroa.0.4.extract.trunc.i)
  %i.ac = icmp samesign ugt i8 %i.ab, 1
  br i1 %i.ac, label %multiple_tools.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.sroa.0.5.extract.shift121.i = lshr i64 %6, 40
  %.sroa.0.5.extract.trunc122.i = trunc i64 %.sroa.0.5.extract.shift121.i to i8
  %i.ad = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %.sroa.0.5.extract.trunc122.i)
  %i.ae = icmp samesign ugt i8 %i.ad, 1
  br i1 %i.ae, label %multiple_tools.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.sroa.0.6.extract.shift124.i = lshr i64 %6, 48
  %.sroa.0.6.extract.trunc125.i = trunc i64 %.sroa.0.6.extract.shift124.i to i8
  %i.af = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %.sroa.0.6.extract.trunc125.i)
  %i.ag = icmp samesign ugt i8 %i.af, 1
  br i1 %i.ag, label %multiple_tools.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.sroa.0.7.extract.shift.i = lshr i64 %6, 56
  %.sroa.0.7.extract.trunc.i = trunc nuw i64 %.sroa.0.7.extract.shift.i to i8
  %i.ah = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %.sroa.0.7.extract.trunc.i)
  %i.ai = icmp samesign ugt i8 %i.ah, 1
  %i.aj = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %7)
  %i.ak = icmp samesign ugt i8 %i.aj, 1
  %or.cond130.i = select i1 %i.ai, i1 true, i1 %i.ak
  %i.al = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %i.fq)
  %i.am = icmp samesign ugt i8 %i.al, 1
  %or.cond132.i = select i1 %or.cond130.i, i1 true, i1 %i.am
  br i1 %or.cond132.i, label %multiple_tools.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.sroa.14.10.extract.shift.i = lshr i24 %.sroa.12.8.extract.shift38.i.i, 16
  %.sroa.14.10.extract.trunc.i = trunc nuw i24 %.sroa.14.10.extract.shift.i to i8
  %i.an = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %.sroa.14.10.extract.trunc.i)
  %i.ao = icmp samesign ugt i8 %i.an, 1
  br label %multiple_tools.exit.i

multiple_tools.exit.i:                            ; preds = %.loopexit136.7.i, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %.lcssa.i.i = phi i1 [ true, %bb.j ], [ true, %.loopexit136.7.i ], [ true, %bb.f ], [ %i.ao, %bb.m ], [ true, %bb.g ], [ true, %bb.k ], [ true, %bb.h ], [ true, %bb.l ], [ true, %bb.i ] ; 3 uses
  %i.ap = getelementptr i8, ptr %i.fl, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !57
  %i.ar = icmp eq ptr %i.aq, null
  %or.cond.i = select i1 %i.ar, i1 %.lcssa.i.i, i1 false
  br i1 %or.cond.i, label %bb.n, label %initialize_tools.exit.i

.preheader135.i:                                  ; preds = %bb.e
  %i.as = load <8 x i8>, ptr %i.q, align 8, !tbaa !39
  %i.at = and <8 x i8> %i.as, splat (i8 -2)
  store <8 x i8> %i.at, ptr %i.q, align 8, !tbaa !39
  %i.au = getelementptr i8, ptr %i.q, i64 8       ; 2 uses
  %i.av = load i8, ptr %i.au, align 8, !tbaa !39
  %i.aw = and i8 %i.av, -2
  store i8 %i.aw, ptr %i.au, align 8, !tbaa !39
  %i.ax = getelementptr i8, ptr %i.q, i64 9       ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !39
  %i.az = and i8 %i.ay, -2
  store i8 %i.az, ptr %i.ax, align 1, !tbaa !39
  %i.ba = getelementptr i8, ptr %i.q, i64 10      ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 2, !tbaa !39
  %i.bc = and i8 %i.bb, -2
  store i8 %i.bc, ptr %i.ba, align 2, !tbaa !39
  %.pre175.i = load ptr, ptr %i.f, align 8, !tbaa !32
  br label %.loopexit136.i

.loopexit136.i:                                   ; preds = %.preheader135.i, %bb.e
  %i.bd = phi ptr [ %.pre175.i, %.preheader135.i ], [ %i.q, %bb.e ] ; 2 uses
  %i.be = getelementptr i8, ptr %i.bd, i64 40
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !169
  %i.bg = getelementptr i8, ptr %1, i64 224784
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !169
  %.not98.1.i = icmp eq i64 %i.bf, %i.bh
  br i1 %.not98.1.i, label %.loopexit136.1.i, label %.preheader135.1.i

.preheader135.1.i:                                ; preds = %.loopexit136.i
  %i.bi = load <8 x i8>, ptr %i.q, align 8, !tbaa !39
  %i.bj = and <8 x i8> %i.bi, splat (i8 -3)
  store <8 x i8> %i.bj, ptr %i.q, align 8, !tbaa !39
  %i.bk = getelementptr i8, ptr %i.q, i64 8       ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 8, !tbaa !39
  %i.bm = and i8 %i.bl, -3
  store i8 %i.bm, ptr %i.bk, align 8, !tbaa !39
  %i.bn = getelementptr i8, ptr %i.q, i64 9       ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !39
  %i.bp = and i8 %i.bo, -3
  store i8 %i.bp, ptr %i.bn, align 1, !tbaa !39
  %i.bq = getelementptr i8, ptr %i.q, i64 10      ; 2 uses
  %i.br = load i8, ptr %i.bq, align 2, !tbaa !39
  %i.bs = and i8 %i.br, -3
  store i8 %i.bs, ptr %i.bq, align 2, !tbaa !39
  %.pre176.i = load ptr, ptr %i.f, align 8, !tbaa !32
  br label %.loopexit136.1.i

.loopexit136.1.i:                                 ; preds = %.preheader135.1.i, %.loopexit136.i
  %i.bt = phi ptr [ %.pre176.i, %.preheader135.1.i ], [ %i.bd, %.loopexit136.i ] ; 2 uses
  %i.bu = getelementptr i8, ptr %i.bt, i64 48
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !169
  %i.bw = getelementptr i8, ptr %1, i64 224792
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !169
  %.not98.2.i = icmp eq i64 %i.bv, %i.bx
  br i1 %.not98.2.i, label %.loopexit136.2.i, label %.preheader135.2.i

.preheader135.2.i:                                ; preds = %.loopexit136.1.i
  %i.by = load <8 x i8>, ptr %i.q, align 8, !tbaa !39
  %i.bz = and <8 x i8> %i.by, splat (i8 -5)
  store <8 x i8> %i.bz, ptr %i.q, align 8, !tbaa !39
  %i.ca = getelementptr i8, ptr %i.q, i64 8       ; 2 uses
  %i.cb = load i8, ptr %i.ca, align 8, !tbaa !39
  %i.cc = and i8 %i.cb, -5
  store i8 %i.cc, ptr %i.ca, align 8, !tbaa !39
  %i.cd = getelementptr i8, ptr %i.q, i64 9       ; 2 uses
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !39
  %i.cf = and i8 %i.ce, -5
  store i8 %i.cf, ptr %i.cd, align 1, !tbaa !39
  %i.cg = getelementptr i8, ptr %i.q, i64 10      ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 2, !tbaa !39
  %i.ci = and i8 %i.ch, -5
  store i8 %i.ci, ptr %i.cg, align 2, !tbaa !39
  %.pre177.i = load ptr, ptr %i.f, align 8, !tbaa !32
  br label %.loopexit136.2.i

.loopexit136.2.i:                                 ; preds = %.preheader135.2.i, %.loopexit136.1.i
  %i.cj = phi ptr [ %.pre177.i, %.preheader135.2.i ], [ %i.bt, %.loopexit136.1.i ] ; 2 uses
  %i.ck = getelementptr i8, ptr %i.cj, i64 56
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !169
  %i.cm = getelementptr i8, ptr %1, i64 224800
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !169
  %.not98.3.i = icmp eq i64 %i.cl, %i.cn
  br i1 %.not98.3.i, label %.loopexit136.3.i, label %.preheader135.3.i

.preheader135.3.i:                                ; preds = %.loopexit136.2.i
  %i.co = load <8 x i8>, ptr %i.q, align 8, !tbaa !39
  %i.cp = and <8 x i8> %i.co, splat (i8 -9)
  store <8 x i8> %i.cp, ptr %i.q, align 8, !tbaa !39
  %i.cq = getelementptr i8, ptr %i.q, i64 8       ; 2 uses
  %i.cr = load i8, ptr %i.cq, align 8, !tbaa !39
  %i.cs = and i8 %i.cr, -9
  store i8 %i.cs, ptr %i.cq, align 8, !tbaa !39
  %i.ct = getelementptr i8, ptr %i.q, i64 9       ; 2 uses
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !39
  %i.cv = and i8 %i.cu, -9
  store i8 %i.cv, ptr %i.ct, align 1, !tbaa !39
  %i.cw = getelementptr i8, ptr %i.q, i64 10      ; 2 uses
  %i.cx = load i8, ptr %i.cw, align 2, !tbaa !39
  %i.cy = and i8 %i.cx, -9
  store i8 %i.cy, ptr %i.cw, align 2, !tbaa !39
  %.pre178.i = load ptr, ptr %i.f, align 8, !tbaa !32
  br label %.loopexit136.3.i

.loopexit136.3.i:                                 ; preds = %.preheader135.3.i, %.loopexit136.2.i
  %i.cz = phi ptr [ %.pre178.i, %.preheader135.3.i ], [ %i.cj, %.loopexit136.2.i ] ; 2 uses
  %i.da = getelementptr i8, ptr %i.cz, i64 64
  %i.db = load i64, ptr %i.da, align 8, !tbaa !169
  %i.dc = getelementptr i8, ptr %1, i64 224808
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !169
  %.not98.4.i = icmp eq i64 %i.db, %i.dd
  br i1 %.not98.4.i, label %.loopexit136.4.i, label %.preheader135.4.i

.preheader135.4.i:                                ; preds = %.loopexit136.3.i
  %i.de = load <8 x i8>, ptr %i.q, align 8, !tbaa !39
  %i.df = and <8 x i8> %i.de, splat (i8 -17)
  store <8 x i8> %i.df, ptr %i.q, align 8, !tbaa !39
  %i.dg = getelementptr i8, ptr %i.q, i64 8       ; 2 uses
  %i.dh = load i8, ptr %i.dg, align 8, !tbaa !39
  %i.di = and i8 %i.dh, -17
  store i8 %i.di, ptr %i.dg, align 8, !tbaa !39
  %i.dj = getelementptr i8, ptr %i.q, i64 9       ; 2 uses
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !39
  %i.dl = and i8 %i.dk, -17
  store i8 %i.dl, ptr %i.dj, align 1, !tbaa !39
  %i.dm = getelementptr i8, ptr %i.q, i64 10      ; 2 uses
  %i.dn = load i8, ptr %i.dm, align 2, !tbaa !39
  %i.do = and i8 %i.dn, -17
  store i8 %i.do, ptr %i.dm, align 2, !tbaa !39
  %.pre179.i = load ptr, ptr %i.f, align 8, !tbaa !32
  br label %.loopexit136.4.i

.loopexit136.4.i:                                 ; preds = %.preheader135.4.i, %.loopexit136.3.i
  %i.dp = phi ptr [ %.pre179.i, %.preheader135.4.i ], [ %i.cz, %.loopexit136.3.i ] ; 2 uses
  %i.dq = getelementptr i8, ptr %i.dp, i64 72
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !169
  %i.ds = getelementptr i8, ptr %1, i64 224816
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !169
  %.not98.5.i = icmp eq i64 %i.dr, %i.dt
  br i1 %.not98.5.i, label %.loopexit136.5.i, label %.preheader135.5.i

.preheader135.5.i:                                ; preds = %.loopexit136.4.i
  %i.du = load <8 x i8>, ptr %i.q, align 8, !tbaa !39
  %i.dv = and <8 x i8> %i.du, splat (i8 -33)
  store <8 x i8> %i.dv, ptr %i.q, align 8, !tbaa !39
  %i.dw = getelementptr i8, ptr %i.q, i64 8       ; 2 uses
  %i.dx = load i8, ptr %i.dw, align 8, !tbaa !39
  %i.dy = and i8 %i.dx, -33
  store i8 %i.dy, ptr %i.dw, align 8, !tbaa !39
  %i.dz = getelementptr i8, ptr %i.q, i64 9       ; 2 uses
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !39
  %i.eb = and i8 %i.ea, -33
  store i8 %i.eb, ptr %i.dz, align 1, !tbaa !39
  %i.ec = getelementptr i8, ptr %i.q, i64 10      ; 2 uses
  %i.ed = load i8, ptr %i.ec, align 2, !tbaa !39
  %i.ee = and i8 %i.ed, -33
  store i8 %i.ee, ptr %i.ec, align 2, !tbaa !39
  %.pre180.i = load ptr, ptr %i.f, align 8, !tbaa !32
  br label %.loopexit136.5.i

.loopexit136.5.i:                                 ; preds = %.preheader135.5.i, %.loopexit136.4.i
  %i.ef = phi ptr [ %.pre180.i, %.preheader135.5.i ], [ %i.dp, %.loopexit136.4.i ] ; 2 uses
  %i.eg = getelementptr i8, ptr %i.ef, i64 80
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !169
  %i.ei = getelementptr i8, ptr %1, i64 224824
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !169
  %.not98.6.i = icmp eq i64 %i.eh, %i.ej
  br i1 %.not98.6.i, label %.loopexit136.6.i, label %.preheader135.6.i

.preheader135.6.i:                                ; preds = %.loopexit136.5.i
  %i.ek = load <8 x i8>, ptr %i.q, align 8, !tbaa !39
  %i.el = and <8 x i8> %i.ek, splat (i8 -65)
  store <8 x i8> %i.el, ptr %i.q, align 8, !tbaa !39
  %i.em = getelementptr i8, ptr %i.q, i64 8       ; 2 uses
  %i.en = load i8, ptr %i.em, align 8, !tbaa !39
  %i.eo = and i8 %i.en, -65
  store i8 %i.eo, ptr %i.em, align 8, !tbaa !39
  %i.ep = getelementptr i8, ptr %i.q, i64 9       ; 2 uses
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !39
  %i.er = and i8 %i.eq, -65
  store i8 %i.er, ptr %i.ep, align 1, !tbaa !39
  %i.es = getelementptr i8, ptr %i.q, i64 10      ; 2 uses
  %i.et = load i8, ptr %i.es, align 2, !tbaa !39
  %i.eu = and i8 %i.et, -65
  store i8 %i.eu, ptr %i.es, align 2, !tbaa !39
  %.pre181.i = load ptr, ptr %i.f, align 8, !tbaa !32
  br label %.loopexit136.6.i

.loopexit136.6.i:                                 ; preds = %.preheader135.6.i, %.loopexit136.5.i
  %i.ev = phi ptr [ %.pre181.i, %.preheader135.6.i ], [ %i.ef, %.loopexit136.5.i ] ; 2 uses
  %i.ew = getelementptr i8, ptr %i.ev, i64 88
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !169
  %i.ey = getelementptr i8, ptr %1, i64 224832
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !169
  %.not98.7.i = icmp eq i64 %i.ex, %i.ez
  br i1 %.not98.7.i, label %.loopexit136.7.i, label %.preheader135.7.i

.preheader135.7.i:                                ; preds = %.loopexit136.6.i
  %i.fa = load <8 x i8>, ptr %i.q, align 8, !tbaa !39
  %i.fb = and <8 x i8> %i.fa, splat (i8 127)
  store <8 x i8> %i.fb, ptr %i.q, align 8, !tbaa !39
  %i.fc = getelementptr i8, ptr %i.q, i64 8       ; 2 uses
  %i.fd = load i8, ptr %i.fc, align 8, !tbaa !39
  %i.fe = and i8 %i.fd, 127
  store i8 %i.fe, ptr %i.fc, align 8, !tbaa !39
  %i.ff = getelementptr i8, ptr %i.q, i64 9       ; 2 uses
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !39
  %i.fh = and i8 %i.fg, 127
  store i8 %i.fh, ptr %i.ff, align 1, !tbaa !39
  %i.fi = getelementptr i8, ptr %i.q, i64 10      ; 2 uses
  %i.fj = load i8, ptr %i.fi, align 2, !tbaa !39
  %i.fk = and i8 %i.fj, 127
  store i8 %i.fk, ptr %i.fi, align 2, !tbaa !39
  %.pre182.i = load ptr, ptr %i.f, align 8, !tbaa !32
  br label %.loopexit136.7.i

.loopexit136.7.i:                                 ; preds = %.preheader135.7.i, %.loopexit136.6.i
  %i.fl = phi ptr [ %.pre182.i, %.preheader135.7.i ], [ %i.ev, %.loopexit136.6.i ] ; 4 uses
  %i.fm = getelementptr i8, ptr %1, i64 223456    ; 2 uses
  %i.fn = load i64, ptr %i.fm, align 8
  %i.fo = getelementptr i8, ptr %1, i64 223464    ; 2 uses
  %i.fp = load i64, ptr %i.fo, align 8            ; 3 uses
  %.sroa.026.0.copyload.i = load i64, ptr %i.fl, align 8
  %.sroa.227.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %.sroa.227.0.copyload.i = load i24, ptr %.sroa.227.0..sroa_idx.i, align 8 ; 3 uses
  %.sroa.1118.8.extract.trunc.i.i.a = trunc i64 %i.fp to i8
  %.sroa.1219.8.extract.shift.i.i = lshr i64 %i.fp, 8
  %.sroa.1219.8.extract.trunc.i.i = trunc i64 %.sroa.1219.8.extract.shift.i.i to i8
  %.sroa.9.8.extract.trunc.i.i = trunc i24 %.sroa.227.0.copyload.i to i8
  %.sroa.11.8.extract.shift.i.i = lshr i24 %.sroa.227.0.copyload.i, 8
  %.sroa.11.8.extract.trunc.i.i = trunc i24 %.sroa.11.8.extract.shift.i.i to i8
  %6 = or i64 %.sroa.026.0.copyload.i, %i.fn      ; 10 uses
  %7 = or i8 %.sroa.9.8.extract.trunc.i.i, %.sroa.1118.8.extract.trunc.i.i.a
  %i.fq = or i8 %.sroa.11.8.extract.trunc.i.i, %.sroa.1219.8.extract.trunc.i.i
  %8 = trunc i64 %i.fp to i24
  %.sroa.12.8.extract.shift38.i.i = or i24 %.sroa.227.0.copyload.i, %8
  %.sroa.0.0.extract.trunc.i = trunc i64 %6 to i8
  %i.fr = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %.sroa.0.0.extract.trunc.i)
  %i.fs = icmp samesign ugt i8 %i.fr, 1
  br i1 %i.fs, label %multiple_tools.exit.i, label %bb.f

bb.n:                                             ; preds = %multiple_tools.exit.i
  %sext.i = shl i64 %.val, 32
  %i.ft = ashr exact i64 %sext.i, 32
  %i.fu = tail call ptr @PyMem_Malloc(i64 noundef %i.ft) #12 ; 3 uses
  %i.fv = load ptr, ptr %i.f, align 8, !tbaa !32  ; 2 uses
  %i.fw = getelementptr i8, ptr %i.fv, i64 24
  store ptr %i.fu, ptr %i.fw, align 8, !tbaa !57
  %i.fx = icmp eq ptr %i.fu, null
  br i1 %i.fx, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.fy = tail call ptr @PyErr_NoMemory() #12     ; 0 uses
  br label %update_instrumentation_data.exit.thread

bb.p:                                             ; preds = %bb.n
  %.val.i.i = load i64, ptr %i.a, align 8, !tbaa !167
  %i.fz = trunc i64 %.val.i.i to i32              ; 2 uses
  %i.ga = icmp sgt i32 %i.fz, 0
  br i1 %i.ga, label %.lr.ph.i.i, label %initialize_tools.exit.i

.lr.ph.i.i:                                       ; preds = %bb.p
  %i.gb = getelementptr i8, ptr %0, i64 208
  br label %bb.q

bb.q:                                             ; preds = %opcode_has_event.exit.thread.i.i, %.lr.ph.i.i
  %.03034.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %i.hy, %opcode_has_event.exit.thread.i.i ] ; 3 uses
  %i.gc = sext i32 %.03034.i.i to i64             ; 3 uses
  %i.gd = getelementptr [2 x i8], ptr %i.gb, i64 %i.gc ; 2 uses
  %i.ge = load i8, ptr %i.gd, align 2, !tbaa !39  ; 2 uses
  %i.gf = icmp eq i8 %i.ge, -3
  br i1 %i.gf, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.gg = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.gh = getelementptr i8, ptr %i.gg, i64 96
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !33 ; 2 uses
  %i.gj = getelementptr i8, ptr %i.gi, i64 1
  %i.gk = load i8, ptr %i.gi, align 1, !tbaa !37
  %i.gl = zext i8 %i.gk to i32
  %i.gm = mul i32 %.03034.i.i, %i.gl
  %i.gn = sext i32 %i.gm to i64
  %i.go = getelementptr i8, ptr %i.gj, i64 %i.gn
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !39
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.031.in.i.i = phi i8 [ %i.gp, %bb.r ], [ %i.ge, %bb.q ] ; 2 uses
  %i.gq = icmp eq i8 %.031.in.i.i, -19
  br i1 %i.gq, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.gr = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.gs = getelementptr i8, ptr %i.gr, i64 112
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !40
  %i.gu = getelementptr i8, ptr %i.gt, i64 %i.gc
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !39
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.1.in.i.i = phi i8 [ %i.gv, %bb.t ], [ %.031.in.i.i, %bb.s ] ; 3 uses
  %i.gw = add i8 %.1.in.i.i, 23
  %i.gx = icmp ult i8 %i.gw, 21                   ; 2 uses
  br i1 %i.gx, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.gy = zext i8 %.1.in.i.i to i64
  %i.gz = getelementptr i8, ptr @DE_INSTRUMENT, i64 %i.gy
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !39
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.2.in.i.i = phi i8 [ %i.ha, %bb.v ], [ %.1.in.i.i, %bb.u ]
  %i.hb = zext i8 %.2.in.i.i to i64
  %i.hc = getelementptr i8, ptr @_PyOpcode_Deopt, i64 %i.hb
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !39  ; 3 uses
  %.not.i.i.i = icmp eq i8 %i.hd, -3
  br i1 %.not.i.i.i, label %opcode_has_event.exit.thread.i.i, label %opcode_has_event.exit.i.i

opcode_has_event.exit.i.i:                        ; preds = %bb.w
  %i.he = zext i8 %i.hd to i64                    ; 4 uses
  %i.hf = getelementptr i8, ptr @INSTRUMENTED_OPCODES, i64 %i.he
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !39
  %.not.i.i = icmp eq i8 %i.hg, 0
  br i1 %.not.i.i, label %opcode_has_event.exit.thread.i.i, label %bb.x

bb.x:                                             ; preds = %opcode_has_event.exit.i.i
  br i1 %i.gx, label %bb.y, label %opcode_has_event.exit.thread.sink.split.i.i

bb.y:                                             ; preds = %bb.x
  %i.hh = icmp eq i8 %i.hd, -128
  br i1 %i.hh, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.hi = getelementptr i8, ptr %i.gd, i64 1
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !39
  %i.hk = icmp ne i8 %i.hj, 0
  %i.hl = zext i1 %i.hk to i8
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.hm = getelementptr i8, ptr @EVENT_FOR_OPCODE, i64 %i.he
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !39
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.0.i102.i = phi i8 [ %i.hl, %bb.z ], [ %i.hn, %bb.aa ]
  %i.ho = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.hp = getelementptr i8, ptr %i.ho, i64 11
  %i.hq = sext i8 %.0.i102.i to i64
  %i.hr = getelementptr i8, ptr %i.hp, i64 %i.hq
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !39
  br label %opcode_has_event.exit.thread.sink.split.i.i

opcode_has_event.exit.thread.sink.split.i.i:      ; preds = %bb.ab, %bb.x
  %.sink.i.i = phi i8 [ %i.hs, %bb.ab ], [ 0, %bb.x ]
  %i.ht = getelementptr i8, ptr %i.fu, i64 %i.gc
  store i8 %.sink.i.i, ptr %i.ht, align 1, !tbaa !39
  br label %opcode_has_event.exit.thread.i.i

opcode_has_event.exit.thread.i.i:                 ; preds = %opcode_has_event.exit.thread.sink.split.i.i, %opcode_has_event.exit.i.i, %bb.w
  %.pre-phi.i.i = phi i64 [ %i.he, %opcode_has_event.exit.i.i ], [ 253, %bb.w ], [ %i.he, %opcode_has_event.exit.thread.sink.split.i.i ]
  %i.hu = getelementptr i8, ptr @_PyOpcode_Caches, i64 %.pre-phi.i.i
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !39
  %i.hw = zext i8 %i.hv to i32
  %i.hx = add nsw i32 %.03034.i.i, 1
  %i.hy = add i32 %i.hx, %i.hw                    ; 2 uses
  %i.hz = icmp slt i32 %i.hy, %i.fz
  br i1 %i.hz, label %bb.q, label %initialize_tools.exit.i.loopexit, !llvm.loop !171

initialize_tools.exit.i.loopexit:                 ; preds = %opcode_has_event.exit.thread.i.i
  %.pre365.pre370.pre = load ptr, ptr %i.f, align 8, !tbaa !32
  br label %initialize_tools.exit.i

initialize_tools.exit.i:                          ; preds = %initialize_tools.exit.i.loopexit, %bb.p, %multiple_tools.exit.i
  %.pre365.pre370 = phi ptr [ %.pre365.pre370.pre, %initialize_tools.exit.i.loopexit ], [ %i.fv, %bb.p ], [ %i.fl, %multiple_tools.exit.i ] ; 3 uses
  %.sroa.0.5.extract.shift.i = lshr i64 %6, 40
  %.sroa.0.5.extract.trunc.i = trunc i64 %.sroa.0.5.extract.shift.i to i8 ; 2 uses
  %.not92.i = icmp eq i8 %.sroa.0.5.extract.trunc.i, 0
  br i1 %.not92.i, label %initialize_line_tools.exit.i, label %bb.ac

bb.ac:                                            ; preds = %initialize_tools.exit.i
  %i.ia = getelementptr i8, ptr %.pre365.pre370, i64 96
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !33
  %i.ic = icmp eq ptr %i.ib, null
  br i1 %i.ic, label %bb.ad, label %bb.dj

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.id = call i32 @_PyCode_InitAddressRange(ptr noundef nonnull %0, ptr noundef nonnull %3) #12 ; 0 uses
  %i.ie = getelementptr i8, ptr %0, i64 68        ; 3 uses
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !68
  %i.ig = add i32 %i.if, 1                        ; 2 uses
  %i.ih = call i32 @_PyCode_InitAddressRange(ptr noundef nonnull %0, ptr noundef nonnull %3) #12 ; 0 uses
  %i.ii = getelementptr i8, ptr %0, i64 192       ; 3 uses
  %i.ij = load i32, ptr %i.ii, align 8, !tbaa !166 ; 2 uses
  %i.ik = icmp slt i32 %i.ij, %i.b
  br i1 %i.ik, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.ad
  %i.il = getelementptr i8, ptr %0, i64 208
  %i.im = getelementptr i8, ptr %0, i64 152
  br label %bb.ae

._crit_edge.i:                                    ; preds = %_PyInstruction_GetLength.exit.i, %bb.ad
  %.087.lcssa.i = phi i32 [ %i.ig, %bb.ad ], [ %spec.select.i, %_PyInstruction_GetLength.exit.i ]
  %i.in = load i32, ptr %i.ie, align 4, !tbaa !68
  %i.io = sub i32 %.087.lcssa.i, %i.in            ; 3 uses
  %i.ip = icmp slt i32 %i.io, 254
  br i1 %i.ip, label %bb.ao, label %bb.am

bb.ae:                                            ; preds = %_PyInstruction_GetLength.exit.i, %.lr.ph.i
  %.086151.i = phi i32 [ %i.ij, %.lr.ph.i ], [ %i.kj, %_PyInstruction_GetLength.exit.i ] ; 4 uses
  %.087150.i = phi i32 [ %i.ig, %.lr.ph.i ], [ %spec.select.i, %_PyInstruction_GetLength.exit.i ]
  %i.iq = shl i32 %.086151.i, 1
  %i.ir = call i32 @_PyCode_CheckLineNumber(i32 noundef %i.iq, ptr noundef nonnull %3) #12
  %spec.select.i = call i32 @llvm.smax.i32(i32 %i.ir, i32 %.087150.i) ; 2 uses
  %i.is = sext i32 %.086151.i to i64              ; 2 uses
  %i.it = getelementptr [2 x i8], ptr %i.il, i64 %i.is
  %i.iu = load i16, ptr %i.it, align 2, !tbaa !11 ; 3 uses
  %.sroa.7.0.extract.shift.i.i.i = lshr i16 %i.iu, 8
  %i.iv = and i16 %i.iu, 255                      ; 3 uses
  %i.iw = icmp samesign ult i16 %i.iv, 233
  br i1 %i.iw, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ix = zext nneg i16 %i.iv to i64
  br label %_Py_GetBaseCodeUnit.exit.sink.split.i.i

bb.ag:                                            ; preds = %bb.ae
  %i.iy = zext nneg i16 %i.iv to i32
  %trunc.i.i.i = trunc i16 %i.iu to i8
  switch i8 %trunc.i.i.i, label %bb.aj [
    i8 -2, label %bb.ah
    i8 -3, label %bb.ai
  ]
end_hunk_0
begin_hunk_1_@force_instrument_lock_held:bb.a
  br label %initialize_line_tools.exit.i

initialize_line_tools.exit.i:                     ; preds = %.lr.ph.preheader.i116.i, %bb.dn, %bb.dk, %bb.dj, %initialize_tools.exit.i
  %.pre365 = phi ptr [ %.pre365.pre, %.lr.ph.preheader.i116.i ], [ %i.adw, %bb.dn ], [ %.pre365.pre369, %bb.dk ], [ %.pre365.pre369, %bb.dj ], [ %.pre365.pre370, %initialize_tools.exit.i ] ; 3 uses
  %i.aed = and i64 %6, 71776119061217280
  %.not95.i = icmp eq i64 %i.aed, 0
  br i1 %.not95.i, label %update_instrumentation_data.exit, label %bb.do

bb.do:                                            ; preds = %initialize_line_tools.exit.i
  %i.aee = getelementptr i8, ptr %.pre365, i64 112
  %i.aef = load ptr, ptr %i.aee, align 8, !tbaa !40
  %i.aeg = icmp eq ptr %i.aef, null
  br i1 %i.aeg, label %bb.dp, label %.loopexit134.i

bb.dp:                                            ; preds = %bb.do
  %sext96.i = shl i64 %.val, 32
  %i.aeh = ashr exact i64 %sext96.i, 31
  %i.aei = call ptr @PyMem_Malloc(i64 noundef %i.aeh) #12 ; 2 uses
  %i.aej = load ptr, ptr %i.f, align 8, !tbaa !32 ; 2 uses
  %i.aek = getelementptr i8, ptr %i.aej, i64 112
  store ptr %i.aei, ptr %i.aek, align 8, !tbaa !40
  %i.ael = icmp eq ptr %i.aei, null
  br i1 %i.ael, label %bb.dq, label %.preheader133.i

.preheader133.i:                                  ; preds = %bb.dp
  %i.aem = icmp sgt i32 %i.b, 0
  br i1 %i.aem, label %.lr.ph153.i, label %.loopexit134.i

.lr.ph153.i:                                      ; preds = %.preheader133.i
  %i.aen = getelementptr i8, ptr %0, i64 208      ; 3 uses
  %wide.trip.count.i = and i64 %.val, 2147483647
  %xtraiter = and i64 %.val, 1
  %i.aeo = icmp eq i64 %wide.trip.count.i, 1
  br i1 %i.aeo, label %.epil.preheader, label %.lr.ph153.i.new

.lr.ph153.i.new:                                  ; preds = %.lr.ph153.i
  %unroll_iter = and i64 %.val, 2147483646
  br label %bb.dr

bb.dq:                                            ; preds = %bb.dp
  %i.aep = call ptr @PyErr_NoMemory() #12         ; 0 uses
  br label %update_instrumentation_data.exit.thread

bb.dr:                                            ; preds = %bb.dr, %.lr.ph153.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph153.i.new ], [ %indvars.iv.next.i.1, %bb.dr ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph153.i.new ], [ %niter.next.1, %bb.dr ]
  %i.aeq = getelementptr [2 x i8], ptr %i.aen, i64 %indvars.iv.i
  %i.aer = load i8, ptr %i.aeq, align 2, !tbaa !39
  %i.aes = zext i8 %i.aer to i64
  %i.aet = getelementptr i8, ptr @_PyOpcode_Deopt, i64 %i.aes
  %i.aeu = load i8, ptr %i.aet, align 1, !tbaa !39
  %i.aev = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.aew = getelementptr i8, ptr %i.aev, i64 112
  %i.aex = load ptr, ptr %i.aew, align 8, !tbaa !40
  %i.aey = getelementptr i8, ptr %i.aex, i64 %indvars.iv.i
  store i8 %i.aeu, ptr %i.aey, align 1, !tbaa !39
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.aez = getelementptr [2 x i8], ptr %i.aen, i64 %indvars.iv.next.i
  %i.afa = load i8, ptr %i.aez, align 2, !tbaa !39
  %i.afb = zext i8 %i.afa to i64
  %i.afc = getelementptr i8, ptr @_PyOpcode_Deopt, i64 %i.afb
  %i.afd = load i8, ptr %i.afc, align 1, !tbaa !39
  %i.afe = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.aff = getelementptr i8, ptr %i.afe, i64 112
  %i.afg = load ptr, ptr %i.aff, align 8, !tbaa !40
  %i.afh = getelementptr i8, ptr %i.afg, i64 %indvars.iv.next.i
  store i8 %i.afd, ptr %i.afh, align 1, !tbaa !39
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit134.i.loopexit.unr-lcssa, label %bb.dr, !llvm.loop !185

.loopexit134.i.loopexit.unr-lcssa:                ; preds = %bb.dr
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit134.i.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit134.i.loopexit.unr-lcssa, %.lr.ph153.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph153.i ], [ %indvars.iv.next.i.1, %.loopexit134.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod551 = trunc i64 %.val to i1
  call void @llvm.assume(i1 %lcmp.mod551)
  %i.afi = getelementptr [2 x i8], ptr %i.aen, i64 %indvars.iv.i.epil.init
  %i.afj = load i8, ptr %i.afi, align 2, !tbaa !39
  %i.afk = zext i8 %i.afj to i64
  %i.afl = getelementptr i8, ptr @_PyOpcode_Deopt, i64 %i.afk
  %i.afm = load i8, ptr %i.afl, align 1, !tbaa !39
  %i.afn = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.afo = getelementptr i8, ptr %i.afn, i64 112
  %i.afp = load ptr, ptr %i.afo, align 8, !tbaa !40
  %i.afq = getelementptr i8, ptr %i.afp, i64 %indvars.iv.i.epil.init
  store i8 %i.afm, ptr %i.afq, align 1, !tbaa !39
  br label %.loopexit134.i.loopexit

.loopexit134.i.loopexit:                          ; preds = %.loopexit134.i.loopexit.unr-lcssa, %.epil.preheader
  %.pre364.pre = load ptr, ptr %i.f, align 8, !tbaa !32
  br label %.loopexit134.i

.loopexit134.i:                                   ; preds = %.loopexit134.i.loopexit, %.preheader133.i, %bb.do
  %.pre364 = phi ptr [ %.pre364.pre, %.loopexit134.i.loopexit ], [ %i.aej, %.preheader133.i ], [ %.pre365, %bb.do ] ; 3 uses
  br i1 %.lcssa.i.i, label %bb.ds, label %update_instrumentation_data.exit

bb.ds:                                            ; preds = %.loopexit134.i
  %i.afr = getelementptr i8, ptr %.pre364, i64 120
  %i.afs = load ptr, ptr %i.afr, align 8, !tbaa !90
  %i.aft = icmp eq ptr %i.afs, null
  br i1 %i.aft, label %bb.dt, label %update_instrumentation_data.exit

bb.dt:                                            ; preds = %bb.ds
  %sext97.i = shl i64 %.val, 32
  %i.afu = ashr exact i64 %sext97.i, 32
  %i.afv = call ptr @PyMem_Malloc(i64 noundef %i.afu) #12 ; 2 uses
  %i.afw = load ptr, ptr %i.f, align 8, !tbaa !32 ; 2 uses
  %i.afx = getelementptr i8, ptr %i.afw, i64 120
  store ptr %i.afv, ptr %i.afx, align 8, !tbaa !90
  %i.afy = icmp eq ptr %i.afv, null
  br i1 %i.afy, label %bb.du, label %.preheader.i

.preheader.i:                                     ; preds = %bb.dt
  %i.afz = icmp sgt i32 %i.b, 0
  br i1 %i.afz, label %.lr.ph155.preheader.i, label %update_instrumentation_data.exit

.lr.ph155.preheader.i:                            ; preds = %.preheader.i
  %wide.trip.count173.i = and i64 %.val, 2147483647
  %i.aga = add nsw i64 %wide.trip.count173.i, -1
  %xtraiter552 = and i64 %.val, 3                 ; 3 uses
  %i.agb = icmp ult i64 %i.aga, 3
  br i1 %i.agb, label %.lr.ph155.i.epil.preheader, label %.lr.ph155.preheader.i.new

.lr.ph155.preheader.i.new:                        ; preds = %.lr.ph155.preheader.i
  %unroll_iter555 = and i64 %.val, 2147483644
  br label %.lr.ph155.i

bb.du:                                            ; preds = %bb.dt
  %i.agc = call ptr @PyErr_NoMemory() #12         ; 0 uses
  br label %update_instrumentation_data.exit.thread

.lr.ph155.i:                                      ; preds = %.lr.ph155.i, %.lr.ph155.preheader.i.new
  %indvars.iv170.i = phi i64 [ 0, %.lr.ph155.preheader.i.new ], [ %indvars.iv.next171.i.3, %.lr.ph155.i ] ; 5 uses
  %niter556 = phi i64 [ 0, %.lr.ph155.preheader.i.new ], [ %niter556.next.3, %.lr.ph155.i ]
  %i.agd = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.age = getelementptr i8, ptr %i.agd, i64 120
  %i.agf = load ptr, ptr %i.age, align 8, !tbaa !90
  %i.agg = getelementptr i8, ptr %i.agf, i64 %indvars.iv170.i
  store i8 0, ptr %i.agg, align 1, !tbaa !39
  %i.agh = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.agi = getelementptr i8, ptr %i.agh, i64 120
  %i.agj = load ptr, ptr %i.agi, align 8, !tbaa !90
  %i.agk = getelementptr i8, ptr %i.agj, i64 %indvars.iv170.i
  %i.agl = getelementptr i8, ptr %i.agk, i64 1
  store i8 0, ptr %i.agl, align 1, !tbaa !39
  %i.agm = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.agn = getelementptr i8, ptr %i.agm, i64 120
  %i.ago = load ptr, ptr %i.agn, align 8, !tbaa !90
  %i.agp = getelementptr i8, ptr %i.ago, i64 %indvars.iv170.i
  %i.agq = getelementptr i8, ptr %i.agp, i64 2
  store i8 0, ptr %i.agq, align 1, !tbaa !39
  %i.agr = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.ags = getelementptr i8, ptr %i.agr, i64 120
  %i.agt = load ptr, ptr %i.ags, align 8, !tbaa !90
  %i.agu = getelementptr i8, ptr %i.agt, i64 %indvars.iv170.i
  %i.agv = getelementptr i8, ptr %i.agu, i64 3
  store i8 0, ptr %i.agv, align 1, !tbaa !39
  %indvars.iv.next171.i.3 = add nuw nsw i64 %indvars.iv170.i, 4 ; 2 uses
  %niter556.next.3 = add i64 %niter556, 4         ; 2 uses
  %niter556.ncmp.3 = icmp eq i64 %niter556.next.3, %unroll_iter555
  br i1 %niter556.ncmp.3, label %update_instrumentation_data.exit.loopexit.unr-lcssa, label %.lr.ph155.i, !llvm.loop !186

update_instrumentation_data.exit.loopexit.unr-lcssa: ; preds = %.lr.ph155.i
  %lcmp.mod553.not = icmp eq i64 %xtraiter552, 0
  br i1 %lcmp.mod553.not, label %update_instrumentation_data.exit.loopexit, label %.lr.ph155.i.epil.preheader

.lr.ph155.i.epil.preheader:                       ; preds = %update_instrumentation_data.exit.loopexit.unr-lcssa, %.lr.ph155.preheader.i
  %indvars.iv170.i.epil.init = phi i64 [ 0, %.lr.ph155.preheader.i ], [ %indvars.iv.next171.i.3, %update_instrumentation_data.exit.loopexit.unr-lcssa ]
  %lcmp.mod554 = icmp ne i64 %xtraiter552, 0
  call void @llvm.assume(i1 %lcmp.mod554)
  br label %.lr.ph155.i.epil

.lr.ph155.i.epil:                                 ; preds = %.lr.ph155.i.epil, %.lr.ph155.i.epil.preheader
  %indvars.iv170.i.epil = phi i64 [ %indvars.iv170.i.epil.init, %.lr.ph155.i.epil.preheader ], [ %indvars.iv.next171.i.epil, %.lr.ph155.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph155.i.epil.preheader ], [ %epil.iter.next, %.lr.ph155.i.epil ]
  %i.agw = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.agx = getelementptr i8, ptr %i.agw, i64 120
  %i.agy = load ptr, ptr %i.agx, align 8, !tbaa !90
  %i.agz = getelementptr i8, ptr %i.agy, i64 %indvars.iv170.i.epil
  store i8 0, ptr %i.agz, align 1, !tbaa !39
  %indvars.iv.next171.i.epil = add nuw nsw i64 %indvars.iv170.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter552
  br i1 %epil.iter.cmp.not, label %update_instrumentation_data.exit.loopexit, label %.lr.ph155.i.epil, !llvm.loop !187

update_instrumentation_data.exit.loopexit:        ; preds = %.lr.ph155.i.epil, %update_instrumentation_data.exit.loopexit.unr-lcssa
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !32
  br label %update_instrumentation_data.exit

update_instrumentation_data.exit:                 ; preds = %update_instrumentation_data.exit.loopexit, %.preheader.i, %bb.ds, %.loopexit134.i, %initialize_line_tools.exit.i
  %i.aha = phi ptr [ %.pre, %update_instrumentation_data.exit.loopexit ], [ %i.afw, %.preheader.i ], [ %.pre364, %bb.ds ], [ %.pre364, %.loopexit134.i ], [ %.pre365, %initialize_line_tools.exit.i ] ; 6 uses
  %i.ahb = load i64, ptr %i.fm, align 8
  %i.ahc = load i64, ptr %i.fo, align 8           ; 3 uses
  %.sroa.087.0.copyload = load i64, ptr %i.aha, align 8
  %.sroa.288.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aha, i64 8
  %.sroa.288.0.copyload = load i24, ptr %.sroa.288.0..sroa_idx, align 8 ; 3 uses
  %.sroa.1118.8.extract.trunc.i.a = trunc i64 %i.ahc to i8
  %.sroa.1219.8.extract.shift.i = lshr i64 %i.ahc, 8
  %.sroa.9.8.extract.trunc.i.a = trunc i64 %.sroa.1219.8.extract.shift.i to i8
  %.sroa.11.8.extract.trunc.i.a = trunc i24 %.sroa.288.0.copyload to i8
  %.sroa.12.8.extract.shift.i = lshr i24 %.sroa.288.0.copyload, 8
  %.sroa.12.8.extract.trunc.i = trunc i24 %.sroa.12.8.extract.shift.i to i8
  %i.ahd = or i64 %.sroa.087.0.copyload, %i.ahb   ; 4 uses
  %i.ahe = or i8 %.sroa.11.8.extract.trunc.i.a, %.sroa.1118.8.extract.trunc.i.a ; 3 uses
  %i.ahf = or i8 %.sroa.12.8.extract.trunc.i, %.sroa.9.8.extract.trunc.i.a ; 3 uses
  %9 = trunc i64 %i.ahc to i24
  %.sroa.12.8.extract.shift38.i = or i24 %.sroa.288.0.copyload, %9
  %.sroa.1230.8.insert.ext.i = and i24 %.sroa.12.8.extract.shift38.i, -65536 ; 3 uses
  %.sroa.1129.8.insert.ext.i = zext i8 %i.ahf to i24
  %.sroa.1129.8.insert.shift.i = shl nuw nsw i24 %.sroa.1129.8.insert.ext.i, 8
  %.sroa.928.8.insert.ext.i = zext i8 %i.ahe to i24
  %i.ahg = or disjoint i24 %.sroa.1129.8.insert.shift.i, %.sroa.928.8.insert.ext.i
  %.sroa.928.8.insert.insert.i = or disjoint i24 %i.ahg, %.sroa.1230.8.insert.ext.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %i.ahh = getelementptr i8, ptr %1, i64 7320
  %i.ahi = load i64, ptr %i.ahh, align 8, !tbaa !189
  %i.ahj = getelementptr i8, ptr %0, i64 168      ; 2 uses
  %i.ahk = load i64, ptr %i.ahj, align 8, !tbaa !92
  %i.ahl = icmp ugt i64 %i.ahi, %i.ahk
  %i.ahm = getelementptr i8, ptr %i.aha, i64 11   ; 2 uses
  br i1 %i.ahl, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %update_instrumentation_data.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %5, ptr noundef nonnull align 1 dereferenceable(11) %i.ahm, i64 11, i1 false), !tbaa.struct !190
  br label %bb.dx

bb.dw:                                            ; preds = %update_instrumentation_data.exit
  %.sroa.078.0.copyload = load i64, ptr %i.ahm, align 1 ; 2 uses
  %.sroa.279.0..sroa_idx = getelementptr i8, ptr %i.aha, i64 19
  %.sroa.279.0.copyload = load i24, ptr %.sroa.279.0..sroa_idx, align 1 ; 4 uses
  %.sroa.1120.8.extract.trunc.i.a = trunc i24 %.sroa.279.0.copyload to i8 ; 2 uses
  %.sroa.1221.8.extract.shift.i = lshr i24 %.sroa.279.0.copyload, 8
  %.sroa.1221.8.extract.trunc.i = trunc i24 %.sroa.1221.8.extract.shift.i to i8 ; 2 uses
  %i.ahn = xor i64 %i.ahd, -1
  %i.aho = and i64 %.sroa.078.0.copyload, %i.ahn
  %i.ahp = xor i8 %i.ahe, -1
  %i.ahq = and i8 %.sroa.1120.8.extract.trunc.i.a, %i.ahp
  %i.ahr = xor i8 %i.ahf, -1
  %i.ahs = and i8 %.sroa.1221.8.extract.trunc.i, %i.ahr
  %.sroa.1221.8.extract.shift34.i = xor i24 %.sroa.1230.8.insert.ext.i, -65536
  %.sroa.1232.8.insert.ext.i = and i24 %.sroa.1221.8.extract.shift34.i, %.sroa.279.0.copyload
  %.sroa.1131.8.insert.ext.i = zext i8 %i.ahs to i24
  %.sroa.1131.8.insert.shift.i = shl nuw nsw i24 %.sroa.1131.8.insert.ext.i, 8
  %.sroa.1131.8.insert.insert.i = or disjoint i24 %.sroa.1131.8.insert.shift.i, %.sroa.1232.8.insert.ext.i
  %.sroa.930.8.insert.ext.i = zext i8 %i.ahq to i24
  %.sroa.930.8.insert.insert.i = or disjoint i24 %.sroa.1131.8.insert.insert.i, %.sroa.930.8.insert.ext.i
  store i64 %i.aho, ptr %5, align 8
  %.sroa.481.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i24 %.sroa.930.8.insert.insert.i, ptr %.sroa.481.0..sroa_idx, align 8, !tbaa !39
  %i.aht = xor i64 %.sroa.078.0.copyload, -1
  %i.ahu = and i64 %i.ahd, %i.aht
  %i.ahv = xor i8 %.sroa.1120.8.extract.trunc.i.a, -1
  %i.ahw = and i8 %i.ahe, %i.ahv
  %i.ahx = xor i8 %.sroa.1221.8.extract.trunc.i, -1
  %i.ahy = and i8 %i.ahf, %i.ahx
  %10 = xor i24 %.sroa.279.0.copyload, -1
  %.sroa.1221.8.extract.shift34.i190 = and i24 %.sroa.1230.8.insert.ext.i, %10
  %.sroa.1131.8.insert.ext.i198 = zext i8 %i.ahy to i24
  %.sroa.1131.8.insert.shift.i199 = shl nuw nsw i24 %.sroa.1131.8.insert.ext.i198, 8
  %.sroa.1131.8.insert.insert.i200 = or disjoint i24 %.sroa.1131.8.insert.shift.i199, %.sroa.1221.8.extract.shift34.i190
  %.sroa.930.8.insert.ext.i201 = zext i8 %i.ahw to i24
  %.sroa.930.8.insert.insert.i202 = or disjoint i24 %.sroa.1131.8.insert.insert.i200, %.sroa.930.8.insert.ext.i201
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dv
  %.sink = phi i64 [ %i.ahd, %bb.dv ], [ %i.ahu, %bb.dw ] ; 2 uses
  %.sroa.930.8.insert.insert.i202.sink = phi i24 [ %.sroa.928.8.insert.insert.i, %bb.dv ], [ %.sroa.930.8.insert.insert.i202, %bb.dw ] ; 2 uses
  store i64 %.sink, ptr %4, align 8
  %i.ahz = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i24 %.sroa.930.8.insert.insert.i202.sink, ptr %i.ahz, align 8, !tbaa !39
  %i.aia = getelementptr i8, ptr %i.aha, i64 11
  store i64 %i.ahd, ptr %i.aia, align 1
  %.sroa.7.0..sroa_idx91 = getelementptr i8, ptr %i.aha, i64 19
  store i24 %.sroa.928.8.insert.insert.i, ptr %.sroa.7.0..sroa_idx91, align 1, !tbaa !39
  %.not.7.i = icmp eq i64 %.sink, 0
  %.not.10.i = icmp eq i24 %.sroa.930.8.insert.insert.i202.sink, 0
  %or.cond16.i = select i1 %.not.7.i, i1 %.not.10.i, i1 false
  br i1 %or.cond16.i, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  %.sroa.061.0.copyload = load i64, ptr %5, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.2.0.copyload = load i24, ptr %.sroa.2.0..sroa_idx, align 8
  %.not.7.i205 = icmp eq i64 %.sroa.061.0.copyload, 0
  %.not.10.i206 = icmp eq i24 %.sroa.2.0.copyload, 0
  %or.cond16.i207 = select i1 %.not.7.i205, i1 %.not.10.i206, i1 false
  br i1 %or.cond16.i207, label %.loopexit, label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.dx
  %i.aib = getelementptr i8, ptr %0, i64 192      ; 5 uses
  %i.aic = load i32, ptr %i.aib, align 8, !tbaa !166 ; 2 uses
  %i.aid = icmp slt i32 %i.aic, %i.b
  br i1 %i.aid, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.dz
  %i.aie = getelementptr i8, ptr %0, i64 208
  %i.aif = getelementptr i8, ptr %0, i64 152      ; 2 uses
  br label %bb.ea

._crit_edge:                                      ; preds = %_PyInstruction_GetLength.exit, %bb.dz
  %i.aig = getelementptr inbounds nuw i8, ptr %5, i64 5
  %i.aih = load i8, ptr %i.aig, align 1, !tbaa !39 ; 3 uses
  %i.aii = getelementptr inbounds nuw i8, ptr %5, i64 6
  %i.aij = load i8, ptr %i.aii, align 2, !tbaa !39 ; 3 uses
  %.not154 = icmp eq i8 %i.aih, 0
  br i1 %.not154, label %.loopexit328, label %bb.fn

bb.ea:                                            ; preds = %.lr.ph, %_PyInstruction_GetLength.exit
  %.0138340 = phi i32 [ %i.aic, %.lr.ph ], [ %i.apb, %_PyInstruction_GetLength.exit ] ; 6 uses
  %i.aik = sext i32 %.0138340 to i64              ; 8 uses
  %i.ail = getelementptr [2 x i8], ptr %i.aie, i64 %i.aik ; 8 uses
  %i.aim = load i16, ptr %i.ail, align 2          ; 3 uses
  %.sroa.7.0.extract.shift.i = lshr i16 %i.aim, 8 ; 2 uses
  %.sroa.7.0.extract.trunc.i = trunc nuw i16 %.sroa.7.0.extract.shift.i to i8 ; 3 uses
  %i.ain = and i16 %i.aim, 255                    ; 3 uses
  %i.aio = icmp samesign ult i16 %i.ain, 233
  %i.aip = trunc i16 %i.aim to i8                 ; 2 uses
  br i1 %i.aio, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  %i.aiq = zext nneg i16 %i.ain to i64
  %i.air = getelementptr i8, ptr @_PyOpcode_Deopt, i64 %i.aiq
  %i.ais = load i8, ptr %i.air, align 1, !tbaa !39
  br label %_Py_GetBaseCodeUnit.exit

bb.ec:                                            ; preds = %bb.ea
  %i.ait = zext nneg i16 %i.ain to i32
  switch i8 %i.aip, label %bb.ef [
    i8 -2, label %bb.ed
    i8 -3, label %bb.ee
  ]

bb.ed:                                            ; preds = %bb.ec
  %i.aiu = load ptr, ptr %i.aif, align 8, !tbaa !13
  %i.aiv = getelementptr i8, ptr %i.aiu, i64 8
  %i.aiw = zext nneg i16 %.sroa.7.0.extract.shift.i to i64
  %i.aix = getelementptr [8 x i8], ptr %i.aiv, i64 %i.aiw
  %i.aiy = load ptr, ptr %i.aix, align 8, !tbaa !22 ; 2 uses
  %i.aiz = getelementptr i8, ptr %i.aiy, i64 32
  %i.aja = load i8, ptr %i.aiz, align 8, !tbaa !24
  %i.ajb = zext i8 %i.aja to i64
  %i.ajc = getelementptr i8, ptr @_PyOpcode_Deopt, i64 %i.ajb
  %i.ajd = load i8, ptr %i.ajc, align 1, !tbaa !39
  %i.aje = getelementptr i8, ptr %i.aiy, i64 33
  %i.ajf = load i8, ptr %i.aje, align 1, !tbaa !41
  br label %_Py_GetBaseCodeUnit.exit

bb.ee:                                            ; preds = %bb.ec
  %i.ajg = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.ajh = getelementptr i8, ptr %i.ajg, i64 96
  %i.aji = load ptr, ptr %i.ajh, align 8, !tbaa !33 ; 2 uses
  %i.ajj = getelementptr i8, ptr %i.aji, i64 1
  %i.ajk = load i8, ptr %i.aji, align 1, !tbaa !37
  %i.ajl = zext i8 %i.ajk to i32
  %i.ajm = mul i32 %.0138340, %i.ajl
  %i.ajn = sext i32 %i.ajm to i64
  %i.ajo = getelementptr i8, ptr %i.ajj, i64 %i.ajn
  %i.ajp = load i8, ptr %i.ajo, align 1, !tbaa !39
  %i.ajq = zext i8 %i.ajp to i32
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %bb.ec
  %.0.i = phi i32 [ %i.ajq, %bb.ee ], [ %i.ait, %bb.ec ] ; 2 uses
  %i.ajr = icmp eq i32 %.0.i, 237
  br i1 %i.ajr, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %bb.ef
  %i.ajs = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.ajt = getelementptr i8, ptr %i.ajs, i64 112
  %i.aju = load ptr, ptr %i.ajt, align 8, !tbaa !40
  %i.ajv = getelementptr i8, ptr %i.aju, i64 %i.aik
  %i.ajw = load i8, ptr %i.ajv, align 1, !tbaa !39
  %i.ajx = zext i8 %i.ajw to i32
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ef
  %.1.i = phi i32 [ %i.ajx, %bb.eg ], [ %.0.i, %bb.ef ]
  %i.ajy = zext nneg i32 %.1.i to i64             ; 2 uses
  %i.ajz = getelementptr i8, ptr @DE_INSTRUMENT, i64 %i.ajy
  %i.aka = load i8, ptr %i.ajz, align 1, !tbaa !39 ; 2 uses
  %.not.i = icmp eq i8 %i.aka, 0
  br i1 %.not.i, label %bb.ei, label %_Py_GetBaseCodeUnit.exit

bb.ei:                                            ; preds = %bb.eh
  %i.akb = getelementptr i8, ptr @_PyOpcode_Deopt, i64 %i.ajy
  %i.akc = load i8, ptr %i.akb, align 1, !tbaa !39
  br label %_Py_GetBaseCodeUnit.exit

_Py_GetBaseCodeUnit.exit:                         ; preds = %bb.eb, %bb.ed, %bb.eh, %bb.ei
  %.sroa.0.1.i = phi i8 [ %i.ais, %bb.eb ], [ %i.ajd, %bb.ed ], [ %i.akc, %bb.ei ], [ %i.aka, %bb.eh ] ; 3 uses
  %.sroa.7.0.i = phi i8 [ %.sroa.7.0.extract.trunc.i, %bb.eb ], [ %i.ajf, %bb.ed ], [ %.sroa.7.0.extract.trunc.i, %bb.ei ], [ %.sroa.7.0.extract.trunc.i, %bb.eh ]
  %.not.i208.a = icmp eq i8 %.sroa.0.1.i, -3
  br i1 %.not.i208.a, label %add_tools.exit, label %opcode_has_event.exit

opcode_has_event.exit:                            ; preds = %_Py_GetBaseCodeUnit.exit
  %i.akd = zext i8 %.sroa.0.1.i to i64            ; 2 uses
  %i.ake = getelementptr i8, ptr @INSTRUMENTED_OPCODES, i64 %i.akd
  %i.akf = load i8, ptr %i.ake, align 1, !tbaa !39
  %.not325 = icmp eq i8 %i.akf, 0
  br i1 %.not325, label %add_tools.exit, label %bb.ej

bb.ej:                                            ; preds = %opcode_has_event.exit
  %i.akg = icmp eq i8 %.sroa.0.1.i, -128
  br i1 %i.akg, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %bb.ej
  %i.akh = icmp ne i8 %.sroa.7.0.i, 0
  %i.aki = zext i1 %i.akh to i8
  br label %bb.em

bb.el:                                            ; preds = %bb.ej
  %i.akj = getelementptr i8, ptr @EVENT_FOR_OPCODE, i64 %i.akd
  %i.akk = load i8, ptr %i.akj, align 1, !tbaa !39
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %bb.ek
  %.0141 = phi i8 [ %i.aki, %bb.ek ], [ %i.akk, %bb.el ]
  %i.akl = sext i8 %.0141 to i64                  ; 3 uses
  %i.akm = getelementptr i8, ptr %5, i64 %i.akl
  %i.akn = load i8, ptr %i.akm, align 1, !tbaa !39 ; 3 uses
  %.not161 = icmp eq i8 %i.akn, 0
  br i1 %.not161, label %remove_tools.exit, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.ako = load ptr, ptr %i.f, align 8, !tbaa !32 ; 4 uses
  %i.akp = getelementptr i8, ptr %i.ako, i64 24   ; 2 uses
  %i.akq = load ptr, ptr %i.akp, align 8, !tbaa !57 ; 2 uses
  %.not.i209 = icmp eq ptr %i.akq, null
  br i1 %.not.i209, label %bb.ep, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.akr = getelementptr i8, ptr %i.akq, i64 %i.aik ; 2 uses
  %i.aks = load i8, ptr %i.akr, align 1, !tbaa !39
  %i.akt = xor i8 %i.akn, -1
  %i.aku = and i8 %i.aks, %i.akt
  store i8 %i.aku, ptr %i.akr, align 1, !tbaa !39
  %i.akv = load ptr, ptr %i.akp, align 8, !tbaa !57
  %i.akw = getelementptr i8, ptr %i.akv, i64 %i.aik
  %i.akx = load i8, ptr %i.akw, align 1, !tbaa !39
  %i.aky = icmp eq i8 %i.akx, 0
  br i1 %i.aky, label %.._crit_edge.i212_crit_edge, label %remove_tools.exit

.._crit_edge.i212_crit_edge:                      ; preds = %bb.eo
  %.pre366 = load i8, ptr %i.ail, align 2, !tbaa !39
  br label %._crit_edge.i212

bb.ep:                                            ; preds = %bb.en
  %i.akz = getelementptr i8, ptr %i.ako, i64 11
  %i.ala = getelementptr i8, ptr %i.akz, i64 %i.akl
  %i.alb = load i8, ptr %i.ala, align 1, !tbaa !39 ; 2 uses
  %i.alc = and i8 %i.alb, %i.akn
  %i.ald = icmp eq i8 %i.alc, %i.alb
  br i1 %i.ald, label %._crit_edge.i212, label %remove_tools.exit

._crit_edge.i212:                                 ; preds = %.._crit_edge.i212_crit_edge, %bb.ep
  %i.ale = phi i8 [ %.pre366, %.._crit_edge.i212_crit_edge ], [ %i.aip, %bb.ep ] ; 2 uses
  %i.alf = icmp eq i8 %i.ale, -3
  br i1 %i.alf, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %._crit_edge.i212
  %i.alg = getelementptr i8, ptr %i.ako, i64 96
end_hunk_1
