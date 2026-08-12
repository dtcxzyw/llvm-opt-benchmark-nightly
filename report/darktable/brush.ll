inline.NumInlined: 210
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_brush_get_mask:bb.a
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !133
  %i.al = sitofp reassoc nsz arcp contract afn i64 %i.ak to double
  %i.am = fmul reassoc nnan nsz arcp contract afn double %i.al, f0x3EB0C6F7A0B5ED8D
  %i.an = fadd reassoc nsz arcp contract afn double %i.am, %i.ai ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  %i.ao = fsub reassoc nsz arcp contract afn double %i.an, %i.q
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.21, ptr noundef nonnull %i.ae, double noundef %i.ao) #18
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.052 = phi nsz double [ %i.q, %bb.e ], [ %i.an, %bb.f ]
  %i.ap = load ptr, ptr %2, align 8, !tbaa !109
  %i.aq = call i32 @g_list_length(ptr noundef %i.ap) #18
  %i.ar = load ptr, ptr %i.a, align 8, !tbaa !134 ; 11 uses
  %i.as = load ptr, ptr %i.b, align 8, !tbaa !134 ; 7 uses
  %i.at = load i32, ptr %i.d, align 4, !tbaa !106 ; 2 uses
  %i.au = mul nsw i32 %i.aq, 3                    ; 4 uses
  %i.av = icmp slt i32 %i.au, %i.at
  br i1 %i.av, label %.lr.ph.i.i, label %_brush_bounding_box.exit

.lr.ph.i.i:                                       ; preds = %bb.g
  %.not.i.i = icmp eq ptr %i.as, null
  %i.aw = sext i32 %i.au to i64                   ; 9 uses
  %wide.trip.count83.i.i = sext i32 %i.at to i64  ; 6 uses
  br i1 %.not.i.i, label %.lr.ph.split.us.i.i.preheader, label %.lr.ph.split.i.i.preheader

.lr.ph.split.i.i.preheader:                       ; preds = %.lr.ph.i.i
  %i.ax = sub nsw i64 %wide.trip.count83.i.i, %i.aw
  %xtraiter = and i64 %i.ax, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.i.i.prol.loopexit, label %.lr.ph.split.i.i.prol

.lr.ph.split.i.i.prol:                            ; preds = %.lr.ph.split.i.i.preheader
  %i.ay = shl nsw i64 %i.aw, 1                    ; 2 uses
  %i.az = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.ay
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.ay
  %i.bb = load <2 x float>, ptr %i.az, align 4, !tbaa !102
  %i.bc = shufflevector <2 x float> %i.bb, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 3 uses
  %i.bd = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.bc, <float f0x00800000, float f0x00800000, float f0x7F7FFFFF, float f0x7F7FFFFF>
  %i.be = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.bc, <float f0x00800000, float f0x00800000, float f0x7F7FFFFF, float f0x7F7FFFFF>
  %i.bf = shufflevector <4 x i1> %i.bd, <4 x i1> %i.be, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bg = select <4 x i1> %i.bf, <4 x float> %i.bc, <4 x float> <float f0x00800000, float f0x00800000, float f0x7F7FFFFF, float f0x7F7FFFFF> ; 3 uses
  %i.bh = load <2 x float>, ptr %i.ba, align 4, !tbaa !102
  %i.bi = shufflevector <2 x float> %i.bh, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 3 uses
  %i.bj = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.bi, %i.bg
  %i.bk = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.bi, %i.bg
  %i.bl = shufflevector <4 x i1> %i.bj, <4 x i1> %i.bk, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bm = select <4 x i1> %i.bl, <4 x float> %i.bi, <4 x float> %i.bg ; 2 uses
  %indvars.iv.next.i.i.prol = add nsw i64 %i.aw, 1
  br label %.lr.ph.split.i.i.prol.loopexit

.lr.ph.split.i.i.prol.loopexit:                   ; preds = %.lr.ph.split.i.i.prol, %.lr.ph.split.i.i.preheader
  %.lcssa105.unr = phi <4 x float> [ poison, %.lr.ph.split.i.i.preheader ], [ %i.bm, %.lr.ph.split.i.i.prol ]
  %indvars.iv.i.i.unr = phi i64 [ %i.aw, %.lr.ph.split.i.i.preheader ], [ %indvars.iv.next.i.i.prol, %.lr.ph.split.i.i.prol ]
  %.unr = phi <4 x float> [ <float f0x00800000, float f0x00800000, float f0x7F7FFFFF, float f0x7F7FFFFF>, %.lr.ph.split.i.i.preheader ], [ %i.bm, %.lr.ph.split.i.i.prol ]
  %i.bn = add nsw i64 %wide.trip.count83.i.i, -1
  %i.bo = icmp eq i64 %i.bn, %i.aw
  br i1 %i.bo, label %_brush_bounding_box.exit, label %.lr.ph.split.i.i

.lr.ph.split.us.i.i.preheader:                    ; preds = %.lr.ph.i.i
  %i.bp = sub nsw i64 %wide.trip.count83.i.i, %i.aw
  %xtraiter106 = and i64 %i.bp, 3                 ; 2 uses
  %lcmp.mod107.not = icmp eq i64 %xtraiter106, 0
  br i1 %lcmp.mod107.not, label %.lr.ph.split.us.i.i.prol.loopexit, label %.lr.ph.split.us.i.i.prol

.lr.ph.split.us.i.i.prol:                         ; preds = %.lr.ph.split.us.i.i.preheader, %.lr.ph.split.us.i.i.prol
  %indvars.iv80.i.i.prol = phi i64 [ %indvars.iv.next81.i.i.prol, %.lr.ph.split.us.i.i.prol ], [ %i.aw, %.lr.ph.split.us.i.i.preheader ] ; 2 uses
  %i.bq = phi <4 x float> [ %i.bx, %.lr.ph.split.us.i.i.prol ], [ <float f0x00800000, float f0x00800000, float f0x7F7FFFFF, float f0x7F7FFFFF>, %.lr.ph.split.us.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.split.us.i.i.prol ], [ 0, %.lr.ph.split.us.i.i.preheader ]
  %.idx.i.i.prol = shl nsw i64 %indvars.iv80.i.i.prol, 3
  %i.br = getelementptr inbounds i8, ptr %i.ar, i64 %.idx.i.i.prol
  %i.bs = load <2 x float>, ptr %i.br, align 4, !tbaa !102
  %i.bt = shufflevector <2 x float> %i.bs, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 3 uses
  %i.bu = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.bt, %i.bq
  %i.bv = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.bt, %i.bq
  %i.bw = shufflevector <4 x i1> %i.bu, <4 x i1> %i.bv, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bx = select <4 x i1> %i.bw, <4 x float> %i.bt, <4 x float> %i.bq ; 3 uses
  %indvars.iv.next81.i.i.prol = add nsw i64 %indvars.iv80.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter106
  br i1 %prol.iter.cmp.not, label %.lr.ph.split.us.i.i.prol.loopexit, label %.lr.ph.split.us.i.i.prol, !llvm.loop !142

.lr.ph.split.us.i.i.prol.loopexit:                ; preds = %.lr.ph.split.us.i.i.prol, %.lr.ph.split.us.i.i.preheader
  %.lcssa.unr = phi <4 x float> [ poison, %.lr.ph.split.us.i.i.preheader ], [ %i.bx, %.lr.ph.split.us.i.i.prol ]
  %indvars.iv80.i.i.unr = phi i64 [ %i.aw, %.lr.ph.split.us.i.i.preheader ], [ %indvars.iv.next81.i.i.prol, %.lr.ph.split.us.i.i.prol ]
  %.unr108 = phi <4 x float> [ <float f0x00800000, float f0x00800000, float f0x7F7FFFFF, float f0x7F7FFFFF>, %.lr.ph.split.us.i.i.preheader ], [ %i.bx, %.lr.ph.split.us.i.i.prol ]
  %i.by = sub nsw i64 %i.aw, %wide.trip.count83.i.i
  %i.bz = icmp ugt i64 %i.by, -4
  br i1 %i.bz, label %_brush_bounding_box.exit, label %.lr.ph.split.us.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.split.us.i.i.prol.loopexit, %.lr.ph.split.us.i.i
  %indvars.iv80.i.i = phi i64 [ %indvars.iv.next81.i.i.3, %.lr.ph.split.us.i.i ], [ %indvars.iv80.i.i.unr, %.lr.ph.split.us.i.i.prol.loopexit ] ; 5 uses
  %i.ca = phi <4 x float> [ %i.df, %.lr.ph.split.us.i.i ], [ %.unr108, %.lr.ph.split.us.i.i.prol.loopexit ] ; 3 uses
  %.idx.i.i = shl nsw i64 %indvars.iv80.i.i, 3
  %i.cb = getelementptr inbounds i8, ptr %i.ar, i64 %.idx.i.i
  %i.cc = load <2 x float>, ptr %i.cb, align 4, !tbaa !102
  %i.cd = shufflevector <2 x float> %i.cc, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 3 uses
  %i.ce = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.cd, %i.ca
  %i.cf = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.cd, %i.ca
  %i.cg = shufflevector <4 x i1> %i.ce, <4 x i1> %i.cf, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ch = select <4 x i1> %i.cg, <4 x float> %i.cd, <4 x float> %i.ca ; 3 uses
  %indvars.iv.next81.i.i = shl i64 %indvars.iv80.i.i, 3
  %i.ci = getelementptr i8, ptr %i.ar, i64 %indvars.iv.next81.i.i
  %i.cj = getelementptr i8, ptr %i.ci, i64 8
  %i.ck = load <2 x float>, ptr %i.cj, align 4, !tbaa !102
  %i.cl = shufflevector <2 x float> %i.ck, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 3 uses
  %i.cm = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.cl, %i.ch
  %i.cn = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.cl, %i.ch
  %i.co = shufflevector <4 x i1> %i.cm, <4 x i1> %i.cn, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.cp = select <4 x i1> %i.co, <4 x float> %i.cl, <4 x float> %i.ch ; 3 uses
  %indvars.iv.next81.i.i.1 = shl i64 %indvars.iv80.i.i, 3
  %i.cq = getelementptr i8, ptr %i.ar, i64 %indvars.iv.next81.i.i.1
  %i.cr = getelementptr i8, ptr %i.cq, i64 16
  %i.cs = load <2 x float>, ptr %i.cr, align 4, !tbaa !102
  %i.ct = shufflevector <2 x float> %i.cs, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 3 uses
  %i.cu = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.ct, %i.cp
  %i.cv = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.ct, %i.cp
  %i.cw = shufflevector <4 x i1> %i.cu, <4 x i1> %i.cv, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.cx = select <4 x i1> %i.cw, <4 x float> %i.ct, <4 x float> %i.cp ; 3 uses
  %indvars.iv.next81.i.i.2 = shl i64 %indvars.iv80.i.i, 3
  %i.cy = getelementptr i8, ptr %i.ar, i64 %indvars.iv.next81.i.i.2
  %i.cz = getelementptr i8, ptr %i.cy, i64 24
  %i.da = load <2 x float>, ptr %i.cz, align 4, !tbaa !102
  %i.db = shufflevector <2 x float> %i.da, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 3 uses
  %i.dc = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.db, %i.cx
  %i.dd = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.db, %i.cx
  %i.de = shufflevector <4 x i1> %i.dc, <4 x i1> %i.dd, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.df = select <4 x i1> %i.de, <4 x float> %i.db, <4 x float> %i.cx ; 2 uses
  %indvars.iv.next81.i.i.3 = add nsw i64 %indvars.iv80.i.i, 4 ; 2 uses
  %exitcond84.not.i.i.3 = icmp eq i64 %indvars.iv.next81.i.i.3, %wide.trip.count83.i.i
  br i1 %exitcond84.not.i.i.3, label %_brush_bounding_box.exit, label %.lr.ph.split.us.i.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.split.i.i.prol.loopexit, %.lr.ph.split.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %.lr.ph.split.i.i ], [ %indvars.iv.i.i.unr, %.lr.ph.split.i.i.prol.loopexit ] ; 3 uses
  %i.dg = phi <4 x float> [ %i.ek, %.lr.ph.split.i.i ], [ %.unr, %.lr.ph.split.i.i.prol.loopexit ] ; 3 uses
  %i.dh = shl nsw i64 %indvars.iv.i.i, 1          ; 2 uses
  %i.di = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.dh
  %i.dj = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.dh
  %i.dk = load <2 x float>, ptr %i.di, align 4, !tbaa !102
  %i.dl = shufflevector <2 x float> %i.dk, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 3 uses
  %i.dm = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.dl, %i.dg
  %i.dn = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.dl, %i.dg
  %i.do = shufflevector <4 x i1> %i.dm, <4 x i1> %i.dn, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.dp = select <4 x i1> %i.do, <4 x float> %i.dl, <4 x float> %i.dg ; 3 uses
  %i.dq = load <2 x float>, ptr %i.dj, align 4, !tbaa !102
  %i.dr = shufflevector <2 x float> %i.dq, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 3 uses
  %i.ds = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.dr, %i.dp
  %i.dt = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.dr, %i.dp
  %i.du = shufflevector <4 x i1> %i.ds, <4 x i1> %i.dt, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.dv = select <4 x i1> %i.du, <4 x float> %i.dr, <4 x float> %i.dp ; 3 uses
  %indvars.iv.next.i.i = shl i64 %indvars.iv.i.i, 1
  %i.dw = add i64 %indvars.iv.next.i.i, 2         ; 2 uses
  %i.dx = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.dw
  %i.dy = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.dw
  %i.dz = load <2 x float>, ptr %i.dx, align 4, !tbaa !102
  %i.ea = shufflevector <2 x float> %i.dz, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 3 uses
  %i.eb = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.ea, %i.dv
  %i.ec = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.ea, %i.dv
  %i.ed = shufflevector <4 x i1> %i.eb, <4 x i1> %i.ec, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ee = select <4 x i1> %i.ed, <4 x float> %i.ea, <4 x float> %i.dv ; 3 uses
  %i.ef = load <2 x float>, ptr %i.dy, align 4, !tbaa !102
  %i.eg = shufflevector <2 x float> %i.ef, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 3 uses
  %i.eh = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.eg, %i.ee
  %i.ei = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.eg, %i.ee
  %i.ej = shufflevector <4 x i1> %i.eh, <4 x i1> %i.ei, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ek = select <4 x i1> %i.ej, <4 x float> %i.eg, <4 x float> %i.ee ; 2 uses
  %indvars.iv.next.i.i.1 = add nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.1, %wide.trip.count83.i.i
  br i1 %exitcond.not.i.i.1, label %_brush_bounding_box.exit, label %.lr.ph.split.i.i

_brush_bounding_box.exit:                         ; preds = %.lr.ph.split.i.i.prol.loopexit, %.lr.ph.split.i.i, %.lr.ph.split.us.i.i.prol.loopexit, %.lr.ph.split.us.i.i, %bb.g
  %i.el = phi <4 x float> [ <float f0x00800000, float f0x00800000, float f0x7F7FFFFF, float f0x7F7FFFFF>, %bb.g ], [ %i.df, %.lr.ph.split.us.i.i ], [ %.lcssa.unr, %.lr.ph.split.us.i.i.prol.loopexit ], [ %.lcssa105.unr, %.lr.ph.split.i.i.prol.loopexit ], [ %i.ek, %.lr.ph.split.i.i ] ; 2 uses
  %i.em = fadd reassoc nsz arcp contract afn <4 x float> %i.el, <float 4.000000e+00, float 4.000000e+00, float -0.000000e+00, float -0.000000e+00>
  %i.en = shufflevector <4 x float> %i.el, <4 x float> <float poison, float poison, float 2.000000e+00, float 2.000000e+00>, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.eo = fsub reassoc nsz arcp contract afn <4 x float> %i.em, %i.en
  %i.ep = fptosi <4 x float> %i.eo to <4 x i32>   ; 4 uses
  %i.eq = extractelement <4 x i32> %i.ep, i64 0
  store i32 %i.eq, ptr %5, align 4, !tbaa !106
  %i.er = extractelement <4 x i32> %i.ep, i64 1
  store i32 %i.er, ptr %4, align 4, !tbaa !106
  %i.es = extractelement <4 x i32> %i.ep, i64 3
  store i32 %i.es, ptr %6, align 4, !tbaa !106
  %i.et = extractelement <4 x i32> %i.ep, i64 2
  store i32 %i.et, ptr %7, align 4, !tbaa !106
  %i.eu = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !130
  %i.ev = and i32 %i.eu, 4112
  %or.cond41.not = icmp eq i32 %i.ev, 4112
  br i1 %or.cond41.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_brush_bounding_box.exit
  %i.ew = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.ex = call i32 @gettimeofday(ptr noundef nonnull %9, ptr noundef null) #18 ; 0 uses
  %i.ey = load i64, ptr %9, align 8, !tbaa !131
  %i.ez = add nsw i64 %i.ey, -1290608000
  %i.fa = sitofp reassoc nsz arcp contract afn i64 %i.ez to double
  %i.fb = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !133
  %i.fd = sitofp reassoc nsz arcp contract afn i64 %i.fc to double
  %i.fe = fmul reassoc nnan nsz arcp contract afn double %i.fd, f0x3EB0C6F7A0B5ED8D
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  %12 = fsub reassoc nsz arcp contract afn double %i.fa, %.052
  %13 = fadd reassoc nsz arcp contract afn double %12, %i.fe
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.22, ptr noundef nonnull %i.ew, double noundef %13) #18
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_brush_bounding_box.exit
  %i.ff = load i32, ptr %4, align 4, !tbaa !106
  %i.fg = sext i32 %i.ff to i64
  %i.fh = load i32, ptr %5, align 4, !tbaa !106
  %i.fi = sext i32 %i.fh to i64
  %i.fj = shl nsw i64 %i.fg, 2
  %i.fk = mul i64 %i.fj, %i.fi                    ; 2 uses
  %i.fl = call ptr @dt_alloc_aligned(i64 noundef %i.fk) #18 ; 6 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fl, i64 64) ]
  %.not.i46 = icmp eq ptr %i.fl, null
  br i1 %.not.i46, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store ptr null, ptr %3, align 8, !tbaa !134
  call void @free(ptr noundef %i.ar) #18
  call void @free(ptr noundef %i.as) #18
  %i.fm = load ptr, ptr %i.c, align 8, !tbaa !134
  call void @free(ptr noundef %i.fm) #18
  br label %bb.u

bb.k:                                             ; preds = %bb.i
  call void @llvm.memset.p0.i64(ptr nonnull align 64 %i.fl, i8 0, i64 %i.fk, i1 false)
  store ptr %i.fl, ptr %3, align 8, !tbaa !134
  %i.fn = load i32, ptr %i.e, align 4, !tbaa !106 ; 2 uses
  %i.fo = icmp slt i32 %i.au, %i.fn
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !134 ; 3 uses
  br i1 %i.fo, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.k
  %i.fp = load i32, ptr %4, align 4, !tbaa !106   ; 2 uses
  %i.fq = sext i32 %i.au to i64
  %wide.trip.count = sext i32 %i.fn to i64
  br label %bb.l

._crit_edge:                                      ; preds = %_brush_falloff.exit, %bb.k
  call void @free(ptr noundef %i.ar) #18
  call void @free(ptr noundef %i.as) #18
  call void @free(ptr noundef %.pre) #18
  %i.fr = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !130
  %i.fs = and i32 %i.fr, 4112
  %or.cond42.not = icmp eq i32 %i.fs, 4112
  br i1 %or.cond42.not, label %bb.t, label %bb.u

bb.l:                                             ; preds = %.lr.ph, %_brush_falloff.exit
  %indvars.iv = phi i64 [ %i.fq, %.lr.ph ], [ %indvars.iv.next, %_brush_falloff.exit ] ; 2 uses
  %i.ft = shl nsw i64 %indvars.iv, 1              ; 4 uses
  %i.fu = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.ft
  %i.fv = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.ft
  %i.fw = getelementptr inbounds [4 x i8], ptr %.pre, i64 %i.ft
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !102
  %i.fy = getelementptr [4 x i8], ptr %.pre, i64 %i.ft
  %i.fz = getelementptr i8, ptr %i.fy, i64 4
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !102 ; 2 uses
  %i.gb = load <2 x float>, ptr %i.fu, align 4, !tbaa !102
  %i.gc = fptosi <2 x float> %i.gb to <2 x i32>   ; 3 uses
  %i.gd = load <2 x float>, ptr %i.fv, align 4, !tbaa !102
  %i.ge = fptosi <2 x float> %i.gd to <2 x i32>
  %i.gf = sub nsw <2 x i32> %i.ge, %i.gc          ; 5 uses
  %foldExtExtBinop = mul nsw <2 x i32> %i.gf, %i.gf
  %foldExtExtBinop100 = mul nsw <2 x i32> %i.gf, %i.gf
  %shift = shufflevector <2 x i32> %foldExtExtBinop100, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop102 = add nuw nsw <2 x i32> %shift, %foldExtExtBinop
  %i.gg = extractelement <2 x i32> %foldExtExtBinop102, i64 0
  %i.gh = uitofp nneg i32 %i.gg to double
  %i.gi = call reassoc nsz arcp contract afn double @llvm.sqrt.f64(double %i.gh)
  %i.gj = fadd reassoc nsz arcp contract afn double %i.gi, 1.000000e+00
  %i.gk = fptosi double %i.gj to i32              ; 4 uses
  %i.gl = sitofp reassoc nsz arcp contract afn i32 %i.gk to float ; 2 uses
  %i.gm = fmul reassoc nsz arcp contract afn float %i.fx, %i.gl
  %i.gn = fptosi float %i.gm to i32               ; 3 uses
  %i.go = icmp sgt i32 %i.gk, 0
  br i1 %i.go, label %.lr.ph.i, label %_brush_falloff.exit

.lr.ph.i:                                         ; preds = %bb.l
  %i.gp = load i32, ptr %7, align 4, !tbaa !106
  %i.gq = load i32, ptr %6, align 4, !tbaa !106
  %i.gr = sitofp <2 x i32> %i.gf to <2 x float>
  %i.gs = sub nsw i32 %i.gk, %i.gn
  %i.gt = extractelement <2 x i32> %i.gc, i64 0
  %i.gu = sub i32 %i.gt, %i.gq
  %i.gv = extractelement <2 x i32> %i.gc, i64 1
  %i.gw = sub i32 %i.gv, %i.gp
  %i.gx = fpext reassoc nsz arcp contract afn float %i.ga to double
  %i.gy = sitofp reassoc nsz arcp contract afn i32 %i.gs to float
  %i.gz = insertelement <2 x float> poison, float %i.gl, i64 0
  %i.ha = shufflevector <2 x float> %i.gz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hb = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.ha
  %i.hc = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.gy
  br label %bb.m

bb.m:                                             ; preds = %bb.s, %.lr.ph.i
  %.06.i = phi i32 [ 0, %.lr.ph.i ], [ %i.io, %bb.s ] ; 4 uses
  %i.hd = uitofp nneg i32 %.06.i to float
  %i.he = insertelement <2 x float> poison, float %i.hd, i64 0
  %i.hf = shufflevector <2 x float> %i.he, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hg = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.hf, %i.gr
  %i.hh = fmul reassoc nsz arcp contract afn <2 x float> %i.hg, %i.hb ; 2 uses
  %i.hi = extractelement <2 x float> %i.hh, i64 0
  %i.hj = fptosi float %i.hi to i32
  %i.hk = add i32 %i.gu, %i.hj                    ; 3 uses
  %i.hl = extractelement <2 x float> %i.hh, i64 1
  %i.hm = fptosi float %i.hl to i32
  %i.hn = add i32 %i.gw, %i.hm                    ; 3 uses
  %.not.i47 = icmp sgt i32 %.06.i, %i.gn
  br i1 %.not.i47, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ho = sub nsw i32 %.06.i, %i.gn
  %i.hp = sitofp reassoc nsz arcp contract afn i32 %i.ho to float
  %i.hq = fmul reassoc nsz arcp contract afn float %i.hp, %i.hc
  %i.hr = fpext reassoc nsz arcp contract afn float %i.hq to double
  %i.hs = fsub reassoc nsz arcp contract afn double 1.000000e+00, %i.hr
  %i.ht = fmul reassoc nsz arcp contract afn double %i.hs, %i.gx
  %i.hu = fptrunc reassoc nsz arcp contract afn double %i.ht to float
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.hv = phi float [ %i.hu, %bb.n ], [ %i.ga, %bb.m ] ; 6 uses
  %i.hw = mul nsw i32 %i.hn, %i.fp
  %i.hx = add nsw i32 %i.hw, %i.hk
  %i.hy = sext i32 %i.hx to i64
  %i.hz = getelementptr inbounds [4 x i8], ptr %i.fl, i64 %i.hy ; 3 uses
  %i.ia = load float, ptr %i.hz, align 4, !tbaa !102, !alias.scope !144 ; 2 uses
  %i.ib = fcmp reassoc nsz arcp contract afn ogt float %i.ia, %i.hv
  %..i = select reassoc nsz arcp contract afn i1 %i.ib, float %i.ia, float %i.hv
  store float %..i, ptr %i.hz, align 4, !tbaa !102, !alias.scope !144
  %i.ic = icmp sgt i32 %i.hk, 0
  br i1 %i.ic, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.id = getelementptr i8, ptr %i.hz, i64 -4     ; 2 uses
  %i.ie = load float, ptr %i.id, align 4, !tbaa !102, !alias.scope !144 ; 2 uses
  %i.if = fcmp reassoc nsz arcp contract afn ogt float %i.ie, %i.hv
  %.84.i = select reassoc nsz arcp contract afn i1 %i.if, float %i.ie, float %i.hv
  store float %.84.i, ptr %i.id, align 4, !tbaa !102, !alias.scope !144
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ig = icmp sgt i32 %i.hn, 0
  br i1 %i.ig, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ih = add nsw i32 %i.hn, -1
  %i.ii = mul nsw i32 %i.ih, %i.fp
  %i.ij = add nsw i32 %i.ii, %i.hk
  %i.ik = sext i32 %i.ij to i64
  %i.il = getelementptr inbounds [4 x i8], ptr %i.fl, i64 %i.ik ; 2 uses
  %i.im = load float, ptr %i.il, align 4, !tbaa !102, !alias.scope !144 ; 2 uses
  %i.in = fcmp reassoc nsz arcp contract afn ogt float %i.im, %i.hv
  %.85.i = select reassoc nsz arcp contract afn i1 %i.in, float %i.im, float %i.hv
  store float %.85.i, ptr %i.il, align 4, !tbaa !102, !alias.scope !144
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.io = add nuw nsw i32 %.06.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.io, %i.gk
  br i1 %exitcond.not.i, label %_brush_falloff.exit, label %bb.m

_brush_falloff.exit:                              ; preds = %bb.s, %bb.l
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.l

bb.t:                                             ; preds = %._crit_edge
  %i.ip = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.iq = call i32 @gettimeofday(ptr noundef nonnull %8, ptr noundef null) #18 ; 0 uses
  %i.ir = load i64, ptr %8, align 8, !tbaa !131
  %i.is = add nsw i64 %i.ir, -1290608000
  %i.it = sitofp reassoc nsz arcp contract afn i64 %i.is to double
  %i.iu = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.iv = load i64, ptr %i.iu, align 8, !tbaa !133
  %i.iw = sitofp reassoc nsz arcp contract afn i64 %i.iv to double
  %i.ix = fmul reassoc nnan nsz arcp contract afn double %i.iw, f0x3EB0C6F7A0B5ED8D
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  %14 = fsub reassoc nsz arcp contract afn double %i.it, %i.q
  %15 = fadd reassoc nsz arcp contract afn double %14, %i.ix
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.23, ptr noundef nonnull %i.ip, double noundef %15) #18
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge, %bb.t, %bb.j, %bb.d
  %.1 = phi i32 [ 0, %bb.d ], [ 0, %bb.j ], [ 1, %bb.t ], [ 1, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.v

bb.v:                                             ; preds = %bb.a, %bb.u
  %.2 = phi i32 [ %.1, %bb.u ], [ 0, %bb.a ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @_brush_get_mask_roi(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) %4) #1 {
bb.a:
  %5 = alloca %struct.timeval, align 8            ; 5 uses
  %6 = alloca %struct.timeval, align 8            ; 5 uses
  %7 = alloca %struct.timeval, align 8            ; 5 uses
  %8 = alloca %struct.timeval, align 8            ; 5 uses
  %9 = alloca %struct.timeval, align 8            ; 5 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 8 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 3 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.y, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !130
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %dt_get_debug_wtime.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.h = call i32 @gettimeofday(ptr noundef nonnull %9, ptr noundef null) #18 ; 0 uses
  %i.i = load i64, ptr %9, align 8, !tbaa !131
  %i.j = add nsw i64 %i.i, -1290608000
  %i.k = sitofp reassoc nsz arcp contract afn i64 %i.j to double
  %i.l = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !133
  %i.n = sitofp reassoc nsz arcp contract afn i64 %i.m to double
  %i.o = fmul reassoc nnan nsz arcp contract afn double %i.n, f0x3EB0C6F7A0B5ED8D
  %i.p = fadd reassoc nsz arcp contract afn double %i.o, %i.k
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %dt_get_debug_wtime.exit

dt_get_debug_wtime.exit:                          ; preds = %bb.b, %bb.c
  %i.q = phi reassoc nsz arcp contract afn double [ %i.p, %bb.c ], [ 0.000000e+00, %bb.b ] ; 3 uses
  %i.r = load <2 x i32>, ptr %3, align 4, !tbaa !106 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.t = load <2 x i32>, ptr %i.s, align 4, !tbaa !106 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.v = load float, ptr %i.u, align 4, !tbaa !147 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store ptr null, ptr %i.b, align 8, !tbaa !134
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  store ptr null, ptr %i.c, align 8, !tbaa !134
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #18
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !135
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.z = load i32, ptr %i.y, align 16, !tbaa !118
  %i.aa = sitofp reassoc nsz arcp contract afn i32 %i.z to double
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !136
  %i.ad = call fastcc i32 @_brush_get_pts_border(ptr noundef %i.x, ptr noundef %2, double noundef %i.aa, i32 noundef 3, ptr noundef %i.ac, ptr noundef nonnull %i.a, ptr noundef nonnull %i.d, ptr noundef nonnull %i.b, ptr noundef nonnull %i.e, ptr noundef nonnull %i.c, ptr noundef nonnull %i.f, i32 noundef 0)
  %.not65 = icmp eq i32 %i.ad, 0
  br i1 %.not65, label %bb.d, label %bb.e

bb.d:                                             ; preds = %dt_get_debug_wtime.exit
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !134
  call void @free(ptr noundef %i.ae) #18
  %i.af = load ptr, ptr %i.b, align 8, !tbaa !134
  call void @free(ptr noundef %i.af) #18
  %i.ag = load ptr, ptr %i.c, align 8, !tbaa !134
  call void @free(ptr noundef %i.ag) #18
  br label %bb.x

bb.e:                                             ; preds = %dt_get_debug_wtime.exit
  %i.ah = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !130
  %i.ai = and i32 %i.ah, 4112
  %or.cond76.not = icmp eq i32 %i.ai, 4112
  br i1 %or.cond76.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.ak = call i32 @gettimeofday(ptr noundef nonnull %8, ptr noundef null) #18 ; 0 uses
  %i.al = load i64, ptr %8, align 8, !tbaa !131
  %i.am = add nsw i64 %i.al, -1290608000
  %i.an = sitofp reassoc nsz arcp contract afn i64 %i.am to double
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !133
  %i.aq = sitofp reassoc nsz arcp contract afn i64 %i.ap to double
  %i.ar = fmul reassoc nnan nsz arcp contract afn double %i.aq, f0x3EB0C6F7A0B5ED8D
  %i.as = fadd reassoc nsz arcp contract afn double %i.ar, %i.an ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  %i.at = fsub reassoc nsz arcp contract afn double %i.as, %i.q
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.21, ptr noundef nonnull %i.aj, double noundef %i.at) #18
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0101 = phi nsz double [ %i.q, %bb.e ], [ %i.as, %bb.f ] ; 2 uses
  %i.au = load ptr, ptr %2, align 8, !tbaa !109
  %i.av = call i32 @g_list_length(ptr noundef %i.au) #18
  %i.aw = mul nsw i32 %i.av, 3                    ; 6 uses
  %i.ax = load i32, ptr %i.e, align 4, !tbaa !106 ; 3 uses
  %i.ay = icmp slt i32 %i.aw, %i.ax               ; 2 uses
  br i1 %i.ay, label %.lr.ph, label %.preheader111

.lr.ph:                                           ; preds = %bb.g
  %i.az = load ptr, ptr %i.b, align 8, !tbaa !134 ; 8 uses
  %i.ba = sitofp <2 x i32> %i.r to <2 x float>    ; 7 uses
  %i.bb = sext i32 %i.aw to i64                   ; 7 uses
  %wide.trip.count = sext i32 %i.ax to i64        ; 5 uses
  %i.bc = sub nsw i64 %wide.trip.count, %i.bb     ; 3 uses
  %min.iters.check = icmp ult i64 %i.bc, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph
  %i.bd = xor i64 %i.bb, -1
  %i.be = add nsw i64 %i.bd, %wide.trip.count     ; 2 uses
  %i.bf = shl nsw i64 %i.bb, 3                    ; 2 uses
  %scevgep = getelementptr i8, ptr %i.az, i64 %i.bf ; 2 uses
  %mul.result = shl nsw i64 %i.be, 3              ; 2 uses
  %mul.overflow = icmp ugt i64 %i.be, 2305843009213693951
  %i.bg = getelementptr i8, ptr %scevgep, i64 %mul.result
  %i.bh = icmp ult ptr %i.bg, %scevgep
  %i.bi = getelementptr i8, ptr %i.az, i64 %i.bf
  %scevgep180 = getelementptr i8, ptr %i.bi, i64 4 ; 2 uses
  %i.bj = getelementptr i8, ptr %scevgep180, i64 %mul.result
  %i.bk = icmp ult ptr %i.bj, %scevgep180
  %i.bl = or i1 %i.bk, %mul.overflow
  %i.bm = or i1 %i.bh, %i.bl
  br i1 %i.bm, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %i.bc, -8                      ; 3 uses
  %i.bn = add nsw i64 %n.vec, %i.bb
  %broadcast.splat = shufflevector <2 x float> %i.ba, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat182 = shufflevector <2 x float> %i.ba, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert183 = insertelement <8 x float> poison, float %i.v, i64 0
  %broadcast.splat184 = shufflevector <8 x float> %broadcast.splatinsert183, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bo = add i64 %index, %i.bb
  %i.bp = shl i64 %i.bo, 3
  %i.bq = getelementptr i8, ptr %i.az, i64 %i.bp  ; 2 uses
  %wide.vec = load <16 x float>, ptr %i.bq, align 4, !tbaa !102 ; 2 uses
  %strided.vec = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec185 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.br = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec, %broadcast.splat184
  %i.bs = fsub reassoc nsz arcp contract afn <8 x float> %i.br, %broadcast.splat
  %i.bt = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec185, %broadcast.splat184
  %i.bu = fsub reassoc nsz arcp contract afn <8 x float> %i.bt, %broadcast.splat182
  %interleaved.vec = shufflevector <8 x float> %i.bs, <8 x float> %i.bu, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.bq, align 4, !tbaa !102
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !148

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bc, %n.vec
  br i1 %cmp.n, label %.preheader111, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %i.bb, %vector.scevcheck ], [ %i.bb, %.lr.ph ], [ %i.bn, %middle.block ] ; 4 uses
  %i.bw = sub nsw i64 %wide.trip.count, %indvars.iv.ph
  %xtraiter = and i64 %i.bw, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol.preheader

scalar.ph.prol.preheader:                         ; preds = %scalar.ph.preheader
  %i.bx = insertelement <2 x float> poison, float %i.v, i64 0
  %i.by = shufflevector <2 x float> %i.bx, <2 x float> poison, <2 x i32> zeroinitializer
  br label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.prol, %scalar.ph.prol.preheader
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.prol.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.prol.preheader ]
  %.idx.prol = shl i64 %indvars.iv.prol, 3
  %i.bz = getelementptr i8, ptr %i.az, i64 %.idx.prol ; 2 uses
  %i.ca = load <2 x float>, ptr %i.bz, align 4, !tbaa !102
  %i.cb = fmul reassoc nsz arcp contract afn <2 x float> %i.ca, %i.by
  %i.cc = fsub reassoc nsz arcp contract afn <2 x float> %i.cb, %i.ba
  store <2 x float> %i.cc, ptr %i.bz, align 4, !tbaa !102
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, 1 ; 2 uses
end_hunk_0
begin_hunk_1_@_brush_get_mask_roi:bb.a
  %i.jn = load i64, ptr %i.jm, align 8, !tbaa !133
  %i.jo = sitofp reassoc nsz arcp contract afn i64 %i.jn to double
  %i.jp = fmul reassoc nnan nsz arcp contract afn double %i.jo, f0x3EB0C6F7A0B5ED8D
  %i.jq = fadd reassoc nsz arcp contract afn double %i.jp, %i.jl ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  %i.jr = fsub reassoc nsz arcp contract afn double %i.jq, %.0101
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.22, ptr noundef nonnull %i.jh, double noundef %i.jr) #18
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_brush_bounding_box_raw.exit
  %.1102 = phi nsz double [ %.0101, %_brush_bounding_box_raw.exit ], [ %i.jq, %bb.h ]
  %i.js = shufflevector <2 x i32> %i.t, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.jt = sitofp <4 x i32> %i.js to <4 x float>
  %i.ju = shufflevector <4 x float> %i.jt, <4 x float> <float poison, float poison, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.jv = fcmp reassoc nsz arcp contract afn ult <4 x float> %i.il, %i.ju
  %i.jw = fcmp reassoc nsz arcp contract afn uge <4 x float> %i.il, %i.ju
  %i.jx = shufflevector <4 x i1> %i.jv, <4 x i1> %i.jw, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.jy = freeze <4 x i1> %i.jx
  %i.jz = bitcast <4 x i1> %i.jy to i4
  %i.ka = icmp eq i4 %i.jz, -1
  br i1 %i.ka, label %.preheader, label %bb.j

.preheader:                                       ; preds = %bb.i
  %.pre147 = load ptr, ptr %i.c, align 8          ; 3 uses
  br i1 %i.ay, label %.lr.ph126, label %._crit_edge127

.lr.ph126:                                        ; preds = %.preheader
  %i.kb = extractelement <2 x i32> %i.t, i64 0    ; 5 uses
  %i.kc = zext nneg i32 %i.kb to i64
  %i.kd = sext i32 %i.aw to i64
  %wide.trip.count145 = sext i32 %i.ax to i64
  %i.ke = extractelement <2 x i32> %i.t, i64 1    ; 3 uses
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @free(ptr noundef %.pre) #18
  call void @free(ptr noundef %i.ik) #18
  %i.kf = load ptr, ptr %i.c, align 8, !tbaa !134
  call void @free(ptr noundef %i.kf) #18
  br label %bb.x

._crit_edge127:                                   ; preds = %_brush_falloff_roi.exit, %.preheader
  call void @free(ptr noundef %.pre) #18
  call void @free(ptr noundef %i.ik) #18
  call void @free(ptr noundef %.pre147) #18
  %i.kg = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !130 ; 2 uses
  %i.kh = and i32 %i.kg, 4112
  %or.cond80.not = icmp eq i32 %i.kh, 4112
  br i1 %or.cond80.not, label %bb.u, label %bb.v

bb.k:                                             ; preds = %.lr.ph126, %_brush_falloff_roi.exit
  %indvars.iv142 = phi i64 [ %i.kd, %.lr.ph126 ], [ %indvars.iv.next143, %_brush_falloff_roi.exit ] ; 2 uses
  %i.ki = shl nsw i64 %indvars.iv142, 1           ; 4 uses
  %i.kj = getelementptr inbounds [4 x i8], ptr %.pre, i64 %i.ki
  %i.kk = getelementptr inbounds [4 x i8], ptr %i.ik, i64 %i.ki
  %i.kl = load <2 x float>, ptr %i.kj, align 4, !tbaa !102
  %i.km = fptosi <2 x float> %i.kl to <2 x i32>   ; 4 uses
  %i.kn = load <2 x float>, ptr %i.kk, align 4, !tbaa !102
  %i.ko = fptosi <2 x float> %i.kn to <2 x i32>   ; 3 uses
  %i.kp = extractelement <2 x i32> %i.km, i64 0   ; 2 uses
  %i.kq = extractelement <2 x i32> %i.ko, i64 0   ; 2 uses
  %i.kr = call i32 @llvm.smax.i32(i32 %i.kp, i32 %i.kq)
  %i.ks = icmp sgt i32 %i.kr, -1
  %i.kt = call i32 @llvm.smin.i32(i32 %i.kp, i32 %i.kq)
  %.not74 = icmp slt i32 %i.kt, %i.kb
  %or.cond78 = select i1 %i.ks, i1 %.not74, i1 false
  br i1 %or.cond78, label %bb.l, label %_brush_falloff_roi.exit

bb.l:                                             ; preds = %bb.k
  %i.ku = extractelement <2 x i32> %i.km, i64 1   ; 2 uses
  %i.kv = extractelement <2 x i32> %i.ko, i64 1   ; 2 uses
  %i.kw = call i32 @llvm.smax.i32(i32 %i.ku, i32 %i.kv)
  %i.kx = icmp sgt i32 %i.kw, -1
  %i.ky = call i32 @llvm.smin.i32(i32 %i.ku, i32 %i.kv)
  %.not75 = icmp slt i32 %i.ky, %i.ke
  %or.cond79 = select i1 %i.kx, i1 %.not75, i1 false
  br i1 %or.cond79, label %bb.m, label %_brush_falloff_roi.exit

bb.m:                                             ; preds = %bb.l
  %i.kz = getelementptr inbounds [4 x i8], ptr %.pre147, i64 %i.ki
  %i.la = load float, ptr %i.kz, align 4, !tbaa !102
  %i.lb = getelementptr [4 x i8], ptr %.pre147, i64 %i.ki
  %i.lc = getelementptr i8, ptr %i.lb, i64 4
  %i.ld = load float, ptr %i.lc, align 4, !tbaa !102 ; 2 uses
  %i.le = sub nsw <2 x i32> %i.ko, %i.km          ; 3 uses
  %i.lf = mul nsw <2 x i32> %i.le, %i.le
  %i.lg = call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %i.lf)
  %i.lh = uitofp nneg i32 %i.lg to double
  %i.li = call reassoc nsz arcp contract afn double @llvm.sqrt.f64(double %i.lh)
  %i.lj = fadd reassoc nsz arcp contract afn double %i.li, 1.000000e+00
  %i.lk = fptosi double %i.lj to i32              ; 4 uses
  %i.ll = sitofp reassoc nsz arcp contract afn i32 %i.lk to float ; 2 uses
  %i.lm = fmul reassoc nsz arcp contract afn float %i.la, %i.ll
  %i.ln = fptosi float %i.lm to i32               ; 2 uses
  %i.lo = sitofp <2 x i32> %i.le to <2 x float>
  %i.lp = insertelement <2 x float> poison, float %i.ll, i64 0
  %i.lq = shufflevector <2 x float> %i.lp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lr = fdiv reassoc nsz arcp contract afn <2 x float> %i.lo, %i.lq ; 3 uses
  %i.ls = extractelement <2 x float> %i.lr, i64 0
  %i.lt = fcmp reassoc nsz arcp contract afn ole float %i.ls, 0.000000e+00
  %i.lu = select i1 %i.lt, i32 -1, i32 1          ; 2 uses
  %i.lv = extractelement <2 x float> %i.lr, i64 1
  %i.lw = fcmp reassoc nsz arcp contract afn ole float %i.lv, 0.000000e+00
  %i.lx = select i1 %i.lw, i32 -1, i32 1          ; 2 uses
  %i.ly = sub nsw i32 %i.lk, %i.ln
  %i.lz = sitofp reassoc nsz arcp contract afn i32 %i.ly to float
  %i.ma = fdiv reassoc nsz arcp contract afn float %i.ld, %i.lz
  %i.mb = icmp sgt i32 %i.lk, 0
  br i1 %i.mb, label %.lr.ph.i86, label %_brush_falloff_roi.exit

.lr.ph.i86:                                       ; preds = %bb.m
  %i.mc = sitofp <2 x i32> %i.km to <2 x float>
  %i.md = mul nsw i32 %i.lx, %i.kb
  %i.me = sext i32 %i.lu to i64
  %i.mf = sext i32 %i.md to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.t, %.lr.ph.i86
  %.0829.i = phi float [ %i.ld, %.lr.ph.i86 ], [ %spec.select.i, %bb.t ] ; 2 uses
  %.0838.i = phi i32 [ 0, %.lr.ph.i86 ], [ %i.nl, %bb.t ] ; 2 uses
  %i.mg = phi <2 x float> [ %i.mc, %.lr.ph.i86 ], [ %i.ml, %bb.t ] ; 3 uses
  %i.mh = extractelement <2 x float> %i.mg, i64 0
  %i.mi = fptosi float %i.mh to i32               ; 4 uses
  %i.mj = extractelement <2 x float> %i.mg, i64 1
  %i.mk = fptosi float %i.mj to i32               ; 4 uses
  %i.ml = fadd reassoc nsz arcp contract afn <2 x float> %i.mg, %i.lr
  %i.mm = icmp sgt i32 %.0838.i, %i.ln
  %i.mn = fsub reassoc nsz arcp contract afn float %.0829.i, %i.ma
  %spec.select.i = select i1 %i.mm, float %i.mn, float %.0829.i ; 7 uses
  %i.mo = icmp slt i32 %i.mi, 0
  br i1 %i.mo, label %bb.t, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.mp = icmp sgt i32 %i.kb, %i.mi
  %i.mq = icmp sgt i32 %i.mk, -1
  %.not.i87 = icmp sgt i32 %i.ke, %i.mk
  %i.mr = and i1 %i.mq, %.not.i87
  %or.cond93.i = select i1 %i.mp, i1 %i.mr, i1 false
  br i1 %or.cond93.i, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  %i.ms = zext nneg i32 %i.mk to i64
  %i.mt = mul nuw nsw i64 %i.ms, %i.kc
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.mt
  %i.mv = zext nneg i32 %i.mi to i64
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %i.mu, i64 %i.mv ; 4 uses
  %i.mx = load float, ptr %i.mw, align 4, !tbaa !102 ; 2 uses
  %i.my = fcmp reassoc nsz arcp contract afn ogt float %i.mx, %spec.select.i
  %.spec.select.i = select reassoc nsz arcp contract afn i1 %i.my, float %i.mx, float %spec.select.i
  store float %.spec.select.i, ptr %i.mw, align 4, !tbaa !102
  %i.mz = add nsw i32 %i.lu, %i.mi                ; 2 uses
  %i.na = icmp sgt i32 %i.mz, -1
  %i.nb = icmp slt i32 %i.mz, %i.kb
  %or.cond94.i = and i1 %i.na, %i.nb
  br i1 %or.cond94.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.nc = getelementptr inbounds [4 x i8], ptr %i.mw, i64 %i.me ; 2 uses
  %i.nd = load float, ptr %i.nc, align 4, !tbaa !102 ; 2 uses
  %i.ne = fcmp reassoc nsz arcp contract afn ogt float %i.nd, %spec.select.i
  %.spec.select95.i = select reassoc nsz arcp contract afn i1 %i.ne, float %i.nd, float %spec.select.i
  store float %.spec.select95.i, ptr %i.nc, align 4, !tbaa !102
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.nf = add nsw i32 %i.lx, %i.mk                ; 2 uses
  %i.ng = icmp sgt i32 %i.nf, -1
  %i.nh = icmp slt i32 %i.nf, %i.ke
  %or.cond96.i = and i1 %i.ng, %i.nh
  br i1 %or.cond96.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ni = getelementptr inbounds [4 x i8], ptr %i.mw, i64 %i.mf ; 2 uses
  %i.nj = load float, ptr %i.ni, align 4, !tbaa !102 ; 2 uses
  %i.nk = fcmp reassoc nsz arcp contract afn ogt float %i.nj, %spec.select.i
  %.spec.select97.i = select reassoc nsz arcp contract afn i1 %i.nk, float %i.nj, float %spec.select.i
  store float %.spec.select97.i, ptr %i.ni, align 4, !tbaa !102
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.o, %bb.n
  %i.nl = add nuw nsw i32 %.0838.i, 1             ; 2 uses
  %exitcond.not.i88 = icmp eq i32 %i.nl, %i.lk
  br i1 %exitcond.not.i88, label %_brush_falloff_roi.exit, label %bb.n

_brush_falloff_roi.exit:                          ; preds = %bb.t, %bb.m, %bb.k, %bb.l
  %indvars.iv.next143 = add nsw i64 %indvars.iv142, 1 ; 2 uses
  %exitcond146.not = icmp eq i64 %indvars.iv.next143, %wide.trip.count145
  br i1 %exitcond146.not, label %._crit_edge127, label %bb.k

bb.u:                                             ; preds = %._crit_edge127
  %i.nm = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.nn = call i32 @gettimeofday(ptr noundef nonnull %6, ptr noundef null) #18 ; 0 uses
  %i.no = load i64, ptr %6, align 8, !tbaa !131
  %i.np = add nsw i64 %i.no, -1290608000
  %i.nq = sitofp reassoc nsz arcp contract afn i64 %i.np to double
  %i.nr = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ns = load i64, ptr %i.nr, align 8, !tbaa !133
  %i.nt = sitofp reassoc nsz arcp contract afn i64 %i.ns to double
  %i.nu = fmul reassoc nnan nsz arcp contract afn double %i.nt, f0x3EB0C6F7A0B5ED8D
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  %10 = fsub reassoc nsz arcp contract afn double %i.nq, %.1102
  %11 = fadd reassoc nsz arcp contract afn double %10, %i.nu
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.24, ptr noundef nonnull %i.nm, double noundef %11) #18
  %.pre148 = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !130
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge127, %bb.u
  %i.nv = phi i32 [ %i.kg, %._crit_edge127 ], [ %.pre148, %bb.u ]
  %i.nw = and i32 %i.nv, 4112
  %or.cond81.not = icmp eq i32 %i.nw, 4112
  br i1 %or.cond81.not, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.nx = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.ny = call i32 @gettimeofday(ptr noundef nonnull %5, ptr noundef null) #18 ; 0 uses
  %i.nz = load i64, ptr %5, align 8, !tbaa !131
  %i.oa = add nsw i64 %i.nz, -1290608000
  %i.ob = sitofp reassoc nsz arcp contract afn i64 %i.oa to double
  %i.oc = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.od = load i64, ptr %i.oc, align 8, !tbaa !133
  %i.oe = sitofp reassoc nsz arcp contract afn i64 %i.od to double
  %i.of = fmul reassoc nnan nsz arcp contract afn double %i.oe, f0x3EB0C6F7A0B5ED8D
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %12 = fsub reassoc nsz arcp contract afn double %i.ob, %i.q
  %13 = fadd reassoc nsz arcp contract afn double %12, %i.of
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.23, ptr noundef nonnull %i.nx, double noundef %13) #18
  br label %bb.x

bb.x:                                             ; preds = %bb.j, %bb.w, %bb.v, %bb.d
  %.1 = phi i32 [ 0, %bb.d ], [ 1, %bb.v ], [ 1, %bb.w ], [ 1, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.y

bb.y:                                             ; preds = %bb.a, %bb.x
  %.2 = phi i32 [ %.1, %bb.x ], [ 0, %bb.a ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @_brush_get_area(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5, ptr nofree noundef writeonly captures(none) %6) #1 {
bb.a:
  %i.a = tail call fastcc i32 @_get_area(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef 0)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @_brush_get_source_area(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5, ptr nofree noundef writeonly captures(none) %6) #1 {
bb.a:
  %i.a = tail call fastcc i32 @_get_area(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef 1)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @_brush_events_mouse_moved(ptr noundef %0, float noundef %1, float noundef %2, double noundef %3, i32 %4, float noundef %5, ptr noundef %6, i32 %7, ptr noundef %8, i32 noundef %9) #1 {
bb.a:
  %i.a = alloca [2 x float], align 8              ; 6 uses
  %i.b = alloca [2 x float], align 8              ; 5 uses
  %i.c = alloca [2 x float], align 8              ; 5 uses
  %i.d = alloca [2 x float], align 4              ; 6 uses
  %i.e = alloca [2 x float], align 8              ; 6 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %i.i = alloca float, align 4                    ; 3 uses
  %i.j = alloca i32, align 4                      ; 4 uses
  %.not = icmp eq ptr %8, null
  br i1 %.not, label %.critedge337, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %8, align 8, !tbaa !110
  %i.l = tail call ptr @g_list_nth_data(ptr noundef %i.k, i32 noundef %9) #18 ; 6 uses
  %.not319 = icmp eq ptr %i.l, null
  br i1 %.not319, label %.critedge337, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !21 ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  %i.o = load ptr, ptr %i.n, align 16, !tbaa !129 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 152
  %i.q = load float, ptr %i.p, align 8, !tbaa !157 ; 2 uses
  %i.r = fcmp reassoc nsz arcp contract afn ogt float %i.q, 0.000000e+00
  %i.s = select reassoc nsz arcp contract afn i1 %i.r, float %i.q, float 1.000000e+00
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 156
  %i.u = load i32, ptr %i.t, align 4, !tbaa !165  ; 2 uses
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = uitofp nneg i32 %i.u to float
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 160
  %i.y = load i32, ptr %i.x, align 16, !tbaa !166
  %i.z = sitofp reassoc nsz arcp contract afn i32 %i.y to float
  %i.aa = insertelement <2 x float> poison, float %i.w, i64 0
  %i.ab = insertelement <2 x float> %i.aa, float %i.z, i64 1
  br label %dt_masks_get_image_size.exit

bb.e:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 2760
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !167 ; 3 uses
  %.not.i = icmp eq ptr %i.ad, null
  br i1 %.not.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 156
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !165 ; 2 uses
  %i.ag = icmp sgt i32 %i.af, 0
  br i1 %i.ag, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 160
  %i.ai = load i32, ptr %i.ah, align 16, !tbaa !166
  %i.aj = sitofp reassoc nsz arcp contract afn i32 %i.ai to float
  %i.ak = uitofp nneg i32 %i.af to float
  %i.al = insertelement <2 x float> poison, float %i.s, i64 0
  %i.am = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> zeroinitializer
  %i.an = insertelement <2 x float> poison, float %i.ak, i64 0
  %i.ao = insertelement <2 x float> %i.an, float %i.aj, i64 1
  %i.ap = fdiv reassoc nsz arcp contract afn <2 x float> %i.ao, %i.am
  br label %dt_masks_get_image_size.exit

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %i.o, i64 376
  %i.ar = load <2 x i32>, ptr %i.aq, align 8, !tbaa !106
  %i.as = sitofp <2 x i32> %i.ar to <2 x float>
  br label %dt_masks_get_image_size.exit

dt_masks_get_image_size.exit:                     ; preds = %bb.d, %bb.g, %bb.h
  %i.at = phi <2 x float> [ %i.ab, %bb.d ], [ %i.as, %bb.h ], [ %i.ap, %bb.g ] ; 10 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.o, i64 144
  %i.av = load <2 x i32>, ptr %i.au, align 16, !tbaa !106
  %i.aw = sitofp <2 x i32> %i.av to <2 x float>   ; 8 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %8, i64 172
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !11
  %.not320 = icmp eq i32 %i.ay, 0
  br i1 %.not320, label %bb.u, label %bb.i

bb.i:                                             ; preds = %dt_masks_get_image_size.exit
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !168 ; 5 uses
  %.not332 = icmp eq ptr %i.ba, null
  br i1 %.not332, label %bb.t, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bb = insertelement <2 x float> poison, float %1, i64 0
  %i.bc = insertelement <2 x float> %i.bb, float %2, i64 1
  %i.bd = fmul reassoc nsz arcp contract afn <2 x float> %i.at, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 136 ; 3 uses
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !101 ; 2 uses
  %i.bg = add i64 %i.bf, 2                        ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 144
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !169 ; 3 uses
  %.not.i349 = icmp ult i64 %i.bg, %i.bi
  br i1 %.not.i349, label %bb.m, label %bb.k, !prof !170

bb.k:                                             ; preds = %bb.j
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %dt_masks_dynbuf_add_2.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bk = shl i64 %i.bi, 1
  %i.bl = add i64 %i.bk, 2
  %i.bm = tail call fastcc i32 @_dt_masks_dynbuf_growto(ptr noundef nonnull %i.ba, i64 noundef %i.bl)
  %.not11.i = icmp eq i32 %i.bm, 0
  br i1 %.not11.i, label %dt_masks_dynbuf_add_2.exit, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.l
  %.pre.i = load i64, ptr %i.be, align 8, !tbaa !101 ; 2 uses
  %.pre12.i = add i64 %.pre.i, 2
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge.i, %bb.j
  %.pre-phi.i = phi i64 [ %.pre12.i, %._crit_edge.i ], [ %i.bg, %bb.j ]
  %i.bn = phi i64 [ %.pre.i, %._crit_edge.i ], [ %i.bf, %bb.j ]
  %i.bo = load ptr, ptr %i.ba, align 8, !tbaa !98
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.bn
  store i64 %.pre-phi.i, ptr %i.be, align 8, !tbaa !101
  store <2 x float> %i.bd, ptr %i.bp, align 4, !tbaa !102
  br label %dt_masks_dynbuf_add_2.exit

dt_masks_dynbuf_add_2.exit:                       ; preds = %bb.k, %bb.l, %bb.m
  %i.bq = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !97 ; 5 uses
  %.val347 = load ptr, ptr %i.br, align 8, !tbaa !98 ; 2 uses
  %i.bs = getelementptr i8, ptr %i.br, i64 136    ; 3 uses
  %.val348 = load i64, ptr %i.bs, align 8, !tbaa !101 ; 3 uses
  %i.bt = getelementptr [4 x i8], ptr %.val347, i64 %.val348 ; 2 uses
  %i.bu = getelementptr i8, ptr %i.bt, i64 -16
  %i.bv = load <2 x float>, ptr %i.bu, align 4, !tbaa !102
  %i.bw = getelementptr i8, ptr %i.bt, i64 -8
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !102
  %i.by = add i64 %.val348, 2                     ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.br, i64 144
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !169 ; 3 uses
  %.not.i350 = icmp ult i64 %i.by, %i.ca
  br i1 %.not.i350, label %bb.p, label %bb.n, !prof !170

bb.n:                                             ; preds = %dt_masks_dynbuf_add_2.exit
  %i.cb = icmp eq i64 %i.ca, 0
  br i1 %i.cb, label %dt_masks_dynbuf_add_2.exit356, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cc = shl i64 %i.ca, 1
  %i.cd = add i64 %i.cc, 2
  %i.ce = tail call fastcc i32 @_dt_masks_dynbuf_growto(ptr noundef nonnull %i.br, i64 noundef %i.cd)
  %.not11.i351 = icmp eq i32 %i.ce, 0
  br i1 %.not11.i351, label %dt_masks_dynbuf_add_2.exit356, label %._crit_edge.i352

._crit_edge.i352:                                 ; preds = %bb.o
  %.pre.i353 = load i64, ptr %i.bs, align 8, !tbaa !101 ; 2 uses
  %.pre12.i354 = add i64 %.pre.i353, 2
  %.pre = load ptr, ptr %i.br, align 8, !tbaa !98
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge.i352, %dt_masks_dynbuf_add_2.exit
  %i.cf = phi ptr [ %.pre, %._crit_edge.i352 ], [ %.val347, %dt_masks_dynbuf_add_2.exit ]
  %.pre-phi.i355 = phi i64 [ %.pre12.i354, %._crit_edge.i352 ], [ %i.by, %dt_masks_dynbuf_add_2.exit ]
  %i.cg = phi i64 [ %.pre.i353, %._crit_edge.i352 ], [ %.val348, %dt_masks_dynbuf_add_2.exit ]
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.cg
  store i64 %.pre-phi.i355, ptr %i.bs, align 8, !tbaa !101
  store <2 x float> %i.bv, ptr %i.ch, align 4, !tbaa !102
end_hunk_1
begin_hunk_2_@_brush_get_pts_border:bb.a
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.19, ptr noundef nonnull %i.fh, i64 noundef %i.qf, ptr noundef nonnull %i.pz, ptr noundef %i.qg) #18
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %i.qh = load ptr, ptr %.0453, align 8, !tbaa !98
  call void @free(ptr noundef %i.qh) #18
  br label %._crit_edge.i630

._crit_edge.i630:                                 ; preds = %bb.bt, %bb.bq
  store i64 %i.px, ptr %i.fg, align 8, !tbaa !169
  store ptr %i.pz, ptr %.0453, align 8, !tbaa !98
  %.pre.i631 = load i64, ptr %i.ff, align 8, !tbaa !101 ; 2 uses
  %.pre12.i632 = add i64 %.pre.i631, 2
  br label %bb.bu

bb.bu:                                            ; preds = %.split470._crit_edge, %._crit_edge.i630
  %i.qi = phi ptr [ %i.pz, %._crit_edge.i630 ], [ %.pre767, %.split470._crit_edge ]
  %.pre-phi.i633 = phi i64 [ %.pre12.i632, %._crit_edge.i630 ], [ %i.pt, %.split470._crit_edge ] ; 2 uses
  %i.qj = phi i64 [ %.pre.i631, %._crit_edge.i630 ], [ %phi.call472768, %.split470._crit_edge ]
  %i.qk = getelementptr inbounds nuw [4 x i8], ptr %i.qi, i64 %i.qj
  store i64 %.pre-phi.i633, ptr %i.ff, align 8, !tbaa !101
  store <2 x float> %i.ps, ptr %i.qk, align 4, !tbaa !102
  br label %dt_masks_dynbuf_add_2.exit634

dt_masks_dynbuf_add_2.exit634:                    ; preds = %_dt_masks_dynbuf_growto.exit682.thread, %bb.bo, %bb.bu
  %phi.call472 = phi i64 [ %phi.call472.pre, %_dt_masks_dynbuf_growto.exit682.thread ], [ %phi.call472768, %bb.bo ], [ %.pre-phi.i633, %bb.bu ] ; 2 uses
  %.val575 = load i64, ptr %i.fc, align 8, !tbaa !101
  %i.ql = icmp ult i64 %phi.call472, %.val575
  br i1 %i.ql, label %.split470, label %.loopexit

.loopexit:                                        ; preds = %dt_masks_dynbuf_add_2.exit634, %.split471, %bb.bn
  %i.qm = sub nsw i32 0, %.0459741
  br label %bb.cx

bb.bv:                                            ; preds = %.loopexit726
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #18
  store i64 -36028797027352577, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #18
  store i64 -36028797027352577, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #18
  store i64 -36028797027352577, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #18
  store i64 -36028797027352577, ptr %i.k, align 8
  call fastcc void @_brush_points_recurs(ptr noundef %i.a, ptr noundef %i.b, double noundef 0.000000e+00, double noundef 1.000000e+00, ptr noundef %i.j, ptr noundef %i.k, ptr noundef %i.h, ptr noundef %i.i, ptr noundef %i.e, ptr noundef %i.f, ptr noundef %i.g, ptr noundef %i.ad, ptr noundef %.0452, ptr noundef %.0453)
  %i.qn = load <2 x float>, ptr %i.e, align 8, !tbaa !102
  %i.qo = load i64, ptr %i.fc, align 8, !tbaa !101 ; 2 uses
  %i.qp = add i64 %i.qo, 2                        ; 2 uses
  %i.qq = load i64, ptr %i.fd, align 8, !tbaa !169 ; 3 uses
  %.not.i635 = icmp ult i64 %i.qp, %i.qq
  br i1 %.not.i635, label %bb.by, label %bb.bw, !prof !170

bb.bw:                                            ; preds = %bb.bv
  %i.qr = icmp eq i64 %i.qq, 0
  br i1 %i.qr, label %dt_masks_dynbuf_add_2.exit641, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.qs = shl i64 %i.qq, 1
  %i.qt = add i64 %i.qs, 2
  %i.qu = call fastcc i32 @_dt_masks_dynbuf_growto(ptr noundef nonnull %i.ad, i64 noundef %i.qt)
  %.not11.i636 = icmp eq i32 %i.qu, 0
  br i1 %.not11.i636, label %dt_masks_dynbuf_add_2.exit641, label %._crit_edge.i637

._crit_edge.i637:                                 ; preds = %bb.bx
  %.pre.i638 = load i64, ptr %i.fc, align 8, !tbaa !101 ; 2 uses
  %.pre12.i639 = add i64 %.pre.i638, 2
  br label %bb.by

bb.by:                                            ; preds = %._crit_edge.i637, %bb.bv
  %.pre-phi.i640 = phi i64 [ %.pre12.i639, %._crit_edge.i637 ], [ %i.qp, %bb.bv ]
  %i.qv = phi i64 [ %.pre.i638, %._crit_edge.i637 ], [ %i.qo, %bb.bv ]
  %i.qw = load ptr, ptr %i.ad, align 8, !tbaa !98
  %i.qx = getelementptr inbounds nuw [4 x i8], ptr %i.qw, i64 %i.qv
  store i64 %.pre-phi.i640, ptr %i.fc, align 8, !tbaa !101
  store <2 x float> %i.qn, ptr %i.qx, align 4, !tbaa !102
  br label %dt_masks_dynbuf_add_2.exit641

dt_masks_dynbuf_add_2.exit641:                    ; preds = %bb.bw, %bb.bx, %bb.by
  br i1 %.not492, label %dt_masks_dynbuf_add_2.exit648, label %bb.bz

bb.bz:                                            ; preds = %dt_masks_dynbuf_add_2.exit641
  %i.qy = load <2 x float>, ptr %i.g, align 8, !tbaa !102
  %i.qz = load i64, ptr %i.ff, align 8, !tbaa !101 ; 2 uses
  %i.ra = add i64 %i.qz, 2                        ; 2 uses
  %i.rb = load i64, ptr %i.fg, align 8, !tbaa !169 ; 3 uses
  %.not.i642 = icmp ult i64 %i.ra, %i.rb
  br i1 %.not.i642, label %bb.cc, label %bb.ca, !prof !170

bb.ca:                                            ; preds = %bb.bz
  %i.rc = icmp eq i64 %i.rb, 0
  br i1 %i.rc, label %dt_masks_dynbuf_add_2.exit648, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.rd = shl i64 %i.rb, 1
  %i.re = add i64 %i.rd, 2
  %i.rf = call fastcc i32 @_dt_masks_dynbuf_growto(ptr noundef nonnull %.0453, i64 noundef %i.re)
  %.not11.i643 = icmp eq i32 %i.rf, 0
  br i1 %.not11.i643, label %dt_masks_dynbuf_add_2.exit648, label %._crit_edge.i644

._crit_edge.i644:                                 ; preds = %bb.cb
  %.pre.i645 = load i64, ptr %i.ff, align 8, !tbaa !101 ; 2 uses
  %.pre12.i646 = add i64 %.pre.i645, 2
  br label %bb.cc

bb.cc:                                            ; preds = %._crit_edge.i644, %bb.bz
  %.pre-phi.i647 = phi i64 [ %.pre12.i646, %._crit_edge.i644 ], [ %i.ra, %bb.bz ]
  %i.rg = phi i64 [ %.pre.i645, %._crit_edge.i644 ], [ %i.qz, %bb.bz ]
  %i.rh = load ptr, ptr %.0453, align 8, !tbaa !98
  %i.ri = getelementptr inbounds nuw [4 x i8], ptr %i.rh, i64 %i.rg
  store i64 %.pre-phi.i647, ptr %i.ff, align 8, !tbaa !101
  store <2 x float> %i.qy, ptr %i.ri, align 4, !tbaa !102
  br label %dt_masks_dynbuf_add_2.exit648

dt_masks_dynbuf_add_2.exit648:                    ; preds = %bb.cc, %bb.cb, %bb.ca, %dt_masks_dynbuf_add_2.exit641
  br i1 %.not715, label %dt_masks_dynbuf_add_2.exit655.thread, label %bb.cd

bb.cd:                                            ; preds = %dt_masks_dynbuf_add_2.exit648
  %i.rj = load float, ptr %i.f, align 4, !tbaa !102 ; 2 uses
  %i.rk = fcmp reassoc nsz arcp contract afn oeq float %i.rj, f0xFF7FFFFF
  %.0452.val536 = load i64, ptr %i.fb, align 8, !tbaa !101 ; 3 uses
  br i1 %i.rk, label %bb.ce, label %._crit_edge761

._crit_edge761:                                   ; preds = %bb.cd
  %.pre762 = load float, ptr %i.fi, align 4, !tbaa !102
  br label %bb.ch

bb.ce:                                            ; preds = %bb.cd
  %.0452.val535 = load ptr, ptr %.0452, align 8, !tbaa !98
  %i.rl = getelementptr [4 x i8], ptr %.0452.val535, i64 %.0452.val536 ; 4 uses
  %i.rm = getelementptr i8, ptr %i.rl, i64 -8     ; 2 uses
  %i.rn = load float, ptr %i.rm, align 4, !tbaa !102 ; 2 uses
  %i.ro = fcmp reassoc nsz arcp contract afn oeq float %i.rn, f0xFF7FFFFF
  br i1 %i.ro, label %bb.cf, label %._crit_edge759

._crit_edge759:                                   ; preds = %bb.ce
  %.phi.trans.insert = getelementptr i8, ptr %i.rl, i64 -4
  %.pre760 = load float, ptr %.phi.trans.insert, align 4, !tbaa !102
  br label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.rp = getelementptr i8, ptr %i.rl, i64 -16
  %i.rq = getelementptr i8, ptr %i.rl, i64 -12
  %i.rr = load float, ptr %i.rq, align 4, !tbaa !102
  %i.rs = load <2 x float>, ptr %i.rp, align 4, !tbaa !102 ; 2 uses
  store <2 x float> %i.rs, ptr %i.rm, align 4, !tbaa !102
  %i.rt = extractelement <2 x float> %i.rs, i64 0
  br label %bb.cg

bb.cg:                                            ; preds = %._crit_edge759, %bb.cf
  %i.ru = phi float [ %i.rr, %bb.cf ], [ %.pre760, %._crit_edge759 ] ; 2 uses
  %i.rv = phi float [ %i.rt, %bb.cf ], [ %i.rn, %._crit_edge759 ] ; 2 uses
  store float %i.rv, ptr %i.f, align 4, !tbaa !102
  store float %i.ru, ptr %i.fi, align 4, !tbaa !102
  br label %bb.ch

bb.ch:                                            ; preds = %._crit_edge761, %bb.cg
  %.val583 = phi float [ %i.ru, %bb.cg ], [ %.pre762, %._crit_edge761 ] ; 3 uses
  %i.rw = phi float [ %i.rv, %bb.cg ], [ %i.rj, %._crit_edge761 ] ; 3 uses
  %i.rx = add i64 %.0452.val536, 2                ; 2 uses
  %i.ry = load i64, ptr %i.fe, align 8, !tbaa !169 ; 3 uses
  %.not.i649 = icmp ult i64 %i.rx, %i.ry
  br i1 %.not.i649, label %bb.ck, label %bb.ci, !prof !170

bb.ci:                                            ; preds = %bb.ch
  %i.rz = icmp eq i64 %i.ry, 0
  br i1 %i.rz, label %dt_masks_dynbuf_add_2.exit655, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.sa = shl i64 %i.ry, 1
  %i.sb = add i64 %i.sa, 2
  %i.sc = call fastcc i32 @_dt_masks_dynbuf_growto(ptr noundef nonnull %.0452, i64 noundef %i.sb)
  %.not11.i650 = icmp eq i32 %i.sc, 0
  br i1 %.not11.i650, label %dt_masks_dynbuf_add_2.exit655, label %._crit_edge.i651

._crit_edge.i651:                                 ; preds = %bb.cj
  %.pre.i652 = load i64, ptr %i.fb, align 8, !tbaa !101 ; 2 uses
  %.pre12.i653 = add i64 %.pre.i652, 2
  br label %bb.ck

bb.ck:                                            ; preds = %._crit_edge.i651, %bb.ch
  %.pre-phi.i654 = phi i64 [ %.pre12.i653, %._crit_edge.i651 ], [ %i.rx, %bb.ch ]
  %i.sd = phi i64 [ %.pre.i652, %._crit_edge.i651 ], [ %.0452.val536, %bb.ch ]
  %i.se = load ptr, ptr %.0452, align 8, !tbaa !98
  %i.sf = getelementptr inbounds nuw [4 x i8], ptr %i.se, i64 %i.sd ; 2 uses
  store float %i.rw, ptr %i.sf, align 4, !tbaa !102
  store i64 %.pre-phi.i654, ptr %i.fb, align 8, !tbaa !101
  %i.sg = getelementptr i8, ptr %i.sf, i64 4
  store float %.val583, ptr %i.sg, align 4, !tbaa !102
  br label %dt_masks_dynbuf_add_2.exit655

dt_masks_dynbuf_add_2.exit655:                    ; preds = %bb.ck, %bb.cj, %bb.ci
  br i1 %i.fj, label %bb.cl, label %dt_masks_dynbuf_add_2.exit655.thread

bb.cl:                                            ; preds = %dt_masks_dynbuf_add_2.exit655
  %i.sh = fmul reassoc nsz arcp contract afn <2 x float> %i.ik, zeroinitializer ; 2 uses
  %i.si = fmul reassoc nsz arcp contract afn <2 x float> %i.im, zeroinitializer ; 2 uses
  %i.sj = fsub reassoc nsz arcp contract afn <2 x float> %i.if, %i.hl
  %i.sk = fmul reassoc nsz arcp contract afn <2 x float> %i.sj, splat (float 3.000000e+00)
  %i.sl = fadd reassoc nsz arcp contract afn <2 x float> %i.sh, %i.si
  %i.sm = fadd reassoc nsz arcp contract afn <2 x float> %i.sl, %i.sk ; 3 uses
  %i.sn = extractelement <2 x float> %i.sm, i64 0 ; 2 uses
  %i.so = fcmp reassoc nsz arcp contract afn oeq float %i.sn, 0.000000e+00
  %i.sp = extractelement <2 x float> %i.sm, i64 1 ; 2 uses
  %i.sq = fcmp reassoc nsz arcp contract afn oeq float %i.sp, 0.000000e+00
  %or.cond.i656 = and i1 %i.so, %i.sq
  br i1 %or.cond.i656, label %_brush_border_get_XY.exit.thread, label %_brush_border_get_XY.exit

_brush_border_get_XY.exit:                        ; preds = %bb.cl
  %i.sr = fadd reassoc nsz arcp contract afn <2 x float> %i.hm, %i.si
  %i.ss = fmul reassoc nsz arcp contract afn <2 x float> %i.ig, zeroinitializer
  %i.st = call reassoc nsz arcp contract afn float @hypotf(float noundef %i.sn, float noundef %i.sp) #20
  %i.su = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.st
  %i.sv = insertelement <2 x float> poison, float %.sroa.18136.0, i64 0
  %i.sw = fadd reassoc nsz arcp contract afn <2 x float> %i.sr, %i.sh
  %i.sx = fadd reassoc nsz arcp contract afn <2 x float> %i.sw, %i.ss ; 2 uses
  %i.sy = insertelement <2 x float> poison, float %i.su, i64 0
  %i.sz = shufflevector <2 x float> %i.sm, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ta = fmul reassoc nsz arcp contract afn <2 x float> %i.sy, %i.sv
  %i.tb = shufflevector <2 x float> %i.ta, <2 x float> poison, <2 x i32> zeroinitializer
  %i.tc = fmul reassoc nsz arcp contract afn <2 x float> %i.tb, %i.sz ; 2 uses
  %i.td = fadd reassoc nsz arcp contract afn <2 x float> %i.sx, %i.tc ; 2 uses
  %i.te = fsub reassoc nsz arcp contract afn <2 x float> %i.sx, %i.tc
  %i.tf = shufflevector <2 x float> %i.td, <2 x float> %i.te, <2 x i32> <i32 0, i32 3>
  %i.tg = extractelement <2 x float> %i.td, i64 0
  %i.th = fcmp reassoc nsz arcp contract afn oeq float %i.tg, f0xFF7FFFFF
  br i1 %i.th, label %_brush_border_get_XY.exit.thread, label %bb.cn

_brush_border_get_XY.exit.thread:                 ; preds = %bb.cl, %_brush_border_get_XY.exit
  %i.ti = fmul reassoc nsz arcp contract afn <2 x float> %i.hm, splat (float f0x3F7FEC56)
  %i.tj = fmul reassoc nsz arcp contract afn <2 x float> %i.ig, splat (float f0x399D4143)
  %i.tk = fmul reassoc nsz arcp contract afn <2 x float> %i.ik, splat (float f0x3300D60B)
  %i.tl = fmul reassoc nsz arcp contract afn <2 x float> %i.im, splat (float f0x2B8CBCCB)
  %i.tm = fmul reassoc nsz arcp contract afn <2 x float> %i.ig, splat (float 2.998800e+00)
  %i.tn = fmul reassoc nsz arcp contract afn <2 x float> %i.ik, splat (float 5.999100e-04)
  %i.to = fmul reassoc nsz arcp contract afn <2 x float> %i.im, splat (float f0x3300D958)
  %i.tp = fmul reassoc nsz arcp contract afn <2 x float> %i.hm, splat (float -2.999400e+00)
  %i.tq = fadd reassoc nsz arcp contract afn <2 x float> %i.ti, %i.tl
  %i.tr = fadd reassoc nsz arcp contract afn <2 x float> %i.tq, %i.tk
  %i.ts = fadd reassoc nsz arcp contract afn <2 x float> %i.tr, %i.tj ; 3 uses
  store <2 x float> %i.ts, ptr %i.j, align 8, !tbaa !102
  %i.tt = fadd reassoc nsz arcp contract afn <2 x float> %i.tp, %i.to
  %i.tu = fadd reassoc nsz arcp contract afn <2 x float> %i.tt, %i.tn
  %i.tv = fadd reassoc nsz arcp contract afn <2 x float> %i.tu, %i.tm ; 3 uses
  %i.tw = extractelement <2 x float> %i.tv, i64 0 ; 2 uses
  %i.tx = fcmp reassoc nsz arcp contract afn oeq float %i.tw, 0.000000e+00
  %i.ty = extractelement <2 x float> %i.tv, i64 1 ; 2 uses
  %i.tz = fcmp reassoc nsz arcp contract afn oeq float %i.ty, 0.000000e+00
  %or.cond.i657 = and i1 %i.tx, %i.tz
  br i1 %or.cond.i657, label %_brush_border_get_XY.exit659, label %bb.cm

bb.cm:                                            ; preds = %_brush_border_get_XY.exit.thread
  %i.ua = call reassoc nsz arcp contract afn float @hypotf(float noundef %i.tw, float noundef %i.ty) #20
  %i.ub = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.ua
  %i.uc = insertelement <2 x float> poison, float %.sroa.18136.0, i64 0
  %i.ud = insertelement <2 x float> poison, float %i.ub, i64 0
  %i.ue = shufflevector <2 x float> %i.tv, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.uf = fmul reassoc nsz arcp contract afn <2 x float> %i.ud, %i.uc
  %i.ug = shufflevector <2 x float> %i.uf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.uh = fmul reassoc nsz arcp contract afn <2 x float> %i.ug, %i.ue ; 2 uses
  %i.ui = fadd reassoc nsz arcp contract afn <2 x float> %i.ts, %i.uh
  %i.uj = fsub reassoc nsz arcp contract afn <2 x float> %i.ts, %i.uh
  %i.uk = shufflevector <2 x float> %i.ui, <2 x float> %i.uj, <2 x i32> <i32 0, i32 3>
  br label %_brush_border_get_XY.exit659

_brush_border_get_XY.exit659:                     ; preds = %_brush_border_get_XY.exit.thread, %bb.cm
  %i.ul = phi <2 x float> [ %i.uk, %bb.cm ], [ splat (float f0xFF7FFFFF), %_brush_border_get_XY.exit.thread ] ; 2 uses
  store <2 x float> %i.ul, ptr %i.i, align 8, !tbaa !102
  br label %bb.cn

bb.cn:                                            ; preds = %_brush_border_get_XY.exit659, %_brush_border_get_XY.exit
  %i.um = phi <2 x float> [ %i.ul, %_brush_border_get_XY.exit659 ], [ %i.tf, %_brush_border_get_XY.exit ] ; 3 uses
  %i.un = extractelement <2 x float> %i.um, i64 0 ; 2 uses
  %i.uo = fsub reassoc nsz arcp contract afn float %i.un, %i.rw
  %i.up = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.uo)
  %or.cond522 = fcmp reassoc nsz arcp contract afn ogt float %i.up, 1.000000e+00
  br i1 %or.cond522, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.uq = extractelement <2 x float> %i.um, i64 1
  %i.ur = fsub reassoc nsz arcp contract afn float %i.uq, %.val583
  %i.us = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ur)
  %or.cond523 = fcmp reassoc nsz arcp contract afn ogt float %i.us, 1.000000e+00
  br i1 %or.cond523, label %bb.cp, label %dt_masks_dynbuf_add_2.exit655.thread

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %i.ut = extractelement <2 x float> %i.um, i64 1
  call fastcc void @_brush_points_recurs_border_gaps(ptr noundef %i.e, float %i.rw, float %.val583, float %i.un, float %i.ut, ptr noundef %i.ad, ptr noundef %.0452, i32 noundef %.0459741)
  br label %dt_masks_dynbuf_add_2.exit655.thread

dt_masks_dynbuf_add_2.exit655.thread:             ; preds = %dt_masks_dynbuf_add_2.exit648, %bb.co, %bb.cp, %dt_masks_dynbuf_add_2.exit655
  br i1 %.not492, label %.loopexit725, label %.split475

.split475:                                        ; preds = %dt_masks_dynbuf_add_2.exit655.thread
  %phi.call476735 = load i64, ptr %i.ff, align 8, !tbaa !101 ; 2 uses
  %.val574736 = load i64, ptr %i.fc, align 8, !tbaa !101
  %i.uu = icmp ult i64 %phi.call476735, %.val574736
  br i1 %i.uu, label %.split474.lr.ph, label %.loopexit725

.split474.lr.ph:                                  ; preds = %.split475
  %i.uv = load <2 x float>, ptr %i.g, align 8, !tbaa !102
  br label %.split474

.split474:                                        ; preds = %.split474.lr.ph, %dt_masks_dynbuf_add_2.exit666
  %phi.call476765 = phi i64 [ %phi.call476735, %.split474.lr.ph ], [ %phi.call476, %dt_masks_dynbuf_add_2.exit666 ] ; 3 uses
  %i.uw = add i64 %phi.call476765, 2              ; 2 uses
  %i.ux = load i64, ptr %i.fg, align 8, !tbaa !169 ; 3 uses
  %.not.i660 = icmp ult i64 %i.uw, %i.ux
  br i1 %.not.i660, label %.split474._crit_edge, label %bb.cq, !prof !170

.split474._crit_edge:                             ; preds = %.split474
  %.pre764 = load ptr, ptr %.0453, align 8, !tbaa !98
  br label %bb.cw

bb.cq:                                            ; preds = %.split474
  %i.uy = icmp eq i64 %i.ux, 0
  br i1 %i.uy, label %dt_masks_dynbuf_add_2.exit666, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.uz = shl i64 %i.ux, 1
  %i.va = add i64 %i.uz, 2                        ; 3 uses
  %i.vb = shl i64 %i.va, 2
  %i.vc = call ptr @dt_alloc_aligned(i64 noundef %i.vb) #18 ; 6 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.vc, i64 64) ]
  %.not.i683 = icmp eq ptr %i.vc, null
  br i1 %.not.i683, label %_dt_masks_dynbuf_growto.exit687.thread, label %bb.cs

_dt_masks_dynbuf_growto.exit687.thread:           ; preds = %bb.cr
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.18, ptr noundef nonnull %i.fh, i64 noundef %i.va) #18
  %phi.call476.pre = load i64, ptr %i.ff, align 8, !tbaa !101
  br label %dt_masks_dynbuf_add_2.exit666

bb.cs:                                            ; preds = %bb.cr
  %i.vd = load ptr, ptr %.0453, align 8, !tbaa !98 ; 2 uses
  %.not19.i684 = icmp eq ptr %i.vd, null
  br i1 %.not19.i684, label %._crit_edge.i662, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.ve = load i64, ptr %i.fg, align 8, !tbaa !169
  %i.vf = shl i64 %i.ve, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 64 %i.vc, ptr nonnull align 4 %i.vd, i64 %i.vf, i1 false)
  %i.vg = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !130
  %i.vh = and i32 %i.vg, 4096
  %.not20.i685 = icmp eq i32 %i.vh, 0
  br i1 %.not20.i685, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.vi = load i64, ptr %i.fg, align 8, !tbaa !169
  %i.vj = load ptr, ptr %.0453, align 8, !tbaa !98
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.19, ptr noundef nonnull %i.fh, i64 noundef %i.vi, ptr noundef nonnull %i.vc, ptr noundef %i.vj) #18
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %i.vk = load ptr, ptr %.0453, align 8, !tbaa !98
  call void @free(ptr noundef %i.vk) #18
  br label %._crit_edge.i662

._crit_edge.i662:                                 ; preds = %bb.cv, %bb.cs
  store i64 %i.va, ptr %i.fg, align 8, !tbaa !169
  store ptr %i.vc, ptr %.0453, align 8, !tbaa !98
  %.pre.i663 = load i64, ptr %i.ff, align 8, !tbaa !101 ; 2 uses
  %.pre12.i664 = add i64 %.pre.i663, 2
  br label %bb.cw

bb.cw:                                            ; preds = %.split474._crit_edge, %._crit_edge.i662
  %i.vl = phi ptr [ %i.vc, %._crit_edge.i662 ], [ %.pre764, %.split474._crit_edge ]
  %.pre-phi.i665 = phi i64 [ %.pre12.i664, %._crit_edge.i662 ], [ %i.uw, %.split474._crit_edge ] ; 2 uses
  %i.vm = phi i64 [ %.pre.i663, %._crit_edge.i662 ], [ %phi.call476765, %.split474._crit_edge ]
  %i.vn = getelementptr inbounds nuw [4 x i8], ptr %i.vl, i64 %i.vm
  store i64 %.pre-phi.i665, ptr %i.ff, align 8, !tbaa !101
  store <2 x float> %i.uv, ptr %i.vn, align 4, !tbaa !102
  br label %dt_masks_dynbuf_add_2.exit666

dt_masks_dynbuf_add_2.exit666:                    ; preds = %_dt_masks_dynbuf_growto.exit687.thread, %bb.cq, %bb.cw
  %phi.call476 = phi i64 [ %phi.call476.pre, %_dt_masks_dynbuf_growto.exit687.thread ], [ %phi.call476765, %bb.cq ], [ %.pre-phi.i665, %bb.cw ] ; 2 uses
  %.val574 = load i64, ptr %i.fc, align 8, !tbaa !101
  %i.vo = icmp ult i64 %phi.call476, %.val574
  br i1 %i.vo, label %.split474, label %.loopexit725

.loopexit725:                                     ; preds = %dt_masks_dynbuf_add_2.exit666, %.split475, %dt_masks_dynbuf_add_2.exit655.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  br label %bb.cx

bb.cx:                                            ; preds = %.loopexit725, %.loopexit
  %.1460 = phi i32 [ %i.qm, %.loopexit ], [ %.0459741, %.loopexit725 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %exitcond.not = icmp eq i32 %i.fz, %i.ex
  br i1 %exitcond.not, label %._crit_edge744, label %bb.ah

bb.cy:                                            ; preds = %dt_masks_dynbuf_free.exit613
  %i.vp = getelementptr i8, ptr %.0452, i64 136   ; 2 uses
  %.0452.val572 = load i64, ptr %i.vp, align 8, !tbaa !101
  %i.vq = lshr i64 %.0452.val572, 1
  %i.vr = trunc i64 %i.vq to i32
  store i32 %i.vr, ptr %8, align 4, !tbaa !106
  %i.vs = load ptr, ptr %.0452, align 8, !tbaa !98
  store ptr null, ptr %.0452, align 8, !tbaa !98
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.vp, i8 0, i64 16, i1 false)
  store ptr %i.vs, ptr %7, align 8, !tbaa !134
  %i.vt = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !130
  %i.vu = and i32 %i.vt, 4096
  %.not.i667 = icmp eq i32 %i.vu, 0
  br i1 %.not.i667, label %dt_masks_dynbuf_free.exit668, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.vv = getelementptr inbounds nuw i8, ptr %.0452, i64 8
  %i.vw = load ptr, ptr %.0452, align 8, !tbaa !98
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.20, ptr noundef nonnull %i.vv, ptr noundef %i.vw) #18
  br label %dt_masks_dynbuf_free.exit668

dt_masks_dynbuf_free.exit668:                     ; preds = %bb.cy, %bb.cz
  %i.vx = load ptr, ptr %.0452, align 8, !tbaa !98
  call void @free(ptr noundef %i.vx) #18
  call void @free(ptr noundef nonnull %.0452) #18
  br label %bb.da

bb.da:                                            ; preds = %dt_masks_dynbuf_free.exit668, %dt_masks_dynbuf_free.exit613
  br i1 %.not492, label %bb.dd, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.vy = getelementptr i8, ptr %.0453, i64 136   ; 2 uses
  %.0453.val571 = load i64, ptr %i.vy, align 8, !tbaa !101
  %i.vz = lshr i64 %.0453.val571, 1
  %i.wa = trunc i64 %i.vz to i32
  store i32 %i.wa, ptr %10, align 4, !tbaa !106
  %i.wb = load ptr, ptr %.0453, align 8, !tbaa !98
  store ptr null, ptr %.0453, align 8, !tbaa !98
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.vy, i8 0, i64 16, i1 false)
  store ptr %i.wb, ptr %9, align 8, !tbaa !134
  %i.wc = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !130
  %i.wd = and i32 %i.wc, 4096
  %.not.i669 = icmp eq i32 %i.wd, 0
  br i1 %.not.i669, label %dt_masks_dynbuf_free.exit670, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.we = getelementptr inbounds nuw i8, ptr %.0453, i64 8
  %i.wf = load ptr, ptr %.0453, align 8, !tbaa !98
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.20, ptr noundef nonnull %i.we, ptr noundef %i.wf) #18
  br label %dt_masks_dynbuf_free.exit670

dt_masks_dynbuf_free.exit670:                     ; preds = %bb.db, %bb.dc
  %i.wg = load ptr, ptr %.0453, align 8, !tbaa !98
  call void @free(ptr noundef %i.wg) #18
  call void @free(ptr noundef nonnull %.0453) #18
  br label %bb.dd

bb.dd:                                            ; preds = %bb.da, %dt_masks_dynbuf_free.exit670
  %i.wh = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !130
  %i.wi = and i32 %i.wh, 4112
  %or.cond524.not = icmp eq i32 %i.wi, 4112
  br i1 %or.cond524.not, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  %i.wj = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  %i.wk = call i32 @gettimeofday(ptr noundef nonnull %14, ptr noundef null) #18 ; 0 uses
  %i.wl = load i64, ptr %14, align 8, !tbaa !131
  %i.wm = add nsw i64 %i.wl, -1290608000
  %i.wn = sitofp reassoc nsz arcp contract afn i64 %i.wm to double
  %i.wo = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.wp = load i64, ptr %i.wo, align 8, !tbaa !133
  %i.wq = sitofp reassoc nsz arcp contract afn i64 %i.wp to double
  %i.wr = fmul reassoc nnan nsz arcp contract afn double %i.wq, f0x3EB0C6F7A0B5ED8D
  %i.ws = fadd reassoc nsz arcp contract afn double %i.wr, %i.wn ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  %i.wt = fsub reassoc nsz arcp contract afn double %i.ws, %.0700
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.14, ptr noundef nonnull %i.wj, double noundef %i.wt) #18
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd
  %.1701 = phi nsz double [ %.0700, %bb.dd ], [ %i.ws, %bb.de ] ; 2 uses
  %i.wu = icmp eq i32 %3, 0
  %or.cond7 = and i1 %i.wu, %i.az
  %i.wv = load ptr, ptr %5, align 8, !tbaa !134   ; 2 uses
  %i.ww = load i32, ptr %6, align 4, !tbaa !106
  %i.wx = sext i32 %i.ww to i64                   ; 2 uses
  br i1 %or.cond7, label %bb.dg, label %bb.dm

bb.dg:                                            ; preds = %bb.df
  %i.wy = call i32 @dt_dev_distort_transform_plus(ptr noundef %0, ptr noundef %4, double noundef %2, i32 noundef 4, ptr noundef %i.wv, i64 noundef %i.wx) #18
  %.not501 = icmp eq i32 %i.wy, 0
  br i1 %.not501, label %bb.dk, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #18
  %i.wz = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.xa = load <2 x float>, ptr %i.wz, align 8, !tbaa !102
  %i.xb = fmul reassoc nsz arcp contract afn <2 x float> %i.xa, %i.z
  store <2 x float> %i.xb, ptr %i.l, align 8, !tbaa !102
  %i.xc = call i32 @dt_dev_distort_transform_plus(ptr noundef %0, ptr noundef %4, double noundef %2, i32 noundef 4, ptr noundef nonnull %i.l, i64 noundef 1) #18
  %.not502 = icmp eq i32 %i.xc, 0
  br i1 %.not502, label %.thread, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.xd = load ptr, ptr %5, align 8, !tbaa !134   ; 7 uses
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xd, i64 8
  %i.xf = load <2 x float>, ptr %i.l, align 8, !tbaa !102
  %i.xg = load <2 x float>, ptr %i.xe, align 8, !tbaa !102
  %i.xh = fsub reassoc nsz arcp contract afn <2 x float> %i.xf, %i.xg ; 5 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.xd, i64 64) ]
  %i.xi = load i32, ptr %6, align 4, !tbaa !106   ; 5 uses
  %i.xj = icmp sgt i32 %i.xi, 0
  br i1 %i.xj, label %iter.check, label %._crit_edge748

iter.check:                                       ; preds = %bb.di
  %wide.trip.count = zext nneg i32 %i.xi to i64   ; 6 uses
  %min.iters.check894 = icmp ult i32 %i.xi, 4
  br i1 %min.iters.check894, label %.lr.ph747.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check895 = icmp ult i32 %i.xi, 16
  br i1 %min.iters.check895, label %vec.epilog.ph, label %vector.ph896

vector.ph896:                                     ; preds = %vector.main.loop.iter.check
  %i.xk = and i64 %wide.trip.count, 12
  %n.vec897 = and i64 %wide.trip.count, 2147483632 ; 4 uses
  %broadcast.splat899 = shufflevector <2 x float> %i.xh, <2 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splat901 = shufflevector <2 x float> %i.xh, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 2 uses
  br label %vector.body902

vector.body902:                                   ; preds = %vector.body902, %vector.ph896
  %index903 = phi i64 [ 0, %vector.ph896 ], [ %index.next910, %vector.body902 ] ; 3 uses
  %i.xl = shl nuw nsw i64 %index903, 3
  %i.xm = shl i64 %index903, 3
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xd, i64 %i.xl ; 2 uses
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xd, i64 %i.xm
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xo, i64 64 ; 2 uses
  %wide.vec = load <16 x float>, ptr %i.xn, align 64, !tbaa !102 ; 2 uses
  %strided.vec = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec904 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec905 = load <16 x float>, ptr %i.xp, align 64, !tbaa !102 ; 2 uses
  %strided.vec906 = shufflevector <16 x float> %wide.vec905, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec907 = shufflevector <16 x float> %wide.vec905, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.xq = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat899, %strided.vec
  %i.xr = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat899, %strided.vec906
  %i.xs = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat901, %strided.vec904
  %i.xt = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat901, %strided.vec907
  %interleaved.vec908 = shufflevector <8 x float> %i.xq, <8 x float> %i.xs, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x float> %interleaved.vec908, ptr %i.xn, align 64, !tbaa !102
  %interleaved.vec909 = shufflevector <8 x float> %i.xr, <8 x float> %i.xt, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x float> %interleaved.vec909, ptr %i.xp, align 64, !tbaa !102
  %index.next910 = add nuw i64 %index903, 16      ; 2 uses
  %i.xu = icmp eq i64 %index.next910, %n.vec897
  br i1 %i.xu, label %middle.block911, label %vector.body902, !llvm.loop !231

middle.block911:                                  ; preds = %vector.body902
  %cmp.n912 = icmp eq i64 %n.vec897, %wide.trip.count
  br i1 %cmp.n912, label %._crit_edge748, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block911
  %min.epilog.iters.check = icmp eq i64 %i.xk, 0
  br i1 %min.epilog.iters.check, label %.lr.ph747.preheader, label %vec.epilog.ph, !prof !232

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec897, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec913 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %broadcast.splat915 = shufflevector <2 x float> %i.xh, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat917 = shufflevector <2 x float> %i.xh, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index918 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next923, %vec.epilog.vector.body ] ; 2 uses
  %i.xv = shl nuw nsw i64 %index918, 3
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xd, i64 %i.xv ; 2 uses
  %wide.vec919 = load <8 x float>, ptr %i.xw, align 32, !tbaa !102 ; 2 uses
  %strided.vec920 = shufflevector <8 x float> %wide.vec919, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec921 = shufflevector <8 x float> %wide.vec919, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.xx = fadd reassoc nsz arcp contract afn <4 x float> %broadcast.splat915, %strided.vec920
  %i.xy = fadd reassoc nsz arcp contract afn <4 x float> %broadcast.splat917, %strided.vec921
  %interleaved.vec922 = shufflevector <4 x float> %i.xx, <4 x float> %i.xy, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec922, ptr %i.xw, align 32, !tbaa !102
  %index.next923 = add nuw i64 %index918, 4       ; 2 uses
  %i.xz = icmp eq i64 %index.next923, %n.vec913
  br i1 %i.xz, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !233

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n924 = icmp eq i64 %n.vec913, %wide.trip.count
  br i1 %cmp.n924, label %._crit_edge748, label %.lr.ph747.preheader

.lr.ph747.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec897, %vec.epilog.iter.check ], [ %n.vec913, %vec.epilog.middle.block ]
  br label %.lr.ph747

._crit_edge748:                                   ; preds = %.lr.ph747, %middle.block911, %vec.epilog.middle.block, %bb.di
  %i.ya = sext i32 %i.xi to i64
  %i.yb = call i32 @dt_dev_distort_transform_plus(ptr noundef %0, ptr noundef %4, double noundef %2, i32 noundef 1, ptr noundef nonnull %i.xd, i64 noundef %i.ya) #18
  %.not503 = icmp eq i32 %i.yb, 0
  br i1 %.not503, label %.thread, label %bb.dj

.lr.ph747:                                        ; preds = %.lr.ph747.preheader, %.lr.ph747
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph747 ], [ %indvars.iv.ph, %.lr.ph747.preheader ] ; 2 uses
  %.idx = shl nuw nsw i64 %indvars.iv, 3
  %i.yc = getelementptr inbounds nuw i8, ptr %i.xd, i64 %.idx ; 2 uses
  %i.yd = load <2 x float>, ptr %i.yc, align 8, !tbaa !102
  %i.ye = fadd reassoc nsz arcp contract afn <2 x float> %i.xh, %i.yd
  store <2 x float> %i.ye, ptr %i.yc, align 8, !tbaa !102
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond751.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond751.not, label %._crit_edge748, label %.lr.ph747, !llvm.loop !234

.thread:                                          ; preds = %bb.dh, %._crit_edge748
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #18
  br label %bb.dr

bb.dj:                                            ; preds = %._crit_edge748
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #18
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.dg
  %i.yf = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !130
  %i.yg = and i32 %i.yf, 4112
  %or.cond525.not = icmp eq i32 %i.yg, 4112
  br i1 %or.cond525.not, label %bb.dl, label %dt_masks_dynbuf_free.exit598

bb.dl:                                            ; preds = %bb.dk
  %i.yh = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  %i.yi = call i32 @gettimeofday(ptr noundef nonnull %13, ptr noundef null) #18 ; 0 uses
  %i.yj = load i64, ptr %13, align 8, !tbaa !131
  %i.yk = add nsw i64 %i.yj, -1290608000
  %i.yl = sitofp reassoc nsz arcp contract afn i64 %i.yk to double
  %i.ym = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.yn = load i64, ptr %i.ym, align 8, !tbaa !133
  %i.yo = sitofp reassoc nsz arcp contract afn i64 %i.yn to double
  %i.yp = fmul reassoc nnan nsz arcp contract afn double %i.yo, f0x3EB0C6F7A0B5ED8D
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  %17 = fsub reassoc nsz arcp contract afn double %i.yl, %.1701
  %18 = fadd reassoc nsz arcp contract afn double %17, %i.yp
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.15, ptr noundef nonnull %i.yh, double noundef %18) #18
  br label %dt_masks_dynbuf_free.exit598

bb.dm:                                            ; preds = %bb.df
  %i.yq = call i32 @dt_dev_distort_transform_plus(ptr noundef %0, ptr noundef %4, double noundef %2, i32 noundef %3, ptr noundef %i.wv, i64 noundef %i.wx) #18
  %.not497 = icmp eq i32 %i.yq, 0
  br i1 %.not497, label %bb.dr, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  br i1 %.not, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.yr = load ptr, ptr %7, align 8, !tbaa !134
  %i.ys = load i32, ptr %8, align 4, !tbaa !106
  %i.yt = sext i32 %i.ys to i64
  %i.yu = call i32 @dt_dev_distort_transform_plus(ptr noundef %0, ptr noundef %4, double noundef %2, i32 noundef %3, ptr noundef %i.yr, i64 noundef %i.yt) #18
  %.not498 = icmp eq i32 %i.yu, 0
  br i1 %.not498, label %bb.dr, label %bb.dp

bb.dp:                                            ; preds = %bb.dn, %bb.do
  %i.yv = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !130
  %i.yw = and i32 %i.yv, 4112
  %or.cond526.not = icmp eq i32 %i.yw, 4112
  br i1 %or.cond526.not, label %bb.dq, label %dt_masks_dynbuf_free.exit598

bb.dq:                                            ; preds = %bb.dp
  %i.yx = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  %i.yy = call i32 @gettimeofday(ptr noundef nonnull %12, ptr noundef null) #18 ; 0 uses
  %i.yz = load i64, ptr %12, align 8, !tbaa !131
  %i.za = add nsw i64 %i.yz, -1290608000
  %i.zb = sitofp reassoc nsz arcp contract afn i64 %i.za to double
  %i.zc = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.zd = load i64, ptr %i.zc, align 8, !tbaa !133
  %i.ze = sitofp reassoc nsz arcp contract afn i64 %i.zd to double
  %i.zf = fmul reassoc nnan nsz arcp contract afn double %i.ze, f0x3EB0C6F7A0B5ED8D
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  %19 = fsub reassoc nsz arcp contract afn double %i.zb, %.1701
  %20 = fadd reassoc nsz arcp contract afn double %19, %i.zf
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.16, ptr noundef nonnull %i.yx, double noundef %20) #18
  br label %dt_masks_dynbuf_free.exit598

bb.dr:                                            ; preds = %.thread, %bb.dm, %bb.do
  %i.zg = load ptr, ptr %5, align 8, !tbaa !134
  call void @free(ptr noundef %i.zg) #18
  store ptr null, ptr %5, align 8, !tbaa !134
  store i32 0, ptr %6, align 4, !tbaa !106
  br i1 %.not, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.zh = load ptr, ptr %7, align 8, !tbaa !134
  call void @free(ptr noundef %i.zh) #18
  store ptr null, ptr %7, align 8, !tbaa !134
  store i32 0, ptr %8, align 4, !tbaa !106
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dr
  br i1 %.not490, label %dt_masks_dynbuf_free.exit598, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.zi = load ptr, ptr %9, align 8, !tbaa !134
  call void @free(ptr noundef %i.zi) #18
  store ptr null, ptr %9, align 8, !tbaa !134
  store i32 0, ptr %10, align 4, !tbaa !106
  br label %dt_masks_dynbuf_free.exit598

dt_masks_dynbuf_free.exit598:                     ; preds = %bb.o, %dt_masks_dynbuf_free.exit596, %bb.dl, %bb.dk, %bb.dq, %bb.dp, %bb.du, %bb.dt, %.critedge520, %dt_masks_dynbuf_free.exit
  %.1 = phi i32 [ 0, %.critedge520 ], [ 0, %dt_masks_dynbuf_free.exit ], [ 0, %bb.dt ], [ 1, %bb.dk ], [ 1, %bb.dp ], [ 1, %bb.dl ], [ 1, %bb.dq ], [ 0, %bb.du ], [ 0, %dt_masks_dynbuf_free.exit596 ], [ 0, %bb.o ]
  ret i32 %.1
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc noundef ptr @dt_masks_dynbuf_init(i64 noundef range(i64 200000, 1000001) %0, ptr noundef %1) unnamed_addr #9 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(152) ptr @calloc(i64 noundef 1, i64 noundef 152) #22 ; 13 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %i.c = tail call i64 @g_strlcpy(ptr noundef nonnull %i.b, ptr noundef %1, i64 noundef 128) #18 ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store i64 0, ptr %i.d, align 8, !tbaa !101
  %i.e = shl nuw nsw i64 %0, 2
  %i.f = tail call ptr @dt_alloc_aligned(i64 noundef %i.e) #18 ; 6 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.f, i64 64) ]
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_dt_masks_dynbuf_growto.exit.thread, label %bb.c

_dt_masks_dynbuf_growto.exit.thread:              ; preds = %bb.b
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.18, ptr noundef nonnull %i.b, i64 noundef %0) #18
  br label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !98   ; 2 uses
  %.not19.i = icmp eq ptr %i.g, null
  br i1 %.not19.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 144 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !169
  %i.j = shl i64 %i.i, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 64 %i.f, ptr nonnull align 4 %i.g, i64 %i.j, i1 false)
  %i.k = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !130
  %i.l = and i32 %i.k, 4096
  %.not20.i = icmp eq i32 %i.l, 0
  br i1 %.not20.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load i64, ptr %i.h, align 8, !tbaa !169
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !98
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.19, ptr noundef nonnull %i.b, i64 noundef %i.m, ptr noundef nonnull %i.f, ptr noundef %i.n) #18
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !98
  tail call void @free(ptr noundef %i.o) #18
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store i64 %0, ptr %i.p, align 8, !tbaa !169
  store ptr %i.f, ptr %i.a, align 8, !tbaa !98
  %i.q = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !130
  %i.r = and i32 %i.q, 4096
  %.not13 = icmp eq i32 %i.r, 0
  br i1 %.not13, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.17, ptr noundef nonnull %i.b, i64 noundef %0, ptr noundef nonnull %i.f) #18
  br label %bb.i

bb.i:                                             ; preds = %_dt_masks_dynbuf_growto.exit.thread, %bb.h
  %.pr = load ptr, ptr %i.a, align 8, !tbaa !98
  %i.s = icmp eq ptr %.pr, null
  br i1 %i.s, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  tail call void @free(ptr noundef nonnull %i.a) #18
  br label %.thread

.thread:                                          ; preds = %bb.g, %bb.i, %bb.j, %bb.a
  %.0 = phi ptr [ null, %bb.j ], [ %i.a, %bb.i ], [ null, %bb.a ], [ %i.a, %bb.g ]
  ret ptr %.0
}

declare i32 @g_list_length(ptr noundef) local_unnamed_addr #4

declare void @dt_print_ext(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #7

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @dt_masks_dynbuf_add_2(ptr noundef %0, float noundef %1, float noundef %2) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !101  ; 2 uses
  %i.c = add i64 %i.b, 2                          ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.e = load i64, ptr %i.d, align 8, !tbaa !169  ; 3 uses
  %.not = icmp ult i64 %i.c, %i.e
  br i1 %.not, label %bb.d, label %bb.b, !prof !170

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = shl i64 %i.e, 1
  %i.h = add i64 %i.g, 2
  %i.i = tail call fastcc i32 @_dt_masks_dynbuf_growto(ptr noundef nonnull %0, i64 noundef %i.h)
  %.not11 = icmp eq i32 %i.i, 0
  br i1 %.not11, label %bb.e, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c
  %.pre = load i64, ptr %i.a, align 8, !tbaa !101 ; 2 uses
  %.pre12 = add i64 %.pre, 2
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.a
  %.pre-phi = phi i64 [ %.pre12, %._crit_edge ], [ %i.c, %bb.a ]
  %i.j = phi i64 [ %.pre, %._crit_edge ], [ %i.b, %bb.a ] ; 2 uses
  %i.k = load ptr, ptr %0, align 8, !tbaa !98     ; 2 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.j
  store float %1, ptr %i.l, align 4, !tbaa !102
  store i64 %.pre-phi, ptr %i.a, align 8, !tbaa !101
  %i.m = getelementptr [4 x i8], ptr %i.k, i64 %i.j
  %i.n = getelementptr i8, ptr %i.m, i64 4
  store float %2, ptr %i.n, align 4, !tbaa !102
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @_brush_points_recurs_border_gaps(ptr nofree noundef nonnull readonly captures(none) %0, float %.0.val, float %.4.val, float %.0.val1, float %.4.val3, ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef range(i32 -1, 2) %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 8 uses
  %i.b = load float, ptr %i.a, align 4, !tbaa !102 ; 2 uses
  %i.c = fsub reassoc nsz arcp contract afn float %.4.val, %i.b ; 2 uses
  %i.d = load float, ptr %0, align 4, !tbaa !102  ; 2 uses
  %i.e = fsub reassoc nsz arcp contract afn float %.0.val, %i.d ; 2 uses
  %i.f = tail call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %i.c, float %i.e) ; 5 uses
  %i.g = fsub reassoc nsz arcp contract afn float %.4.val3, %i.b ; 2 uses
  %i.h = fsub reassoc nsz arcp contract afn float %.0.val1, %i.d ; 2 uses
  %i.i = tail call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %i.g, float %i.h) ; 4 uses
  %i.j = fcmp reassoc nsz arcp contract afn oeq float %i.f, %i.i
  br i1 %i.j, label %dt_masks_dynbuf_reserve_n.exit97.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = fcmp reassoc nsz arcp contract afn olt float %i.i, %i.f
  %i.l = icmp ne i32 %3, 0                        ; 2 uses
  %or.cond = and i1 %i.l, %i.k
  %i.m = fadd reassoc nsz arcp contract afn float %i.i, f0x40C90FDB
  %spec.select = select i1 %or.cond, float %i.m, float %i.i ; 5 uses
  %i.n = fcmp reassoc nsz arcp contract afn ule float %spec.select, %i.f
  %or.cond3 = or i1 %i.l, %i.n
  %i.o = fadd reassoc nsz arcp contract afn float %i.f, f0x40C90FDB
  %.080 = select nsz i1 %or.cond3, float %i.f, float %i.o ; 5 uses
  %i.p = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %i.c, float noundef %i.e) #20 ; 3 uses
  %i.q = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %i.g, float noundef %i.h) #20 ; 2 uses
  %i.r = fcmp reassoc nsz arcp contract afn ogt float %spec.select, %.080
  %i.s = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.p, float %i.q)
  %i.t = fsub reassoc nsz arcp contract afn float %.080, %spec.select
  %i.u = fsub reassoc nsz arcp contract afn float %spec.select, %.080
  %.sink = select i1 %i.r, float %i.u, float %i.t
  %i.v = fmul reassoc nsz arcp contract afn float %i.s, %.sink
  %.082 = fptosi float %i.v to i32                ; 8 uses
  %i.w = icmp slt i32 %.082, 2
  br i1 %i.w, label %dt_masks_dynbuf_reserve_n.exit97.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = insertelement <2 x float> poison, float %i.q, i64 0
  %i.y = insertelement <2 x float> %i.x, float %spec.select, i64 1
  %i.z = insertelement <2 x float> poison, float %i.p, i64 0
  %i.aa = insertelement <2 x float> %i.z, float %.080, i64 1 ; 4 uses
  %i.ab = fsub reassoc nsz arcp contract afn <2 x float> %i.y, %i.aa
end_hunk_2
begin_hunk_3_@_brush_points_recurs_border_gaps:bb.a
  %i.by = shufflevector <2 x float> %i.bx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bz = fmul reassoc nsz arcp contract afn <2 x float> %i.af, %i.by
  %i.ca = fadd reassoc nsz arcp contract afn <2 x float> %i.aa, %i.bz
  %i.cb = load float, ptr %0, align 4, !tbaa !102, !alias.scope !235
  %broadcast.splatinsert41 = insertelement <8 x float> poison, float %i.cb, i64 0 ; 2 uses
  %i.cc = load float, ptr %i.a, align 4, !tbaa !102, !alias.scope !235
  %broadcast.splatinsert43 = insertelement <8 x float> poison, float %i.cc, i64 0 ; 2 uses
  %broadcast.splat = shufflevector <2 x float> %i.af, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %broadcast.splat29 = shufflevector <2 x float> %i.af, <2 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert30 = insertelement <8 x float> poison, float %.080, i64 0
  %broadcast.splat31 = shufflevector <8 x float> %broadcast.splatinsert30, <8 x float> poison, <8 x i32> zeroinitializer
  %i.cd = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat, <float 0.000000e+00, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00>
  %induction = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat31, %i.cd
  %broadcast.splatinsert34 = insertelement <8 x float> poison, float %i.p, i64 0
  %broadcast.splat35 = shufflevector <8 x float> %broadcast.splatinsert34, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ce = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat29, <float 0.000000e+00, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00>
  %induction36 = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat35, %i.ce
  %i.cf = fmul reassoc nsz arcp contract afn <2 x float> %i.af, splat (float 8.000000e+00) ; 2 uses
  %broadcast.splat33 = shufflevector <2 x float> %i.cf, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat38 = shufflevector <2 x float> %i.cf, <2 x float> poison, <8 x i32> zeroinitializer
  %interleaved.vec = shufflevector <8 x float> %broadcast.splatinsert41, <8 x float> %broadcast.splatinsert43, <16 x i32> <i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8>
  %i.cg = shufflevector <8 x float> %broadcast.splatinsert41, <8 x float> %broadcast.splatinsert43, <16 x i32> <i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x float> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %vec.ind39 = phi <8 x float> [ %induction36, %vector.ph ], [ %vec.ind.next50, %vector.body ] ; 2 uses
  %i.ch = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bg, i64 %i.ch
  %next.gep40 = getelementptr i8, ptr %.1.i, i64 %i.ch
  %i.ci = fadd reassoc nsz arcp contract afn <8 x float> %vec.ind, %broadcast.splat
  %i.cj = tail call reassoc nsz arcp contract afn { <8 x float>, <8 x float> } @llvm.sincos.v8f32(<8 x float> %i.ci) ; 2 uses
  %i.ck = extractvalue { <8 x float>, <8 x float> } %i.cj, 0
  %i.cl = extractvalue { <8 x float>, <8 x float> } %i.cj, 1
  %i.cm = fadd reassoc nsz arcp contract afn <8 x float> %vec.ind39, %broadcast.splat29 ; 2 uses
  store <16 x float> %interleaved.vec, ptr %next.gep40, align 4, !tbaa !102, !alias.scope !238, !noalias !240
  %i.cn = fmul reassoc nsz arcp contract afn <8 x float> %i.cl, %i.cm
  %i.co = fmul reassoc nsz arcp contract afn <8 x float> %i.ck, %i.cm
  %i.cp = shufflevector <8 x float> %i.cn, <8 x float> %i.co, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %interleaved.vec49 = fadd reassoc nsz arcp contract afn <16 x float> %i.cg, %i.cp
  store <16 x float> %interleaved.vec49, ptr %next.gep, align 4, !tbaa !102, !alias.scope !242, !noalias !235
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = fadd reassoc nsz arcp contract afn <8 x float> %vec.ind, %broadcast.splat33
  %vec.ind.next50 = fadd reassoc nsz arcp contract afn <8 x float> %vec.ind39, %broadcast.splat38
  %i.cq = icmp eq i64 %index.next, %n.vec
  br i1 %i.cq, label %middle.block, label %vector.body, !llvm.loop !243

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bj, %n.vec
  br i1 %cmp.n, label %dt_masks_dynbuf_reserve_n.exit97.thread, label %.lr.ph.preheader55

.lr.ph.preheader55:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.011.ph = phi i32 [ 1, %vector.memcheck ], [ 1, %.lr.ph.preheader ], [ %i.bs, %middle.block ] ; 3 uses
  %.07610.ph = phi ptr [ %i.bg, %vector.memcheck ], [ %i.bg, %.lr.ph.preheader ], [ %i.bu, %middle.block ] ; 4 uses
  %.0779.ph = phi ptr [ %.1.i, %vector.memcheck ], [ %.1.i, %.lr.ph.preheader ], [ %i.bv, %middle.block ] ; 4 uses
  %.ph = phi <2 x float> [ %i.aa, %vector.memcheck ], [ %i.aa, %.lr.ph.preheader ], [ %i.ca, %middle.block ] ; 2 uses
  %i.cr = and i32 %.082, 1
  %lcmp.mod.not.not = icmp eq i32 %i.cr, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.prol, label %.lr.ph.prol.loopexit

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader55
  %i.cs = fadd reassoc nsz arcp contract afn <2 x float> %.ph, %i.af ; 3 uses
  %i.ct = extractelement <2 x float> %i.cs, i64 1
  %sincos.prol = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.ct) ; 2 uses
  %sin.prol = extractvalue { float, float } %sincos.prol, 0
  %cos.prol = extractvalue { float, float } %sincos.prol, 1
  %i.cu = load float, ptr %0, align 4, !tbaa !102
  %i.cv = getelementptr inbounds nuw i8, ptr %.0779.ph, i64 4
  store float %i.cu, ptr %.0779.ph, align 4, !tbaa !102
  %i.cw = load float, ptr %i.a, align 4, !tbaa !102
  %i.cx = getelementptr inbounds nuw i8, ptr %.0779.ph, i64 8
  store float %i.cw, ptr %i.cv, align 4, !tbaa !102
  %i.cy = load float, ptr %0, align 4, !tbaa !102
  %i.cz = extractelement <2 x float> %i.cs, i64 0 ; 2 uses
  %i.da = fmul reassoc nsz arcp contract afn float %cos.prol, %i.cz
  %i.db = fadd reassoc nsz arcp contract afn float %i.cy, %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %.07610.ph, i64 4
  store float %i.db, ptr %.07610.ph, align 4, !tbaa !102
  %i.dd = load float, ptr %i.a, align 4, !tbaa !102
  %i.de = fmul reassoc nsz arcp contract afn float %sin.prol, %i.cz
  %i.df = fadd reassoc nsz arcp contract afn float %i.dd, %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %.07610.ph, i64 8
  store float %i.df, ptr %i.dc, align 4, !tbaa !102
  %i.dh = add nuw nsw i32 %.011.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader55
  %.011.unr = phi i32 [ %.011.ph, %.lr.ph.preheader55 ], [ %i.dh, %.lr.ph.prol ]
  %.07610.unr = phi ptr [ %.07610.ph, %.lr.ph.preheader55 ], [ %i.dg, %.lr.ph.prol ]
  %.0779.unr = phi ptr [ %.0779.ph, %.lr.ph.preheader55 ], [ %i.cx, %.lr.ph.prol ]
  %.unr = phi <2 x float> [ %.ph, %.lr.ph.preheader55 ], [ %i.cs, %.lr.ph.prol ]
  %i.di = add nsw i32 %.082, -1
  %i.dj = icmp eq i32 %.011.ph, %i.di
  br i1 %i.dj, label %dt_masks_dynbuf_reserve_n.exit97.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.011 = phi i32 [ %i.ep, %.lr.ph ], [ %.011.unr, %.lr.ph.prol.loopexit ]
  %.07610 = phi ptr [ %i.eo, %.lr.ph ], [ %.07610.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.0779 = phi ptr [ %i.ef, %.lr.ph ], [ %.0779.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.dk = phi <2 x float> [ %i.ea, %.lr.ph ], [ %.unr, %.lr.ph.prol.loopexit ]
  %i.dl = fadd reassoc nsz arcp contract afn <2 x float> %i.dk, %i.af ; 3 uses
  %i.dm = extractelement <2 x float> %i.dl, i64 1
  %sincos = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.dm) ; 2 uses
  %sin = extractvalue { float, float } %sincos, 0
  %cos = extractvalue { float, float } %sincos, 1
  %i.dn = load float, ptr %0, align 4, !tbaa !102
  %i.do = getelementptr inbounds nuw i8, ptr %.0779, i64 4
  store float %i.dn, ptr %.0779, align 4, !tbaa !102
  %i.dp = load float, ptr %i.a, align 4, !tbaa !102
  %i.dq = getelementptr inbounds nuw i8, ptr %.0779, i64 8
  store float %i.dp, ptr %i.do, align 4, !tbaa !102
  %i.dr = load float, ptr %0, align 4, !tbaa !102
  %i.ds = extractelement <2 x float> %i.dl, i64 0 ; 2 uses
  %i.dt = fmul reassoc nsz arcp contract afn float %cos, %i.ds
  %i.du = fadd reassoc nsz arcp contract afn float %i.dr, %i.dt
  %i.dv = getelementptr inbounds nuw i8, ptr %.07610, i64 4
  store float %i.du, ptr %.07610, align 4, !tbaa !102
  %i.dw = load float, ptr %i.a, align 4, !tbaa !102
  %i.dx = fmul reassoc nsz arcp contract afn float %sin, %i.ds
  %i.dy = fadd reassoc nsz arcp contract afn float %i.dw, %i.dx
  %i.dz = getelementptr inbounds nuw i8, ptr %.07610, i64 8
  store float %i.dy, ptr %i.dv, align 4, !tbaa !102
  %i.ea = fadd reassoc nsz arcp contract afn <2 x float> %i.dl, %i.af ; 3 uses
  %i.eb = extractelement <2 x float> %i.ea, i64 1
  %sincos.1 = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.eb) ; 2 uses
  %sin.1 = extractvalue { float, float } %sincos.1, 0
  %cos.1 = extractvalue { float, float } %sincos.1, 1
  %i.ec = load float, ptr %0, align 4, !tbaa !102
  %i.ed = getelementptr inbounds nuw i8, ptr %.0779, i64 12
  store float %i.ec, ptr %i.dq, align 4, !tbaa !102
  %i.ee = load float, ptr %i.a, align 4, !tbaa !102
  %i.ef = getelementptr inbounds nuw i8, ptr %.0779, i64 16
  store float %i.ee, ptr %i.ed, align 4, !tbaa !102
  %i.eg = load float, ptr %0, align 4, !tbaa !102
  %i.eh = extractelement <2 x float> %i.ea, i64 0 ; 2 uses
  %i.ei = fmul reassoc nsz arcp contract afn float %cos.1, %i.eh
  %i.ej = fadd reassoc nsz arcp contract afn float %i.eg, %i.ei
  %i.ek = getelementptr inbounds nuw i8, ptr %.07610, i64 12
  store float %i.ej, ptr %i.dz, align 4, !tbaa !102
  %i.el = load float, ptr %i.a, align 4, !tbaa !102
  %i.em = fmul reassoc nsz arcp contract afn float %sin.1, %i.eh
  %i.en = fadd reassoc nsz arcp contract afn float %i.el, %i.em
  %i.eo = getelementptr inbounds nuw i8, ptr %.07610, i64 16
  store float %i.en, ptr %i.ek, align 4, !tbaa !102
  %i.ep = add nuw nsw i32 %.011, 2                ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.ep, %.082
  br i1 %exitcond.not.1, label %dt_masks_dynbuf_reserve_n.exit97.thread, label %.lr.ph, !llvm.loop !244

dt_masks_dynbuf_reserve_n.exit97.thread:          ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.g, %bb.h, %bb.b, %dt_masks_dynbuf_reserve_n.exit97, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @_brush_points_recurs(ptr noundef nonnull %0, ptr noundef nonnull %1, double noundef %2, double noundef %3, ptr nofree noundef nonnull captures(none) %4, ptr nofree noundef nonnull captures(none) %5, ptr nofree noundef nonnull captures(none) %6, ptr nofree noundef nonnull captures(none) %7, ptr nofree noundef nonnull writeonly captures(none) %8, ptr nofree noundef nonnull writeonly captures(none) %9, ptr nofree noundef nonnull writeonly captures(none) %10, ptr noundef nonnull %11, ptr noundef %12, ptr noundef %13) unnamed_addr #1 {
bb.a:
  %i.a = alloca [2 x float], align 8              ; 4 uses
  %i.b = alloca [2 x float], align 8              ; 4 uses
  %i.c = alloca [2 x float], align 4              ; 4 uses
  %i.d = alloca [2 x float], align 4              ; 4 uses
  %i.e = alloca [2 x float], align 4              ; 3 uses
  %.not = icmp eq ptr %12, null                   ; 2 uses
  %.not140 = icmp eq ptr %13, null
  %i.f = load float, ptr %4, align 4, !tbaa !102
  %i.g = fcmp reassoc nsz arcp contract afn oeq float %i.f, f0xFF7FFFFF
  br i1 %i.g, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.h = load float, ptr %0, align 4, !tbaa !102  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.j = load float, ptr %i.i, align 4, !tbaa !102 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load float, ptr %i.k, align 4, !tbaa !102 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.n = load float, ptr %i.m, align 4, !tbaa !102 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load float, ptr %i.o, align 4, !tbaa !102 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.r = load float, ptr %i.q, align 4, !tbaa !102 ; 2 uses
  %i.s = load float, ptr %1, align 4, !tbaa !102  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.u = load float, ptr %i.t, align 4, !tbaa !102 ; 2 uses
  %i.v = fptrunc reassoc nsz arcp contract afn double %2 to float ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load float, ptr %i.w, align 4, !tbaa !102 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.z = load float, ptr %i.y, align 4, !tbaa !102
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.ac = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.v ; 5 uses
  %i.ad = fmul reassoc nsz arcp contract afn float %i.ac, %i.ac ; 3 uses
  %i.ae = fmul reassoc nsz arcp contract afn float %i.ad, %i.ac ; 2 uses
  %i.af = fmul reassoc nsz arcp contract afn float %i.ad, 3.000000e+00 ; 3 uses
  %i.ag = fmul reassoc nsz arcp contract afn float %i.af, %i.v ; 2 uses
  %i.ah = fmul reassoc nsz arcp contract afn float %i.v, %i.v ; 3 uses
  %i.ai = fmul reassoc nsz arcp contract afn float %i.ah, 3.000000e+00 ; 3 uses
  %i.aj = fmul reassoc nsz arcp contract afn float %i.ai, %i.ac ; 2 uses
  %i.ak = fmul reassoc nsz arcp contract afn float %i.ah, %i.v ; 2 uses
  %i.al = fmul reassoc nsz arcp contract afn float %i.h, %i.ae
  %i.am = fmul reassoc nsz arcp contract afn float %i.l, %i.ag
  %14 = fmul reassoc nsz arcp contract afn float %i.p, %i.aj
  %i.an = fmul reassoc nsz arcp contract afn float %i.s, %i.ak
  %i.ao = fadd reassoc nsz arcp contract afn float %i.am, %i.al
  %15 = fadd reassoc nsz arcp contract afn float %i.ao, %14
  %i.ap = fadd reassoc nsz arcp contract afn float %15, %i.an ; 2 uses
  store float %i.ap, ptr %4, align 4, !tbaa !102
  %i.aq = fmul reassoc nsz arcp contract afn float %i.j, %i.ae
  %i.ar = fmul reassoc nsz arcp contract afn float %i.n, %i.ag
  %16 = fmul reassoc nsz arcp contract afn float %i.r, %i.aj
  %i.as = fmul reassoc nsz arcp contract afn float %i.u, %i.ak
  %i.at = fadd reassoc nsz arcp contract afn float %i.ar, %i.aq
  %17 = fadd reassoc nsz arcp contract afn float %i.at, %16
  %i.au = fadd reassoc nsz arcp contract afn float %17, %i.as
  store float %i.au, ptr %i.aa, align 4, !tbaa !102
  %i.av = fmul reassoc nsz arcp contract afn float %i.v, 2.000000e+00
  %i.aw = fmul reassoc nsz arcp contract afn float %i.av, %i.ac ; 2 uses
  %i.ax = fsub reassoc nsz arcp contract afn float %i.ad, %i.aw
  %i.ay = fmul reassoc nsz arcp contract afn float %i.ax, 3.000000e+00 ; 2 uses
  %i.az = fsub reassoc nsz arcp contract afn float %i.aw, %i.ah
  %i.ba = fmul reassoc nsz arcp contract afn float %i.az, 3.000000e+00 ; 2 uses
  %i.bb = fmul reassoc nsz arcp contract afn float %i.l, %i.ay
  %i.bc = fmul reassoc nsz arcp contract afn float %i.p, %i.ba
  %18 = fmul reassoc nsz arcp contract afn float %i.s, %i.ai
  %i.bd = fmul reassoc nsz arcp contract afn float %i.af, %i.h
  %19 = fsub reassoc nsz arcp contract afn float %i.bb, %i.bd
  %20 = fadd reassoc nsz arcp contract afn float %19, %i.bc
  %i.be = fadd reassoc nsz arcp contract afn float %20, %18 ; 3 uses
  %i.bf = fmul reassoc nsz arcp contract afn float %i.n, %i.ay
  %i.bg = fmul reassoc nsz arcp contract afn float %i.r, %i.ba
  %21 = fmul reassoc nsz arcp contract afn float %i.u, %i.ai
  %i.bh = fmul reassoc nsz arcp contract afn float %i.af, %i.j
  %22 = fsub reassoc nsz arcp contract afn float %i.bf, %i.bh
  %23 = fadd reassoc nsz arcp contract afn float %22, %i.bg
  %i.bi = fadd reassoc nsz arcp contract afn float %23, %21 ; 3 uses
  %i.bj = fcmp reassoc nsz arcp contract afn oeq float %i.be, 0.000000e+00
  %i.bk = fcmp reassoc nsz arcp contract afn oeq float %i.bi, 0.000000e+00
  %or.cond.i = and i1 %i.bj, %i.bk
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store float f0xFF7FFFFF, ptr %6, align 4, !tbaa !102
  br label %_brush_border_get_XY.exit

bb.d:                                             ; preds = %bb.b
  %i.bl = fmul reassoc nsz arcp contract afn double %2, %2
  %i.bm = fsub reassoc nsz arcp contract afn float %i.z, %i.x
  %i.bn = fpext reassoc nsz arcp contract afn float %i.bm to double
  %i.bo = fmul reassoc nsz arcp contract afn double %2, 2.000000e+00
  %i.bp = fsub reassoc nsz arcp contract afn double 3.000000e+00, %i.bo
  %i.bq = fmul reassoc nsz arcp contract afn double %i.bl, %i.bp
  %i.br = fmul reassoc nsz arcp contract afn double %i.bq, %i.bn
  %i.bs = fpext reassoc nsz arcp contract afn float %i.x to double
  %i.bt = fadd reassoc nsz arcp contract afn double %i.br, %i.bs
  %i.bu = fptrunc reassoc nsz arcp contract afn double %i.bt to float
  %i.bv = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %i.be, float noundef %i.bi) #20
  %i.bw = fdiv reassoc nsz arcp contract afn float %i.bu, %i.bv ; 2 uses
  %i.bx = fmul reassoc nsz arcp contract afn float %i.bw, %i.bi
  %i.by = fadd reassoc nsz arcp contract afn float %i.bx, %i.ap
  store float %i.by, ptr %6, align 4, !tbaa !102
  %i.bz = load float, ptr %i.aa, align 4, !tbaa !102
  %i.ca = fmul reassoc nsz arcp contract afn float %i.bw, %i.be
  %i.cb = fsub reassoc nsz arcp contract afn float %i.bz, %i.ca
  br label %_brush_border_get_XY.exit

_brush_border_get_XY.exit:                        ; preds = %bb.c, %bb.d
  %storemerge.i = phi float [ %i.cb, %bb.d ], [ f0xFF7FFFFF, %bb.c ]
  store float %storemerge.i, ptr %i.ab, align 4, !tbaa !102
  br label %bb.e

bb.e:                                             ; preds = %_brush_border_get_XY.exit, %bb.a
  %i.cc = load float, ptr %5, align 4, !tbaa !102 ; 2 uses
  %i.cd = fcmp reassoc nsz arcp contract afn oeq float %i.cc, f0xFF7FFFFF
  br i1 %i.cd, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ce = load float, ptr %0, align 4, !tbaa !102 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !102 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !102 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !102 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !102 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.co = load float, ptr %i.cn, align 4, !tbaa !102 ; 2 uses
  %i.cp = load float, ptr %1, align 4, !tbaa !102 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !102 ; 2 uses
  %i.cs = fptrunc reassoc nsz arcp contract afn double %3 to float ; 6 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !102 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !102
  %i.cx = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.cz = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.cs ; 5 uses
  %i.da = fmul reassoc nsz arcp contract afn float %i.cz, %i.cz ; 3 uses
  %i.db = fmul reassoc nsz arcp contract afn float %i.da, %i.cz ; 2 uses
  %i.dc = fmul reassoc nsz arcp contract afn float %i.da, 3.000000e+00 ; 3 uses
  %i.dd = fmul reassoc nsz arcp contract afn float %i.dc, %i.cs ; 2 uses
  %i.de = fmul reassoc nsz arcp contract afn float %i.cs, %i.cs ; 3 uses
  %i.df = fmul reassoc nsz arcp contract afn float %i.de, 3.000000e+00 ; 3 uses
  %i.dg = fmul reassoc nsz arcp contract afn float %i.df, %i.cz ; 2 uses
  %i.dh = fmul reassoc nsz arcp contract afn float %i.de, %i.cs ; 2 uses
  %i.di = fmul reassoc nsz arcp contract afn float %i.ce, %i.db
  %i.dj = fmul reassoc nsz arcp contract afn float %i.ci, %i.dd
  %24 = fmul reassoc nsz arcp contract afn float %i.cm, %i.dg
  %i.dk = fmul reassoc nsz arcp contract afn float %i.cp, %i.dh
  %i.dl = fadd reassoc nsz arcp contract afn float %i.dj, %i.di
  %25 = fadd reassoc nsz arcp contract afn float %i.dl, %24
  %i.dm = fadd reassoc nsz arcp contract afn float %25, %i.dk ; 2 uses
  store float %i.dm, ptr %5, align 4, !tbaa !102
  %i.dn = fmul reassoc nsz arcp contract afn float %i.cg, %i.db
  %i.do = fmul reassoc nsz arcp contract afn float %i.ck, %i.dd
  %26 = fmul reassoc nsz arcp contract afn float %i.co, %i.dg
  %i.dp = fmul reassoc nsz arcp contract afn float %i.cr, %i.dh
  %i.dq = fadd reassoc nsz arcp contract afn float %i.do, %i.dn
  %27 = fadd reassoc nsz arcp contract afn float %i.dq, %26
  %i.dr = fadd reassoc nsz arcp contract afn float %27, %i.dp
  store float %i.dr, ptr %i.cx, align 4, !tbaa !102
  %i.ds = fmul reassoc nsz arcp contract afn float %i.cs, 2.000000e+00
  %i.dt = fmul reassoc nsz arcp contract afn float %i.ds, %i.cz ; 2 uses
  %i.du = fsub reassoc nsz arcp contract afn float %i.da, %i.dt
  %i.dv = fmul reassoc nsz arcp contract afn float %i.du, 3.000000e+00 ; 2 uses
  %i.dw = fsub reassoc nsz arcp contract afn float %i.dt, %i.de
  %i.dx = fmul reassoc nsz arcp contract afn float %i.dw, 3.000000e+00 ; 2 uses
  %i.dy = fmul reassoc nsz arcp contract afn float %i.ci, %i.dv
  %i.dz = fmul reassoc nsz arcp contract afn float %i.cm, %i.dx
  %28 = fmul reassoc nsz arcp contract afn float %i.cp, %i.df
  %i.ea = fmul reassoc nsz arcp contract afn float %i.dc, %i.ce
  %29 = fsub reassoc nsz arcp contract afn float %i.dy, %i.ea
  %30 = fadd reassoc nsz arcp contract afn float %29, %i.dz
  %i.eb = fadd reassoc nsz arcp contract afn float %30, %28 ; 3 uses
  %i.ec = fmul reassoc nsz arcp contract afn float %i.ck, %i.dv
  %i.ed = fmul reassoc nsz arcp contract afn float %i.co, %i.dx
  %31 = fmul reassoc nsz arcp contract afn float %i.cr, %i.df
  %i.ee = fmul reassoc nsz arcp contract afn float %i.dc, %i.cg
  %32 = fsub reassoc nsz arcp contract afn float %i.ec, %i.ee
  %33 = fadd reassoc nsz arcp contract afn float %32, %i.ed
  %i.ef = fadd reassoc nsz arcp contract afn float %33, %31 ; 3 uses
  %i.eg = fcmp reassoc nsz arcp contract afn oeq float %i.eb, 0.000000e+00
  %i.eh = fcmp reassoc nsz arcp contract afn oeq float %i.ef, 0.000000e+00
  %or.cond.i150 = and i1 %i.eg, %i.eh
  br i1 %or.cond.i150, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store float f0xFF7FFFFF, ptr %7, align 4, !tbaa !102
  br label %_brush_border_get_XY.exit152

bb.h:                                             ; preds = %bb.f
  %i.ei = fmul reassoc nsz arcp contract afn double %3, %3
  %i.ej = fsub reassoc nsz arcp contract afn float %i.cw, %i.cu
  %i.ek = fpext reassoc nsz arcp contract afn float %i.ej to double
  %i.el = fmul reassoc nsz arcp contract afn double %3, 2.000000e+00
  %i.em = fsub reassoc nsz arcp contract afn double 3.000000e+00, %i.el
  %i.en = fmul reassoc nsz arcp contract afn double %i.ei, %i.em
  %i.eo = fmul reassoc nsz arcp contract afn double %i.en, %i.ek
  %i.ep = fpext reassoc nsz arcp contract afn float %i.cu to double
  %i.eq = fadd reassoc nsz arcp contract afn double %i.eo, %i.ep
  %i.er = fptrunc reassoc nsz arcp contract afn double %i.eq to float
  %i.es = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %i.eb, float noundef %i.ef) #20
  %i.et = fdiv reassoc nsz arcp contract afn float %i.er, %i.es ; 2 uses
  %i.eu = fmul reassoc nsz arcp contract afn float %i.et, %i.ef
  %i.ev = fadd reassoc nsz arcp contract afn float %i.eu, %i.dm
  store float %i.ev, ptr %7, align 4, !tbaa !102
  %i.ew = load float, ptr %i.cx, align 4, !tbaa !102
  %i.ex = fmul reassoc nsz arcp contract afn float %i.et, %i.eb
  %i.ey = fsub reassoc nsz arcp contract afn float %i.ew, %i.ex
  br label %_brush_border_get_XY.exit152

_brush_border_get_XY.exit152:                     ; preds = %bb.g, %bb.h
  %storemerge.i151 = phi float [ %i.ey, %bb.h ], [ f0xFF7FFFFF, %bb.g ]
  store float %storemerge.i151, ptr %i.cy, align 4, !tbaa !102
  %.pre.pre = load float, ptr %5, align 4, !tbaa !102
  br label %bb.i

bb.i:                                             ; preds = %_brush_border_get_XY.exit152, %bb.e
  %.pre = phi float [ %.pre.pre, %_brush_border_get_XY.exit152 ], [ %i.cc, %bb.e ] ; 5 uses
  %i.ez = fsub reassoc nsz arcp contract afn double %3, %2
  %i.fa = fcmp reassoc nsz arcp contract afn olt double %i.ez, f0x3F1A36E2E0000000
  br i1 %i.fa, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.fb = load float, ptr %4, align 4, !tbaa !102
  %i.fc = fptosi float %i.fb to i32
  %i.fd = fptosi float %.pre to i32
  %or.cond = icmp eq i32 %i.fc, %i.fd
  br i1 %or.cond, label %bb.k, label %bb.ap

bb.k:                                             ; preds = %bb.j
  %i.fe = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !102
  %i.fg = fptosi float %i.ff to i32
  %i.fh = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.fi = load float, ptr %i.fh, align 4, !tbaa !102
  %i.fj = fptosi float %i.fi to i32
  %or.cond141 = icmp eq i32 %i.fg, %i.fj
  br i1 %or.cond141, label %bb.l, label %bb.ap

bb.l:                                             ; preds = %bb.k
  br i1 %.not, label %.critedge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.fk = load float, ptr %6, align 4, !tbaa !102
  %i.fl = fptosi float %i.fk to i32
  %i.fm = load float, ptr %7, align 4, !tbaa !102
  %i.fn = fptosi float %i.fm to i32
  %or.cond142 = icmp eq i32 %i.fl, %i.fn
  br i1 %or.cond142, label %bb.n, label %bb.ap

bb.n:                                             ; preds = %bb.m
  %i.fo = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.fp = load float, ptr %i.fo, align 4, !tbaa !102
  %i.fq = fptosi float %i.fp to i32
  %i.fr = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !102
  %i.ft = fptosi float %i.fs to i32
  %or.cond143 = icmp eq i32 %i.fq, %i.ft
  br i1 %or.cond143, label %bb.o, label %bb.ap

bb.o:                                             ; preds = %bb.n, %bb.i
  store float %.pre, ptr %8, align 4, !tbaa !102
  %i.fu = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 9 uses
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !102 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %8, i64 4
  store float %i.fv, ptr %i.fw, align 4, !tbaa !102
  %i.fx = getelementptr inbounds nuw i8, ptr %11, i64 136 ; 6 uses
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !101 ; 2 uses
  %i.fz = add i64 %i.fy, 2                        ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %11, i64 144 ; 2 uses
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !169 ; 3 uses
  %.not.i = icmp ult i64 %i.fz, %i.gb
  br i1 %.not.i, label %bb.r, label %bb.p, !prof !170

bb.p:                                             ; preds = %bb.o
  %i.gc = icmp eq i64 %i.gb, 0
  br i1 %i.gc, label %dt_masks_dynbuf_add_2.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.gd = shl i64 %i.gb, 1
  %i.ge = add i64 %i.gd, 2
  %i.gf = tail call fastcc i32 @_dt_masks_dynbuf_growto(ptr noundef nonnull %11, i64 noundef %i.ge)
  %.not11.i = icmp eq i32 %i.gf, 0
  br i1 %.not11.i, label %dt_masks_dynbuf_add_2.exit, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.q
  %.pre.i = load i64, ptr %i.fx, align 8, !tbaa !101 ; 2 uses
  %.pre12.i = add i64 %.pre.i, 2
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge.i, %bb.o
  %.pre-phi.i = phi i64 [ %.pre12.i, %._crit_edge.i ], [ %i.fz, %bb.o ]
  %i.gg = phi i64 [ %.pre.i, %._crit_edge.i ], [ %i.fy, %bb.o ]
  %i.gh = load ptr, ptr %11, align 8, !tbaa !98
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %i.gg ; 2 uses
  store float %.pre, ptr %i.gi, align 4, !tbaa !102
  store i64 %.pre-phi.i, ptr %i.fx, align 8, !tbaa !101
  %i.gj = getelementptr i8, ptr %i.gi, i64 4
  store float %i.fv, ptr %i.gj, align 4, !tbaa !102
  br label %dt_masks_dynbuf_add_2.exit

dt_masks_dynbuf_add_2.exit:                       ; preds = %bb.p, %bb.q, %bb.r
  br i1 %.not, label %dt_masks_dynbuf_add_2.exit160, label %bb.s

bb.s:                                             ; preds = %dt_masks_dynbuf_add_2.exit
  %i.gk = load float, ptr %7, align 4, !tbaa !102 ; 4 uses
  %i.gl = fcmp reassoc nsz arcp contract afn oeq float %i.gk, f0xFF7FFFFF
  %i.gm = load float, ptr %6, align 4, !tbaa !102 ; 4 uses
  br i1 %i.gl, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store float %i.gm, ptr %7, align 4, !tbaa !102
  %i.gn = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.go = load float, ptr %i.gn, align 4, !tbaa !102
  %i.gp = getelementptr inbounds nuw i8, ptr %7, i64 4
  store float %i.go, ptr %i.gp, align 4, !tbaa !102
  %.pre183 = load float, ptr %6, align 4, !tbaa !102
  br label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.gq = fcmp reassoc nsz arcp contract afn oeq float %i.gm, f0xFF7FFFFF
  br i1 %i.gq, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store float %i.gk, ptr %6, align 4, !tbaa !102
  %i.gr = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !102
  %i.gt = getelementptr inbounds nuw i8, ptr %6, i64 4
  store float %i.gs, ptr %i.gt, align 4, !tbaa !102
  %.pre182 = load float, ptr %7, align 4, !tbaa !102
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v, %bb.t
  %i.gu = phi float [ %i.gm, %bb.u ], [ %i.gk, %bb.v ], [ %.pre183, %bb.t ] ; 2 uses
  %i.gv = phi float [ %i.gk, %bb.u ], [ %.pre182, %bb.v ], [ %i.gm, %bb.t ] ; 2 uses
  %i.gw = fptosi float %i.gv to i32
  %i.gx = fptosi float %i.gu to i32
  %i.gy = add i32 %i.gw, -3
  %i.gz = sub i32 %i.gy, %i.gx
  %i.ha = icmp ult i32 %i.gz, -5
  br i1 %i.ha, label %._crit_edge, label %bb.x

._crit_edge:                                      ; preds = %bb.w
  %.phi.trans.insert = getelementptr i8, ptr %6, i64 4
  %.val147.pre = load float, ptr %.phi.trans.insert, align 4, !tbaa !102
  %.phi.trans.insert185 = getelementptr i8, ptr %7, i64 4
  %.val149.pre = load float, ptr %.phi.trans.insert185, align 4, !tbaa !102
  br label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.hb = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.hc = load float, ptr %i.hb, align 4, !tbaa !102 ; 2 uses
  %i.hd = fptosi float %i.hc to i32
  %i.he = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.hf = load float, ptr %i.he, align 4, !tbaa !102 ; 2 uses
  %i.hg = fptosi float %i.hf to i32
  %i.hh = add i32 %i.hd, -3
  %i.hi = sub i32 %i.hh, %i.hg
  %i.hj = icmp ult i32 %i.hi, -5
  br i1 %i.hj, label %bb.y, label %_brush_points_recurs_border_small_gaps.exit

bb.y:                                             ; preds = %._crit_edge, %bb.x
  %.val149 = phi float [ %.val149.pre, %._crit_edge ], [ %i.hc, %bb.x ]
  %.val147 = phi float [ %.val147.pre, %._crit_edge ], [ %i.hf, %bb.x ]
  %i.hk = load float, ptr %i.fu, align 4, !tbaa !102 ; 2 uses
  %i.hl = fsub reassoc nsz arcp contract afn float %.val147, %i.hk ; 2 uses
  %i.hm = load float, ptr %5, align 4, !tbaa !102 ; 2 uses
  %i.hn = fsub reassoc nsz arcp contract afn float %i.gu, %i.hm ; 2 uses
  %i.ho = tail call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %i.hl, float %i.hn)
  %i.hp = fadd reassoc nsz arcp contract afn float %i.ho, f0x40C90FDB
  %i.hq = frem reassoc nsz arcp contract afn float %i.hp, f0x40C90FDB ; 4 uses
  %i.hr = fsub reassoc nsz arcp contract afn float %.val149, %i.hk ; 2 uses
  %i.hs = fsub reassoc nsz arcp contract afn float %i.gv, %i.hm ; 2 uses
  %i.ht = tail call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %i.hr, float %i.hs)
  %i.hu = fadd reassoc nsz arcp contract afn float %i.ht, f0x40C90FDB
  %i.hv = frem reassoc nsz arcp contract afn float %i.hu, f0x40C90FDB ; 2 uses
  %i.hw = fcmp reassoc nsz arcp contract afn oeq float %i.hq, %i.hv
  br i1 %i.hw, label %_brush_points_recurs_border_small_gaps.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
end_hunk_3
begin_hunk_4_@_brush_init_ctrl_points
define internal fastcc void @_brush_init_ctrl_points(ptr nofree noundef readonly captures(none) %0) unnamed_addr #16 {
bb.a:
  %1 = alloca [2 x %struct.dt_masks_point_brush_t], align 16 ; 8 uses
  %2 = alloca [2 x %struct.dt_masks_point_brush_t], align 16 ; 7 uses
  %.047.i = load ptr, ptr %0, align 8, !tbaa !92  ; 3 uses
  %.not6.i = icmp eq ptr %.047.i, null
  br i1 %.not6.i, label %g_list_shorter_than.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.047.i, i64 8
  %.047.i.1 = load ptr, ptr %i.a, align 8, !tbaa !92
  %.not6.i.1 = icmp eq ptr %.047.i.1, null
  br i1 %.not6.i.1, label %g_list_shorter_than.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 3 uses
  br label %bb.c

._crit_edge:                                      ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  br label %g_list_shorter_than.exit

bb.c:                                             ; preds = %.lr.ph, %bb.af
  %.085126 = phi ptr [ %.047.i, %.lr.ph ], [ %.085, %bb.af ] ; 4 uses
  %i.d = load ptr, ptr %.085126, align 8, !tbaa !104 ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load i32, ptr %i.e, align 4, !tbaa !175
  %i.g = and i32 %i.f, 1
  %.not94 = icmp eq i32 %i.g, 0
  br i1 %.not94, label %._crit_edge137, label %bb.d

._crit_edge137:                                   ; preds = %bb.c
  %.phi.trans.insert138 = getelementptr inbounds nuw i8, ptr %.085126, i64 8
  %.085.pre = load ptr, ptr %.phi.trans.insert138, align 8, !tbaa !92
  br label %bb.af

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %.085126, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !256  ; 3 uses
  %.not95 = icmp eq ptr %i.i, null                ; 2 uses
  br i1 %.not95, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !256
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = phi ptr [ null, %bb.d ], [ %i.k, %bb.e ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.085126, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !173  ; 4 uses
  %.not96 = icmp eq ptr %i.n, null                ; 2 uses
  br i1 %.not96, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !173
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.q = phi ptr [ null, %bb.f ], [ %i.p, %bb.g ] ; 2 uses
  %.not97 = icmp eq ptr %i.l, null
  br i1 %.not97, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !104
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.s = phi ptr [ %i.r, %bb.i ], [ null, %bb.h ] ; 2 uses
  br i1 %.not95, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = load ptr, ptr %i.i, align 8, !tbaa !104
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.u = phi ptr [ %i.t, %bb.k ], [ null, %bb.j ] ; 6 uses
  br i1 %.not96, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.v = load ptr, ptr %i.n, align 8, !tbaa !104
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.w = phi ptr [ %i.v, %bb.m ], [ null, %bb.l ] ; 7 uses
  %.not98 = icmp eq ptr %i.q, null
  br i1 %.not98, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.x = load ptr, ptr %i.q, align 8, !tbaa !104
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.y = phi ptr [ %i.x, %bb.o ], [ null, %bb.n ] ; 4 uses
  %i.z = icmp eq ptr %i.s, null                   ; 2 uses
  %i.aa = icmp eq ptr %i.u, null
  %or.cond = select i1 %i.z, i1 %i.aa, i1 false
  br i1 %or.cond, label %.thread, label %bb.q

.thread:                                          ; preds = %bb.p
  %i.ab = load <2 x float>, ptr %i.d, align 4, !tbaa !102 ; 4 uses
  %i.ac = extractelement <2 x float> %i.ab, i64 1 ; 2 uses
  %i.ad = extractelement <2 x float> %i.ab, i64 0 ; 2 uses
  %i.ae = load <2 x float>, ptr %i.w, align 4, !tbaa !102 ; 3 uses
  %i.af = extractelement <2 x float> %i.ae, i64 0
  %i.ag = fmul reassoc nsz arcp contract afn <2 x float> %i.ab, splat (float 2.000000e+00)
  %i.ah = fsub reassoc nsz arcp contract afn <2 x float> %i.ag, %i.ae ; 2 uses
  store <2 x float> %i.ah, ptr %i.c, align 4, !tbaa !102
  store <2 x float> %i.ah, ptr %1, align 16, !tbaa !102
  %i.ai = icmp eq ptr %i.y, null
  br i1 %i.ai, label %bb.v, label %bb.w

bb.q:                                             ; preds = %bb.p
  br i1 %i.z, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.aj = load <2 x float>, ptr %i.u, align 4, !tbaa !102
  %i.ak = fmul reassoc nsz arcp contract afn <2 x float> %i.aj, splat (float 2.000000e+00)
  %i.al = load <2 x float>, ptr %i.d, align 4, !tbaa !102
  %i.am = fsub reassoc nsz arcp contract afn <2 x float> %i.ak, %i.al
  store <2 x float> %i.am, ptr %1, align 16, !tbaa !102
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %.084 = phi ptr [ %i.s, %bb.q ], [ %1, %bb.r ]  ; 3 uses
  %i.an = icmp eq ptr %i.w, null
  %i.ao = icmp eq ptr %i.y, null                  ; 2 uses
  %or.cond3 = select i1 %i.an, i1 %i.ao, i1 false
  %i.ap = load float, ptr %i.d, align 4, !tbaa !102 ; 5 uses
  br i1 %or.cond3, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !102 ; 2 uses
  %i.as = insertelement <2 x float> poison, float %i.ap, i64 0
  %i.at = insertelement <2 x float> %i.as, float %i.ar, i64 1
  %i.au = fmul reassoc nsz arcp contract afn <2 x float> %i.at, splat (float 2.000000e+00)
  %i.av = load <2 x float>, ptr %i.u, align 4, !tbaa !102
  %i.aw = fsub reassoc nsz arcp contract afn <2 x float> %i.au, %i.av ; 3 uses
  %i.ax = extractelement <2 x float> %i.aw, i64 0
  store <2 x float> %i.aw, ptr %i.b, align 4, !tbaa !102
  store <2 x float> %i.aw, ptr %2, align 16, !tbaa !102
  br label %bb.w

bb.u:                                             ; preds = %bb.s
  br i1 %i.ao, label %._crit_edge127, label %._crit_edge133

._crit_edge133:                                   ; preds = %bb.u
  %.phi.trans.insert134 = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %.pre135 = load float, ptr %.phi.trans.insert134, align 4, !tbaa !102
  %.pre136 = load float, ptr %i.w, align 4, !tbaa !102
  br label %bb.w

._crit_edge127:                                   ; preds = %bb.u
  %i.ay = load <2 x float>, ptr %i.w, align 4, !tbaa !102
  %.phi.trans.insert130 = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %.pre131 = load float, ptr %.phi.trans.insert130, align 4, !tbaa !102 ; 2 uses
  %i.az = insertelement <2 x float> poison, float %i.ap, i64 0
  %i.ba = insertelement <2 x float> %i.az, float %.pre131, i64 1
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge127, %.thread
  %i.bb = phi float [ %i.ac, %.thread ], [ %.pre131, %._crit_edge127 ]
  %i.bc = phi float [ %i.ad, %.thread ], [ %i.ap, %._crit_edge127 ]
  %.084112116 = phi ptr [ %1, %.thread ], [ %.084, %._crit_edge127 ]
  %.083114115 = phi ptr [ %i.c, %.thread ], [ %i.u, %._crit_edge127 ]
  %i.bd = phi <2 x float> [ %i.ae, %.thread ], [ %i.ay, %._crit_edge127 ] ; 2 uses
  %i.be = phi <2 x float> [ %i.ab, %.thread ], [ %i.ba, %._crit_edge127 ]
  %i.bf = fmul reassoc nsz arcp contract afn <2 x float> %i.bd, splat (float 2.000000e+00)
  %i.bg = fsub reassoc nsz arcp contract afn <2 x float> %i.bf, %i.be
  store <2 x float> %i.bg, ptr %2, align 16, !tbaa !102
  %i.bh = extractelement <2 x float> %i.bd, i64 0
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge133, %.thread, %bb.v, %bb.t
  %i.bi = phi float [ %i.ax, %bb.t ], [ %i.bh, %bb.v ], [ %.pre136, %._crit_edge133 ], [ %i.af, %.thread ]
  %i.bj = phi float [ %i.ar, %bb.t ], [ %i.bb, %bb.v ], [ %.pre135, %._crit_edge133 ], [ %i.ac, %.thread ] ; 2 uses
  %i.bk = phi float [ %i.ap, %bb.t ], [ %i.bc, %bb.v ], [ %i.ap, %._crit_edge133 ], [ %i.ad, %.thread ] ; 2 uses
  %.083113 = phi ptr [ %i.u, %bb.t ], [ %.083114115, %bb.v ], [ %i.u, %._crit_edge133 ], [ %i.c, %.thread ] ; 4 uses
  %.084111 = phi ptr [ %.084, %bb.t ], [ %.084112116, %bb.v ], [ %.084, %._crit_edge133 ], [ %1, %.thread ] ; 2 uses
  %.082 = phi ptr [ %2, %bb.t ], [ %i.w, %bb.v ], [ %i.w, %._crit_edge133 ], [ %i.w, %.thread ] ; 4 uses
  %.0 = phi ptr [ %i.b, %bb.t ], [ %2, %bb.v ], [ %i.y, %._crit_edge133 ], [ %i.y, %.thread ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.084111, i64 4
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !102
  %i.bn = getelementptr inbounds nuw i8, ptr %.082, i64 4
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !102
  %i.bp = insertelement <2 x float> poison, float %i.bk, i64 0
  %i.bq = insertelement <2 x float> %i.bp, float %i.bj, i64 1
  %i.br = fmul reassoc nsz arcp contract afn <2 x float> %i.bq, splat (float 6.000000e+00)
  %i.bs = load <2 x float>, ptr %.083113, align 4, !tbaa !102 ; 3 uses
  %i.bt = extractelement <2 x float> %i.bs, i64 1
  %i.bu = fmul reassoc nsz arcp contract afn float %i.bt, 6.000000e+00
  %i.bv = fsub reassoc nsz arcp contract afn float %i.bu, %i.bm
  %i.bw = fadd reassoc nsz arcp contract afn float %i.bv, %i.bj
  %i.bx = fmul reassoc nsz arcp contract afn float %i.bw, f0x3E2AAAAB
  %i.by = fadd reassoc nsz arcp contract afn <2 x float> %i.br, %i.bs
  %i.bz = insertelement <2 x float> poison, float %i.bi, i64 0
  %i.ca = insertelement <2 x float> %i.bz, float %i.bo, i64 1
  %i.cb = fsub reassoc nsz arcp contract afn <2 x float> %i.by, %i.ca
  %i.cc = fmul reassoc nsz arcp contract afn <2 x float> %i.cb, splat (float f0x3E2AAAAB)
  %i.cd = getelementptr inbounds nuw i8, ptr %.083113, i64 16 ; 2 uses
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !102
  %i.cf = fcmp reassoc nsz arcp contract afn oeq float %i.ce, -1.000000e+00
  br i1 %i.cf, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cg = extractelement <2 x float> %i.bs, i64 0
  %i.ch = fmul reassoc nsz arcp contract afn float %i.cg, 6.000000e+00
  %i.ci = load float, ptr %.084111, align 4, !tbaa !102
  %3 = fadd reassoc nsz arcp contract afn float %i.bk, %i.ch
  %4 = fsub reassoc nsz arcp contract afn float %3, %i.ci
  %i.cj = fmul reassoc nsz arcp contract afn float %4, f0x3E2AAAAB
  store float %i.cj, ptr %i.cd, align 4, !tbaa !102
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.ck = getelementptr inbounds nuw i8, ptr %.083113, i64 20 ; 2 uses
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !102
  %i.cm = fcmp reassoc nsz arcp contract afn oeq float %i.cl, -1.000000e+00
  br i1 %i.cm, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store float %i.bx, ptr %i.ck, align 4, !tbaa !102
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.cn = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store <2 x float> %i.cc, ptr %i.cn, align 4, !tbaa !102
  %i.co = getelementptr inbounds nuw i8, ptr %.0, i64 4
  %i.cp = load float, ptr %i.co, align 4, !tbaa !102
  %i.cq = load <2 x float>, ptr %.083113, align 4, !tbaa !102
  %i.cr = load <2 x float>, ptr %i.d, align 4, !tbaa !102 ; 3 uses
  %i.cs = load <2 x float>, ptr %.082, align 4, !tbaa !102 ; 3 uses
  %i.ct = fmul reassoc nsz arcp contract afn <2 x float> %i.cr, splat (float 6.000000e+00)
  %i.cu = fsub reassoc nsz arcp contract afn <2 x float> %i.ct, %i.cq
  %i.cv = fadd reassoc nsz arcp contract afn <2 x float> %i.cu, %i.cs
  %i.cw = fmul reassoc nsz arcp contract afn <2 x float> %i.cv, splat (float f0x3E2AAAAB)
  %i.cx = extractelement <2 x float> %i.cs, i64 1
  %i.cy = fmul reassoc nsz arcp contract afn float %i.cx, 6.000000e+00
  %i.cz = extractelement <2 x float> %i.cr, i64 1
  %i.da = fadd reassoc nsz arcp contract afn float %i.cy, %i.cz
  %i.db = fsub reassoc nsz arcp contract afn float %i.da, %i.cp
  %i.dc = fmul reassoc nsz arcp contract afn float %i.db, f0x3E2AAAAB
  %i.dd = getelementptr inbounds nuw i8, ptr %.082, i64 8 ; 2 uses
  %i.de = load float, ptr %i.dd, align 4, !tbaa !102
  %i.df = fcmp reassoc nsz arcp contract afn oeq float %i.de, -1.000000e+00
  br i1 %i.df, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dg = extractelement <2 x float> %i.cs, i64 0
  %i.dh = fmul reassoc nsz arcp contract afn float %i.dg, 6.000000e+00
  %i.di = extractelement <2 x float> %i.cr, i64 0
  %i.dj = fadd reassoc nsz arcp contract afn float %i.dh, %i.di
  %i.dk = load float, ptr %.0, align 4, !tbaa !102
  %i.dl = fsub reassoc nsz arcp contract afn float %i.dj, %i.dk
  %i.dm = fmul reassoc nsz arcp contract afn float %i.dl, f0x3E2AAAAB
  store float %i.dm, ptr %i.dd, align 4, !tbaa !102
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.dn = getelementptr inbounds nuw i8, ptr %.082, i64 12 ; 2 uses
  %i.do = load float, ptr %i.dn, align 4, !tbaa !102
  %i.dp = fcmp reassoc nsz arcp contract afn oeq float %i.do, -1.000000e+00
  br i1 %i.dp, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store float %i.dc, ptr %i.dn, align 4, !tbaa !102
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.dq = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store <2 x float> %i.cw, ptr %i.dq, align 4, !tbaa !102
  br label %bb.af

bb.af:                                            ; preds = %._crit_edge137, %bb.ae
  %.085 = phi ptr [ %.085.pre, %._crit_edge137 ], [ %i.n, %bb.ae ] ; 2 uses
  %.not93 = icmp eq ptr %.085, null
  br i1 %.not93, label %._crit_edge, label %bb.c

g_list_shorter_than.exit:                         ; preds = %bb.a, %bb.b, %._crit_edge
  ret void
}

declare void @dt_masks_gui_form_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare ptr @g_list_nth(ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @dt_dev_add_masks_history_item(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare float @dt_masks_change_size(i32 noundef, float noundef, float noundef, float noundef) local_unnamed_addr #4

declare void @dt_toast_log(ptr noundef, ...) local_unnamed_addr #4

declare void @dt_dev_masks_list_change(ptr noundef) local_unnamed_addr #4

declare float @dt_masks_form_change_opacity(ptr noundef, i32 noundef, float noundef) local_unnamed_addr #4

declare i32 @gtk_accelerator_get_default_mod_mask() local_unnamed_addr #4

declare void @dt_masks_set_source_pos_initial_state(ptr noundef, i32 noundef, float noundef, float noundef) local_unnamed_addr #4

declare void @dt_masks_set_source_pos_initial_value(ptr noundef, i32 noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #4

declare ptr @dt_conf_get_string_const(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #17

; Function Attrs: nounwind uwtable
define internal fastcc float @_brush_get_position_in_segment(float noundef %0, float noundef %1, ptr %.0.val, i32 noundef %2) unnamed_addr #1 {
g_list_next_bounded.exit38:
  %i.a = tail call ptr @g_list_nth(ptr noundef %.0.val, i32 noundef %2) #18 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !104  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !173  ; 2 uses
  %.not6.i = icmp eq ptr %i.d, null
  %spec.select = select i1 %.not6.i, ptr %i.a, ptr %i.d ; 3 uses
  %i.e = load ptr, ptr %spec.select, align 8, !tbaa !104 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %spec.select, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !173  ; 2 uses
  %.not6.i34 = icmp eq ptr %i.g, null
  %i.h = select i1 %.not6.i34, ptr %spec.select, ptr %i.g ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !104  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !173  ; 2 uses
  %.not6.i37 = icmp eq ptr %i.k, null
  %i.l = select i1 %.not6.i37, ptr %i.h, ptr %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !104  ; 2 uses
  %i.n = load float, ptr %i.b, align 4, !tbaa !102
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.p = load float, ptr %i.o, align 4, !tbaa !102
  %i.q = load float, ptr %i.e, align 4, !tbaa !102
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.s = load float, ptr %i.r, align 4, !tbaa !102
  %i.t = load float, ptr %i.i, align 4, !tbaa !102
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.v = load float, ptr %i.u, align 4, !tbaa !102
  %i.w = load float, ptr %i.m, align 4, !tbaa !102
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.y = load float, ptr %i.x, align 4, !tbaa !102
  %factor.op.fmul22 = fneg reassoc nsz arcp contract afn float %i.n
  %factor.op.fmul26 = fneg reassoc nsz arcp contract afn float %i.p
  br label %bb.b

bb.a:                                             ; preds = %bb.b
  ret float %.1

bb.b:                                             ; preds = %g_list_next_bounded.exit38, %bb.b
  %.030 = phi float [ 0.000000e+00, %g_list_next_bounded.exit38 ], [ %.1, %bb.b ]
  %.02929 = phi float [ f0x7F7FFFFF, %g_list_next_bounded.exit38 ], [ %.130, %bb.b ] ; 2 uses
  %.03128 = phi i32 [ 0, %g_list_next_bounded.exit38 ], [ %i.ba, %bb.b ] ; 2 uses
  %i.z = uitofp nneg i32 %.03128 to float         ; 2 uses
  %i.aa = fmul reassoc nnan nsz arcp contract afn float %i.z, f0x3C23D70A ; 5 uses
  %i.ab = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.aa ; 4 uses
  %i.ac = fmul reassoc nsz arcp contract afn float %i.ab, %i.ab ; 2 uses
  %i.ad = fmul reassoc nsz arcp contract afn float %i.ac, %i.ab ; 2 uses
  %i.ae = fmul reassoc nnan nsz arcp contract afn float %i.z, 3.000000e-02
  %i.af = fmul reassoc nsz arcp contract afn float %i.ae, %i.ac ; 2 uses
  %i.ag = fmul reassoc nnan nsz arcp contract afn float %i.aa, %i.aa ; 2 uses
  %i.ah = fmul reassoc nnan nsz arcp contract afn float %i.ag, 3.000000e+00
  %i.ai = fmul reassoc nsz arcp contract afn float %i.ah, %i.ab ; 2 uses
  %i.aj = fmul reassoc nsz arcp contract afn float %i.ag, %i.aa ; 2 uses
  %.neg2.reass = fmul reassoc nsz arcp contract afn float %i.ad, %factor.op.fmul22
  %i.ak = fmul reassoc nsz arcp contract afn float %i.q, %i.af
  %i.al = fmul reassoc nsz arcp contract afn float %i.t, %i.ai
  %i.am = fadd reassoc nsz arcp contract afn float %i.ak, %i.al
  %i.an = fmul reassoc nsz arcp contract afn float %i.w, %i.aj
  %i.ao = fadd reassoc nsz arcp contract afn float %i.am, %i.an
  %reass.add16 = fsub reassoc nsz arcp contract afn float %.neg2.reass, %i.ao
  %i.ap = fadd reassoc nsz arcp contract afn float %reass.add16, %0 ; 2 uses
  %i.aq = fmul reassoc nsz arcp contract afn float %i.ap, %i.ap
  %.neg9.reass = fmul reassoc nsz arcp contract afn float %i.ad, %factor.op.fmul26
  %i.ar = fmul reassoc nsz arcp contract afn float %i.s, %i.af
  %i.as = fmul reassoc nsz arcp contract afn float %i.v, %i.ai
  %i.at = fadd reassoc nsz arcp contract afn float %i.ar, %i.as
  %i.au = fmul reassoc nsz arcp contract afn float %i.y, %i.aj
  %i.av = fadd reassoc nsz arcp contract afn float %i.at, %i.au
  %reass.add19 = fsub reassoc nsz arcp contract afn float %.neg9.reass, %i.av
  %i.aw = fadd reassoc nsz arcp contract afn float %reass.add19, %1 ; 2 uses
  %i.ax = fmul reassoc nsz arcp contract afn float %i.aw, %i.aw
  %i.ay = fadd reassoc nsz arcp contract afn float %i.ax, %i.aq ; 2 uses
  %i.az = fcmp reassoc nsz arcp contract afn olt float %i.ay, %.02929 ; 2 uses
  %.130 = select nsz i1 %i.az, float %i.ay, float %.02929
  %.1 = select nsz i1 %i.az, float %i.aa, float %.030 ; 2 uses
  %i.ba = add nuw nsw i32 %.03128, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.ba, 101
  br i1 %exitcond.not, label %bb.a, label %bb.b
}

declare ptr @g_list_insert(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @dt_masks_set_edit_mode(ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @dt_masks_iop_update(ptr noundef) local_unnamed_addr #4

declare void @dt_masks_change_form_gui(ptr noundef) local_unnamed_addr #4

declare void @dt_masks_clear_form_gui(ptr noundef) local_unnamed_addr #4

declare ptr @g_list_remove(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @dt_masks_form_remove(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @dt_masks_get_from_id(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_brush_ramer_douglas_peucker(ptr noundef %0, i32 noundef %1, ptr noundef %2, float noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = add i32 %1, -1                           ; 6 uses
  %i.b = icmp sgt i32 %1, 2
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = load float, ptr %2, align 4, !tbaa !102  ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.e = load float, ptr %i.d, align 4, !tbaa !102 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load float, ptr %i.f, align 4, !tbaa !102 ; 4 uses
  %i.h = shl nuw nsw i32 %i.a, 1
  %i.i = zext nneg i32 %i.h to i64
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.i
  %i.k = shl nsw i32 %i.a, 2
  %i.l = zext nneg i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.l ; 3 uses
  %i.n = load float, ptr %i.m, align 4, !tbaa !102 ; 2 uses
  %i.o = getelementptr i8, ptr %i.m, i64 4
  %i.p = load float, ptr %i.o, align 4, !tbaa !102 ; 2 uses
  %i.q = getelementptr i8, ptr %i.m, i64 8
  %i.r = load float, ptr %i.q, align 4, !tbaa !102 ; 2 uses
  %i.s = load <2 x float>, ptr %0, align 4, !tbaa !102 ; 5 uses
  %i.t = load <2 x float>, ptr %i.j, align 4, !tbaa !102 ; 2 uses
  %i.u = fsub reassoc nsz arcp contract afn <2 x float> %i.t, %i.s ; 5 uses
  %i.v = fsub reassoc nsz arcp contract afn float %i.n, %i.c
  %i.w = fsub reassoc nsz arcp contract afn float %i.p, %i.e
  %i.x = fsub reassoc nsz arcp contract afn float %i.r, %i.g
  %foldExtExtBinop = fmul reassoc nsz arcp contract afn <2 x float> %i.u, %i.u
  %i.y = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.z = extractelement <2 x float> %i.u, i64 1   ; 3 uses
  %i.aa = fmul reassoc nsz arcp contract afn float %i.z, %i.z
  %i.ab = fadd reassoc nsz arcp contract afn float %i.aa, %i.y
  %.fr96 = freeze float %i.ab                     ; 2 uses
  %i.ac = fcmp reassoc nsz arcp contract afn oeq float %.fr96, 0.000000e+00
  br i1 %i.ac, label %_brush_point_line_distance2.exit.us.preheader, label %.lr.ph.split

_brush_point_line_distance2.exit.us.preheader:    ; preds = %.lr.ph
  %wide.trip.count102 = zext nneg i32 %i.a to i64
  %i.ad = extractelement <2 x float> %i.s, i64 0
  %i.ae = extractelement <2 x float> %i.s, i64 1
  br label %_brush_point_line_distance2.exit.us

_brush_point_line_distance2.exit.us:              ; preds = %_brush_point_line_distance2.exit.us.preheader, %_brush_point_line_distance2.exit.us
  %indvars.iv99 = phi i64 [ 1, %_brush_point_line_distance2.exit.us.preheader ], [ %indvars.iv.next100, %_brush_point_line_distance2.exit.us ] ; 4 uses
  %.07185.us = phi float [ 0.000000e+00, %_brush_point_line_distance2.exit.us.preheader ], [ %.1.us, %_brush_point_line_distance2.exit.us ] ; 2 uses
  %.07284.us = phi i32 [ 0, %_brush_point_line_distance2.exit.us.preheader ], [ %.173.us, %_brush_point_line_distance2.exit.us ]
  %.idx106 = shl nuw nsw i64 %indvars.iv99, 3
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 %.idx106 ; 2 uses
  %i.ag = load float, ptr %i.af, align 4, !tbaa !102
  %i.ah = getelementptr i8, ptr %i.af, i64 4
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !102
  %.idx107 = shl nuw nsw i64 %indvars.iv99, 4
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %.idx107 ; 3 uses
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !102
  %i.al = getelementptr i8, ptr %i.aj, i64 4
  %i.am = load float, ptr %i.al, align 4, !tbaa !102
  %i.an = getelementptr i8, ptr %i.aj, i64 8
  %i.ao = load float, ptr %i.an, align 4, !tbaa !102
  %i.ap = fsub reassoc nsz arcp contract afn float %i.ag, %i.ad ; 2 uses
  %i.aq = fsub reassoc nsz arcp contract afn float %i.ai, %i.ae ; 2 uses
  %.0.i.us = fsub reassoc nsz arcp contract afn float %i.ao, %i.g ; 2 uses
  %.0105.i.us = fsub reassoc nsz arcp contract afn float %i.am, %i.e ; 2 uses
  %.0106.i.us = fsub reassoc nsz arcp contract afn float %i.ak, %i.c ; 2 uses
  %i.ar = fmul reassoc nsz arcp contract afn float %i.ap, %i.ap
  %i.as = fmul reassoc nsz arcp contract afn float %i.aq, %i.aq
  %4 = fmul reassoc nsz arcp contract afn float %.0106.i.us, %.0106.i.us
  %i.at = fmul reassoc nsz arcp contract afn float %.0105.i.us, %.0105.i.us
  %5 = fmul reassoc nsz arcp contract afn float %.0.i.us, %.0.i.us
  %reass.add.i.us = fadd reassoc nsz arcp contract afn float %5, %i.at
  %reass.mul.i.us.a = fmul reassoc nsz arcp contract afn float %reass.add.i.us, f0x3C23D70A
  %i.au = fadd reassoc nsz arcp contract afn float %i.as, %i.ar
  %6 = fadd reassoc nsz arcp contract afn float %i.au, %4
  %i.av = fadd reassoc nsz arcp contract afn float %6, %reass.mul.i.us.a ; 2 uses
  %i.aw = fcmp reassoc nsz arcp contract afn ogt float %i.av, %.07185.us ; 2 uses
  %i.ax = trunc nuw nsw i64 %indvars.iv99 to i32
  %.173.us = select i1 %i.aw, i32 %i.ax, i32 %.07284.us ; 2 uses
  %.1.us = select nsz i1 %i.aw, float %i.av, float %.07185.us ; 2 uses
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 1 ; 2 uses
  %exitcond103.not = icmp eq i64 %indvars.iv.next100, %wide.trip.count102
  br i1 %exitcond103.not, label %._crit_edge, label %_brush_point_line_distance2.exit.us

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.ay = extractelement <2 x float> %i.u, i64 0
  %i.az = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %.fr96 ; 2 uses
  %factor.op.fmul92 = fmul reassoc nsz arcp contract afn float %i.ay, %i.az
  %factor.op.fmul94 = fmul reassoc nsz arcp contract afn float %i.z, %i.az
  %wide.trip.count = zext nneg i32 %i.a to i64
  br label %bb.b

._crit_edge:                                      ; preds = %_brush_point_line_distance2.exit, %_brush_point_line_distance2.exit.us, %bb.a
  %.072.lcssa = phi i32 [ 0, %bb.a ], [ %.173.us, %_brush_point_line_distance2.exit.us ], [ %.173, %_brush_point_line_distance2.exit ] ; 4 uses
  %.071.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %.1.us, %_brush_point_line_distance2.exit.us ], [ %.1, %_brush_point_line_distance2.exit ]
  %i.ba = fcmp reassoc nsz arcp contract afn ult float %.071.lcssa, %3
  br i1 %i.ba, label %common.ret, label %bb.f

bb.b:                                             ; preds = %.lr.ph.split, %_brush_point_line_distance2.exit
  %indvars.iv = phi i64 [ 1, %.lr.ph.split ], [ %indvars.iv.next, %_brush_point_line_distance2.exit ] ; 4 uses
  %.07185 = phi float [ 0.000000e+00, %.lr.ph.split ], [ %.1, %_brush_point_line_distance2.exit ] ; 2 uses
  %.07284 = phi i32 [ 0, %.lr.ph.split ], [ %.173, %_brush_point_line_distance2.exit ]
  %.idx = shl nuw nsw i64 %indvars.iv, 3
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %.idx105 = shl nuw nsw i64 %indvars.iv, 4
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 %.idx105 ; 3 uses
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !102
  %i.be = getelementptr i8, ptr %i.bc, i64 4
  %i.bf = load float, ptr %i.be, align 4, !tbaa !102
  %i.bg = getelementptr i8, ptr %i.bc, i64 8
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !102
  %i.bi = load <2 x float>, ptr %i.bb, align 4, !tbaa !102 ; 3 uses
  %i.bj = fsub reassoc nsz arcp contract afn <2 x float> %i.bi, %i.s ; 3 uses
  %i.bk = extractelement <2 x float> %i.bj, i64 0
  %.reass93 = fmul reassoc nsz arcp contract afn float %factor.op.fmul92, %i.bk
  %i.bl = extractelement <2 x float> %i.bj, i64 1
  %.reass95 = fmul reassoc nsz arcp contract afn float %factor.op.fmul94, %i.bl
  %i.bm = fadd reassoc nsz arcp contract afn float %.reass95, %.reass93 ; 6 uses
  %i.bn = fcmp reassoc nsz arcp contract afn olt float %i.bm, 0.000000e+00
  br i1 %i.bn, label %_brush_point_line_distance2.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bo = fcmp reassoc nsz arcp contract afn ogt float %i.bm, 1.000000e+00
  br i1 %i.bo, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bp = fsub reassoc nsz arcp contract afn <2 x float> %i.bi, %i.t
  br label %_brush_point_line_distance2.exit

bb.e:                                             ; preds = %bb.c
  %i.bq = insertelement <2 x float> poison, float %i.bm, i64 0
  %i.br = shufflevector <2 x float> %i.bq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bs = fmul reassoc nsz arcp contract afn <2 x float> %i.u, %i.br
  %i.bt = fadd reassoc nsz arcp contract afn <2 x float> %i.s, %i.bs
  %i.bu = fsub reassoc nsz arcp contract afn <2 x float> %i.bi, %i.bt
  %i.bv = fmul reassoc nsz arcp contract afn float %i.bm, %i.v
  %i.bw = fadd reassoc nsz arcp contract afn float %i.bv, %i.c
  %i.bx = fmul reassoc nsz arcp contract afn float %i.bm, %i.w
  %i.by = fadd reassoc nsz arcp contract afn float %i.bx, %i.e
  %i.bz = fmul reassoc nsz arcp contract afn float %i.bm, %i.x
  %i.ca = fadd reassoc nsz arcp contract afn float %i.bz, %i.g
  br label %_brush_point_line_distance2.exit

_brush_point_line_distance2.exit:                 ; preds = %bb.b, %bb.d, %bb.e
  %.pn.i = phi float [ %i.bw, %bb.e ], [ %i.c, %bb.b ], [ %i.n, %bb.d ]
  %.pn110.i = phi float [ %i.by, %bb.e ], [ %i.e, %bb.b ], [ %i.p, %bb.d ]
  %.pn111.i = phi float [ %i.ca, %bb.e ], [ %i.g, %bb.b ], [ %i.r, %bb.d ]
  %i.cb = phi <2 x float> [ %i.bu, %bb.e ], [ %i.bj, %bb.b ], [ %i.bp, %bb.d ] ; 4 uses
  %.0.i = fsub reassoc nsz arcp contract afn float %i.bh, %.pn111.i ; 2 uses
  %.0105.i = fsub reassoc nsz arcp contract afn float %i.bf, %.pn110.i ; 2 uses
  %.0106.i = fsub reassoc nsz arcp contract afn float %i.bd, %.pn.i ; 2 uses
  %foldExtExtBinop111 = fmul reassoc nsz arcp contract afn <2 x float> %i.cb, %i.cb
  %foldExtExtBinop113 = fmul reassoc nsz arcp contract afn <2 x float> %i.cb, %i.cb
  %i.cc = fmul reassoc nsz arcp contract afn float %.0106.i, %.0106.i
  %7 = fmul reassoc nsz arcp contract afn float %.0105.i, %.0105.i
  %8 = fmul reassoc nsz arcp contract afn float %.0.i, %.0.i
  %reass.add.i = fadd reassoc nsz arcp contract afn float %8, %7
  %reass.mul.i = fmul reassoc nsz arcp contract afn float %reass.add.i, f0x3C23D70A
  %shift = shufflevector <2 x float> %foldExtExtBinop113, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop115 = fadd reassoc nsz arcp contract afn <2 x float> %shift, %foldExtExtBinop111
  %9 = extractelement <2 x float> %foldExtExtBinop115, i64 0
  %10 = fadd reassoc nsz arcp contract afn float %9, %i.cc
  %11 = fadd reassoc nsz arcp contract afn float %10, %reass.mul.i ; 2 uses
  %i.cd = fcmp reassoc nsz arcp contract afn ogt float %11, %.07185 ; 2 uses
  %i.ce = trunc nuw nsw i64 %indvars.iv to i32
  %.173 = select i1 %i.cd, i32 %i.ce, i32 %.07284 ; 2 uses
  %.1 = select nsz i1 %i.cd, float %11, float %.07185 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b

common.ret118:                                    ; preds = %bb.f, %common.ret
  %common.ret118.op = phi ptr [ %i.do, %common.ret ], [ %i.cs, %bb.f ]
  ret ptr %common.ret118.op

bb.f:                                             ; preds = %._crit_edge
  %i.cf = add nuw nsw i32 %.072.lcssa, 1
  %i.cg = tail call fastcc ptr @_brush_ramer_douglas_peucker(ptr noundef %0, i32 noundef %i.cf, ptr noundef %2, float noundef %3) ; 2 uses
  %i.ch = shl nuw nsw i32 %.072.lcssa, 1
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ci
  %i.ck = sub nsw i32 %1, %.072.lcssa
  %i.cl = shl nsw i32 %.072.lcssa, 2
  %i.cm = zext nneg i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.cm
  %i.co = tail call fastcc ptr @_brush_ramer_douglas_peucker(ptr noundef %i.cj, i32 noundef %i.ck, ptr noundef %i.cn, float noundef %3)
  %i.cp = tail call ptr @g_list_last(ptr noundef %i.cg) #18 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !104
  tail call void @free(ptr noundef %i.cq) #18
  %i.cr = tail call ptr @g_list_delete_link(ptr noundef %i.cg, ptr noundef nonnull %i.cp) #18
  %i.cs = tail call ptr @g_list_concat(ptr noundef %i.cr, ptr noundef %i.co) #18
  br label %common.ret118

common.ret:                                       ; preds = %._crit_edge
  %i.ct = tail call noalias dereferenceable_or_null(44) ptr @malloc(i64 noundef 44) #19 ; 5 uses
  %i.cu = load <2 x float>, ptr %0, align 4, !tbaa !102
  store <2 x float> %i.cu, ptr %i.ct, align 4, !tbaa !102
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store <4 x float> splat (float -1.000000e+00), ptr %i.cv, align 4, !tbaa !102
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.cx = load <3 x float>, ptr %2, align 4, !tbaa !102
  %i.cy = shufflevector <3 x float> %i.cx, <3 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 1>
  store <4 x float> %i.cy, ptr %i.cw, align 4, !tbaa !102
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ct, i64 40
  store i32 1, ptr %i.cz, align 4, !tbaa !175
  %i.da = tail call ptr @g_list_append(ptr noundef null, ptr noundef nonnull %i.ct) #18
  %i.db = tail call noalias dereferenceable_or_null(44) ptr @malloc(i64 noundef 44) #19 ; 5 uses
  %i.dc = shl nsw i32 %i.a, 1
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr inbounds [4 x i8], ptr %0, i64 %i.dd
  %i.df = load <2 x float>, ptr %i.de, align 4, !tbaa !102
  store <2 x float> %i.df, ptr %i.db, align 4, !tbaa !102
  %i.dg = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  store <4 x float> splat (float -1.000000e+00), ptr %i.dg, align 4, !tbaa !102
  %i.dh = shl nsw i32 %i.a, 2
  %i.di = sext i32 %i.dh to i64
  %i.dj = getelementptr inbounds [4 x i8], ptr %2, i64 %i.di
  %i.dk = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  %i.dl = load <3 x float>, ptr %i.dj, align 4, !tbaa !102
  %i.dm = shufflevector <3 x float> %i.dl, <3 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 1>
  store <4 x float> %i.dm, ptr %i.dk, align 4, !tbaa !102
  %i.dn = getelementptr inbounds nuw i8, ptr %i.db, i64 40
  store i32 1, ptr %i.dn, align 4, !tbaa !175
  %i.do = tail call ptr @g_list_append(ptr noundef %i.da, ptr noundef nonnull %i.db) #18
  br label %common.ret118
}

declare void @dt_masks_gui_form_save_creation(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @dt_dev_add_history_item(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @dt_masks_set_edit_mode_single_form(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @dt_dev_masks_selection_change(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @gtk_toggle_button_set_active(ptr noundef, i32 noundef) local_unnamed_addr #4

declare ptr @dt_masks_create(i32 noundef) local_unnamed_addr #4

declare void @dt_masks_select_form(ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @g_list_last(ptr noundef) local_unnamed_addr #4

declare ptr @g_list_delete_link(ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @g_list_concat(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @g_strcmp0(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @cairo_save(ptr noundef) local_unnamed_addr #4

declare void @dt_gui_gtk_set_source_rgba(ptr noundef, i32 noundef, float noundef) local_unnamed_addr #4

declare void @cairo_set_line_width(ptr noundef, double noundef) local_unnamed_addr #4

declare void @cairo_arc(ptr noundef, double noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #4

declare void @cairo_fill_preserve(ptr noundef) local_unnamed_addr #4

declare void @cairo_set_source_rgba(ptr noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #4

declare void @cairo_stroke(ptr noundef) local_unnamed_addr #4

declare void @cairo_set_dash(ptr noundef, ptr noundef, i32 noundef, double noundef) local_unnamed_addr #4

declare void @dt_masks_calculate_source_pos_value(ptr noundef, i32 noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @dt_masks_draw_clone_source_pos(ptr noundef, float noundef, float noundef, float noundef) local_unnamed_addr #4

declare void @cairo_restore(ptr noundef) local_unnamed_addr #4

declare void @cairo_set_line_join(ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @cairo_set_line_cap(ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @cairo_move_to(ptr noundef, double noundef, double noundef) local_unnamed_addr #4

declare void @cairo_line_to(ptr noundef, double noundef, double noundef) local_unnamed_addr #4

declare void @dt_masks_line_stroke(ptr noundef, i32 noundef, i32 noundef, i32 noundef, float noundef) local_unnamed_addr #4

declare void @dt_masks_draw_anchor(ptr noundef, i32 noundef, float noundef, float noundef, float noundef) local_unnamed_addr #4

declare void @dt_masks_draw_ctrl(ptr noundef, float noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #4

declare void @dt_masks_closest_point(i32 noundef, i32 noundef, ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @dt_masks_draw_arrow(ptr noundef, float noundef, float noundef, float noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #4

declare void @dt_masks_stroke_arrow(ptr noundef, ptr noundef, i32 noundef, float noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { float, float } @llvm.sincos.f32(float) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v2i32(<2 x i32>) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { <8 x float>, <8 x float> } @llvm.sincos.v8f32(<8 x float>) #14

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #16 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #18 = { nounwind }
attributes #19 = { nounwind allocsize(0) }
attributes #20 = { nounwind willreturn memory(none) }
attributes #21 = { nounwind willreturn memory(read) }
attributes #22 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!7, !8, i64 0}
!7 = !{!"__libc_errno", !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !8, i64 172}
!12 = !{!"dt_masks_form_gui_t", !13, i64 0, !15, i64 8, !15, i64 16, !8, i64 24, !16, i64 28, !16, i64 32, !16, i64 36, !16, i64 40, !16, i64 44, !16, i64 48, !16, i64 52, !16, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !8, i64 72, !8, i64 76, !8, i64 80, !8, i64 84, !8, i64 88, !8, i64 92, !8, i64 96, !8, i64 100, !8, i64 104, !8, i64 108, !8, i64 112, !8, i64 116, !8, i64 120, !8, i64 124, !8, i64 128, !8, i64 132, !8, i64 136, !8, i64 140, !8, i64 144, !8, i64 148, !16, i64 152, !16, i64 156, !8, i64 160, !8, i64 164, !8, i64 168, !8, i64 172, !8, i64 176, !8, i64 180, !17, i64 184, !17, i64 192, !8, i64 200, !8, i64 204, !18, i64 208, !14, i64 216, !14, i64 224}
!13 = !{!"p1 _ZTS6_GList", !14, i64 0}
!14 = !{!"any pointer", !9, i64 0}
!15 = !{!"p1 _ZTS17dt_masks_dynbuf_t", !14, i64 0}
!16 = !{!"float", !9, i64 0}
!17 = !{!"p1 _ZTS15dt_iop_module_t", !14, i64 0}
!18 = !{!"long", !9, i64 0}
!19 = !{!12, !8, i64 60}
!20 = !{!12, !8, i64 64}
!21 = !{!22, !26, i64 64}
!22 = !{!"darktable_t", !23, i64 0, !8, i64 4, !8, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !24, i64 48, !25, i64 56, !26, i64 64, !27, i64 72, !28, i64 80, !29, i64 88, !30, i64 96, !31, i64 104, !32, i64 112, !33, i64 120, !34, i64 128, !35, i64 136, !36, i64 144, !37, i64 152, !38, i64 160, !39, i64 168, !40, i64 176, !41, i64 184, !42, i64 192, !43, i64 200, !44, i64 208, !45, i64 216, !46, i64 224, !9, i64 232, !47, i64 2792, !47, i64 2832, !47, i64 2872, !47, i64 2912, !47, i64 2952, !47, i64 2992, !48, i64 3032, !48, i64 3040, !48, i64 3048, !48, i64 3056, !48, i64 3064, !48, i64 3072, !48, i64 3080, !48, i64 3088, !48, i64 3096, !48, i64 3104, !48, i64 3112, !48, i64 3120, !48, i64 3128, !49, i64 3136, !13, i64 3288, !56, i64 3296, !13, i64 3304, !8, i64 3312, !9, i64 3316, !8, i64 3512, !8, i64 3516, !57, i64 3520, !58, i64 3528, !59, i64 3536, !61, i64 3576, !62, i64 3600, !63, i64 3632, !8, i64 3672}
!23 = !{!"dt_codepath_t", !8, i64 0}
!24 = !{!"p1 _ZTS11_JsonParser", !14, i64 0}
!25 = !{!"p1 _ZTS9dt_conf_t", !14, i64 0}
!26 = !{!"p1 _ZTS12dt_develop_t", !14, i64 0}
!27 = !{!"p1 _ZTS8dt_lib_t", !14, i64 0}
!28 = !{!"p1 _ZTS17dt_view_manager_t", !14, i64 0}
!29 = !{!"p1 _ZTS12dt_control_t", !14, i64 0}
!30 = !{!"p1 _ZTS19dt_control_signal_t", !14, i64 0}
!31 = !{!"p1 _ZTS12dt_gui_gtk_t", !14, i64 0}
!32 = !{!"p1 _ZTS17dt_mipmap_cache_t", !14, i64 0}
!33 = !{!"p1 _ZTS16dt_image_cache_t", !14, i64 0}
!34 = !{!"p1 _ZTS12dt_bauhaus_t", !14, i64 0}
!35 = !{!"p1 _ZTS13dt_database_t", !14, i64 0}
!36 = !{!"p1 _ZTS14dt_pwstorage_t", !14, i64 0}
!37 = !{!"p1 _ZTS11dt_camctl_t", !14, i64 0}
!38 = !{!"p1 _ZTS15dt_collection_t", !14, i64 0}
!39 = !{!"p1 _ZTS14dt_selection_t", !14, i64 0}
!40 = !{!"p1 _ZTS11dt_points_t", !14, i64 0}
!41 = !{!"p1 _ZTS12dt_imageio_t", !14, i64 0}
!42 = !{!"p1 _ZTS11dt_opencl_t", !14, i64 0}
!43 = !{!"p1 _ZTS9dt_dbus_t", !14, i64 0}
!44 = !{!"p1 _ZTS9dt_undo_t", !14, i64 0}
!45 = !{!"p1 _ZTS16dt_colorspaces_t", !14, i64 0}
!46 = !{!"p1 _ZTS9dt_l10n_t", !14, i64 0}
!47 = !{!"dt_pthread_mutex_t", !9, i64 0}
!48 = !{!"p1 omnipotent char", !14, i64 0}
!49 = !{!"", !50, i64 0, !47, i64 8, !9, i64 48, !51, i64 96, !51, i64 97, !52, i64 104, !53, i64 112, !54, i64 120, !55, i64 128, !55, i64 136, !55, i64 144}
!50 = !{!"p1 _ZTS9lua_State", !14, i64 0}
!51 = !{!"_Bool", !9, i64 0}
!52 = !{!"p1 _ZTS10_GMainLoop", !14, i64 0}
!53 = !{!"p1 _ZTS13_GMainContext", !14, i64 0}
!54 = !{!"p1 _ZTS12_GThreadPool", !14, i64 0}
!55 = !{!"p1 _ZTS12_GAsyncQueue", !14, i64 0}
!56 = !{!"double", !9, i64 0}
!57 = !{!"p1 _ZTS10_GTimeZone", !14, i64 0}
!58 = !{!"p1 _ZTS10_GDateTime", !14, i64 0}
!59 = !{!"dt_sys_resources_t", !18, i64 0, !18, i64 8, !60, i64 16, !60, i64 24, !8, i64 32}
!60 = !{!"p1 int", !14, i64 0}
!61 = !{!"dt_backthumb_t", !56, i64 0, !56, i64 8, !8, i64 16, !8, i64 20}
!62 = !{!"dt_gimp_t", !8, i64 0, !48, i64 8, !48, i64 16, !8, i64 24, !8, i64 28}
!63 = !{!"dt_splash_t", !64, i64 0, !64, i64 8, !64, i64 16, !64, i64 24, !8, i64 32}
!64 = !{!"p1 _ZTS10_GtkWidget", !14, i64 0}
!65 = !{!66, !78, i64 2168}
!66 = !{!"dt_develop_t", !8, i64 0, !8, i64 4, !8, i64 8, !14, i64 16, !56, i64 24, !56, i64 32, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !56, i64 64, !8, i64 72, !8, i64 76, !8, i64 80, !17, i64 88, !67, i64 96, !68, i64 112, !8, i64 2000, !8, i64 2004, !47, i64 2008, !8, i64 2048, !13, i64 2056, !8, i64 2064, !17, i64 2072, !8, i64 2080, !13, i64 2088, !13, i64 2096, !8, i64 2104, !13, i64 2112, !13, i64 2120, !60, i64 2128, !60, i64 2136, !8, i64 2144, !8, i64 2148, !13, i64 2152, !77, i64 2160, !78, i64 2168, !13, i64 2176, !8, i64 2184, !8, i64 2188, !8, i64 2192, !16, i64 2196, !16, i64 2200, !17, i64 2208, !8, i64 2216, !79, i64 2224, !84, i64 2384, !85, i64 2496, !86, i64 2520, !87, i64 2560, !88, i64 2592, !89, i64 2608, !90, i64 2624, !64, i64 2664, !64, i64 2672, !91, i64 2680, !91, i64 2784, !8, i64 2888, !8, i64 2892, !8, i64 2896, !8, i64 2900, !13, i64 2904, !8, i64 2912, !26, i64 2920}
!67 = !{!"p1 _ZTS18dt_dev_pixelpipe_t", !14, i64 0}
!68 = !{!"dt_image_t", !8, i64 0, !8, i64 4, !16, i64 8, !16, i64 12, !16, i64 16, !16, i64 20, !16, i64 24, !16, i64 28, !16, i64 32, !16, i64 36, !8, i64 40, !9, i64 44, !9, i64 108, !9, i64 172, !9, i64 300, !9, i64 364, !9, i64 428, !9, i64 492, !18, i64 560, !8, i64 568, !9, i64 572, !9, i64 800, !9, i64 864, !9, i64 928, !9, i64 992, !8, i64 1120, !9, i64 1124, !8, i64 1380, !8, i64 1384, !8, i64 1388, !8, i64 1392, !8, i64 1396, !8, i64 1400, !8, i64 1404, !8, i64 1408, !8, i64 1412, !8, i64 1416, !16, i64 1420, !8, i64 1424, !8, i64 1428, !8, i64 1432, !8, i64 1436, !8, i64 1440, !8, i64 1444, !18, i64 1448, !18, i64 1456, !18, i64 1464, !18, i64 1472, !8, i64 1480, !69, i64 1488, !9, i64 1616, !48, i64 1656, !8, i64 1664, !8, i64 1668, !73, i64 1672, !74, i64 1680, !75, i64 1704, !71, i64 1736, !9, i64 1738, !8, i64 1748, !8, i64 1752, !16, i64 1756, !16, i64 1760, !9, i64 1776, !9, i64 1792, !9, i64 1840, !13, i64 1856, !76, i64 1864, !8, i64 1872, !8, i64 1876}
!69 = !{!"dt_iop_buffer_dsc_t", !8, i64 0, !8, i64 4, !8, i64 8, !9, i64 12, !70, i64 48, !72, i64 64, !9, i64 96, !8, i64 112}
!70 = !{!"", !71, i64 0, !71, i64 2}
!71 = !{!"short", !9, i64 0}
!72 = !{!"", !8, i64 0, !9, i64 16}
!73 = !{!"dt_image_raw_parameters_t", !8, i64 0, !8, i64 3}
!74 = !{!"dt_image_geoloc_t", !56, i64 0, !56, i64 8, !56, i64 16}
!75 = !{!"_color_harmony_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !9, i64 16}
!76 = !{!"p1 _ZTS16dt_cache_entry_t", !14, i64 0}
!77 = !{!"p1 _ZTS15dt_masks_form_t", !14, i64 0}
!78 = !{!"p1 _ZTS19dt_masks_form_gui_t", !14, i64 0}
!79 = !{!"", !80, i64 0, !17, i64 40, !81, i64 48, !83, i64 120}
!80 = !{!"dt_dev_proxy_exposure_t", !17, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32}
!81 = !{!"", !82, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !14, i64 56, !14, i64 64}
!82 = !{!"p1 _ZTS15dt_lib_module_t", !14, i64 0}
!83 = !{!"", !82, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32}
!84 = !{!"dt_dev_chroma_t", !17, i64 0, !17, i64 8, !9, i64 16, !9, i64 32, !9, i64 64, !8, i64 96}
!85 = !{!"", !17, i64 0, !17, i64 8, !14, i64 16}
!86 = !{!"", !64, i64 0, !64, i64 8, !8, i64 16, !8, i64 20, !16, i64 24, !16, i64 28, !8, i64 32}
!87 = !{!"", !64, i64 0, !64, i64 8, !8, i64 16, !8, i64 20, !8, i64 24, !16, i64 28}
!88 = !{!"", !64, i64 0, !64, i64 8}
!89 = !{!"", !64, i64 0, !8, i64 8}
!90 = !{!"", !64, i64 0, !64, i64 8, !64, i64 16, !64, i64 24, !64, i64 32}
!91 = !{!"dt_dev_viewport_t", !64, i64 0, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !56, i64 32, !56, i64 40, !56, i64 48, !8, i64 56, !8, i64 60, !8, i64 64, !16, i64 68, !16, i64 72, !16, i64 76, !67, i64 80, !64, i64 88, !26, i64 96}
!92 = !{!13, !13, i64 0}
!93 = !{!94, !8, i64 8}
!94 = !{!"dt_masks_form_t", !13, i64 0, !8, i64 8, !95, i64 16, !9, i64 24, !9, i64 32, !8, i64 160, !8, i64 164}
!95 = !{!"p1 _ZTS20dt_masks_functions_t", !14, i64 0}
!96 = !{!12, !8, i64 24}
!97 = !{!12, !15, i64 16}
!98 = !{!99, !100, i64 0}
!99 = !{!"dt_masks_dynbuf_t", !100, i64 0, !9, i64 8, !18, i64 136, !18, i64 144}
!100 = !{!"p1 float", !14, i64 0}
!101 = !{!99, !18, i64 136}
!102 = !{!16, !16, i64 0}
!103 = !{!12, !8, i64 84}
!104 = !{!105, !14, i64 0}
!105 = !{!"_GList", !14, i64 0, !13, i64 8, !13, i64 16}
!106 = !{!8, !8, i64 0}
!107 = !{!108, !16, i64 36}
!108 = !{!"dt_masks_point_brush_t", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !16, i64 32, !16, i64 36, !8, i64 40}
!109 = !{!94, !13, i64 0}
!110 = !{!12, !13, i64 0}
!111 = !{!112, !8, i64 8}
!112 = !{!"dt_masks_form_gui_points_t", !100, i64 0, !8, i64 8, !100, i64 16, !8, i64 24, !100, i64 32, !8, i64 40, !8, i64 44}
!113 = !{!112, !8, i64 40}
!114 = !{!112, !100, i64 0}
!115 = !{!112, !100, i64 32}
!116 = !{!112, !8, i64 24}
!117 = !{!112, !100, i64 16}
!118 = !{!119, !8, i64 480}
!119 = !{!"dt_iop_module_t", !8, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !14, i64 56, !14, i64 64, !14, i64 72, !14, i64 80, !14, i64 88, !14, i64 96, !14, i64 104, !14, i64 112, !14, i64 120, !14, i64 128, !14, i64 136, !14, i64 144, !14, i64 152, !14, i64 160, !14, i64 168, !14, i64 176, !14, i64 184, !14, i64 192, !14, i64 200, !14, i64 208, !14, i64 216, !14, i64 224, !14, i64 232, !14, i64 240, !14, i64 248, !14, i64 256, !14, i64 264, !14, i64 272, !14, i64 280, !14, i64 288, !14, i64 296, !14, i64 304, !14, i64 312, !14, i64 320, !14, i64 328, !14, i64 336, !14, i64 344, !14, i64 352, !14, i64 360, !14, i64 368, !14, i64 376, !14, i64 384, !14, i64 392, !14, i64 400, !14, i64 408, !14, i64 416, !14, i64 424, !14, i64 432, !14, i64 440, !120, i64 448, !9, i64 456, !8, i64 476, !8, i64 480, !8, i64 484, !8, i64 488, !8, i64 492, !8, i64 496, !8, i64 500, !8, i64 504, !9, i64 512, !9, i64 528, !9, i64 544, !9, i64 560, !9, i64 576, !9, i64 592, !60, i64 608, !121, i64 616, !9, i64 640, !8, i64 656, !8, i64 660, !26, i64 664, !8, i64 672, !8, i64 676, !14, i64 680, !14, i64 688, !8, i64 696, !14, i64 704, !47, i64 712, !14, i64 752, !14, i64 760, !122, i64 768, !122, i64 776, !14, i64 784, !123, i64 792, !64, i64 824, !64, i64 832, !64, i64 840, !64, i64 848, !64, i64 856, !64, i64 864, !64, i64 872, !8, i64 880, !64, i64 888, !64, i64 896, !64, i64 904, !127, i64 912, !127, i64 920, !64, i64 928, !64, i64 936, !8, i64 944, !128, i64 952, !8, i64 960, !9, i64 964, !8, i64 1092, !64, i64 1096, !14, i64 1104, !8, i64 1112}
!120 = !{!"p1 _ZTS8_GModule", !14, i64 0}
!121 = !{!"dt_dev_histogram_stats_t", !8, i64 0, !18, i64 8, !8, i64 16, !8, i64 20}
!122 = !{!"p1 _ZTS25dt_develop_blend_params_t", !14, i64 0}
!123 = !{!"", !124, i64 0, !126, i64 16}
!124 = !{!"", !125, i64 0, !125, i64 8}
!125 = !{!"p1 _ZTS11_GHashTable", !14, i64 0}
!126 = !{!"", !17, i64 0, !8, i64 8}
!127 = !{!"p1 _ZTS7_GSList", !14, i64 0}
!128 = !{!"p1 _ZTS18dt_iop_module_so_t", !14, i64 0}
!129 = !{!66, !67, i64 96}
!130 = !{!22, !8, i64 8}
!131 = !{!132, !18, i64 0}
!132 = !{!"timeval", !18, i64 0, !18, i64 8}
!133 = !{!132, !18, i64 8}
!134 = !{!100, !100, i64 0}
!135 = !{!119, !26, i64 664}
!136 = !{!137, !67, i64 8}
!137 = !{!"dt_dev_pixelpipe_iop_t", !17, i64 0, !67, i64 8, !14, i64 16, !14, i64 24, !8, i64 32, !8, i64 36, !138, i64 40, !60, i64 56, !121, i64 64, !9, i64 88, !16, i64 104, !8, i64 108, !8, i64 112, !18, i64 120, !8, i64 128, !8, i64 132, !140, i64 136, !140, i64 156, !140, i64 176, !140, i64 196, !8, i64 216, !8, i64 220, !69, i64 224, !69, i64 352, !9, i64 480, !8, i64 516, !125, i64 520, !141, i64 528, !141, i64 576}
!138 = !{!"dt_dev_histogram_collection_params_t", !139, i64 0, !8, i64 8}
!139 = !{!"p1 _ZTS18dt_histogram_roi_t", !14, i64 0}
!140 = !{!"dt_iop_roi_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !16, i64 16}
!141 = !{!"dt_dev_distorted_mask_cache_t", !100, i64 0, !140, i64 8, !18, i64 32, !18, i64 40}
!142 = distinct !{!142, !143}
!143 = !{!"llvm.loop.unroll.disable"}
!144 = !{!145}
!145 = distinct !{!145, !146, !"_brush_falloff: argument 0"}
!146 = distinct !{!146, !"_brush_falloff"}
!147 = !{!140, !16, i64 16}
!148 = distinct !{!148, !149, !150}
!149 = !{!"llvm.loop.isvectorized", i32 1}
!150 = !{!"llvm.loop.unroll.runtime.disable"}
!151 = distinct !{!151, !143}
!152 = distinct !{!152, !149, !150}
!153 = distinct !{!153, !143}
!154 = distinct !{!154, !149}
!155 = distinct !{!155, !143}
!156 = distinct !{!156, !149}
!157 = !{!158, !16, i64 152}
!158 = !{!"dt_dev_pixelpipe_t", !159, i64 0, !8, i64 120, !18, i64 128, !100, i64 136, !8, i64 144, !8, i64 148, !16, i64 152, !8, i64 156, !8, i64 160, !69, i64 176, !163, i64 304, !163, i64 312, !163, i64 320, !163, i64 328, !13, i64 336, !8, i64 344, !8, i64 348, !8, i64 352, !8, i64 356, !48, i64 360, !18, i64 368, !8, i64 376, !8, i64 380, !16, i64 384, !9, i64 388, !18, i64 416, !47, i64 424, !47, i64 464, !47, i64 504, !8, i64 544, !8, i64 548, !8, i64 552, !164, i64 560, !8, i64 600, !8, i64 604, !8, i64 608, !9, i64 612, !8, i64 616, !8, i64 620, !8, i64 624, !8, i64 628, !8, i64 632, !8, i64 636, !8, i64 640, !8, i64 644, !8, i64 648, !8, i64 652, !68, i64 656, !8, i64 2544, !48, i64 2552, !8, i64 2560, !13, i64 2568, !13, i64 2576, !13, i64 2584, !8, i64 2592, !100, i64 2600, !18, i64 2608, !9, i64 2616, !9, i64 2632}
!159 = !{!"dt_dev_pixelpipe_cache_t", !8, i64 0, !18, i64 8, !18, i64 16, !160, i64 24, !161, i64 32, !162, i64 40, !161, i64 48, !60, i64 56, !60, i64 64, !18, i64 72, !8, i64 80, !18, i64 88, !18, i64 96, !8, i64 104, !8, i64 108, !8, i64 112}
!160 = !{!"any p2 pointer", !14, i64 0}
!161 = !{!"p1 long", !14, i64 0}
!162 = !{!"p1 _ZTS19dt_iop_buffer_dsc_t", !14, i64 0}
!163 = !{!"p1 _ZTS30dt_iop_order_iccprofile_info_t", !14, i64 0}
!164 = !{!"dt_dev_detail_mask_t", !140, i64 0, !18, i64 24, !100, i64 32}
!165 = !{!158, !8, i64 156}
!166 = !{!158, !8, i64 160}
!167 = !{!66, !67, i64 2760}
!168 = !{!12, !15, i64 8}
!169 = !{!99, !18, i64 144}
!170 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!171 = !{!12, !8, i64 132}
end_hunk_4
