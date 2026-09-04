Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/warpmv?download=true
inline.NumInlined: 28
inline.NumDeleted: 12
begin_hunk_0_@dav1d_get_shear_params:bb.a
  store i16 %i.co, ptr %i.cp, align 2, !tbaa !12
  %i.cq = tail call i16 @llvm.abs.i16(i16 %i.m, i1 false)
  %i.cr = zext i16 %i.cq to i32
  %i.cs = shl nuw nsw i32 %i.cr, 2
  %i.ct = tail call i16 @llvm.abs.i16(i16 %i.y, i1 false)
  %i.cu = zext i16 %i.ct to i32
  %i.cv = mul nuw nsw i32 %i.cu, 7
  %i.cw = add nuw nsw i32 %i.cv, %i.cs
  %i.cx = icmp samesign ugt i32 %i.cw, 65535
  br i1 %i.cx, label %bb.f, label %bb.e

bb.e:                                             ; preds = %resolve_divisor_32.exit
  %i.cy = tail call i16 @llvm.abs.i16(i16 %i.bq, i1 false)
  %i.cz = zext i16 %i.cy to i32
  %sext = shl i32 %i.cn, 22
  %i.da = ashr exact i32 %sext, 16
  %i.db = tail call i32 @llvm.abs.i32(i32 %i.da, i1 true)
  %i.dc = add nuw nsw i32 %i.db, %i.cz
  %i.dd = icmp samesign ugt i32 %i.dc, 16383
  %i.de = zext i1 %i.dd to i32
  br label %bb.f

bb.f:                                             ; preds = %resolve_divisor_32.exit, %bb.e, %bb.a
  %.0 = phi i32 [ 1, %bb.a ], [ 1, %resolve_divisor_32.exit ], [ %i.de, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @dav1d_set_affine_mv2d(i32 noundef %0, i32 noundef %1, i32 %2, ptr nofree noundef captures(none) initializes((4, 12)) %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.b = shl nsw i32 %1, 1
  %i.c = add nsw i32 %i.b, -1
  %i.d = shl nsw i32 %0, 1
  %i.e = add nsw i32 %i.d, -1
  %i.f = shl nsw i32 %5, 2
  %i.g = add nsw i32 %i.c, %i.f                   ; 2 uses
  %i.h = shl nsw i32 %4, 2
  %i.i = add nsw i32 %i.e, %i.h                   ; 2 uses
  %i.j = ashr i32 %2, 3
  %i.k = and i32 %i.j, -8192
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.m = load i32, ptr %i.l, align 4, !tbaa !9
  %.neg23 = sub i32 65536, %i.m
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = load i32, ptr %i.n, align 4, !tbaa !9
  %.neg.neg = mul i32 %.neg23, %i.i
  %.neg16 = mul i32 %i.o, %i.g
  %reass.add.neg = sub i32 %.neg.neg, %.neg16
  %i.p = add i32 %reass.add.neg, %i.k
  %i.q = tail call i32 @llvm.smax.i32(i32 %i.p, i32 -8388608)
  %i.r = tail call i32 @llvm.smin.i32(i32 %i.q, i32 8388607)
  store i32 %i.r, ptr %i.a, align 4, !tbaa !9
  %sext = shl i32 %2, 16
  %i.s = ashr exact i32 %sext, 3
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.u = load i32, ptr %i.t, align 4, !tbaa !9
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.w = load i32, ptr %i.v, align 4, !tbaa !9
  %.neg = sub i32 65536, %i.w
  %.neg18 = mul i32 %i.u, %i.i
  %.neg19.neg = mul i32 %.neg, %i.g
  %reass.add21.neg = sub i32 %.neg19.neg, %.neg18
  %i.x = add i32 %reass.add21.neg, %i.s
  %i.y = tail call i32 @llvm.smax.i32(i32 %i.x, i32 -8388608)
  %i.z = tail call i32 @llvm.smin.i32(i32 %i.y, i32 8388607)
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !9
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define dso_local range(i32 0, 2) i32 @dav1d_find_affine_int(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 %4, ptr nofree noundef writeonly captures(none) %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.b = insertelement <2 x i32> poison, i32 %2, i64 0
  %i.c = insertelement <2 x i32> %i.b, i32 %3, i64 1
  %i.d = shl nsw <2 x i32> %i.c, splat (i32 1)
  %i.e = add nsw <2 x i32> %i.d, splat (i32 -1)   ; 3 uses
  %i.f = shl nsw <2 x i32> %i.e, splat (i32 3)    ; 2 uses
  %sext = shl i32 %4, 16                          ; 2 uses
  %i.g = ashr i32 %4, 16                          ; 2 uses
  %i.h = shl nsw i32 %7, 2
  %i.i = extractelement <2 x i32> %i.e, i64 1
  %i.j = add nsw i32 %i.h, %i.i                   ; 2 uses
  %i.k = shl nsw i32 %6, 2
  %i.l = extractelement <2 x i32> %i.e, i64 0
  %i.m = add nsw i32 %i.k, %i.l                   ; 2 uses
  %i.n = icmp sgt i32 %1, 0
  br i1 %i.n, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.o = ashr exact i32 %sext, 16
  %i.p = insertelement <2 x i32> poison, i32 %i.g, i64 0
  %i.q = insertelement <2 x i32> %i.p, i32 %i.o, i64 1
  %i.r = add <2 x i32> %i.f, %i.q
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %bb.b

._crit_edge.loopexit:                             ; preds = %bb.e
  %i.s = sext i32 %.sroa.072.1 to i64
  %i.t = sext i32 %.sroa.1682.1 to i64
  %i.u = sext i32 %.sroa.8.1 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.sroa.072.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.s, %._crit_edge.loopexit ] ; 3 uses
  %.sroa.8.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.u, %._crit_edge.loopexit ] ; 6 uses
  %.sroa.1682.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.t, %._crit_edge.loopexit ] ; 3 uses
  %i.v = phi <4 x i32> [ zeroinitializer, %bb.a ], [ %i.bn, %._crit_edge.loopexit ] ; 4 uses
  %i.w = mul nsw i64 %.sroa.1682.0.lcssa, %.sroa.072.0.lcssa ; 2 uses
  %i.x = mul nsw i64 %.sroa.8.0.lcssa, %.sroa.8.0.lcssa ; 2 uses
  %i.y = icmp eq i64 %i.w, %i.x
  br i1 %i.y, label %bb.i, label %bb.f

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %.sroa.1682.0143 = phi i32 [ 0, %.lr.ph ], [ %.sroa.1682.1, %bb.e ] ; 3 uses
  %.sroa.8.0142 = phi i32 [ 0, %.lr.ph ], [ %.sroa.8.1, %bb.e ] ; 3 uses
  %.sroa.072.0141 = phi i32 [ 0, %.lr.ph ], [ %.sroa.072.1, %bb.e ] ; 3 uses
  %i.z = phi <4 x i32> [ zeroinitializer, %.lr.ph ], [ %i.bn, %bb.e ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load <2 x i32>, ptr %i.ab, align 4, !tbaa !9
  %i.ad = sub <2 x i32> %i.ac, %i.r               ; 2 uses
  %i.ae = shufflevector <2 x i32> %i.ad, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.af = load <2 x i32>, ptr %i.aa, align 4, !tbaa !9
  %i.ag = sub nsw <2 x i32> %i.af, %i.f           ; 3 uses
  %i.ah = shufflevector <2 x i32> %i.ag, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1> ; 3 uses
  %i.ai = extractelement <2 x i32> %i.ag, i64 0   ; 5 uses
  %foldExtExtBinop = sub <4 x i32> %i.ah, %i.ae
  %reass.sub = extractelement <4 x i32> %foldExtExtBinop, i64 0
  %i.aj = add i32 %reass.sub, 255
  %i.ak = icmp ult i32 %i.aj, 511
  br i1 %i.ak, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.al = extractelement <2 x i32> %i.ad, i64 1
  %i.am = extractelement <2 x i32> %i.ag, i64 1   ; 6 uses
  %reass.sub155 = sub i32 %i.am, %i.al
  %i.an = add i32 %reass.sub155, 255
  %i.ao = icmp ult i32 %i.an, 511
  br i1 %i.ao, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ap = mul nsw i32 %i.ai, %i.ai
  %i.aq = lshr i32 %i.ap, 2
  %i.ar = shl nsw i32 %i.ai, 1
  %i.as = add i32 %.sroa.072.0141, 8
  %i.at = add i32 %i.as, %i.ar
  %i.au = add i32 %i.at, %i.aq
  %i.av = mul nsw i32 %i.am, %i.ai
  %i.aw = ashr i32 %i.av, 2
  %i.ax = add i32 %.sroa.8.0142, 4
  %i.ay = add i32 %i.ax, %i.ai
  %i.az = add i32 %i.ay, %i.am
  %i.ba = add i32 %i.az, %i.aw
  %i.bb = mul nsw i32 %i.am, %i.am
  %i.bc = lshr i32 %i.bb, 2
  %i.bd = shl nsw i32 %i.am, 1
  %i.be = add i32 %.sroa.1682.0143, 8
  %i.bf = add i32 %i.be, %i.bd
  %i.bg = add i32 %i.bf, %i.bc
  %i.bh = mul nsw <4 x i32> %i.ah, %i.ae
  %i.bi = add <4 x i32> %i.z, <i32 8, i32 4, i32 4, i32 8>
  %i.bj = ashr <4 x i32> %i.bh, splat (i32 2)
  %i.bk = add <4 x i32> %i.bi, %i.ae
  %i.bl = add <4 x i32> %i.bk, %i.ah
  %i.bm = add <4 x i32> %i.bl, %i.bj
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.072.1 = phi i32 [ %i.au, %bb.d ], [ %.sroa.072.0141, %bb.c ], [ %.sroa.072.0141, %bb.b ] ; 2 uses
  %.sroa.8.1 = phi i32 [ %i.ba, %bb.d ], [ %.sroa.8.0142, %bb.c ], [ %.sroa.8.0142, %bb.b ] ; 2 uses
  %.sroa.1682.1 = phi i32 [ %i.bg, %bb.d ], [ %.sroa.1682.0143, %bb.c ], [ %.sroa.1682.0143, %bb.b ] ; 2 uses
  %i.bn = phi <4 x i32> [ %i.bm, %bb.d ], [ %i.z, %bb.c ], [ %i.z, %bb.b ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.b

bb.f:                                             ; preds = %._crit_edge
  %i.bo = sub nsw i64 %i.w, %i.x                  ; 2 uses
  %i.bp = tail call i64 @llvm.abs.i64(i64 %i.bo, i1 true) ; 3 uses
  %i.bq = tail call range(i64 1, 65) i64 @llvm.ctlz.i64(i64 range(i64 0, 9223372034707292161) %i.bp, i1 true) ; 4 uses
  %i.br = trunc nuw nsw i64 %i.bq to i32          ; 2 uses
  %i.bs = xor i32 %i.br, 63                       ; 3 uses
  %i.bt = zext nneg i32 %i.bs to i64
  %.neg.i = shl nsw i64 -1, %i.bt
  %i.bu = add nsw i64 %.neg.i, %i.bp              ; 2 uses
  %i.bv = icmp samesign ugt i32 %i.bs, 8
  br i1 %i.bv, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bw = sub nsw i64 54, %i.bq
  %8 = and i64 %i.bw, 4294967295
  %i.bx = shl nuw nsw i64 1, %8
  %i.by = add nsw i64 %i.bu, %i.bx
  %i.bz = sub nsw i64 55, %i.bq
  %9 = and i64 %i.bz, 4294967295
  %i.ca = ashr i64 %i.by, %9
  br label %resolve_divisor_64.exit

bb.h:                                             ; preds = %bb.f
  %i.cb = sub nuw nsw i32 8, %i.bs
  %i.cc = zext nneg i32 %i.cb to i64
  %i.cd = shl i64 %i.bu, %i.cc
  br label %resolve_divisor_64.exit

resolve_divisor_64.exit:                          ; preds = %bb.g, %bb.h
  %i.ce = phi i64 [ %i.ca, %bb.g ], [ %i.cd, %bb.h ] ; 2 uses
  %i.cf = icmp slt i64 %i.ce, 257
  tail call void @llvm.assume(i1 %i.cf)
  %i.cg = getelementptr inbounds [2 x i8], ptr @div_lut, i64 %i.ce
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !11
  %i.ci = zext i16 %i.ch to i32                   ; 2 uses
  %i.cj = icmp slt i64 %i.bo, 0
  %i.ck = sub nsw i32 0, %i.ci
  %i.cl = select i1 %i.cj, i32 %i.ck, i32 %i.ci
  %i.cm = sub nsw i64 61, %i.bq
  %i.cn = icmp samesign ult i64 %i.bp, 4          ; 2 uses
  %i.co = add nsw i32 %i.br, -61
  %i.cp = select i1 %i.cn, i32 %i.co, i32 0
  %.0 = shl nsw i32 %i.cl, %i.cp
  %i.cq = extractelement <4 x i32> %i.v, i64 0
  %i.cr = sext i32 %i.cq to i64                   ; 2 uses
  %i.cs = mul nsw i64 %.sroa.1682.0.lcssa, %i.cr
  %i.ct = extractelement <4 x i32> %i.v, i64 2
  %i.cu = sext i32 %i.ct to i64                   ; 2 uses
  %i.cv = mul nsw i64 %.sroa.8.0.lcssa, %i.cu
  %i.cw = sub nsw i64 %i.cs, %i.cv
  %i.cx = sext i32 %.0 to i64                     ; 4 uses
  %i.cy = mul nsw i64 %i.cw, %i.cx                ; 2 uses
  %i.cz = tail call i64 @llvm.abs.i64(i64 %i.cy, i1 true)
  %i.da = and i64 %i.cm, 4294967295
  %i.db = select i1 %i.cn, i64 0, i64 %i.da       ; 5 uses
  %i.dc = shl nuw i64 1, %i.db
  %i.dd = ashr i64 %i.dc, 1                       ; 4 uses
  %i.de = add nsw i64 %i.cz, %i.dd
  %i.df = ashr i64 %i.de, %i.db
  %i.dg = trunc i64 %i.df to i32                  ; 2 uses
  %i.dh = icmp slt i64 %i.cy, 0
  %i.di = sub nsw i32 0, %i.dg
  %i.dj = select i1 %i.dh, i32 %i.di, i32 %i.dg
  %i.dk = tail call i32 @llvm.smax.i32(i32 %i.dj, i32 57345)
  %i.dl = tail call range(i32 57345, 73728) i32 @llvm.umin.i32(i32 %i.dk, i32 73727) ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 %i.dl, ptr %i.dm, align 4, !tbaa !9
  %i.dn = mul nsw i64 %.sroa.072.0.lcssa, %i.cu
  %i.do = mul nsw i64 %.sroa.8.0.lcssa, %i.cr
  %i.dp = sub nsw i64 %i.dn, %i.do
  %i.dq = mul nsw i64 %i.dp, %i.cx                ; 2 uses
  %i.dr = tail call i64 @llvm.abs.i64(i64 %i.dq, i1 true)
  %i.ds = add nsw i64 %i.dr, %i.dd
  %i.dt = ashr i64 %i.ds, %i.db
  %i.du = trunc i64 %i.dt to i32                  ; 2 uses
  %i.dv = icmp slt i64 %i.dq, 0
  %i.dw = sub nsw i32 0, %i.du
  %i.dx = select i1 %i.dv, i32 %i.dw, i32 %i.du
  %i.dy = tail call i32 @llvm.smax.i32(i32 %i.dx, i32 -8191)
  %i.dz = tail call range(i32 -8191, 8192) i32 @llvm.smin.i32(i32 %i.dy, i32 8191) ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 %i.dz, ptr %i.ea, align 4, !tbaa !9
  %i.eb = extractelement <4 x i32> %i.v, i64 1
  %i.ec = sext i32 %i.eb to i64                   ; 2 uses
  %i.ed = mul nsw i64 %.sroa.1682.0.lcssa, %i.ec
  %i.ee = extractelement <4 x i32> %i.v, i64 3
  %i.ef = sext i32 %i.ee to i64                   ; 2 uses
  %i.eg = mul nsw i64 %.sroa.8.0.lcssa, %i.ef
  %i.eh = sub nsw i64 %i.ed, %i.eg
  %i.ei = mul nsw i64 %i.eh, %i.cx                ; 2 uses
  %i.ej = tail call i64 @llvm.abs.i64(i64 %i.ei, i1 true)
  %i.ek = add nsw i64 %i.ej, %i.dd
  %i.el = ashr i64 %i.ek, %i.db
  %i.em = trunc i64 %i.el to i32                  ; 2 uses
  %i.en = icmp slt i64 %i.ei, 0
  %i.eo = sub nsw i32 0, %i.em
  %i.ep = select i1 %i.en, i32 %i.eo, i32 %i.em
  %i.eq = tail call i32 @llvm.smax.i32(i32 %i.ep, i32 -8191)
  %i.er = tail call range(i32 -8191, 8192) i32 @llvm.smin.i32(i32 %i.eq, i32 8191) ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 %i.er, ptr %i.es, align 4, !tbaa !9
  %i.et = mul nsw i64 %.sroa.072.0.lcssa, %i.ef
  %i.eu = mul nsw i64 %.sroa.8.0.lcssa, %i.ec
  %i.ev = sub nsw i64 %i.et, %i.eu
  %i.ew = mul nsw i64 %i.ev, %i.cx                ; 2 uses
  %i.ex = tail call i64 @llvm.abs.i64(i64 %i.ew, i1 true)
  %i.ey = add nsw i64 %i.ex, %i.dd
  %i.ez = ashr i64 %i.ey, %i.db
  %i.fa = trunc i64 %i.ez to i32                  ; 2 uses
  %i.fb = icmp slt i64 %i.ew, 0
  %i.fc = sub nsw i32 0, %i.fa
  %i.fd = select i1 %i.fb, i32 %i.fc, i32 %i.fa
  %i.fe = tail call i32 @llvm.smax.i32(i32 %i.fd, i32 57345)
  %i.ff = tail call range(i32 57345, 73728) i32 @llvm.umin.i32(i32 %i.fe, i32 73727) ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 %i.ff, ptr %i.fg, align 4, !tbaa !9
  %i.fh = shl nsw i32 %i.g, 13
  %.neg156 = sub nsw i32 65536, %i.dl
  %.neg = mul i32 %i.dz, %i.j
  %.neg126.neg = mul i32 %.neg156, %i.m
  %reass.add.neg = sub i32 %.neg126.neg, %.neg
  %i.fi = add i32 %reass.add.neg, %i.fh
  %i.fj = tail call i32 @llvm.smax.i32(i32 %i.fi, i32 -8388608)
  %i.fk = tail call i32 @llvm.smin.i32(i32 %i.fj, i32 8388607)
  store i32 %i.fk, ptr %i.a, align 4, !tbaa !9
  %i.fl = ashr exact i32 %sext, 3
  %.neg157 = sub nsw i32 65536, %i.ff
  %.neg128 = mul i32 %i.er, %i.m
  %.neg129.neg = mul i32 %.neg157, %i.j
  %reass.add131.neg = sub i32 %.neg129.neg, %.neg128
  %i.fm = add i32 %reass.add131.neg, %i.fl
  %i.fn = tail call i32 @llvm.smax.i32(i32 %i.fm, i32 -8388608)
  %i.fo = tail call i32 @llvm.smin.i32(i32 %i.fn, i32 8388607)
  %i.fp = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.fo, ptr %i.fp, align 4, !tbaa !9
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %resolve_divisor_64.exit
  %.0119 = phi i32 [ 0, %resolve_divisor_64.exit ], [ 1, %._crit_edge ]
  ret i32 %.0119
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.abs.i16(i16, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!6, !6, i64 0}
!10 = !{!"short", !5, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!5, !5, i64 0}
end_hunk_0
