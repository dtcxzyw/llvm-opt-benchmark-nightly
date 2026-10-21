Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/samplers?download=true
inline.NumInlined: 118
inline.NumDeleted: 42
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN2cv17getRectSubPix_Cn_IhhiNS_11scale_fixptENS_7cast_8uEEEvPKT_mNS_5Size_IiEEPT0_mS7_NS_6Point_IfEEi:bb.a
  %i.ps = mul nsw <4 x i32> %broadcast.splat307, %i.pr
  %i.pt = add nsw i64 %i.pp, %i.ny                ; 2 uses
  %i.pu = getelementptr inbounds i8, ptr %.1214, i64 %i.pt
  %wide.load316 = load <4 x i8>, ptr %i.pu, align 1, !tbaa !14
  %i.pv = zext <4 x i8> %wide.load316 to <4 x i32>
  %i.pw = mul nsw <4 x i32> %broadcast.splat309, %i.pv
  %i.px = getelementptr inbounds i8, ptr %.0, i64 %i.pp
  %wide.load317 = load <4 x i8>, ptr %i.px, align 1, !tbaa !14
  %i.py = zext <4 x i8> %wide.load317 to <4 x i32>
  %i.pz = mul nsw <4 x i32> %broadcast.splat311, %i.py
  %i.qa = getelementptr inbounds i8, ptr %.0, i64 %i.pt
  %wide.load318 = load <4 x i8>, ptr %i.qa, align 1, !tbaa !14
  %i.qb = zext <4 x i8> %wide.load318 to <4 x i32>
  %i.qc = mul nsw <4 x i32> %broadcast.splat313, %i.qb
  %i.qd = add <4 x i32> %i.ps, splat (i32 32768)
  %i.qe = add <4 x i32> %i.qd, %i.pw
  %i.qf = add <4 x i32> %i.qe, %i.pz
  %i.qg = add <4 x i32> %i.qf, %i.qc
  %i.qh = lshr <4 x i32> %i.qg, splat (i32 16)
  %i.qi = trunc <4 x i32> %i.qh to <4 x i8>
  %i.qj = getelementptr inbounds i8, ptr %.1178213, i64 %i.pp
  store <4 x i8> %i.qi, ptr %i.qj, align 1, !tbaa !14
  %index.next319 = add nuw i64 %index314, 4       ; 2 uses
  %i.qk = icmp eq i64 %index.next319, %n.vec305
  br i1 %i.qk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !69

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n320, label %._crit_edge211, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ %i.nx, %iter.check ], [ %i.nx, %vector.memcheck ], [ %i.oe, %vec.epilog.iter.check ], [ %i.of, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 5 uses
  %i.ql = getelementptr inbounds i8, ptr %.1214, i64 %indvars.iv
  %i.qm = load i8, ptr %i.ql, align 1, !tbaa !14
  %i.qn = zext i8 %i.qm to i32
  %i.qo = mul nsw i32 %i.t, %i.qn
  %i.qp = add nsw i64 %indvars.iv, %i.ny          ; 2 uses
  %i.qq = getelementptr inbounds i8, ptr %.1214, i64 %i.qp
  %i.qr = load i8, ptr %i.qq, align 1, !tbaa !14
  %i.qs = zext i8 %i.qr to i32
  %i.qt = mul nsw i32 %i.x, %i.qs
  %i.qu = getelementptr inbounds i8, ptr %.0, i64 %indvars.iv
  %i.qv = load i8, ptr %i.qu, align 1, !tbaa !14
  %i.qw = zext i8 %i.qv to i32
  %i.qx = mul nsw i32 %i.ah, %i.qw
  %i.qy = getelementptr inbounds i8, ptr %.0, i64 %i.qp
  %i.qz = load i8, ptr %i.qy, align 1, !tbaa !14
  %i.ra = zext i8 %i.qz to i32
  %i.rb = mul nsw i32 %i.al, %i.ra
  %i.rc = add i32 %i.qo, 32768
  %i.rd = add i32 %i.rc, %i.qt
  %i.re = add i32 %i.rd, %i.qx
  %i.rf = add i32 %i.re, %i.rb
  %i.rg = lshr i32 %i.rf, 16
  %i.rh = trunc i32 %i.rg to i8
  %i.ri = getelementptr inbounds i8, ptr %.1178213, i64 %indvars.iv
  store i8 %i.rh, ptr %i.ri, align 1, !tbaa !14
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge211, label %vec.epilog.scalar.ph, !llvm.loop !70

._crit_edge211:                                   ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %spec.select = select i1 %.not, ptr %.0, ptr %.1214
  %i.rj = add nuw nsw i32 %.1184212, 1            ; 2 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %.1178213, i64 %4
  %exitcond229.not = icmp eq i32 %i.rj, %.sroa.9.0.extract.trunc
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond229.not, label %._crit_edge217, label %iter.check, !llvm.loop !59

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
  %.sroa.0166.0.extract.trunc = trunc i64 %5 to i32 ; 3 uses
  %.sroa.9.0.extract.trunc = trunc nuw i64 %.sroa.9.0.extract.shift to i32 ; 7 uses
  %i.c = bitcast i64 %5 to <2 x i32>
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
  %foldExtExtBinop495 = fsub <2 x float> %i.g, %i.k
  %i.m = extractelement <2 x float> %foldExtExtBinop495, i64 1 ; 7 uses
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
  %.sroa.3.0.extract.shift = lshr i64 %2, 32
  %i.w = extractelement <2 x i32> %i.i, i64 1     ; 2 uses
  %i.x = icmp sgt i32 %i.w, -1
  %.sroa.3.0.extract.trunc = trunc nuw i64 %.sroa.3.0.extract.shift to i32
  %.sroa.0175.0.extract.trunc = trunc i64 %2 to i32
  %i.y = sub nsw i32 %.sroa.0175.0.extract.trunc, %.sroa.0166.0.extract.trunc
  %i.z = sub nsw i32 %.sroa.3.0.extract.trunc, %.sroa.9.0.extract.trunc
  %i.aa = insertelement <2 x i32> poison, i32 %i.y, i64 0
  %i.ab = insertelement <2 x i32> %i.aa, i32 %i.z, i64 1
  %i.ac = icmp sgt <2 x i32> %i.ab, %i.i          ; 2 uses
  %i.ad = extractelement <2 x i1> %i.ac, i64 0
  %or.cond = select i1 %i.ad, i1 %i.x, i1 false
  %i.ae = extractelement <2 x i1> %i.ac, i64 1
  %or.cond191 = select i1 %or.cond, i1 %i.ae, i1 false
  br i1 %or.cond191, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.af = mul i32 %7, %.sroa.0166.0.extract.trunc ; 4 uses
  %i.ag = icmp sgt i32 %.sroa.9.0.extract.trunc, 0
  br i1 %i.ag, label %.preheader198.lr.ph, label %.loopexit

.preheader198.lr.ph:                              ; preds = %bb.c
  %i.ah = zext nneg i32 %i.w to i64               ; 5 uses
  %i.ai = mul i64 %i.t, %i.ah
  %i.aj = getelementptr [4 x i8], ptr %0, i64 %i.ai
  %i.ak = mul i32 %7, %i.j
  %i.al = sext i32 %i.ak to i64                   ; 4 uses
  %i.am = getelementptr [4 x i8], ptr %i.aj, i64 %i.al ; 2 uses
  %i.an = add i32 %i.af, -2                       ; 2 uses
  %.not189218 = icmp slt i32 %i.af, 2
  %i.ao = sext i32 %7 to i64                      ; 8 uses
  %i.ap = zext i32 %i.an to i64                   ; 3 uses
  %wide.trip.count272 = zext i32 %i.af to i64     ; 2 uses
  %i.aq = shl nuw nsw i64 %i.ah, 2
  %i.ar = add nuw nsw i64 %i.aq, 4
  %i.as = mul i64 %i.t, %i.ar                     ; 2 uses
  %i.at = add i64 %i.as, %i.a
  %i.au = shl nsw i64 %i.ao, 2                    ; 2 uses
  %i.av = add i64 %i.at, %i.au
  %i.aw = shl nsw i64 %i.al, 2                    ; 4 uses
  %i.ax = add i64 %i.av, %i.aw
  %i.ay = sub i64 %i.b, %i.ax
  %i.az = and i64 %4, -4
  %i.ba = and i64 %1, -4
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = add i64 %i.as, %i.a
  %i.bd = add i64 %i.bc, %i.aw
  %i.be = sub i64 %i.b, %i.bd
  %i.bf = mul i64 %i.t, %i.ah
  %i.bg = shl i64 %i.bf, 2
  %i.bh = add i64 %i.bg, %i.a                     ; 2 uses
  %i.bi = add i64 %i.bh, %i.au
  %i.bj = add i64 %i.bi, %i.aw
  %i.bk = sub i64 %i.b, %i.bj
  %i.bl = add i64 %i.bh, %i.aw
  %i.bm = sub i64 %i.b, %i.bl
  %i.bn = add nuw nsw i64 %.sroa.9.0.extract.shift, 4294967295
  %i.bo = and i64 %i.bn, 4294967295               ; 2 uses
  %i.bp = mul i64 %i.u, %i.bo
  %i.bq = shl i64 %i.bp, 2
  %i.br = shl nuw nsw i64 %i.ap, 2
  %i.bs = and i64 %i.br, 17179869176              ; 4 uses
  %i.bt = getelementptr i8, ptr %3, i64 %i.bq
  %i.bu = getelementptr i8, ptr %i.bt, i64 %i.bs
  %scevgep = getelementptr i8, ptr %i.bu, i64 8
  %i.bv = shl nuw nsw i64 %i.ah, 2                ; 3 uses
  %i.bw = add nuw nsw i64 %i.bv, 4
  %i.bx = mul i64 %i.t, %i.bw                     ; 2 uses
  %i.by = shl nsw i64 %i.ao, 2                    ; 3 uses
  %i.bz = shl nsw i64 %i.al, 2                    ; 6 uses
  %i.ca = getelementptr i8, ptr %0, i64 %i.bx
  %i.cb = getelementptr i8, ptr %i.ca, i64 %i.by
  %scevgep442 = getelementptr i8, ptr %i.cb, i64 %i.bz
  %i.cc = shl nuw nsw i64 %i.bo, 2                ; 2 uses
  %i.cd = add nuw nsw i64 %i.bv, %i.cc
  %i.ce = add nuw nsw i64 %i.cd, 4
  %i.cf = mul i64 %i.t, %i.ce                     ; 2 uses
  %i.cg = getelementptr i8, ptr %0, i64 %i.cf
  %i.ch = getelementptr i8, ptr %i.cg, i64 %i.bs
  %i.ci = getelementptr i8, ptr %i.ch, i64 %i.by
  %i.cj = getelementptr i8, ptr %i.ci, i64 %i.bz
  %i.ck = getelementptr i8, ptr %0, i64 %i.bx
  %scevgep444 = getelementptr i8, ptr %i.ck, i64 %i.bz
  %i.cl = getelementptr i8, ptr %0, i64 %i.cf
  %i.cm = getelementptr i8, ptr %i.cl, i64 %i.bs
  %i.cn = getelementptr i8, ptr %i.cm, i64 %i.bz
  %9 = insertelement <2 x ptr> poison, ptr %i.cj, i64 0
  %10 = insertelement <2 x ptr> %9, ptr %i.cn, i64 1
  %11 = getelementptr i8, <2 x ptr> %10, i64 8
  %i.co = mul i64 %i.t, %i.ah
  %i.cp = add i64 %i.co, %i.ao
  %i.cq = add i64 %i.cp, %i.al
  %i.cr = shl i64 %i.cq, 2
  %scevgep446 = getelementptr i8, ptr %0, i64 %i.cr
  %i.cs = add nuw nsw i64 %i.bv, %i.cc
  %i.ct = mul i64 %i.t, %i.cs
  %i.cu = add i64 %i.ct, %i.bs                    ; 2 uses
  %i.cv = getelementptr i8, ptr %0, i64 %i.cu
  %i.cw = getelementptr i8, ptr %i.cv, i64 %i.by
  %i.cx = getelementptr i8, ptr %i.cw, i64 %i.bz
  %i.cy = getelementptr i8, ptr %0, i64 %i.cu
  %i.cz = getelementptr i8, ptr %i.cy, i64 %i.bz
  %12 = insertelement <2 x ptr> poison, ptr %i.cx, i64 0
  %13 = insertelement <2 x ptr> %12, ptr %i.cz, i64 1
  %14 = getelementptr i8, <2 x ptr> %13, i64 8
  %i.da = insertelement <4 x ptr> poison, ptr %3, i64 0
  %i.db = shufflevector <4 x ptr> %i.da, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.dc = insertelement <4 x ptr> poison, ptr %scevgep442, i64 0
  %i.dd = insertelement <4 x ptr> %i.dc, ptr %scevgep444, i64 1
  %i.de = insertelement <4 x ptr> %i.dd, ptr %scevgep446, i64 2
  %i.df = insertelement <4 x ptr> %i.de, ptr %i.am, i64 3
  %i.dg = insertelement <4 x ptr> poison, ptr %scevgep, i64 0
  %i.dh = shufflevector <4 x ptr> %i.dg, <4 x ptr> poison, <4 x i32> zeroinitializer
  %15 = shufflevector <2 x ptr> %11, <2 x ptr> %14, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.di = lshr i64 %i.ap, 1
  %i.dj = add nuw nsw i64 %i.di, 1                ; 2 uses
  %min.iters.check463 = icmp ult i32 %i.an, 6
  %i.dk = icmp ult <4 x ptr> %i.db, %15
  %i.dl = icmp ult <4 x ptr> %i.df, %i.dh
  %i.dm = or i64 %1, %4
  %i.dn = icmp slt i64 %i.dm, 0
  %i.do = and <4 x i1> %i.dk, %i.dl
  %i.dp = bitcast <4 x i1> %i.do to i4
  %i.dq = icmp ne i4 %i.dp, 0
  %op.rdx = or i1 %i.dq, %i.dn
  %n.vec465 = and i64 %i.dj, 4294967292           ; 3 uses
  %i.dr = shl nuw nsw i64 %n.vec465, 1            ; 2 uses
  %broadcast.splatinsert466 = insertelement <4 x float> poison, float %i.q, i64 0
  %broadcast.splatinsert468 = insertelement <4 x float> poison, float %i.p, i64 0
  %broadcast.splatinsert470 = insertelement <4 x float> poison, float %i.r, i64 0
  %broadcast.splatinsert472 = insertelement <4 x float> poison, float %i.s, i64 0
  %i.ds = shufflevector <4 x float> %broadcast.splatinsert472, <4 x float> poison, <8 x i32> zeroinitializer
  %i.dt = shufflevector <4 x float> %broadcast.splatinsert470, <4 x float> poison, <8 x i32> zeroinitializer
  %i.du = shufflevector <4 x float> %broadcast.splatinsert468, <4 x float> poison, <8 x i32> zeroinitializer
  %i.dv = shufflevector <4 x float> %broadcast.splatinsert466, <4 x float> poison, <8 x i32> zeroinitializer
  %cmp.n488 = icmp eq i64 %i.dj, %n.vec465
  %i.dw = insertelement <2 x float> poison, float %i.q, i64 0
  %i.dx = shufflevector <2 x float> %i.dw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dy = insertelement <2 x float> poison, float %i.p, i64 0
  %i.dz = shufflevector <2 x float> %i.dy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ea = insertelement <2 x float> poison, float %i.r, i64 0
  %i.eb = shufflevector <2 x float> %i.ea, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ec = insertelement <2 x float> poison, float %i.s, i64 0
  %i.ed = shufflevector <2 x float> %i.ec, <2 x float> poison, <2 x i32> zeroinitializer
  %invariant.op = add i64 %i.ay, -1
  %invariant.op519 = add i64 %i.be, -1
  %invariant.op521 = add i64 %i.bk, -1
  %invariant.op523 = add i64 %i.bm, -1
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
  %.0176224 = phi ptr [ %i.am, %.preheader198.lr.ph ], [ %i.gg, %._crit_edge ] ; 11 uses
  %.0177223 = phi ptr [ %3, %.preheader198.lr.ph ], [ %i.gh, %._crit_edge ] ; 5 uses
  %.0183222 = phi i32 [ 0, %.preheader198.lr.ph ], [ %i.gf, %._crit_edge ]
  %i.ee = mul i64 %i.bb, %indvar410               ; 4 uses
  br i1 %.not189218, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader198
  %invariant.gep = getelementptr [4 x i8], ptr %.0176224, i64 %i.ao ; 2 uses
  %invariant.gep301 = getelementptr [4 x i8], ptr %.0176224, i64 %i.ao ; 2 uses
  %brmerge = select i1 %min.iters.check463, i1 true, i1 %op.rdx
  br i1 %brmerge, label %scalar.ph462.preheader, label %vector.body474

vector.body474:                                   ; preds = %.lr.ph, %vector.body474
  %index475 = phi i64 [ %index.next486, %vector.body474 ], [ 0, %.lr.ph ] ; 2 uses
  %i.ef = shl nuw i64 %index475, 1                ; 4 uses
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %.0176224, i64 %i.ef
  %wide.vec = load <8 x float>, ptr %i.eg, align 4, !tbaa !19, !alias.scope !103
  %i.eh = getelementptr [4 x i8], ptr %invariant.gep301, i64 %i.ef
  %wide.vec477 = load <8 x float>, ptr %i.eh, align 4, !tbaa !19, !alias.scope !104
  %i.ei = add nuw nsw i64 %i.t, %i.ef             ; 2 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %.0176224, i64 %i.ei
  %wide.vec480 = load <8 x float>, ptr %i.ej, align 4, !tbaa !19, !alias.scope !105
  %i.ek = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.ei
  %wide.vec483 = load <8 x float>, ptr %i.ek, align 4, !tbaa !19, !alias.scope !106
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %.0177223, i64 %i.ef
  %i.em = fmul <8 x float> %i.dv, %wide.vec477
  %i.en = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.vec, <8 x float> %i.du, <8 x float> %i.em)
  %i.eo = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.vec480, <8 x float> %i.dt, <8 x float> %i.en)
  %interleaved.vec = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.vec483, <8 x float> %i.ds, <8 x float> %i.eo)
  store <8 x float> %interleaved.vec, ptr %i.el, align 4, !tbaa !19, !alias.scope !107, !noalias !108
  %index.next486 = add nuw i64 %index475, 4       ; 2 uses
  %i.ep = icmp eq i64 %index.next486, %n.vec465
  br i1 %i.ep, label %middle.block487, label %vector.body474, !llvm.loop !80

middle.block487:                                  ; preds = %vector.body474
  br i1 %cmp.n488, label %.preheader.loopexit, label %scalar.ph462.preheader

scalar.ph462.preheader:                           ; preds = %.lr.ph, %middle.block487
  %indvars.iv266.ph = phi i64 [ %i.dr, %middle.block487 ], [ 0, %.lr.ph ]
  br label %scalar.ph462

.preheader.loopexit:                              ; preds = %scalar.ph462, %middle.block487
  %indvars.iv.next267.lcssa = phi i64 [ %i.dr, %middle.block487 ], [ %indvars.iv.next267, %scalar.ph462 ]
  %i.eq = trunc nuw nsw i64 %indvars.iv.next267.lcssa to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.preheader198
  %.0180.lcssa = phi i32 [ 0, %.preheader198 ], [ %i.eq, %.preheader.loopexit ] ; 2 uses
  %i.er = icmp slt i32 %.0180.lcssa, %i.af
  br i1 %i.er, label %.lr.ph221, label %._crit_edge

.lr.ph221:                                        ; preds = %.preheader
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %.0176224, i64 %i.t ; 2 uses
  %i.et = zext i32 %.0180.lcssa to i64            ; 5 uses
  %invariant.gep303 = getelementptr [4 x i8], ptr %.0176224, i64 %i.ao ; 2 uses
  %i.eu = sub nsw i64 %wide.trip.count272, %i.et  ; 3 uses
  %min.iters.check420 = icmp ult i64 %i.eu, 4
  br i1 %min.iters.check420, label %scalar.ph419.preheader, label %vector.memcheck409

vector.memcheck409:                               ; preds = %.lr.ph221
  %.reass = add i64 %i.ee, %invariant.op
  %diff.check412 = icmp ult i64 %.reass, 15
  %.reass520 = add i64 %i.ee, %invariant.op519
  %diff.check413 = icmp ult i64 %.reass520, 15
  %conflict.rdx414 = or i1 %diff.check412, %diff.check413
  %.reass522 = add i64 %i.ee, %invariant.op521
  %diff.check415 = icmp ult i64 %.reass522, 15
  %conflict.rdx416 = or i1 %conflict.rdx414, %diff.check415
  %.reass524 = add i64 %i.ee, %invariant.op523
  %diff.check417 = icmp ult i64 %.reass524, 15
  %conflict.rdx418 = or i1 %conflict.rdx416, %diff.check417
  br i1 %conflict.rdx418, label %scalar.ph419.preheader, label %vector.ph421

vector.ph421:                                     ; preds = %vector.memcheck409
  %n.vec422 = and i64 %i.eu, -4                   ; 3 uses
  %i.ev = add nsw i64 %n.vec422, %i.et
  br label %vector.body431

vector.body431:                                   ; preds = %vector.body431, %vector.ph421
  %index432 = phi i64 [ 0, %vector.ph421 ], [ %index.next437, %vector.body431 ] ; 2 uses
  %i.ew = add nuw i64 %index432, %i.et            ; 4 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %.0176224, i64 %i.ew
  %wide.load433 = load <4 x float>, ptr %i.ex, align 4, !tbaa !19
  %i.ey = getelementptr [4 x i8], ptr %invariant.gep303, i64 %i.ew
  %wide.load434 = load <4 x float>, ptr %i.ey, align 4, !tbaa !19
  %i.ez = fmul <4 x float> %broadcast.splat424, %wide.load434
  %i.fa = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load433, <4 x float> %broadcast.splat426, <4 x float> %i.ez)
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %i.ew ; 2 uses
  %wide.load435 = load <4 x float>, ptr %i.fb, align 4, !tbaa !19
  %i.fc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load435, <4 x float> %broadcast.splat428, <4 x float> %i.fa)
  %i.fd = getelementptr [4 x i8], ptr %i.fb, i64 %i.ao
  %wide.load436 = load <4 x float>, ptr %i.fd, align 4, !tbaa !19
  %i.fe = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load436, <4 x float> %broadcast.splat430, <4 x float> %i.fc)
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %.0177223, i64 %i.ew
  store <4 x float> %i.fe, ptr %i.ff, align 4, !tbaa !19
  %index.next437 = add nuw i64 %index432, 4       ; 2 uses
  %i.fg = icmp eq i64 %index.next437, %n.vec422
  br i1 %i.fg, label %middle.block438, label %vector.body431, !llvm.loop !81

middle.block438:                                  ; preds = %vector.body431
  %cmp.n439 = icmp eq i64 %i.eu, %n.vec422
  br i1 %cmp.n439, label %._crit_edge, label %scalar.ph419.preheader

scalar.ph419.preheader:                           ; preds = %vector.memcheck409, %.lr.ph221, %middle.block438
  %indvars.iv269.ph = phi i64 [ %i.et, %vector.memcheck409 ], [ %i.et, %.lr.ph221 ], [ %i.ev, %middle.block438 ]
  br label %scalar.ph419

scalar.ph462:                                     ; preds = %scalar.ph462.preheader, %scalar.ph462
  %indvars.iv266 = phi i64 [ %indvars.iv.next267, %scalar.ph462 ], [ %indvars.iv266.ph, %scalar.ph462.preheader ] ; 5 uses
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %.0176224, i64 %indvars.iv266
  %gep302 = getelementptr [4 x i8], ptr %invariant.gep301, i64 %indvars.iv266
  %i.fi = add nuw nsw i64 %i.t, %indvars.iv266    ; 2 uses
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %.0176224, i64 %i.fi
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.fi
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %.0177223, i64 %indvars.iv266
  %i.fl = load <2 x float>, ptr %i.fh, align 4, !tbaa !19
  %i.fm = load <2 x float>, ptr %gep302, align 4, !tbaa !19
  %i.fn = fmul <2 x float> %i.dx, %i.fm
  %i.fo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fl, <2 x float> %i.dz, <2 x float> %i.fn)
  %i.fp = load <2 x float>, ptr %i.fj, align 4, !tbaa !19
  %i.fq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fp, <2 x float> %i.eb, <2 x float> %i.fo)
  %i.fr = load <2 x float>, ptr %gep, align 4, !tbaa !19
  %i.fs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fr, <2 x float> %i.ed, <2 x float> %i.fq)
  store <2 x float> %i.fs, ptr %i.fk, align 4, !tbaa !19
  %indvars.iv.next267 = add nuw nsw i64 %indvars.iv266, 2 ; 3 uses
  %.not189 = icmp samesign ugt i64 %indvars.iv.next267, %i.ap
  br i1 %.not189, label %.preheader.loopexit, label %scalar.ph462, !llvm.loop !82

scalar.ph419:                                     ; preds = %scalar.ph419.preheader, %scalar.ph419
  %indvars.iv269 = phi i64 [ %indvars.iv.next270, %scalar.ph419 ], [ %indvars.iv269.ph, %scalar.ph419.preheader ] ; 5 uses
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %.0176224, i64 %indvars.iv269
  %i.fu = load float, ptr %i.ft, align 4, !tbaa !19
  %gep304 = getelementptr [4 x i8], ptr %invariant.gep303, i64 %indvars.iv269
  %i.fv = load float, ptr %gep304, align 4, !tbaa !19
  %i.fw = fmul float %i.q, %i.fv
  %i.fx = tail call float @llvm.fmuladd.f32(float %i.fu, float %i.p, float %i.fw)
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %indvars.iv269 ; 2 uses
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !19
  %i.ga = tail call float @llvm.fmuladd.f32(float %i.fz, float %i.r, float %i.fx)
  %i.gb = getelementptr [4 x i8], ptr %i.fy, i64 %i.ao
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !19
  %i.gd = tail call float @llvm.fmuladd.f32(float %i.gc, float %i.s, float %i.ga)
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %.0177223, i64 %indvars.iv269
  store float %i.gd, ptr %i.ge, align 4, !tbaa !19
  %indvars.iv.next270 = add nuw nsw i64 %indvars.iv269, 1 ; 2 uses
  %exitcond273.not = icmp eq i64 %indvars.iv.next270, %wide.trip.count272
  br i1 %exitcond273.not, label %._crit_edge, label %scalar.ph419, !llvm.loop !83

._crit_edge:                                      ; preds = %scalar.ph419, %middle.block438, %.preheader
  %i.gf = add nuw nsw i32 %.0183222, 1            ; 2 uses
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %.0176224, i64 %i.t
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %.0177223, i64 %i.u
  %exitcond274.not = icmp eq i32 %i.gf, %.sroa.9.0.extract.trunc
  %indvar.next411 = add i64 %indvar410, 1
  br i1 %exitcond274.not, label %.loopexit, label %.preheader198, !llvm.loop !84

bb.d:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
end_hunk_0
begin_hunk_1_@_ZN2cv17getRectSubPix_Cn_IfffNS_3nopIfEES2_EEvPKT_mNS_5Size_IiEEPT0_mS7_NS_6Point_IfEEi:bb.a
  %i.ng = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load320, <4 x float> %broadcast.splat316, <4 x float> %i.ne)
  %i.nh = getelementptr inbounds [4 x i8], ptr %.0, i64 %i.nb
  %wide.load321 = load <4 x float>, ptr %i.nh, align 4, !tbaa !19
  %i.ni = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load321, <4 x float> %broadcast.splat318, <4 x float> %i.ng)
  %i.nj = getelementptr inbounds [4 x i8], ptr %.1178213, i64 %i.mz
  store <4 x float> %i.ni, ptr %i.nj, align 4, !tbaa !19
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.nk = icmp eq i64 %index.next, %n.vec
  br i1 %i.nk, label %middle.block, label %vector.body, !llvm.loop !101

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge211, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph210, %middle.block
  %indvars.iv.ph = phi i64 [ %i.ma, %vector.memcheck ], [ %i.ma, %.lr.ph210 ], [ %i.mj, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 5 uses
  %i.nl = getelementptr inbounds [4 x i8], ptr %.1214, i64 %indvars.iv
  %i.nm = load float, ptr %i.nl, align 4, !tbaa !19
  %i.nn = add nsw i64 %indvars.iv, %i.mb          ; 2 uses
  %i.no = getelementptr inbounds [4 x i8], ptr %.1214, i64 %i.nn
  %i.np = load float, ptr %i.no, align 4, !tbaa !19
  %i.nq = fmul float %i.q, %i.np
  %i.nr = tail call float @llvm.fmuladd.f32(float %i.nm, float %i.p, float %i.nq)
  %i.ns = getelementptr inbounds [4 x i8], ptr %.0, i64 %indvars.iv
  %i.nt = load float, ptr %i.ns, align 4, !tbaa !19
  %i.nu = tail call float @llvm.fmuladd.f32(float %i.nt, float %i.r, float %i.nr)
  %i.nv = getelementptr inbounds [4 x i8], ptr %.0, i64 %i.nn
  %i.nw = load float, ptr %i.nv, align 4, !tbaa !19
  %i.nx = tail call float @llvm.fmuladd.f32(float %i.nw, float %i.s, float %i.nu)
  %i.ny = getelementptr inbounds [4 x i8], ptr %.1178213, i64 %indvars.iv
  store float %i.nx, ptr %i.ny, align 4, !tbaa !19
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge211, label %scalar.ph, !llvm.loop !102

._crit_edge211:                                   ; preds = %scalar.ph, %middle.block
  %spec.select = select i1 %.not, ptr %.0, ptr %.1214
  %i.nz = add nuw nsw i32 %.1184212, 1            ; 2 uses
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %.1178213, i64 %i.u
  %exitcond228.not = icmp eq i32 %i.nz, %.sroa.9.0.extract.trunc
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond228.not, label %._crit_edge217, label %.lr.ph210, !llvm.loop !94

._crit_edge217:                                   ; preds = %._crit_edge211, %._crit_edge207.us, %._crit_edge211.us.us, %.lr.ph216.split, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge, %bb.c, %._crit_edge217
  ret void
}

; Function Attrs: nounwind
declare void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !22
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #18
  unreachable
}

declare noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #2

declare void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv17getRectSubPix_Cn_IhffNS_3nopIfEES2_EEvPKT_mNS_5Size_IiEEPT0_mS7_NS_6Point_IfEEi(ptr noundef %0, i64 noundef %1, i64 %2, ptr noundef %3, i64 noundef %4, i64 %5, <2 x float> %6, i32 noundef %7) local_unnamed_addr #0 comdat {
bb.a:
  %8 = alloca %"class.cv::Rect_", align 4         ; 8 uses
  %.sroa.9.0.extract.shift = lshr i64 %5, 32      ; 4 uses
  %.sroa.0166.0.extract.trunc = trunc i64 %5 to i32 ; 3 uses
  %.sroa.9.0.extract.trunc = trunc nuw i64 %.sroa.9.0.extract.shift to i32 ; 7 uses
  %i.a = bitcast i64 %5 to <2 x i32>
  %i.b = add nsw <2 x i32> %i.a, splat (i32 -1)
  %i.c = sitofp <2 x i32> %i.b to <2 x float>
  %i.d = fneg <2 x float> %i.c
  %i.e = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.d, <2 x float> splat (float 5.000000e-01), <2 x float> %6) ; 3 uses
  %i.f = tail call <2 x float> @llvm.floor.v2f32(<2 x float> %i.e)
  %i.g = fptosi <2 x float> %i.f to <2 x i32>     ; 5 uses
  %i.h = extractelement <2 x i32> %i.g, i64 0     ; 2 uses
  %i.i = sitofp <2 x i32> %i.g to <2 x float>     ; 2 uses
  %foldExtExtBinop = fsub <2 x float> %i.e, %i.i
  %i.j = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 3 uses
  %foldExtExtBinop499 = fsub <2 x float> %i.e, %i.i
  %i.k = extractelement <2 x float> %foldExtExtBinop499, i64 1 ; 5 uses
  %i.l = fsub float 1.000000e+00, %i.j            ; 2 uses
  %i.m = fsub float 1.000000e+00, %i.k            ; 4 uses
  %i.n = fmul float %i.l, %i.m                    ; 9 uses
  %i.o = fmul float %i.j, %i.m                    ; 9 uses
  %i.p = fmul float %i.l, %i.k                    ; 9 uses
  %i.q = fmul float %i.j, %i.k                    ; 9 uses
  %i.r = lshr i64 %4, 2                           ; 7 uses
  %i.s = icmp sgt i32 %i.h, -1
  br i1 %i.s, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.sroa.3.0.extract.shift = lshr i64 %2, 32
  %i.t = extractelement <2 x i32> %i.g, i64 1     ; 2 uses
  %i.u = icmp sgt i32 %i.t, -1
  %.sroa.3.0.extract.trunc = trunc nuw i64 %.sroa.3.0.extract.shift to i32
  %.sroa.0175.0.extract.trunc = trunc i64 %2 to i32
  %i.v = sub nsw i32 %.sroa.0175.0.extract.trunc, %.sroa.0166.0.extract.trunc
  %i.w = sub nsw i32 %.sroa.3.0.extract.trunc, %.sroa.9.0.extract.trunc
  %i.x = insertelement <2 x i32> poison, i32 %i.v, i64 0
  %i.y = insertelement <2 x i32> %i.x, i32 %i.w, i64 1
  %i.z = icmp sgt <2 x i32> %i.y, %i.g            ; 2 uses
  %i.aa = extractelement <2 x i1> %i.z, i64 0
  %or.cond = select i1 %i.aa, i1 %i.u, i1 false
  %i.ab = extractelement <2 x i1> %i.z, i64 1
  %or.cond191 = select i1 %or.cond, i1 %i.ab, i1 false
  br i1 %or.cond191, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ac = zext nneg i32 %i.t to i64               ; 4 uses
  %i.ad = mul i64 %1, %i.ac                       ; 5 uses
  %i.ae = mul i32 %7, %i.h
  %i.af = sext i32 %i.ae to i64                   ; 16 uses
  %i.ag = getelementptr i8, ptr %0, i64 %i.ad
  %i.ah = getelementptr i8, ptr %i.ag, i64 %i.af  ; 3 uses
  %i.ai = mul i32 %7, %.sroa.0166.0.extract.trunc ; 5 uses
  %i.aj = icmp sgt i32 %.sroa.9.0.extract.trunc, 0
  br i1 %i.aj, label %.preheader198.lr.ph, label %.loopexit

.preheader198.lr.ph:                              ; preds = %bb.c
  %.not189218 = icmp slt i32 %i.ai, 2
  %i.ak = sext i32 %7 to i64                      ; 15 uses
  br i1 %.not189218, label %.preheader198.lr.ph.split.us, label %.preheader198.preheader

.preheader198.preheader:                          ; preds = %.preheader198.lr.ph
  %i.al = add nsw i32 %i.ai, -2                   ; 2 uses
  %i.am = zext i32 %i.al to i64                   ; 4 uses
  %i.an = zext nneg i32 %i.ai to i64              ; 3 uses
  %i.ao = and i64 %4, -4
  %i.ap = and i64 %i.am, 4294967294               ; 8 uses
  %i.aq = add nuw nsw i64 %i.ap, 3
  %umax = tail call i64 @llvm.umax.i64(i64 %i.aq, i64 %i.an) ; 3 uses
  %i.ar = shl nuw nsw i64 %umax, 2
  %i.as = lshr i64 %i.am, 1                       ; 2 uses
  %i.at = shl nuw nsw i64 %i.as, 3                ; 2 uses
  %i.au = sub nsw i64 %i.ar, %i.at
  %i.av = add nuw nsw i64 %i.ac, 1
  %i.aw = mul i64 %1, %i.av                       ; 5 uses
  %i.ax = add i64 %umax, %i.aw                    ; 2 uses
  %i.ay = add i64 %i.ax, %i.ak
  %i.az = add i64 %i.ay, %i.af
  %i.ba = sub i64 %i.az, %i.ap
  %i.bb = add i64 %i.ax, %i.af
  %i.bc = sub i64 %i.bb, %i.ap
  %i.bd = add i64 %umax, %i.ad                    ; 2 uses
  %i.be = add i64 %i.bd, %i.ak
  %i.bf = add i64 %i.be, %i.af
  %i.bg = sub i64 %i.bf, %i.ap
  %i.bh = add i64 %i.bd, %i.af
  %i.bi = sub i64 %i.bh, %i.ap
  %i.bj = add nuw nsw i64 %.sroa.9.0.extract.shift, 4294967295
  %i.bk = and i64 %i.bj, 4294967295               ; 3 uses
  %i.bl = mul i64 %i.r, %i.bk
  %i.bm = shl i64 %i.bl, 2
  %i.bn = getelementptr i8, ptr %3, i64 %i.bm
  %i.bo = getelementptr i8, ptr %i.bn, i64 %i.at
  %scevgep448 = getelementptr i8, ptr %i.bo, i64 8
  %i.bp = getelementptr i8, ptr %0, i64 %i.aw
  %i.bq = getelementptr i8, ptr %i.bp, i64 %i.ak
  %scevgep449 = getelementptr i8, ptr %i.bq, i64 %i.af
  %i.br = add nuw nsw i64 %i.bk, %i.ac
  %i.bs = add nuw nsw i64 %i.br, 1
  %i.bt = mul i64 %1, %i.bs                       ; 2 uses
  %i.bu = getelementptr i8, ptr %0, i64 %i.bt
  %i.bv = getelementptr i8, ptr %i.bu, i64 %i.ap
  %i.bw = getelementptr i8, ptr %i.bv, i64 %i.ak
  %i.bx = getelementptr i8, ptr %i.bw, i64 %i.af
  %i.by = getelementptr i8, ptr %0, i64 %i.aw
  %scevgep451 = getelementptr i8, ptr %i.by, i64 %i.af
  %i.bz = getelementptr i8, ptr %0, i64 %i.bt
  %i.ca = getelementptr i8, ptr %i.bz, i64 %i.ap
  %i.cb = getelementptr i8, ptr %i.ca, i64 %i.af
  %9 = insertelement <2 x ptr> poison, ptr %i.bx, i64 0
  %10 = insertelement <2 x ptr> %9, ptr %i.cb, i64 1
  %11 = getelementptr i8, <2 x ptr> %10, i64 2
  %i.cc = getelementptr i8, ptr %0, i64 %i.ad
  %i.cd = getelementptr i8, ptr %i.cc, i64 %i.ak
  %scevgep453 = getelementptr i8, ptr %i.cd, i64 %i.af
  %i.ce = add nuw nsw i64 %i.bk, %i.ac
  %i.cf = mul i64 %1, %i.ce
  %i.cg = add i64 %i.cf, %i.ap                    ; 2 uses
  %i.ch = getelementptr i8, ptr %0, i64 %i.cg
  %i.ci = getelementptr i8, ptr %i.ch, i64 %i.ak
  %i.cj = getelementptr i8, ptr %i.ci, i64 %i.af
  %i.ck = getelementptr i8, ptr %0, i64 %i.cg
  %i.cl = getelementptr i8, ptr %i.ck, i64 %i.af
  %12 = insertelement <2 x ptr> poison, ptr %i.cj, i64 0
  %13 = insertelement <2 x ptr> %12, ptr %i.cl, i64 1
  %14 = getelementptr i8, <2 x ptr> %13, i64 2
  %i.cm = insertelement <4 x ptr> poison, ptr %3, i64 0
  %i.cn = shufflevector <4 x ptr> %i.cm, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.co = insertelement <4 x ptr> poison, ptr %scevgep449, i64 0
  %i.cp = insertelement <4 x ptr> %i.co, ptr %scevgep451, i64 1
  %i.cq = insertelement <4 x ptr> %i.cp, ptr %scevgep453, i64 2
  %i.cr = insertelement <4 x ptr> %i.cq, ptr %i.ah, i64 3
  %i.cs = insertelement <4 x ptr> poison, ptr %scevgep448, i64 0
  %i.ct = shufflevector <4 x ptr> %i.cs, <4 x ptr> poison, <4 x i32> zeroinitializer
  %15 = shufflevector <2 x ptr> %11, <2 x ptr> %14, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cu = add nuw nsw i64 %i.as, 1                ; 2 uses
  %min.iters.check474 = icmp ult i32 %i.al, 6
  %i.cv = icmp ult <4 x ptr> %i.cn, %15
  %i.cw = icmp ult <4 x ptr> %i.cr, %i.ct
  %i.cx = or i64 %1, %4
  %i.cy = icmp slt i64 %i.cx, 0
  %i.cz = and <4 x i1> %i.cv, %i.cw
  %i.da = bitcast <4 x i1> %i.cz to i4
  %i.db = icmp ne i4 %i.da, 0
  %op.rdx = or i1 %i.db, %i.cy
  %n.vec476 = and i64 %i.cu, 4294967292           ; 5 uses
  %i.dc = shl nuw nsw i64 %n.vec476, 1            ; 4 uses
  %i.dd = or disjoint i64 %i.dc, 2
  %broadcast.splatinsert477 = insertelement <4 x float> poison, float %i.o, i64 0
  %broadcast.splat478 = shufflevector <4 x float> %broadcast.splatinsert477, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert479 = insertelement <4 x float> poison, float %i.n, i64 0
  %broadcast.splat480 = shufflevector <4 x float> %broadcast.splatinsert479, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert481 = insertelement <4 x float> poison, float %i.p, i64 0
  %broadcast.splat482 = shufflevector <4 x float> %broadcast.splatinsert481, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert483 = insertelement <4 x float> poison, float %i.q, i64 0
  %broadcast.splat484 = shufflevector <4 x float> %broadcast.splatinsert483, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %ind.escape = add nsw i64 %n.vec476, -1
  %cmp.n490 = icmp eq i64 %i.cu, %n.vec476
  %i.de = insertelement <2 x float> poison, float %i.o, i64 0
  %i.df = shufflevector <2 x float> %i.de, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dg = insertelement <2 x float> poison, float %i.n, i64 0
  %i.dh = shufflevector <2 x float> %i.dg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.di = insertelement <2 x float> poison, float %i.p, i64 0
  %i.dj = shufflevector <2 x float> %i.di, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dk = insertelement <2 x float> poison, float %i.q, i64 0
  %i.dl = shufflevector <2 x float> %i.dk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dm = and i64 %i.am, 4294967294               ; 2 uses
  %i.dn = add nuw nsw i64 %i.dm, 3
  %i.do = tail call i64 @llvm.umax.i64(i64 %i.dn, i64 %i.an)
  %i.dp = add nsw i64 %i.do, -2
  %i.dq = sub nsw i64 %i.dp, %i.dm                ; 3 uses
  %min.iters.check426 = icmp ult i64 %i.dq, 4
  %invariant.gep517 = getelementptr i8, ptr %3, i64 %i.au
  %invariant.gep519 = getelementptr i8, ptr %0, i64 %i.aw
  %invariant.gep521 = getelementptr i8, ptr %invariant.gep519, i64 %i.ak
  %invariant.gep523 = getelementptr i8, ptr %invariant.gep521, i64 %i.af
  %invariant.gep525 = getelementptr i8, ptr %0, i64 %i.ba
  %invariant.gep527 = getelementptr i8, ptr %0, i64 %i.aw
  %invariant.gep529 = getelementptr i8, ptr %invariant.gep527, i64 %i.af
  %invariant.gep531 = getelementptr i8, ptr %0, i64 %i.bc
  %invariant.gep533 = getelementptr i8, ptr %0, i64 %i.ad
  %invariant.gep535 = getelementptr i8, ptr %invariant.gep533, i64 %i.ak
  %invariant.gep537 = getelementptr i8, ptr %invariant.gep535, i64 %i.af
  %invariant.gep539 = getelementptr i8, ptr %0, i64 %i.bg
  %invariant.gep541 = getelementptr i8, ptr %0, i64 %i.ad
  %invariant.gep543 = getelementptr i8, ptr %invariant.gep541, i64 %i.af
  %invariant.gep545 = getelementptr i8, ptr %0, i64 %i.bi
  %n.vec428 = and i64 %i.dq, -4                   ; 3 uses
  %broadcast.splatinsert429 = insertelement <4 x float> poison, float %i.o, i64 0
  %broadcast.splat430 = shufflevector <4 x float> %broadcast.splatinsert429, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert431 = insertelement <4 x float> poison, float %i.n, i64 0
  %broadcast.splat432 = shufflevector <4 x float> %broadcast.splatinsert431, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert433 = insertelement <4 x float> poison, float %i.p, i64 0
  %broadcast.splat434 = shufflevector <4 x float> %broadcast.splatinsert433, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert435 = insertelement <4 x float> poison, float %i.q, i64 0
  %broadcast.splat436 = shufflevector <4 x float> %broadcast.splatinsert435, <4 x float> poison, <4 x i32> zeroinitializer
  %cmp.n445 = icmp eq i64 %i.dq, %n.vec428
  br label %.preheader198

.preheader198.lr.ph.split.us:                     ; preds = %.preheader198.lr.ph
  %i.dr = icmp eq i32 %i.ai, 1
  br i1 %i.dr, label %._crit_edge.us225, label %.loopexit

._crit_edge.us225:                                ; preds = %.preheader198.lr.ph.split.us, %._crit_edge.us225
  %.0176224.us = phi ptr [ %i.ds, %._crit_edge.us225 ], [ %i.ah, %.preheader198.lr.ph.split.us ] ; 3 uses
  %.0177223.us = phi ptr [ %i.eh, %._crit_edge.us225 ], [ %3, %.preheader198.lr.ph.split.us ] ; 2 uses
  %.0183222.us = phi i32 [ %i.eg, %._crit_edge.us225 ], [ 0, %.preheader198.lr.ph.split.us ]
  %i.ds = getelementptr i8, ptr %.0176224.us, i64 %1 ; 3 uses
  %.pre = load i8, ptr %.0176224.us, align 1, !tbaa !14
  %i.dt = uitofp i8 %.pre to float
  %i.du = getelementptr inbounds i8, ptr %.0176224.us, i64 %i.ak
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !14
  %i.dw = uitofp i8 %i.dv to float
  %i.dx = fmul float %i.o, %i.dw
  %i.dy = tail call float @llvm.fmuladd.f32(float %i.dt, float %i.n, float %i.dx)
  %i.dz = load i8, ptr %i.ds, align 1, !tbaa !14
  %i.ea = uitofp i8 %i.dz to float
  %i.eb = tail call float @llvm.fmuladd.f32(float %i.ea, float %i.p, float %i.dy)
  %i.ec = getelementptr i8, ptr %i.ds, i64 %i.ak
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !14
  %i.ee = uitofp i8 %i.ed to float
  %i.ef = tail call float @llvm.fmuladd.f32(float %i.ee, float %i.q, float %i.eb)
  store float %i.ef, ptr %.0177223.us, align 4, !tbaa !19
  %i.eg = add nuw nsw i32 %.0183222.us, 1         ; 2 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %.0177223.us, i64 %i.r
  %exitcond263.not = icmp eq i32 %i.eg, %.sroa.9.0.extract.trunc
  br i1 %exitcond263.not, label %.loopexit, label %._crit_edge.us225, !llvm.loop !109

.preheader198:                                    ; preds = %.preheader198.preheader, %._crit_edge
  %indvar = phi i64 [ 0, %.preheader198.preheader ], [ %indvar.next, %._crit_edge ] ; 3 uses
  %.0176224 = phi ptr [ %i.ah, %.preheader198.preheader ], [ %i.lp, %._crit_edge ] ; 21 uses
  %.0177223 = phi ptr [ %3, %.preheader198.preheader ], [ %i.lq, %._crit_edge ] ; 5 uses
  %.0183222 = phi i32 [ 0, %.preheader198.preheader ], [ %i.lo, %._crit_edge ]
  %i.ei = mul i64 %i.ao, %indvar                  ; 2 uses
  %i.ej = mul i64 %1, %indvar                     ; 8 uses
  %invariant.gep = getelementptr i8, ptr %.0176224, i64 %i.ak ; 5 uses
  %invariant.gep283 = getelementptr i8, ptr %.0176224, i64 %i.ak ; 5 uses
  %brmerge = select i1 %min.iters.check474, i1 true, i1 %op.rdx
  br i1 %brmerge, label %scalar.ph473.preheader, label %vector.body485

vector.body485:                                   ; preds = %.preheader198, %vector.body485
  %index486 = phi i64 [ %index.next487, %vector.body485 ], [ 0, %.preheader198 ] ; 2 uses
  %i.ek = shl nuw i64 %index486, 1                ; 11 uses
  %i.el = or disjoint i64 %i.ek, 2                ; 3 uses
  %i.em = or disjoint i64 %i.ek, 4                ; 3 uses
  %i.en = or disjoint i64 %i.ek, 6                ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.0176224, i64 %i.ek
  %i.ep = getelementptr inbounds nuw i8, ptr %.0176224, i64 %i.el
  %i.eq = getelementptr inbounds nuw i8, ptr %.0176224, i64 %i.em
  %i.er = getelementptr inbounds nuw i8, ptr %.0176224, i64 %i.en
  %i.es = load i8, ptr %i.eo, align 1, !tbaa !14, !alias.scope !150
  %i.et = load i8, ptr %i.ep, align 1, !tbaa !14, !alias.scope !150
  %i.eu = load i8, ptr %i.eq, align 1, !tbaa !14, !alias.scope !150
  %i.ev = load i8, ptr %i.er, align 1, !tbaa !14, !alias.scope !150
  %i.ew = insertelement <4 x i8> poison, i8 %i.es, i64 0
  %i.ex = insertelement <4 x i8> %i.ew, i8 %i.et, i64 1
  %i.ey = insertelement <4 x i8> %i.ex, i8 %i.eu, i64 2
  %i.ez = insertelement <4 x i8> %i.ey, i8 %i.ev, i64 3
  %i.fa = uitofp <4 x i8> %i.ez to <4 x float>
  %i.fb = getelementptr i8, ptr %invariant.gep283, i64 %i.ek ; 2 uses
  %i.fc = getelementptr i8, ptr %invariant.gep283, i64 %i.el ; 2 uses
  %i.fd = getelementptr i8, ptr %invariant.gep283, i64 %i.em ; 2 uses
  %i.fe = getelementptr i8, ptr %invariant.gep283, i64 %i.en ; 2 uses
  %i.ff = load i8, ptr %i.fb, align 1, !tbaa !14, !alias.scope !151
  %i.fg = load i8, ptr %i.fc, align 1, !tbaa !14, !alias.scope !151
  %i.fh = load i8, ptr %i.fd, align 1, !tbaa !14, !alias.scope !151
  %i.fi = load i8, ptr %i.fe, align 1, !tbaa !14, !alias.scope !151
  %i.fj = insertelement <4 x i8> poison, i8 %i.ff, i64 0
  %i.fk = insertelement <4 x i8> %i.fj, i8 %i.fg, i64 1
  %i.fl = insertelement <4 x i8> %i.fk, i8 %i.fh, i64 2
  %i.fm = insertelement <4 x i8> %i.fl, i8 %i.fi, i64 3
  %i.fn = uitofp <4 x i8> %i.fm to <4 x float>
  %i.fo = fmul <4 x float> %broadcast.splat478, %i.fn
  %i.fp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fa, <4 x float> %broadcast.splat480, <4 x float> %i.fo)
  %i.fq = add i64 %1, %i.ek                       ; 2 uses
  %i.fr = add i64 %1, %i.el                       ; 2 uses
  %i.fs = add i64 %1, %i.em                       ; 2 uses
  %i.ft = add i64 %1, %i.en                       ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.0176224, i64 %i.fq ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.0176224, i64 %i.fr ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.0176224, i64 %i.fs ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.0176224, i64 %i.ft ; 2 uses
  %i.fy = load i8, ptr %i.fu, align 1, !tbaa !14, !alias.scope !152
  %i.fz = load i8, ptr %i.fv, align 1, !tbaa !14, !alias.scope !152
  %i.ga = load i8, ptr %i.fw, align 1, !tbaa !14, !alias.scope !152
  %i.gb = load i8, ptr %i.fx, align 1, !tbaa !14, !alias.scope !152
  %i.gc = insertelement <4 x i8> poison, i8 %i.fy, i64 0
  %i.gd = insertelement <4 x i8> %i.gc, i8 %i.fz, i64 1
  %i.ge = insertelement <4 x i8> %i.gd, i8 %i.ga, i64 2
  %i.gf = insertelement <4 x i8> %i.ge, i8 %i.gb, i64 3
  %i.gg = uitofp <4 x i8> %i.gf to <4 x float>
  %i.gh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gg, <4 x float> %broadcast.splat482, <4 x float> %i.fp)
  %i.gi = getelementptr i8, ptr %invariant.gep, i64 %i.fq ; 2 uses
  %i.gj = getelementptr i8, ptr %invariant.gep, i64 %i.fr ; 2 uses
  %i.gk = getelementptr i8, ptr %invariant.gep, i64 %i.fs ; 2 uses
  %i.gl = getelementptr i8, ptr %invariant.gep, i64 %i.ft ; 2 uses
  %i.gm = load i8, ptr %i.gi, align 1, !tbaa !14, !alias.scope !153
  %i.gn = load i8, ptr %i.gj, align 1, !tbaa !14, !alias.scope !153
  %i.go = load i8, ptr %i.gk, align 1, !tbaa !14, !alias.scope !153
  %i.gp = load i8, ptr %i.gl, align 1, !tbaa !14, !alias.scope !153
  %i.gq = insertelement <4 x i8> poison, i8 %i.gm, i64 0
  %i.gr = insertelement <4 x i8> %i.gq, i8 %i.gn, i64 1
  %i.gs = insertelement <4 x i8> %i.gr, i8 %i.go, i64 2
  %i.gt = insertelement <4 x i8> %i.gs, i8 %i.gp, i64 3
  %i.gu = uitofp <4 x i8> %i.gt to <4 x float>
  %i.gv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gu, <4 x float> %broadcast.splat484, <4 x float> %i.gh)
  %i.gw = getelementptr inbounds nuw i8, ptr %.0176224, i64 %i.ek
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 1
  %i.gy = getelementptr inbounds nuw i8, ptr %.0176224, i64 %i.ek
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 3
  %i.ha = getelementptr inbounds nuw i8, ptr %.0176224, i64 %i.ek
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 5
  %i.hc = getelementptr inbounds nuw i8, ptr %.0176224, i64 %i.ek
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 7
  %i.he = load i8, ptr %i.gx, align 1, !tbaa !14, !alias.scope !150
  %i.hf = load i8, ptr %i.gz, align 1, !tbaa !14, !alias.scope !150
  %i.hg = load i8, ptr %i.hb, align 1, !tbaa !14, !alias.scope !150
  %i.hh = load i8, ptr %i.hd, align 1, !tbaa !14, !alias.scope !150
  %i.hi = insertelement <4 x i8> poison, i8 %i.he, i64 0
  %i.hj = insertelement <4 x i8> %i.hi, i8 %i.hf, i64 1
  %i.hk = insertelement <4 x i8> %i.hj, i8 %i.hg, i64 2
  %i.hl = insertelement <4 x i8> %i.hk, i8 %i.hh, i64 3
  %i.hm = uitofp <4 x i8> %i.hl to <4 x float>
  %i.hn = getelementptr i8, ptr %i.fb, i64 1
  %i.ho = getelementptr i8, ptr %i.fc, i64 1
  %i.hp = getelementptr i8, ptr %i.fd, i64 1
  %i.hq = getelementptr i8, ptr %i.fe, i64 1
  %i.hr = load i8, ptr %i.hn, align 1, !tbaa !14, !alias.scope !151
  %i.hs = load i8, ptr %i.ho, align 1, !tbaa !14, !alias.scope !151
  %i.ht = load i8, ptr %i.hp, align 1, !tbaa !14, !alias.scope !151
  %i.hu = load i8, ptr %i.hq, align 1, !tbaa !14, !alias.scope !151
  %i.hv = insertelement <4 x i8> poison, i8 %i.hr, i64 0
  %i.hw = insertelement <4 x i8> %i.hv, i8 %i.hs, i64 1
  %i.hx = insertelement <4 x i8> %i.hw, i8 %i.ht, i64 2
  %i.hy = insertelement <4 x i8> %i.hx, i8 %i.hu, i64 3
  %i.hz = uitofp <4 x i8> %i.hy to <4 x float>
  %i.ia = fmul <4 x float> %broadcast.splat478, %i.hz
  %i.ib = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hm, <4 x float> %broadcast.splat480, <4 x float> %i.ia)
end_hunk_1
