inline.NumInlined: 90
inline.NumDeleted: 14
begin_hunk_0_@WebPYuv444ToBgr_C:bb.a
  %i.ci = trunc <8 x i32> %i.ch to <8 x i8>
  %i.cj = shufflevector <4 x i8> %i.cg, <4 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec23 = shufflevector <8 x i8> %i.ci, <8 x i8> %i.cj, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x i8> %interleaved.vec23, ptr %i.az, align 1, !tbaa !10
  %index.next24 = add nuw i64 %index19, 4         ; 2 uses
  %i.ck = icmp eq i64 %index.next24, %n.vec18
  br i1 %i.ck, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !25

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n25 = icmp eq i64 %n.vec18, %wide.trip.count
  br i1 %cmp.n25, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec18, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 5 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !10
  %i.cn = zext i8 %i.cm to i32
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !10
  %i.cq = zext i8 %i.cp to i32                    ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !10
  %i.ct = zext i8 %i.cs to i32                    ; 2 uses
  %i.cu = mul nuw nsw i64 %indvars.iv, 3
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 %i.cu ; 3 uses
  %i.cw = mul nuw nsw i32 %i.cn, 19077
  %i.cx = lshr i32 %i.cw, 8                       ; 3 uses
  %i.cy = mul nuw nsw i32 %i.cq, 33050
  %i.cz = lshr i32 %i.cy, 8
  %i.da = add nuw nsw i32 %i.cz, %i.cx            ; 2 uses
  %i.db = add nsw i32 %i.da, -17685               ; 2 uses
  %i.dc = icmp ult i32 %i.db, 16384
  %i.dd = lshr i32 %i.db, 6
  %i.de = icmp samesign ult i32 %i.da, 17685
  %i.df = select i1 %i.de, i32 0, i32 255
  %i.dg = select i1 %i.dc, i32 %i.dd, i32 %i.df
  %i.dh = trunc i32 %i.dg to i8
  store i8 %i.dh, ptr %i.cv, align 1, !tbaa !10
  %i.di = mul nuw nsw i32 %i.cq, 6419
  %i.dj = lshr i32 %i.di, 8
  %i.dk = mul nuw nsw i32 %i.ct, 13320
  %i.dl = lshr i32 %i.dk, 8
  %i.dm = add nuw nsw i32 %i.dj, %i.dl
  %i.dn = sub nsw i32 %i.cx, %i.dm                ; 2 uses
  %i.do = add nsw i32 %i.dn, 8708                 ; 2 uses
  %i.dp = icmp ult i32 %i.do, 16384
  %i.dq = lshr i32 %i.do, 6
  %i.dr = icmp slt i32 %i.dn, -8708
  %i.ds = select i1 %i.dr, i32 0, i32 255
  %i.dt = select i1 %i.dp, i32 %i.dq, i32 %i.ds
  %i.du = trunc i32 %i.dt to i8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cv, i64 1
  store i8 %i.du, ptr %i.dv, align 1, !tbaa !10
  %i.dw = mul nuw nsw i32 %i.ct, 26149
  %i.dx = lshr i32 %i.dw, 8
  %i.dy = add nuw nsw i32 %i.dx, %i.cx            ; 2 uses
  %i.dz = add nsw i32 %i.dy, -14234               ; 2 uses
  %i.ea = icmp ult i32 %i.dz, 16384
  %i.eb = lshr i32 %i.dz, 6
  %i.ec = icmp samesign ult i32 %i.dy, 14234
  %i.ed = select i1 %i.ec, i32 0, i32 255
  %i.ee = select i1 %i.ea, i32 %i.eb, i32 %i.ed
  %i.ef = trunc i32 %i.ee to i8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.cv, i64 2
  store i8 %i.ef, ptr %i.eg, align 1, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !26

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @WebPYuv444ToArgb_C(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef readonly captures(none) %1, ptr noalias nofree noundef readonly captures(none) %2, ptr noalias nofree noundef writeonly captures(none) %3, i32 noundef %4) #1 {
bb.a:
  %i.a = icmp sgt i32 %4, 0
  br i1 %i.a, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %4 to i64      ; 6 uses
  %min.iters.check = icmp ult i32 %4, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check14 = icmp ult i32 %4, 16
  br i1 %min.iters.check14, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 20 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %index
  %wide.load = load <16 x i8>, ptr %i.b, align 1, !tbaa !10
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %index
  %wide.load15 = load <16 x i8>, ptr %i.c, align 1, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 %index
  %wide.load16 = load <16 x i8>, ptr %i.d, align 1, !tbaa !10
  %i.e = shl nsw i64 %index, 2
  %i.f = shl i64 %index, 2
  %i.g = shl i64 %index, 2
  %i.h = shl i64 %index, 2
  %i.i = shl i64 %index, 2
  %i.j = shl i64 %index, 2
  %i.k = shl i64 %index, 2
  %i.l = shl i64 %index, 2
  %i.m = shl i64 %index, 2
  %i.n = shl i64 %index, 2
  %i.o = shl i64 %index, 2
  %i.p = shl i64 %index, 2
  %i.q = shl i64 %index, 2
  %i.r = shl i64 %index, 2
  %i.s = shl i64 %index, 2
  %i.t = shl i64 %index, 2
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 %i.e ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 %i.f ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 %i.g ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 %i.h ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 %i.i ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 %i.j ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 20
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 %i.k ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 %i.l ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 28
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 %i.m ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 %i.n ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 36
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 %i.o ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 %i.p ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 44
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 %i.q ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 48
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 %i.r ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 52
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 %i.s ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 56
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 %i.t ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 60
  store i8 -1, ptr %i.u, align 1, !tbaa !10
  store i8 -1, ptr %i.w, align 1, !tbaa !10
  store i8 -1, ptr %i.y, align 1, !tbaa !10
  store i8 -1, ptr %i.aa, align 1, !tbaa !10
  store i8 -1, ptr %i.ac, align 1, !tbaa !10
  store i8 -1, ptr %i.ae, align 1, !tbaa !10
  store i8 -1, ptr %i.ag, align 1, !tbaa !10
  store i8 -1, ptr %i.ai, align 1, !tbaa !10
  store i8 -1, ptr %i.ak, align 1, !tbaa !10
  store i8 -1, ptr %i.am, align 1, !tbaa !10
  store i8 -1, ptr %i.ao, align 1, !tbaa !10
  store i8 -1, ptr %i.aq, align 1, !tbaa !10
  store i8 -1, ptr %i.as, align 1, !tbaa !10
  store i8 -1, ptr %i.au, align 1, !tbaa !10
  store i8 -1, ptr %i.aw, align 1, !tbaa !10
  store i8 -1, ptr %i.ay, align 1, !tbaa !10
  %i.az = zext <16 x i8> %wide.load to <16 x i32>
  %i.ba = zext <16 x i8> %wide.load15 to <16 x i32> ; 2 uses
  %i.bb = zext <16 x i8> %wide.load16 to <16 x i32> ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %i.bd = getelementptr inbounds nuw i8, ptr %i.v, i64 5
  %i.be = getelementptr inbounds nuw i8, ptr %i.x, i64 9
  %i.bf = getelementptr inbounds nuw i8, ptr %i.z, i64 13
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ab, i64 17
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ad, i64 21
  %i.bi = getelementptr inbounds nuw i8, ptr %i.af, i64 25
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ah, i64 29
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aj, i64 33
  %i.bl = getelementptr inbounds nuw i8, ptr %i.al, i64 37
  %i.bm = getelementptr inbounds nuw i8, ptr %i.an, i64 41
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ap, i64 45
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ar, i64 49
  %i.bp = getelementptr inbounds nuw i8, ptr %i.at, i64 53
  %i.bq = getelementptr inbounds nuw i8, ptr %i.av, i64 57
  %i.br = getelementptr inbounds nuw i8, ptr %i.ax, i64 61
  %i.bs = mul nuw nsw <16 x i32> %i.az, splat (i32 19077)
  %i.bt = lshr <16 x i32> %i.bs, splat (i32 8)    ; 3 uses
  %i.bu = mul nuw nsw <16 x i32> %i.bb, splat (i32 26149)
  %i.bv = lshr <16 x i32> %i.bu, splat (i32 8)
  %i.bw = add nuw nsw <16 x i32> %i.bv, %i.bt     ; 2 uses
  %i.bx = add nsw <16 x i32> %i.bw, splat (i32 -14234) ; 2 uses
  %i.by = icmp ult <16 x i32> %i.bx, splat (i32 16384)
  %i.bz = lshr <16 x i32> %i.bx, splat (i32 6)
  %i.ca = icmp samesign ult <16 x i32> %i.bw, splat (i32 14234)
  %i.cb = select <16 x i1> %i.ca, <16 x i32> zeroinitializer, <16 x i32> splat (i32 255)
  %i.cc = select <16 x i1> %i.by, <16 x i32> %i.bz, <16 x i32> %i.cb
  %i.cd = trunc <16 x i32> %i.cc to <16 x i8>     ; 16 uses
  %i.ce = extractelement <16 x i8> %i.cd, i64 0
  store i8 %i.ce, ptr %i.bc, align 1, !tbaa !10
  %i.cf = extractelement <16 x i8> %i.cd, i64 1
  store i8 %i.cf, ptr %i.bd, align 1, !tbaa !10
  %i.cg = extractelement <16 x i8> %i.cd, i64 2
  store i8 %i.cg, ptr %i.be, align 1, !tbaa !10
  %i.ch = extractelement <16 x i8> %i.cd, i64 3
  store i8 %i.ch, ptr %i.bf, align 1, !tbaa !10
  %i.ci = extractelement <16 x i8> %i.cd, i64 4
  store i8 %i.ci, ptr %i.bg, align 1, !tbaa !10
  %i.cj = extractelement <16 x i8> %i.cd, i64 5
  store i8 %i.cj, ptr %i.bh, align 1, !tbaa !10
  %i.ck = extractelement <16 x i8> %i.cd, i64 6
  store i8 %i.ck, ptr %i.bi, align 1, !tbaa !10
  %i.cl = extractelement <16 x i8> %i.cd, i64 7
  store i8 %i.cl, ptr %i.bj, align 1, !tbaa !10
  %5 = extractelement <16 x i8> %i.cd, i64 8
  store i8 %5, ptr %i.bk, align 1, !tbaa !10
  %6 = extractelement <16 x i8> %i.cd, i64 9
  store i8 %6, ptr %i.bl, align 1, !tbaa !10
  %7 = extractelement <16 x i8> %i.cd, i64 10
  store i8 %7, ptr %i.bm, align 1, !tbaa !10
  %8 = extractelement <16 x i8> %i.cd, i64 11
  store i8 %8, ptr %i.bn, align 1, !tbaa !10
  %9 = extractelement <16 x i8> %i.cd, i64 12
  store i8 %9, ptr %i.bo, align 1, !tbaa !10
  %10 = extractelement <16 x i8> %i.cd, i64 13
  store i8 %10, ptr %i.bp, align 1, !tbaa !10
  %11 = extractelement <16 x i8> %i.cd, i64 14
  store i8 %11, ptr %i.bq, align 1, !tbaa !10
  %12 = extractelement <16 x i8> %i.cd, i64 15
  store i8 %12, ptr %i.br, align 1, !tbaa !10
  %i.cm = mul nuw nsw <16 x i32> %i.ba, splat (i32 6419)
  %i.cn = lshr <16 x i32> %i.cm, splat (i32 8)
  %i.co = mul nuw nsw <16 x i32> %i.bb, splat (i32 13320)
  %i.cp = lshr <16 x i32> %i.co, splat (i32 8)
  %i.cq = add nuw nsw <16 x i32> %i.cn, %i.cp
  %i.cr = sub nsw <16 x i32> %i.bt, %i.cq         ; 2 uses
  %i.cs = add nsw <16 x i32> %i.cr, splat (i32 8708) ; 2 uses
  %i.ct = icmp ult <16 x i32> %i.cs, splat (i32 16384)
  %i.cu = lshr <16 x i32> %i.cs, splat (i32 6)
  %i.cv = icmp slt <16 x i32> %i.cr, splat (i32 -8708)
  %i.cw = select <16 x i1> %i.cv, <16 x i32> zeroinitializer, <16 x i32> splat (i32 255)
  %i.cx = select <16 x i1> %i.ct, <16 x i32> %i.cu, <16 x i32> %i.cw
  %i.cy = trunc <16 x i32> %i.cx to <16 x i8>     ; 16 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.u, i64 2
  %i.da = getelementptr inbounds nuw i8, ptr %i.v, i64 6
  %i.db = getelementptr inbounds nuw i8, ptr %i.x, i64 10
  %i.dc = getelementptr inbounds nuw i8, ptr %i.z, i64 14
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ab, i64 18
  %i.de = getelementptr inbounds nuw i8, ptr %i.ad, i64 22
  %i.df = getelementptr inbounds nuw i8, ptr %i.af, i64 26
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ah, i64 30
  %i.dh = getelementptr inbounds nuw i8, ptr %i.aj, i64 34
  %i.di = getelementptr inbounds nuw i8, ptr %i.al, i64 38
  %i.dj = getelementptr inbounds nuw i8, ptr %i.an, i64 42
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ap, i64 46
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ar, i64 50
  %i.dm = getelementptr inbounds nuw i8, ptr %i.at, i64 54
  %i.dn = getelementptr inbounds nuw i8, ptr %i.av, i64 58
  %i.do = getelementptr inbounds nuw i8, ptr %i.ax, i64 62
  %13 = extractelement <16 x i8> %i.cy, i64 0
  store i8 %13, ptr %i.cz, align 1, !tbaa !10
  %14 = extractelement <16 x i8> %i.cy, i64 1
  store i8 %14, ptr %i.da, align 1, !tbaa !10
  %15 = extractelement <16 x i8> %i.cy, i64 2
  store i8 %15, ptr %i.db, align 1, !tbaa !10
  %16 = extractelement <16 x i8> %i.cy, i64 3
  store i8 %16, ptr %i.dc, align 1, !tbaa !10
  %17 = extractelement <16 x i8> %i.cy, i64 4
  store i8 %17, ptr %i.dd, align 1, !tbaa !10
  %18 = extractelement <16 x i8> %i.cy, i64 5
  store i8 %18, ptr %i.de, align 1, !tbaa !10
  %19 = extractelement <16 x i8> %i.cy, i64 6
  store i8 %19, ptr %i.df, align 1, !tbaa !10
  %20 = extractelement <16 x i8> %i.cy, i64 7
  store i8 %20, ptr %i.dg, align 1, !tbaa !10
  %21 = extractelement <16 x i8> %i.cy, i64 8
  store i8 %21, ptr %i.dh, align 1, !tbaa !10
  %22 = extractelement <16 x i8> %i.cy, i64 9
  store i8 %22, ptr %i.di, align 1, !tbaa !10
  %23 = extractelement <16 x i8> %i.cy, i64 10
  store i8 %23, ptr %i.dj, align 1, !tbaa !10
  %24 = extractelement <16 x i8> %i.cy, i64 11
  store i8 %24, ptr %i.dk, align 1, !tbaa !10
  %25 = extractelement <16 x i8> %i.cy, i64 12
  store i8 %25, ptr %i.dl, align 1, !tbaa !10
  %i.dp = extractelement <16 x i8> %i.cy, i64 13
  store i8 %i.dp, ptr %i.dm, align 1, !tbaa !10
  %i.dq = extractelement <16 x i8> %i.cy, i64 14
  store i8 %i.dq, ptr %i.dn, align 1, !tbaa !10
  %i.dr = extractelement <16 x i8> %i.cy, i64 15
  store i8 %i.dr, ptr %i.do, align 1, !tbaa !10
  %26 = mul nuw nsw <16 x i32> %i.ba, splat (i32 33050)
  %27 = lshr <16 x i32> %26, splat (i32 8)
  %28 = add nuw nsw <16 x i32> %27, %i.bt         ; 2 uses
  %29 = add nsw <16 x i32> %28, splat (i32 -17685) ; 2 uses
  %30 = icmp ult <16 x i32> %29, splat (i32 16384)
  %31 = lshr <16 x i32> %29, splat (i32 6)
  %32 = icmp samesign ult <16 x i32> %28, splat (i32 17685)
  %33 = select <16 x i1> %32, <16 x i32> zeroinitializer, <16 x i32> splat (i32 255)
  %34 = select <16 x i1> %30, <16 x i32> %31, <16 x i32> %33
  %35 = trunc <16 x i32> %34 to <16 x i8>         ; 16 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.u, i64 3
  %i.dt = getelementptr inbounds nuw i8, ptr %i.v, i64 7
  %i.du = getelementptr inbounds nuw i8, ptr %i.x, i64 11
  %i.dv = getelementptr inbounds nuw i8, ptr %i.z, i64 15
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ab, i64 19
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ad, i64 23
  %i.dy = getelementptr inbounds nuw i8, ptr %i.af, i64 27
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ah, i64 31
  %i.ea = getelementptr inbounds nuw i8, ptr %i.aj, i64 35
  %i.eb = getelementptr inbounds nuw i8, ptr %i.al, i64 39
  %i.ec = getelementptr inbounds nuw i8, ptr %i.an, i64 43
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ap, i64 47
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ar, i64 51
  %i.ef = getelementptr inbounds nuw i8, ptr %i.at, i64 55
  %i.eg = getelementptr inbounds nuw i8, ptr %i.av, i64 59
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ax, i64 63
  %36 = extractelement <16 x i8> %35, i64 0
  store i8 %36, ptr %i.ds, align 1, !tbaa !10
  %37 = extractelement <16 x i8> %35, i64 1
  store i8 %37, ptr %i.dt, align 1, !tbaa !10
  %38 = extractelement <16 x i8> %35, i64 2
  store i8 %38, ptr %i.du, align 1, !tbaa !10
  %39 = extractelement <16 x i8> %35, i64 3
  store i8 %39, ptr %i.dv, align 1, !tbaa !10
  %40 = extractelement <16 x i8> %35, i64 4
  store i8 %40, ptr %i.dw, align 1, !tbaa !10
  %41 = extractelement <16 x i8> %35, i64 5
  store i8 %41, ptr %i.dx, align 1, !tbaa !10
  %42 = extractelement <16 x i8> %35, i64 6
  store i8 %42, ptr %i.dy, align 1, !tbaa !10
  %43 = extractelement <16 x i8> %35, i64 7
  store i8 %43, ptr %i.dz, align 1, !tbaa !10
  %44 = extractelement <16 x i8> %35, i64 8
  store i8 %44, ptr %i.ea, align 1, !tbaa !10
  %45 = extractelement <16 x i8> %35, i64 9
  store i8 %45, ptr %i.eb, align 1, !tbaa !10
  %46 = extractelement <16 x i8> %35, i64 10
  store i8 %46, ptr %i.ec, align 1, !tbaa !10
  %47 = extractelement <16 x i8> %35, i64 11
  store i8 %47, ptr %i.ed, align 1, !tbaa !10
  %48 = extractelement <16 x i8> %35, i64 12
  store i8 %48, ptr %i.ee, align 1, !tbaa !10
  %49 = extractelement <16 x i8> %35, i64 13
  store i8 %49, ptr %i.ef, align 1, !tbaa !10
  %50 = extractelement <16 x i8> %35, i64 14
  store i8 %50, ptr %i.eg, align 1, !tbaa !10
  %51 = extractelement <16 x i8> %35, i64 15
  store i8 %51, ptr %i.eh, align 1, !tbaa !10
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ei = icmp eq i64 %index.next, %n.vec
  br i1 %i.ei, label %middle.block, label %vector.body, !llvm.loop !27

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !15

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec18 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index19 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next23, %vec.epilog.vector.body ] ; 8 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 %index19
  %wide.load20 = load <4 x i8>, ptr %i.ej, align 1, !tbaa !10
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 %index19
  %wide.load21 = load <4 x i8>, ptr %i.ek, align 1, !tbaa !10
  %i.el = getelementptr inbounds nuw i8, ptr %2, i64 %index19
  %wide.load22 = load <4 x i8>, ptr %i.el, align 1, !tbaa !10
  %i.em = shl nsw i64 %index19, 2
  %i.en = shl i64 %index19, 2
  %i.eo = shl i64 %index19, 2
  %i.ep = shl i64 %index19, 2
  %i.eq = getelementptr inbounds nuw i8, ptr %3, i64 %i.em ; 4 uses
  %i.er = getelementptr inbounds nuw i8, ptr %3, i64 %i.en ; 4 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 4
  %i.et = getelementptr inbounds nuw i8, ptr %3, i64 %i.eo ; 4 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ev = getelementptr inbounds nuw i8, ptr %3, i64 %i.ep ; 4 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 12
  store i8 -1, ptr %i.eq, align 1, !tbaa !10
  store i8 -1, ptr %i.es, align 1, !tbaa !10
  store i8 -1, ptr %i.eu, align 1, !tbaa !10
  store i8 -1, ptr %i.ew, align 1, !tbaa !10
  %i.ex = zext <4 x i8> %wide.load20 to <4 x i32>
  %i.ey = zext <4 x i8> %wide.load21 to <4 x i32> ; 2 uses
  %i.ez = zext <4 x i8> %wide.load22 to <4 x i32> ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eq, i64 1
  %i.fb = getelementptr inbounds nuw i8, ptr %i.er, i64 5
  %i.fc = getelementptr inbounds nuw i8, ptr %i.et, i64 9
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ev, i64 13
  %i.fe = mul nuw nsw <4 x i32> %i.ex, splat (i32 19077)
  %i.ff = lshr <4 x i32> %i.fe, splat (i32 8)     ; 3 uses
  %i.fg = mul nuw nsw <4 x i32> %i.ez, splat (i32 26149)
  %i.fh = lshr <4 x i32> %i.fg, splat (i32 8)
  %i.fi = add nuw nsw <4 x i32> %i.fh, %i.ff      ; 2 uses
  %i.fj = add nsw <4 x i32> %i.fi, splat (i32 -14234) ; 2 uses
  %i.fk = icmp ult <4 x i32> %i.fj, splat (i32 16384)
  %i.fl = lshr <4 x i32> %i.fj, splat (i32 6)
  %i.fm = icmp samesign ult <4 x i32> %i.fi, splat (i32 14234)
  %i.fn = select <4 x i1> %i.fm, <4 x i32> zeroinitializer, <4 x i32> splat (i32 255)
  %i.fo = select <4 x i1> %i.fk, <4 x i32> %i.fl, <4 x i32> %i.fn
  %i.fp = trunc <4 x i32> %i.fo to <4 x i8>       ; 4 uses
  %i.fq = extractelement <4 x i8> %i.fp, i64 0
  store i8 %i.fq, ptr %i.fa, align 1, !tbaa !10
  %i.fr = extractelement <4 x i8> %i.fp, i64 1
  store i8 %i.fr, ptr %i.fb, align 1, !tbaa !10
  %52 = extractelement <4 x i8> %i.fp, i64 2
  store i8 %52, ptr %i.fc, align 1, !tbaa !10
  %53 = extractelement <4 x i8> %i.fp, i64 3
  store i8 %53, ptr %i.fd, align 1, !tbaa !10
  %i.fs = mul nuw nsw <4 x i32> %i.ey, splat (i32 6419)
  %i.ft = lshr <4 x i32> %i.fs, splat (i32 8)
  %i.fu = mul nuw nsw <4 x i32> %i.ez, splat (i32 13320)
  %i.fv = lshr <4 x i32> %i.fu, splat (i32 8)
  %i.fw = add nuw nsw <4 x i32> %i.ft, %i.fv
  %i.fx = sub nsw <4 x i32> %i.ff, %i.fw          ; 2 uses
  %i.fy = add nsw <4 x i32> %i.fx, splat (i32 8708) ; 2 uses
  %i.fz = icmp ult <4 x i32> %i.fy, splat (i32 16384)
  %i.ga = lshr <4 x i32> %i.fy, splat (i32 6)
  %i.gb = icmp slt <4 x i32> %i.fx, splat (i32 -8708)
  %i.gc = select <4 x i1> %i.gb, <4 x i32> zeroinitializer, <4 x i32> splat (i32 255)
  %i.gd = select <4 x i1> %i.fz, <4 x i32> %i.ga, <4 x i32> %i.gc
  %i.ge = trunc <4 x i32> %i.gd to <4 x i8>       ; 4 uses
  %54 = getelementptr inbounds nuw i8, ptr %i.eq, i64 2
  %55 = getelementptr inbounds nuw i8, ptr %i.er, i64 6
  %56 = getelementptr inbounds nuw i8, ptr %i.et, i64 10
  %57 = getelementptr inbounds nuw i8, ptr %i.ev, i64 14
  %58 = extractelement <4 x i8> %i.ge, i64 0
  store i8 %58, ptr %54, align 1, !tbaa !10
  %59 = extractelement <4 x i8> %i.ge, i64 1
  store i8 %59, ptr %55, align 1, !tbaa !10
  %60 = extractelement <4 x i8> %i.ge, i64 2
  store i8 %60, ptr %56, align 1, !tbaa !10
  %61 = extractelement <4 x i8> %i.ge, i64 3
  store i8 %61, ptr %57, align 1, !tbaa !10
  %i.gf = mul nuw nsw <4 x i32> %i.ey, splat (i32 33050)
  %i.gg = lshr <4 x i32> %i.gf, splat (i32 8)
  %i.gh = add nuw nsw <4 x i32> %i.gg, %i.ff      ; 2 uses
  %i.gi = add nsw <4 x i32> %i.gh, splat (i32 -17685) ; 2 uses
  %i.gj = icmp ult <4 x i32> %i.gi, splat (i32 16384)
  %i.gk = lshr <4 x i32> %i.gi, splat (i32 6)
  %i.gl = icmp samesign ult <4 x i32> %i.gh, splat (i32 17685)
  %i.gm = select <4 x i1> %i.gl, <4 x i32> zeroinitializer, <4 x i32> splat (i32 255)
  %i.gn = select <4 x i1> %i.gj, <4 x i32> %i.gk, <4 x i32> %i.gm
  %i.go = trunc <4 x i32> %i.gn to <4 x i8>       ; 4 uses
  %62 = getelementptr inbounds nuw i8, ptr %i.eq, i64 3
  %63 = getelementptr inbounds nuw i8, ptr %i.er, i64 7
  %64 = getelementptr inbounds nuw i8, ptr %i.et, i64 11
  %65 = getelementptr inbounds nuw i8, ptr %i.ev, i64 15
  %66 = extractelement <4 x i8> %i.go, i64 0
  store i8 %66, ptr %62, align 1, !tbaa !10
  %67 = extractelement <4 x i8> %i.go, i64 1
  store i8 %67, ptr %63, align 1, !tbaa !10
  %68 = extractelement <4 x i8> %i.go, i64 2
  store i8 %68, ptr %64, align 1, !tbaa !10
  %69 = extractelement <4 x i8> %i.go, i64 3
  store i8 %69, ptr %65, align 1, !tbaa !10
  %index.next23 = add nuw i64 %index19, 4         ; 2 uses
  %i.gp = icmp eq i64 %index.next23, %n.vec18
  br i1 %i.gp, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !28

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n24 = icmp eq i64 %n.vec18, %wide.trip.count
  br i1 %cmp.n24, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec18, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 5 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !10
  %i.gs = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !10
  %i.gu = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !10
  %i.gw = shl nsw i64 %indvars.iv, 2
  %i.gx = getelementptr inbounds nuw i8, ptr %3, i64 %i.gw ; 4 uses
  store i8 -1, ptr %i.gx, align 1, !tbaa !10
  %i.gy = zext i8 %i.gr to i32
  %i.gz = zext i8 %i.gt to i32                    ; 2 uses
  %i.ha = zext i8 %i.gv to i32                    ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gx, i64 1
  %i.hc = mul nuw nsw i32 %i.gy, 19077
  %i.hd = lshr i32 %i.hc, 8                       ; 3 uses
  %i.he = mul nuw nsw i32 %i.ha, 26149
  %i.hf = lshr i32 %i.he, 8
  %i.hg = add nuw nsw i32 %i.hf, %i.hd            ; 2 uses
  %i.hh = add nsw i32 %i.hg, -14234               ; 2 uses
  %i.hi = icmp ult i32 %i.hh, 16384
  %i.hj = lshr i32 %i.hh, 6
  %i.hk = icmp samesign ult i32 %i.hg, 14234
  %i.hl = select i1 %i.hk, i32 0, i32 255
  %i.hm = select i1 %i.hi, i32 %i.hj, i32 %i.hl
  %i.hn = trunc i32 %i.hm to i8
  store i8 %i.hn, ptr %i.hb, align 1, !tbaa !10
  %i.ho = mul nuw nsw i32 %i.gz, 6419
  %i.hp = lshr i32 %i.ho, 8
  %i.hq = mul nuw nsw i32 %i.ha, 13320
  %i.hr = lshr i32 %i.hq, 8
  %i.hs = add nuw nsw i32 %i.hp, %i.hr
  %i.ht = sub nsw i32 %i.hd, %i.hs                ; 2 uses
  %i.hu = add nsw i32 %i.ht, 8708                 ; 2 uses
  %i.hv = icmp ult i32 %i.hu, 16384
  %i.hw = lshr i32 %i.hu, 6
  %i.hx = icmp slt i32 %i.ht, -8708
  %i.hy = select i1 %i.hx, i32 0, i32 255
  %i.hz = select i1 %i.hv, i32 %i.hw, i32 %i.hy
  %i.ia = trunc i32 %i.hz to i8
  %i.ib = getelementptr inbounds nuw i8, ptr %i.gx, i64 2
  store i8 %i.ia, ptr %i.ib, align 1, !tbaa !10
  %i.ic = mul nuw nsw i32 %i.gz, 33050
  %i.id = lshr i32 %i.ic, 8
  %i.ie = add nuw nsw i32 %i.id, %i.hd            ; 2 uses
  %i.if = add nsw i32 %i.ie, -17685               ; 2 uses
  %i.ig = icmp ult i32 %i.if, 16384
  %i.ih = lshr i32 %i.if, 6
  %i.ii = icmp samesign ult i32 %i.ie, 17685
  %i.ij = select i1 %i.ii, i32 0, i32 255
  %i.ik = select i1 %i.ig, i32 %i.ih, i32 %i.ij
  %i.il = trunc i32 %i.ik to i8
  %i.im = getelementptr inbounds nuw i8, ptr %i.gx, i64 3
  store i8 %i.il, ptr %i.im, align 1, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !29

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @WebPYuv444ToRgba4444_C(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef readonly captures(none) %1, ptr noalias nofree noundef readonly captures(none) %2, ptr noalias nofree noundef writeonly captures(none) %3, i32 noundef %4) #1 {
bb.a:
  %i.a = icmp sgt i32 %4, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %4 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %4, 8
  br i1 %min.iters.check, label %.lr.ph.preheader16, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %index
  %wide.load = load <8 x i8>, ptr %i.b, align 1, !tbaa !10
  %i.c = zext <8 x i8> %wide.load to <8 x i32>
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %index
  %wide.load14 = load <8 x i8>, ptr %i.d, align 1, !tbaa !10
  %i.e = zext <8 x i8> %wide.load14 to <8 x i32>  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 %index
  %wide.load15 = load <8 x i8>, ptr %i.f, align 1, !tbaa !10
  %i.g = zext <8 x i8> %wide.load15 to <8 x i32>  ; 2 uses
  %i.h = shl nuw nsw i64 %index, 1
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 %i.h
  %i.j = mul nuw nsw <8 x i32> %i.c, splat (i32 19077)
  %i.k = lshr <8 x i32> %i.j, splat (i32 8)       ; 3 uses
  %i.l = mul nuw nsw <8 x i32> %i.g, splat (i32 26149)
  %i.m = lshr <8 x i32> %i.l, splat (i32 8)
  %i.n = add nuw nsw <8 x i32> %i.m, %i.k         ; 2 uses
  %i.o = add nsw <8 x i32> %i.n, splat (i32 -14234) ; 2 uses
  %i.p = icmp ult <8 x i32> %i.o, splat (i32 16384)
  %i.q = lshr <8 x i32> %i.o, splat (i32 6)
  %i.r = icmp samesign ult <8 x i32> %i.n, splat (i32 14234)
  %i.s = select <8 x i1> %i.r, <8 x i32> zeroinitializer, <8 x i32> splat (i32 240)
  %i.t = mul nuw nsw <8 x i32> %i.e, splat (i32 6419)
  %i.u = lshr <8 x i32> %i.t, splat (i32 8)
  %i.v = mul nuw nsw <8 x i32> %i.g, splat (i32 13320)
  %i.w = lshr <8 x i32> %i.v, splat (i32 8)
  %i.x = add nuw nsw <8 x i32> %i.u, %i.w
  %i.y = sub nsw <8 x i32> %i.k, %i.x             ; 2 uses
  %i.z = add nsw <8 x i32> %i.y, splat (i32 8708) ; 2 uses
  %i.aa = icmp ult <8 x i32> %i.z, splat (i32 16384)
  %i.ab = lshr <8 x i32> %i.z, splat (i32 6)
  %i.ac = icmp slt <8 x i32> %i.y, splat (i32 -8708)
  %i.ad = select <8 x i1> %i.ac, <8 x i32> zeroinitializer, <8 x i32> splat (i32 240)
  %i.ae = select <8 x i1> %i.aa, <8 x i32> %i.ab, <8 x i32> %i.ad
  %i.af = mul nuw nsw <8 x i32> %i.e, splat (i32 33050)
  %i.ag = lshr <8 x i32> %i.af, splat (i32 8)
  %i.ah = add nuw nsw <8 x i32> %i.ag, %i.k       ; 2 uses
  %i.ai = add nsw <8 x i32> %i.ah, splat (i32 -17685) ; 2 uses
  %i.aj = icmp ult <8 x i32> %i.ai, splat (i32 16384)
  %i.ak = lshr <8 x i32> %i.ai, splat (i32 6)
  %i.al = icmp samesign ult <8 x i32> %i.ah, splat (i32 17685)
  %i.am = select <8 x i1> %i.al, <8 x i32> zeroinitializer, <8 x i32> splat (i32 240)
  %i.an = select <8 x i1> %i.aj, <8 x i32> %i.ak, <8 x i32> %i.am
  %i.ao = and <8 x i32> %i.q, splat (i32 240)
  %i.ap = select <8 x i1> %i.p, <8 x i32> %i.ao, <8 x i32> %i.s
  %i.aq = lshr <8 x i32> %i.ae, splat (i32 4)
  %i.ar = or <8 x i32> %i.ap, %i.aq
  %i.as = trunc <8 x i32> %i.ar to <8 x i8>
  %i.at = trunc <8 x i32> %i.an to <8 x i8>
  %i.au = or <8 x i8> %i.at, splat (i8 15)
  %interleaved.vec = shufflevector <8 x i8> %i.as, <8 x i8> %i.au, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec, ptr %i.i, align 1, !tbaa !10
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !30

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader16

.lr.ph.preheader16:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader16, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader16 ] ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !10
  %i.ay = zext i8 %i.ax to i32
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !10
  %i.bb = zext i8 %i.ba to i32                    ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !10
  %i.be = zext i8 %i.bd to i32                    ; 2 uses
  %i.bf = shl nuw nsw i64 %indvars.iv, 1
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 %i.bf ; 2 uses
  %i.bh = mul nuw nsw i32 %i.ay, 19077
  %i.bi = lshr i32 %i.bh, 8                       ; 3 uses
  %i.bj = mul nuw nsw i32 %i.be, 26149
  %i.bk = lshr i32 %i.bj, 8
  %i.bl = add nuw nsw i32 %i.bk, %i.bi            ; 2 uses
  %i.bm = add nsw i32 %i.bl, -14234               ; 2 uses
  %i.bn = icmp ult i32 %i.bm, 16384
  %i.bo = lshr i32 %i.bm, 6
  %i.bp = icmp samesign ult i32 %i.bl, 14234
  %i.bq = select i1 %i.bp, i32 0, i32 240
  %i.br = mul nuw nsw i32 %i.bb, 6419
  %i.bs = lshr i32 %i.br, 8
  %i.bt = mul nuw nsw i32 %i.be, 13320
  %i.bu = lshr i32 %i.bt, 8
  %i.bv = add nuw nsw i32 %i.bs, %i.bu
  %i.bw = sub nsw i32 %i.bi, %i.bv                ; 2 uses
  %i.bx = add nsw i32 %i.bw, 8708                 ; 2 uses
  %i.by = icmp ult i32 %i.bx, 16384
  %i.bz = lshr i32 %i.bx, 6
  %i.ca = icmp slt i32 %i.bw, -8708
  %i.cb = select i1 %i.ca, i32 0, i32 240
  %i.cc = select i1 %i.by, i32 %i.bz, i32 %i.cb
  %i.cd = mul nuw nsw i32 %i.bb, 33050
  %i.ce = lshr i32 %i.cd, 8
  %i.cf = add nuw nsw i32 %i.ce, %i.bi            ; 2 uses
  %i.cg = add nsw i32 %i.cf, -17685               ; 2 uses
  %i.ch = icmp ult i32 %i.cg, 16384
  %i.ci = lshr i32 %i.cg, 6
  %i.cj = icmp samesign ult i32 %i.cf, 17685
  %i.ck = select i1 %i.cj, i32 0, i32 240
  %i.cl = select i1 %i.ch, i32 %i.ci, i32 %i.ck
  %i.cm = and i32 %i.bo, 240
end_hunk_0
