Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/RawImageDataU16?download=true
inline.NumInlined: 598
inline.NumDeleted: 347
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN8rawspeed15RawImageDataU1611fixBadPixelEjji:bb.a
  br i1 %.not443, label %.critedge.thread, label %.critedge

.critedge.thread:                                 ; preds = %bb.d
  %i.by = add nsw i32 %.1104380, %3               ; 2 uses
  %i.bz = icmp samesign ult i32 %i.by, %i.g
  tail call void @llvm.assume(i1 %i.bz)
  %i.ca = zext nneg i32 %i.by to i64
  %i.cb = getelementptr inbounds nuw [2 x i8], ptr %i.ao, i64 %i.ca
  %i.cc = load i16, ptr %i.cb, align 2, !tbaa !102
  %i.cd = zext i16 %i.cc to i32
  %i.ce = sub nsw i32 %.1104380, %1
  br label %.critedge2.preheader

.critedge:                                        ; preds = %bb.d
  %.1104 = add nsw i32 %.1104380, %i.y            ; 2 uses
  %i.cf = icmp slt i32 %.1104, %i.f
  br i1 %i.cf, label %bb.d, label %.critedge2.preheader, !llvm.loop !193

.critedge4.preheader:                             ; preds = %.critedge2, %.critedge2.thread, %.critedge2.preheader
  %.lcssa384 = phi i32 [ -1, %.critedge2.preheader ], [ %i.cy, %.critedge2.thread ], [ -1, %.critedge2 ] ; 2 uses
  %.sroa.10.0.lcssa = phi i32 [ 0, %.critedge2.preheader ], [ %i.cz, %.critedge2.thread ], [ 0, %.critedge2 ] ; 2 uses
  %.1102395 = add nsw i32 %2, %i.y                ; 2 uses
  %i.cg = icmp slt i32 %.1102395, %i.i
  br i1 %i.cg, label %.lr.ph399, label %.critedge6

.lr.ph399:                                        ; preds = %.critedge4.preheader
  %i.ch = lshr i32 %1, 3                          ; 2 uses
  %i.ci = icmp samesign ult i32 %i.ch, %i.s
  tail call void @llvm.assume(i1 %i.ci)
  %i.cj = zext nneg i32 %i.ch to i64
  %invariant.gep402 = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.cj
  %i.ck = and i32 %1, 7
  %i.cl = shl nuw nsw i32 1, %i.ck
  %i.cm = add i32 %3, %1                          ; 2 uses
  %i.cn = icmp samesign ult i32 %i.cm, %i.g
  %i.co = zext nneg i32 %i.cm to i64
  %invariant.gep404 = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.co
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph389, %.critedge2
  %.0101388 = phi i32 [ %.0101385, %.lr.ph389 ], [ %.0101, %.critedge2 ] ; 5 uses
  %i.cp = icmp samesign ult i32 %.0101388, %i.i
  tail call void @llvm.assume(i1 %i.cp)
  %i.cq = mul nuw nsw i32 %.0101388, %i.s
  %i.cr = zext nneg i32 %i.cq to i64
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %i.cr
  %i.cs = load i8, ptr %gep, align 1, !tbaa !89
  %i.ct = zext i8 %i.cs to i32
  %i.cu = and i32 %i.bl, %i.ct
  %.not444 = icmp eq i32 %i.cu, 0
  br i1 %.not444, label %.critedge2.thread, label %.critedge2

.critedge2.thread:                                ; preds = %bb.e
  tail call void @llvm.assume(i1 %i.bn)
  %i.cv = mul nuw nsw i32 %.0101388, %i.l
  %i.cw = zext nneg i32 %i.cv to i64
  %gep393 = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep392, i64 %i.cw
  %i.cx = load i16, ptr %gep393, align 2, !tbaa !102
  %i.cy = zext i16 %i.cx to i32
  %i.cz = sub nsw i32 %2, %.0101388
  br label %.critedge4.preheader

.critedge2:                                       ; preds = %bb.e
  %.0101 = sub nsw i32 %.0101388, %i.y            ; 2 uses
  %i.da = icmp sgt i32 %.0101, -1
  br i1 %i.da, label %bb.e, label %.critedge4.preheader, !llvm.loop !194

bb.f:                                             ; preds = %.lr.ph399, %.critedge4
  %.1102398 = phi i32 [ %.1102395, %.lr.ph399 ], [ %.1102, %.critedge4 ] ; 4 uses
  %i.db = mul nuw nsw i32 %.1102398, %i.s
  %i.dc = zext nneg i32 %i.db to i64
  %gep403 = getelementptr inbounds nuw i8, ptr %invariant.gep402, i64 %i.dc
  %i.dd = load i8, ptr %gep403, align 1, !tbaa !89
  %i.de = zext i8 %i.dd to i32
  %i.df = and i32 %i.cl, %i.de
  %.not445 = icmp eq i32 %i.df, 0
  br i1 %.not445, label %.critedge4.thread, label %.critedge4

.critedge4.thread:                                ; preds = %bb.f
  tail call void @llvm.assume(i1 %i.cn)
  %i.dg = mul nuw nsw i32 %.1102398, %i.l
  %i.dh = zext nneg i32 %i.dg to i64
  %gep405 = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep404, i64 %i.dh
  %i.di = load i16, ptr %gep405, align 2, !tbaa !102
  %i.dj = zext i16 %i.di to i32
  %i.dk = sub nsw i32 %.1102398, %2
  br label %.critedge6

.critedge4:                                       ; preds = %bb.f
  %.1102 = add nsw i32 %.1102398, %i.y            ; 2 uses
  %i.dl = icmp slt i32 %.1102, %i.i
  br i1 %i.dl, label %bb.f, label %.critedge6, !llvm.loop !195

.critedge6:                                       ; preds = %.critedge4, %.critedge4.thread, %.critedge4.preheader
  %.lcssa394 = phi i32 [ -1, %.critedge4.preheader ], [ %i.dj, %.critedge4.thread ], [ -1, %.critedge4 ] ; 2 uses
  %.sroa.15.0.lcssa = phi i32 [ 0, %.critedge4.preheader ], [ %i.dk, %.critedge4.thread ], [ 0, %.critedge4 ] ; 2 uses
  %i.dm = add nsw i32 %.sroa.7230.0.lcssa, %.sroa.0227.0.lcssa ; 2 uses
  %.not = icmp eq i32 %i.dm, 0
  br i1 %.not, label %bb.j, label %bb.g

bb.g:                                             ; preds = %.critedge6
  %.not110 = icmp eq i32 %.sroa.0227.0.lcssa, 0
  br i1 %.not110, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.dn = shl nsw i32 %.sroa.7230.0.lcssa, 8
  %i.do = sdiv i32 %i.dn, %i.dm
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.dp = phi i32 [ %i.do, %bb.h ], [ 0, %bb.g ]  ; 2 uses
  %i.dq = sub nsw i32 256, %i.dp
  %i.dr = mul nsw i32 %i.dp, %.lcssa
  %i.ds = mul nsw i32 %i.dq, %.lcssa376
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.critedge6
  %.sroa.5.0 = phi i32 [ 0, %.critedge6 ], [ %i.ds, %bb.i ]
  %.sroa.0.0 = phi i32 [ 0, %.critedge6 ], [ %i.dr, %bb.i ]
  %.099 = phi i32 [ 7, %.critedge6 ], [ 8, %bb.i ] ; 2 uses
  %i.dt = add nsw i32 %.sroa.15.0.lcssa, %.sroa.10.0.lcssa ; 2 uses
  %.not111 = icmp eq i32 %i.dt, 0
  br i1 %.not111, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not112 = icmp eq i32 %.sroa.10.0.lcssa, 0
  br i1 %.not112, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.du = shl nsw i32 %.sroa.15.0.lcssa, 8
  %i.dv = sdiv i32 %i.du, %i.dt
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.dw = phi i32 [ %i.dv, %bb.l ], [ 0, %bb.k ]  ; 2 uses
  %i.dx = sub nsw i32 256, %i.dw
  %i.dy = add nuw nsw i32 %.099, 1
  %i.dz = mul nsw i32 %i.dw, %.lcssa384
  %i.ea = mul nsw i32 %i.dx, %.lcssa394
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.j
  %.sroa.11.0 = phi i32 [ 0, %bb.j ], [ %i.ea, %bb.m ]
  %.sroa.8.0 = phi i32 [ 0, %bb.j ], [ %i.dz, %bb.m ]
  %.1100 = phi i32 [ %.099, %bb.j ], [ %i.dy, %bb.m ]
  %.inv = icmp slt i32 %.lcssa, 0
  %spec.select = select i1 %.inv, i32 0, i32 %.sroa.0.0
  %i.eb = icmp slt i32 %.lcssa376, 0
  %i.ec = select i1 %i.eb, i32 0, i32 %.sroa.5.0
  %.1.1 = add nsw i32 %spec.select, %i.ec
  %i.ed = icmp slt i32 %.lcssa384, 0
  %i.ee = select i1 %i.ed, i32 0, i32 %.sroa.8.0
  %.1.2 = add nsw i32 %.1.1, %i.ee
  %i.ef = icmp slt i32 %.lcssa394, 0
  %i.eg = select i1 %i.ef, i32 0, i32 %.sroa.11.0
  %.1.3 = add nsw i32 %.1.2, %i.eg
  %i.eh = ashr i32 %.1.3, %.1100
  %.sroa.speculate.load.false.sroa.speculated.i = tail call i32 @llvm.smax.i32(i32 %i.eh, i32 0)
  %i.ei = tail call i32 @llvm.umin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i, i32 65535)
  %i.ej = trunc nuw i32 %i.ei to i16
  %i.ek = add i32 %3, %1                          ; 2 uses
  %i.el = icmp samesign ult i32 %i.ek, %i.g
  tail call void @llvm.assume(i1 %i.el)
  %i.em = icmp samesign ult i32 %2, %i.i
  tail call void @llvm.assume(i1 %i.em)
  %i.en = mul nuw nsw i32 %i.l, %2
  %i.eo = zext nneg i32 %i.en to i64
  %i.ep = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.eo
  %i.eq = zext nneg i32 %i.ek to i64
  %i.er = getelementptr inbounds nuw [2 x i8], ptr %i.ep, i64 %i.eq
  store i16 %i.ej, ptr %i.er, align 2, !tbaa !102
  %i.es = icmp sgt i32 %i.d, 1
  %i.et = icmp eq i32 %3, 0
  %or.cond = and i1 %i.et, %i.es
  %i.eu = load i32, ptr %i.c, align 8
  %i.ev = icmp sgt i32 %i.eu, 1
  %or.cond411 = select i1 %or.cond, i1 %i.ev, i1 false
  br i1 %or.cond411, label %.lr.ph409, label %.loopexit

.lr.ph409:                                        ; preds = %bb.n, %.lr.ph409
  %.0408 = phi i32 [ %i.ew, %.lr.ph409 ], [ 1, %bb.n ] ; 2 uses
  tail call void @_ZN8rawspeed15RawImageDataU1611fixBadPixelEjji(ptr noundef nonnull align 8 dereferenceable(624) %0, i32 noundef %1, i32 noundef %2, i32 noundef %.0408)
  %i.ew = add nuw nsw i32 %.0408, 1               ; 2 uses
  %i.ex = load i32, ptr %i.c, align 8, !tbaa !90
  %i.ey = icmp slt i32 %i.ew, %i.ex
  br i1 %i.ey, label %.lr.ph409, label %.loopexit, !llvm.loop !196

.loopexit:                                        ; preds = %.lr.ph409, %bb.n
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8rawspeed15RawImageDataU168doLookupEii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(624) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !93, !noalias !206 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.d = load i32, ptr %i.c, align 8, !tbaa !90, !noalias !206
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !94, !noalias !206
  %i.g = mul nsw i32 %i.f, %i.d                   ; 9 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 612
  %i.i = load i32, ptr %i.h, align 4, !tbaa !95, !noalias !206 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load i32, ptr %i.j, align 8, !tbaa !96, !noalias !206
  %i.l = ashr i32 %i.k, 1                         ; 4 uses
  %i.m = icmp sgt i32 %i.g, -1
  tail call void @llvm.assume(i1 %i.m)
  %i.n = icmp ne i32 %i.l, 0
  tail call void @llvm.assume(i1 %i.n)
  %i.o = icmp sge i32 %i.l, %i.g
  tail call void @llvm.assume(i1 %i.o)
  %i.p = icmp eq i32 %i.g, 0
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !117  ; 3 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !207
  %i.t = icmp eq i32 %i.s, 1
  br i1 %i.t, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.v = load i8, ptr %i.u, align 8, !tbaa !124, !range !109, !noundef !110
  %i.w = trunc nuw i8 %i.v to i1
  %i.x = tail call { ptr, i32 } @_ZN8rawspeed11TableLookUp8getTableEi(ptr noundef nonnull align 8 dereferenceable(40) %i.r, i32 noundef 0) ; 2 uses
  %.fca.0.extract26 = extractvalue { ptr, i32 } %i.x, 0 ; 15 uses
  %.fca.1.extract27 = extractvalue { ptr, i32 } %i.x, 1 ; 3 uses
  %3 = icmp slt i32 %1, %2                        ; 2 uses
  br i1 %i.w, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %3, label %.lr.ph160, label %.loopexit

.lr.ph160:                                        ; preds = %bb.c
  %i.y = load i32, ptr %i.e, align 8, !tbaa !94
  br i1 %i.p, label %.loopexit, label %.lr.ph160.split

.lr.ph160.split:                                  ; preds = %.lr.ph160
  %i.z = zext i32 %1 to i64
  %i.aa = zext nneg i32 %i.l to i64
  %i.ab = zext nneg i32 %i.g to i64               ; 2 uses
  %i.ac = zext nneg i32 %i.i to i64
  %xtraiter184 = and i64 %i.ab, 1
  %i.ad = icmp eq i32 %i.g, 1
  %unroll_iter188 = and i64 %i.ab, 2147483646
  %lcmp.mod186.not = icmp eq i64 %xtraiter184, 0
  %lcmp.mod187 = trunc i32 %i.g to i1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph160.split, %._crit_edge157
  %indvars.iv172 = phi i64 [ %i.z, %.lr.ph160.split ], [ %indvars.iv.next173, %._crit_edge157 ] ; 4 uses
  %i.ae = trunc i64 %indvars.iv172 to i32
  %i.af = mul i32 %i.ae, 13
  %i.ag = add nsw i32 %i.y, %i.af
  %i.ah = xor i32 %i.ag, 1164526980               ; 2 uses
  %i.ai = icmp samesign ult i64 %indvars.iv172, %i.ac
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = mul nuw nsw i64 %indvars.iv172, %i.aa
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.aj ; 3 uses
  br i1 %i.ad, label %.epil.preheader183, label %.lr.ph.new

._crit_edge157.unr-lcssa:                         ; preds = %.lr.ph.new
  br i1 %lcmp.mod186.not, label %._crit_edge157, label %.epil.preheader183

.epil.preheader183:                               ; preds = %._crit_edge157.unr-lcssa, %.lr.ph
  %indvars.iv167.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next168.1, %._crit_edge157.unr-lcssa ]
  %.037155.epil.init = phi i32 [ %i.ah, %.lr.ph ], [ %i.da, %._crit_edge157.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod187)
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %indvars.iv167.epil.init ; 2 uses
  %i.am = load i16, ptr %i.al, align 2, !tbaa !102
  %i.an = zext i16 %i.am to i32
  %i.ao = shl nuw nsw i32 %i.an, 1                ; 2 uses
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %.fca.0.extract26, i64 %i.ap
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !102
  %i.as = zext i16 %i.ar to i32
  %i.at = or disjoint i32 %i.ao, 1                ; 2 uses
  %i.au = icmp samesign ult i32 %i.at, %.fca.1.extract27
  tail call void @llvm.assume(i1 %i.au)
  %i.av = zext nneg i32 %i.at to i64
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %.fca.0.extract26, i64 %i.av
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !102
  %i.ay = zext i16 %i.ax to i32
  %i.az = mul i32 %.037155.epil.init, 1364
  %i.ba = lshr i32 %.037155.epil.init, 16
  %i.bb = add i32 %i.az, %i.ba
  %i.bc = and i32 %i.bb, 2047
  %i.bd = mul nuw nsw i32 %i.bc, %i.ay
  %i.be = add nuw nsw i32 %i.bd, 1024
  %i.bf = lshr i32 %i.be, 12
  %i.bg = add nuw nsw i32 %i.bf, %i.as
  %.sroa.speculated.i.epil = tail call i32 @llvm.umin.i32(i32 %i.bg, i32 65535)
  %i.bh = trunc nuw i32 %.sroa.speculated.i.epil to i16
  store i16 %i.bh, ptr %i.al, align 2, !tbaa !102
  br label %._crit_edge157

._crit_edge157:                                   ; preds = %._crit_edge157.unr-lcssa, %.epil.preheader183
  %indvars.iv.next173 = add nuw nsw i64 %indvars.iv172, 1 ; 2 uses
  %i.bi = trunc nuw nsw i64 %indvars.iv.next173 to i32
  %i.bj = icmp sgt i32 %2, %i.bi
  br i1 %i.bj, label %.lr.ph, label %.loopexit, !llvm.loop !201

.lr.ph.new:                                       ; preds = %.lr.ph, %.lr.ph.new
  %indvars.iv167 = phi i64 [ %indvars.iv.next168.1, %.lr.ph.new ], [ 0, %.lr.ph ] ; 3 uses
  %.037155 = phi i32 [ %i.da, %.lr.ph.new ], [ %i.ah, %.lr.ph ] ; 2 uses
  %niter189 = phi i64 [ %niter189.next.1, %.lr.ph.new ], [ 0, %.lr.ph ]
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %indvars.iv167 ; 2 uses
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !102
  %i.bm = zext i16 %i.bl to i32
  %i.bn = shl nuw nsw i32 %i.bm, 1                ; 2 uses
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %.fca.0.extract26, i64 %i.bo
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !102
  %i.br = zext i16 %i.bq to i32
  %i.bs = or disjoint i32 %i.bn, 1                ; 2 uses
  %i.bt = icmp samesign ult i32 %i.bs, %.fca.1.extract27
  tail call void @llvm.assume(i1 %i.bt)
  %i.bu = zext nneg i32 %i.bs to i64
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr %.fca.0.extract26, i64 %i.bu
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !102
  %i.bx = zext i16 %i.bw to i32
  %i.by = and i32 %.037155, 65535
  %i.bz = mul nuw nsw i32 %i.by, 15700
  %i.ca = lshr i32 %.037155, 16
  %i.cb = add nuw nsw i32 %i.bz, %i.ca            ; 3 uses
  %i.cc = and i32 %i.cb, 2047
  %i.cd = mul nuw nsw i32 %i.cc, %i.bx
  %i.ce = add nuw nsw i32 %i.cd, 1024
  %i.cf = lshr i32 %i.ce, 12
  %i.cg = add nuw nsw i32 %i.cf, %i.br
  %.sroa.speculated.i = tail call i32 @llvm.umin.i32(i32 %i.cg, i32 65535)
  %i.ch = trunc nuw i32 %.sroa.speculated.i to i16
  store i16 %i.ch, ptr %i.bk, align 2, !tbaa !102
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %indvars.iv167
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 2 ; 2 uses
  %i.ck = load i16, ptr %i.cj, align 2, !tbaa !102
  %i.cl = zext i16 %i.ck to i32
  %i.cm = shl nuw nsw i32 %i.cl, 1                ; 2 uses
  %i.cn = zext nneg i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %.fca.0.extract26, i64 %i.cn
  %i.cp = load i16, ptr %i.co, align 2, !tbaa !102
  %i.cq = zext i16 %i.cp to i32
  %i.cr = or disjoint i32 %i.cm, 1                ; 2 uses
  %i.cs = icmp samesign ult i32 %i.cr, %.fca.1.extract27
  tail call void @llvm.assume(i1 %i.cs)
  %i.ct = zext nneg i32 %i.cr to i64
  %i.cu = getelementptr inbounds nuw [2 x i8], ptr %.fca.0.extract26, i64 %i.ct
  %i.cv = load i16, ptr %i.cu, align 2, !tbaa !102
  %i.cw = zext i16 %i.cv to i32
  %i.cx = and i32 %i.cb, 65535
  %i.cy = mul nuw nsw i32 %i.cx, 15700
  %i.cz = lshr i32 %i.cb, 16
  %i.da = add nuw nsw i32 %i.cy, %i.cz            ; 3 uses
  %i.db = and i32 %i.da, 2047
  %i.dc = mul nuw nsw i32 %i.db, %i.cw
  %i.dd = add nuw nsw i32 %i.dc, 1024
  %i.de = lshr i32 %i.dd, 12
  %i.df = add nuw nsw i32 %i.de, %i.cq
  %.sroa.speculated.i.1 = tail call i32 @llvm.umin.i32(i32 %i.df, i32 65535)
  %i.dg = trunc nuw i32 %.sroa.speculated.i.1 to i16
  store i16 %i.dg, ptr %i.cj, align 2, !tbaa !102
  %indvars.iv.next168.1 = add nuw nsw i64 %indvars.iv167, 2 ; 2 uses
  %niter189.next.1 = add i64 %niter189, 2         ; 2 uses
  %niter189.ncmp.1 = icmp eq i64 %niter189.next.1, %unroll_iter188
  br i1 %niter189.ncmp.1, label %._crit_edge157.unr-lcssa, label %.lr.ph.new, !llvm.loop !202

bb.d:                                             ; preds = %bb.b
  %4 = icmp ne i32 %i.g, 0
  %or.cond = and i1 %3, %4
  br i1 %or.cond, label %.preheader.lr.ph.split, label %.loopexit

.preheader.lr.ph.split:                           ; preds = %bb.d
  %i.dh = zext i32 %1 to i64
  %i.di = zext nneg i32 %i.l to i64
  %i.dj = zext nneg i32 %i.g to i64               ; 2 uses
  %i.dk = zext nneg i32 %i.i to i64
  %xtraiter = and i64 %i.dj, 7                    ; 3 uses
  %i.dl = icmp samesign ult i32 %i.g, 8
  %unroll_iter = and i64 %i.dj, 2147483640
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod182 = icmp ne i64 %xtraiter, 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge
  %indvars.iv164 = phi i64 [ %i.dh, %.preheader.lr.ph.split ], [ %indvars.iv.next165, %._crit_edge ] ; 3 uses
  %i.dm = icmp samesign ult i64 %indvars.iv164, %i.dk
  tail call void @llvm.assume(i1 %i.dm)
  %i.dn = mul nuw nsw i64 %indvars.iv164, %i.di
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.dn ; 9 uses
  br i1 %i.dl, label %.epil.preheader, label %.preheader.new

._crit_edge.unr-lcssa:                            ; preds = %.preheader.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.7, %._crit_edge.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod182)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.e ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.e ]
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %i.do, i64 %indvars.iv.epil ; 2 uses
  %i.dq = load i16, ptr %i.dp, align 2, !tbaa !102
  %i.dr = zext i16 %i.dq to i64
  %i.ds = getelementptr inbounds nuw [2 x i8], ptr %.fca.0.extract26, i64 %i.dr
  %i.dt = load i16, ptr %i.ds, align 2, !tbaa !102
  store i16 %i.dt, ptr %i.dp, align 2, !tbaa !102
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.e, !llvm.loop !203

._crit_edge:                                      ; preds = %bb.e, %._crit_edge.unr-lcssa
  %indvars.iv.next165 = add nuw nsw i64 %indvars.iv164, 1 ; 2 uses
  %i.du = trunc nuw nsw i64 %indvars.iv.next165 to i32
  %i.dv = icmp sgt i32 %2, %i.du
  br i1 %i.dv, label %.preheader, label %.loopexit, !llvm.loop !204

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %.preheader.new ], [ 0, %.preheader ] ; 9 uses
  %niter = phi i64 [ %niter.next.7, %.preheader.new ], [ 0, %.preheader ]
  %i.dw = getelementptr inbounds nuw [2 x i8], ptr %i.do, i64 %indvars.iv ; 2 uses
  %i.dx = load i16, ptr %i.dw, align 2, !tbaa !102
  %i.dy = zext i16 %i.dx to i64
  %i.dz = getelementptr inbounds nuw [2 x i8], ptr %.fca.0.extract26, i64 %i.dy
  %i.ea = load i16, ptr %i.dz, align 2, !tbaa !102
  store i16 %i.ea, ptr %i.dw, align 2, !tbaa !102
  %i.eb = getelementptr inbounds nuw [2 x i8], ptr %i.do, i64 %indvars.iv
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 2 ; 2 uses
  %i.ed = load i16, ptr %i.ec, align 2, !tbaa !102
  %i.ee = zext i16 %i.ed to i64
  %i.ef = getelementptr inbounds nuw [2 x i8], ptr %.fca.0.extract26, i64 %i.ee
  %i.eg = load i16, ptr %i.ef, align 2, !tbaa !102
  store i16 %i.eg, ptr %i.ec, align 2, !tbaa !102
  %i.eh = getelementptr inbounds nuw [2 x i8], ptr %i.do, i64 %indvars.iv
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 4 ; 2 uses
  %i.ej = load i16, ptr %i.ei, align 2, !tbaa !102
  %i.ek = zext i16 %i.ej to i64
  %i.el = getelementptr inbounds nuw [2 x i8], ptr %.fca.0.extract26, i64 %i.ek
  %i.em = load i16, ptr %i.el, align 2, !tbaa !102
  store i16 %i.em, ptr %i.ei, align 2, !tbaa !102
  %i.en = getelementptr inbounds nuw [2 x i8], ptr %i.do, i64 %indvars.iv
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 6 ; 2 uses
  %i.ep = load i16, ptr %i.eo, align 2, !tbaa !102
  %i.eq = zext i16 %i.ep to i64
  %i.er = getelementptr inbounds nuw [2 x i8], ptr %.fca.0.extract26, i64 %i.eq
  %i.es = load i16, ptr %i.er, align 2, !tbaa !102
  store i16 %i.es, ptr %i.eo, align 2, !tbaa !102
  %i.et = getelementptr inbounds nuw [2 x i8], ptr %i.do, i64 %indvars.iv
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8 ; 2 uses
  %i.ev = load i16, ptr %i.eu, align 2, !tbaa !102
  %i.ew = zext i16 %i.ev to i64
  %i.ex = getelementptr inbounds nuw [2 x i8], ptr %.fca.0.extract26, i64 %i.ew
  %i.ey = load i16, ptr %i.ex, align 2, !tbaa !102
  store i16 %i.ey, ptr %i.eu, align 2, !tbaa !102
  %i.ez = getelementptr inbounds nuw [2 x i8], ptr %i.do, i64 %indvars.iv
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 10 ; 2 uses
  %i.fb = load i16, ptr %i.fa, align 2, !tbaa !102
  %i.fc = zext i16 %i.fb to i64
  %i.fd = getelementptr inbounds nuw [2 x i8], ptr %.fca.0.extract26, i64 %i.fc
  %i.fe = load i16, ptr %i.fd, align 2, !tbaa !102
  store i16 %i.fe, ptr %i.fa, align 2, !tbaa !102
  %i.ff = getelementptr inbounds nuw [2 x i8], ptr %i.do, i64 %indvars.iv
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 12 ; 2 uses
  %i.fh = load i16, ptr %i.fg, align 2, !tbaa !102
  %i.fi = zext i16 %i.fh to i64
  %i.fj = getelementptr inbounds nuw [2 x i8], ptr %.fca.0.extract26, i64 %i.fi
  %i.fk = load i16, ptr %i.fj, align 2, !tbaa !102
  store i16 %i.fk, ptr %i.fg, align 2, !tbaa !102
  %i.fl = getelementptr inbounds nuw [2 x i8], ptr %i.do, i64 %indvars.iv
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 14 ; 2 uses
  %i.fn = load i16, ptr %i.fm, align 2, !tbaa !102
  %i.fo = zext i16 %i.fn to i64
  %i.fp = getelementptr inbounds nuw [2 x i8], ptr %.fca.0.extract26, i64 %i.fo
  %i.fq = load i16, ptr %i.fp, align 2, !tbaa !102
  store i16 %i.fq, ptr %i.fm, align 2, !tbaa !102
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.unr-lcssa, label %.preheader.new, !llvm.loop !205

bb.f:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.3, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed15RawImageDataU168doLookupEii) #22
  unreachable

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge157, %bb.d, %bb.c, %.lr.ph160
  ret void
}

declare { ptr, i32 } @_ZN8rawspeed11TableLookUp8getTableEi(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #2

declare void @_ZNK8rawspeed12RawImageData6anchorEv(ptr noundef nonnull align 8 dereferenceable(624)) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8rawspeed12RawImageDataD2Ev(ptr noundef nonnull align 8 dead_on_return(624) dereferenceable(624) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN8rawspeed12RawImageDataE, i64 16), ptr %0, align 8, !tbaa !92
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !117  ; 4 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN8rawspeed11TableLookUpESt14default_deleteIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !125  ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN8rawspeed11TableLookUpEEclEPS1_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !209
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #25
  br label %_ZNKSt14default_deleteIN8rawspeed11TableLookUpEEclEPS1_.exit.i

_ZNKSt14default_deleteIN8rawspeed11TableLookUpEEclEPS1_.exit.i: ; preds = %bb.c, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 40) #25
  br label %_ZNSt10unique_ptrIN8rawspeed11TableLookUpESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN8rawspeed11TableLookUpESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN8rawspeed11TableLookUpEEclEPS1_.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !93   ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhN8rawspeed27DefaultInitAllocatorAdaptorIhNS0_16AlignedAllocatorIhLi16EEEEEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt10unique_ptrIN8rawspeed11TableLookUpESt14default_deleteIS1_EED2Ev.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !210
  %i.n = icmp ne ptr %i.m, %i.k
  tail call void @llvm.assume(i1 %i.n)
  call void @llvm.assume(i1 true) [ "align"(ptr %i.k, i64 16) ]
  tail call void @_ZdlPvSt11align_val_t(ptr noundef nonnull %i.k, i64 noundef 16) #26
  br label %_ZNSt6vectorIhN8rawspeed27DefaultInitAllocatorAdaptorIhNS0_16AlignedAllocatorIhLi16EEEEEED2Ev.exit

_ZNSt6vectorIhN8rawspeed27DefaultInitAllocatorAdaptorIhNS0_16AlignedAllocatorIhLi16EEEEEED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN8rawspeed11TableLookUpESt14default_deleteIS1_EED2Ev.exit, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 248
  tail call void @_ZN8rawspeed13ImageMetaDataD2Ev(ptr noundef nonnull align 8 dead_on_return(300) dereferenceable(304) %i.o) #26
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !116  ; 4 uses
  %.not.i.i.i1 = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIhN8rawspeed16AlignedAllocatorIhLi16EEEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIhN8rawspeed27DefaultInitAllocatorAdaptorIhNS0_16AlignedAllocatorIhLi16EEEEEED2Ev.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !211
  %i.t = icmp ne ptr %i.s, %i.q
  tail call void @llvm.assume(i1 %i.t)
  call void @llvm.assume(i1 true) [ "align"(ptr %i.q, i64 16) ]
  tail call void @_ZdlPvSt11align_val_t(ptr noundef nonnull %i.q, i64 noundef 16) #26
  br label %_ZNSt6vectorIhN8rawspeed16AlignedAllocatorIhLi16EEEED2Ev.exit

_ZNSt6vectorIhN8rawspeed16AlignedAllocatorIhLi16EEEED2Ev.exit: ; preds = %_ZNSt6vectorIhN8rawspeed27DefaultInitAllocatorAdaptorIhNS0_16AlignedAllocatorIhLi16EEEEEED2Ev.exit, %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !212  ; 3 uses
  %.not.i.i.i2 = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i2, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIhN8rawspeed16AlignedAllocatorIhLi16EEEED2Ev.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !213
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #25
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %_ZNSt6vectorIhN8rawspeed16AlignedAllocatorIhLi16EEEED2Ev.exit, %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !214 ; 3 uses
  %.not.i.i.i3 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i3, label %_ZNSt6vectorIN8rawspeed9BlackAreaESaIS1_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !215
end_hunk_0
