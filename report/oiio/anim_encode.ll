inline.NumInlined: 118
inline.NumDeleted: 43
begin_hunk_0_@GetSubRects:bb.a
  %.01013.i.us = phi ptr [ %gep291, %.lr.ph.i91.us ], [ %i.ny, %bb.ag ] ; 2 uses
  %i.my = add nsw i32 %.in.i92.us, -1
  %i.mz = load i32, ptr %.0914.i.us, align 4, !tbaa !3 ; 4 uses
  %i.na = load i32, ptr %.01013.i.us, align 4, !tbaa !3 ; 4 uses
  %i.nb = lshr i32 %i.mz, 24                      ; 4 uses
  %i.nc = lshr i32 %i.mz, 8
  %i.nd = and i32 %i.nc, 255
  %i.ne = and i32 %i.mz, 255
  %i.nf = lshr i32 %i.na, 24
  %i.ng = lshr i32 %i.na, 8
  %i.nh = and i32 %i.ng, 255
  %i.ni = and i32 %i.na, 255
  %i.nj = icmp eq i32 %i.nb, %i.nf
  br i1 %i.nj, label %bb.ae, label %.thread121.i47

bb.ae:                                            ; preds = %bb.ad
  %i.nk = lshr i32 %i.na, 16
  %i.nl = and i32 %i.nk, 255
  %i.nm = lshr i32 %i.mz, 16
  %i.nn = and i32 %i.nm, 255
  %i.no = sub nsw i32 %i.nn, %i.nl
  %i.np = tail call i32 @llvm.abs.i32(i32 %i.no, i1 true)
  %i.nq = mul nuw nsw i32 %i.np, %i.nb
  %.not.i.i.us = icmp sgt i32 %i.nq, %i.mi
  br i1 %.not.i.i.us, label %.thread121.i47, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.nr = sub nsw i32 %i.nd, %i.nh
  %i.ns = tail call i32 @llvm.abs.i32(i32 %i.nr, i1 true)
  %i.nt = mul nuw nsw i32 %i.ns, %i.nb
  %.not23.i.i.us = icmp samesign ugt i32 %i.nt, %i.mi
  br i1 %.not23.i.i.us, label %.thread121.i47, label %PixelsAreSimilar.exit.i.us

PixelsAreSimilar.exit.i.us:                       ; preds = %bb.af
  %i.nu = sub nsw i32 %i.ne, %i.ni
  %i.nv = tail call i32 @llvm.abs.i32(i32 %i.nu, i1 true)
  %i.nw = mul nuw nsw i32 %i.nv, %i.nb
  %.not12.i.us = icmp samesign ugt i32 %i.nw, %i.mi
  br i1 %.not12.i.us, label %.thread121.i47, label %bb.ag

bb.ag:                                            ; preds = %PixelsAreSimilar.exit.i.us
  %i.nx = getelementptr inbounds nuw i8, ptr %.0914.i.us, i64 4
  %i.ny = getelementptr inbounds nuw i8, ptr %.01013.i.us, i64 4
  %i.nz = icmp samesign ugt i32 %.in.i92.us, 1
  br i1 %i.nz, label %bb.ad, label %.loopexit.us, !llvm.loop !122

.loopexit.us:                                     ; preds = %bb.ag
  %i.oa = add nsw i32 %.pre149.pre.i45152, -1     ; 3 uses
  store i32 %i.oa, ptr %i.kb, align 4, !tbaa !46
  %.not108.not.i46.us = icmp sgt i64 %indvars.iv.next209, %i.mv
  br i1 %.not108.not.i46.us, label %.lr.ph.i91.us, label %.thread121.i47, !llvm.loop !64

.lr.ph146.i41.split:                              ; preds = %.lr.ph146.i41
  %i.ob = add i32 %i.mg, -1
  %smin207 = tail call i32 @llvm.smin.i32(i32 %i.mf, i32 %i.ob)
  %i.oc = sub i32 %smin207, %i.mf                 ; 2 uses
  store i32 %i.oc, ptr %i.kb, align 4, !tbaa !46
  br label %.thread121.i47

.thread121.i47:                                   ; preds = %.loopexit.us, %PixelsAreSimilar.exit.i.us, %bb.af, %bb.ae, %bb.ad, %.lr.ph146.i41.split
  %.pre149.i48 = phi i32 [ %.pre149.pre.i45152, %PixelsAreSimilar.exit.i.us ], [ %i.oc, %.lr.ph146.i41.split ], [ %.pre149.pre.i45152, %bb.ad ], [ %.pre149.pre.i45152, %bb.ae ], [ %.pre149.pre.i45152, %bb.af ], [ %i.oa, %.loopexit.us ]
  %i.od = icmp eq i32 %.pre149.i48, 0
  br i1 %i.od, label %MinimizeChangeRectangle.exit65.thread, label %MinimizeChangeRectangle.exit65

MinimizeChangeRectangle.exit65.thread:            ; preds = %.loopexit124.i33, %.thread115.i59, %.loopexit.i36, %.thread121.i47
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ez, i8 0, i64 16, i1 false)
  %i.oe = getelementptr inbounds nuw i8, ptr %5, i64 288
  br label %IsEmptyRect.exit.thread.i28

MinimizeChangeRectangle.exit65:                   ; preds = %bb.ac, %.thread121.i47, %GetSubRect.exit.thread.MinimizeChangeRectangle.exit65_crit_edge
  %i.of = phi i32 [ %.pre221, %GetSubRect.exit.thread.MinimizeChangeRectangle.exit65_crit_edge ], [ %i.jy, %bb.ac ], [ %i.jy, %.thread121.i47 ] ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %5, i64 288 ; 3 uses
  %i.oh = icmp eq i32 %i.of, 0
  br i1 %i.oh, label %IsEmptyRect.exit.thread.i28, label %IsEmptyRect.exit.i25

IsEmptyRect.exit.i25:                             ; preds = %MinimizeChangeRectangle.exit65
  %i.oi = getelementptr inbounds nuw i8, ptr %5, i64 292
  %i.oj = load i32, ptr %i.oi, align 4, !tbaa !46 ; 2 uses
  %.not.i26 = icmp eq i32 %i.oj, 0
  br i1 %.not.i26, label %IsEmptyRect.exit.thread.i28, label %bb.ah

IsEmptyRect.exit.thread.i28:                      ; preds = %MinimizeChangeRectangle.exit65.thread, %IsEmptyRect.exit.i25, %MinimizeChangeRectangle.exit65
  %i.ok = phi ptr [ %i.oe, %MinimizeChangeRectangle.exit65.thread ], [ %i.og, %IsEmptyRect.exit.i25 ], [ %i.og, %MinimizeChangeRectangle.exit65 ]
  %.not19.i29 = icmp eq i32 %i.fa, 0
  br i1 %.not19.i29, label %bb.ah, label %GetSubRect.exit30

bb.ah:                                            ; preds = %IsEmptyRect.exit.thread.i28, %IsEmptyRect.exit.i25
  %i.ol = phi ptr [ %i.og, %IsEmptyRect.exit.i25 ], [ %i.ok, %IsEmptyRect.exit.thread.i28 ]
  %i.om = phi i32 [ %i.oj, %IsEmptyRect.exit.i25 ], [ 1, %IsEmptyRect.exit.thread.i28 ]
  %i.on = phi i32 [ %i.of, %IsEmptyRect.exit.i25 ], [ 1, %IsEmptyRect.exit.thread.i28 ]
  %i.oo = load i32, ptr %i.ez, align 8, !tbaa !43 ; 2 uses
  %i.op = and i32 %i.oo, 1
  %i.oq = add nsw i32 %i.op, %i.on                ; 2 uses
  store i32 %i.oq, ptr %i.ol, align 4, !tbaa !45
  %i.or = getelementptr inbounds nuw i8, ptr %5, i64 284 ; 2 uses
  %i.os = load i32, ptr %i.or, align 4, !tbaa !44 ; 2 uses
  %i.ot = and i32 %i.os, 1
  %i.ou = getelementptr inbounds nuw i8, ptr %5, i64 292
  %i.ov = add nsw i32 %i.ot, %i.om                ; 2 uses
  store i32 %i.ov, ptr %i.ou, align 4, !tbaa !46
  %i.ow = and i32 %i.oo, -2                       ; 2 uses
  store i32 %i.ow, ptr %i.ez, align 8, !tbaa !43
  %i.ox = and i32 %i.os, -2                       ; 2 uses
  store i32 %i.ox, ptr %i.or, align 4, !tbaa !44
  %i.oy = tail call i32 @WebPPictureView(ptr noundef nonnull %1, i32 noundef %i.ow, i32 noundef %i.ox, i32 noundef %i.oq, i32 noundef %i.ov, ptr noundef nonnull %i.fb) #14
  br label %GetSubRect.exit30

GetSubRect.exit30:                                ; preds = %bb.ah, %IsEmptyRect.exit.thread.i28, %GetSubRect.exit
  %.0 = phi i32 [ 0, %GetSubRect.exit ], [ %i.oy, %bb.ah ], [ 1, %IsEmptyRect.exit.thread.i28 ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @GenerateCandidates(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef range(i32 0, 2) %2, i32 noundef %3, i32 noundef range(i32 0, 2) %4, ptr noundef nonnull %5, ptr nofree noundef nonnull readonly captures(none) %6, ptr nofree noundef nonnull readonly captures(none) %7) unnamed_addr #1 {
bb.a:
  %8 = alloca %struct.WebPConfig, align 4         ; 8 uses
  %9 = alloca %struct.WebPConfig, align 4         ; 7 uses
  %i.a = icmp eq i32 %2, 0                        ; 3 uses
  %.idx = select i1 %i.a, i64 0, i64 104
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %.idx ; 11 uses
  %.v = select i1 %i.a, i64 208, i64 312
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %.v ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 3 uses
  %.v66 = select i1 %i.a, i64 576, i64 832
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %.v66 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 9 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !33
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %CopyCurrentCanvas.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !75
  tail call void @WebPCopyPixels(ptr noundef %i.i, ptr noundef nonnull %i.d) #14
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !75
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 144
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.m = load <2 x ptr>, ptr %i.k, align 8, !tbaa !76
  store <2 x ptr> %i.m, ptr %i.l, align 8, !tbaa !76
  store i32 0, ptr %i.f, align 8, !tbaa !33
  br label %CopyCurrentCanvas.exit

CopyCurrentCanvas.exit:                           ; preds = %bb.a, %bb.b
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %bb.c, label %.thread

bb.c:                                             ; preds = %CopyCurrentCanvas.exit
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.p = load i32, ptr %i.o, align 4, !tbaa !44   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.r = load i32, ptr %i.q, align 4, !tbaa !46   ; 2 uses
  %i.s = add nsw i32 %i.r, %i.p
  %i.t = icmp sgt i32 %i.r, 0
  br i1 %i.t, label %.lr.ph31.i, label %.thread99

.lr.ph31.i:                                       ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.v = load i32, ptr %i.u, align 4, !tbaa !45   ; 2 uses
  %i.w = icmp sgt i32 %i.v, 0
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  br i1 %i.w, label %.lr.ph31.split.i, label %.thread99

.lr.ph31.split.i:                                 ; preds = %.lr.ph31.i
  %i.z = load i32, ptr %i.n, align 4, !tbaa !43   ; 2 uses
  %i.aa = add nsw i32 %i.z, %i.v
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !47
  %i.ae = load i32, ptr %i.ab, align 8, !tbaa !48
  %i.af = sext i32 %i.z to i64
  %i.ag = sext i32 %i.aa to i64
  %i.ah = sext i32 %i.p to i64
  %i.ai = sext i32 %i.ae to i64
  %i.aj = sext i32 %i.s to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge.i, %.lr.ph31.split.i
  %indvars.iv34.i = phi i64 [ %i.ah, %.lr.ph31.split.i ], [ %indvars.iv.next35.i, %._crit_edge.i ] ; 3 uses
  %i.ak = mul nsw i64 %indvars.iv34.i, %i.ai
  %i.al = getelementptr [4 x i8], ptr %i.ad, i64 %i.ak
  br label %bb.d

bb.d:                                             ; preds = %.critedge.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.af, %.lr.ph.i ], [ %indvars.iv.next.i, %.critedge.i ] ; 3 uses
  %i.am = getelementptr [4 x i8], ptr %i.al, i64 %indvars.iv.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !3  ; 2 uses
  %.not.i73 = icmp ugt i32 %i.an, -16777217
  br i1 %.not.i73, label %.critedge.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ao = load ptr, ptr %i.x, align 8, !tbaa !47
  %i.ap = load i32, ptr %i.y, align 8, !tbaa !48
  %i.aq = sext i32 %i.ap to i64
  %i.ar = mul nsw i64 %indvars.iv34.i, %i.aq
  %i.as = getelementptr [4 x i8], ptr %i.ao, i64 %i.ar
  %i.at = getelementptr [4 x i8], ptr %i.as, i64 %indvars.iv.i
  %i.au = load i32, ptr %i.at, align 4, !tbaa !3
  %.not26.i = icmp eq i32 %i.au, %i.an
  br i1 %.not26.i, label %.critedge.i, label %.thread99

.critedge.i:                                      ; preds = %bb.e, %bb.d
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.av = icmp slt i64 %indvars.iv.next.i, %i.ag
  br i1 %i.av, label %bb.d, label %._crit_edge.i, !llvm.loop !136

._crit_edge.i:                                    ; preds = %.critedge.i
  %indvars.iv.next35.i = add nsw i64 %indvars.iv34.i, 1 ; 2 uses
  %i.aw = icmp slt i64 %indvars.iv.next35.i, %i.aj
  br i1 %i.aw, label %.lr.ph.i, label %.thread99, !llvm.loop !137

.thread99:                                        ; preds = %._crit_edge.i, %bb.e, %bb.c, %.lr.ph31.i
  %10 = phi i1 [ true, %bb.c ], [ true, %.lr.ph31.i ], [ false, %bb.e ], [ true, %._crit_edge.i ] ; 7 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 280
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.az = load float, ptr %i.ay, align 4, !tbaa !126
  %i.ba = fpext float %i.az to double
  %i.bb = fdiv double %i.ba, 1.000000e+02
  %i.bc = tail call double @pow(double noundef %i.bb, double noundef 5.000000e-01) #14, !tbaa !3 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 284
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !44 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 292
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !46 ; 2 uses
  %i.bh = add nsw i32 %i.bg, %i.be
  %i.bi = icmp sgt i32 %i.bg, 0
  br i1 %i.bi, label %.lr.ph35.i, label %.thread

.lr.ph35.i:                                       ; preds = %.thread99
  %i.bj = fsub double 1.000000e+00, %i.bc
  %i.bk = tail call double @llvm.fmuladd.f64(double %i.bj, double 3.100000e+01, double %i.bc)
  %i.bl = fadd double %i.bk, 5.000000e-01
  %i.bm = fptosi double %i.bl to i32
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 288
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !45 ; 2 uses
  %i.bp = icmp sgt i32 %i.bo, 0
  %i.bq = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.br = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.bs = mul nsw i32 %i.bm, 255                  ; 3 uses
  br i1 %i.bp, label %.lr.ph35.split.i, label %.thread

.lr.ph35.split.i:                                 ; preds = %.lr.ph35.i
  %i.bt = load i32, ptr %i.ax, align 4, !tbaa !43 ; 2 uses
  %i.bu = add nsw i32 %i.bt, %i.bo
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !47
  %i.by = load i32, ptr %i.bv, align 8, !tbaa !48
  %i.bz = sext i32 %i.bt to i64
  %i.ca = sext i32 %i.bu to i64
  %i.cb = sext i32 %i.be to i64
  %i.cc = sext i32 %i.by to i64
  %i.cd = sext i32 %i.bh to i64
  br label %.lr.ph.i75

.lr.ph.i75:                                       ; preds = %._crit_edge.i80, %.lr.ph35.split.i
  %indvars.iv38.i = phi i64 [ %i.cb, %.lr.ph35.split.i ], [ %indvars.iv.next39.i, %._crit_edge.i80 ] ; 3 uses
  %i.ce = mul nsw i64 %indvars.iv38.i, %i.cc
  %i.cf = getelementptr [4 x i8], ptr %i.bx, i64 %i.ce
  br label %bb.f

bb.f:                                             ; preds = %.critedge.i78, %.lr.ph.i75
  %indvars.iv.i76 = phi i64 [ %i.bz, %.lr.ph.i75 ], [ %indvars.iv.next.i79, %.critedge.i78 ] ; 3 uses
  %i.cg = getelementptr [4 x i8], ptr %i.cf, i64 %indvars.iv.i76
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !3  ; 5 uses
  %.not.i77 = icmp ugt i32 %i.ch, -16777217
  br i1 %.not.i77, label %.critedge.i78, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ci = load ptr, ptr %i.bq, align 8, !tbaa !47
  %i.cj = load i32, ptr %i.br, align 8, !tbaa !48
  %i.ck = sext i32 %i.cj to i64
  %i.cl = mul nsw i64 %indvars.iv38.i, %i.ck
  %i.cm = getelementptr [4 x i8], ptr %i.ci, i64 %i.cl
  %i.cn = getelementptr [4 x i8], ptr %i.cm, i64 %indvars.iv.i76
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !3  ; 4 uses
  %i.cp = lshr i32 %i.co, 24                      ; 4 uses
  %i.cq = lshr i32 %i.co, 8
  %i.cr = and i32 %i.cq, 255
  %i.cs = and i32 %i.co, 255
  %i.ct = lshr i32 %i.ch, 24
  %i.cu = lshr i32 %i.ch, 8
  %i.cv = and i32 %i.cu, 255
  %i.cw = and i32 %i.ch, 255
  %i.cx = icmp eq i32 %i.cp, %i.ct
  br i1 %i.cx, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.cy = lshr i32 %i.ch, 16
  %i.cz = and i32 %i.cy, 255
  %i.da = lshr i32 %i.co, 16
  %i.db = and i32 %i.da, 255
  %i.dc = sub nsw i32 %i.db, %i.cz
  %i.dd = tail call i32 @llvm.abs.i32(i32 %i.dc, i1 true)
  %i.de = mul nuw nsw i32 %i.dd, %i.cp
  %.not.i.i = icmp sgt i32 %i.de, %i.bs
  br i1 %.not.i.i, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.df = sub nsw i32 %i.cr, %i.cv
  %i.dg = tail call i32 @llvm.abs.i32(i32 %i.df, i1 true)
  %i.dh = mul nuw nsw i32 %i.dg, %i.cp
  %.not23.i.i = icmp samesign ugt i32 %i.dh, %i.bs
  br i1 %.not23.i.i, label %.thread, label %PixelsAreSimilar.exit.i

PixelsAreSimilar.exit.i:                          ; preds = %bb.i
  %i.di = sub nsw i32 %i.cs, %i.cw
  %i.dj = tail call i32 @llvm.abs.i32(i32 %i.di, i1 true)
  %i.dk = mul nuw nsw i32 %i.dj, %i.cp
  %.not30.i = icmp samesign ugt i32 %i.dk, %i.bs
  br i1 %.not30.i, label %.thread, label %.critedge.i78

.critedge.i78:                                    ; preds = %PixelsAreSimilar.exit.i, %bb.f
  %indvars.iv.next.i79 = add nsw i64 %indvars.iv.i76, 1 ; 2 uses
  %i.dl = icmp slt i64 %indvars.iv.next.i79, %i.ca
  br i1 %i.dl, label %bb.f, label %._crit_edge.i80, !llvm.loop !138

._crit_edge.i80:                                  ; preds = %.critedge.i78
  %indvars.iv.next39.i = add nsw i64 %indvars.iv38.i, 1 ; 2 uses
  %i.dm = icmp slt i64 %indvars.iv.next39.i, %i.cd
  br i1 %i.dm, label %.lr.ph.i75, label %.thread, !llvm.loop !139

.thread:                                          ; preds = %._crit_edge.i80, %PixelsAreSimilar.exit.i, %bb.i, %bb.h, %bb.g, %.lr.ph35.i, %.thread99, %CopyCurrentCanvas.exit
  %i.dn = phi i1 [ false, %CopyCurrentCanvas.exit ], [ %10, %.thread99 ], [ %10, %.lr.ph35.i ], [ %10, %PixelsAreSimilar.exit.i ], [ %10, %bb.g ], [ %10, %bb.h ], [ %10, %bb.i ], [ %10, %._crit_edge.i80 ] ; 3 uses
  %i.do = phi i1 [ false, %CopyCurrentCanvas.exit ], [ true, %.thread99 ], [ true, %.lr.ph35.i ], [ false, %PixelsAreSimilar.exit.i ], [ false, %bb.g ], [ false, %bb.h ], [ false, %bb.i ], [ true, %._crit_edge.i80 ] ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !90
  %.not67 = icmp eq i32 %i.dq, 0
  br i1 %.not67, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.thread
  %.not68 = icmp eq i32 %3, 0
  br i1 %.not68, label %.thread106, label %.thread101

bb.k:                                             ; preds = %.thread
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !127
  %.not69 = icmp eq i32 %i.ds, 0
  br i1 %.not69, label %bb.l, label %.thread101

bb.l:                                             ; preds = %bb.k
  %i.dt = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.du = tail call i32 @WebPGetColorPalette(ptr noundef nonnull %i.dt, ptr noundef null) #14 ; 2 uses
  %i.dv = icmp sgt i32 %i.du, 193
  %i.dw = icmp sgt i32 %i.du, 30
  br i1 %i.dv, label %.thread106, label %.thread101

.thread101:                                       ; preds = %bb.k, %bb.j, %bb.l
  %.059.shrunk104 = phi i1 [ false, %bb.j ], [ %i.dw, %bb.l ], [ true, %bb.k ]
  %i.dx = load i32, ptr %i.f, align 8, !tbaa !33
  %.not.i81 = icmp eq i32 %i.dx, 0
  br i1 %.not.i81, label %CopyCurrentCanvas.exit82, label %bb.m

bb.m:                                             ; preds = %.thread101
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !75
  tail call void @WebPCopyPixels(ptr noundef %i.dz, ptr noundef nonnull %i.d) #14
  %i.ea = load ptr, ptr %i.dy, align 8, !tbaa !75
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 144
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.ed = load <2 x ptr>, ptr %i.eb, align 8, !tbaa !76
  store <2 x ptr> %i.ed, ptr %i.ec, align 8, !tbaa !76
  store i32 0, ptr %i.f, align 8, !tbaa !33
  br label %CopyCurrentCanvas.exit82

CopyCurrentCanvas.exit82:                         ; preds = %.thread101, %bb.m
  br i1 %i.dn, label %bb.n, label %bb.r

bb.n:                                             ; preds = %CopyCurrentCanvas.exit82
  %i.ee = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !46 ; 2 uses
  %i.ei = icmp sgt i32 %i.eh, 0
  br i1 %i.ei, label %.lr.ph32.i, label %IncreaseTransparency.exit

.lr.ph32.i:                                       ; preds = %bb.n
  %i.ej = load i32, ptr %i.ef, align 4, !tbaa !44 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !47
  %i.em = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !47
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.eq = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %.pre.i = load i32, ptr %i.ee, align 4, !tbaa !43 ; 2 uses
  %.pre36.i = load i32, ptr %i.eq, align 4, !tbaa !45 ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge.i83, %.lr.ph32.i
  %i.er = phi i32 [ %i.eh, %.lr.ph32.i ], [ %i.ft, %._crit_edge.i83 ]
  %i.es = phi i32 [ %i.ej, %.lr.ph32.i ], [ %i.fu, %._crit_edge.i83 ]
  %i.et = phi i32 [ %.pre36.i, %.lr.ph32.i ], [ %i.fv, %._crit_edge.i83 ] ; 2 uses
  %i.eu = phi i32 [ %.pre.i, %.lr.ph32.i ], [ %i.fw, %._crit_edge.i83 ] ; 2 uses
  %i.ev = phi i32 [ %.pre36.i, %.lr.ph32.i ], [ %i.fx, %._crit_edge.i83 ] ; 2 uses
  %i.ew = phi i32 [ %.pre.i, %.lr.ph32.i ], [ %i.fy, %._crit_edge.i83 ] ; 2 uses
  %.02430.i = phi i32 [ %i.ej, %.lr.ph32.i ], [ %i.fz, %._crit_edge.i83 ] ; 3 uses
  %.02529.i = phi i32 [ 0, %.lr.ph32.i ], [ %.1.lcssa.i, %._crit_edge.i83 ] ; 2 uses
  %i.ex = load i32, ptr %i.em, align 8, !tbaa !48
  %i.ey = mul nsw i32 %i.ex, %.02430.i
  %i.ez = sext i32 %i.ey to i64
  %i.fa = getelementptr inbounds [4 x i8], ptr %i.el, i64 %i.ez
  %i.fb = load i32, ptr %i.ep, align 8, !tbaa !48
  %i.fc = mul nsw i32 %i.fb, %.02430.i
  %i.fd = sext i32 %i.fc to i64
  %i.fe = getelementptr inbounds [4 x i8], ptr %i.eo, i64 %i.fd
  %i.ff = icmp sgt i32 %i.ev, 0
  br i1 %i.ff, label %.lr.ph.preheader.i, label %._crit_edge.i83

.lr.ph.preheader.i:                               ; preds = %bb.o
  %i.fg = sext i32 %i.ew to i64
  br label %.lr.ph.i84

.lr.ph.i84:                                       ; preds = %bb.q, %.lr.ph.preheader.i
  %i.fh = phi i32 [ %i.et, %.lr.ph.preheader.i ], [ %i.fo, %bb.q ]
  %i.fi = phi i32 [ %i.eu, %.lr.ph.preheader.i ], [ %i.fp, %bb.q ]
  %indvars.iv.i85 = phi i64 [ %i.fg, %.lr.ph.preheader.i ], [ %indvars.iv.next.i87, %bb.q ] ; 3 uses
  %.127.i = phi i32 [ %.02529.i, %.lr.ph.preheader.i ], [ %.2.i, %bb.q ]
  %i.fj = getelementptr inbounds [4 x i8], ptr %i.fa, i64 %indvars.iv.i85
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !3
  %i.fl = getelementptr inbounds [4 x i8], ptr %i.fe, i64 %indvars.iv.i85 ; 2 uses
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !3  ; 2 uses
  %i.fn = icmp ne i32 %i.fk, %i.fm
  %.not.i86 = icmp eq i32 %i.fm, 0
  %or.cond.i = or i1 %i.fn, %.not.i86
  br i1 %or.cond.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i84
  store i32 0, ptr %i.fl, align 4, !tbaa !3
  %.pre37.i = load i32, ptr %i.ee, align 4, !tbaa !43
  %.pre38.i = load i32, ptr %i.eq, align 4, !tbaa !45
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph.i84
  %i.fo = phi i32 [ %.pre38.i, %bb.p ], [ %i.fh, %.lr.ph.i84 ] ; 4 uses
  %i.fp = phi i32 [ %.pre37.i, %bb.p ], [ %i.fi, %.lr.ph.i84 ] ; 4 uses
  %.2.i = phi i32 [ 1, %bb.p ], [ %.127.i, %.lr.ph.i84 ] ; 2 uses
  %indvars.iv.next.i87 = add nsw i64 %indvars.iv.i85, 1 ; 2 uses
  %i.fq = add nsw i32 %i.fp, %i.fo
  %i.fr = sext i32 %i.fq to i64
  %i.fs = icmp slt i64 %indvars.iv.next.i87, %i.fr
  br i1 %i.fs, label %.lr.ph.i84, label %._crit_edge.loopexit.i, !llvm.loop !140

._crit_edge.loopexit.i:                           ; preds = %bb.q
  %.pre39.i = load i32, ptr %i.ef, align 4, !tbaa !44
  %.pre40.i = load i32, ptr %i.eg, align 4, !tbaa !46
  br label %._crit_edge.i83

._crit_edge.i83:                                  ; preds = %._crit_edge.loopexit.i, %bb.o
  %i.ft = phi i32 [ %i.er, %bb.o ], [ %.pre40.i, %._crit_edge.loopexit.i ] ; 2 uses
  %i.fu = phi i32 [ %i.es, %bb.o ], [ %.pre39.i, %._crit_edge.loopexit.i ] ; 2 uses
  %i.fv = phi i32 [ %i.et, %bb.o ], [ %i.fo, %._crit_edge.loopexit.i ]
  %i.fw = phi i32 [ %i.eu, %bb.o ], [ %i.fp, %._crit_edge.loopexit.i ]
  %i.fx = phi i32 [ %i.ev, %bb.o ], [ %i.fo, %._crit_edge.loopexit.i ]
  %i.fy = phi i32 [ %i.ew, %bb.o ], [ %i.fp, %._crit_edge.loopexit.i ]
  %.1.lcssa.i = phi i32 [ %.02529.i, %bb.o ], [ %.2.i, %._crit_edge.loopexit.i ] ; 2 uses
  %i.fz = add nsw i32 %.02430.i, 1                ; 2 uses
  %i.ga = add nsw i32 %i.fu, %i.ft
  %i.gb = icmp slt i32 %i.fz, %i.ga
  br i1 %i.gb, label %bb.o, label %IncreaseTransparency.exit, !llvm.loop !141

IncreaseTransparency.exit:                        ; preds = %._crit_edge.i83, %bb.n
  %.025.lcssa.i = phi i32 [ 0, %bb.n ], [ %.1.lcssa.i, %._crit_edge.i83 ]
  store i32 %.025.lcssa.i, ptr %i.f, align 8, !tbaa !33
  br label %bb.r

bb.r:                                             ; preds = %IncreaseTransparency.exit, %CopyCurrentCanvas.exit82
  %i.gc = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(116) %9, ptr noundef nonnull readonly align 4 dereferenceable(116) %6, i64 116, i1 false), !tbaa.struct !72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.b, i8 0, i64 104, i1 false)
  %i.ge = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ge, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.gd, i64 16, i1 false), !tbaa.struct !96
  %i.gf = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  store i32 3, ptr %i.gf, align 4, !tbaa !142
  %i.gg = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.gh = load <2 x i32>, ptr %i.gd, align 4, !tbaa !3
  store <2 x i32> %i.gh, ptr %i.gg, align 8, !tbaa !3
  %i.gi = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i32 0, ptr %i.gi, align 8, !tbaa !143
  %not..i = xor i1 %i.dn, true
  %11 = zext i1 %not..i to i32
  %i.gj = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  store i32 %11, ptr %i.gj, align 4, !tbaa !144
  %i.gk = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i32 0, ptr %i.gk, align 8, !tbaa !145
  tail call void @WebPMemoryWriterInit(ptr noundef nonnull %i.b) #14
  %i.gl = load i32, ptr %9, align 4, !tbaa !74
  %i.gm = icmp eq i32 %i.gl, 0
  %or.cond.i88 = and i1 %i.dn, %i.gm
  br i1 %or.cond.i88, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.gn = getelementptr inbounds nuw i8, ptr %9, i64 44
  store i32 0, ptr %i.gn, align 4, !tbaa !146
  %i.go = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i32 0, ptr %i.go, align 4, !tbaa !147
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  store i32 1, ptr %i.gc, align 8, !tbaa !59
  %i.gp = getelementptr inbounds nuw i8, ptr %5, i64 120
  store ptr @WebPMemoryWrite, ptr %i.gp, align 8, !tbaa !115
  %i.gq = getelementptr inbounds nuw i8, ptr %5, i64 128
  store ptr %i.b, ptr %i.gq, align 8, !tbaa !116
  %i.gr = call i32 @WebPEncode(ptr noundef nonnull %9, ptr noundef nonnull %i.gc) #14
  %.not.i.not.i = icmp eq i32 %i.gr, 0
  br i1 %.not.i.not.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.gs = getelementptr inbounds nuw i8, ptr %5, i64 160
  %i.gt = load i32, ptr %i.gs, align 8, !tbaa !66
  call void @WebPMemoryWriterClear(ptr noundef nonnull %i.b) #14
  br label %EncodeCandidate.exit

bb.v:                                             ; preds = %bb.t
  %i.gu = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store i32 1, ptr %i.gu, align 8, !tbaa !128
  br label %EncodeCandidate.exit

EncodeCandidate.exit:                             ; preds = %bb.u, %bb.v
  %.0.i = phi i32 [ 0, %bb.v ], [ %i.gt, %bb.u ]  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  %.not71 = icmp eq i32 %.0.i, 0
  %brmerge.not = and i1 %.059.shrunk104, %.not71
  br i1 %brmerge.not, label %.thread106, label %bb.ak

.thread106:                                       ; preds = %bb.l, %bb.j, %EncodeCandidate.exit
  %i.gv = load i32, ptr %i.f, align 8, !tbaa !33
  %.not.i89 = icmp eq i32 %i.gv, 0
  br i1 %.not.i89, label %CopyCurrentCanvas.exit90, label %bb.w

bb.w:                                             ; preds = %.thread106
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !75
  call void @WebPCopyPixels(ptr noundef %i.gx, ptr noundef nonnull %i.d) #14
  %i.gy = load ptr, ptr %i.gw, align 8, !tbaa !75
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 144
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.hb = load <2 x ptr>, ptr %i.gz, align 8, !tbaa !76
  store <2 x ptr> %i.hb, ptr %i.ha, align 8, !tbaa !76
  store i32 0, ptr %i.f, align 8, !tbaa !33
  br label %CopyCurrentCanvas.exit90

CopyCurrentCanvas.exit90:                         ; preds = %.thread106, %bb.w
  br i1 %i.do, label %bb.x, label %bb.ag

bb.x:                                             ; preds = %CopyCurrentCanvas.exit90
  %i.hc = getelementptr inbounds nuw i8, ptr %5, i64 280
  %i.hd = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.he = load float, ptr %i.hd, align 4, !tbaa !126
  %i.hf = fpext float %i.he to double
  %i.hg = fdiv double %i.hf, 1.000000e+02
  %i.hh = call double @pow(double noundef %i.hg, double noundef 5.000000e-01) #14, !tbaa !3 ; 2 uses
  %i.hi = fsub double 1.000000e+00, %i.hh
  %i.hj = call double @llvm.fmuladd.f64(double %i.hi, double 3.100000e+01, double %i.hh)
  %i.hk = fadd double %i.hj, 5.000000e-01
  %i.hl = fptosi double %i.hk to i32              ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %5, i64 284
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !44 ; 2 uses
  %i.ho = and i32 %i.hn, -8
  %i.hp = getelementptr inbounds nuw i8, ptr %5, i64 292
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !46
  %i.hr = add nsw i32 %i.hq, %i.hn
  %i.hs = and i32 %i.hr, -8                       ; 2 uses
  %i.ht = load i32, ptr %i.hc, align 4, !tbaa !43 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %5, i64 288
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !45
  %i.hw = add nsw i32 %i.hv, %i.ht
  %i.hx = and i32 %i.hw, -8                       ; 2 uses
  %.062100.i = add nsw i32 %i.ho, 8               ; 2 uses
  %i.hy = icmp slt i32 %.062100.i, %i.hs
  br i1 %i.hy, label %.preheader83.lr.ph.i, label %FlattenSimilarBlocks.exit

.preheader83.lr.ph.i:                             ; preds = %bb.x
  %i.hz = and i32 %i.ht, -8
  %.097.i = add nsw i32 %i.hz, 8                  ; 2 uses
  %i.ia = icmp slt i32 %.097.i, %i.hx
  %i.ib = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 57 uses
  %i.id = mul nsw i32 %i.hl, 255                  ; 2 uses
  br i1 %i.ia, label %.preheader83.lr.ph.split.us.i, label %FlattenSimilarBlocks.exit

.preheader83.lr.ph.split.us.i:                    ; preds = %.preheader83.lr.ph.i
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.if = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !47
  %i.ih = load ptr, ptr %i.ie, align 8, !tbaa !47
  %i.ii = sext i32 %.097.i to i64
  %i.ij = sext i32 %i.hx to i64
  br label %.preheader83.us.i

.preheader83.us.i:                                ; preds = %..loopexit84_crit_edge.us.i, %.preheader83.lr.ph.split.us.i
  %.062102.us.i = phi i32 [ %.062100.i, %.preheader83.lr.ph.split.us.i ], [ %.062.us.i, %..loopexit84_crit_edge.us.i ] ; 3 uses
  %.063101.us.i = phi i32 [ 0, %.preheader83.lr.ph.split.us.i ], [ %.2.us.i, %..loopexit84_crit_edge.us.i ]
  br label %bb.y

bb.y:                                             ; preds = %.loopexit.us.i, %.preheader83.us.i
  %indvars.iv112.i = phi i64 [ %i.ii, %.preheader83.us.i ], [ %indvars.iv.next113.i, %.loopexit.us.i ] ; 3 uses
  %.198.us.i = phi i32 [ %.063101.us.i, %.preheader83.us.i ], [ %.2.us.i, %.loopexit.us.i ]
  %i.ik = load i32, ptr %i.ib, align 8, !tbaa !48 ; 2 uses
  %i.il = mul nsw i32 %i.ik, %.062102.us.i
  %i.im = sext i32 %i.il to i64
  %i.in = getelementptr inbounds [4 x i8], ptr %i.ig, i64 %i.im
  %i.io = getelementptr inbounds [4 x i8], ptr %i.in, i64 %indvars.iv112.i
  %i.ip = load i32, ptr %i.ic, align 8, !tbaa !48 ; 2 uses
  %i.iq = mul nsw i32 %i.ip, %.062102.us.i
  %i.ir = sext i32 %i.iq to i64
  %i.is = getelementptr inbounds [4 x i8], ptr %i.ih, i64 %i.ir
  %i.it = getelementptr inbounds [4 x i8], ptr %i.is, i64 %indvars.iv112.i ; 59 uses
  %i.iu = sext i32 %i.ik to i64
  %i.iv = sext i32 %i.ip to i64
  br label %.preheader82.us.i

bb.z:                                             ; preds = %bb.aa
  %i.iw = icmp eq i32 %.266.us.i, 64
  br i1 %i.iw, label %.preheader.us.i, label %.loopexit.us.i

.preheader.us.i:                                  ; preds = %bb.z
  %i.ix = sdiv i32 %.269.us.i, 64
  %i.iy = shl i32 %i.ix, 16
  %i.iz = sdiv i32 %.279.us.i, 64
  %i.ja = shl i32 %i.iz, 8
  %i.jb = sdiv i32 %.276.us.i, 64
  %i.jc = or i32 %i.jb, %i.ja
  %i.jd = or i32 %i.jc, %i.iy                     ; 57 uses
  %i.je = insertelement <4 x i32> poison, i32 %i.jd, i64 0
  %i.jf = shufflevector <4 x i32> %i.je, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  store <4 x i32> %i.jf, ptr %i.it, align 4, !tbaa !3
  %i.jg = getelementptr i8, ptr %i.it, i64 16
  store <4 x i32> %i.jf, ptr %i.jg, align 4, !tbaa !3
  %i.jh = load i32, ptr %i.ic, align 8, !tbaa !48
  %i.ji = sext i32 %i.jh to i64
  %i.jj = getelementptr inbounds [4 x i8], ptr %i.it, i64 %i.ji
  store i32 %i.jd, ptr %i.jj, align 4, !tbaa !3
  %i.jk = load i32, ptr %i.ic, align 8, !tbaa !48
  %i.jl = sext i32 %i.jk to i64
  %i.jm = getelementptr [4 x i8], ptr %i.it, i64 %i.jl
  %i.jn = getelementptr i8, ptr %i.jm, i64 4
  store i32 %i.jd, ptr %i.jn, align 4, !tbaa !3
  %i.jo = load i32, ptr %i.ic, align 8, !tbaa !48
  %i.jp = sext i32 %i.jo to i64
  %i.jq = getelementptr [4 x i8], ptr %i.it, i64 %i.jp
  %i.jr = getelementptr i8, ptr %i.jq, i64 8
  store i32 %i.jd, ptr %i.jr, align 4, !tbaa !3
  %i.js = load i32, ptr %i.ic, align 8, !tbaa !48
  %i.jt = sext i32 %i.js to i64
  %i.ju = getelementptr [4 x i8], ptr %i.it, i64 %i.jt
  %i.jv = getelementptr i8, ptr %i.ju, i64 12
  store i32 %i.jd, ptr %i.jv, align 4, !tbaa !3
  %i.jw = load i32, ptr %i.ic, align 8, !tbaa !48
  %i.jx = sext i32 %i.jw to i64
  %i.jy = getelementptr [4 x i8], ptr %i.it, i64 %i.jx
  %i.jz = getelementptr i8, ptr %i.jy, i64 16
  store i32 %i.jd, ptr %i.jz, align 4, !tbaa !3
  %i.ka = load i32, ptr %i.ic, align 8, !tbaa !48
  %i.kb = sext i32 %i.ka to i64
  %i.kc = getelementptr [4 x i8], ptr %i.it, i64 %i.kb
  %i.kd = getelementptr i8, ptr %i.kc, i64 20
  store i32 %i.jd, ptr %i.kd, align 4, !tbaa !3
  %i.ke = load i32, ptr %i.ic, align 8, !tbaa !48
  %i.kf = sext i32 %i.ke to i64
  %i.kg = getelementptr [4 x i8], ptr %i.it, i64 %i.kf
  %i.kh = getelementptr i8, ptr %i.kg, i64 24
  store i32 %i.jd, ptr %i.kh, align 4, !tbaa !3
  %i.ki = load i32, ptr %i.ic, align 8, !tbaa !48
  %i.kj = sext i32 %i.ki to i64
  %i.kk = getelementptr [4 x i8], ptr %i.it, i64 %i.kj
  %i.kl = getelementptr i8, ptr %i.kk, i64 28
  store i32 %i.jd, ptr %i.kl, align 4, !tbaa !3
  %i.km = load i32, ptr %i.ic, align 8, !tbaa !48
  %i.kn = shl nsw i32 %i.km, 1
  %i.ko = sext i32 %i.kn to i64
  %i.kp = getelementptr inbounds [4 x i8], ptr %i.it, i64 %i.ko
  store i32 %i.jd, ptr %i.kp, align 4, !tbaa !3
  %i.kq = load i32, ptr %i.ic, align 8, !tbaa !48
  %i.kr = shl nsw i32 %i.kq, 1
  %i.ks = sext i32 %i.kr to i64
  %i.kt = getelementptr [4 x i8], ptr %i.it, i64 %i.ks
  %i.ku = getelementptr i8, ptr %i.kt, i64 4
  store i32 %i.jd, ptr %i.ku, align 4, !tbaa !3
  %i.kv = load i32, ptr %i.ic, align 8, !tbaa !48
  %i.kw = shl nsw i32 %i.kv, 1
  %i.kx = sext i32 %i.kw to i64
end_hunk_0
