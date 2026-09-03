Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/DeflateEncoder?download=true
inline.NumInlined: 97
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 20
begin_hunk_0_@llvm.memset.p0.i64
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN9NCompress8NDeflate8NEncoder6CCoder9SetPricesERKNS0_7CLevelsE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(39764) %0, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(320) %1) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 3 uses
  %i.b = ptrtoaddr ptr %0 to i64                  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1268
  %i.d = load i8, ptr %i.c, align 4, !tbaa !37, !range !54, !noundef !55
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %.loopexit, label %.preheader27

.preheader27:                                     ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1392 ; 5 uses
  %i.g = sub i64 %i.b, %i.a
  %i.h = add i64 %i.g, 1391
  %diff.check = icmp ult i64 %i.h, 31
  br i1 %diff.check, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %.preheader27
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %wide.load = load <16 x i8>, ptr %1, align 1, !tbaa !62 ; 2 uses
  %wide.load41 = load <16 x i8>, ptr %i.i, align 1, !tbaa !62 ; 2 uses
  %i.j = icmp eq <16 x i8> %wide.load, zeroinitializer
  %i.k = icmp eq <16 x i8> %wide.load41, zeroinitializer
  %i.l = select <16 x i1> %i.j, <16 x i8> splat (i8 11), <16 x i8> %wide.load
  %i.m = select <16 x i1> %i.k, <16 x i8> splat (i8 11), <16 x i8> %wide.load41
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1408
  store <16 x i8> %i.l, ptr %i.f, align 8, !tbaa !62
  store <16 x i8> %i.m, ptr %i.n, align 8, !tbaa !62
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48
  %wide.load.1 = load <16 x i8>, ptr %i.o, align 1, !tbaa !62 ; 2 uses
  %wide.load41.1 = load <16 x i8>, ptr %i.p, align 1, !tbaa !62 ; 2 uses
  %i.q = icmp eq <16 x i8> %wide.load.1, zeroinitializer
  %i.r = icmp eq <16 x i8> %wide.load41.1, zeroinitializer
  %i.s = select <16 x i1> %i.q, <16 x i8> splat (i8 11), <16 x i8> %wide.load.1
  %i.t = select <16 x i1> %i.r, <16 x i8> splat (i8 11), <16 x i8> %wide.load41.1
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1424
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1440
  store <16 x i8> %i.s, ptr %i.u, align 8, !tbaa !62
  store <16 x i8> %i.t, ptr %i.v, align 8, !tbaa !62
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 80
  %wide.load.2 = load <16 x i8>, ptr %i.w, align 1, !tbaa !62 ; 2 uses
  %wide.load41.2 = load <16 x i8>, ptr %i.x, align 1, !tbaa !62 ; 2 uses
  %i.y = icmp eq <16 x i8> %wide.load.2, zeroinitializer
  %i.z = icmp eq <16 x i8> %wide.load41.2, zeroinitializer
  %i.aa = select <16 x i1> %i.y, <16 x i8> splat (i8 11), <16 x i8> %wide.load.2
  %i.ab = select <16 x i1> %i.z, <16 x i8> splat (i8 11), <16 x i8> %wide.load41.2
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1456
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1472
  store <16 x i8> %i.aa, ptr %i.ac, align 8, !tbaa !62
  store <16 x i8> %i.ab, ptr %i.ad, align 8, !tbaa !62
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 112
  %wide.load.3 = load <16 x i8>, ptr %i.ae, align 1, !tbaa !62 ; 2 uses
  %wide.load41.3 = load <16 x i8>, ptr %i.af, align 1, !tbaa !62 ; 2 uses
  %i.ag = icmp eq <16 x i8> %wide.load.3, zeroinitializer
  %i.ah = icmp eq <16 x i8> %wide.load41.3, zeroinitializer
  %i.ai = select <16 x i1> %i.ag, <16 x i8> splat (i8 11), <16 x i8> %wide.load.3
  %i.aj = select <16 x i1> %i.ah, <16 x i8> splat (i8 11), <16 x i8> %wide.load41.3
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1488
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1504
  store <16 x i8> %i.ai, ptr %i.ak, align 8, !tbaa !62
  store <16 x i8> %i.aj, ptr %i.al, align 8, !tbaa !62
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 144
  %wide.load.4 = load <16 x i8>, ptr %i.am, align 1, !tbaa !62 ; 2 uses
  %wide.load41.4 = load <16 x i8>, ptr %i.an, align 1, !tbaa !62 ; 2 uses
  %i.ao = icmp eq <16 x i8> %wide.load.4, zeroinitializer
  %i.ap = icmp eq <16 x i8> %wide.load41.4, zeroinitializer
  %i.aq = select <16 x i1> %i.ao, <16 x i8> splat (i8 11), <16 x i8> %wide.load.4
  %i.ar = select <16 x i1> %i.ap, <16 x i8> splat (i8 11), <16 x i8> %wide.load41.4
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1520
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1536
  store <16 x i8> %i.aq, ptr %i.as, align 8, !tbaa !62
  store <16 x i8> %i.ar, ptr %i.at, align 8, !tbaa !62
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 176
  %wide.load.5 = load <16 x i8>, ptr %i.au, align 1, !tbaa !62 ; 2 uses
  %wide.load41.5 = load <16 x i8>, ptr %i.av, align 1, !tbaa !62 ; 2 uses
  %i.aw = icmp eq <16 x i8> %wide.load.5, zeroinitializer
  %i.ax = icmp eq <16 x i8> %wide.load41.5, zeroinitializer
  %i.ay = select <16 x i1> %i.aw, <16 x i8> splat (i8 11), <16 x i8> %wide.load.5
  %i.az = select <16 x i1> %i.ax, <16 x i8> splat (i8 11), <16 x i8> %wide.load41.5
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 1552
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 1568
  store <16 x i8> %i.ay, ptr %i.ba, align 8, !tbaa !62
  store <16 x i8> %i.az, ptr %i.bb, align 8, !tbaa !62
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 208
  %wide.load.6 = load <16 x i8>, ptr %i.bc, align 1, !tbaa !62 ; 2 uses
  %wide.load41.6 = load <16 x i8>, ptr %i.bd, align 1, !tbaa !62 ; 2 uses
  %i.be = icmp eq <16 x i8> %wide.load.6, zeroinitializer
  %i.bf = icmp eq <16 x i8> %wide.load41.6, zeroinitializer
  %i.bg = select <16 x i1> %i.be, <16 x i8> splat (i8 11), <16 x i8> %wide.load.6
  %i.bh = select <16 x i1> %i.bf, <16 x i8> splat (i8 11), <16 x i8> %wide.load41.6
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 1584
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 1600
  store <16 x i8> %i.bg, ptr %i.bi, align 8, !tbaa !62
  store <16 x i8> %i.bh, ptr %i.bj, align 8, !tbaa !62
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 240
  %wide.load.7 = load <16 x i8>, ptr %i.bk, align 1, !tbaa !62 ; 2 uses
  %wide.load41.7 = load <16 x i8>, ptr %i.bl, align 1, !tbaa !62 ; 2 uses
  %i.bm = icmp eq <16 x i8> %wide.load.7, zeroinitializer
  %i.bn = icmp eq <16 x i8> %wide.load41.7, zeroinitializer
  %i.bo = select <16 x i1> %i.bm, <16 x i8> splat (i8 11), <16 x i8> %wide.load.7
  %i.bp = select <16 x i1> %i.bn, <16 x i8> splat (i8 11), <16 x i8> %wide.load41.7
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 1616
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 1632
  store <16 x i8> %i.bo, ptr %i.bq, align 8, !tbaa !62
  store <16 x i8> %i.bp, ptr %i.br, align 8, !tbaa !62
  br label %.preheader26

.preheader26:                                     ; preds = %scalar.ph, %vector.body
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 1308
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !46 ; 4 uses
  %.not31 = icmp eq i32 %i.bt, 0
  br i1 %.not31, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader26
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 1328
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !48 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 1648 ; 3 uses
  %wide.trip.count = zext i32 %i.bt to i64        ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.bx = icmp eq i32 %i.bt, 1
  br i1 %i.bx, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  br label %bb.b

scalar.ph:                                        ; preds = %.preheader27, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ 0, %.preheader27 ] ; 6 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !62  ; 2 uses
  %.not25 = icmp eq i8 %i.bz, 0
  %i.ca = select i1 %.not25, i8 11, i8 %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %i.f, i64 %indvars.iv
  store i8 %i.ca, ptr %i.cb, align 4, !tbaa !62
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !62  ; 2 uses
  %.not25.1 = icmp eq i8 %i.cd, 0
  %i.ce = select i1 %.not25.1, i8 11, i8 %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %i.f, i64 %indvars.iv.next
  store i8 %i.ce, ptr %i.cf, align 1, !tbaa !62
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next.1
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !62  ; 2 uses
  %.not25.2 = icmp eq i8 %i.ch, 0
  %i.ci = select i1 %.not25.2, i8 11, i8 %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.f, i64 %indvars.iv.next.1
  store i8 %i.ci, ptr %i.cj, align 2, !tbaa !62
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next.2
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !62  ; 2 uses
  %.not25.3 = icmp eq i8 %i.cl, 0
  %i.cm = select i1 %.not25.3, i8 11, i8 %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %i.f, i64 %indvars.iv.next.2
  store i8 %i.cm, ptr %i.cn, align 1, !tbaa !62
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, 256
  br i1 %exitcond.not.3, label %.preheader26, label %scalar.ph, !llvm.loop !133

.preheader.loopexit.unr-lcssa:                    ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv33.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next34.1, %.preheader.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod43 = trunc i32 %i.bt to i1
  tail call void @llvm.assume(i1 %lcmp.mod43)
  %i.co = getelementptr inbounds nuw i8, ptr @_ZN9NCompress8NDeflate8NEncoderL10g_LenSlotsE, i64 %indvars.iv33.epil.init
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !62
  %i.cq = zext i8 %i.cp to i64                    ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 %i.cq
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 257
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !62  ; 2 uses
  %.not24.epil = icmp eq i8 %i.ct, 0
  %i.cu = select i1 %.not24.epil, i8 11, i8 %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.cq
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !62
  %i.cx = add i8 %i.cu, %i.cw
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bw, i64 %indvars.iv33.epil.init
  store i8 %i.cx, ptr %i.cy, align 1, !tbaa !62
  br label %.preheader

.preheader:                                       ; preds = %.epil.preheader, %.preheader.loopexit.unr-lcssa, %.preheader26
  %i.cz = add nuw i64 %i.a, 288
  %i.da = add nuw i64 %i.a, 320
  %i.db = add nuw i64 %i.b, 1904
  %i.dc = add nuw i64 %i.b, 1936
  %rt.bound0 = icmp ult i64 %i.db, %i.da
  %rt.bound1 = icmp ult i64 %i.cz, %i.dc
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  %rt.guard = freeze i1 %rt.conflict
  br i1 %rt.guard, label %.preheader.rtscalar, label %.preheader.rtvec

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv33 = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next34.1, %bb.b ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.dd = getelementptr inbounds nuw i8, ptr @_ZN9NCompress8NDeflate8NEncoderL10g_LenSlotsE, i64 %indvars.iv33
  %i.de = load i8, ptr %i.dd, align 2, !tbaa !62
  %i.df = zext i8 %i.de to i64                    ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 %i.df
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 257
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !62  ; 2 uses
  %.not24 = icmp eq i8 %i.di, 0
  %i.dj = select i1 %.not24, i8 11, i8 %i.di
  %i.dk = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.df
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !62
  %i.dm = add i8 %i.dj, %i.dl
  %i.dn = getelementptr inbounds nuw i8, ptr %i.bw, i64 %indvars.iv33
  store i8 %i.dm, ptr %i.dn, align 2, !tbaa !62
  %indvars.iv.next34 = or disjoint i64 %indvars.iv33, 1 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr @_ZN9NCompress8NDeflate8NEncoderL10g_LenSlotsE, i64 %indvars.iv.next34
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !62
  %i.dq = zext i8 %i.dp to i64                    ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 %i.dq
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 257
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !62  ; 2 uses
  %.not24.1 = icmp eq i8 %i.dt, 0
  %i.du = select i1 %.not24.1, i8 11, i8 %i.dt
  %i.dv = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.dq
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !62
  %i.dx = add i8 %i.du, %i.dw
  %i.dy = getelementptr inbounds nuw i8, ptr %i.bw, i64 %indvars.iv.next34
  store i8 %i.dx, ptr %i.dy, align 1, !tbaa !62
  %indvars.iv.next34.1 = add nuw nsw i64 %indvars.iv33, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %bb.b, !llvm.loop !134

.loopexit:                                        ; preds = %.preheader.rtvec, %.preheader.rtscalar, %bb.a
  ret void

.preheader.rtvec:                                 ; preds = %.preheader
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 1904
  %i.eb = load <16 x i8>, ptr %i.dz, align 1, !tbaa !62 ; 2 uses
  %i.ec = icmp eq <16 x i8> %i.eb, zeroinitializer
  %i.ed = add <16 x i8> %i.eb, <i8 0, i8 0, i8 0, i8 0, i8 1, i8 1, i8 2, i8 2, i8 3, i8 3, i8 4, i8 4, i8 5, i8 5, i8 6, i8 6>
  %i.ee = select <16 x i1> %i.ec, <16 x i8> <i8 6, i8 6, i8 6, i8 6, i8 7, i8 7, i8 8, i8 8, i8 9, i8 9, i8 10, i8 10, i8 11, i8 11, i8 12, i8 12>, <16 x i8> %i.ed
  store <16 x i8> %i.ee, ptr %i.ea, align 8, !tbaa !62
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 1920
  %i.eh = load <16 x i8>, ptr %i.ef, align 1, !tbaa !62 ; 2 uses
  %i.ei = icmp eq <16 x i8> %i.eh, zeroinitializer
  %i.ej = add <16 x i8> %i.eh, <i8 7, i8 7, i8 8, i8 8, i8 9, i8 9, i8 10, i8 10, i8 11, i8 11, i8 12, i8 12, i8 13, i8 13, i8 14, i8 14>
  %i.ek = select <16 x i1> %i.ei, <16 x i8> <i8 13, i8 13, i8 14, i8 14, i8 15, i8 15, i8 16, i8 16, i8 17, i8 17, i8 18, i8 18, i8 19, i8 19, i8 20, i8 20>, <16 x i8> %i.ej
  store <16 x i8> %i.ek, ptr %i.eg, align 8, !tbaa !62
  br label %.loopexit

.preheader.rtscalar:                              ; preds = %.preheader
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 1904
  %i.en = load i8, ptr %i.el, align 1, !tbaa !62  ; 2 uses
  %.not.scalar = icmp eq i8 %i.en, 0
  %i.eo = select i1 %.not.scalar, i8 6, i8 %i.en
  store i8 %i.eo, ptr %i.em, align 8, !tbaa !62
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 289
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !62  ; 2 uses
  %.not.1.scalar = icmp eq i8 %i.eq, 0
  %i.er = select i1 %.not.1.scalar, i8 6, i8 %i.eq
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 1905
  store i8 %i.er, ptr %i.es, align 1, !tbaa !62
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 290
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !62  ; 2 uses
  %.not.2.scalar = icmp eq i8 %i.eu, 0
  %i.ev = select i1 %.not.2.scalar, i8 6, i8 %i.eu
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 1906
  store i8 %i.ev, ptr %i.ew, align 2, !tbaa !62
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 291
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !62  ; 2 uses
  %.not.3.scalar = icmp eq i8 %i.ey, 0
  %i.ez = select i1 %.not.3.scalar, i8 6, i8 %i.ey
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 1907
  store i8 %i.ez, ptr %i.fa, align 1, !tbaa !62
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 292
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !62  ; 2 uses
  %.not.4.scalar = icmp eq i8 %i.fc, 0
  %i.fd = add i8 %i.fc, 1
  %i.fe = select i1 %.not.4.scalar, i8 7, i8 %i.fd
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 1908
  store i8 %i.fe, ptr %i.ff, align 4, !tbaa !62
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 293
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !62  ; 2 uses
  %.not.5.scalar = icmp eq i8 %i.fh, 0
  %i.fi = add i8 %i.fh, 1
  %i.fj = select i1 %.not.5.scalar, i8 7, i8 %i.fi
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 1909
  store i8 %i.fj, ptr %i.fk, align 1, !tbaa !62
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 294
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !62  ; 2 uses
  %.not.6.scalar = icmp eq i8 %i.fm, 0
  %i.fn = add i8 %i.fm, 2
  %i.fo = select i1 %.not.6.scalar, i8 8, i8 %i.fn
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 1910
  store i8 %i.fo, ptr %i.fp, align 2, !tbaa !62
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 295
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !62  ; 2 uses
  %.not.7.scalar = icmp eq i8 %i.fr, 0
  %i.fs = add i8 %i.fr, 2
  %i.ft = select i1 %.not.7.scalar, i8 8, i8 %i.fs
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 1911
  store i8 %i.ft, ptr %i.fu, align 1, !tbaa !62
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !62  ; 2 uses
  %.not.8.scalar = icmp eq i8 %i.fw, 0
  %i.fx = add i8 %i.fw, 3
  %i.fy = select i1 %.not.8.scalar, i8 9, i8 %i.fx
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 1912
  store i8 %i.fy, ptr %i.fz, align 8, !tbaa !62
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 297
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !62  ; 2 uses
  %.not.9.scalar = icmp eq i8 %i.gb, 0
  %i.gc = add i8 %i.gb, 3
  %i.gd = select i1 %.not.9.scalar, i8 9, i8 %i.gc
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 1913
  store i8 %i.gd, ptr %i.ge, align 1, !tbaa !62
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 298
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !62  ; 2 uses
  %.not.10.scalar = icmp eq i8 %i.gg, 0
  %i.gh = add i8 %i.gg, 4
  %i.gi = select i1 %.not.10.scalar, i8 10, i8 %i.gh
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 1914
  store i8 %i.gi, ptr %i.gj, align 2, !tbaa !62
  %i.gk = getelementptr inbounds nuw i8, ptr %1, i64 299
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !62  ; 2 uses
  %.not.11.scalar = icmp eq i8 %i.gl, 0
  %i.gm = add i8 %i.gl, 4
  %i.gn = select i1 %.not.11.scalar, i8 10, i8 %i.gm
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 1915
  store i8 %i.gn, ptr %i.go, align 1, !tbaa !62
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 300
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !62  ; 2 uses
  %.not.12.scalar = icmp eq i8 %i.gq, 0
  %i.gr = add i8 %i.gq, 5
  %i.gs = select i1 %.not.12.scalar, i8 11, i8 %i.gr
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 1916
  store i8 %i.gs, ptr %i.gt, align 4, !tbaa !62
  %i.gu = getelementptr inbounds nuw i8, ptr %1, i64 301
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !62  ; 2 uses
  %.not.13.scalar = icmp eq i8 %i.gv, 0
  %i.gw = add i8 %i.gv, 5
  %i.gx = select i1 %.not.13.scalar, i8 11, i8 %i.gw
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 1917
  store i8 %i.gx, ptr %i.gy, align 1, !tbaa !62
  %i.gz = getelementptr inbounds nuw i8, ptr %1, i64 302
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !62  ; 2 uses
  %.not.14.scalar = icmp eq i8 %i.ha, 0
  %i.hb = add i8 %i.ha, 6
  %i.hc = select i1 %.not.14.scalar, i8 12, i8 %i.hb
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 1918
  store i8 %i.hc, ptr %i.hd, align 2, !tbaa !62
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 303
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !62  ; 2 uses
  %.not.15.scalar = icmp eq i8 %i.hf, 0
  %i.hg = add i8 %i.hf, 6
  %i.hh = select i1 %.not.15.scalar, i8 12, i8 %i.hg
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 1919
  store i8 %i.hh, ptr %i.hi, align 1, !tbaa !62
  %i.hj = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !62  ; 2 uses
  %.not.16.scalar = icmp eq i8 %i.hk, 0
  %i.hl = add i8 %i.hk, 7
  %i.hm = select i1 %.not.16.scalar, i8 13, i8 %i.hl
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 1920
  store i8 %i.hm, ptr %i.hn, align 8, !tbaa !62
  %i.ho = getelementptr inbounds nuw i8, ptr %1, i64 305
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !62  ; 2 uses
  %.not.17.scalar = icmp eq i8 %i.hp, 0
  %i.hq = add i8 %i.hp, 7
  %i.hr = select i1 %.not.17.scalar, i8 13, i8 %i.hq
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 1921
  store i8 %i.hr, ptr %i.hs, align 1, !tbaa !62
  %i.ht = getelementptr inbounds nuw i8, ptr %1, i64 306
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !62  ; 2 uses
  %.not.18.scalar = icmp eq i8 %i.hu, 0
  %i.hv = add i8 %i.hu, 8
  %i.hw = select i1 %.not.18.scalar, i8 14, i8 %i.hv
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 1922
  store i8 %i.hw, ptr %i.hx, align 2, !tbaa !62
  %i.hy = getelementptr inbounds nuw i8, ptr %1, i64 307
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !62  ; 2 uses
  %.not.19.scalar = icmp eq i8 %i.hz, 0
  %i.ia = add i8 %i.hz, 8
  %i.ib = select i1 %.not.19.scalar, i8 14, i8 %i.ia
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 1923
  store i8 %i.ib, ptr %i.ic, align 1, !tbaa !62
  %i.id = getelementptr inbounds nuw i8, ptr %1, i64 308
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !62  ; 2 uses
  %.not.20.scalar = icmp eq i8 %i.ie, 0
  %i.if = add i8 %i.ie, 9
  %i.ig = select i1 %.not.20.scalar, i8 15, i8 %i.if
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 1924
  store i8 %i.ig, ptr %i.ih, align 4, !tbaa !62
  %i.ii = getelementptr inbounds nuw i8, ptr %1, i64 309
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !62  ; 2 uses
  %.not.21.scalar = icmp eq i8 %i.ij, 0
  %i.ik = add i8 %i.ij, 9
  %i.il = select i1 %.not.21.scalar, i8 15, i8 %i.ik
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 1925
  store i8 %i.il, ptr %i.im, align 1, !tbaa !62
  %i.in = getelementptr inbounds nuw i8, ptr %1, i64 310
  %i.io = load i8, ptr %i.in, align 1, !tbaa !62  ; 2 uses
  %.not.22.scalar = icmp eq i8 %i.io, 0
  %i.ip = add i8 %i.io, 10
  %i.iq = select i1 %.not.22.scalar, i8 16, i8 %i.ip
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 1926
  store i8 %i.iq, ptr %i.ir, align 2, !tbaa !62
  %i.is = getelementptr inbounds nuw i8, ptr %1, i64 311
  %i.it = load i8, ptr %i.is, align 1, !tbaa !62  ; 2 uses
  %.not.23.scalar = icmp eq i8 %i.it, 0
  %i.iu = add i8 %i.it, 10
  %i.iv = select i1 %.not.23.scalar, i8 16, i8 %i.iu
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 1927
  store i8 %i.iv, ptr %i.iw, align 1, !tbaa !62
  %i.ix = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.iy = load i8, ptr %i.ix, align 1, !tbaa !62  ; 2 uses
  %.not.24.scalar = icmp eq i8 %i.iy, 0
  %i.iz = add i8 %i.iy, 11
  %i.ja = select i1 %.not.24.scalar, i8 17, i8 %i.iz
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 1928
  store i8 %i.ja, ptr %i.jb, align 8, !tbaa !62
  %i.jc = getelementptr inbounds nuw i8, ptr %1, i64 313
  %i.jd = load i8, ptr %i.jc, align 1, !tbaa !62  ; 2 uses
  %.not.25.scalar = icmp eq i8 %i.jd, 0
  %i.je = add i8 %i.jd, 11
  %i.jf = select i1 %.not.25.scalar, i8 17, i8 %i.je
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 1929
  store i8 %i.jf, ptr %i.jg, align 1, !tbaa !62
  %i.jh = getelementptr inbounds nuw i8, ptr %1, i64 314
  %i.ji = load i8, ptr %i.jh, align 1, !tbaa !62  ; 2 uses
  %.not.26.scalar = icmp eq i8 %i.ji, 0
  %i.jj = add i8 %i.ji, 12
  %i.jk = select i1 %.not.26.scalar, i8 18, i8 %i.jj
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 1930
  store i8 %i.jk, ptr %i.jl, align 2, !tbaa !62
  %i.jm = getelementptr inbounds nuw i8, ptr %1, i64 315
  %i.jn = load i8, ptr %i.jm, align 1, !tbaa !62  ; 2 uses
  %.not.27.scalar = icmp eq i8 %i.jn, 0
  %i.jo = add i8 %i.jn, 12
  %i.jp = select i1 %.not.27.scalar, i8 18, i8 %i.jo
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 1931
  store i8 %i.jp, ptr %i.jq, align 1, !tbaa !62
  %i.jr = getelementptr inbounds nuw i8, ptr %1, i64 316
  %i.js = load i8, ptr %i.jr, align 1, !tbaa !62  ; 2 uses
  %.not.28.scalar = icmp eq i8 %i.js, 0
  %i.jt = add i8 %i.js, 13
  %i.ju = select i1 %.not.28.scalar, i8 19, i8 %i.jt
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 1932
  store i8 %i.ju, ptr %i.jv, align 4, !tbaa !62
  %i.jw = getelementptr inbounds nuw i8, ptr %1, i64 317
  %i.jx = load i8, ptr %i.jw, align 1, !tbaa !62  ; 2 uses
  %.not.29.scalar = icmp eq i8 %i.jx, 0
  %i.jy = add i8 %i.jx, 13
  %i.jz = select i1 %.not.29.scalar, i8 19, i8 %i.jy
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 1933
  store i8 %i.jz, ptr %i.ka, align 1, !tbaa !62
  %i.kb = getelementptr inbounds nuw i8, ptr %1, i64 318
  %i.kc = load i8, ptr %i.kb, align 1, !tbaa !62  ; 2 uses
  %.not.30.scalar = icmp eq i8 %i.kc, 0
  %i.kd = add i8 %i.kc, 14
  %i.ke = select i1 %.not.30.scalar, i8 20, i8 %i.kd
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 1934
  store i8 %i.ke, ptr %i.kf, align 2, !tbaa !62
  %i.kg = getelementptr inbounds nuw i8, ptr %1, i64 319
  %i.kh = load i8, ptr %i.kg, align 1, !tbaa !62  ; 2 uses
  %.not.31.scalar = icmp eq i8 %i.kh, 0
  %i.ki = add i8 %i.kh, 14
  %i.kj = select i1 %.not.31.scalar, i8 20, i8 %i.ki
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 1935
  store i8 %i.kj, ptr %i.kk, align 1, !tbaa !62
  br label %.loopexit
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_ZN9NCompress8NDeflate8NEncoder19Huffman_ReverseBitsEPjPKhj(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #6 {
bb.a:
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %2 to i64           ; 5 uses
  %min.iters.check = icmp ult i32 %2, 4
  br i1 %min.iters.check, label %.lr.ph.preheader20, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.a = shl nuw nsw i64 %wide.trip.count, 2
  %scevgep = getelementptr i8, ptr %0, i64 %i.a
  %scevgep18 = getelementptr i8, ptr %1, i64 %wide.trip.count
  %bound0 = icmp ult ptr %0, %scevgep18
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader20, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 4294967292   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.b, align 4, !tbaa !12, !alias.scope !140, !noalias !141
  %i.c = trunc <4 x i32> %wide.load to <4 x i16>
  %i.d = tail call <4 x i16> @llvm.bitreverse.v4i16(<4 x i16> %i.c)
  %i.e = zext <4 x i16> %i.d to <4 x i32>
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %index
  %wide.load19 = load <4 x i8>, ptr %i.f, align 1, !tbaa !62, !alias.scope !141
  %i.g = zext <4 x i8> %wide.load19 to <4 x i32>
  %i.h = sub nsw <4 x i32> splat (i32 16), %i.g
  %i.i = lshr <4 x i32> %i.e, %i.h
  store <4 x i32> %i.i, ptr %i.b, align 4, !tbaa !12, !alias.scope !140, !noalias !141
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.j = icmp eq i64 %index.next, %n.vec
  br i1 %i.j, label %middle.block, label %vector.body, !llvm.loop !138

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader20

.lr.ph.preheader20:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader20, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader20 ] ; 3 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !12
  %trunc = trunc i32 %i.l to i16
  %rev = tail call i16 @llvm.bitreverse.i16(i16 %trunc)
  %i.m = zext i16 %rev to i32
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.o = load i8, ptr %i.n, align 1, !tbaa !62
  %i.p = zext i8 %i.o to i32
  %i.q = sub nsw i32 16, %i.p
  %i.r = lshr i32 %i.m, %i.q
  store i32 %i.r, ptr %i.k, align 4, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !139
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9NCompress8NDeflate8NEncoder6CCoder10WriteBlockEv(ptr noundef nonnull align 8 dereferenceable(39764) %0) local_unnamed_addr #0 align 2 {
vector.ph:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3536 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1936 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.c, align 8, !tbaa !12
  %i.d = trunc <4 x i32> %wide.load to <4 x i16>
  %i.e = tail call <4 x i16> @llvm.bitreverse.v4i16(<4 x i16> %i.d)
  %i.f = zext <4 x i16> %i.e to <4 x i32>
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 %index
  %wide.load258 = load <4 x i8>, ptr %i.g, align 4, !tbaa !62
  %i.h = zext <4 x i8> %wide.load258 to <4 x i32>
  %i.i = sub nsw <4 x i32> splat (i32 16), %i.h
  %i.j = lshr <4 x i32> %i.f, %i.i
  store <4 x i32> %i.j, ptr %i.c, align 8, !tbaa !12
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.k = icmp eq i64 %index.next, 288
  br i1 %i.k, label %_ZN9NCompress8NDeflate8NEncoder19Huffman_ReverseBitsEPjPKhj.exit, label %vector.body, !llvm.loop !142

_ZN9NCompress8NDeflate8NEncoder19Huffman_ReverseBitsEPjPKhj.exit: ; preds = %vector.body
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4688 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2224 ; 2 uses
  br label %vector.body260

vector.body260:                                   ; preds = %vector.body260, %_ZN9NCompress8NDeflate8NEncoder19Huffman_ReverseBitsEPjPKhj.exit
  %index261 = phi i64 [ 0, %_ZN9NCompress8NDeflate8NEncoder19Huffman_ReverseBitsEPjPKhj.exit ], [ %index.next264, %vector.body260 ] ; 3 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %index261 ; 2 uses
  %wide.load262 = load <4 x i32>, ptr %i.n, align 8, !tbaa !12
  %i.o = trunc <4 x i32> %wide.load262 to <4 x i16>
  %i.p = tail call <4 x i16> @llvm.bitreverse.v4i16(<4 x i16> %i.o)
  %i.q = zext <4 x i16> %i.p to <4 x i32>
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 %index261
  %wide.load263 = load <4 x i8>, ptr %i.r, align 4, !tbaa !62
  %i.s = zext <4 x i8> %wide.load263 to <4 x i32>
  %i.t = sub nsw <4 x i32> splat (i32 16), %i.s
  %i.u = lshr <4 x i32> %i.q, %i.t
  store <4 x i32> %i.u, ptr %i.n, align 8, !tbaa !12
  %index.next264 = add nuw i64 %index261, 4       ; 2 uses
  %i.v = icmp eq i64 %index.next264, 32
  br i1 %i.v, label %_ZN9NCompress8NDeflate8NEncoder19Huffman_ReverseBitsEPjPKhj.exit26.preheader, label %vector.body260, !llvm.loop !143

_ZN9NCompress8NDeflate8NEncoder19Huffman_ReverseBitsEPjPKhj.exit26.preheader: ; preds = %vector.body260
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1372 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !82
  %.not = icmp eq i32 %i.x, 0
  br i1 %.not, label %_ZN9NCompress8NDeflate8NEncoder19Huffman_ReverseBitsEPjPKhj.exit26._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN9NCompress8NDeflate8NEncoder19Huffman_ReverseBitsEPjPKhj.exit26.preheader
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1248
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1168 ; 20 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1224 ; 29 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1228 ; 20 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 30 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1180 ; 10 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1328
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1320
  br label %bb.e

_ZN9NCompress8NDeflate8NEncoder19Huffman_ReverseBitsEPjPKhj.exit26._crit_edge: ; preds = %_ZN12CBitlEncoder9WriteBitsEjj.exit36, %_ZN9NCompress8NDeflate8NEncoder19Huffman_ReverseBitsEPjPKhj.exit26.preheader
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1168 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 2192
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !62  ; 2 uses
  %.not13.i = icmp eq i8 %i.ai, 0
  br i1 %.not13.i, label %_ZN12CBitlEncoder9WriteBitsEjj.exit, label %.lr.ph.i27

.lr.ph.i27:                                       ; preds = %_ZN9NCompress8NDeflate8NEncoder19Huffman_ReverseBitsEPjPKhj.exit26._crit_edge
  %i.aj = zext i8 %i.ai to i32                    ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 4560
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !12 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1224 ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1228 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1180 ; 2 uses
  %.pre.i = load i32, ptr %i.am, align 8, !tbaa !78 ; 4 uses
  %i.aq = icmp ugt i32 %.pre.i, %i.aj
  %.pre148 = load i8, ptr %i.an, align 4, !tbaa !79 ; 2 uses
  br i1 %i.aq, label %.loopexit143, label %bb.a

bb.a:                                             ; preds = %.lr.ph.i27
  %i.ar = sub nuw nsw i32 %i.aj, %.pre.i          ; 4 uses
  %i.as = sub nsw i32 8, %.pre.i
  %i.at = shl i32 %i.al, %i.as
  %i.au = trunc i32 %i.at to i8
  %i.av = or i8 %.pre148, %i.au
  %i.aw = load ptr, ptr %i.ag, align 8, !tbaa !20
  %i.ax = load i32, ptr %i.ao, align 8, !tbaa !21 ; 2 uses
  %i.ay = add i32 %i.ax, 1
  store i32 %i.ay, ptr %i.ao, align 8, !tbaa !21
  %i.az = zext i32 %i.ax to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.az
  store i8 %i.av, ptr %i.ba, align 1, !tbaa !62
  %i.bb = load i32, ptr %i.ao, align 8, !tbaa !21
  %i.bc = load i32, ptr %i.ap, align 4, !tbaa !80
  %i.bd = icmp eq i32 %i.bb, %i.bc
  br i1 %i.bd, label %bb.b, label %_ZN10COutBuffer9WriteByteEh.exit.i.peel

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN10COutBuffer14FlushWithCheckEv(ptr noundef nonnull align 8 dereferenceable(61) %i.ag)
  br label %_ZN10COutBuffer9WriteByteEh.exit.i.peel

_ZN10COutBuffer9WriteByteEh.exit.i.peel:          ; preds = %bb.b, %bb.a
  %i.be = load i32, ptr %i.am, align 8, !tbaa !78
  store i32 8, ptr %i.am, align 8, !tbaa !78
  store i8 0, ptr %i.an, align 4, !tbaa !79
  %.not.i.peel = icmp eq i32 %i.ar, 0
  br i1 %.not.i.peel, label %_ZN12CBitlEncoder9WriteBitsEjj.exit, label %.peel.next141

.peel.next141:                                    ; preds = %_ZN10COutBuffer9WriteByteEh.exit.i.peel
  %i.bf = lshr i32 %i.al, %i.be                   ; 2 uses
  %i.bg = icmp samesign ult i32 %i.ar, 8
  br i1 %i.bg, label %.loopexit143, label %.lr.ph255

bb.c:                                             ; preds = %_ZN10COutBuffer9WriteByteEh.exit.i
  %i.bh = lshr i32 %.0814.i254, %i.cb             ; 2 uses
  %i.bi = icmp ult i32 %i.br, 8
  br i1 %i.bi, label %.loopexit143, label %.lr.ph255, !llvm.loop !144

.loopexit143:                                     ; preds = %bb.c, %.peel.next141, %.lr.ph.i27
  %i.bj = phi i8 [ %.pre148, %.lr.ph.i27 ], [ 0, %.peel.next141 ], [ 0, %bb.c ]
  %.lcssa = phi i32 [ %.pre.i, %.lr.ph.i27 ], [ 8, %.peel.next141 ], [ 8, %bb.c ] ; 2 uses
  %.015.i.lcssa = phi i32 [ %i.aj, %.lr.ph.i27 ], [ %i.ar, %.peel.next141 ], [ %i.br, %bb.c ] ; 2 uses
  %.0814.i.lcssa = phi i32 [ %i.al, %.lr.ph.i27 ], [ %i.bf, %.peel.next141 ], [ %i.bh, %bb.c ]
  %notmask.i = shl nsw i32 -1, %.015.i.lcssa
  %i.bk = xor i32 %notmask.i, -1
  %i.bl = and i32 %.0814.i.lcssa, %i.bk
  %i.bm = sub i32 8, %.lcssa
  %i.bn = shl i32 %i.bl, %i.bm
  %i.bo = trunc i32 %i.bn to i8
  %i.bp = or i8 %i.bj, %i.bo
  store i8 %i.bp, ptr %i.an, align 4, !tbaa !79
  %i.bq = sub nuw i32 %.lcssa, %.015.i.lcssa
  store i32 %i.bq, ptr %i.am, align 8, !tbaa !78
  br label %_ZN12CBitlEncoder9WriteBitsEjj.exit

.lr.ph255:                                        ; preds = %.peel.next141, %bb.c
  %.0814.i254 = phi i32 [ %i.bh, %bb.c ], [ %i.bf, %.peel.next141 ] ; 2 uses
  %.015.i253 = phi i32 [ %i.br, %bb.c ], [ %i.ar, %.peel.next141 ]
  %i.br = add nsw i32 %.015.i253, -8              ; 4 uses
  %i.bs = trunc i32 %.0814.i254 to i8
  %i.bt = load ptr, ptr %i.ag, align 8, !tbaa !20
  %i.bu = load i32, ptr %i.ao, align 8, !tbaa !21 ; 2 uses
  %i.bv = add i32 %i.bu, 1
  store i32 %i.bv, ptr %i.ao, align 8, !tbaa !21
  %i.bw = zext i32 %i.bu to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bw
  store i8 %i.bs, ptr %i.bx, align 1, !tbaa !62
  %i.by = load i32, ptr %i.ao, align 8, !tbaa !21
  %i.bz = load i32, ptr %i.ap, align 4, !tbaa !80
  %i.ca = icmp eq i32 %i.by, %i.bz
  br i1 %i.ca, label %bb.d, label %_ZN10COutBuffer9WriteByteEh.exit.i

bb.d:                                             ; preds = %.lr.ph255
  tail call void @_ZN10COutBuffer14FlushWithCheckEv(ptr noundef nonnull align 8 dereferenceable(61) %i.ag)
  br label %_ZN10COutBuffer9WriteByteEh.exit.i

_ZN10COutBuffer9WriteByteEh.exit.i:               ; preds = %bb.d, %.lr.ph255
  %i.cb = load i32, ptr %i.am, align 8, !tbaa !78
  store i32 8, ptr %i.am, align 8, !tbaa !78
  store i8 0, ptr %i.an, align 4, !tbaa !79
  %.not.i = icmp eq i32 %i.br, 0
  br i1 %.not.i, label %_ZN12CBitlEncoder9WriteBitsEjj.exit, label %bb.c, !llvm.loop !144

_ZN12CBitlEncoder9WriteBitsEjj.exit:              ; preds = %_ZN10COutBuffer9WriteByteEh.exit.i, %_ZN10COutBuffer9WriteByteEh.exit.i.peel, %_ZN9NCompress8NDeflate8NEncoder19Huffman_ReverseBitsEPjPKhj.exit26._crit_edge, %.loopexit143
  ret void

bb.e:                                             ; preds = %.lr.ph, %_ZN12CBitlEncoder9WriteBitsEjj.exit36
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN12CBitlEncoder9WriteBitsEjj.exit36 ] ; 2 uses
  %i.cc = load ptr, ptr %i.y, align 8, !tbaa !52
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %indvars.iv ; 3 uses
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !86 ; 3 uses
  %i.cf = icmp slt i16 %i.ce, 0
  br i1 %i.cf, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 2
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !87
  %i.ci = zext i16 %i.ch to i64                   ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !62  ; 2 uses
  %.not13.i28 = icmp eq i8 %i.ck, 0
  br i1 %.not13.i28, label %_ZN12CBitlEncoder9WriteBitsEjj.exit36, label %.lr.ph.i29

.lr.ph.i29:                                       ; preds = %bb.f
  %i.cl = zext i8 %i.ck to i32                    ; 3 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ci
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !12 ; 3 uses
  %.pre.i30 = load i32, ptr %i.aa, align 8, !tbaa !78 ; 4 uses
  %i.co = icmp ugt i32 %.pre.i30, %i.cl
  %.pre147 = load i8, ptr %i.ab, align 4, !tbaa !79 ; 2 uses
  br i1 %i.co, label %.loopexit138, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i29
  %i.cp = sub nuw nsw i32 %i.cl, %.pre.i30        ; 4 uses
  %i.cq = sub nsw i32 8, %.pre.i30
  %i.cr = shl i32 %i.cn, %i.cq
  %i.cs = trunc i32 %i.cr to i8
  %i.ct = or i8 %.pre147, %i.cs
  %i.cu = load ptr, ptr %i.z, align 8, !tbaa !20
  %i.cv = load i32, ptr %i.ac, align 8, !tbaa !21 ; 2 uses
  %i.cw = add i32 %i.cv, 1
  store i32 %i.cw, ptr %i.ac, align 8, !tbaa !21
  %i.cx = zext i32 %i.cv to i64
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cx
  store i8 %i.ct, ptr %i.cy, align 1, !tbaa !62
  %i.cz = load i32, ptr %i.ac, align 8, !tbaa !21
  %i.da = load i32, ptr %i.ad, align 4, !tbaa !80
  %i.db = icmp eq i32 %i.cz, %i.da
  br i1 %i.db, label %bb.h, label %_ZN10COutBuffer9WriteByteEh.exit.i33.peel

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN10COutBuffer14FlushWithCheckEv(ptr noundef nonnull align 8 dereferenceable(61) %i.z)
  br label %_ZN10COutBuffer9WriteByteEh.exit.i33.peel

_ZN10COutBuffer9WriteByteEh.exit.i33.peel:        ; preds = %bb.h, %bb.g
  %i.dc = load i32, ptr %i.aa, align 8, !tbaa !78
  store i32 8, ptr %i.aa, align 8, !tbaa !78
  store i8 0, ptr %i.ab, align 4, !tbaa !79
  %.not.i34.peel = icmp eq i32 %i.cp, 0
  br i1 %.not.i34.peel, label %_ZN12CBitlEncoder9WriteBitsEjj.exit36, label %.peel.next136

.peel.next136:                                    ; preds = %_ZN10COutBuffer9WriteByteEh.exit.i33.peel
  %i.dd = lshr i32 %i.cn, %i.dc                   ; 2 uses
  %i.de = icmp samesign ult i32 %i.cp, 8
  br i1 %i.de, label %.loopexit138, label %.lr.ph250

bb.i:                                             ; preds = %_ZN10COutBuffer9WriteByteEh.exit.i33
  %i.df = lshr i32 %.0814.i32249, %i.dz           ; 2 uses
  %i.dg = icmp ult i32 %i.dp, 8
  br i1 %i.dg, label %.loopexit138, label %.lr.ph250, !llvm.loop !145

.loopexit138:                                     ; preds = %bb.i, %.peel.next136, %.lr.ph.i29
  %i.dh = phi i8 [ %.pre147, %.lr.ph.i29 ], [ 0, %.peel.next136 ], [ 0, %bb.i ]
  %.lcssa120 = phi i32 [ %.pre.i30, %.lr.ph.i29 ], [ 8, %.peel.next136 ], [ 8, %bb.i ] ; 2 uses
  %.015.i31.lcssa = phi i32 [ %i.cl, %.lr.ph.i29 ], [ %i.cp, %.peel.next136 ], [ %i.dp, %bb.i ] ; 2 uses
  %.0814.i32.lcssa = phi i32 [ %i.cn, %.lr.ph.i29 ], [ %i.dd, %.peel.next136 ], [ %i.df, %bb.i ]
  %notmask.i35 = shl nsw i32 -1, %.015.i31.lcssa
  %i.di = xor i32 %notmask.i35, -1
  %i.dj = and i32 %.0814.i32.lcssa, %i.di
  %i.dk = sub i32 8, %.lcssa120
  %i.dl = shl i32 %i.dj, %i.dk
  %i.dm = trunc i32 %i.dl to i8
  %i.dn = or i8 %i.dh, %i.dm
  store i8 %i.dn, ptr %i.ab, align 4, !tbaa !79
  %i.do = sub nuw i32 %.lcssa120, %.015.i31.lcssa
  br label %_ZN12CBitlEncoder9WriteBitsEjj.exit36.sink.split

.lr.ph250:                                        ; preds = %.peel.next136, %bb.i
  %.0814.i32249 = phi i32 [ %i.df, %bb.i ], [ %i.dd, %.peel.next136 ] ; 2 uses
  %.015.i31248 = phi i32 [ %i.dp, %bb.i ], [ %i.cp, %.peel.next136 ]
  %i.dp = add nsw i32 %.015.i31248, -8            ; 4 uses
  %i.dq = trunc i32 %.0814.i32249 to i8
  %i.dr = load ptr, ptr %i.z, align 8, !tbaa !20
  %i.ds = load i32, ptr %i.ac, align 8, !tbaa !21 ; 2 uses
  %i.dt = add i32 %i.ds, 1
  store i32 %i.dt, ptr %i.ac, align 8, !tbaa !21
  %i.du = zext i32 %i.ds to i64
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.du
  store i8 %i.dq, ptr %i.dv, align 1, !tbaa !62
  %i.dw = load i32, ptr %i.ac, align 8, !tbaa !21
  %i.dx = load i32, ptr %i.ad, align 4, !tbaa !80
  %i.dy = icmp eq i32 %i.dw, %i.dx
  br i1 %i.dy, label %bb.j, label %_ZN10COutBuffer9WriteByteEh.exit.i33

bb.j:                                             ; preds = %.lr.ph250
  tail call void @_ZN10COutBuffer14FlushWithCheckEv(ptr noundef nonnull align 8 dereferenceable(61) %i.z)
  br label %_ZN10COutBuffer9WriteByteEh.exit.i33

_ZN10COutBuffer9WriteByteEh.exit.i33:             ; preds = %bb.j, %.lr.ph250
  %i.dz = load i32, ptr %i.aa, align 8, !tbaa !78
  store i32 8, ptr %i.aa, align 8, !tbaa !78
  store i8 0, ptr %i.ab, align 4, !tbaa !79
  %.not.i34 = icmp eq i32 %i.dp, 0
  br i1 %.not.i34, label %_ZN12CBitlEncoder9WriteBitsEjj.exit36, label %bb.i, !llvm.loop !145

bb.k:                                             ; preds = %bb.e
  %i.ea = zext nneg i16 %i.ce to i32
  %i.eb = zext nneg i16 %i.ce to i64
  %i.ec = getelementptr inbounds nuw i8, ptr @_ZN9NCompress8NDeflate8NEncoderL10g_LenSlotsE, i64 %i.eb
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !62
  %i.ee = zext i8 %i.ed to i64                    ; 3 uses
  %i.ef = add nuw nsw i64 %i.ee, 257              ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ef
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !62  ; 2 uses
  %.not13.i37 = icmp eq i8 %i.eh, 0
  br i1 %.not13.i37, label %_ZN12CBitlEncoder9WriteBitsEjj.exit45, label %.lr.ph.i38

.lr.ph.i38:                                       ; preds = %bb.k
  %i.ei = zext i8 %i.eh to i32                    ; 3 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ef
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !12 ; 3 uses
  %.pre.i39 = load i32, ptr %i.aa, align 8, !tbaa !78 ; 4 uses
  %i.el = icmp ugt i32 %.pre.i39, %i.ei
  %.pre = load i8, ptr %i.ab, align 4, !tbaa !79  ; 2 uses
  br i1 %i.el, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i38
  %i.em = sub nuw nsw i32 %i.ei, %.pre.i39        ; 4 uses
  %i.en = sub nsw i32 8, %.pre.i39
  %i.eo = shl i32 %i.ek, %i.en
  %i.ep = trunc i32 %i.eo to i8
  %i.eq = or i8 %.pre, %i.ep
  %i.er = load ptr, ptr %i.z, align 8, !tbaa !20
  %i.es = load i32, ptr %i.ac, align 8, !tbaa !21 ; 2 uses
  %i.et = add i32 %i.es, 1
  store i32 %i.et, ptr %i.ac, align 8, !tbaa !21
  %i.eu = zext i32 %i.es to i64
  %i.ev = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.eu
  store i8 %i.eq, ptr %i.ev, align 1, !tbaa !62
  %i.ew = load i32, ptr %i.ac, align 8, !tbaa !21
  %i.ex = load i32, ptr %i.ad, align 4, !tbaa !80
  %i.ey = icmp eq i32 %i.ew, %i.ex
  br i1 %i.ey, label %bb.m, label %_ZN10COutBuffer9WriteByteEh.exit.i42.peel

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN10COutBuffer14FlushWithCheckEv(ptr noundef nonnull align 8 dereferenceable(61) %i.z)
  br label %_ZN10COutBuffer9WriteByteEh.exit.i42.peel

_ZN10COutBuffer9WriteByteEh.exit.i42.peel:        ; preds = %bb.m, %bb.l
  %i.ez = load i32, ptr %i.aa, align 8, !tbaa !78
  store i32 8, ptr %i.aa, align 8, !tbaa !78
  store i8 0, ptr %i.ab, align 4, !tbaa !79
  %.not.i43.peel = icmp eq i32 %i.em, 0
  br i1 %.not.i43.peel, label %_ZN12CBitlEncoder9WriteBitsEjj.exit45, label %.peel.next

.peel.next:                                       ; preds = %_ZN10COutBuffer9WriteByteEh.exit.i42.peel
  %i.fa = lshr i32 %i.ek, %i.ez                   ; 2 uses
  %i.fb = icmp samesign ult i32 %i.em, 8
  br i1 %i.fb, label %.loopexit, label %.lr.ph231

bb.n:                                             ; preds = %_ZN10COutBuffer9WriteByteEh.exit.i42
  %i.fc = lshr i32 %.0814.i41230, %i.fw           ; 2 uses
  %i.fd = icmp ult i32 %i.fm, 8
  br i1 %i.fd, label %.loopexit, label %.lr.ph231, !llvm.loop !146

.loopexit:                                        ; preds = %bb.n, %.peel.next, %.lr.ph.i38
  %i.fe = phi i8 [ %.pre, %.lr.ph.i38 ], [ 0, %.peel.next ], [ 0, %bb.n ]
  %.lcssa104 = phi i32 [ %.pre.i39, %.lr.ph.i38 ], [ 8, %.peel.next ], [ 8, %bb.n ] ; 2 uses
  %.015.i40.lcssa = phi i32 [ %i.ei, %.lr.ph.i38 ], [ %i.em, %.peel.next ], [ %i.fm, %bb.n ] ; 2 uses
  %.0814.i41.lcssa = phi i32 [ %i.ek, %.lr.ph.i38 ], [ %i.fa, %.peel.next ], [ %i.fc, %bb.n ]
  %notmask.i44 = shl nsw i32 -1, %.015.i40.lcssa
  %i.ff = xor i32 %notmask.i44, -1
  %i.fg = and i32 %.0814.i41.lcssa, %i.ff
  %i.fh = sub i32 8, %.lcssa104
  %i.fi = shl i32 %i.fg, %i.fh
  %i.fj = trunc i32 %i.fi to i8
  %i.fk = or i8 %i.fe, %i.fj
  store i8 %i.fk, ptr %i.ab, align 4, !tbaa !79
  %i.fl = sub nuw i32 %.lcssa104, %.015.i40.lcssa
  store i32 %i.fl, ptr %i.aa, align 8, !tbaa !78
  br label %_ZN12CBitlEncoder9WriteBitsEjj.exit45

.lr.ph231:                                        ; preds = %.peel.next, %bb.n
  %.0814.i41230 = phi i32 [ %i.fc, %bb.n ], [ %i.fa, %.peel.next ] ; 2 uses
  %.015.i40229 = phi i32 [ %i.fm, %bb.n ], [ %i.em, %.peel.next ]
  %i.fm = add nsw i32 %.015.i40229, -8            ; 4 uses
  %i.fn = trunc i32 %.0814.i41230 to i8
  %i.fo = load ptr, ptr %i.z, align 8, !tbaa !20
  %i.fp = load i32, ptr %i.ac, align 8, !tbaa !21 ; 2 uses
  %i.fq = add i32 %i.fp, 1
  store i32 %i.fq, ptr %i.ac, align 8, !tbaa !21
  %i.fr = zext i32 %i.fp to i64
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fo, i64 %i.fr
  store i8 %i.fn, ptr %i.fs, align 1, !tbaa !62
  %i.ft = load i32, ptr %i.ac, align 8, !tbaa !21
  %i.fu = load i32, ptr %i.ad, align 4, !tbaa !80
  %i.fv = icmp eq i32 %i.ft, %i.fu
  br i1 %i.fv, label %bb.o, label %_ZN10COutBuffer9WriteByteEh.exit.i42

bb.o:                                             ; preds = %.lr.ph231
  tail call void @_ZN10COutBuffer14FlushWithCheckEv(ptr noundef nonnull align 8 dereferenceable(61) %i.z)
  br label %_ZN10COutBuffer9WriteByteEh.exit.i42

_ZN10COutBuffer9WriteByteEh.exit.i42:             ; preds = %bb.o, %.lr.ph231
  %i.fw = load i32, ptr %i.aa, align 8, !tbaa !78
  store i32 8, ptr %i.aa, align 8, !tbaa !78
  store i8 0, ptr %i.ab, align 4, !tbaa !79
  %.not.i43 = icmp eq i32 %i.fm, 0
  br i1 %.not.i43, label %_ZN12CBitlEncoder9WriteBitsEjj.exit45, label %bb.n, !llvm.loop !146

_ZN12CBitlEncoder9WriteBitsEjj.exit45:            ; preds = %_ZN10COutBuffer9WriteByteEh.exit.i42, %_ZN10COutBuffer9WriteByteEh.exit.i42.peel, %bb.k, %.loopexit
  %i.fx = load ptr, ptr %i.ae, align 8, !tbaa !48
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 %i.ee
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !62  ; 2 uses
  %.not13.i46 = icmp eq i8 %i.fz, 0
  br i1 %.not13.i46, label %_ZN12CBitlEncoder9WriteBitsEjj.exit54, label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %_ZN12CBitlEncoder9WriteBitsEjj.exit45
  %i.ga = zext i8 %i.fz to i32                    ; 3 uses
  %i.gb = load ptr, ptr %i.af, align 8, !tbaa !47
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 %i.ee
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !62
  %i.ge = zext i8 %i.gd to i32
  %i.gf = sub nsw i32 %i.ea, %i.ge                ; 3 uses
  %.pre.i48 = load i32, ptr %i.aa, align 8, !tbaa !78 ; 4 uses
  %i.gg = icmp ugt i32 %.pre.i48, %i.ga
  %.pre144 = load i8, ptr %i.ab, align 4, !tbaa !79 ; 2 uses
  br i1 %i.gg, label %.loopexit126, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i47
  %i.gh = sub nuw nsw i32 %i.ga, %.pre.i48        ; 4 uses
  %i.gi = sub nsw i32 8, %.pre.i48
  %i.gj = shl nsw i32 %i.gf, %i.gi
  %i.gk = trunc i32 %i.gj to i8
  %i.gl = or i8 %.pre144, %i.gk
  %i.gm = load ptr, ptr %i.z, align 8, !tbaa !20
  %i.gn = load i32, ptr %i.ac, align 8, !tbaa !21 ; 2 uses
  %i.go = add i32 %i.gn, 1
  store i32 %i.go, ptr %i.ac, align 8, !tbaa !21
  %i.gp = zext i32 %i.gn to i64
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gm, i64 %i.gp
  store i8 %i.gl, ptr %i.gq, align 1, !tbaa !62
  %i.gr = load i32, ptr %i.ac, align 8, !tbaa !21
  %i.gs = load i32, ptr %i.ad, align 4, !tbaa !80
  %i.gt = icmp eq i32 %i.gr, %i.gs
  br i1 %i.gt, label %bb.q, label %_ZN10COutBuffer9WriteByteEh.exit.i51.peel

bb.q:                                             ; preds = %bb.p
  tail call void @_ZN10COutBuffer14FlushWithCheckEv(ptr noundef nonnull align 8 dereferenceable(61) %i.z)
  br label %_ZN10COutBuffer9WriteByteEh.exit.i51.peel

_ZN10COutBuffer9WriteByteEh.exit.i51.peel:        ; preds = %bb.q, %bb.p
  %i.gu = load i32, ptr %i.aa, align 8, !tbaa !78
  store i32 8, ptr %i.aa, align 8, !tbaa !78
  store i8 0, ptr %i.ab, align 4, !tbaa !79
  %.not.i52.peel = icmp eq i32 %i.gh, 0
  br i1 %.not.i52.peel, label %_ZN12CBitlEncoder9WriteBitsEjj.exit54, label %.peel.next124

.peel.next124:                                    ; preds = %_ZN10COutBuffer9WriteByteEh.exit.i51.peel
  %i.gv = lshr i32 %i.gf, %i.gu                   ; 2 uses
  %i.gw = icmp samesign ult i32 %i.gh, 8
  br i1 %i.gw, label %.loopexit126, label %.lr.ph235

bb.r:                                             ; preds = %_ZN10COutBuffer9WriteByteEh.exit.i51
  %i.gx = lshr i32 %.0814.i50234, %i.hr           ; 2 uses
  %i.gy = icmp ult i32 %i.hh, 8
  br i1 %i.gy, label %.loopexit126, label %.lr.ph235, !llvm.loop !147

.loopexit126:                                     ; preds = %bb.r, %.peel.next124, %.lr.ph.i47
  %i.gz = phi i8 [ %.pre144, %.lr.ph.i47 ], [ 0, %.peel.next124 ], [ 0, %bb.r ]
  %.lcssa108 = phi i32 [ %.pre.i48, %.lr.ph.i47 ], [ 8, %.peel.next124 ], [ 8, %bb.r ] ; 2 uses
  %.015.i49.lcssa = phi i32 [ %i.ga, %.lr.ph.i47 ], [ %i.gh, %.peel.next124 ], [ %i.hh, %bb.r ] ; 2 uses
  %.0814.i50.lcssa = phi i32 [ %i.gf, %.lr.ph.i47 ], [ %i.gv, %.peel.next124 ], [ %i.gx, %bb.r ]
  %notmask.i53 = shl nsw i32 -1, %.015.i49.lcssa
  %i.ha = xor i32 %notmask.i53, -1
  %i.hb = and i32 %.0814.i50.lcssa, %i.ha
  %i.hc = sub i32 8, %.lcssa108
  %i.hd = shl i32 %i.hb, %i.hc
  %i.he = trunc i32 %i.hd to i8
  %i.hf = or i8 %i.gz, %i.he
  store i8 %i.hf, ptr %i.ab, align 4, !tbaa !79
  %i.hg = sub nuw i32 %.lcssa108, %.015.i49.lcssa
  store i32 %i.hg, ptr %i.aa, align 8, !tbaa !78
  br label %_ZN12CBitlEncoder9WriteBitsEjj.exit54

.lr.ph235:                                        ; preds = %.peel.next124, %bb.r
  %.0814.i50234 = phi i32 [ %i.gx, %bb.r ], [ %i.gv, %.peel.next124 ] ; 2 uses
  %.015.i49233 = phi i32 [ %i.hh, %bb.r ], [ %i.gh, %.peel.next124 ]
  %i.hh = add nsw i32 %.015.i49233, -8            ; 4 uses
  %i.hi = trunc i32 %.0814.i50234 to i8
  %i.hj = load ptr, ptr %i.z, align 8, !tbaa !20
  %i.hk = load i32, ptr %i.ac, align 8, !tbaa !21 ; 2 uses
  %i.hl = add i32 %i.hk, 1
  store i32 %i.hl, ptr %i.ac, align 8, !tbaa !21
  %i.hm = zext i32 %i.hk to i64
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hj, i64 %i.hm
  store i8 %i.hi, ptr %i.hn, align 1, !tbaa !62
  %i.ho = load i32, ptr %i.ac, align 8, !tbaa !21
  %i.hp = load i32, ptr %i.ad, align 4, !tbaa !80
  %i.hq = icmp eq i32 %i.ho, %i.hp
  br i1 %i.hq, label %bb.s, label %_ZN10COutBuffer9WriteByteEh.exit.i51

bb.s:                                             ; preds = %.lr.ph235
  tail call void @_ZN10COutBuffer14FlushWithCheckEv(ptr noundef nonnull align 8 dereferenceable(61) %i.z)
  br label %_ZN10COutBuffer9WriteByteEh.exit.i51

_ZN10COutBuffer9WriteByteEh.exit.i51:             ; preds = %bb.s, %.lr.ph235
  %i.hr = load i32, ptr %i.aa, align 8, !tbaa !78
  store i32 8, ptr %i.aa, align 8, !tbaa !78
  store i8 0, ptr %i.ab, align 4, !tbaa !79
  %.not.i52 = icmp eq i32 %i.hh, 0
  br i1 %.not.i52, label %_ZN12CBitlEncoder9WriteBitsEjj.exit54, label %bb.r, !llvm.loop !147

_ZN12CBitlEncoder9WriteBitsEjj.exit54:            ; preds = %_ZN10COutBuffer9WriteByteEh.exit.i51, %_ZN10COutBuffer9WriteByteEh.exit.i51.peel, %_ZN12CBitlEncoder9WriteBitsEjj.exit45, %.loopexit126
  %i.hs = getelementptr inbounds nuw i8, ptr %i.cd, i64 2
  %i.ht = load i16, ptr %i.hs, align 2, !tbaa !87 ; 3 uses
  %i.hu = zext i16 %i.ht to i32                   ; 2 uses
  %i.hv = icmp ult i16 %i.ht, 512
  br i1 %i.hv, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZN12CBitlEncoder9WriteBitsEjj.exit54
  %i.hw = zext nneg i16 %i.ht to i64
  %i.hx = getelementptr inbounds nuw i8, ptr @_ZN9NCompress8NDeflate8NEncoderL9g_FastPosE, i64 %i.hw
  %i.hy = load i8, ptr %i.hx, align 1, !tbaa !62
  %i.hz = zext i8 %i.hy to i64
  br label %_ZN9NCompress8NDeflate8NEncoder10GetPosSlotEj.exit

bb.u:                                             ; preds = %_ZN12CBitlEncoder9WriteBitsEjj.exit54
  %i.ia = lshr i32 %i.hu, 8
  %i.ib = zext nneg i32 %i.ia to i64
  %i.ic = getelementptr inbounds nuw i8, ptr @_ZN9NCompress8NDeflate8NEncoderL9g_FastPosE, i64 %i.ib
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !62
  %i.ie = zext i8 %i.id to i64
  %i.if = add nuw nsw i64 %i.ie, 16
  br label %_ZN9NCompress8NDeflate8NEncoder10GetPosSlotEj.exit

_ZN9NCompress8NDeflate8NEncoder10GetPosSlotEj.exit: ; preds = %bb.t, %bb.u
  %.0.i = phi i64 [ %i.hz, %bb.t ], [ %i.if, %bb.u ] ; 5 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.m, i64 %.0.i
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !62  ; 2 uses
  %.not13.i55 = icmp eq i8 %i.ih, 0
  br i1 %.not13.i55, label %_ZN12CBitlEncoder9WriteBitsEjj.exit63, label %.lr.ph.i56

.lr.ph.i56:                                       ; preds = %_ZN9NCompress8NDeflate8NEncoder10GetPosSlotEj.exit
  %i.ii = zext i8 %i.ih to i32                    ; 3 uses
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.0.i
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !12 ; 3 uses
  %.pre.i57 = load i32, ptr %i.aa, align 8, !tbaa !78 ; 4 uses
  %i.il = icmp ugt i32 %.pre.i57, %i.ii
  %.pre145 = load i8, ptr %i.ab, align 4, !tbaa !79 ; 2 uses
  br i1 %i.il, label %.loopexit130, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i56
  %i.im = sub nuw nsw i32 %i.ii, %.pre.i57        ; 4 uses
  %i.in = sub nsw i32 8, %.pre.i57
  %i.io = shl i32 %i.ik, %i.in
  %i.ip = trunc i32 %i.io to i8
  %i.iq = or i8 %.pre145, %i.ip
  %i.ir = load ptr, ptr %i.z, align 8, !tbaa !20
  %i.is = load i32, ptr %i.ac, align 8, !tbaa !21 ; 2 uses
  %i.it = add i32 %i.is, 1
  store i32 %i.it, ptr %i.ac, align 8, !tbaa !21
  %i.iu = zext i32 %i.is to i64
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ir, i64 %i.iu
  store i8 %i.iq, ptr %i.iv, align 1, !tbaa !62
  %i.iw = load i32, ptr %i.ac, align 8, !tbaa !21
  %i.ix = load i32, ptr %i.ad, align 4, !tbaa !80
  %i.iy = icmp eq i32 %i.iw, %i.ix
  br i1 %i.iy, label %bb.w, label %_ZN10COutBuffer9WriteByteEh.exit.i60.peel

bb.w:                                             ; preds = %bb.v
  tail call void @_ZN10COutBuffer14FlushWithCheckEv(ptr noundef nonnull align 8 dereferenceable(61) %i.z)
  br label %_ZN10COutBuffer9WriteByteEh.exit.i60.peel

_ZN10COutBuffer9WriteByteEh.exit.i60.peel:        ; preds = %bb.w, %bb.v
  %i.iz = load i32, ptr %i.aa, align 8, !tbaa !78
  store i32 8, ptr %i.aa, align 8, !tbaa !78
  store i8 0, ptr %i.ab, align 4, !tbaa !79
  %.not.i61.peel = icmp eq i32 %i.im, 0
  br i1 %.not.i61.peel, label %_ZN12CBitlEncoder9WriteBitsEjj.exit63, label %.peel.next128

.peel.next128:                                    ; preds = %_ZN10COutBuffer9WriteByteEh.exit.i60.peel
  %i.ja = lshr i32 %i.ik, %i.iz                   ; 2 uses
  %i.jb = icmp samesign ult i32 %i.im, 8
  br i1 %i.jb, label %.loopexit130, label %.lr.ph240

bb.x:                                             ; preds = %_ZN10COutBuffer9WriteByteEh.exit.i60
  %i.jc = lshr i32 %.0814.i59239, %i.jw           ; 2 uses
  %i.jd = icmp ult i32 %i.jm, 8
  br i1 %i.jd, label %.loopexit130, label %.lr.ph240, !llvm.loop !148

.loopexit130:                                     ; preds = %bb.x, %.peel.next128, %.lr.ph.i56
  %i.je = phi i8 [ %.pre145, %.lr.ph.i56 ], [ 0, %.peel.next128 ], [ 0, %bb.x ]
  %.lcssa112 = phi i32 [ %.pre.i57, %.lr.ph.i56 ], [ 8, %.peel.next128 ], [ 8, %bb.x ] ; 2 uses
  %.015.i58.lcssa = phi i32 [ %i.ii, %.lr.ph.i56 ], [ %i.im, %.peel.next128 ], [ %i.jm, %bb.x ] ; 2 uses
  %.0814.i59.lcssa = phi i32 [ %i.ik, %.lr.ph.i56 ], [ %i.ja, %.peel.next128 ], [ %i.jc, %bb.x ]
  %notmask.i62 = shl nsw i32 -1, %.015.i58.lcssa
  %i.jf = xor i32 %notmask.i62, -1
  %i.jg = and i32 %.0814.i59.lcssa, %i.jf
  %i.jh = sub i32 8, %.lcssa112
  %i.ji = shl i32 %i.jg, %i.jh
  %i.jj = trunc i32 %i.ji to i8
  %i.jk = or i8 %i.je, %i.jj
  store i8 %i.jk, ptr %i.ab, align 4, !tbaa !79
  %i.jl = sub nuw i32 %.lcssa112, %.015.i58.lcssa
  store i32 %i.jl, ptr %i.aa, align 8, !tbaa !78
  br label %_ZN12CBitlEncoder9WriteBitsEjj.exit63

.lr.ph240:                                        ; preds = %.peel.next128, %bb.x
  %.0814.i59239 = phi i32 [ %i.jc, %bb.x ], [ %i.ja, %.peel.next128 ] ; 2 uses
  %.015.i58238 = phi i32 [ %i.jm, %bb.x ], [ %i.im, %.peel.next128 ]
  %i.jm = add nsw i32 %.015.i58238, -8            ; 4 uses
  %i.jn = trunc i32 %.0814.i59239 to i8
  %i.jo = load ptr, ptr %i.z, align 8, !tbaa !20
  %i.jp = load i32, ptr %i.ac, align 8, !tbaa !21 ; 2 uses
  %i.jq = add i32 %i.jp, 1
  store i32 %i.jq, ptr %i.ac, align 8, !tbaa !21
  %i.jr = zext i32 %i.jp to i64
  %i.js = getelementptr inbounds nuw i8, ptr %i.jo, i64 %i.jr
  store i8 %i.jn, ptr %i.js, align 1, !tbaa !62
  %i.jt = load i32, ptr %i.ac, align 8, !tbaa !21
  %i.ju = load i32, ptr %i.ad, align 4, !tbaa !80
  %i.jv = icmp eq i32 %i.jt, %i.ju
  br i1 %i.jv, label %bb.y, label %_ZN10COutBuffer9WriteByteEh.exit.i60

bb.y:                                             ; preds = %.lr.ph240
  tail call void @_ZN10COutBuffer14FlushWithCheckEv(ptr noundef nonnull align 8 dereferenceable(61) %i.z)
  br label %_ZN10COutBuffer9WriteByteEh.exit.i60

_ZN10COutBuffer9WriteByteEh.exit.i60:             ; preds = %bb.y, %.lr.ph240
  %i.jw = load i32, ptr %i.aa, align 8, !tbaa !78
  store i32 8, ptr %i.aa, align 8, !tbaa !78
  store i8 0, ptr %i.ab, align 4, !tbaa !79
  %.not.i61 = icmp eq i32 %i.jm, 0
  br i1 %.not.i61, label %_ZN12CBitlEncoder9WriteBitsEjj.exit63, label %bb.x, !llvm.loop !148

_ZN12CBitlEncoder9WriteBitsEjj.exit63:            ; preds = %_ZN10COutBuffer9WriteByteEh.exit.i60, %_ZN10COutBuffer9WriteByteEh.exit.i60.peel, %_ZN9NCompress8NDeflate8NEncoder10GetPosSlotEj.exit, %.loopexit130
  %.not13.i64 = icmp samesign ult i64 %.0.i, 4
  br i1 %.not13.i64, label %_ZN12CBitlEncoder9WriteBitsEjj.exit36, label %.lr.ph.i65

.lr.ph.i65:                                       ; preds = %_ZN12CBitlEncoder9WriteBitsEjj.exit63
  %i.jx = getelementptr inbounds nuw i8, ptr @_ZN9NCompress8NDeflateL15kDistDirectBitsE, i64 %.0.i
  %i.jy = load i8, ptr %i.jx, align 1, !tbaa !62
  %i.jz = zext i8 %i.jy to i32                    ; 3 uses
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr @_ZN9NCompress8NDeflateL10kDistStartE, i64 %.0.i
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !12
  %i.kc = sub i32 %i.hu, %i.kb                    ; 3 uses
  %.pre.i66 = load i32, ptr %i.aa, align 8, !tbaa !78 ; 4 uses
  %i.kd = icmp ugt i32 %.pre.i66, %i.jz
  %.pre146 = load i8, ptr %i.ab, align 4, !tbaa !79 ; 2 uses
  br i1 %i.kd, label %.loopexit134, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i65
  %i.ke = sub nuw nsw i32 %i.jz, %.pre.i66        ; 4 uses
  %i.kf = sub nsw i32 8, %.pre.i66
  %i.kg = shl i32 %i.kc, %i.kf
  %i.kh = trunc i32 %i.kg to i8
  %i.ki = or i8 %.pre146, %i.kh
  %i.kj = load ptr, ptr %i.z, align 8, !tbaa !20
  %i.kk = load i32, ptr %i.ac, align 8, !tbaa !21 ; 2 uses
  %i.kl = add i32 %i.kk, 1
  store i32 %i.kl, ptr %i.ac, align 8, !tbaa !21
  %i.km = zext i32 %i.kk to i64
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kj, i64 %i.km
  store i8 %i.ki, ptr %i.kn, align 1, !tbaa !62
  %i.ko = load i32, ptr %i.ac, align 8, !tbaa !21
  %i.kp = load i32, ptr %i.ad, align 4, !tbaa !80
  %i.kq = icmp eq i32 %i.ko, %i.kp
  br i1 %i.kq, label %bb.aa, label %_ZN10COutBuffer9WriteByteEh.exit.i69.peel

bb.aa:                                            ; preds = %bb.z
  tail call void @_ZN10COutBuffer14FlushWithCheckEv(ptr noundef nonnull align 8 dereferenceable(61) %i.z)
  br label %_ZN10COutBuffer9WriteByteEh.exit.i69.peel

_ZN10COutBuffer9WriteByteEh.exit.i69.peel:        ; preds = %bb.aa, %bb.z
  %i.kr = load i32, ptr %i.aa, align 8, !tbaa !78
  store i32 8, ptr %i.aa, align 8, !tbaa !78
  store i8 0, ptr %i.ab, align 4, !tbaa !79
  %.not.i70.peel = icmp eq i32 %i.ke, 0
  br i1 %.not.i70.peel, label %_ZN12CBitlEncoder9WriteBitsEjj.exit36, label %.peel.next132

.peel.next132:                                    ; preds = %_ZN10COutBuffer9WriteByteEh.exit.i69.peel
  %i.ks = lshr i32 %i.kc, %i.kr                   ; 2 uses
  %i.kt = icmp samesign ult i32 %i.ke, 8
  br i1 %i.kt, label %.loopexit134, label %.lr.ph245

bb.ab:                                            ; preds = %_ZN10COutBuffer9WriteByteEh.exit.i69
  %i.ku = lshr i32 %.0814.i68244, %i.lo           ; 2 uses
  %i.kv = icmp ult i32 %i.le, 8
  br i1 %i.kv, label %.loopexit134, label %.lr.ph245, !llvm.loop !149

.loopexit134:                                     ; preds = %bb.ab, %.peel.next132, %.lr.ph.i65
  %i.kw = phi i8 [ %.pre146, %.lr.ph.i65 ], [ 0, %.peel.next132 ], [ 0, %bb.ab ]
  %.lcssa116 = phi i32 [ %.pre.i66, %.lr.ph.i65 ], [ 8, %.peel.next132 ], [ 8, %bb.ab ] ; 2 uses
  %.015.i67.lcssa = phi i32 [ %i.jz, %.lr.ph.i65 ], [ %i.ke, %.peel.next132 ], [ %i.le, %bb.ab ] ; 2 uses
  %.0814.i68.lcssa = phi i32 [ %i.kc, %.lr.ph.i65 ], [ %i.ks, %.peel.next132 ], [ %i.ku, %bb.ab ]
  %notmask.i71 = shl nsw i32 -1, %.015.i67.lcssa
  %i.kx = xor i32 %notmask.i71, -1
  %i.ky = and i32 %.0814.i68.lcssa, %i.kx
  %i.kz = sub i32 8, %.lcssa116
  %i.la = shl i32 %i.ky, %i.kz
  %i.lb = trunc i32 %i.la to i8
  %i.lc = or i8 %i.kw, %i.lb
  store i8 %i.lc, ptr %i.ab, align 4, !tbaa !79
  %i.ld = sub nuw i32 %.lcssa116, %.015.i67.lcssa
  br label %_ZN12CBitlEncoder9WriteBitsEjj.exit36.sink.split

.lr.ph245:                                        ; preds = %.peel.next132, %bb.ab
  %.0814.i68244 = phi i32 [ %i.ku, %bb.ab ], [ %i.ks, %.peel.next132 ] ; 2 uses
  %.015.i67243 = phi i32 [ %i.le, %bb.ab ], [ %i.ke, %.peel.next132 ]
  %i.le = add nsw i32 %.015.i67243, -8            ; 4 uses
  %i.lf = trunc i32 %.0814.i68244 to i8
  %i.lg = load ptr, ptr %i.z, align 8, !tbaa !20
  %i.lh = load i32, ptr %i.ac, align 8, !tbaa !21 ; 2 uses
  %i.li = add i32 %i.lh, 1
  store i32 %i.li, ptr %i.ac, align 8, !tbaa !21
  %i.lj = zext i32 %i.lh to i64
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lg, i64 %i.lj
  store i8 %i.lf, ptr %i.lk, align 1, !tbaa !62
  %i.ll = load i32, ptr %i.ac, align 8, !tbaa !21
  %i.lm = load i32, ptr %i.ad, align 4, !tbaa !80
  %i.ln = icmp eq i32 %i.ll, %i.lm
  br i1 %i.ln, label %bb.ac, label %_ZN10COutBuffer9WriteByteEh.exit.i69

bb.ac:                                            ; preds = %.lr.ph245
  tail call void @_ZN10COutBuffer14FlushWithCheckEv(ptr noundef nonnull align 8 dereferenceable(61) %i.z)
  br label %_ZN10COutBuffer9WriteByteEh.exit.i69

_ZN10COutBuffer9WriteByteEh.exit.i69:             ; preds = %bb.ac, %.lr.ph245
  %i.lo = load i32, ptr %i.aa, align 8, !tbaa !78
  store i32 8, ptr %i.aa, align 8, !tbaa !78
  store i8 0, ptr %i.ab, align 4, !tbaa !79
  %.not.i70 = icmp eq i32 %i.le, 0
  br i1 %.not.i70, label %_ZN12CBitlEncoder9WriteBitsEjj.exit36, label %bb.ab, !llvm.loop !149

_ZN12CBitlEncoder9WriteBitsEjj.exit36.sink.split: ; preds = %.loopexit138, %.loopexit134
  %.sink = phi i32 [ %i.ld, %.loopexit134 ], [ %i.do, %.loopexit138 ]
  store i32 %.sink, ptr %i.aa, align 8, !tbaa !78
  br label %_ZN12CBitlEncoder9WriteBitsEjj.exit36

_ZN12CBitlEncoder9WriteBitsEjj.exit36:            ; preds = %_ZN10COutBuffer9WriteByteEh.exit.i69, %_ZN10COutBuffer9WriteByteEh.exit.i33, %_ZN12CBitlEncoder9WriteBitsEjj.exit36.sink.split, %_ZN10COutBuffer9WriteByteEh.exit.i69.peel, %_ZN10COutBuffer9WriteByteEh.exit.i33.peel, %_ZN12CBitlEncoder9WriteBitsEjj.exit63, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.lp = load i32, ptr %i.w, align 4, !tbaa !82
  %i.lq = zext i32 %i.lp to i64
  %i.lr = icmp samesign ult i64 %indvars.iv.next, %i.lq
  br i1 %i.lr, label %bb.e, label %_ZN9NCompress8NDeflate8NEncoder19Huffman_ReverseBitsEPjPKhj.exit26._crit_edge, !llvm.loop !150
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9NCompress8NDeflate8NEncoder6CCoder15WriteStoreBlockEjjb(ptr noundef nonnull align 8 dereferenceable(39764) %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1168 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1224 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1228 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1180 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  %.018 = phi i32 [ %2, %bb.a ], [ %i.aa, %._crit_edge ] ; 2 uses
  %.017 = phi i32 [ %1, %bb.a ], [ %i.g, %._crit_edge ] ; 3 uses
  %i.f = tail call i32 @llvm.umin.i32(i32 %.017, i32 65535) ; 5 uses
  %i.g = sub i32 %.017, %i.f                      ; 2 uses
  %i.h = icmp eq i32 %i.g, 0                      ; 2 uses
  %i.i = select i1 %3, i1 %i.h, i1 false
  %i.j = zext i1 %i.i to i32
  tail call void @_ZN9NCompress8NDeflate8NEncoder6CCoder9WriteBitsEji(ptr noundef nonnull align 8 dereferenceable(39764) %0, i32 noundef %i.j, i32 noundef 1)
  tail call void @_ZN9NCompress8NDeflate8NEncoder6CCoder9WriteBitsEji(ptr noundef nonnull align 8 dereferenceable(39764) %0, i32 noundef 0, i32 noundef 2)
  %i.k = load i32, ptr %i.b, align 8, !tbaa !78
  %i.l = icmp ult i32 %i.k, 8
  br i1 %i.l, label %bb.c, label %_ZN12CBitlEncoder9FlushByteEv.exit

bb.c:                                             ; preds = %bb.b
  %i.m = load i8, ptr %i.c, align 4, !tbaa !79
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.o = load i32, ptr %i.d, align 8, !tbaa !21   ; 2 uses
  %i.p = add i32 %i.o, 1
  store i32 %i.p, ptr %i.d, align 8, !tbaa !21
  %i.q = zext i32 %i.o to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.q
  store i8 %i.m, ptr %i.r, align 1, !tbaa !62
  %i.s = load i32, ptr %i.d, align 8, !tbaa !21
  %i.t = load i32, ptr %i.e, align 4, !tbaa !80
  %i.u = icmp eq i32 %i.s, %i.t
  br i1 %i.u, label %bb.d, label %_ZN12CBitlEncoder9FlushByteEv.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN10COutBuffer14FlushWithCheckEv(ptr noundef nonnull align 8 dereferenceable(61) %i.a)
  br label %_ZN12CBitlEncoder9FlushByteEv.exit

_ZN12CBitlEncoder9FlushByteEv.exit:               ; preds = %bb.b, %bb.c, %bb.d
  store i32 8, ptr %i.b, align 8, !tbaa !78
  store i8 0, ptr %i.c, align 4, !tbaa !79
  tail call void @_ZN9NCompress8NDeflate8NEncoder6CCoder9WriteBitsEji(ptr noundef nonnull align 8 dereferenceable(39764) %0, i32 noundef %i.f, i32 noundef 16)
  %i.v = xor i32 %i.f, 65535
  tail call void @_ZN9NCompress8NDeflate8NEncoder6CCoder9WriteBitsEji(ptr noundef nonnull align 8 dereferenceable(39764) %0, i32 noundef %i.v, i32 noundef 16)
  %i.w = load ptr, ptr %0, align 8, !tbaa !71
  %i.x = zext i32 %.018 to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = getelementptr inbounds i8, ptr %i.w, i64 %i.y
  %.not = icmp eq i32 %.017, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN12CBitlEncoder9FlushByteEv.exit
  %wide.trip.count = zext nneg i32 %i.f to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZN12CBitlEncoder9WriteByteEh.exit, %_ZN12CBitlEncoder9FlushByteEv.exit
  %i.aa = sub i32 %.018, %i.f
  br i1 %i.h, label %bb.f, label %bb.b, !llvm.loop !151

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN12CBitlEncoder9WriteByteEh.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZN12CBitlEncoder9WriteByteEh.exit ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %indvars.iv
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !62
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.ae = load i32, ptr %i.d, align 8, !tbaa !21  ; 2 uses
  %i.af = add i32 %i.ae, 1
  store i32 %i.af, ptr %i.d, align 8, !tbaa !21
  %i.ag = zext i32 %i.ae to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ag
  store i8 %i.ac, ptr %i.ah, align 1, !tbaa !62
  %i.ai = load i32, ptr %i.d, align 8, !tbaa !21
  %i.aj = load i32, ptr %i.e, align 4, !tbaa !80
  %i.ak = icmp eq i32 %i.ai, %i.aj
  br i1 %i.ak, label %bb.e, label %_ZN12CBitlEncoder9WriteByteEh.exit

bb.e:                                             ; preds = %.lr.ph
  tail call void @_ZN10COutBuffer14FlushWithCheckEv(ptr noundef nonnull align 8 dereferenceable(61) %i.a)
  br label %_ZN12CBitlEncoder9WriteByteEh.exit

_ZN12CBitlEncoder9WriteByteEh.exit:               ; preds = %.lr.ph, %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !152

bb.f:                                             ; preds = %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN9NCompress8NDeflate8NEncoder6CCoder11TryDynBlockEij(ptr noundef nonnull align 8 dereferenceable(39764) initializes((4912, 4916)) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [19 x i32], align 16              ; 33 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4920
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [332 x i8], ptr %i.c, i64 %i.d ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 324
  %i.g = load i32, ptr %i.f, align 4, !tbaa !89
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4912
  store i32 %i.g, ptr %i.h, align 8, !tbaa !83
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 328
  %i.j = load i32, ptr %i.i, align 4, !tbaa !90
  tail call void @_ZN9NCompress8NDeflate8NEncoder6CCoder9SetPricesERKNS0_7CLevelsE(ptr noundef nonnull align 8 dereferenceable(39764) %0, ptr noundef nonnull align 1 dereferenceable(320) %i.e)
  %.not54 = icmp eq i32 %2, 0
  br i1 %.not54, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1288
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1372
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2256
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 3536
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1936 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 3408
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4688
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 2224
  br label %bb.b

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1936 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(320) %i.e, ptr noundef nonnull align 8 dereferenceable(320) %i.s, i64 320, i1 false), !tbaa.struct !91
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1360 ; 30 uses
  store i32 286, ptr %i.t, align 8, !tbaa !92
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 2221
  %i.v = load i8, ptr %i.u, align 1, !tbaa !62
  %i.w = icmp eq i8 %i.v, 0
  br i1 %i.w, label %bb.f, label %.critedge

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %.02050 = phi i32 [ 0, %.lr.ph ], [ %i.ad, %bb.e ]
  store i32 %i.j, ptr %i.k, align 8, !tbaa !64
  tail call void @_ZN9NCompress8NDeflate8NEncoder6CCoder8TryBlockEv(ptr noundef nonnull align 8 dereferenceable(39764) %0)
  %i.x = load i32, ptr %i.l, align 4, !tbaa !82   ; 3 uses
  %i.y = icmp ugt i32 %i.x, 18000
  br i1 %i.y, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = icmp samesign ugt i32 %i.x, 7000
  br i1 %i.z, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = icmp samesign ugt i32 %i.x, 2000
  %i.ab = select i1 %i.aa, i32 10, i32 9
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.ac = phi i32 [ 12, %bb.b ], [ %i.ab, %bb.d ], [ 11, %bb.c ] ; 2 uses
  tail call void @Huffman_Generate(ptr noundef nonnull %i.m, ptr noundef nonnull %i.n, ptr noundef nonnull %i.o, i32 noundef 288, i32 noundef %i.ac)
  tail call void @Huffman_Generate(ptr noundef nonnull %i.p, ptr noundef nonnull %i.q, ptr noundef nonnull %i.r, i32 noundef 32, i32 noundef %i.ac)
  tail call void @_ZN9NCompress8NDeflate8NEncoder6CCoder9SetPricesERKNS0_7CLevelsE(ptr noundef nonnull align 8 dereferenceable(39764) %0, ptr noundef nonnull align 1 dereferenceable(320) %i.o)
  %i.ad = add nuw i32 %.02050, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.ad, %2
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !153

bb.f:                                             ; preds = %._crit_edge
  store i32 285, ptr %i.t, align 8, !tbaa !92
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 2220
  %i.af = load i8, ptr %i.ae, align 4, !tbaa !62
  %i.ag = icmp eq i8 %i.af, 0
  br i1 %i.ag, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  store i32 284, ptr %i.t, align 8, !tbaa !92
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 2219
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !62
  %i.aj = icmp eq i8 %i.ai, 0
  br i1 %i.aj, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  store i32 283, ptr %i.t, align 8, !tbaa !92
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 2218
  %i.al = load i8, ptr %i.ak, align 2, !tbaa !62
  %i.am = icmp eq i8 %i.al, 0
  br i1 %i.am, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  store i32 282, ptr %i.t, align 8, !tbaa !92
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 2217
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !62
  %i.ap = icmp eq i8 %i.ao, 0
  br i1 %i.ap, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  store i32 281, ptr %i.t, align 8, !tbaa !92
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 2216
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !62
  %i.as = icmp eq i8 %i.ar, 0
  br i1 %i.as, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  store i32 280, ptr %i.t, align 8, !tbaa !92
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 2215
  %i.au = load i8, ptr %i.at, align 1, !tbaa !62
  %i.av = icmp eq i8 %i.au, 0
  br i1 %i.av, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  store i32 279, ptr %i.t, align 8, !tbaa !92
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 2214
  %i.ax = load i8, ptr %i.aw, align 2, !tbaa !62
  %i.ay = icmp eq i8 %i.ax, 0
  br i1 %i.ay, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  store i32 278, ptr %i.t, align 8, !tbaa !92
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 2213
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !62
  %i.bb = icmp eq i8 %i.ba, 0
  br i1 %i.bb, label %bb.n, label %.critedge

bb.n:                                             ; preds = %bb.m
  store i32 277, ptr %i.t, align 8, !tbaa !92
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 2212
  %i.bd = load i8, ptr %i.bc, align 4, !tbaa !62
  %i.be = icmp eq i8 %i.bd, 0
  br i1 %i.be, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.n
  store i32 276, ptr %i.t, align 8, !tbaa !92
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 2211
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !62
  %i.bh = icmp eq i8 %i.bg, 0
  br i1 %i.bh, label %bb.p, label %.critedge

bb.p:                                             ; preds = %bb.o
  store i32 275, ptr %i.t, align 8, !tbaa !92
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 2210
  %i.bj = load i8, ptr %i.bi, align 2, !tbaa !62
  %i.bk = icmp eq i8 %i.bj, 0
  br i1 %i.bk, label %bb.q, label %.critedge

bb.q:                                             ; preds = %bb.p
  store i32 274, ptr %i.t, align 8, !tbaa !92
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 2209
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !62
  %i.bn = icmp eq i8 %i.bm, 0
  br i1 %i.bn, label %bb.r, label %.critedge

bb.r:                                             ; preds = %bb.q
  store i32 273, ptr %i.t, align 8, !tbaa !92
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 2208
  %i.bp = load i8, ptr %i.bo, align 8, !tbaa !62
  %i.bq = icmp eq i8 %i.bp, 0
  br i1 %i.bq, label %bb.s, label %.critedge

bb.s:                                             ; preds = %bb.r
  store i32 272, ptr %i.t, align 8, !tbaa !92
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 2207
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !62
  %i.bt = icmp eq i8 %i.bs, 0
  br i1 %i.bt, label %bb.t, label %.critedge

bb.t:                                             ; preds = %bb.s
  store i32 271, ptr %i.t, align 8, !tbaa !92
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 2206
  %i.bv = load i8, ptr %i.bu, align 2, !tbaa !62
  %i.bw = icmp eq i8 %i.bv, 0
  br i1 %i.bw, label %bb.u, label %.critedge

bb.u:                                             ; preds = %bb.t
  store i32 270, ptr %i.t, align 8, !tbaa !92
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 2205
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !62
  %i.bz = icmp eq i8 %i.by, 0
  br i1 %i.bz, label %bb.v, label %.critedge

bb.v:                                             ; preds = %bb.u
  store i32 269, ptr %i.t, align 8, !tbaa !92
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 2204
  %i.cb = load i8, ptr %i.ca, align 4, !tbaa !62
  %i.cc = icmp eq i8 %i.cb, 0
  br i1 %i.cc, label %bb.w, label %.critedge

bb.w:                                             ; preds = %bb.v
  store i32 268, ptr %i.t, align 8, !tbaa !92
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 2203
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !62
  %i.cf = icmp eq i8 %i.ce, 0
  br i1 %i.cf, label %bb.x, label %.critedge

bb.x:                                             ; preds = %bb.w
  store i32 267, ptr %i.t, align 8, !tbaa !92
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 2202
  %i.ch = load i8, ptr %i.cg, align 2, !tbaa !62
  %i.ci = icmp eq i8 %i.ch, 0
  br i1 %i.ci, label %bb.y, label %.critedge

bb.y:                                             ; preds = %bb.x
  store i32 266, ptr %i.t, align 8, !tbaa !92
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 2201
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !62
  %i.cl = icmp eq i8 %i.ck, 0
  br i1 %i.cl, label %bb.z, label %.critedge

bb.z:                                             ; preds = %bb.y
  store i32 265, ptr %i.t, align 8, !tbaa !92
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 2200
  %i.cn = load i8, ptr %i.cm, align 8, !tbaa !62
  %i.co = icmp eq i8 %i.cn, 0
  br i1 %i.co, label %bb.aa, label %.critedge

bb.aa:                                            ; preds = %bb.z
  store i32 264, ptr %i.t, align 8, !tbaa !92
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 2199
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !62
  %i.cr = icmp eq i8 %i.cq, 0
  br i1 %i.cr, label %bb.ab, label %.critedge

bb.ab:                                            ; preds = %bb.aa
  store i32 263, ptr %i.t, align 8, !tbaa !92
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 2198
  %i.ct = load i8, ptr %i.cs, align 2, !tbaa !62
  %i.cu = icmp eq i8 %i.ct, 0
  br i1 %i.cu, label %bb.ac, label %.critedge

bb.ac:                                            ; preds = %bb.ab
  store i32 262, ptr %i.t, align 8, !tbaa !92
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 2197
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !62
  %i.cx = icmp eq i8 %i.cw, 0
  br i1 %i.cx, label %bb.ad, label %.critedge

bb.ad:                                            ; preds = %bb.ac
  store i32 261, ptr %i.t, align 8, !tbaa !92
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 2196
  %i.cz = load i8, ptr %i.cy, align 4, !tbaa !62
  %i.da = icmp eq i8 %i.cz, 0
  br i1 %i.da, label %bb.ae, label %.critedge

bb.ae:                                            ; preds = %bb.ad
  store i32 260, ptr %i.t, align 8, !tbaa !92
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 2195
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !62
  %i.dd = icmp eq i8 %i.dc, 0
  br i1 %i.dd, label %bb.af, label %.critedge

bb.af:                                            ; preds = %bb.ae
  store i32 259, ptr %i.t, align 8, !tbaa !92
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 2194
  %i.df = load i8, ptr %i.de, align 2, !tbaa !62
  %i.dg = icmp eq i8 %i.df, 0
  br i1 %i.dg, label %bb.ag, label %.critedge

bb.ag:                                            ; preds = %bb.af
  store i32 258, ptr %i.t, align 8, !tbaa !92
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 2193
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !62
  %i.dj = icmp eq i8 %i.di, 0                     ; 2 uses
  %spec.store.select = select i1 %i.dj, i32 257, i32 258
  store i32 %spec.store.select, ptr %i.t, align 8
  %spec.select = select i1 %i.dj, i32 257, i32 258
  br label %.critedge

end_hunk_0
begin_hunk_1_@_ZN9NCompress8NDeflate8NEncoder6CCoder11TryDynBlockEij:bb.a
  %i.mr = load i32, ptr %i.mq, align 16, !tbaa !12
  %i.ms = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !12
  %i.mu = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.mv = load i32, ptr %i.mu, align 8, !tbaa !12
  %i.mw = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.mx = load i32, ptr %i.mw, align 4, !tbaa !12
  %i.my = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.mz = load i32, ptr %i.my, align 16, !tbaa !12
  %i.na = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  %i.nb = load i32, ptr %i.na, align 4, !tbaa !12
  %i.nc = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.nd = load i32, ptr %i.nc, align 8, !tbaa !12
  %i.ne = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  %i.nf = load i32, ptr %i.ne, align 4, !tbaa !12
  %i.ng = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.nh = load i32, ptr %i.ng, align 16, !tbaa !12 ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  %i.nj = load i32, ptr %i.ni, align 4, !tbaa !12 ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.nl = load i32, ptr %i.nk, align 8, !tbaa !12 ; 2 uses
  %i.nm = shl i32 %i.nh, 1
  %i.nn = mul i32 %i.nj, 3
  %i.no = add i32 %i.nn, %i.nm
  %i.np = mul i32 %i.nl, 7
  %i.nq = add i32 %i.np, %i.no
  %i.nr = zext i8 %i.kf to i32
  %i.ns = mul i32 %i.mb, %i.nr
  %i.nt = zext i8 %i.lv to i32
  %i.nu = mul i32 %i.md, %i.nt
  %i.nv = add i32 %i.nu, %i.ns
  %i.nw = zext i8 %i.lp to i32
  %i.nx = mul i32 %i.mf, %i.nw
  %i.ny = add i32 %i.nx, %i.nv
  %i.nz = zext i8 %i.lj to i32
  %i.oa = mul i32 %i.mh, %i.nz
  %i.ob = add i32 %i.oa, %i.ny
  %i.oc = zext i8 %i.ld to i32
  %i.od = mul i32 %i.mj, %i.oc
  %i.oe = add i32 %i.od, %i.ob
  %i.of = zext i8 %i.kx to i32
  %i.og = mul i32 %i.ml, %i.of
  %i.oh = add i32 %i.og, %i.oe
  %i.oi = zext i8 %i.kr to i32
  %i.oj = mul i32 %i.mn, %i.oi
  %i.ok = add i32 %i.oj, %i.oh
  %i.ol = zext i8 %i.kl to i32
  %i.om = mul i32 %i.mp, %i.ol
  %i.on = add i32 %i.om, %i.ok
  %i.oo = zext i8 %i.ki to i32
  %i.op = mul i32 %i.mr, %i.oo
  %i.oq = add i32 %i.op, %i.on
  %i.or = zext i8 %i.ko to i32
  %i.os = mul i32 %i.mt, %i.or
  %i.ot = add i32 %i.os, %i.oq
  %i.ou = zext i8 %i.ku to i32
  %i.ov = mul i32 %i.mv, %i.ou
  %i.ow = add i32 %i.ov, %i.ot
  %i.ox = zext i8 %i.la to i32
  %i.oy = mul i32 %i.mx, %i.ox
  %i.oz = add i32 %i.oy, %i.ow
  %i.pa = zext i8 %i.lg to i32
  %i.pb = mul i32 %i.mz, %i.pa
  %i.pc = add i32 %i.pb, %i.oz
  %i.pd = zext i8 %i.lm to i32
  %i.pe = mul i32 %i.nb, %i.pd
  %i.pf = add i32 %i.pe, %i.pc
  %i.pg = zext i8 %i.ls to i32
  %i.ph = mul i32 %i.nd, %i.pg
  %i.pi = add i32 %i.ph, %i.pf
  %i.pj = zext i8 %i.ly to i32
  %i.pk = mul i32 %i.nf, %i.pj
  %i.pl = add i32 %i.pk, %i.pi
  %i.pm = zext i8 %i.jy to i32
  %i.pn = mul i32 %i.nh, %i.pm
  %i.po = add i32 %i.pn, %i.pl
  %i.pp = zext i8 %i.ka to i32
  %i.pq = mul i32 %i.nj, %i.pp
  %i.pr = add i32 %i.pq, %i.po
  %i.ps = zext i8 %i.kd to i32
  %i.pt = mul i32 %i.nl, %i.ps
  %i.pu = add i32 %i.pt, %i.pr
  %i.pv = load i32, ptr %i.jv, align 8, !tbaa !94
  %i.pw = mul i32 %i.pv, 3
  %i.px = add i32 %i.ma, 17
  %i.py = add i32 %i.px, %i.pu
  %i.pz = add i32 %i.py, %i.nq
  %i.qa = add i32 %i.pz, %i.pw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret i32 %i.qa
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN9NCompress8NDeflate8NEncoder6CCoder13TryFixedBlockEi(ptr noundef nonnull align 8 dereferenceable(39764) initializes((1288, 1292), (1936, 2256), (4912, 4916)) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4920
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [332 x i8], ptr %i.b, i64 %i.c ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 324
  %i.f = load i32, ptr %i.e, align 4, !tbaa !89
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4912
  store i32 %i.f, ptr %i.g, align 8, !tbaa !83
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 328
  %i.i = load i32, ptr %i.h, align 4, !tbaa !90
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1288
  store i32 %i.i, ptr %i.j, align 8, !tbaa !64
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1936 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %i.k, i8 8, i64 144, i1 false), !tbaa !62
  %scevgep.i = getelementptr inbounds nuw i8, ptr %0, i64 2080
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %scevgep.i, i8 9, i64 112, i1 false), !tbaa !62
  %scevgep30.i = getelementptr inbounds nuw i8, ptr %0, i64 2192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %scevgep30.i, i8 7, i64 24, i1 false), !tbaa !62
  %scevgep32.i = getelementptr inbounds nuw i8, ptr %0, i64 2216
  store i64 578721382704613384, ptr %scevgep32.i, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2224
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, i8 5, i64 32, i1 false), !tbaa !62
  tail call void @_ZN9NCompress8NDeflate8NEncoder6CCoder9SetPricesERKNS0_7CLevelsE(ptr noundef nonnull align 8 dereferenceable(39764) %0, ptr noundef nonnull align 1 dereferenceable(320) %i.k)
  tail call void @_ZN9NCompress8NDeflate8NEncoder6CCoder8TryBlockEv(ptr noundef nonnull align 8 dereferenceable(39764) %0)
  %i.m = tail call noundef i32 @_ZNK9NCompress8NDeflate8NEncoder6CCoder15GetLzBlockPriceEv(ptr noundef nonnull align 8 dereferenceable(39764) %0)
  %i.n = add i32 %i.m, 3
  ret i32 %i.n
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN9NCompress8NDeflate8NEncoder6CCoder13GetBlockPriceEii(ptr noundef nonnull align 8 dereferenceable(39764) initializes((4912, 4916)) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4920 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.c = sext i32 %1 to i64                       ; 2 uses
  %i.d = getelementptr inbounds [332 x i8], ptr %i.b, i64 %i.c ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 322 ; 2 uses
  store i8 0, ptr %i.e, align 2, !tbaa !95
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1292
  %i.g = load i32, ptr %i.f, align 4, !tbaa !39
  %i.h = tail call noundef i32 @_ZN9NCompress8NDeflate8NEncoder6CCoder11TryDynBlockEij(ptr noundef nonnull align 8 dereferenceable(39764) %0, i32 noundef %1, i32 noundef %i.g) ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4912 ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !83   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 324 ; 3 uses
  store i32 %i.j, ptr %i.k, align 4, !tbaa !89
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1372
  %i.m = load i32, ptr %i.l, align 4, !tbaa !82   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1288 ; 4 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !64
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1380 ; 4 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !72
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1300
  %i.s = load i8, ptr %i.r, align 4, !tbaa !96, !range !54, !noundef !55
  %i.t = trunc nuw i8 %i.s to i1
  %i.u = icmp ult i32 %i.m, 257
  %or.cond = select i1 %i.t, i1 %i.u, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.w = getelementptr inbounds [332 x i8], ptr %i.v, i64 %i.c ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 324
  %i.y = load i32, ptr %i.x, align 4, !tbaa !89
  store i32 %i.y, ptr %i.i, align 8, !tbaa !83
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 328
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !90
  store i32 %i.aa, ptr %i.n, align 8, !tbaa !64
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1936 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %i.ab, i8 8, i64 144, i1 false), !tbaa !62
  %scevgep.i.i = getelementptr inbounds nuw i8, ptr %0, i64 2080
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %scevgep.i.i, i8 9, i64 112, i1 false), !tbaa !62
  %scevgep30.i.i = getelementptr inbounds nuw i8, ptr %0, i64 2192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %scevgep30.i.i, i8 7, i64 24, i1 false), !tbaa !62
  %scevgep32.i.i = getelementptr inbounds nuw i8, ptr %0, i64 2216
  store i64 578721382704613384, ptr %scevgep32.i.i, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 2224
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, i8 5, i64 32, i1 false), !tbaa !62
  tail call void @_ZN9NCompress8NDeflate8NEncoder6CCoder9SetPricesERKNS0_7CLevelsE(ptr noundef nonnull align 8 dereferenceable(39764) %0, ptr noundef nonnull align 1 dereferenceable(320) %i.ab)
  tail call void @_ZN9NCompress8NDeflate8NEncoder6CCoder8TryBlockEv(ptr noundef nonnull align 8 dereferenceable(39764) %0)
  %i.ad = tail call noundef i32 @_ZNK9NCompress8NDeflate8NEncoder6CCoder15GetLzBlockPriceEv(ptr noundef nonnull align 8 dereferenceable(39764) %0)
  %i.ae = add i32 %i.ad, 3                        ; 2 uses
  %i.af = icmp ult i32 %i.ae, %i.h
  %i.ag = zext i1 %i.af to i8
  store i8 %i.ag, ptr %i.e, align 2, !tbaa !95
  %spec.select = tail call i32 @llvm.umin.i32(i32 %i.ae, i32 %i.h)
  %.pre = load i32, ptr %i.i, align 8, !tbaa !83
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.ah = phi i32 [ %.pre, %bb.b ], [ %i.j, %bb.a ]
  %.1 = phi i32 [ %spec.select, %bb.b ], [ %i.h, %bb.a ] ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.013.i = phi i32 [ 0, %bb.c ], [ %i.al, %bb.d ]
  %.0.i = phi i32 [ %i.ah, %bb.c ], [ %i.am, %bb.d ] ; 2 uses
  %i.ai = tail call i32 @llvm.umin.i32(i32 %.0.i, i32 65535) ; 2 uses
  %i.aj = shl nuw nsw i32 %i.ai, 3
  %i.ak = add i32 %.013.i, 40
  %i.al = add i32 %i.ak, %i.aj                    ; 3 uses
  %i.am = sub nuw i32 %.0.i, %i.ai                ; 2 uses
  %.not.i = icmp eq i32 %i.am, 0
  br i1 %.not.i, label %_ZN9NCompress8NDeflate8NEncoderL13GetStorePriceEji.exit, label %bb.d, !llvm.loop !154

_ZN9NCompress8NDeflate8NEncoderL13GetStorePriceEji.exit: ; preds = %bb.d
  %i.an = icmp ule i32 %i.al, %.1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 321
  %i.ap = zext i1 %i.an to i8
  store i8 %i.ap, ptr %i.ao, align 1, !tbaa !97
  %spec.select56 = tail call i32 @llvm.umin.i32(i32 %i.al, i32 %.1) ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 320 ; 2 uses
  store i8 0, ptr %i.aq, align 4, !tbaa !98
  %i.ar = icmp sgt i32 %2, 1
  %i.as = icmp ugt i32 %i.m, 127
  %or.cond57 = select i1 %i.ar, i1 %i.as, i1 false
  br i1 %or.cond57, label %bb.e, label %bb.g

bb.e:                                             ; preds = %_ZN9NCompress8NDeflate8NEncoderL13GetStorePriceEji.exit
  %i.at = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.au = shl i32 %1, 1                           ; 3 uses
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds [332 x i8], ptr %i.at, i64 %i.av ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(320) %i.aw, ptr noundef nonnull align 4 dereferenceable(320) %i.d, i64 320, i1 false), !tbaa.struct !91
  %i.ax = load i32, ptr %i.k, align 4, !tbaa !89
  %i.ay = lshr i32 %i.ax, 1
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 324 ; 3 uses
  store i32 %i.ay, ptr %i.az, align 4, !tbaa !89
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 328
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !90
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 328
  store i32 %i.bb, ptr %i.bc, align 4, !tbaa !90
  %i.bd = add nsw i32 %2, -1                      ; 2 uses
  %i.be = tail call noundef i32 @_ZN9NCompress8NDeflate8NEncoder6CCoder13GetBlockPriceEii(ptr noundef nonnull align 8 dereferenceable(39764) %0, i32 noundef %i.au, i32 noundef %i.bd)
  %i.bf = load i32, ptr %i.k, align 4, !tbaa !89
  %i.bg = load i32, ptr %i.az, align 4, !tbaa !89 ; 2 uses
  %i.bh = sub i32 %i.bf, %i.bg                    ; 2 uses
  %i.bi = icmp ugt i32 %i.bg, 63
  %i.bj = icmp ugt i32 %i.bh, 63
  %or.cond58 = select i1 %i.bi, i1 %i.bj, i1 false
  br i1 %or.cond58, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bk = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.bl = or disjoint i32 %i.au, 1                ; 2 uses
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds [332 x i8], ptr %i.bk, i64 %i.bm ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(320) %i.bn, ptr noundef nonnull align 4 dereferenceable(320) %i.d, i64 320, i1 false), !tbaa.struct !91
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 324
  store i32 %i.bh, ptr %i.bo, align 4, !tbaa !89
  %i.bp = load i32, ptr %i.n, align 8, !tbaa !64
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 328
  store i32 %i.bp, ptr %i.bq, align 4, !tbaa !90
  %i.br = load i32, ptr %i.az, align 4, !tbaa !89
  %i.bs = load i32, ptr %i.p, align 4, !tbaa !72
  %i.bt = sub i32 %i.bs, %i.br
  store i32 %i.bt, ptr %i.p, align 4, !tbaa !72
  %i.bu = tail call noundef i32 @_ZN9NCompress8NDeflate8NEncoder6CCoder13GetBlockPriceEii(ptr noundef nonnull align 8 dereferenceable(39764) %0, i32 noundef %i.bl, i32 noundef %i.bd)
  %i.bv = add i32 %i.bu, %i.be                    ; 2 uses
  %i.bw = icmp ult i32 %i.bv, %spec.select56
  %i.bx = zext i1 %i.bw to i8
  store i8 %i.bx, ptr %i.aq, align 4, !tbaa !98
  %spec.select59 = tail call i32 @llvm.umin.i32(i32 %i.bv, i32 %spec.select56)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %_ZN9NCompress8NDeflate8NEncoderL13GetStorePriceEji.exit
  %.5 = phi i32 [ %spec.select56, %_ZN9NCompress8NDeflate8NEncoderL13GetStorePriceEji.exit ], [ %spec.select59, %bb.f ], [ %spec.select56, %bb.e ]
  store i32 %i.q, ptr %i.p, align 4, !tbaa !72
  store i32 %i.o, ptr %i.n, align 8, !tbaa !64
  ret i32 %.5
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9NCompress8NDeflate8NEncoder6CCoder9CodeBlockEib(ptr noundef nonnull align 8 dereferenceable(39764) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4920 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.c = sext i32 %1 to i64                       ; 2 uses
  %i.d = getelementptr inbounds [332 x i8], ptr %i.b, i64 %i.c ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 320
  %i.f = load i8, ptr %i.e, align 4, !tbaa !98, !range !54, !noundef !55
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %tailrecurse, label %tailrecurse._crit_edge

tailrecurse:                                      ; preds = %bb.a, %tailrecurse
  %.tr2529 = phi i32 [ %i.i, %tailrecurse ], [ %1, %bb.a ]
  %i.h = shl i32 %.tr2529, 1                      ; 2 uses
  tail call void @_ZN9NCompress8NDeflate8NEncoder6CCoder9CodeBlockEib(ptr noundef nonnull align 8 dereferenceable(39764) %0, i32 noundef %i.h, i1 noundef zeroext false)
  %i.i = or disjoint i32 %i.h, 1                  ; 3 uses
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.k = sext i32 %i.i to i64                     ; 2 uses
  %i.l = getelementptr inbounds [332 x i8], ptr %i.j, i64 %i.k ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 320
  %i.n = load i8, ptr %i.m, align 4, !tbaa !98, !range !54, !noundef !55
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %tailrecurse, label %tailrecurse._crit_edge

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  %.tr25.lcssa = phi i32 [ %1, %bb.a ], [ %i.i, %tailrecurse ]
  %.lcssa27 = phi i64 [ %i.c, %bb.a ], [ %i.k, %tailrecurse ]
  %.lcssa = phi ptr [ %i.d, %bb.a ], [ %i.l, %tailrecurse ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.lcssa, i64 321
  %i.q = load i8, ptr %i.p, align 1, !tbaa !97, !range !54, !noundef !55
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.b, label %bb.c

bb.b:                                             ; preds = %tailrecurse._crit_edge
  %i.s = getelementptr inbounds nuw i8, ptr %.lcssa, i64 324
  %i.t = load i32, ptr %i.s, align 4, !tbaa !89
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1380
  %i.v = load i32, ptr %i.u, align 4, !tbaa !72
  tail call void @_ZN9NCompress8NDeflate8NEncoder6CCoder15WriteStoreBlockEjjb(ptr noundef nonnull align 8 dereferenceable(39764) %0, i32 noundef %i.t, i32 noundef %i.v, i1 noundef zeroext %2)
  br label %bb.l

bb.c:                                             ; preds = %tailrecurse._crit_edge
  %i.w = zext i1 %2 to i32
  tail call void @_ZN9NCompress8NDeflate8NEncoder6CCoder9WriteBitsEji(ptr noundef nonnull align 8 dereferenceable(39764) %0, i32 noundef %i.w, i32 noundef 1)
  %i.x = getelementptr inbounds nuw i8, ptr %.lcssa, i64 322
  %i.y = load i8, ptr %i.x, align 2, !tbaa !95, !range !54, !noundef !55
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN9NCompress8NDeflate8NEncoder6CCoder9WriteBitsEji(ptr noundef nonnull align 8 dereferenceable(39764) %0, i32 noundef 1, i32 noundef 2)
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.ab = getelementptr inbounds [332 x i8], ptr %i.aa, i64 %.lcssa27 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 324
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !89
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 4912
  store i32 %i.ad, ptr %i.ae, align 8, !tbaa !83
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 328
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !90
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1288
  store i32 %i.ag, ptr %i.ah, align 8, !tbaa !64
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1936 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %i.ai, i8 8, i64 144, i1 false), !tbaa !62
  %scevgep.i.i = getelementptr inbounds nuw i8, ptr %0, i64 2080
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %scevgep.i.i, i8 9, i64 112, i1 false), !tbaa !62
  %scevgep30.i.i = getelementptr inbounds nuw i8, ptr %0, i64 2192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %scevgep30.i.i, i8 7, i64 24, i1 false), !tbaa !62
  %scevgep32.i.i = getelementptr inbounds nuw i8, ptr %0, i64 2216
  store i64 578721382704613384, ptr %scevgep32.i.i, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 2224 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, i8 5, i64 32, i1 false), !tbaa !62
  tail call void @_ZN9NCompress8NDeflate8NEncoder6CCoder9SetPricesERKNS0_7CLevelsE(ptr noundef nonnull align 8 dereferenceable(39764) %0, ptr noundef nonnull align 1 dereferenceable(320) %i.ai)
  tail call void @_ZN9NCompress8NDeflate8NEncoder6CCoder8TryBlockEv(ptr noundef nonnull align 8 dereferenceable(39764) %0)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 2256 ; 5 uses
  br label %bb.e

.preheader:                                       ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 3408 ; 2 uses
  %i.am = load i8, ptr %i.aj, align 8, !tbaa !62
  %i.an = zext i8 %i.am to i32
  %i.ao = sub nsw i32 9, %i.an
  %i.ap = shl nuw nsw i32 1, %i.ao
  store i32 %i.ap, ptr %i.al, align 8, !tbaa !12
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 2225
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !62
  %i.as = zext i8 %i.ar to i32
  %i.at = sub nsw i32 9, %i.as
  %i.au = shl nuw nsw i32 1, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 3412
  store i32 %i.au, ptr %i.av, align 4, !tbaa !12
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 2226
  %i.ax = load i8, ptr %i.aw, align 2, !tbaa !62
  %i.ay = zext i8 %i.ax to i32
  %i.az = sub nsw i32 9, %i.ay
  %i.ba = shl nuw nsw i32 1, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 3416
  store i32 %i.ba, ptr %i.bb, align 8, !tbaa !12
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 2227
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !62
  %i.be = zext i8 %i.bd to i32
  %i.bf = sub nsw i32 9, %i.be
  %i.bg = shl nuw nsw i32 1, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 3420
  store i32 %i.bg, ptr %i.bh, align 4, !tbaa !12
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 2228
  %i.bj = load i8, ptr %i.bi, align 4, !tbaa !62
  %i.bk = zext i8 %i.bj to i32
  %i.bl = sub nsw i32 9, %i.bk
  %i.bm = shl nuw nsw i32 1, %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 3424
  store i32 %i.bm, ptr %i.bn, align 8, !tbaa !12
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 2229
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !62
  %i.bq = zext i8 %i.bp to i32
  %i.br = sub nsw i32 9, %i.bq
  %i.bs = shl nuw nsw i32 1, %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 3428
  store i32 %i.bs, ptr %i.bt, align 4, !tbaa !12
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 2230
  %i.bv = load i8, ptr %i.bu, align 2, !tbaa !62
  %i.bw = zext i8 %i.bv to i32
  %i.bx = sub nsw i32 9, %i.bw
  %i.by = shl nuw nsw i32 1, %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 3432
  store i32 %i.by, ptr %i.bz, align 8, !tbaa !12
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 2231
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !62
  %i.cc = zext i8 %i.cb to i32
  %i.cd = sub nsw i32 9, %i.cc
  %i.ce = shl nuw nsw i32 1, %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 3436
end_hunk_1
begin_hunk_2_@_ZN9NCompress8NDeflate8NEncoder6CCoder9CodeBlockEib:bb.a
  %i.co = zext i8 %i.cn to i32
  %i.cp = sub nsw i32 9, %i.co
  %i.cq = shl nuw nsw i32 1, %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 3444
  store i32 %i.cq, ptr %i.cr, align 4, !tbaa !12
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 2234
  %i.ct = load i8, ptr %i.cs, align 2, !tbaa !62
  %i.cu = zext i8 %i.ct to i32
  %i.cv = sub nsw i32 9, %i.cu
  %i.cw = shl nuw nsw i32 1, %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 3448
  store i32 %i.cw, ptr %i.cx, align 8, !tbaa !12
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 2235
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !62
  %i.da = zext i8 %i.cz to i32
  %i.db = sub nsw i32 9, %i.da
  %i.dc = shl nuw nsw i32 1, %i.db
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 3452
  store i32 %i.dc, ptr %i.dd, align 4, !tbaa !12
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 2236
  %i.df = load i8, ptr %i.de, align 4, !tbaa !62
  %i.dg = zext i8 %i.df to i32
  %i.dh = sub nsw i32 9, %i.dg
  %i.di = shl nuw nsw i32 1, %i.dh
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 3456
  store i32 %i.di, ptr %i.dj, align 8, !tbaa !12
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 2237
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !62
  %i.dm = zext i8 %i.dl to i32
  %i.dn = sub nsw i32 9, %i.dm
  %i.do = shl nuw nsw i32 1, %i.dn
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 3460
  store i32 %i.do, ptr %i.dp, align 4, !tbaa !12
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 2238
  %i.dr = load i8, ptr %i.dq, align 2, !tbaa !62
  %i.ds = zext i8 %i.dr to i32
  %i.dt = sub nsw i32 9, %i.ds
  %i.du = shl nuw nsw i32 1, %i.dt
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 3464
  store i32 %i.du, ptr %i.dv, align 8, !tbaa !12
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 2239
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !62
  %i.dy = zext i8 %i.dx to i32
  %i.dz = sub nsw i32 9, %i.dy
  %i.ea = shl nuw nsw i32 1, %i.dz
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 3468
  store i32 %i.ea, ptr %i.eb, align 4, !tbaa !12
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 2240
  %i.ed = load i8, ptr %i.ec, align 8, !tbaa !62
  %i.ee = zext i8 %i.ed to i32
  %i.ef = sub nsw i32 9, %i.ee
  %i.eg = shl nuw nsw i32 1, %i.ef
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 3472
  store i32 %i.eg, ptr %i.eh, align 8, !tbaa !12
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 2241
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !62
  %i.ek = zext i8 %i.ej to i32
  %i.el = sub nsw i32 9, %i.ek
  %i.em = shl nuw nsw i32 1, %i.el
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 3476
  store i32 %i.em, ptr %i.en, align 4, !tbaa !12
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 2242
  %i.ep = load i8, ptr %i.eo, align 2, !tbaa !62
  %i.eq = zext i8 %i.ep to i32
  %i.er = sub nsw i32 9, %i.eq
  %i.es = shl nuw nsw i32 1, %i.er
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 3480
  store i32 %i.es, ptr %i.et, align 8, !tbaa !12
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 2243
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !62
  %i.ew = zext i8 %i.ev to i32
  %i.ex = sub nsw i32 9, %i.ew
  %i.ey = shl nuw nsw i32 1, %i.ex
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 3484
  store i32 %i.ey, ptr %i.ez, align 4, !tbaa !12
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 2244
  %i.fb = load i8, ptr %i.fa, align 4, !tbaa !62
  %i.fc = zext i8 %i.fb to i32
  %i.fd = sub nsw i32 9, %i.fc
  %i.fe = shl nuw nsw i32 1, %i.fd
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 3488
  store i32 %i.fe, ptr %i.ff, align 8, !tbaa !12
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 2245
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !62
  %i.fi = zext i8 %i.fh to i32
  %i.fj = sub nsw i32 9, %i.fi
  %i.fk = shl nuw nsw i32 1, %i.fj
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 3492
  store i32 %i.fk, ptr %i.fl, align 4, !tbaa !12
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 2246
  %i.fn = load i8, ptr %i.fm, align 2, !tbaa !62
  %i.fo = zext i8 %i.fn to i32
  %i.fp = sub nsw i32 9, %i.fo
  %i.fq = shl nuw nsw i32 1, %i.fp
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 3496
  store i32 %i.fq, ptr %i.fr, align 8, !tbaa !12
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 2247
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !62
  %i.fu = zext i8 %i.ft to i32
  %i.fv = sub nsw i32 9, %i.fu
  %i.fw = shl nuw nsw i32 1, %i.fv
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 3500
  store i32 %i.fw, ptr %i.fx, align 4, !tbaa !12
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 2248
  %i.fz = load i8, ptr %i.fy, align 8, !tbaa !62
  %i.ga = zext i8 %i.fz to i32
  %i.gb = sub nsw i32 9, %i.ga
  %i.gc = shl nuw nsw i32 1, %i.gb
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 3504
  store i32 %i.gc, ptr %i.gd, align 8, !tbaa !12
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 2249
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !62
  %i.gg = zext i8 %i.gf to i32
  %i.gh = sub nsw i32 9, %i.gg
  %i.gi = shl nuw nsw i32 1, %i.gh
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 3508
  store i32 %i.gi, ptr %i.gj, align 4, !tbaa !12
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 2250
  %i.gl = load i8, ptr %i.gk, align 2, !tbaa !62
  %i.gm = zext i8 %i.gl to i32
  %i.gn = sub nsw i32 9, %i.gm
  %i.go = shl nuw nsw i32 1, %i.gn
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 3512
  store i32 %i.go, ptr %i.gp, align 8, !tbaa !12
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 2251
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !62
  %i.gs = zext i8 %i.gr to i32
  %i.gt = sub nsw i32 9, %i.gs
  %i.gu = shl nuw nsw i32 1, %i.gt
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 3516
  store i32 %i.gu, ptr %i.gv, align 4, !tbaa !12
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 2252
  %i.gx = load i8, ptr %i.gw, align 4, !tbaa !62
  %i.gy = zext i8 %i.gx to i32
  %i.gz = sub nsw i32 9, %i.gy
  %i.ha = shl nuw nsw i32 1, %i.gz
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 3520
  store i32 %i.ha, ptr %i.hb, align 8, !tbaa !12
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 2253
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !62
  %i.he = zext i8 %i.hd to i32
  %i.hf = sub nsw i32 9, %i.he
  %i.hg = shl nuw nsw i32 1, %i.hf
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 3524
  store i32 %i.hg, ptr %i.hh, align 4, !tbaa !12
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 2254
  %i.hj = load i8, ptr %i.hi, align 2, !tbaa !62
  %i.hk = zext i8 %i.hj to i32
  %i.hl = sub nsw i32 9, %i.hk
  %i.hm = shl nuw nsw i32 1, %i.hl
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 3528
  store i32 %i.hm, ptr %i.hn, align 8, !tbaa !12
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 2255
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !62
  %i.hq = zext i8 %i.hp to i32
  %i.hr = sub nsw i32 9, %i.hq
  %i.hs = shl nuw nsw i32 1, %i.hr
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 3532
  store i32 %i.hs, ptr %i.ht, align 4, !tbaa !12
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 3536
  tail call void @Huffman_Generate(ptr noundef nonnull %i.ak, ptr noundef nonnull %i.hu, ptr noundef nonnull %i.ai, i32 noundef 288, i32 noundef 9)
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 4688
  tail call void @Huffman_Generate(ptr noundef nonnull %i.al, ptr noundef nonnull %i.hv, ptr noundef nonnull %i.aj, i32 noundef 32, i32 noundef 9)
  br label %bb.k

bb.e:                                             ; preds = %bb.e, %bb.d
  %indvars.iv40 = phi i64 [ 0, %bb.d ], [ %indvars.iv.next41.3, %bb.e ] ; 6 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ai, i64 %indvars.iv40
  %i.hx = load i8, ptr %i.hw, align 4, !tbaa !62
  %i.hy = zext i8 %i.hx to i32
  %i.hz = sub nsw i32 9, %i.hy
  %i.ia = shl nuw nsw i32 1, %i.hz
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv40
  store i32 %i.ia, ptr %i.ib, align 8, !tbaa !12
  %indvars.iv.next41 = or disjoint i64 %indvars.iv40, 1 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ai, i64 %indvars.iv.next41
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !62
  %i.ie = zext i8 %i.id to i32
  %i.if = sub nsw i32 9, %i.ie
  %i.ig = shl nuw nsw i32 1, %i.if
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next41
  store i32 %i.ig, ptr %i.ih, align 4, !tbaa !12
  %indvars.iv.next41.1 = or disjoint i64 %indvars.iv40, 2 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ai, i64 %indvars.iv.next41.1
  %i.ij = load i8, ptr %i.ii, align 2, !tbaa !62
  %i.ik = zext i8 %i.ij to i32
  %i.il = sub nsw i32 9, %i.ik
  %i.im = shl nuw nsw i32 1, %i.il
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next41.1
  store i32 %i.im, ptr %i.in, align 8, !tbaa !12
  %indvars.iv.next41.2 = or disjoint i64 %indvars.iv40, 3 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.ai, i64 %indvars.iv.next41.2
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !62
  %i.iq = zext i8 %i.ip to i32
  %i.ir = sub nsw i32 9, %i.iq
  %i.is = shl nuw nsw i32 1, %i.ir
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next41.2
  store i32 %i.is, ptr %i.it, align 4, !tbaa !12
  %indvars.iv.next41.3 = add nuw nsw i64 %indvars.iv40, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next41.3, 288
  br i1 %exitcond.not.3, label %.preheader, label %bb.e, !llvm.loop !155

bb.f:                                             ; preds = %bb.c
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 1296
  %i.iv = load i32, ptr %i.iu, align 8, !tbaa !40
  %i.iw = icmp sgt i32 %i.iv, 1
  br i1 %i.iw, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 1300
  %i.iy = load i8, ptr %i.ix, align 4, !tbaa !96, !range !54, !noundef !55
  %i.iz = trunc nuw i8 %i.iy to i1
  br i1 %i.iz, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ja = tail call noundef i32 @_ZN9NCompress8NDeflate8NEncoder6CCoder11TryDynBlockEij(ptr noundef nonnull align 8 dereferenceable(39764) %0, i32 noundef %.tr25.lcssa, i32 noundef 1) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call void @_ZN9NCompress8NDeflate8NEncoder6CCoder9WriteBitsEji(ptr noundef nonnull align 8 dereferenceable(39764) %0, i32 noundef 2, i32 noundef 2)
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 1360 ; 2 uses
  %i.jc = load i32, ptr %i.jb, align 8, !tbaa !92
  %i.jd = add i32 %i.jc, -257
  tail call void @_ZN9NCompress8NDeflate8NEncoder6CCoder9WriteBitsEji(ptr noundef nonnull align 8 dereferenceable(39764) %0, i32 noundef %i.jd, i32 noundef 5)
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 1364 ; 2 uses
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !93
  %i.jg = add i32 %i.jf, -1
  tail call void @_ZN9NCompress8NDeflate8NEncoder6CCoder9WriteBitsEji(ptr noundef nonnull align 8 dereferenceable(39764) %0, i32 noundef %i.jg, i32 noundef 5)
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 1368 ; 3 uses
  %i.ji = load i32, ptr %i.jh, align 8, !tbaa !94
  %i.jj = add i32 %i.ji, -4
  tail call void @_ZN9NCompress8NDeflate8NEncoder6CCoder9WriteBitsEji(ptr noundef nonnull align 8 dereferenceable(39764) %0, i32 noundef %i.jj, i32 noundef 4)
  %i.jk = load i32, ptr %i.jh, align 8, !tbaa !94
  %.not = icmp eq i32 %i.jk, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph33

.lr.ph33:                                         ; preds = %bb.i
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 1338
  br label %bb.j

._crit_edge:                                      ; preds = %bb.j, %bb.i
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 4816 ; 4 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 4892 ; 3 uses
  %wide.load = load <4 x i32>, ptr %i.jm, align 8, !tbaa !12
  %i.jo = trunc <4 x i32> %wide.load to <4 x i16>
  %i.jp = tail call <4 x i16> @llvm.bitreverse.v4i16(<4 x i16> %i.jo)
  %i.jq = zext <4 x i16> %i.jp to <4 x i32>
  %wide.load53 = load <4 x i8>, ptr %i.jn, align 4, !tbaa !62
  %i.jr = zext <4 x i8> %wide.load53 to <4 x i32>
  %i.js = sub nsw <4 x i32> splat (i32 16), %i.jr
  %i.jt = lshr <4 x i32> %i.jq, %i.js
  store <4 x i32> %i.jt, ptr %i.jm, align 8, !tbaa !12
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 4832 ; 2 uses
  %wide.load.1 = load <4 x i32>, ptr %i.ju, align 8, !tbaa !12
  %i.jv = trunc <4 x i32> %wide.load.1 to <4 x i16>
  %i.jw = tail call <4 x i16> @llvm.bitreverse.v4i16(<4 x i16> %i.jv)
  %i.jx = zext <4 x i16> %i.jw to <4 x i32>
  %i.jy = getelementptr inbounds nuw i8, ptr %0, i64 4896
  %wide.load53.1 = load <4 x i8>, ptr %i.jy, align 8, !tbaa !62
  %i.jz = zext <4 x i8> %wide.load53.1 to <4 x i32>
  %i.ka = sub nsw <4 x i32> splat (i32 16), %i.jz
  %i.kb = lshr <4 x i32> %i.jx, %i.ka
  store <4 x i32> %i.kb, ptr %i.ju, align 8, !tbaa !12
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 4848 ; 2 uses
  %wide.load.2 = load <4 x i32>, ptr %i.kc, align 8, !tbaa !12
  %i.kd = trunc <4 x i32> %wide.load.2 to <4 x i16>
  %i.ke = tail call <4 x i16> @llvm.bitreverse.v4i16(<4 x i16> %i.kd)
  %i.kf = zext <4 x i16> %i.ke to <4 x i32>
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 4900
  %wide.load53.2 = load <4 x i8>, ptr %i.kg, align 4, !tbaa !62
  %i.kh = zext <4 x i8> %wide.load53.2 to <4 x i32>
  %i.ki = sub nsw <4 x i32> splat (i32 16), %i.kh
  %i.kj = lshr <4 x i32> %i.kf, %i.ki
  store <4 x i32> %i.kj, ptr %i.kc, align 8, !tbaa !12
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 4864 ; 2 uses
  %wide.load.3 = load <4 x i32>, ptr %i.kk, align 8, !tbaa !12
  %i.kl = trunc <4 x i32> %wide.load.3 to <4 x i16>
  %i.km = tail call <4 x i16> @llvm.bitreverse.v4i16(<4 x i16> %i.kl)
  %i.kn = zext <4 x i16> %i.km to <4 x i32>
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 4904
  %wide.load53.3 = load <4 x i8>, ptr %i.ko, align 8, !tbaa !62
  %i.kp = zext <4 x i8> %wide.load53.3 to <4 x i32>
  %i.kq = sub nsw <4 x i32> splat (i32 16), %i.kp
  %i.kr = lshr <4 x i32> %i.kn, %i.kq
  store <4 x i32> %i.kr, ptr %i.kk, align 8, !tbaa !12
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 4880 ; 2 uses
  %i.kt = load i32, ptr %i.ks, align 8, !tbaa !12
  %trunc.i = trunc i32 %i.kt to i16
  %rev.i = tail call i16 @llvm.bitreverse.i16(i16 %trunc.i)
  %i.ku = zext i16 %rev.i to i32
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 4908
  %i.kw = load i8, ptr %i.kv, align 4, !tbaa !62
  %i.kx = zext i8 %i.kw to i32
  %i.ky = sub nsw i32 16, %i.kx
  %i.kz = lshr i32 %i.ku, %i.ky
  store i32 %i.kz, ptr %i.ks, align 8, !tbaa !12
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 4884 ; 2 uses
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !12
  %trunc.i.1 = trunc i32 %i.lb to i16
  %rev.i.1 = tail call i16 @llvm.bitreverse.i16(i16 %trunc.i.1)
  %i.lc = zext i16 %rev.i.1 to i32
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 4909
  %i.le = load i8, ptr %i.ld, align 1, !tbaa !62
  %i.lf = zext i8 %i.le to i32
  %i.lg = sub nsw i32 16, %i.lf
  %i.lh = lshr i32 %i.lc, %i.lg
  store i32 %i.lh, ptr %i.la, align 4, !tbaa !12
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 4888 ; 2 uses
  %i.lj = load i32, ptr %i.li, align 8, !tbaa !12
  %trunc.i.2 = trunc i32 %i.lj to i16
  %rev.i.2 = tail call i16 @llvm.bitreverse.i16(i16 %trunc.i.2)
  %i.lk = zext i16 %rev.i.2 to i32
  %i.ll = getelementptr inbounds nuw i8, ptr %0, i64 4910
  %i.lm = load i8, ptr %i.ll, align 2, !tbaa !62
  %i.ln = zext i8 %i.lm to i32
  %i.lo = sub nsw i32 16, %i.ln
  %i.lp = lshr i32 %i.lk, %i.lo
  store i32 %i.lp, ptr %i.li, align 8, !tbaa !12
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 1936
  %i.lr = load i32, ptr %i.jb, align 8, !tbaa !92
  tail call void @_ZN9NCompress8NDeflate8NEncoder6CCoder14LevelTableCodeEPKhiS4_PKj(ptr noundef nonnull align 8 dereferenceable(39764) %0, ptr noundef nonnull %i.lq, i32 noundef %i.lr, ptr noundef nonnull %i.jn, ptr noundef nonnull %i.jm)
  %i.ls = getelementptr inbounds nuw i8, ptr %0, i64 2224
  %i.lt = load i32, ptr %i.je, align 4, !tbaa !93
  tail call void @_ZN9NCompress8NDeflate8NEncoder6CCoder14LevelTableCodeEPKhiS4_PKj(ptr noundef nonnull align 8 dereferenceable(39764) %0, ptr noundef nonnull %i.ls, i32 noundef %i.lt, ptr noundef nonnull %i.jn, ptr noundef nonnull %i.jm)
  br label %bb.k

bb.j:                                             ; preds = %.lr.ph33, %bb.j
  %indvars.iv = phi i64 [ 0, %.lr.ph33 ], [ %indvars.iv.next, %bb.j ] ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.jl, i64 %indvars.iv
  %i.lv = load i8, ptr %i.lu, align 1, !tbaa !62
  %i.lw = zext i8 %i.lv to i32
  tail call void @_ZN9NCompress8NDeflate8NEncoder6CCoder9WriteBitsEji(ptr noundef nonnull align 8 dereferenceable(39764) %0, i32 noundef %i.lw, i32 noundef 3)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.lx = load i32, ptr %i.jh, align 8, !tbaa !94
  %i.ly = zext i32 %i.lx to i64
  %i.lz = icmp samesign ult i64 %indvars.iv.next, %i.ly
  br i1 %i.lz, label %bb.j, label %._crit_edge, !llvm.loop !156

bb.k:                                             ; preds = %._crit_edge, %.preheader
  tail call void @_ZN9NCompress8NDeflate8NEncoder6CCoder10WriteBlockEv(ptr noundef nonnull align 8 dereferenceable(39764) %0)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.b
  %i.ma = getelementptr inbounds nuw i8, ptr %.lcssa, i64 324
  %i.mb = load i32, ptr %i.ma, align 4, !tbaa !89
  %i.mc = getelementptr inbounds nuw i8, ptr %0, i64 1380 ; 2 uses
  %i.md = load i32, ptr %i.mc, align 4, !tbaa !72
  %i.me = sub i32 %i.md, %i.mb
  store i32 %i.me, ptr %i.mc, align 4, !tbaa !72
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN9NCompress8NDeflate8NEncoder4ReadEPvS2_Pm(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef captures(none) %2) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.b = load i64, ptr %2, align 8, !tbaa !157
  %spec.select5 = tail call i64 @llvm.umin.i64(i64 %i.b, i64 2147483648)
  %spec.select = trunc nuw i64 %spec.select5 to i32 ; 2 uses
  store i32 %spec.select, ptr %i.a, align 4, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !49   ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !51
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = call noundef i32 %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %1, i32 noundef %spec.select, ptr noundef nonnull %i.a)
  %i.i = load i32, ptr %i.a, align 4, !tbaa !12
  %i.j = zext i32 %i.i to i64
  store i64 %i.j, ptr %2, align 8, !tbaa !157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret i32 %i.h
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN9NCompress8NDeflate8NEncoder6CCoder8CodeRealEP19ISequentialInStreamP20ISequentialOutStreamPKyS8_P21ICompressProgressInfo(ptr noundef nonnull align 8 dereferenceable(39764) initializes((1300, 1302)) %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4, ptr noundef %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %6 = alloca %"class.NCompress::NDeflate::NEncoder::CCoder::CCoderReleaser", align 8 ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1292
  %i.d = load i32, ptr %i.c, align 4, !tbaa !39
  %.not = icmp ne i32 %i.d, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1296 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = icmp ne i32 %i.f, 1
  %i.h = select i1 %.not, i1 true, i1 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1300
  %i.j = zext i1 %i.h to i8                       ; 2 uses
  store i8 %i.j, ptr %i.i, align 4, !tbaa !96
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1301
  store i8 %i.j, ptr %i.k, align 1, !tbaa !53
  %i.l = tail call noundef i32 @_ZN9NCompress8NDeflate8NEncoder6CCoder6CreateEv(ptr noundef nonnull align 8 dereferenceable(39764) %0) ; 2 uses
  %.not28.not = icmp eq i32 %i.l, 0
  br i1 %.not28.not, label %bb.b, label %bb.v

bb.b:                                             ; preds = %bb.a
  %i.m = load i32, ptr %i.e, align 8, !tbaa !40
  %i.n = shl nsw i32 %i.m, 12
  %i.o = add nsw i32 %i.n, 7168
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1304
  store i32 %i.o, ptr %i.p, align 8, !tbaa !84
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 0, ptr %i.a, align 8, !tbaa !160
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1232 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1240 ; 4 uses
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %1, align 8, !tbaa !51
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call noundef i32 %i.u(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !158 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.w = load ptr, ptr %i.r, align 8, !tbaa !49   ; 3 uses
  %.not6.i = icmp eq ptr %i.w, null
  br i1 %.not6.i, label %_ZN9CMyComPtrI19ISequentialInStreamEaSEPS0_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !51
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call noundef i32 %i.z(ptr noundef nonnull align 8 dereferenceable(8) %i.w), !inline_history !158 ; 0 uses
  br label %_ZN9CMyComPtrI19ISequentialInStreamEaSEPS0_.exit

_ZN9CMyComPtrI19ISequentialInStreamEaSEPS0_.exit: ; preds = %bb.d, %bb.e
  store ptr %1, ptr %i.r, align 8, !tbaa !49
  store ptr @_ZN9NCompress8NDeflate8NEncoder4ReadEPvS2_Pm, ptr %i.q, align 8, !tbaa !161
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.q, ptr %i.ab, align 8, !tbaa !162
  tail call void @MatchFinder_Init(ptr noundef nonnull %0)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1168 ; 6 uses
  tail call void @_ZN10COutBuffer9SetStreamEP20ISequentialOutStream(ptr noundef nonnull align 8 dereferenceable(61) %i.ac, ptr noundef %2)
  tail call void @_ZN10COutBuffer4InitEv(ptr noundef nonnull align 8 dereferenceable(61) %i.ac)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1224 ; 4 uses
  store i32 8, ptr %i.ad, align 8, !tbaa !78
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1228 ; 3 uses
  store i8 0, ptr %i.ae, align 4, !tbaa !79
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  store ptr %0, ptr %6, align 8, !tbaa !101
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1388
  store i32 0, ptr %i.af, align 4, !tbaa !77
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1384
  store i32 0, ptr %i.ag, align 8, !tbaa !73
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 4920 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !43 ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 332
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 660
  store i32 0, ptr %i.ak, align 4, !tbaa !90
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(332) %i.aj, i8 8, i64 256, i1 false), !tbaa !62
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 588
  store i8 13, ptr %i.al, align 4, !tbaa !62
  %scevgep.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 589
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %scevgep.i, i8 5, i64 63, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1380
  store i32 0, ptr %i.am, align 4, !tbaa !72
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 656 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1376 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.not29 = icmp eq ptr %5, null
  br i1 %.not29, label %_ZN9CMyComPtrI19ISequentialInStreamEaSEPS0_.exit.split.us, label %_ZN9CMyComPtrI19ISequentialInStreamEaSEPS0_.exit.split

_ZN9CMyComPtrI19ISequentialInStreamEaSEPS0_.exit.split.us: ; preds = %_ZN9CMyComPtrI19ISequentialInStreamEaSEPS0_.exit, %bb.g
  %i.ar = phi i64 [ %i.bb, %bb.g ], [ 0, %_ZN9CMyComPtrI19ISequentialInStreamEaSEPS0_.exit ]
  store i32 60923, ptr %i.an, align 4, !tbaa !89
  store i8 0, ptr %i.ao, align 8, !tbaa !65
  %i.as = load i32, ptr %i.e, align 8, !tbaa !40
  %i.at = invoke noundef i32 @_ZN9NCompress8NDeflate8NEncoder6CCoder13GetBlockPriceEii(ptr noundef nonnull align 8 dereferenceable(39764) %0, i32 noundef 1, i32 noundef %i.as)
          to label %bb.f unwind label %.loopexit.split.us ; 0 uses

bb.f:                                             ; preds = %_ZN9CMyComPtrI19ISequentialInStreamEaSEPS0_.exit.split.us
  %i.au = load i32, ptr %i.ap, align 8, !tbaa !69
  %i.av = load i32, ptr %i.aq, align 8, !tbaa !70
  %i.aw = icmp eq i32 %i.au, %i.av
  invoke void @_ZN9NCompress8NDeflate8NEncoder6CCoder9CodeBlockEib(ptr noundef nonnull align 8 dereferenceable(39764) %0, i32 noundef 1, i1 noundef zeroext %i.aw)
          to label %bb.g unwind label %.loopexit.split.us

bb.g:                                             ; preds = %bb.f
  %i.ax = load ptr, ptr %i.ah, align 8, !tbaa !43
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 656
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !89
  %i.ba = zext i32 %i.az to i64
  %i.bb = add i64 %i.ar, %i.ba                    ; 2 uses
  store i64 %i.bb, ptr %i.a, align 8, !tbaa !160
  %i.bc = load i32, ptr %i.ap, align 8, !tbaa !69
  %i.bd = load i32, ptr %i.aq, align 8, !tbaa !70
  %.not32.us = icmp eq i32 %i.bc, %i.bd
  br i1 %.not32.us, label %.split.us, label %_ZN9CMyComPtrI19ISequentialInStreamEaSEPS0_.exit.split.us, !llvm.loop !159

.loopexit.split.us:                               ; preds = %bb.f, %_ZN9CMyComPtrI19ISequentialInStreamEaSEPS0_.exit.split.us
  %lpad.loopexit.us = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

_ZN9CMyComPtrI19ISequentialInStreamEaSEPS0_.exit.split: ; preds = %_ZN9CMyComPtrI19ISequentialInStreamEaSEPS0_.exit, %bb.o
  store i32 60923, ptr %i.an, align 4, !tbaa !89
  store i8 0, ptr %i.ao, align 8, !tbaa !65
  %i.be = load i32, ptr %i.e, align 8, !tbaa !40
  %i.bf = invoke noundef i32 @_ZN9NCompress8NDeflate8NEncoder6CCoder13GetBlockPriceEii(ptr noundef nonnull align 8 dereferenceable(39764) %0, i32 noundef 1, i32 noundef %i.be)
          to label %bb.h unwind label %.loopexit.split ; 0 uses

bb.h:                                             ; preds = %_ZN9CMyComPtrI19ISequentialInStreamEaSEPS0_.exit.split
  %i.bg = load i32, ptr %i.ap, align 8, !tbaa !69
  %i.bh = load i32, ptr %i.aq, align 8, !tbaa !70
  %i.bi = icmp eq i32 %i.bg, %i.bh
  invoke void @_ZN9NCompress8NDeflate8NEncoder6CCoder9CodeBlockEib(ptr noundef nonnull align 8 dereferenceable(39764) %0, i32 noundef 1, i1 noundef zeroext %i.bi)
          to label %bb.i unwind label %.loopexit.split

bb.i:                                             ; preds = %bb.h
  %i.bj = load ptr, ptr %i.ah, align 8, !tbaa !43
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 656
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !89
  %i.bm = zext i32 %i.bl to i64
  %i.bn = load i64, ptr %i.a, align 8, !tbaa !160
  %i.bo = add i64 %i.bn, %i.bm
  store i64 %i.bo, ptr %i.a, align 8, !tbaa !160
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.bp = invoke noundef i64 @_ZNK10COutBuffer16GetProcessedSizeEv(ptr noundef nonnull align 8 dereferenceable(61) %i.ac)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.bq = load i32, ptr %i.ad, align 8, !tbaa !78
  %i.br = sub i32 15, %i.bq
  %i.bs = lshr i32 %i.br, 3
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = add i64 %i.bp, %i.bt
  store i64 %i.bu, ptr %i.b, align 8, !tbaa !160
  %i.bv = load ptr, ptr %5, align 8, !tbaa !51
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 40
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = invoke noundef i32 %i.bx(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
          to label %bb.k unwind label %bb.m       ; 2 uses

bb.k:                                             ; preds = %bb.j
  %.not31 = icmp eq i32 %i.by, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br i1 %.not31, label %bb.o, label %_ZN12CBitlEncoder5FlushEv.exit

.loopexit.split:                                  ; preds = %_ZN9CMyComPtrI19ISequentialInStreamEaSEPS0_.exit.split, %bb.h
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit.split-lp:                               ; preds = %bb.r, %_ZN12CBitlEncoder9FlushByteEv.exit.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

bb.l:                                             ; preds = %bb.i
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %bb.j
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pn = phi { ptr, i32 } [ %i.ca, %bb.m ], [ %i.bz, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %.loopexit

bb.o:                                             ; preds = %bb.k
  %i.cb = load i32, ptr %i.ap, align 8, !tbaa !69
  %i.cc = load i32, ptr %i.aq, align 8, !tbaa !70
  %.not32 = icmp eq i32 %i.cb, %i.cc
  br i1 %.not32, label %.split.us, label %_ZN9CMyComPtrI19ISequentialInStreamEaSEPS0_.exit.split, !llvm.loop !159

.split.us:                                        ; preds = %bb.o, %bb.g
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !163 ; 2 uses
  %.not33 = icmp eq i32 %i.ce, 0
  br i1 %.not33, label %bb.p, label %_ZN12CBitlEncoder5FlushEv.exit

bb.p:                                             ; preds = %.split.us
  %i.cf = load i32, ptr %i.ad, align 8, !tbaa !78
  %i.cg = icmp ult i32 %i.cf, 8
  br i1 %i.cg, label %bb.q, label %_ZN12CBitlEncoder9FlushByteEv.exit.i

bb.q:                                             ; preds = %bb.p
  %i.ch = load i8, ptr %i.ae, align 4, !tbaa !79
  %i.ci = load ptr, ptr %i.ac, align 8, !tbaa !20
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 3 uses
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !21 ; 2 uses
  %i.cl = add i32 %i.ck, 1
  store i32 %i.cl, ptr %i.cj, align 8, !tbaa !21
  %i.cm = zext i32 %i.ck to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cm
  store i8 %i.ch, ptr %i.cn, align 1, !tbaa !62
  %i.co = load i32, ptr %i.cj, align 8, !tbaa !21
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 1180
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !80
  %i.cr = icmp eq i32 %i.co, %i.cq
  br i1 %i.cr, label %bb.r, label %_ZN12CBitlEncoder9FlushByteEv.exit.i

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN10COutBuffer14FlushWithCheckEv(ptr noundef nonnull align 8 dereferenceable(61) %i.ac)
          to label %_ZN12CBitlEncoder9FlushByteEv.exit.i unwind label %.loopexit.split-lp

_ZN12CBitlEncoder9FlushByteEv.exit.i:             ; preds = %bb.r, %bb.q, %bb.p
  store i32 8, ptr %i.ad, align 8, !tbaa !78
  store i8 0, ptr %i.ae, align 4, !tbaa !79
  %i.cs = invoke noundef i32 @_ZN10COutBuffer5FlushEv(ptr noundef nonnull align 8 dereferenceable(61) %i.ac)
          to label %_ZN12CBitlEncoder5FlushEv.exit unwind label %.loopexit.split-lp

_ZN12CBitlEncoder5FlushEv.exit:                   ; preds = %bb.k, %_ZN12CBitlEncoder9FlushByteEv.exit.i, %.split.us
  %.4 = phi i32 [ %i.cs, %_ZN12CBitlEncoder9FlushByteEv.exit.i ], [ %i.ce, %.split.us ], [ %i.by, %bb.k ]
  %i.ct = load ptr, ptr %i.r, align 8, !tbaa !49  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ct, null
  br i1 %.not.i.i.i, label %_ZN9CMyComPtrI19ISequentialInStreamE7ReleaseEv.exit.i.i, label %bb.s

bb.s:                                             ; preds = %_ZN12CBitlEncoder5FlushEv.exit
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !51
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = invoke noundef i32 %i.cw(ptr noundef nonnull align 8 dereferenceable(8) %i.ct)
          to label %.noexc.i unwind label %bb.u, !inline_history !4 ; 0 uses

.noexc.i:                                         ; preds = %bb.s
  store ptr null, ptr %i.r, align 8, !tbaa !49
  br label %_ZN9CMyComPtrI19ISequentialInStreamE7ReleaseEv.exit.i.i

_ZN9CMyComPtrI19ISequentialInStreamE7ReleaseEv.exit.i.i: ; preds = %.noexc.i, %_ZN12CBitlEncoder5FlushEv.exit
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 1192 ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !22 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cz, null
  br i1 %.not.i.i.i.i.i, label %_ZN9NCompress8NDeflate8NEncoder6CCoder14CCoderReleaserD2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZN9CMyComPtrI19ISequentialInStreamE7ReleaseEv.exit.i.i
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !51
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = invoke noundef i32 %i.dc(ptr noundef nonnull align 8 dereferenceable(8) %i.cz)
          to label %.noexc1.i unwind label %bb.u, !inline_history !4 ; 0 uses

.noexc1.i:                                        ; preds = %bb.t
  store ptr null, ptr %i.cy, align 8, !tbaa !22
  br label %_ZN9NCompress8NDeflate8NEncoder6CCoder14CCoderReleaserD2Ev.exit

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.de = landingpad { ptr, i32 }
          catch ptr null
  %i.df = extractvalue { ptr, i32 } %i.de, 0
  call void @__clang_call_terminate(ptr %i.df) #22
  unreachable

_ZN9NCompress8NDeflate8NEncoder6CCoder14CCoderReleaserD2Ev.exit: ; preds = %_ZN9CMyComPtrI19ISequentialInStreamE7ReleaseEv.exit.i.i, %.noexc1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.v

.loopexit:                                        ; preds = %.loopexit.split-lp, %.loopexit.split.us, %.loopexit.split, %bb.n
  %.pn34 = phi { ptr, i32 } [ %.pn, %bb.n ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit.split ], [ %lpad.loopexit.us, %.loopexit.split.us ]
  call void @_ZN9NCompress8NDeflate8NEncoder6CCoder14CCoderReleaserD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  resume { ptr, i32 } %.pn34

bb.v:                                             ; preds = %bb.a, %_ZN9NCompress8NDeflate8NEncoder6CCoder14CCoderReleaserD2Ev.exit
  %.5 = phi i32 [ %.4, %_ZN9NCompress8NDeflate8NEncoder6CCoder14CCoderReleaserD2Ev.exit ], [ %i.l, %bb.a ]
  ret i32 %.5
}

declare void @MatchFinder_Init(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9NCompress8NDeflate8NEncoder6CCoder14CCoderReleaserD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !101    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1240 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !49   ; 3 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN9CMyComPtrI19ISequentialInStreamE7ReleaseEv.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !51
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = invoke noundef i32 %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.noexc unwind label %bb.d, !inline_history !4 ; 0 uses

.noexc:                                           ; preds = %bb.b
  store ptr null, ptr %i.b, align 8, !tbaa !49
  br label %_ZN9CMyComPtrI19ISequentialInStreamE7ReleaseEv.exit.i

_ZN9CMyComPtrI19ISequentialInStreamE7ReleaseEv.exit.i: ; preds = %.noexc, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 1192 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !22   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i, label %_ZN9NCompress8NDeflate8NEncoder6CCoder14ReleaseStreamsEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN9CMyComPtrI19ISequentialInStreamE7ReleaseEv.exit.i
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !51
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = invoke noundef i32 %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %.noexc1 unwind label %bb.d, !inline_history !4 ; 0 uses

.noexc1:                                          ; preds = %bb.c
  store ptr null, ptr %i.h, align 8, !tbaa !22
  br label %_ZN9NCompress8NDeflate8NEncoder6CCoder14ReleaseStreamsEv.exit

_ZN9NCompress8NDeflate8NEncoder6CCoder14ReleaseStreamsEv.exit: ; preds = %.noexc1, %_ZN9CMyComPtrI19ISequentialInStreamE7ReleaseEv.exit.i
  ret void

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #22
  unreachable
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN9NCompress8NDeflate8NEncoder6CCoder8BaseCodeEP19ISequentialInStreamP20ISequentialOutStreamPKyS8_P21ICompressProgressInfo(ptr noundef nonnull align 8 dereferenceable(39764) initializes((1300, 1302)) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readnone captures(none) %3, ptr nofree noundef readnone captures(none) %4, ptr noundef %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = invoke noundef i32 @_ZN9NCompress8NDeflate8NEncoder6CCoder8CodeRealEP19ISequentialInStreamP20ISequentialOutStreamPKyS8_P21ICompressProgressInfo(ptr noundef nonnull align 8 dereferenceable(39764) %0, ptr noundef %1, ptr noundef %2, ptr poison, ptr poison, ptr noundef %5)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          catch ptr @_ZTI19COutBufferException
          catch ptr null                          ; 2 uses
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  %i.d = extractvalue { ptr, i32 } %i.b, 1
  %i.e = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTI19COutBufferException) #23
  %i.f = icmp eq i32 %i.d, %i.e
  %i.g = tail call ptr @__cxa_begin_catch(ptr %i.c) #23
  br i1 %i.f, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.g, align 4, !tbaa !103
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.c
  %.0.ph = phi i32 [ %i.h, %bb.c ], [ -2147467259, %bb.b ]
  tail call void @__cxa_end_catch()
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi i32 [ %i.a, %bb.a ], [ %.0.ph, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN9NCompress8NDeflate8NEncoder9CCOMCoder4CodeEP19ISequentialInStreamP20ISequentialOutStreamPKyS8_P21ICompressProgressInfo(ptr noundef nonnull align 8 dereferenceable(39788) initializes((1324, 1326)) %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4, ptr noundef %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = invoke noundef i32 @_ZN9NCompress8NDeflate8NEncoder6CCoder8CodeRealEP19ISequentialInStreamP20ISequentialOutStreamPKyS8_P21ICompressProgressInfo(ptr noundef nonnull align 8 dereferenceable(39764) %i.a, ptr noundef %1, ptr noundef %2, ptr readnone poison, ptr readnone poison, ptr noundef %5)
          to label %_ZN9NCompress8NDeflate8NEncoder6CCoder8BaseCodeEP19ISequentialInStreamP20ISequentialOutStreamPKyS8_P21ICompressProgressInfo.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr @_ZTI19COutBufferException
          catch ptr null                          ; 2 uses
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  %i.e = extractvalue { ptr, i32 } %i.c, 1
  %i.f = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTI19COutBufferException) #23
  %i.g = icmp eq i32 %i.e, %i.f
  %i.h = tail call ptr @__cxa_begin_catch(ptr %i.d) #23
  br i1 %i.g, label %bb.c, label %.sink.split.i

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %i.h, align 4, !tbaa !103
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.c, %bb.b
  %.0.ph.i = phi i32 [ %i.i, %bb.c ], [ -2147467259, %bb.b ]
  tail call void @__cxa_end_catch()
  br label %_ZN9NCompress8NDeflate8NEncoder6CCoder8BaseCodeEP19ISequentialInStreamP20ISequentialOutStreamPKyS8_P21ICompressProgressInfo.exit

end_hunk_2
begin_hunk_3_@_ZN9NCompress8NDeflate8NEncoder9CCOMCoder14QueryInterfaceERK4GUIDPPv:bb.a
bb.p:                                             ; preds = %_ZeqRK4GUIDS1_.exit.thread
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !62
  %i.ay = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressSetCoderProperties, i64 1), align 1, !tbaa !62
  %.not.1.i7 = icmp eq i8 %i.ax, %i.ay
  br i1 %.not.1.i7, label %bb.q, label %_ZeqRK4GUIDS1_.exit23.thread

bb.q:                                             ; preds = %bb.p
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ba = load i8, ptr %i.az, align 2, !tbaa !62
  %i.bb = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressSetCoderProperties, i64 2), align 2, !tbaa !62
  %.not.2.i8 = icmp eq i8 %i.ba, %i.bb
  br i1 %.not.2.i8, label %bb.r, label %_ZeqRK4GUIDS1_.exit23.thread

bb.r:                                             ; preds = %bb.q
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !62
  %i.be = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressSetCoderProperties, i64 3), align 1, !tbaa !62
  %.not.3.i9 = icmp eq i8 %i.bd, %i.be
  br i1 %.not.3.i9, label %bb.s, label %_ZeqRK4GUIDS1_.exit23.thread

bb.s:                                             ; preds = %bb.r
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bg = load i8, ptr %i.bf, align 4, !tbaa !62
  %i.bh = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressSetCoderProperties, i64 4), align 4, !tbaa !62
  %.not.4.i10 = icmp eq i8 %i.bg, %i.bh
  br i1 %.not.4.i10, label %bb.t, label %_ZeqRK4GUIDS1_.exit23.thread

bb.t:                                             ; preds = %bb.s
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !62
  %i.bk = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressSetCoderProperties, i64 5), align 1, !tbaa !62
  %.not.5.i11 = icmp eq i8 %i.bj, %i.bk
  br i1 %.not.5.i11, label %bb.u, label %_ZeqRK4GUIDS1_.exit23.thread

bb.u:                                             ; preds = %bb.t
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.bm = load i8, ptr %i.bl, align 2, !tbaa !62
  %i.bn = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressSetCoderProperties, i64 6), align 2, !tbaa !62
  %.not.6.i12 = icmp eq i8 %i.bm, %i.bn
  br i1 %.not.6.i12, label %bb.v, label %_ZeqRK4GUIDS1_.exit23.thread

bb.v:                                             ; preds = %bb.u
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !62
  %i.bq = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressSetCoderProperties, i64 7), align 1, !tbaa !62
  %.not.7.i13 = icmp eq i8 %i.bp, %i.bq
  br i1 %.not.7.i13, label %bb.w, label %_ZeqRK4GUIDS1_.exit23.thread

bb.w:                                             ; preds = %bb.v
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bs = load i8, ptr %i.br, align 4, !tbaa !62
  %i.bt = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressSetCoderProperties, i64 8), align 4, !tbaa !62
  %.not.8.i14 = icmp eq i8 %i.bs, %i.bt
  br i1 %.not.8.i14, label %bb.x, label %_ZeqRK4GUIDS1_.exit23.thread

bb.x:                                             ; preds = %bb.w
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !62
  %i.bw = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressSetCoderProperties, i64 9), align 1, !tbaa !62
  %.not.9.i15 = icmp eq i8 %i.bv, %i.bw
  br i1 %.not.9.i15, label %bb.y, label %_ZeqRK4GUIDS1_.exit23.thread

bb.y:                                             ; preds = %bb.x
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.by = load i8, ptr %i.bx, align 2, !tbaa !62
  %i.bz = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressSetCoderProperties, i64 10), align 2, !tbaa !62
  %.not.10.i16 = icmp eq i8 %i.by, %i.bz
  br i1 %.not.10.i16, label %bb.z, label %_ZeqRK4GUIDS1_.exit23.thread

bb.z:                                             ; preds = %bb.y
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !62
  %i.cc = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressSetCoderProperties, i64 11), align 1, !tbaa !62
  %.not.11.i17 = icmp eq i8 %i.cb, %i.cc
  br i1 %.not.11.i17, label %bb.aa, label %_ZeqRK4GUIDS1_.exit23.thread

bb.aa:                                            ; preds = %bb.z
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ce = load i8, ptr %i.cd, align 4, !tbaa !62
  %i.cf = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressSetCoderProperties, i64 12), align 4, !tbaa !62
  %.not.12.i18 = icmp eq i8 %i.ce, %i.cf
  br i1 %.not.12.i18, label %bb.ab, label %_ZeqRK4GUIDS1_.exit23.thread

bb.ab:                                            ; preds = %bb.aa
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !62
  %i.ci = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressSetCoderProperties, i64 13), align 1, !tbaa !62
  %.not.13.i19 = icmp eq i8 %i.ch, %i.ci
  br i1 %.not.13.i19, label %bb.ac, label %_ZeqRK4GUIDS1_.exit23.thread

bb.ac:                                            ; preds = %bb.ab
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.ck = load i8, ptr %i.cj, align 2, !tbaa !62
  %i.cl = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressSetCoderProperties, i64 14), align 2, !tbaa !62
  %.not.14.i20 = icmp eq i8 %i.ck, %i.cl
  br i1 %.not.14.i20, label %_ZeqRK4GUIDS1_.exit23, label %_ZeqRK4GUIDS1_.exit23.thread

_ZeqRK4GUIDS1_.exit23:                            ; preds = %bb.ac
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !62
  %i.co = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressSetCoderProperties, i64 15), align 1, !tbaa !62
  %.not.15.i21.not = icmp eq i8 %i.cn, %i.co
  br i1 %.not.15.i21.not, label %_ZeqRK4GUIDS1_.exit23.thread.sink.split, label %_ZeqRK4GUIDS1_.exit23.thread

_ZeqRK4GUIDS1_.exit23.thread.sink.split:          ; preds = %_ZeqRK4GUIDS1_.exit23, %_ZeqRK4GUIDS1_.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cp, ptr %2, align 8, !tbaa !104
  %i.cq = load ptr, ptr %0, align 8, !tbaa !51
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = tail call noundef i32 %i.cs(ptr noundef nonnull align 8 dereferenceable(39788) %0) ; 0 uses
  br label %_ZeqRK4GUIDS1_.exit23.thread

_ZeqRK4GUIDS1_.exit23.thread:                     ; preds = %_ZeqRK4GUIDS1_.exit23.thread.sink.split, %bb.aa, %bb.v, %bb.z, %bb.u, %bb.ab, %bb.t, %bb.x, %bb.s, %bb.ac, %bb.r, %bb.y, %bb.q, %bb.p, %bb.w, %_ZeqRK4GUIDS1_.exit.thread, %_ZeqRK4GUIDS1_.exit23
  %.0 = phi i32 [ -2147467262, %bb.v ], [ -2147467262, %bb.aa ], [ -2147467262, %_ZeqRK4GUIDS1_.exit23 ], [ -2147467262, %_ZeqRK4GUIDS1_.exit.thread ], [ -2147467262, %bb.w ], [ -2147467262, %bb.p ], [ -2147467262, %bb.q ], [ -2147467262, %bb.y ], [ -2147467262, %bb.r ], [ -2147467262, %bb.ac ], [ -2147467262, %bb.s ], [ -2147467262, %bb.x ], [ -2147467262, %bb.t ], [ -2147467262, %bb.ab ], [ -2147467262, %bb.u ], [ -2147467262, %bb.z ], [ 0, %_ZeqRK4GUIDS1_.exit23.thread.sink.split ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZN9NCompress8NDeflate8NEncoder9CCOMCoder6AddRefEv(ptr noundef nonnull align 8 dereferenceable(39788) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !106
  %i.c = add i32 %i.b, 1                          ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !106
  ret i32 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZN9NCompress8NDeflate8NEncoder9CCOMCoder7ReleaseEv(ptr noundef nonnull align 8 dereferenceable(39788) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !106
  %i.c = add i32 %i.b, -1                         ; 3 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !106
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !51
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(39788) %0) #23
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i32 %i.c
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9NCompress8NDeflate8NEncoder9CCOMCoderD2Ev(ptr noundef nonnull align 8 dereferenceable(39788) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN9NCompress8NDeflate8NEncoder6CCoderD2Ev(ptr noundef nonnull align 8 dead_on_return(39764) dereferenceable(39764) %i.a) #23
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9NCompress8NDeflate8NEncoder9CCOMCoderD0Ev(ptr noundef nonnull align 8 dereferenceable(39788) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN9NCompress8NDeflate8NEncoder6CCoderD2Ev(ptr noundef nonnull align 8 dead_on_return(39764) dereferenceable(39764) %i.a) #23
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 39792) #25
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local noundef i32 @_ZThn8_N9NCompress8NDeflate8NEncoder9CCOMCoder14QueryInterfaceERK4GUIDPPv(ptr noundef %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef %2) unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8
  %i.b = tail call noundef i32 @_ZN9NCompress8NDeflate8NEncoder9CCOMCoder14QueryInterfaceERK4GUIDPPv(ptr noundef nonnull align 8 dereferenceable(39788) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef %2)
  ret i32 %i.b
}

; Function Attrs: uwtable
define linkonce_odr dso_local noundef i32 @_ZThn8_N9NCompress8NDeflate8NEncoder9CCOMCoder6AddRefEv(ptr noundef %0) unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !106
  %i.c = add i32 %i.b, 1                          ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !106
  ret i32 %i.c
}

; Function Attrs: uwtable
define linkonce_odr dso_local noundef i32 @_ZThn8_N9NCompress8NDeflate8NEncoder9CCOMCoder7ReleaseEv(ptr noundef %0) unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !106
  %i.c = add i32 %i.b, -1                         ; 3 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !106
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.b, label %_ZN9NCompress8NDeflate8NEncoder9CCOMCoder7ReleaseEv.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !51
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(39788) %i.d) #23, !inline_history !164
  br label %_ZN9NCompress8NDeflate8NEncoder9CCOMCoder7ReleaseEv.exit

_ZN9NCompress8NDeflate8NEncoder9CCOMCoder7ReleaseEv.exit: ; preds = %bb.a, %bb.b
  ret i32 %i.c
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn8_N9NCompress8NDeflate8NEncoder9CCOMCoderD1Ev(ptr noundef %0) unnamed_addr #17 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN9NCompress8NDeflate8NEncoder6CCoderD2Ev(ptr noundef nonnull align 8 dead_on_return(39764) dereferenceable(39764) %i.a) #23
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn8_N9NCompress8NDeflate8NEncoder9CCOMCoderD0Ev(ptr noundef %0) unnamed_addr #17 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN9NCompress8NDeflate8NEncoder6CCoderD2Ev(ptr noundef nonnull align 8 dead_on_return(39764) dereferenceable(39764) %i.b) #23
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(39788) %i.a, i64 noundef 39792) #25
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN9NCompress8NDeflate8NEncoder11CCOMCoder6414QueryInterfaceERK4GUIDPPv(ptr noundef nonnull align 8 dereferenceable(39788) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %1, align 4, !tbaa !62      ; 2 uses
  %i.b = load i8, ptr @IID_IUnknown, align 4, !tbaa !62
  %.not.i = icmp eq i8 %i.a, %i.b
  br i1 %.not.i, label %bb.b, label %_ZeqRK4GUIDS1_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !62
  %i.e = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 1), align 1, !tbaa !62
  %.not.1.i = icmp eq i8 %i.d, %i.e
  br i1 %.not.1.i, label %bb.c, label %_ZeqRK4GUIDS1_.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.g = load i8, ptr %i.f, align 2, !tbaa !62
  %i.h = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 2), align 2, !tbaa !62
  %.not.2.i = icmp eq i8 %i.g, %i.h
  br i1 %.not.2.i, label %bb.d, label %_ZeqRK4GUIDS1_.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.j = load i8, ptr %i.i, align 1, !tbaa !62
  %i.k = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 3), align 1, !tbaa !62
  %.not.3.i = icmp eq i8 %i.j, %i.k
  br i1 %.not.3.i, label %bb.e, label %_ZeqRK4GUIDS1_.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.m = load i8, ptr %i.l, align 4, !tbaa !62
  %i.n = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 4), align 4, !tbaa !62
  %.not.4.i = icmp eq i8 %i.m, %i.n
  br i1 %.not.4.i, label %bb.f, label %_ZeqRK4GUIDS1_.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.p = load i8, ptr %i.o, align 1, !tbaa !62
  %i.q = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 5), align 1, !tbaa !62
  %.not.5.i = icmp eq i8 %i.p, %i.q
  br i1 %.not.5.i, label %bb.g, label %_ZeqRK4GUIDS1_.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.s = load i8, ptr %i.r, align 2, !tbaa !62
  %i.t = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 6), align 2, !tbaa !62
  %.not.6.i = icmp eq i8 %i.s, %i.t
  br i1 %.not.6.i, label %bb.h, label %_ZeqRK4GUIDS1_.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.v = load i8, ptr %i.u, align 1, !tbaa !62
  %i.w = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 7), align 1, !tbaa !62
  %.not.7.i = icmp eq i8 %i.v, %i.w
  br i1 %.not.7.i, label %bb.i, label %_ZeqRK4GUIDS1_.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load i8, ptr %i.x, align 4, !tbaa !62
  %i.z = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 8), align 4, !tbaa !62
  %.not.8.i = icmp eq i8 %i.y, %i.z
  br i1 %.not.8.i, label %bb.j, label %_ZeqRK4GUIDS1_.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !62
  %i.ac = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 9), align 1, !tbaa !62
  %.not.9.i = icmp eq i8 %i.ab, %i.ac
  br i1 %.not.9.i, label %bb.k, label %_ZeqRK4GUIDS1_.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.ae = load i8, ptr %i.ad, align 2, !tbaa !62
  %i.af = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 10), align 2, !tbaa !62
  %.not.10.i = icmp eq i8 %i.ae, %i.af
  br i1 %.not.10.i, label %bb.l, label %_ZeqRK4GUIDS1_.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !62
  %i.ai = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 11), align 1, !tbaa !62
  %.not.11.i = icmp eq i8 %i.ah, %i.ai
  br i1 %.not.11.i, label %bb.m, label %_ZeqRK4GUIDS1_.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ak = load i8, ptr %i.aj, align 4, !tbaa !62
  %i.al = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 12), align 4, !tbaa !62
  %.not.12.i = icmp eq i8 %i.ak, %i.al
  br i1 %.not.12.i, label %bb.n, label %_ZeqRK4GUIDS1_.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.an = load i8, ptr %i.am, align 1, !tbaa !62
  %i.ao = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 13), align 1, !tbaa !62
  %.not.13.i = icmp eq i8 %i.an, %i.ao
  br i1 %.not.13.i, label %bb.o, label %_ZeqRK4GUIDS1_.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.aq = load i8, ptr %i.ap, align 2, !tbaa !62
  %i.ar = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 14), align 2, !tbaa !62
  %.not.14.i = icmp eq i8 %i.aq, %i.ar
  br i1 %.not.14.i, label %_ZeqRK4GUIDS1_.exit, label %_ZeqRK4GUIDS1_.exit.thread

_ZeqRK4GUIDS1_.exit:                              ; preds = %bb.o
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.at = load i8, ptr %i.as, align 1, !tbaa !62
  %i.au = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 15), align 1, !tbaa !62
  %.not.15.i.not = icmp eq i8 %i.at, %i.au
  br i1 %.not.15.i.not, label %_ZeqRK4GUIDS1_.exit23.thread.sink.split, label %_ZeqRK4GUIDS1_.exit.thread

_ZeqRK4GUIDS1_.exit.thread:                       ; preds = %bb.m, %bb.h, %bb.l, %bb.g, %bb.n, %bb.f, %bb.j, %bb.e, %bb.o, %bb.d, %bb.k, %bb.c, %bb.b, %bb.i, %bb.a, %_ZeqRK4GUIDS1_.exit
  %i.av = load i8, ptr @IID_ICompressSetCoderProperties, align 4, !tbaa !62
  %.not.i6 = icmp eq i8 %i.a, %i.av
  br i1 %.not.i6, label %bb.p, label %_ZeqRK4GUIDS1_.exit23.thread

bb.p:                                             ; preds = %_ZeqRK4GUIDS1_.exit.thread
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !62
  %i.ay = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressSetCoderProperties, i64 1), align 1, !tbaa !62
  %.not.1.i7 = icmp eq i8 %i.ax, %i.ay
  br i1 %.not.1.i7, label %bb.q, label %_ZeqRK4GUIDS1_.exit23.thread

bb.q:                                             ; preds = %bb.p
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ba = load i8, ptr %i.az, align 2, !tbaa !62
  %i.bb = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressSetCoderProperties, i64 2), align 2, !tbaa !62
  %.not.2.i8 = icmp eq i8 %i.ba, %i.bb
  br i1 %.not.2.i8, label %bb.r, label %_ZeqRK4GUIDS1_.exit23.thread

bb.r:                                             ; preds = %bb.q
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !62
  %i.be = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressSetCoderProperties, i64 3), align 1, !tbaa !62
  %.not.3.i9 = icmp eq i8 %i.bd, %i.be
  br i1 %.not.3.i9, label %bb.s, label %_ZeqRK4GUIDS1_.exit23.thread

bb.s:                                             ; preds = %bb.r
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bg = load i8, ptr %i.bf, align 4, !tbaa !62
  %i.bh = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressSetCoderProperties, i64 4), align 4, !tbaa !62
  %.not.4.i10 = icmp eq i8 %i.bg, %i.bh
  br i1 %.not.4.i10, label %bb.t, label %_ZeqRK4GUIDS1_.exit23.thread

bb.t:                                             ; preds = %bb.s
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !62
  %i.bk = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressSetCoderProperties, i64 5), align 1, !tbaa !62
  %.not.5.i11 = icmp eq i8 %i.bj, %i.bk
  br i1 %.not.5.i11, label %bb.u, label %_ZeqRK4GUIDS1_.exit23.thread

bb.u:                                             ; preds = %bb.t
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.bm = load i8, ptr %i.bl, align 2, !tbaa !62
  %i.bn = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressSetCoderProperties, i64 6), align 2, !tbaa !62
  %.not.6.i12 = icmp eq i8 %i.bm, %i.bn
  br i1 %.not.6.i12, label %bb.v, label %_ZeqRK4GUIDS1_.exit23.thread

bb.v:                                             ; preds = %bb.u
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !62
  %i.bq = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressSetCoderProperties, i64 7), align 1, !tbaa !62
  %.not.7.i13 = icmp eq i8 %i.bp, %i.bq
  br i1 %.not.7.i13, label %bb.w, label %_ZeqRK4GUIDS1_.exit23.thread

bb.w:                                             ; preds = %bb.v
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bs = load i8, ptr %i.br, align 4, !tbaa !62
  %i.bt = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressSetCoderProperties, i64 8), align 4, !tbaa !62
  %.not.8.i14 = icmp eq i8 %i.bs, %i.bt
  br i1 %.not.8.i14, label %bb.x, label %_ZeqRK4GUIDS1_.exit23.thread

bb.x:                                             ; preds = %bb.w
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !62
  %i.bw = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressSetCoderProperties, i64 9), align 1, !tbaa !62
  %.not.9.i15 = icmp eq i8 %i.bv, %i.bw
  br i1 %.not.9.i15, label %bb.y, label %_ZeqRK4GUIDS1_.exit23.thread

bb.y:                                             ; preds = %bb.x
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.by = load i8, ptr %i.bx, align 2, !tbaa !62
  %i.bz = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressSetCoderProperties, i64 10), align 2, !tbaa !62
  %.not.10.i16 = icmp eq i8 %i.by, %i.bz
  br i1 %.not.10.i16, label %bb.z, label %_ZeqRK4GUIDS1_.exit23.thread

bb.z:                                             ; preds = %bb.y
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !62
  %i.cc = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressSetCoderProperties, i64 11), align 1, !tbaa !62
  %.not.11.i17 = icmp eq i8 %i.cb, %i.cc
  br i1 %.not.11.i17, label %bb.aa, label %_ZeqRK4GUIDS1_.exit23.thread

bb.aa:                                            ; preds = %bb.z
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ce = load i8, ptr %i.cd, align 4, !tbaa !62
  %i.cf = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressSetCoderProperties, i64 12), align 4, !tbaa !62
  %.not.12.i18 = icmp eq i8 %i.ce, %i.cf
  br i1 %.not.12.i18, label %bb.ab, label %_ZeqRK4GUIDS1_.exit23.thread

bb.ab:                                            ; preds = %bb.aa
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !62
  %i.ci = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressSetCoderProperties, i64 13), align 1, !tbaa !62
  %.not.13.i19 = icmp eq i8 %i.ch, %i.ci
  br i1 %.not.13.i19, label %bb.ac, label %_ZeqRK4GUIDS1_.exit23.thread

bb.ac:                                            ; preds = %bb.ab
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.ck = load i8, ptr %i.cj, align 2, !tbaa !62
  %i.cl = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressSetCoderProperties, i64 14), align 2, !tbaa !62
  %.not.14.i20 = icmp eq i8 %i.ck, %i.cl
  br i1 %.not.14.i20, label %_ZeqRK4GUIDS1_.exit23, label %_ZeqRK4GUIDS1_.exit23.thread

_ZeqRK4GUIDS1_.exit23:                            ; preds = %bb.ac
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !62
  %i.co = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressSetCoderProperties, i64 15), align 1, !tbaa !62
  %.not.15.i21.not = icmp eq i8 %i.cn, %i.co
  br i1 %.not.15.i21.not, label %_ZeqRK4GUIDS1_.exit23.thread.sink.split, label %_ZeqRK4GUIDS1_.exit23.thread

_ZeqRK4GUIDS1_.exit23.thread.sink.split:          ; preds = %_ZeqRK4GUIDS1_.exit23, %_ZeqRK4GUIDS1_.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cp, ptr %2, align 8, !tbaa !104
  %i.cq = load ptr, ptr %0, align 8, !tbaa !51
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = tail call noundef i32 %i.cs(ptr noundef nonnull align 8 dereferenceable(39788) %0) ; 0 uses
  br label %_ZeqRK4GUIDS1_.exit23.thread

_ZeqRK4GUIDS1_.exit23.thread:                     ; preds = %_ZeqRK4GUIDS1_.exit23.thread.sink.split, %bb.aa, %bb.v, %bb.z, %bb.u, %bb.ab, %bb.t, %bb.x, %bb.s, %bb.ac, %bb.r, %bb.y, %bb.q, %bb.p, %bb.w, %_ZeqRK4GUIDS1_.exit.thread, %_ZeqRK4GUIDS1_.exit23
  %.0 = phi i32 [ -2147467262, %bb.v ], [ -2147467262, %bb.aa ], [ -2147467262, %_ZeqRK4GUIDS1_.exit23 ], [ -2147467262, %_ZeqRK4GUIDS1_.exit.thread ], [ -2147467262, %bb.w ], [ -2147467262, %bb.p ], [ -2147467262, %bb.q ], [ -2147467262, %bb.y ], [ -2147467262, %bb.r ], [ -2147467262, %bb.ac ], [ -2147467262, %bb.s ], [ -2147467262, %bb.x ], [ -2147467262, %bb.t ], [ -2147467262, %bb.ab ], [ -2147467262, %bb.u ], [ -2147467262, %bb.z ], [ 0, %_ZeqRK4GUIDS1_.exit23.thread.sink.split ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZN9NCompress8NDeflate8NEncoder11CCOMCoder646AddRefEv(ptr noundef nonnull align 8 dereferenceable(39788) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !106
  %i.c = add i32 %i.b, 1                          ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !106
  ret i32 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZN9NCompress8NDeflate8NEncoder11CCOMCoder647ReleaseEv(ptr noundef nonnull align 8 dereferenceable(39788) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !106
  %i.c = add i32 %i.b, -1                         ; 3 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !106
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !51
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(39788) %0) #23
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i32 %i.c
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9NCompress8NDeflate8NEncoder11CCOMCoder64D2Ev(ptr noundef nonnull align 8 dereferenceable(39788) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN9NCompress8NDeflate8NEncoder6CCoderD2Ev(ptr noundef nonnull align 8 dead_on_return(39764) dereferenceable(39764) %i.a) #23
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9NCompress8NDeflate8NEncoder11CCOMCoder64D0Ev(ptr noundef nonnull align 8 dereferenceable(39788) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN9NCompress8NDeflate8NEncoder6CCoderD2Ev(ptr noundef nonnull align 8 dead_on_return(39764) dereferenceable(39764) %i.a) #23
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 39792) #25
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local noundef i32 @_ZThn8_N9NCompress8NDeflate8NEncoder11CCOMCoder6414QueryInterfaceERK4GUIDPPv(ptr noundef %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef %2) unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8
  %i.b = tail call noundef i32 @_ZN9NCompress8NDeflate8NEncoder11CCOMCoder6414QueryInterfaceERK4GUIDPPv(ptr noundef nonnull align 8 dereferenceable(39788) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef %2)
  ret i32 %i.b
}

; Function Attrs: uwtable
define linkonce_odr dso_local noundef i32 @_ZThn8_N9NCompress8NDeflate8NEncoder11CCOMCoder646AddRefEv(ptr noundef %0) unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !106
  %i.c = add i32 %i.b, 1                          ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !106
  ret i32 %i.c
}

; Function Attrs: uwtable
define linkonce_odr dso_local noundef i32 @_ZThn8_N9NCompress8NDeflate8NEncoder11CCOMCoder647ReleaseEv(ptr noundef %0) unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !106
  %i.c = add i32 %i.b, -1                         ; 3 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !106
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.b, label %_ZN9NCompress8NDeflate8NEncoder11CCOMCoder647ReleaseEv.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !51
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(39788) %i.d) #23, !inline_history !165
  br label %_ZN9NCompress8NDeflate8NEncoder11CCOMCoder647ReleaseEv.exit

_ZN9NCompress8NDeflate8NEncoder11CCOMCoder647ReleaseEv.exit: ; preds = %bb.a, %bb.b
  ret i32 %i.c
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn8_N9NCompress8NDeflate8NEncoder11CCOMCoder64D1Ev(ptr noundef %0) unnamed_addr #17 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN9NCompress8NDeflate8NEncoder6CCoderD2Ev(ptr noundef nonnull align 8 dead_on_return(39764) dereferenceable(39764) %i.a) #23
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn8_N9NCompress8NDeflate8NEncoder11CCOMCoder64D0Ev(ptr noundef %0) unnamed_addr #17 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN9NCompress8NDeflate8NEncoder6CCoderD2Ev(ptr noundef nonnull align 8 dead_on_return(39764) dereferenceable(39764) %i.b) #23
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(39788) %i.a, i64 noundef 39792) #25
  ret void
}

declare void @_ZN10COutBuffer4FreeEv(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal noundef ptr @_ZN9NCompress8NDeflate8NEncoderL7SzAllocEPvm(ptr nofree readnone captures(none) %0, i64 noundef %1) #0 {
bb.a:
  %i.a = tail call ptr @MyAlloc(i64 noundef %1)
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN9NCompress8NDeflate8NEncoderL6SzFreeEPvS2_(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  tail call void @MyFree(ptr noundef %1)
  ret void
}

declare noundef zeroext i1 @_ZN10COutBuffer6CreateEj(ptr noundef nonnull align 8 dereferenceable(49), i32 noundef) local_unnamed_addr #1

declare void @_ZN10COutBuffer14FlushWithCheckEv(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #1

declare void @_ZN10COutBuffer9SetStreamEP20ISequentialOutStream(ptr noundef nonnull align 8 dereferenceable(49), ptr noundef) local_unnamed_addr #1

declare void @_ZN10COutBuffer4InitEv(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #1

declare noundef i64 @_ZNK10COutBuffer16GetProcessedSizeEv(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #1

declare noundef i32 @_ZN10COutBuffer5FlushEv(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_GLOBAL__sub_I_DeflateEncoder.cpp() #19 section ".text.startup" {
bb.a:
  store <8 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7>, ptr @_ZN9NCompress8NDeflate8NEncoderL10g_LenSlotsE, align 16
  store <4 x i16> <i16 2056, i16 2313, i16 2570, i16 2827>, ptr getelementptr inbounds nuw (i8, ptr @_ZN9NCompress8NDeflate8NEncoderL10g_LenSlotsE, i64 8), align 8
  store <4 x i32> <i32 202116108, i32 218959117, i32 235802126, i32 252645135>, ptr getelementptr inbounds nuw (i8, ptr @_ZN9NCompress8NDeflate8NEncoderL10g_LenSlotsE, i64 16), align 16
  store i64 1157442765409226768, ptr getelementptr inbounds nuw (i8, ptr @_ZN9NCompress8NDeflate8NEncoderL10g_LenSlotsE, i64 32), align 16
  store i64 1229782938247303441, ptr getelementptr inbounds nuw (i8, ptr @_ZN9NCompress8NDeflate8NEncoderL10g_LenSlotsE, i64 40), align 8
  store i64 1302123111085380114, ptr getelementptr inbounds nuw (i8, ptr @_ZN9NCompress8NDeflate8NEncoderL10g_LenSlotsE, i64 48), align 16
  store i64 1374463283923456787, ptr getelementptr inbounds nuw (i8, ptr @_ZN9NCompress8NDeflate8NEncoderL10g_LenSlotsE, i64 56), align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN9NCompress8NDeflate8NEncoderL10g_LenSlotsE, i64 64), i8 20, i64 16, i1 false), !tbaa !62
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN9NCompress8NDeflate8NEncoderL10g_LenSlotsE, i64 80), i8 21, i64 16, i1 false), !tbaa !62
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN9NCompress8NDeflate8NEncoderL10g_LenSlotsE, i64 96), i8 22, i64 16, i1 false), !tbaa !62
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN9NCompress8NDeflate8NEncoderL10g_LenSlotsE, i64 112), i8 23, i64 16, i1 false), !tbaa !62
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN9NCompress8NDeflate8NEncoderL10g_LenSlotsE, i64 128), i8 24, i64 32, i1 false), !tbaa !62
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN9NCompress8NDeflate8NEncoderL10g_LenSlotsE, i64 160), i8 25, i64 32, i1 false), !tbaa !62
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN9NCompress8NDeflate8NEncoderL10g_LenSlotsE, i64 192), i8 26, i64 32, i1 false), !tbaa !62
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN9NCompress8NDeflate8NEncoderL10g_LenSlotsE, i64 224), i8 27, i64 32, i1 false), !tbaa !62
  store i8 28, ptr getelementptr inbounds nuw (i8, ptr @_ZN9NCompress8NDeflate8NEncoderL10g_LenSlotsE, i64 255), align 1
  store <4 x i8> <i8 0, i8 1, i8 2, i8 3>, ptr @_ZN9NCompress8NDeflate8NEncoderL9g_FastPosE, align 16, !tbaa !62
  store i16 1028, ptr getelementptr inbounds nuw (i8, ptr @_ZN9NCompress8NDeflate8NEncoderL9g_FastPosE, i64 4), align 4
  store i16 1285, ptr getelementptr inbounds nuw (i8, ptr @_ZN9NCompress8NDeflate8NEncoderL9g_FastPosE, i64 6), align 2
  store i32 101058054, ptr getelementptr inbounds nuw (i8, ptr @_ZN9NCompress8NDeflate8NEncoderL9g_FastPosE, i64 8), align 8
  store i32 117901063, ptr getelementptr inbounds nuw (i8, ptr @_ZN9NCompress8NDeflate8NEncoderL9g_FastPosE, i64 12), align 4
  store i64 578721382704613384, ptr getelementptr inbounds nuw (i8, ptr @_ZN9NCompress8NDeflate8NEncoderL9g_FastPosE, i64 16), align 16
  store i64 651061555542690057, ptr getelementptr inbounds nuw (i8, ptr @_ZN9NCompress8NDeflate8NEncoderL9g_FastPosE, i64 24), align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN9NCompress8NDeflate8NEncoderL9g_FastPosE, i64 32), i8 10, i64 16, i1 false), !tbaa !62
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN9NCompress8NDeflate8NEncoderL9g_FastPosE, i64 48), i8 11, i64 16, i1 false), !tbaa !62
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN9NCompress8NDeflate8NEncoderL9g_FastPosE, i64 64), i8 12, i64 32, i1 false), !tbaa !62
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN9NCompress8NDeflate8NEncoderL9g_FastPosE, i64 96), i8 13, i64 32, i1 false), !tbaa !62
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @_ZN9NCompress8NDeflate8NEncoderL9g_FastPosE, i64 128), i8 14, i64 64, i1 false), !tbaa !62
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @_ZN9NCompress8NDeflate8NEncoderL9g_FastPosE, i64 192), i8 15, i64 64, i1 false), !tbaa !62
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) getelementptr inbounds nuw (i8, ptr @_ZN9NCompress8NDeflate8NEncoderL9g_FastPosE, i64 256), i8 16, i64 128, i1 false), !tbaa !62
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) getelementptr inbounds nuw (i8, ptr @_ZN9NCompress8NDeflate8NEncoderL9g_FastPosE, i64 384), i8 17, i64 128, i1 false), !tbaa !62
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bitreverse.i16(i16) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v32i32(<32 x i32>) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.bitreverse.v4i16(<4 x i16>) #20

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { cold noreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { noreturn nounwind }
attributes #23 = { nounwind }
attributes #24 = { noreturn }
attributes #25 = { builtin nounwind }

!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{!0, !63}
!1 = distinct !{!1, !63}
!2 = distinct !{!2, !63}
!3 = distinct !{!3, !63, !81}
!4 = distinct !{null}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!"omnipotent char", !9, i64 0}
!11 = !{!"int", !10, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"any pointer", !10, i64 0}
!14 = !{!"p1 omnipotent char", !13, i64 0}
!15 = !{!"p1 _ZTS20ISequentialOutStream", !13, i64 0}
!16 = !{!"_ZTS9CMyComPtrI20ISequentialOutStreamE", !15, i64 0}
!17 = !{!"long long", !10, i64 0}
!18 = !{!"bool", !10, i64 0}
!19 = !{!"_ZTS10COutBuffer", !14, i64 0, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !16, i64 24, !17, i64 32, !14, i64 40, !18, i64 48}
!20 = !{!19, !14, i64 0}
!21 = !{!19, !11, i64 8}
!22 = !{!16, !15, i64 0}
!23 = !{!"p1 int", !13, i64 0}
!24 = !{!"long", !10, i64 0}
!25 = !{!"_ZTS13_CMatchFinder", !14, i64 0, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !23, i64 40, !23, i64 48, !11, i64 56, !11, i64 60, !14, i64 64, !13, i64 72, !11, i64 80, !11, i64 84, !11, i64 88, !11, i64 92, !11, i64 96, !11, i64 100, !24, i64 104, !11, i64 112, !11, i64 116, !11, i64 120, !11, i64 124, !11, i64 128, !11, i64 132, !11, i64 136, !10, i64 140}
!26 = !{!"_ZTS12CBitlEncoder", !19, i64 0, !11, i64 56, !10, i64 60}
!27 = !{!"_ZTS12ISeqInStream", !13, i64 0}
!28 = !{!"p1 _ZTS19ISequentialInStream", !13, i64 0}
!29 = !{!"_ZTS9CMyComPtrI19ISequentialInStreamE", !28, i64 0}
!30 = !{!"_ZTSN9NCompress8NDeflate8NEncoder13_CSeqInStreamE", !27, i64 0, !29, i64 8}
!31 = !{!"p1 _ZTSN9NCompress8NDeflate8NEncoder10CCodeValueE", !13, i64 0}
!32 = !{!"p1 short", !13, i64 0}
!33 = !{!"_ZTSN9NCompress8NDeflate7CLevelsE", !10, i64 0, !10, i64 288}
!34 = !{!"p1 _ZTSN9NCompress8NDeflate8NEncoder7CTablesE", !13, i64 0}
!35 = !{!"_ZTSN9NCompress8NDeflate8NEncoder6CCoderE", !25, i64 0, !26, i64 1168, !30, i64 1232, !31, i64 1248, !32, i64 1256, !11, i64 1264, !18, i64 1268, !18, i64 1269, !32, i64 1272, !32, i64 1280, !11, i64 1288, !11, i64 1292, !11, i64 1296, !18, i64 1300, !18, i64 1301, !11, i64 1304, !11, i64 1308, !11, i64 1312, !14, i64 1320, !14, i64 1328, !18, i64 1336, !18, i64 1337, !10, i64 1338, !11, i64 1360, !11, i64 1364, !11, i64 1368, !11, i64 1372, !18, i64 1376, !11, i64 1380, !11, i64 1384, !11, i64 1388, !10, i64 1392, !10, i64 1648, !10, i64 1904, !33, i64 1936, !10, i64 2256, !10, i64 3408, !10, i64 3536, !10, i64 4688, !10, i64 4816, !10, i64 4892, !11, i64 4912, !34, i64 4920, !10, i64 4928, !11, i64 39760}
!36 = !{!35, !11, i64 1264}
!37 = !{!35, !18, i64 1268}
!38 = !{!35, !18, i64 1269}
!39 = !{!35, !11, i64 1292}
!40 = !{!35, !11, i64 1296}
!41 = !{!35, !18, i64 1336}
!42 = !{!35, !18, i64 1337}
!43 = !{!35, !34, i64 4920}
!44 = !{!35, !11, i64 39760}
!45 = !{!35, !11, i64 1312}
!46 = !{!35, !11, i64 1308}
!47 = !{!35, !14, i64 1320}
!48 = !{!35, !14, i64 1328}
!49 = !{!29, !28, i64 0}
!50 = !{!"vtable pointer", !9, i64 0}
!51 = !{!50, !50, i64 0}
!52 = !{!35, !31, i64 1248}
!53 = !{!35, !18, i64 1301}
!54 = !{i8 0, i8 2}
!55 = !{}
!56 = !{!35, !32, i64 1272}
!57 = !{!35, !32, i64 1280}
!58 = !{!35, !32, i64 1256}
!59 = !{!"short", !10, i64 0}
!60 = !{!"_ZTS14tagPROPVARIANT", !59, i64 0, !59, i64 2, !59, i64 4, !59, i64 6, !10, i64 8}
!61 = !{!60, !59, i64 0}
!62 = !{!10, !10, i64 0}
!63 = !{!"llvm.loop.mustprogress"}
!64 = !{!35, !11, i64 1288}
!65 = !{!35, !18, i64 1376}
!66 = !{!59, !59, i64 0}
!67 = !{!"llvm.loop.isvectorized", i32 1}
!68 = !{!"llvm.loop.unroll.runtime.disable"}
!69 = !{!35, !11, i64 16}
!70 = !{!35, !11, i64 8}
!71 = !{!35, !14, i64 0}
!72 = !{!35, !11, i64 1380}
!73 = !{!35, !11, i64 1384}
!74 = !{!"_ZTSN9NCompress8NDeflate8NEncoder8COptimalE", !11, i64 0, !59, i64 4, !59, i64 6}
!75 = !{!74, !59, i64 4}
!76 = !{!74, !59, i64 6}
!77 = !{!35, !11, i64 1388}
!78 = !{!26, !11, i64 56}
!79 = !{!26, !10, i64 60}
!80 = !{!19, !11, i64 12}
!81 = !{!"llvm.loop.peeled.count", i32 1}
!82 = !{!35, !11, i64 1372}
!83 = !{!35, !11, i64 4912}
!84 = !{!35, !11, i64 1304}
!85 = !{!"_ZTSN9NCompress8NDeflate8NEncoder10CCodeValueE", !59, i64 0, !59, i64 2}
!86 = !{!85, !59, i64 0}
!87 = !{!85, !59, i64 2}
!88 = !{!"_ZTSN9NCompress8NDeflate8NEncoder7CTablesE", !33, i64 0, !18, i64 320, !18, i64 321, !18, i64 322, !11, i64 324, !11, i64 328}
!89 = !{!88, !11, i64 324}
!90 = !{!88, !11, i64 328}
!91 = !{i64 0, i64 288, !62, i64 288, i64 32, !62}
!92 = !{!35, !11, i64 1360}
!93 = !{!35, !11, i64 1364}
!94 = !{!35, !11, i64 1368}
!95 = !{!88, !18, i64 322}
!96 = !{!35, !18, i64 1300}
!97 = !{!88, !18, i64 321}
!98 = !{!88, !18, i64 320}
!99 = !{!"p1 _ZTSN9NCompress8NDeflate8NEncoder6CCoderE", !13, i64 0}
!100 = !{!"_ZTSN9NCompress8NDeflate8NEncoder6CCoder14CCoderReleaserE", !99, i64 0}
!101 = !{!100, !99, i64 0}
!102 = !{!"_ZTS16CSystemException", !11, i64 0}
!103 = !{!102, !11, i64 0}
!104 = !{!13, !13, i64 0}
!105 = !{!"_ZTS13CMyUnknownImp", !11, i64 0}
!106 = !{!105, !11, i64 0}
!107 = !{!19, !14, i64 40}
!108 = !{!14, !14, i64 0}
!109 = !{!35, !11, i64 112}
!110 = !{!35, !11, i64 96}
!111 = !{!35, !11, i64 60}
!112 = distinct !{!112, !63, !67, !68}
!113 = distinct !{!113, !63, !68, !67}
!114 = distinct !{!114, !63}
!115 = distinct !{!115, !63}
!116 = distinct !{!116, !63}
!117 = distinct !{!117, !121}
!118 = distinct !{!118, !63}
!119 = distinct !{!119, !63}
!120 = !{!74, !11, i64 0}
!121 = !{!"llvm.loop.unroll.disable"}
!122 = distinct !{!122, !63, !124}
!123 = distinct !{!123, !63}
!124 = !{!"llvm.loop.unswitch.partial.disable"}
!125 = distinct !{!125, !63, !67, !68}
!126 = distinct !{!126, !63, !68, !67}
!127 = distinct !{!127, !63, !67, !68}
!128 = distinct !{!128, !63, !68, !67}
!129 = distinct !{!129, !63, !67, !68}
!130 = distinct !{!130, !63, !68, !67}
!131 = distinct !{!131, !63, !67, !68}
!132 = distinct !{!132, !63}
!133 = distinct !{!133, !63, !67}
!134 = distinct !{!134, !63}
!135 = distinct !{!135, !"LVerDomain"}
!136 = distinct !{!136, !135}
!137 = distinct !{!137, !135}
!138 = distinct !{!138, !63, !67, !68}
!139 = distinct !{!139, !63, !67}
!140 = !{!136}
!141 = !{!137}
!142 = distinct !{!142, !63, !67, !68}
!143 = distinct !{!143, !63, !67, !68}
!144 = distinct !{!144, !63, !81}
!145 = distinct !{!145, !63, !81}
!146 = distinct !{!146, !63, !81}
!147 = distinct !{!147, !63, !81}
!148 = distinct !{!148, !63, !81}
!149 = distinct !{!149, !63, !81}
!150 = distinct !{!150, !63}
!151 = distinct !{!151, !63}
!152 = distinct !{!152, !63}
!153 = distinct !{!153, !63}
!154 = distinct !{!154, !63}
!155 = distinct !{!155, !63}
!156 = distinct !{!156, !63}
!157 = !{!24, !24, i64 0}
!158 = distinct !{null}
!159 = distinct !{!159, !63}
!160 = !{!17, !17, i64 0}
!161 = !{!35, !13, i64 1232}
!162 = !{!35, !13, i64 72}
!163 = !{!35, !11, i64 136}
!164 = !{ptr @_ZN9NCompress8NDeflate8NEncoder9CCOMCoder7ReleaseEv}
!165 = !{ptr @_ZN9NCompress8NDeflate8NEncoder11CCOMCoder647ReleaseEv}
end_hunk_3
