inline.NumInlined: 118
inline.NumDeleted: 42
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN2cv17getRectSubPix_Cn_IhhiNS_11scale_fixptENS_7cast_8uEEEvPKT_mNS_5Size_IiEEPT0_mS7_NS_6Point_IfEEi:bb.a
  %i.oo = sub i64 %i.on, %i.og
  %diff.check291 = icmp ugt i64 %i.oo, -16
  %conflict.rdx292 = or i1 %conflict.rdx, %diff.check291
  %i.op = add i64 %i.nv, %.1214289
  %i.oq = sub i64 %i.op, %i.og
  %diff.check293 = icmp ugt i64 %i.oq, -16
  %conflict.rdx294 = or i1 %conflict.rdx292, %diff.check293
  br i1 %conflict.rdx294, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check295, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.or = add i64 %index, %i.nv                   ; 4 uses
  %i.os = getelementptr inbounds i8, ptr %.1214, i64 %i.or
  %wide.load = load <16 x i8>, ptr %i.os, align 1, !tbaa !27
  %i.ot = zext <16 x i8> %wide.load to <16 x i32>
  %i.ou = mul nsw <16 x i32> %broadcast.splat, %i.ot
  %i.ov = add nsw i64 %i.or, %i.nw                ; 2 uses
  %i.ow = getelementptr inbounds i8, ptr %.1214, i64 %i.ov
  %wide.load302 = load <16 x i8>, ptr %i.ow, align 1, !tbaa !27
  %i.ox = zext <16 x i8> %wide.load302 to <16 x i32>
  %i.oy = mul nsw <16 x i32> %broadcast.splat297, %i.ox
  %i.oz = getelementptr inbounds i8, ptr %.0, i64 %i.or
  %wide.load303 = load <16 x i8>, ptr %i.oz, align 1, !tbaa !27
  %i.pa = zext <16 x i8> %wide.load303 to <16 x i32>
  %i.pb = mul nsw <16 x i32> %broadcast.splat299, %i.pa
  %i.pc = getelementptr inbounds i8, ptr %.0, i64 %i.ov
  %wide.load304 = load <16 x i8>, ptr %i.pc, align 1, !tbaa !27
  %i.pd = zext <16 x i8> %wide.load304 to <16 x i32>
  %i.pe = mul nsw <16 x i32> %broadcast.splat301, %i.pd
  %i.pf = add <16 x i32> %i.ou, splat (i32 32768)
  %i.pg = add <16 x i32> %i.pf, %i.oy
  %i.ph = add <16 x i32> %i.pg, %i.pb
  %i.pi = add <16 x i32> %i.ph, %i.pe
  %i.pj = lshr <16 x i32> %i.pi, splat (i32 16)
  %i.pk = trunc <16 x i32> %i.pj to <16 x i8>
  %i.pl = getelementptr inbounds i8, ptr %.1178213, i64 %i.or
  store <16 x i8> %i.pk, ptr %i.pl, align 1, !tbaa !27
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.pm = icmp eq i64 %index.next, %n.vec
  br i1 %i.pm, label %middle.block, label %vector.body, !llvm.loop !70

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge211, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !48

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index314 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next319, %vec.epilog.vector.body ] ; 2 uses
  %i.pn = add i64 %index314, %i.nv                ; 4 uses
  %i.po = getelementptr inbounds i8, ptr %.1214, i64 %i.pn
  %wide.load315 = load <4 x i8>, ptr %i.po, align 1, !tbaa !27
  %i.pp = zext <4 x i8> %wide.load315 to <4 x i32>
  %i.pq = mul nsw <4 x i32> %broadcast.splat307, %i.pp
  %i.pr = add nsw i64 %i.pn, %i.nw                ; 2 uses
  %i.ps = getelementptr inbounds i8, ptr %.1214, i64 %i.pr
  %wide.load316 = load <4 x i8>, ptr %i.ps, align 1, !tbaa !27
  %i.pt = zext <4 x i8> %wide.load316 to <4 x i32>
  %i.pu = mul nsw <4 x i32> %broadcast.splat309, %i.pt
  %i.pv = getelementptr inbounds i8, ptr %.0, i64 %i.pn
  %wide.load317 = load <4 x i8>, ptr %i.pv, align 1, !tbaa !27
  %i.pw = zext <4 x i8> %wide.load317 to <4 x i32>
  %i.px = mul nsw <4 x i32> %broadcast.splat311, %i.pw
  %i.py = getelementptr inbounds i8, ptr %.0, i64 %i.pr
  %wide.load318 = load <4 x i8>, ptr %i.py, align 1, !tbaa !27
  %i.pz = zext <4 x i8> %wide.load318 to <4 x i32>
  %i.qa = mul nsw <4 x i32> %broadcast.splat313, %i.pz
  %i.qb = add <4 x i32> %i.pq, splat (i32 32768)
  %i.qc = add <4 x i32> %i.qb, %i.pu
  %i.qd = add <4 x i32> %i.qc, %i.px
  %i.qe = add <4 x i32> %i.qd, %i.qa
  %i.qf = lshr <4 x i32> %i.qe, splat (i32 16)
  %i.qg = trunc <4 x i32> %i.qf to <4 x i8>
  %i.qh = getelementptr inbounds i8, ptr %.1178213, i64 %i.pn
  store <4 x i8> %i.qg, ptr %i.qh, align 1, !tbaa !27
  %index.next319 = add nuw i64 %index314, 4       ; 2 uses
  %i.qi = icmp eq i64 %index.next319, %n.vec305
  br i1 %i.qi, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !71

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n320, label %._crit_edge211, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ %i.nv, %iter.check ], [ %i.nv, %vector.memcheck ], [ %i.oc, %vec.epilog.iter.check ], [ %i.od, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 5 uses
  %i.qj = getelementptr inbounds i8, ptr %.1214, i64 %indvars.iv
  %i.qk = load i8, ptr %i.qj, align 1, !tbaa !27
  %i.ql = zext i8 %i.qk to i32
  %i.qm = mul nsw i32 %i.t, %i.ql
  %i.qn = add nsw i64 %indvars.iv, %i.nw          ; 2 uses
  %i.qo = getelementptr inbounds i8, ptr %.1214, i64 %i.qn
  %i.qp = load i8, ptr %i.qo, align 1, !tbaa !27
  %i.qq = zext i8 %i.qp to i32
  %i.qr = mul nsw i32 %i.x, %i.qq
  %i.qs = getelementptr inbounds i8, ptr %.0, i64 %indvars.iv
  %i.qt = load i8, ptr %i.qs, align 1, !tbaa !27
  %i.qu = zext i8 %i.qt to i32
  %i.qv = mul nsw i32 %i.ah, %i.qu
  %i.qw = getelementptr inbounds i8, ptr %.0, i64 %i.qn
  %i.qx = load i8, ptr %i.qw, align 1, !tbaa !27
  %i.qy = zext i8 %i.qx to i32
  %i.qz = mul nsw i32 %i.al, %i.qy
  %i.ra = add i32 %i.qm, 32768
  %i.rb = add i32 %i.ra, %i.qr
  %i.rc = add i32 %i.rb, %i.qv
  %i.rd = add i32 %i.rc, %i.qz
  %i.re = lshr i32 %i.rd, 16
  %i.rf = trunc i32 %i.re to i8
  %i.rg = getelementptr inbounds i8, ptr %.1178213, i64 %indvars.iv
  store i8 %i.rf, ptr %i.rg, align 1, !tbaa !27
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge211, label %vec.epilog.scalar.ph, !llvm.loop !72

._crit_edge211:                                   ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %spec.select = select i1 %.not, ptr %.0, ptr %.1214
  %i.rh = add nuw nsw i32 %.1180212, 1            ; 2 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %.1178213, i64 %4
  %exitcond229.not = icmp eq i32 %i.rh, %.sroa.9.0.extract.trunc
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond229.not, label %._crit_edge217, label %iter.check, !llvm.loop !58

._crit_edge217:                                   ; preds = %._crit_edge211, %._crit_edge211.us, %.lr.ph216.split, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge.us225, %bb.c, %.preheader198.lr.ph.split.us, %._crit_edge217
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv17getRectSubPix_Cn_IfffNS_3nopIfEES2_EEvPKT_mNS_5Size_IiEEPT0_mS7_NS_6Point_IfEEi(ptr noundef %0, i64 noundef %1, i64 %2, ptr noundef %3, i64 noundef %4, i64 %5, <2 x float> %6, i32 noundef %7) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 3 uses
  %i.b = ptrtoaddr ptr %3 to i64                  ; 10 uses
  %8 = alloca %"class.cv::Rect_", align 4         ; 8 uses
  %.sroa.9.0.extract.shift = lshr i64 %5, 32      ; 2 uses
  %.sroa.0166.0.extract.trunc = trunc i64 %5 to i32 ; 2 uses
  %i.c = bitcast i64 %5 to <2 x i32>              ; 2 uses
  %.sroa.9.0.extract.trunc = trunc nuw i64 %.sroa.9.0.extract.shift to i32 ; 6 uses
  %i.d = add nsw <2 x i32> %i.c, splat (i32 -1)
  %i.e = sitofp <2 x i32> %i.d to <2 x float>
  %i.f = fneg <2 x float> %i.e
  %i.g = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.f, <2 x float> splat (float 5.000000e-01), <2 x float> %6) ; 3 uses
  %i.h = tail call <2 x float> @llvm.floor.v2f32(<2 x float> %i.g)
  %i.i = fptosi <2 x float> %i.h to <2 x i32>     ; 5 uses
  %i.j = extractelement <2 x i32> %i.i, i64 0     ; 2 uses
  %i.k = sitofp <2 x i32> %i.i to <2 x float>     ; 2 uses
  %foldExtExtBinop = fsub <2 x float> %i.g, %i.k
  %i.l = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 3 uses
  %foldExtExtBinop504 = fsub <2 x float> %i.g, %i.k
  %i.m = extractelement <2 x float> %foldExtExtBinop504, i64 1 ; 7 uses
  %i.n = fsub float 1.000000e+00, %i.l            ; 2 uses
  %i.o = fsub float 1.000000e+00, %i.m            ; 6 uses
  %i.p = fmul float %i.n, %i.o                    ; 8 uses
  %i.q = fmul float %i.l, %i.o                    ; 8 uses
  %i.r = fmul float %i.n, %i.m                    ; 8 uses
  %i.s = fmul float %i.l, %i.m                    ; 8 uses
  %i.t = lshr i64 %1, 2                           ; 14 uses
  %i.u = lshr i64 %4, 2                           ; 5 uses
  %i.v = icmp sgt i32 %i.j, -1
  br i1 %i.v, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.w = extractelement <2 x i32> %i.i, i64 1     ; 2 uses
  %i.x = icmp sgt i32 %i.w, -1
  %i.y = bitcast i64 %2 to <2 x i32>
  %i.z = sub nsw <2 x i32> %i.y, %i.c
  %i.aa = icmp sgt <2 x i32> %i.z, %i.i           ; 2 uses
  %i.ab = extractelement <2 x i1> %i.aa, i64 0
  %or.cond = select i1 %i.ab, i1 %i.x, i1 false
  %i.ac = extractelement <2 x i1> %i.aa, i64 1
  %or.cond191 = select i1 %or.cond, i1 %i.ac, i1 false
  br i1 %or.cond191, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ad = mul i32 %7, %.sroa.0166.0.extract.trunc ; 4 uses
  %i.ae = icmp sgt i32 %.sroa.9.0.extract.trunc, 0
  br i1 %i.ae, label %.preheader198.lr.ph, label %.loopexit

.preheader198.lr.ph:                              ; preds = %bb.c
  %i.af = zext nneg i32 %i.w to i64               ; 5 uses
  %i.ag = mul i64 %i.t, %i.af
  %i.ah = getelementptr [4 x i8], ptr %0, i64 %i.ag
  %i.ai = mul i32 %7, %i.j
  %i.aj = sext i32 %i.ai to i64                   ; 4 uses
  %i.ak = getelementptr [4 x i8], ptr %i.ah, i64 %i.aj ; 2 uses
  %i.al = add i32 %i.ad, -2                       ; 2 uses
  %.not189218 = icmp slt i32 %i.ad, 2
  %i.am = sext i32 %7 to i64                      ; 8 uses
  %9 = zext i32 %i.al to i64                      ; 3 uses
  %wide.trip.count272 = zext i32 %i.ad to i64     ; 2 uses
  %i.an = shl nuw nsw i64 %i.af, 2
  %i.ao = add nuw nsw i64 %i.an, 4
  %i.ap = mul i64 %i.t, %i.ao                     ; 2 uses
  %i.aq = add i64 %i.ap, %i.a
  %i.ar = shl nsw i64 %i.am, 2                    ; 2 uses
  %i.as = add i64 %i.aq, %i.ar
  %i.at = shl nsw i64 %i.aj, 2                    ; 4 uses
  %i.au = add i64 %i.as, %i.at
  %i.av = sub i64 %i.b, %i.au
  %i.aw = and i64 %4, -4
  %i.ax = and i64 %1, -4
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = add i64 %i.ap, %i.a
  %i.ba = add i64 %i.az, %i.at
  %i.bb = sub i64 %i.b, %i.ba
  %i.bc = mul i64 %i.t, %i.af
  %i.bd = shl i64 %i.bc, 2
  %i.be = add i64 %i.bd, %i.a                     ; 2 uses
  %i.bf = add i64 %i.be, %i.ar
  %i.bg = add i64 %i.bf, %i.at
  %i.bh = sub i64 %i.b, %i.bg
  %i.bi = add i64 %i.be, %i.at
  %i.bj = sub i64 %i.b, %i.bi
  %i.bk = add nuw nsw i64 %.sroa.9.0.extract.shift, 4294967295
  %i.bl = and i64 %i.bk, 4294967295               ; 2 uses
  %i.bm = mul i64 %i.u, %i.bl
  %i.bn = shl i64 %i.bm, 2
  %i.bo = shl nuw nsw i64 %9, 2
  %i.bp = and i64 %i.bo, 17179869176              ; 4 uses
  %i.bq = getelementptr i8, ptr %3, i64 %i.bn
  %i.br = getelementptr i8, ptr %i.bq, i64 %i.bp
  %scevgep = getelementptr i8, ptr %i.br, i64 8
  %i.bs = shl nuw nsw i64 %i.af, 2                ; 3 uses
  %i.bt = add nuw nsw i64 %i.bs, 4
  %i.bu = mul i64 %i.t, %i.bt                     ; 2 uses
  %i.bv = shl nsw i64 %i.am, 2                    ; 3 uses
  %i.bw = shl nsw i64 %i.aj, 2                    ; 6 uses
  %i.bx = getelementptr i8, ptr %0, i64 %i.bu
  %i.by = getelementptr i8, ptr %i.bx, i64 %i.bv
  %scevgep442 = getelementptr i8, ptr %i.by, i64 %i.bw
  %i.bz = shl nuw nsw i64 %i.bl, 2                ; 2 uses
  %i.ca = add nuw nsw i64 %i.bs, %i.bz
  %i.cb = add nuw nsw i64 %i.ca, 4
  %i.cc = mul i64 %i.t, %i.cb                     ; 2 uses
  %i.cd = getelementptr i8, ptr %0, i64 %i.cc
  %i.ce = getelementptr i8, ptr %i.cd, i64 %i.bp
  %i.cf = getelementptr i8, ptr %i.ce, i64 %i.bv
  %i.cg = getelementptr i8, ptr %i.cf, i64 %i.bw
  %i.ch = getelementptr i8, ptr %0, i64 %i.bu
  %scevgep444 = getelementptr i8, ptr %i.ch, i64 %i.bw
  %i.ci = getelementptr i8, ptr %0, i64 %i.cc
  %i.cj = getelementptr i8, ptr %i.ci, i64 %i.bp
  %i.ck = getelementptr i8, ptr %i.cj, i64 %i.bw
  %i.cl = mul i64 %i.t, %i.af
  %i.cm = add i64 %i.cl, %i.am
  %i.cn = add i64 %i.cm, %i.aj
  %i.co = shl i64 %i.cn, 2
  %scevgep446 = getelementptr i8, ptr %0, i64 %i.co
  %i.cp = add nuw nsw i64 %i.bs, %i.bz
  %i.cq = mul i64 %i.t, %i.cp
  %i.cr = add i64 %i.cq, %i.bp                    ; 2 uses
  %i.cs = getelementptr i8, ptr %0, i64 %i.cr
  %i.ct = getelementptr i8, ptr %i.cs, i64 %i.bv
  %i.cu = getelementptr i8, ptr %i.ct, i64 %i.bw
  %i.cv = getelementptr i8, ptr %0, i64 %i.cr
  %i.cw = getelementptr i8, ptr %i.cv, i64 %i.bw
  %i.cx = insertelement <4 x ptr> poison, ptr %i.cg, i64 0
  %i.cy = insertelement <4 x ptr> %i.cx, ptr %i.ck, i64 1
  %i.cz = insertelement <4 x ptr> %i.cy, ptr %i.cu, i64 2
  %i.da = insertelement <4 x ptr> %i.cz, ptr %i.cw, i64 3
  %i.db = getelementptr i8, <4 x ptr> %i.da, i64 8
  %i.dc = insertelement <4 x ptr> poison, ptr %3, i64 0
  %i.dd = shufflevector <4 x ptr> %i.dc, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.de = insertelement <4 x ptr> poison, ptr %scevgep442, i64 0
  %i.df = insertelement <4 x ptr> %i.de, ptr %scevgep444, i64 1
  %i.dg = insertelement <4 x ptr> %i.df, ptr %scevgep446, i64 2
  %i.dh = insertelement <4 x ptr> %i.dg, ptr %i.ak, i64 3
  %i.di = insertelement <4 x ptr> poison, ptr %scevgep, i64 0
  %i.dj = shufflevector <4 x ptr> %i.di, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.dk = lshr i64 %9, 1
  %i.dl = add nuw nsw i64 %i.dk, 1                ; 2 uses
  %min.iters.check469 = icmp ult i32 %i.al, 6
  %i.dm = icmp ult <4 x ptr> %i.dd, %i.db
  %i.dn = icmp ult <4 x ptr> %i.dh, %i.dj
  %i.do = or i64 %1, %4
  %i.dp = and <4 x i1> %i.dm, %i.dn
  %i.dq = bitcast <4 x i1> %i.dp to i4
  %i.dr = icmp ne i4 %i.dq, 0
  %i.ds = icmp slt i64 %i.do, 0
  %op.rdx502 = or i1 %i.dr, %i.ds
  %n.vec471 = and i64 %i.dl, 4294967292           ; 3 uses
  %i.dt = shl nuw nsw i64 %n.vec471, 1            ; 2 uses
  %broadcast.splatinsert472 = insertelement <4 x float> poison, float %i.q, i64 0
  %broadcast.splatinsert474 = insertelement <4 x float> poison, float %i.p, i64 0
  %broadcast.splatinsert476 = insertelement <4 x float> poison, float %i.r, i64 0
  %broadcast.splatinsert478 = insertelement <4 x float> poison, float %i.s, i64 0
  %i.du = shufflevector <4 x float> %broadcast.splatinsert478, <4 x float> poison, <8 x i32> zeroinitializer
  %i.dv = shufflevector <4 x float> %broadcast.splatinsert476, <4 x float> poison, <8 x i32> zeroinitializer
  %i.dw = shufflevector <4 x float> %broadcast.splatinsert474, <4 x float> poison, <8 x i32> zeroinitializer
  %i.dx = shufflevector <4 x float> %broadcast.splatinsert472, <4 x float> poison, <8 x i32> zeroinitializer
  %cmp.n494 = icmp eq i64 %i.dl, %n.vec471
  %i.dy = insertelement <2 x float> poison, float %i.q, i64 0
  %i.dz = shufflevector <2 x float> %i.dy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ea = insertelement <2 x float> poison, float %i.p, i64 0
  %i.eb = shufflevector <2 x float> %i.ea, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ec = insertelement <2 x float> poison, float %i.r, i64 0
  %i.ed = shufflevector <2 x float> %i.ec, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ee = insertelement <2 x float> poison, float %i.s, i64 0
  %i.ef = shufflevector <2 x float> %i.ee, <2 x float> poison, <2 x i32> zeroinitializer
  %invariant.op = add i64 %i.av, -1
  %invariant.op528 = add i64 %i.bb, -1
  %invariant.op530 = add i64 %i.bh, -1
  %invariant.op532 = add i64 %i.bj, -1
  %broadcast.splatinsert423 = insertelement <4 x float> poison, float %i.q, i64 0
  %broadcast.splat424 = shufflevector <4 x float> %broadcast.splatinsert423, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert425 = insertelement <4 x float> poison, float %i.p, i64 0
  %broadcast.splat426 = shufflevector <4 x float> %broadcast.splatinsert425, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert427 = insertelement <4 x float> poison, float %i.r, i64 0
  %broadcast.splat428 = shufflevector <4 x float> %broadcast.splatinsert427, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert429 = insertelement <4 x float> poison, float %i.s, i64 0
  %broadcast.splat430 = shufflevector <4 x float> %broadcast.splatinsert429, <4 x float> poison, <4 x i32> zeroinitializer
  br label %.preheader198

.preheader198:                                    ; preds = %.preheader198.lr.ph, %._crit_edge
  %indvar410 = phi i64 [ 0, %.preheader198.lr.ph ], [ %indvar.next411, %._crit_edge ] ; 2 uses
  %.0176224 = phi ptr [ %i.ak, %.preheader198.lr.ph ], [ %i.gi, %._crit_edge ] ; 11 uses
  %.0177223 = phi ptr [ %3, %.preheader198.lr.ph ], [ %i.gj, %._crit_edge ] ; 5 uses
  %.0179222 = phi i32 [ 0, %.preheader198.lr.ph ], [ %i.gh, %._crit_edge ]
  %i.eg = mul i64 %i.ay, %indvar410               ; 4 uses
  br i1 %.not189218, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader198
  %invariant.gep = getelementptr [4 x i8], ptr %.0176224, i64 %i.am ; 2 uses
  %invariant.gep301 = getelementptr [4 x i8], ptr %.0176224, i64 %i.am ; 2 uses
  %brmerge = select i1 %min.iters.check469, i1 true, i1 %op.rdx502
  br i1 %brmerge, label %scalar.ph468.preheader, label %vector.body480

vector.body480:                                   ; preds = %.lr.ph, %vector.body480
  %index481 = phi i64 [ %index.next492, %vector.body480 ], [ 0, %.lr.ph ] ; 2 uses
  %i.eh = shl nuw i64 %index481, 1                ; 4 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %.0176224, i64 %i.eh
  %wide.vec = load <8 x float>, ptr %i.ei, align 4, !tbaa !36, !alias.scope !73
  %i.ej = getelementptr [4 x i8], ptr %invariant.gep301, i64 %i.eh
  %wide.vec483 = load <8 x float>, ptr %i.ej, align 4, !tbaa !36, !alias.scope !76
  %i.ek = add nuw nsw i64 %i.t, %i.eh             ; 2 uses
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %.0176224, i64 %i.ek
  %wide.vec486 = load <8 x float>, ptr %i.el, align 4, !tbaa !36, !alias.scope !78
  %i.em = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.ek
  %wide.vec489 = load <8 x float>, ptr %i.em, align 4, !tbaa !36, !alias.scope !80
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %.0177223, i64 %i.eh
  %i.eo = fmul <8 x float> %i.dx, %wide.vec483
  %i.ep = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.vec, <8 x float> %i.dw, <8 x float> %i.eo)
  %i.eq = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.vec486, <8 x float> %i.dv, <8 x float> %i.ep)
  %interleaved.vec = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.vec489, <8 x float> %i.du, <8 x float> %i.eq)
  store <8 x float> %interleaved.vec, ptr %i.en, align 4, !tbaa !36, !alias.scope !82, !noalias !84
  %index.next492 = add nuw i64 %index481, 4       ; 2 uses
  %i.er = icmp eq i64 %index.next492, %n.vec471
  br i1 %i.er, label %middle.block493, label %vector.body480, !llvm.loop !85

middle.block493:                                  ; preds = %vector.body480
  br i1 %cmp.n494, label %.preheader.loopexit, label %scalar.ph468.preheader

scalar.ph468.preheader:                           ; preds = %.lr.ph, %middle.block493
  %indvars.iv266.ph = phi i64 [ %i.dt, %middle.block493 ], [ 0, %.lr.ph ]
  br label %scalar.ph468

.preheader.loopexit:                              ; preds = %scalar.ph468, %middle.block493
  %indvars.iv.next267.lcssa = phi i64 [ %i.dt, %middle.block493 ], [ %indvars.iv.next267, %scalar.ph468 ]
  %i.es = trunc nuw nsw i64 %indvars.iv.next267.lcssa to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.preheader198
  %.0182.lcssa = phi i32 [ 0, %.preheader198 ], [ %i.es, %.preheader.loopexit ] ; 2 uses
  %i.et = icmp slt i32 %.0182.lcssa, %i.ad
  br i1 %i.et, label %.lr.ph221, label %._crit_edge

.lr.ph221:                                        ; preds = %.preheader
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %.0176224, i64 %i.t ; 2 uses
  %i.ev = zext i32 %.0182.lcssa to i64            ; 5 uses
  %invariant.gep303 = getelementptr [4 x i8], ptr %.0176224, i64 %i.am ; 2 uses
  %i.ew = sub nsw i64 %wide.trip.count272, %i.ev  ; 3 uses
  %min.iters.check420 = icmp ult i64 %i.ew, 4
  br i1 %min.iters.check420, label %scalar.ph419.preheader, label %vector.memcheck409

vector.memcheck409:                               ; preds = %.lr.ph221
  %.reass = add i64 %i.eg, %invariant.op
  %diff.check412 = icmp ult i64 %.reass, 15
  %.reass529 = add i64 %i.eg, %invariant.op528
  %diff.check413 = icmp ult i64 %.reass529, 15
  %conflict.rdx414 = or i1 %diff.check412, %diff.check413
  %.reass531 = add i64 %i.eg, %invariant.op530
  %diff.check415 = icmp ult i64 %.reass531, 15
  %conflict.rdx416 = or i1 %conflict.rdx414, %diff.check415
  %.reass533 = add i64 %i.eg, %invariant.op532
  %diff.check417 = icmp ult i64 %.reass533, 15
  %conflict.rdx418 = or i1 %conflict.rdx416, %diff.check417
  br i1 %conflict.rdx418, label %scalar.ph419.preheader, label %vector.ph421

vector.ph421:                                     ; preds = %vector.memcheck409
  %n.vec422 = and i64 %i.ew, -4                   ; 3 uses
  %i.ex = add nsw i64 %n.vec422, %i.ev
  br label %vector.body431

vector.body431:                                   ; preds = %vector.body431, %vector.ph421
  %index432 = phi i64 [ 0, %vector.ph421 ], [ %index.next437, %vector.body431 ] ; 2 uses
  %i.ey = add nuw i64 %index432, %i.ev            ; 4 uses
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %.0176224, i64 %i.ey
  %wide.load433 = load <4 x float>, ptr %i.ez, align 4, !tbaa !36
  %i.fa = getelementptr [4 x i8], ptr %invariant.gep303, i64 %i.ey
  %wide.load434 = load <4 x float>, ptr %i.fa, align 4, !tbaa !36
  %i.fb = fmul <4 x float> %broadcast.splat424, %wide.load434
  %i.fc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load433, <4 x float> %broadcast.splat426, <4 x float> %i.fb)
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %i.ey ; 2 uses
  %wide.load435 = load <4 x float>, ptr %i.fd, align 4, !tbaa !36
  %i.fe = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load435, <4 x float> %broadcast.splat428, <4 x float> %i.fc)
  %i.ff = getelementptr [4 x i8], ptr %i.fd, i64 %i.am
  %wide.load436 = load <4 x float>, ptr %i.ff, align 4, !tbaa !36
  %i.fg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load436, <4 x float> %broadcast.splat430, <4 x float> %i.fe)
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %.0177223, i64 %i.ey
  store <4 x float> %i.fg, ptr %i.fh, align 4, !tbaa !36
  %index.next437 = add nuw i64 %index432, 4       ; 2 uses
  %i.fi = icmp eq i64 %index.next437, %n.vec422
  br i1 %i.fi, label %middle.block438, label %vector.body431, !llvm.loop !86

middle.block438:                                  ; preds = %vector.body431
  %cmp.n439 = icmp eq i64 %i.ew, %n.vec422
  br i1 %cmp.n439, label %._crit_edge, label %scalar.ph419.preheader

scalar.ph419.preheader:                           ; preds = %vector.memcheck409, %.lr.ph221, %middle.block438
  %indvars.iv269.ph = phi i64 [ %i.ev, %vector.memcheck409 ], [ %i.ev, %.lr.ph221 ], [ %i.ex, %middle.block438 ]
  br label %scalar.ph419

scalar.ph468:                                     ; preds = %scalar.ph468.preheader, %scalar.ph468
  %indvars.iv266 = phi i64 [ %indvars.iv.next267, %scalar.ph468 ], [ %indvars.iv266.ph, %scalar.ph468.preheader ] ; 5 uses
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %.0176224, i64 %indvars.iv266
  %gep302 = getelementptr [4 x i8], ptr %invariant.gep301, i64 %indvars.iv266
  %i.fk = add nuw nsw i64 %i.t, %indvars.iv266    ; 2 uses
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %.0176224, i64 %i.fk
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.fk
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %.0177223, i64 %indvars.iv266
  %i.fn = load <2 x float>, ptr %i.fj, align 4, !tbaa !36
  %i.fo = load <2 x float>, ptr %gep302, align 4, !tbaa !36
  %i.fp = fmul <2 x float> %i.dz, %i.fo
  %i.fq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fn, <2 x float> %i.eb, <2 x float> %i.fp)
  %i.fr = load <2 x float>, ptr %i.fl, align 4, !tbaa !36
  %i.fs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fr, <2 x float> %i.ed, <2 x float> %i.fq)
  %i.ft = load <2 x float>, ptr %gep, align 4, !tbaa !36
  %i.fu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ft, <2 x float> %i.ef, <2 x float> %i.fs)
  store <2 x float> %i.fu, ptr %i.fm, align 4, !tbaa !36
  %indvars.iv.next267 = add nuw nsw i64 %indvars.iv266, 2 ; 3 uses
  %.not189 = icmp samesign ugt i64 %indvars.iv.next267, %9
  br i1 %.not189, label %.preheader.loopexit, label %scalar.ph468, !llvm.loop !87

scalar.ph419:                                     ; preds = %scalar.ph419.preheader, %scalar.ph419
  %indvars.iv269 = phi i64 [ %indvars.iv.next270, %scalar.ph419 ], [ %indvars.iv269.ph, %scalar.ph419.preheader ] ; 5 uses
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %.0176224, i64 %indvars.iv269
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !36
  %gep304 = getelementptr [4 x i8], ptr %invariant.gep303, i64 %indvars.iv269
  %i.fx = load float, ptr %gep304, align 4, !tbaa !36
  %i.fy = fmul float %i.q, %i.fx
  %i.fz = tail call float @llvm.fmuladd.f32(float %i.fw, float %i.p, float %i.fy)
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %indvars.iv269 ; 2 uses
  %i.gb = load float, ptr %i.ga, align 4, !tbaa !36
  %i.gc = tail call float @llvm.fmuladd.f32(float %i.gb, float %i.r, float %i.fz)
  %i.gd = getelementptr [4 x i8], ptr %i.ga, i64 %i.am
  %i.ge = load float, ptr %i.gd, align 4, !tbaa !36
  %i.gf = tail call float @llvm.fmuladd.f32(float %i.ge, float %i.s, float %i.gc)
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %.0177223, i64 %indvars.iv269
  store float %i.gf, ptr %i.gg, align 4, !tbaa !36
  %indvars.iv.next270 = add nuw nsw i64 %indvars.iv269, 1 ; 2 uses
  %exitcond273.not = icmp eq i64 %indvars.iv.next270, %wide.trip.count272
  br i1 %exitcond273.not, label %._crit_edge, label %scalar.ph419, !llvm.loop !88

._crit_edge:                                      ; preds = %scalar.ph419, %middle.block438, %.preheader
  %i.gh = add nuw nsw i32 %.0179222, 1            ; 2 uses
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %.0176224, i64 %i.t
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %.0177223, i64 %i.u
  %exitcond274.not = icmp eq i32 %i.gh, %.sroa.9.0.extract.trunc
  %indvar.next411 = add i64 %indvar410, 1
  br i1 %exitcond274.not, label %.loopexit, label %.preheader198, !llvm.loop !89

bb.d:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %i.gk = and i64 %1, -4
  %i.gl = shl i32 %7, 2
  %.sroa.0.0.insert.insert = bitcast <2 x i32> %i.i to i64
  %i.gm = call fastcc noundef ptr @_ZN2cvL10adjustRectEPKhmiNS_5Size_IiEES3_NS_6Point_IiEEPNS_5Rect_IiEE(ptr noundef %0, i64 noundef %i.gk, i32 noundef %i.gl, i64 %2, i64 %5, i64 %.sroa.0.0.insert.insert, ptr noundef %8) ; 3 uses
  %i.gn = icmp sgt i32 %.sroa.9.0.extract.trunc, 0
  br i1 %i.gn, label %.lr.ph216, label %._crit_edge217

.lr.ph216:                                        ; preds = %bb.d
  %i.go = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !52 ; 3 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.gr = load i32, ptr %i.gq, align 4            ; 3 uses
  %i.gs = icmp sgt i32 %7, 0
  %i.gt = load i32, ptr %8, align 4               ; 5 uses
  %i.gu = mul i32 %i.gt, %7                       ; 3 uses
  %i.gv = icmp sgt i32 %i.gt, 0                   ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.gx = load i32, ptr %i.gw, align 4            ; 3 uses
  %i.gy = mul i32 %i.gx, %7                       ; 3 uses
  %i.gz = icmp slt i32 %i.gx, %.sroa.0166.0.extract.trunc ; 2 uses
  %i.ha = icmp slt i32 %i.gu, %i.gy               ; 2 uses
  br i1 %i.gs, label %.lr.ph216.split.us, label %.lr.ph216.split

.lr.ph216.split.us:                               ; preds = %.lr.ph216
  %i.hb = zext nneg i32 %7 to i64                 ; 14 uses
  %i.hc = sext i32 %i.gx to i64                   ; 8 uses
  %i.hd = zext nneg i32 %7 to i64                 ; 12 uses
  %i.he = sext i32 %i.gu to i64                   ; 9 uses
  %i.hf = sext i32 %i.gy to i64                   ; 4 uses
  %wide.trip.count248 = zext i32 %i.gt to i64     ; 10 uses
  %sext290 = shl i64 %5, 32
  %wide.trip.count253 = ashr exact i64 %sext290, 32 ; 6 uses
  br i1 %i.ha, label %.lr.ph206.us.us.preheader, label %.lr.ph206.us.preheader

.lr.ph206.us.preheader:                           ; preds = %.lr.ph216.split.us
  %min.iters.check337 = icmp ugt i32 %i.gt, 7
  %ident.check335.not = icmp eq i32 %7, 1
  %or.cond498 = and i1 %min.iters.check337, %ident.check335.not
  %n.vec339 = and i64 %wide.trip.count248, 2147483640 ; 3 uses
  %cmp.n346 = icmp eq i64 %n.vec339, %wide.trip.count248
  %xtraiter = and i64 %wide.trip.count248, 3      ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.hg = sub nsw i64 %wide.trip.count253, %i.hc  ; 3 uses
  %min.iters.check323 = icmp ugt i64 %i.hg, 7
  %ident.check.not = icmp eq i32 %7, 1
  %or.cond499 = and i1 %min.iters.check323, %ident.check.not
  %n.vec325 = and i64 %i.hg, -8                   ; 3 uses
  %i.hh = add nsw i64 %n.vec325, %i.hc
  %cmp.n332 = icmp eq i64 %i.hg, %n.vec325
  br label %.lr.ph206.us

.lr.ph206.us.us.preheader:                        ; preds = %.lr.ph216.split.us
  %i.hi = shl nsw i64 %i.he, 2                    ; 2 uses
  %i.hj = add i64 %i.hi, %i.b
  %i.hk = and i64 %4, -4
  %i.hl = add nsw i64 %i.he, %i.hb
  %i.hm = shl nsw i64 %i.hl, 2
  %i.hn = shl nuw nsw i64 %i.hb, 2
  %min.iters.check398 = icmp ugt i32 %i.gt, 7
  %ident.check396.not = icmp eq i32 %7, 1
  %or.cond496 = and i1 %min.iters.check398, %ident.check396.not
  %n.vec400 = and i64 %wide.trip.count248, 2147483640 ; 3 uses
  %cmp.n407 = icmp eq i64 %n.vec400, %wide.trip.count248
  %xtraiter517 = and i64 %wide.trip.count248, 3   ; 2 uses
  %lcmp.mod518.not = icmp eq i64 %xtraiter517, 0
  %i.ho = sub nsw i64 %wide.trip.count253, %i.hc  ; 3 uses
  %min.iters.check384 = icmp ugt i64 %i.ho, 7
  %ident.check382.not = icmp eq i32 %7, 1
  %or.cond497 = and i1 %min.iters.check384, %ident.check382.not
  %n.vec386 = and i64 %i.ho, -8                   ; 3 uses
  %i.hp = add nsw i64 %n.vec386, %i.hc
  %cmp.n393 = icmp eq i64 %i.ho, %n.vec386
  %i.hq = sub nsw i64 %i.hf, %i.he                ; 3 uses
  %min.iters.check360 = icmp ult i64 %i.hq, 8
  %n.vec362 = and i64 %i.hq, -4                   ; 3 uses
  %i.hr = add nsw i64 %n.vec362, %i.he
  %broadcast.splatinsert363 = insertelement <4 x float> poison, float %i.q, i64 0
  %broadcast.splat364 = shufflevector <4 x float> %broadcast.splatinsert363, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert365 = insertelement <4 x float> poison, float %i.p, i64 0
  %broadcast.splat366 = shufflevector <4 x float> %broadcast.splatinsert365, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert367 = insertelement <4 x float> poison, float %i.r, i64 0
  %broadcast.splat368 = shufflevector <4 x float> %broadcast.splatinsert367, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert369 = insertelement <4 x float> poison, float %i.s, i64 0
  %broadcast.splat370 = shufflevector <4 x float> %broadcast.splatinsert369, <4 x float> poison, <4 x i32> zeroinitializer
  %cmp.n379 = icmp eq i64 %i.hq, %n.vec362
  br label %.lr.ph206.us.us

.lr.ph206.us.us:                                  ; preds = %.lr.ph206.us.us.preheader, %._crit_edge211.us.us
  %indvar349 = phi i64 [ 0, %.lr.ph206.us.us.preheader ], [ %indvar.next350, %._crit_edge211.us.us ] ; 2 uses
  %.1214.us.us = phi ptr [ %i.gm, %.lr.ph206.us.us.preheader ], [ %spec.select.us.us, %._crit_edge211.us.us ] ; 9 uses
  %.1178213.us.us = phi ptr [ %3, %.lr.ph206.us.us.preheader ], [ %i.kq, %._crit_edge211.us.us ] ; 5 uses
  %.1180212.us.us = phi i32 [ 0, %.lr.ph206.us.us.preheader ], [ %i.kp, %._crit_edge211.us.us ] ; 3 uses
  %i.hs = mul i64 %i.hk, %indvar349               ; 3 uses
  %i.ht = add i64 %i.hj, %i.hs                    ; 2 uses
  %.1214.us.us351 = ptrtoaddr ptr %.1214.us.us to i64 ; 4 uses
  %i.hu = add i64 %i.hs, %i.b
  %i.hv = icmp sge i32 %.1180212.us.us, %i.gp
  %.not.us.us = icmp slt i32 %.1180212.us.us, %i.gr ; 2 uses
  %or.cond194.us.us = select i1 %i.hv, i1 %.not.us.us, i1 false
  %.0.idx.us.us = select i1 %or.cond194.us.us, i64 %i.t, i64 0 ; 2 uses
  %.0.us.us = getelementptr inbounds nuw [4 x i8], ptr %.1214.us.us, i64 %.0.idx.us.us ; 7 uses
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge203.us.us, %.lr.ph206.us.us
  %indvars.iv255 = phi i64 [ %indvars.iv.next256, %._crit_edge203.us.us ], [ 0, %.lr.ph206.us.us ] ; 5 uses
  %i.hw = add nsw i64 %indvars.iv255, %i.he       ; 2 uses
  %i.hx = getelementptr inbounds [4 x i8], ptr %.1214.us.us, i64 %i.hw
  %i.hy = load float, ptr %i.hx, align 4, !tbaa !36
  %i.hz = getelementptr inbounds [4 x i8], ptr %.0.us.us, i64 %i.hw
  %i.ia = load float, ptr %i.hz, align 4, !tbaa !36
  %i.ib = fmul float %i.m, %i.ia
  %i.ic = tail call float @llvm.fmuladd.f32(float %i.hy, float %i.o, float %i.ib) ; 6 uses
  br i1 %i.gv, label %.lr.ph.us.us.preheader, label %._crit_edge.us.us

.lr.ph.us.us.preheader:                           ; preds = %bb.e
  %invariant.gep297 = getelementptr inbounds nuw [4 x i8], ptr %.1178213.us.us, i64 %indvars.iv255 ; 6 uses
  br i1 %or.cond496, label %vector.ph399, label %.lr.ph.us.us.preheader508

vector.ph399:                                     ; preds = %.lr.ph.us.us.preheader
  %broadcast.splatinsert401 = insertelement <4 x float> poison, float %i.ic, i64 0
  %broadcast.splat402 = shufflevector <4 x float> %broadcast.splatinsert401, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body403

vector.body403:                                   ; preds = %vector.body403, %vector.ph399
  %index404 = phi i64 [ 0, %vector.ph399 ], [ %index.next405, %vector.body403 ] ; 2 uses
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep297, i64 %index404 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 16
  store <4 x float> %broadcast.splat402, ptr %i.id, align 4, !tbaa !36
  store <4 x float> %broadcast.splat402, ptr %i.ie, align 4, !tbaa !36
  %index.next405 = add nuw i64 %index404, 8       ; 2 uses
  %i.if = icmp eq i64 %index.next405, %n.vec400
  br i1 %i.if, label %middle.block406, label %vector.body403, !llvm.loop !90

middle.block406:                                  ; preds = %vector.body403
  br i1 %cmp.n407, label %._crit_edge.us.us, label %.lr.ph.us.us.preheader508

.lr.ph.us.us.preheader508:                        ; preds = %.lr.ph.us.us.preheader, %middle.block406
  %indvars.iv245.ph = phi i64 [ 0, %.lr.ph.us.us.preheader ], [ %n.vec400, %middle.block406 ] ; 3 uses
  br i1 %lcmp.mod518.not, label %.lr.ph.us.us.prol.loopexit, label %.lr.ph.us.us.prol

.lr.ph.us.us.prol:                                ; preds = %.lr.ph.us.us.preheader508, %.lr.ph.us.us.prol
  %indvars.iv245.prol = phi i64 [ %indvars.iv.next246.prol, %.lr.ph.us.us.prol ], [ %indvars.iv245.ph, %.lr.ph.us.us.preheader508 ] ; 2 uses
  %prol.iter519 = phi i64 [ %prol.iter519.next, %.lr.ph.us.us.prol ], [ 0, %.lr.ph.us.us.preheader508 ]
  %i.ig = mul nuw nsw i64 %indvars.iv245.prol, %i.hb
  %gep298.prol = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep297, i64 %i.ig
  store float %i.ic, ptr %gep298.prol, align 4, !tbaa !36
  %indvars.iv.next246.prol = add nuw nsw i64 %indvars.iv245.prol, 1 ; 2 uses
  %prol.iter519.next = add i64 %prol.iter519, 1   ; 2 uses
  %prol.iter519.cmp.not = icmp eq i64 %prol.iter519.next, %xtraiter517
  br i1 %prol.iter519.cmp.not, label %.lr.ph.us.us.prol.loopexit, label %.lr.ph.us.us.prol, !llvm.loop !91

.lr.ph.us.us.prol.loopexit:                       ; preds = %.lr.ph.us.us.prol, %.lr.ph.us.us.preheader508
  %indvars.iv245.unr = phi i64 [ %indvars.iv245.ph, %.lr.ph.us.us.preheader508 ], [ %indvars.iv.next246.prol, %.lr.ph.us.us.prol ]
  %i.ih = sub nsw i64 %indvars.iv245.ph, %wide.trip.count248
  %i.ii = icmp ugt i64 %i.ih, -4
  br i1 %i.ii, label %._crit_edge.us.us, label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %.lr.ph.us.us.prol.loopexit, %.lr.ph.us.us
  %indvars.iv245 = phi i64 [ %indvars.iv.next246.3, %.lr.ph.us.us ], [ %indvars.iv245.unr, %.lr.ph.us.us.prol.loopexit ] ; 5 uses
  %i.ij = mul nuw nsw i64 %indvars.iv245, %i.hb
  %gep298 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep297, i64 %i.ij
  store float %i.ic, ptr %gep298, align 4, !tbaa !36
  %indvars.iv.next246 = add nuw nsw i64 %indvars.iv245, 1
  %i.ik = mul nuw nsw i64 %indvars.iv.next246, %i.hb
  %gep298.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep297, i64 %i.ik
  store float %i.ic, ptr %gep298.1, align 4, !tbaa !36
  %indvars.iv.next246.1 = add nuw nsw i64 %indvars.iv245, 2
end_hunk_0
begin_hunk_1_@_ZN2cv17getRectSubPix_Cn_IhffNS_3nopIfEES2_EEvPKT_mNS_5Size_IiEEPT0_mS7_NS_6Point_IfEEi:bb.a
  %i.st = load i8, ptr %i.ss, align 1, !tbaa !27
  %i.su = uitofp i8 %i.st to float
  %i.sv = tail call float @llvm.fmuladd.f32(float %i.su, float %i.p, float %i.sr)
  %i.sw = getelementptr inbounds i8, ptr %.0, i64 %i.sm
  %i.sx = load i8, ptr %i.sw, align 1, !tbaa !27
  %i.sy = uitofp i8 %i.sx to float
  %i.sz = tail call float @llvm.fmuladd.f32(float %i.sy, float %i.q, float %i.sv)
  %i.ta = getelementptr inbounds [4 x i8], ptr %.1178213, i64 %indvars.iv
  store float %i.sz, ptr %i.ta, align 4, !tbaa !36
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge211, label %scalar.ph, !llvm.loop !172

._crit_edge211:                                   ; preds = %scalar.ph, %middle.block
  %spec.select = select i1 %.not, ptr %.0, ptr %.1214
  %i.tb = add nuw nsw i32 %.1180212, 1            ; 2 uses
  %i.tc = getelementptr inbounds nuw [4 x i8], ptr %.1178213, i64 %i.r
  %exitcond229.not = icmp eq i32 %i.tb, %.sroa.9.0.extract.trunc
  br i1 %exitcond229.not, label %._crit_edge217, label %.lr.ph210, !llvm.loop !145

._crit_edge217:                                   ; preds = %._crit_edge211, %._crit_edge211.us, %.lr.ph216.split, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge.us225, %bb.c, %.preheader198.lr.ph.split.us, %._crit_edge217
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #8

; Function Attrs: mustprogress uwtable
define internal fastcc noundef ptr @_ZN2cvL10adjustRectEPKhmiNS_5Size_IiEES3_NS_6Point_IiEEPNS_5Rect_IiEE(ptr nofree noundef readnone captures(ret: address, provenance) %0, i64 noundef %1, i32 noundef %2, i64 %3, i64 %4, i64 %5, ptr nofree noundef nonnull writeonly captures(none) %6) unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator", align 1    ; 3 uses
  %.sroa.027.0.extract.trunc = trunc i64 %3 to i32 ; 2 uses
  %.sroa.3.0.extract.shift = lshr i64 %3, 32
  %.sroa.3.0.extract.trunc = trunc nuw i64 %.sroa.3.0.extract.shift to i32 ; 2 uses
  %.sroa.020.0.extract.trunc = trunc i64 %4 to i32 ; 4 uses
  %.sroa.625.0.extract.shift = lshr i64 %4, 32
  %.sroa.625.0.extract.trunc = trunc nuw i64 %.sroa.625.0.extract.shift to i32 ; 2 uses
  %.sroa.0.0.extract.trunc = trunc i64 %5 to i32  ; 5 uses
  %.sroa.6.0.extract.shift = lshr i64 %5, 32      ; 2 uses
  %.sroa.6.0.extract.trunc = trunc nuw i64 %.sroa.6.0.extract.shift to i32 ; 3 uses
  %i.a = icmp sgt i32 %.sroa.0.0.extract.trunc, -1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = mul nsw i32 %2, %.sroa.0.0.extract.trunc
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = sub nsw i32 0, %.sroa.0.0.extract.trunc
  %spec.store.select = tail call i32 @llvm.smin.i32(i32 %i.e, i32 %.sroa.020.0.extract.trunc)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi i32 [ 0, %bb.b ], [ %spec.store.select, %bb.c ] ; 2 uses
  %.031 = phi ptr [ %i.d, %bb.b ], [ %0, %bb.c ]  ; 2 uses
  %i.f = sub nsw i32 %.sroa.027.0.extract.trunc, %.sroa.020.0.extract.trunc
  %i.g = icmp sgt i32 %i.f, %.sroa.0.0.extract.trunc
  br i1 %i.g, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = xor i32 %.sroa.0.0.extract.trunc, -1
  %i.i = add i32 %i.h, %.sroa.027.0.extract.trunc ; 3 uses
  %i.j = icmp slt i32 %i.i, 0
  %i.k = mul nsw i32 %i.i, %2
  %storemerge = tail call i32 @llvm.smax.i32(i32 %i.i, i32 0) ; 2 uses
  %narrow = select i1 %i.j, i32 %i.k, i32 0
  %.1.idx = sext i32 %narrow to i64
  %.1 = getelementptr inbounds i8, ptr %.031, i64 %.1.idx
  %.not = icmp sgt i32 %storemerge, %.sroa.020.0.extract.trunc
  br i1 %.not, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.6, ptr noundef nonnull align 1 dereferenceable(1) %8)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZN2cvL10adjustRectEPKhmiNS_5Size_IiEES3_NS_6Point_IiEEPNS_5Rect_IiEE, ptr noundef nonnull @.str.1, i32 noundef 77) #16
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %7, align 8, !tbaa !23     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.p = load i64, ptr %i.n, align 8, !tbaa !27
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  resume { ptr, i32 } %i.l

bb.i:                                             ; preds = %bb.d, %bb.e
  %.sroa.11.0 = phi i32 [ %storemerge, %bb.e ], [ %.sroa.020.0.extract.trunc, %bb.d ]
  %.2 = phi ptr [ %.1, %bb.e ], [ %.031, %bb.d ]
  %i.r = icmp sgt i64 %5, -1                      ; 2 uses
  %i.s = mul i64 %.sroa.6.0.extract.shift, %1
  %.3.idx = select i1 %i.r, i64 %i.s, i64 0
  %.3 = getelementptr inbounds nuw i8, ptr %.2, i64 %.3.idx ; 3 uses
  %i.t = sub nsw i32 %.sroa.3.0.extract.trunc, %.sroa.625.0.extract.trunc
  %i.u = icmp sgt i32 %i.t, %.sroa.6.0.extract.trunc
  br i1 %i.u, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = xor i32 %.sroa.6.0.extract.trunc, -1
  %i.w = add i32 %i.v, %.sroa.3.0.extract.trunc   ; 3 uses
  %i.x = icmp slt i32 %i.w, 0
  br i1 %i.x, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.y = sext i32 %i.w to i64
  %i.z = mul i64 %1, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %.3, i64 %i.z
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.j, %bb.k
  %.sroa.13.0 = phi i32 [ %i.w, %bb.j ], [ 0, %bb.k ], [ %.sroa.625.0.extract.trunc, %bb.i ]
  %.4 = phi ptr [ %.3, %bb.j ], [ %i.aa, %bb.k ], [ %.3, %bb.i ]
  %i.ab = sub nsw i32 0, %.sroa.6.0.extract.trunc
  %.sroa.9.0 = select i1 %i.r, i32 0, i32 %i.ab
  store i32 %.sroa.0.0, ptr %6, align 4, !tbaa !173
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 4, !tbaa !173
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.sroa.11.0, ptr %.sroa.11.0..sroa_idx, align 4, !tbaa !173
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 %.sroa.13.0, ptr %.sroa.13.0..sroa_idx, align 4, !tbaa !173
  %i.ac = mul nsw i32 %.sroa.0.0, %2
  %i.ad = sext i32 %i.ac to i64
  %i.ae = sub nsw i64 0, %i.ad
  %i.af = getelementptr inbounds i8, ptr %.4, i64 %i.ae
  ret ptr %i.af
}

declare void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #2

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #15 ; 0 uses
  tail call void @_ZSt9terminatev() #18
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #10

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #12

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i32 @llvm.x86.sse.cvtss2si(<4 x float>) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.floor.v2f32(<2 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fmuladd.v8f32(<8 x float>, <8 x float>, <8 x float>) #8

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { nounwind }
attributes #16 = { noreturn }
attributes #17 = { builtin nounwind }
attributes #18 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !10, i64 8}
!9 = !{!"_ZTSN2cv11_InputArrayE", !5, i64 0, !10, i64 8, !11, i64 16}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"_ZTSN2cv5Size_IiEE", !5, i64 0, !5, i64 4}
!12 = !{!13}
!13 = distinct !{!13, !14, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!14 = distinct !{!14, !"_ZNK2cv11_InputArray6getMatEi"}
!15 = !{!16, !5, i64 0}
!16 = !{!"_ZTSN2cv3MatE", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !17, i64 24, !17, i64 32, !17, i64 40, !17, i64 48, !18, i64 56, !19, i64 64, !20, i64 72, !22, i64 128}
!17 = !{!"p1 omnipotent char", !10, i64 0}
!18 = !{!"p1 _ZTSN2cv12MatAllocatorE", !10, i64 0}
!19 = !{!"p1 _ZTSN2cv8UMatDataE", !10, i64 0}
!20 = !{!"_ZTSN2cv8MatShapeE", !5, i64 0, !21, i64 4, !5, i64 8, !6, i64 12}
!21 = !{!"_ZTSN2cv10DataLayoutE", !6, i64 0}
!22 = !{!"_ZTSN2cv7MatStepE", !6, i64 0}
!23 = !{!24, !17, i64 0}
!24 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !25, i64 0, !26, i64 8, !6, i64 16}
!25 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !17, i64 0}
!26 = !{!"long", !6, i64 0}
!27 = !{!6, !6, i64 0}
!28 = !{!29}
!29 = distinct !{!29, !30, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!30 = distinct !{!30, !"_ZNK2cv11_InputArray6getMatEi"}
!31 = !{!16, !17, i64 24}
!32 = !{!26, !26, i64 0}
!33 = !{!20, !5, i64 0}
!34 = distinct !{!34, !35}
!35 = !{!"llvm.loop.mustprogress"}
!36 = !{!37, !37, i64 0}
!37 = !{!"float", !6, i64 0}
!38 = distinct !{!38, !35}
!39 = !{!40, !5, i64 8}
!40 = !{!"_ZTSN2cv5utils5trace7details6RegionE", !41, i64 0, !5, i64 8}
!41 = !{!"p1 _ZTSN2cv5utils5trace7details6Region4ImplE", !10, i64 0}
!42 = !{!25, !17, i64 0}
!43 = !{!24, !26, i64 8}
!44 = distinct !{!44, !35}
!45 = distinct !{!45, !35, !46, !47}
!46 = !{!"llvm.loop.isvectorized", i32 1}
!47 = !{!"llvm.loop.unroll.runtime.disable"}
!48 = !{!"branch_weights", i32 4, i32 12}
!49 = distinct !{!49, !35, !46, !47}
!50 = distinct !{!50, !35}
!51 = distinct !{!51, !35, !46}
!52 = !{!53, !5, i64 4}
!53 = !{!"_ZTSN2cv5Rect_IiEE", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12}
!54 = distinct !{!54, !35, !46}
!55 = distinct !{!55, !35, !46}
!56 = distinct !{!56, !35}
!57 = distinct !{!57, !35, !46}
!58 = distinct !{!58, !35}
!59 = distinct !{!59, !35, !46, !47}
!60 = !{!"branch_weights", i32 4, i32 28}
!61 = distinct !{!61, !35, !46, !47}
!62 = distinct !{!62, !63}
!63 = !{!"llvm.loop.unroll.disable"}
!64 = distinct !{!64, !35, !46, !47}
!65 = !{!"branch_weights", i32 8, i32 24}
!66 = distinct !{!66, !35, !46, !47}
!67 = distinct !{!67, !63}
!68 = distinct !{!68, !35, !46, !47}
!69 = distinct !{!69, !35, !46, !47}
!70 = distinct !{!70, !35, !46, !47}
!71 = distinct !{!71, !35, !46, !47}
!72 = distinct !{!72, !35, !46}
!73 = !{!74}
!74 = distinct !{!74, !75}
!75 = distinct !{!75, !"LVerDomain"}
!76 = !{!77}
!77 = distinct !{!77, !75}
!78 = !{!79}
!79 = distinct !{!79, !75}
!80 = !{!81}
!81 = distinct !{!81, !75}
!82 = !{!83}
!83 = distinct !{!83, !75}
!84 = !{!81, !79, !77, !74}
!85 = distinct !{!85, !35, !46, !47}
!86 = distinct !{!86, !35, !46, !47}
!87 = distinct !{!87, !35, !46}
!88 = distinct !{!88, !35, !46}
!89 = distinct !{!89, !35}
!90 = distinct !{!90, !35, !46, !47}
!91 = distinct !{!91, !63}
!92 = distinct !{!92, !35, !46}
!93 = distinct !{!93, !35, !46, !47}
!94 = distinct !{!94, !63}
!95 = distinct !{!95, !35, !46}
!96 = distinct !{!96, !35}
!97 = distinct !{!97, !35, !46, !47}
!98 = distinct !{!98, !35, !46}
!99 = distinct !{!99, !35}
!100 = distinct !{!100, !35, !46, !47}
!101 = distinct !{!101, !63}
!102 = distinct !{!102, !35, !46}
!103 = distinct !{!103, !35, !46, !47}
!104 = distinct !{!104, !63}
!105 = distinct !{!105, !35, !46}
!106 = distinct !{!106, !35, !46, !47}
!107 = distinct !{!107, !35, !46}
!108 = distinct !{!108, !35}
!109 = !{!110}
!110 = distinct !{!110, !111}
!111 = distinct !{!111, !"LVerDomain"}
!112 = !{!113}
!113 = distinct !{!113, !111}
!114 = !{!115}
!115 = distinct !{!115, !111}
!116 = !{!117}
!117 = distinct !{!117, !111}
!118 = !{!119}
!119 = distinct !{!119, !111}
!120 = !{!117, !115, !113, !110}
!121 = distinct !{!121, !35, !46, !47}
!122 = !{!123}
!123 = distinct !{!123, !124}
!124 = distinct !{!124, !"LVerDomain"}
!125 = !{!126}
!126 = distinct !{!126, !124}
!127 = !{!128}
!128 = distinct !{!128, !124}
!129 = !{!130}
!130 = distinct !{!130, !124}
!131 = !{!132}
!132 = distinct !{!132, !124}
!133 = !{!130, !128, !126, !123}
!134 = distinct !{!134, !35, !46, !47}
!135 = distinct !{!135, !35, !46}
!136 = distinct !{!136, !35, !46}
!137 = distinct !{!137, !35, !46, !47}
!138 = distinct !{!138, !63}
!139 = distinct !{!139, !35, !46}
!140 = distinct !{!140, !35, !46, !47}
!141 = distinct !{!141, !63}
!142 = distinct !{!142, !35, !46}
!143 = distinct !{!143, !35}
!144 = distinct !{!144, !35, !46}
!145 = distinct !{!145, !35}
!146 = !{!147}
!147 = distinct !{!147, !148}
!148 = distinct !{!148, !"LVerDomain"}
!149 = !{!150}
!150 = distinct !{!150, !148}
!151 = !{!152}
!152 = distinct !{!152, !148}
!153 = !{!154}
!154 = distinct !{!154, !148}
!155 = !{!156}
!156 = distinct !{!156, !148}
!157 = !{!154, !152, !150, !147}
!158 = distinct !{!158, !35, !46, !47}
!159 = !{!160}
!160 = distinct !{!160, !161}
!161 = distinct !{!161, !"LVerDomain"}
!162 = !{!163}
!163 = distinct !{!163, !161}
!164 = !{!165}
!165 = distinct !{!165, !161}
!166 = !{!167}
!167 = distinct !{!167, !161}
!168 = !{!169}
!169 = distinct !{!169, !161}
!170 = !{!167, !165, !163, !160}
!171 = distinct !{!171, !35, !46, !47}
!172 = distinct !{!172, !35, !46}
!173 = !{!5, !5, i64 0}
end_hunk_1
