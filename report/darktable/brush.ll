Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/brush?download=true
inline.NumInlined: 210
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_brush_get_mask:bb.a
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
  %i.em = fadd reassoc arcp contract afn <4 x float> %i.el, <float 4.000000e+00, float 4.000000e+00, float -0.000000e+00, float -0.000000e+00>
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
  %i.ey = load i64, ptr %9, align 8, !tbaa !132
  %i.ez = add nsw i64 %i.ey, -1290608000
  %i.fa = sitofp reassoc nsz arcp contract afn i64 %i.ez to double
  %i.fb = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !133
  %i.fd = sitofp reassoc nsz arcp contract afn i64 %i.fc to double
  %i.fe = fmul reassoc nnan nsz arcp contract afn double %i.fd, f0x3EB0C6F7A0B5ED8D
  %i.ff = fadd reassoc nsz arcp contract afn double %i.fe, %i.fa
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  %i.fg = fsub reassoc nsz arcp contract afn double %i.ff, %.052
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.22, ptr noundef nonnull %i.ew, double noundef %i.fg) #18
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_brush_bounding_box.exit
  %i.fh = load i32, ptr %4, align 4, !tbaa !106
  %i.fi = sext i32 %i.fh to i64
  %i.fj = load i32, ptr %5, align 4, !tbaa !106
  %i.fk = sext i32 %i.fj to i64
  %i.fl = shl nsw i64 %i.fi, 2
  %i.fm = mul i64 %i.fl, %i.fk                    ; 2 uses
  %i.fn = call ptr @dt_alloc_aligned(i64 noundef %i.fm) #18 ; 6 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fn, i64 64) ]
  %.not.i46 = icmp eq ptr %i.fn, null
  br i1 %.not.i46, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store ptr null, ptr %3, align 8, !tbaa !134
  call void @free(ptr noundef %i.ar) #18
  call void @free(ptr noundef %i.as) #18
  %i.fo = load ptr, ptr %i.c, align 8, !tbaa !134
  call void @free(ptr noundef %i.fo) #18
  br label %bb.u

bb.k:                                             ; preds = %bb.i
  call void @llvm.memset.p0.i64(ptr nonnull align 64 %i.fn, i8 0, i64 %i.fm, i1 false)
  store ptr %i.fn, ptr %3, align 8, !tbaa !134
  %i.fp = load i32, ptr %i.e, align 4, !tbaa !106 ; 2 uses
  %i.fq = icmp slt i32 %i.au, %i.fp
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !134 ; 3 uses
  br i1 %i.fq, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.k
  %i.fr = load i32, ptr %4, align 4, !tbaa !106   ; 2 uses
  %i.fs = sext i32 %i.au to i64
  %wide.trip.count = sext i32 %i.fp to i64
  br label %bb.l

._crit_edge:                                      ; preds = %_brush_falloff.exit, %bb.k
  call void @free(ptr noundef %i.ar) #18
  call void @free(ptr noundef %i.as) #18
  call void @free(ptr noundef %.pre) #18
  %i.ft = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !130
  %i.fu = and i32 %i.ft, 4112
  %or.cond42.not = icmp eq i32 %i.fu, 4112
  br i1 %or.cond42.not, label %bb.t, label %bb.u

bb.l:                                             ; preds = %.lr.ph, %_brush_falloff.exit
  %indvars.iv = phi i64 [ %i.fs, %.lr.ph ], [ %indvars.iv.next, %_brush_falloff.exit ] ; 2 uses
  %i.fv = shl nsw i64 %indvars.iv, 1              ; 4 uses
  %i.fw = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.fv
  %i.fx = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.fv
  %i.fy = getelementptr inbounds [4 x i8], ptr %.pre, i64 %i.fv
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !102
  %i.ga = getelementptr [4 x i8], ptr %.pre, i64 %i.fv
  %i.gb = getelementptr i8, ptr %i.ga, i64 4
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !102 ; 2 uses
  %i.gd = load <2 x float>, ptr %i.fw, align 4, !tbaa !102
  %i.ge = fptosi <2 x float> %i.gd to <2 x i32>   ; 3 uses
  %i.gf = load <2 x float>, ptr %i.fx, align 4, !tbaa !102
  %i.gg = fptosi <2 x float> %i.gf to <2 x i32>
  %i.gh = sub nsw <2 x i32> %i.gg, %i.ge          ; 5 uses
  %foldExtExtBinop = mul nsw <2 x i32> %i.gh, %i.gh
  %foldExtExtBinop100 = mul nsw <2 x i32> %i.gh, %i.gh
  %shift = shufflevector <2 x i32> %foldExtExtBinop100, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop102 = add nuw nsw <2 x i32> %shift, %foldExtExtBinop
  %i.gi = extractelement <2 x i32> %foldExtExtBinop102, i64 0
  %i.gj = uitofp nsz nneg i32 %i.gi to double
  %i.gk = call reassoc nsz arcp contract afn double @llvm.sqrt.f64(double %i.gj)
  %i.gl = fadd reassoc nsz arcp contract afn double %i.gk, 1.000000e+00
  %i.gm = fptosi double %i.gl to i32              ; 4 uses
  %i.gn = uitofp nsz nneg i32 %i.gm to float      ; 2 uses
  %i.go = fmul reassoc nsz arcp contract afn float %i.fz, %i.gn
  %i.gp = fptosi float %i.go to i32               ; 3 uses
  %.not9.i = icmp eq i32 %i.gm, 0
  br i1 %.not9.i, label %_brush_falloff.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l
  %i.gq = load i32, ptr %7, align 4, !tbaa !106
  %i.gr = load i32, ptr %6, align 4, !tbaa !106
  %i.gs = sitofp reassoc nsz arcp contract afn <2 x i32> %i.gh to <2 x float>
  %i.gt = sub nsw i32 %i.gm, %i.gp
  %i.gu = extractelement <2 x i32> %i.ge, i64 0
  %i.gv = sub i32 %i.gu, %i.gr
  %i.gw = extractelement <2 x i32> %i.ge, i64 1
  %i.gx = sub i32 %i.gw, %i.gq
  %i.gy = fpext reassoc nsz arcp contract afn float %i.gc to double
  %i.gz = sitofp reassoc nsz arcp contract afn i32 %i.gt to float
  %i.ha = insertelement <2 x float> poison, float %i.gn, i64 0
  %i.hb = shufflevector <2 x float> %i.ha, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hc = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.hb
  %i.hd = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.gz
  br label %bb.m

bb.m:                                             ; preds = %bb.s, %.lr.ph.i
  %.06.i = phi i32 [ 0, %.lr.ph.i ], [ %i.ip, %bb.s ] ; 4 uses
  %i.he = uitofp nsz nneg i32 %.06.i to float
  %i.hf = insertelement <2 x float> poison, float %i.he, i64 0
  %i.hg = shufflevector <2 x float> %i.hf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hh = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.hg, %i.gs
  %i.hi = fmul reassoc nsz arcp contract afn <2 x float> %i.hh, %i.hc ; 2 uses
  %i.hj = extractelement <2 x float> %i.hi, i64 0
  %i.hk = fptosi float %i.hj to i32
  %i.hl = add i32 %i.gv, %i.hk                    ; 3 uses
  %i.hm = extractelement <2 x float> %i.hi, i64 1
  %i.hn = fptosi float %i.hm to i32
  %i.ho = add i32 %i.gx, %i.hn                    ; 3 uses
  %.not.i47 = icmp sgt i32 %.06.i, %i.gp
  br i1 %.not.i47, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.hp = sub nsw i32 %.06.i, %i.gp
  %i.hq = sitofp reassoc nsz arcp contract afn i32 %i.hp to float
  %i.hr = fmul reassoc nsz arcp contract afn float %i.hq, %i.hd
  %i.hs = fpext reassoc nsz arcp contract afn float %i.hr to double
  %i.ht = fsub reassoc nsz arcp contract afn double 1.000000e+00, %i.hs
  %i.hu = fmul reassoc nsz arcp contract afn double %i.ht, %i.gy
  %i.hv = fptrunc reassoc nsz arcp contract afn double %i.hu to float
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.hw = phi float [ %i.hv, %bb.n ], [ %i.gc, %bb.m ] ; 6 uses
  %i.hx = mul nsw i32 %i.ho, %i.fr
  %i.hy = add nsw i32 %i.hx, %i.hl
  %i.hz = sext i32 %i.hy to i64
  %i.ia = getelementptr inbounds [4 x i8], ptr %i.fn, i64 %i.hz ; 3 uses
  %i.ib = load float, ptr %i.ia, align 4, !tbaa !102, !alias.scope !192 ; 2 uses
  %i.ic = fcmp reassoc nsz arcp contract afn ogt float %i.ib, %i.hw
  %..i = select reassoc nsz arcp contract afn i1 %i.ic, float %i.ib, float %i.hw
  store float %..i, ptr %i.ia, align 4, !tbaa !102, !alias.scope !192
  %i.id = icmp sgt i32 %i.hl, 0
  br i1 %i.id, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ie = getelementptr i8, ptr %i.ia, i64 -4     ; 2 uses
  %i.if = load float, ptr %i.ie, align 4, !tbaa !102, !alias.scope !192 ; 2 uses
  %i.ig = fcmp reassoc nsz arcp contract afn ogt float %i.if, %i.hw
  %.84.i = select reassoc nsz arcp contract afn i1 %i.ig, float %i.if, float %i.hw
  store float %.84.i, ptr %i.ie, align 4, !tbaa !102, !alias.scope !192
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ih = icmp sgt i32 %i.ho, 0
  br i1 %i.ih, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ii = add nsw i32 %i.ho, -1
  %i.ij = mul nsw i32 %i.ii, %i.fr
  %i.ik = add nsw i32 %i.ij, %i.hl
  %i.il = sext i32 %i.ik to i64
  %i.im = getelementptr inbounds [4 x i8], ptr %i.fn, i64 %i.il ; 2 uses
  %i.in = load float, ptr %i.im, align 4, !tbaa !102, !alias.scope !192 ; 2 uses
  %i.io = fcmp reassoc nsz arcp contract afn ogt float %i.in, %i.hw
  %.85.i = select reassoc nsz arcp contract afn i1 %i.io, float %i.in, float %i.hw
  store float %.85.i, ptr %i.im, align 4, !tbaa !102, !alias.scope !192
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ip = add nuw nsw i32 %.06.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ip, %i.gm
  br i1 %exitcond.not.i, label %_brush_falloff.exit, label %bb.m

_brush_falloff.exit:                              ; preds = %bb.s, %bb.l
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.l

bb.t:                                             ; preds = %._crit_edge
  %i.iq = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.ir = call i32 @gettimeofday(ptr noundef nonnull %8, ptr noundef null) #18 ; 0 uses
  %i.is = load i64, ptr %8, align 8, !tbaa !132
  %i.it = add nsw i64 %i.is, -1290608000
  %i.iu = sitofp reassoc nsz arcp contract afn i64 %i.it to double
  %i.iv = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !133
  %i.ix = sitofp reassoc nsz arcp contract afn i64 %i.iw to double
  %i.iy = fmul reassoc nnan nsz arcp contract afn double %i.ix, f0x3EB0C6F7A0B5ED8D
  %i.iz = fadd reassoc nsz arcp contract afn double %i.iy, %i.iu
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  %i.ja = fsub reassoc nsz arcp contract afn double %i.iz, %i.q
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.23, ptr noundef nonnull %i.iq, double noundef %i.ja) #18
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
  %i.i = load i64, ptr %9, align 8, !tbaa !132
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
  %i.v = load float, ptr %i.u, align 4, !tbaa !200 ; 12 uses
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
  %i.z = load i32, ptr %i.y, align 16, !tbaa !128
  %i.aa = sitofp reassoc nsz arcp contract afn i32 %i.z to double
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !141
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
  %i.al = load i64, ptr %8, align 8, !tbaa !132
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
  %i.ba = sitofp reassoc nsz arcp contract afn <2 x i32> %i.r to <2 x float> ; 7 uses
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
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !193

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
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !194

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.cd = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.ce = icmp ugt i64 %i.cd, -4
  br i1 %i.ce, label %.preheader111, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %i.cf = insertelement <2 x float> poison, float %i.v, i64 0
  %i.cg = shufflevector <2 x float> %i.cf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ch = insertelement <2 x float> poison, float %i.v, i64 0
  %i.ci = shufflevector <2 x float> %i.ch, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cj = insertelement <2 x float> poison, float %i.v, i64 0
  %i.ck = shufflevector <2 x float> %i.cj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cl = insertelement <2 x float> poison, float %i.v, i64 0
  %i.cm = shufflevector <2 x float> %i.cl, <2 x float> poison, <2 x i32> zeroinitializer
  br label %scalar.ph

.preheader111:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.g
  %i.cn = load i32, ptr %i.d, align 4, !tbaa !106 ; 3 uses
  %i.co = icmp slt i32 %i.aw, %i.cn
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !134 ; 19 uses
  br i1 %i.co, label %.lr.ph123, label %._crit_edge

.lr.ph123:                                        ; preds = %.preheader111
  %i.cp = sitofp reassoc nsz arcp contract afn <2 x i32> %i.r to <2 x float> ; 7 uses
  %i.cq = sext i32 %i.aw to i64                   ; 9 uses
  %wide.trip.count140 = sext i32 %i.cn to i64     ; 7 uses
  %i.cr = sub nsw i64 %wide.trip.count140, %i.cq  ; 5 uses
  %min.iters.check193 = icmp ult i64 %i.cr, 16
  br i1 %min.iters.check193, label %scalar.ph192.preheader, label %vector.scevcheck186

vector.scevcheck186:                              ; preds = %.lr.ph123
  %i.cs = xor i64 %i.cq, -1
  %i.ct = add nsw i64 %i.cs, %wide.trip.count140  ; 2 uses
  %i.cu = shl nsw i64 %i.cq, 3                    ; 2 uses
  %scevgep187 = getelementptr i8, ptr %.pre, i64 %i.cu ; 2 uses
  %mul.result189 = shl nsw i64 %i.ct, 3           ; 2 uses
  %mul.overflow190 = icmp ugt i64 %i.ct, 2305843009213693951
  %i.cv = getelementptr i8, ptr %scevgep187, i64 %mul.result189
  %i.cw = icmp ult ptr %i.cv, %scevgep187
  %i.cx = getelementptr i8, ptr %.pre, i64 %i.cu
  %scevgep191 = getelementptr i8, ptr %i.cx, i64 4 ; 2 uses
  %i.cy = getelementptr i8, ptr %scevgep191, i64 %mul.result189
  %i.cz = icmp ult ptr %i.cy, %scevgep191
  %i.da = or i1 %i.cz, %mul.overflow190
  %i.db = or i1 %i.cw, %i.da
  br i1 %i.db, label %scalar.ph192.preheader, label %vector.ph194

vector.ph194:                                     ; preds = %vector.scevcheck186
  %n.vec195 = and i64 %i.cr, -8                   ; 3 uses
  %i.dc = add nsw i64 %n.vec195, %i.cq
  %broadcast.splat197 = shufflevector <2 x float> %i.cp, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat199 = shufflevector <2 x float> %i.cp, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert200 = insertelement <8 x float> poison, float %i.v, i64 0
  %broadcast.splat201 = shufflevector <8 x float> %broadcast.splatinsert200, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body202

vector.body202:                                   ; preds = %vector.body202, %vector.ph194
  %index203 = phi i64 [ 0, %vector.ph194 ], [ %index.next208, %vector.body202 ] ; 2 uses
  %i.dd = add i64 %index203, %i.cq
  %i.de = shl i64 %i.dd, 3
  %i.df = getelementptr i8, ptr %.pre, i64 %i.de  ; 2 uses
  %wide.vec204 = load <16 x float>, ptr %i.df, align 4, !tbaa !102 ; 2 uses
  %strided.vec205 = shufflevector <16 x float> %wide.vec204, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec206 = shufflevector <16 x float> %wide.vec204, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.dg = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec205, %broadcast.splat201
  %i.dh = fsub reassoc nsz arcp contract afn <8 x float> %i.dg, %broadcast.splat197
  %i.di = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec206, %broadcast.splat201
  %i.dj = fsub reassoc nsz arcp contract afn <8 x float> %i.di, %broadcast.splat199
  %interleaved.vec207 = shufflevector <8 x float> %i.dh, <8 x float> %i.dj, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x float> %interleaved.vec207, ptr %i.df, align 4, !tbaa !102
  %index.next208 = add nuw i64 %index203, 8       ; 2 uses
  %i.dk = icmp eq i64 %index.next208, %n.vec195
  br i1 %i.dk, label %middle.block209, label %vector.body202, !llvm.loop !195

middle.block209:                                  ; preds = %vector.body202
  %cmp.n210 = icmp eq i64 %i.cr, %n.vec195
  br i1 %cmp.n210, label %.lr.ph.i, label %scalar.ph192.preheader

scalar.ph192.preheader:                           ; preds = %vector.scevcheck186, %.lr.ph123, %middle.block209
  %indvars.iv137.ph = phi i64 [ %i.cq, %vector.scevcheck186 ], [ %i.cq, %.lr.ph123 ], [ %i.dc, %middle.block209 ] ; 4 uses
  %i.dl = sub nsw i64 %wide.trip.count140, %indvars.iv137.ph
  %xtraiter215 = and i64 %i.dl, 3                 ; 2 uses
  %lcmp.mod216.not = icmp eq i64 %xtraiter215, 0
  br i1 %lcmp.mod216.not, label %scalar.ph192.prol.loopexit, label %scalar.ph192.prol.preheader

scalar.ph192.prol.preheader:                      ; preds = %scalar.ph192.preheader
  %i.dm = insertelement <2 x float> poison, float %i.v, i64 0
  %i.dn = shufflevector <2 x float> %i.dm, <2 x float> poison, <2 x i32> zeroinitializer
  br label %scalar.ph192.prol

scalar.ph192.prol:                                ; preds = %scalar.ph192.prol, %scalar.ph192.prol.preheader
  %indvars.iv137.prol = phi i64 [ %indvars.iv.next138.prol, %scalar.ph192.prol ], [ %indvars.iv137.ph, %scalar.ph192.prol.preheader ] ; 2 uses
  %prol.iter217 = phi i64 [ %prol.iter217.next, %scalar.ph192.prol ], [ 0, %scalar.ph192.prol.preheader ]
  %.idx163.prol = shl i64 %indvars.iv137.prol, 3
  %i.do = getelementptr i8, ptr %.pre, i64 %.idx163.prol ; 2 uses
  %i.dp = load <2 x float>, ptr %i.do, align 4, !tbaa !102
  %i.dq = fmul reassoc nsz arcp contract afn <2 x float> %i.dp, %i.dn
  %i.dr = fsub reassoc nsz arcp contract afn <2 x float> %i.dq, %i.cp
  store <2 x float> %i.dr, ptr %i.do, align 4, !tbaa !102
  %indvars.iv.next138.prol = add nsw i64 %indvars.iv137.prol, 1 ; 2 uses
  %prol.iter217.next = add i64 %prol.iter217, 1   ; 2 uses
  %prol.iter217.cmp.not = icmp eq i64 %prol.iter217.next, %xtraiter215
  br i1 %prol.iter217.cmp.not, label %scalar.ph192.prol.loopexit, label %scalar.ph192.prol, !llvm.loop !196

scalar.ph192.prol.loopexit:                       ; preds = %scalar.ph192.prol, %scalar.ph192.preheader
  %indvars.iv137.unr = phi i64 [ %indvars.iv137.ph, %scalar.ph192.preheader ], [ %indvars.iv.next138.prol, %scalar.ph192.prol ]
  %i.ds = sub nsw i64 %indvars.iv137.ph, %wide.trip.count140
  %i.dt = icmp ugt i64 %i.ds, -4
  br i1 %i.dt, label %.lr.ph.i, label %scalar.ph192.preheader.new

scalar.ph192.preheader.new:                       ; preds = %scalar.ph192.prol.loopexit
  %i.du = insertelement <2 x float> poison, float %i.v, i64 0
  %i.dv = shufflevector <2 x float> %i.du, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dw = insertelement <2 x float> poison, float %i.v, i64 0
  %i.dx = shufflevector <2 x float> %i.dw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dy = insertelement <2 x float> poison, float %i.v, i64 0
  %i.dz = shufflevector <2 x float> %i.dy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ea = insertelement <2 x float> poison, float %i.v, i64 0
  %i.eb = shufflevector <2 x float> %i.ea, <2 x float> poison, <2 x i32> zeroinitializer
  br label %scalar.ph192

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.unr, %scalar.ph.preheader.new ], [ %indvars.iv.next.3, %scalar.ph ] ; 5 uses
  %.idx = shl i64 %indvars.iv, 3
  %i.ec = getelementptr i8, ptr %i.az, i64 %.idx  ; 2 uses
  %i.ed = load <2 x float>, ptr %i.ec, align 4, !tbaa !102
  %i.ee = fmul reassoc nsz arcp contract afn <2 x float> %i.ed, %i.cg
  %i.ef = fsub reassoc nsz arcp contract afn <2 x float> %i.ee, %i.ba
  store <2 x float> %i.ef, ptr %i.ec, align 4, !tbaa !102
  %indvars.iv.next = shl i64 %indvars.iv, 3
  %i.eg = getelementptr i8, ptr %i.az, i64 %indvars.iv.next
  %i.eh = getelementptr i8, ptr %i.eg, i64 8      ; 2 uses
  %i.ei = load <2 x float>, ptr %i.eh, align 4, !tbaa !102
  %i.ej = fmul reassoc nsz arcp contract afn <2 x float> %i.ei, %i.ci
  %i.ek = fsub reassoc nsz arcp contract afn <2 x float> %i.ej, %i.ba
  store <2 x float> %i.ek, ptr %i.eh, align 4, !tbaa !102
  %indvars.iv.next.1 = shl i64 %indvars.iv, 3
  %i.el = getelementptr i8, ptr %i.az, i64 %indvars.iv.next.1
  %i.em = getelementptr i8, ptr %i.el, i64 16     ; 2 uses
  %i.en = load <2 x float>, ptr %i.em, align 4, !tbaa !102
  %i.eo = fmul reassoc nsz arcp contract afn <2 x float> %i.en, %i.ck
  %i.ep = fsub reassoc nsz arcp contract afn <2 x float> %i.eo, %i.ba
  store <2 x float> %i.ep, ptr %i.em, align 4, !tbaa !102
  %indvars.iv.next.2 = shl i64 %indvars.iv, 3
  %i.eq = getelementptr i8, ptr %i.az, i64 %indvars.iv.next.2
  %i.er = getelementptr i8, ptr %i.eq, i64 24     ; 2 uses
  %i.es = load <2 x float>, ptr %i.er, align 4, !tbaa !102
  %i.et = fmul reassoc nsz arcp contract afn <2 x float> %i.es, %i.cm
  %i.eu = fsub reassoc nsz arcp contract afn <2 x float> %i.et, %i.ba
  store <2 x float> %i.eu, ptr %i.er, align 4, !tbaa !102
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.preheader111, label %scalar.ph, !llvm.loop !197

._crit_edge:                                      ; preds = %.preheader111
  %i.ev = load ptr, ptr %i.b, align 8, !tbaa !134
  br label %_brush_bounding_box_raw.exit

.lr.ph.i:                                         ; preds = %scalar.ph192.prol.loopexit, %scalar.ph192, %middle.block209
  %i.ew = load ptr, ptr %i.b, align 8, !tbaa !134 ; 6 uses
  %.not.i85 = icmp eq ptr %i.ew, null
  %i.ex = sext i32 %i.aw to i64                   ; 5 uses
  %wide.trip.count83.i = sext i32 %i.cn to i64    ; 2 uses
  br i1 %.not.i85, label %.lr.ph.split.us.i.preheader, label %.lr.ph.split.i.preheader

.lr.ph.split.i.preheader:                         ; preds = %.lr.ph.i
  %xtraiter218 = and i64 %i.cr, 1
  %lcmp.mod219.not = icmp eq i64 %xtraiter218, 0
  br i1 %lcmp.mod219.not, label %.lr.ph.split.i.prol.loopexit, label %.lr.ph.split.i.prol

.lr.ph.split.i.prol:                              ; preds = %.lr.ph.split.i.preheader
  %i.ey = shl nsw i64 %i.ex, 1                    ; 2 uses
  %i.ez = getelementptr inbounds [4 x i8], ptr %i.ew, i64 %i.ey
  %i.fa = getelementptr inbounds [4 x i8], ptr %.pre, i64 %i.ey
  %i.fb = load <2 x float>, ptr %i.ez, align 4, !tbaa !102
  %i.fc = shufflevector <2 x float> %i.fb, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.fd = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.fc, <float f0x7F7FFFFF, float f0x7F7FFFFF, float f0x00800000, float f0x00800000>
  %i.fe = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.fc, <float f0x7F7FFFFF, float f0x7F7FFFFF, float f0x00800000, float f0x00800000>
  %i.ff = shufflevector <4 x i1> %i.fd, <4 x i1> %i.fe, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.fg = select <4 x i1> %i.ff, <4 x float> %i.fc, <4 x float> <float f0x7F7FFFFF, float f0x7F7FFFFF, float f0x00800000, float f0x00800000> ; 3 uses
  %i.fh = load <2 x float>, ptr %i.fa, align 4, !tbaa !102
  %i.fi = shufflevector <2 x float> %i.fh, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.fj = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.fi, %i.fg
  %i.fk = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.fi, %i.fg
  %i.fl = shufflevector <4 x i1> %i.fj, <4 x i1> %i.fk, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.fm = select <4 x i1> %i.fl, <4 x float> %i.fi, <4 x float> %i.fg ; 2 uses
  %indvars.iv.next.i.prol = add nsw i64 %i.ex, 1
  br label %.lr.ph.split.i.prol.loopexit

.lr.ph.split.i.prol.loopexit:                     ; preds = %.lr.ph.split.i.prol, %.lr.ph.split.i.preheader
  %.lcssa214.unr = phi <4 x float> [ poison, %.lr.ph.split.i.preheader ], [ %i.fm, %.lr.ph.split.i.prol ]
  %indvars.iv.i.unr = phi i64 [ %i.ex, %.lr.ph.split.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.split.i.prol ]
  %.unr = phi <4 x float> [ <float f0x7F7FFFFF, float f0x7F7FFFFF, float f0x00800000, float f0x00800000>, %.lr.ph.split.i.preheader ], [ %i.fm, %.lr.ph.split.i.prol ]
  %i.fn = add nsw i64 %wide.trip.count140, -1
  %i.fo = icmp eq i64 %i.fn, %i.cq
  br i1 %i.fo, label %_brush_bounding_box_raw.exit, label %.lr.ph.split.i

.lr.ph.split.us.i.preheader:                      ; preds = %.lr.ph.i
  %xtraiter221 = and i64 %i.cr, 3                 ; 2 uses
  %lcmp.mod222.not = icmp eq i64 %xtraiter221, 0
  br i1 %lcmp.mod222.not, label %.lr.ph.split.us.i.prol.loopexit, label %.lr.ph.split.us.i.prol

.lr.ph.split.us.i.prol:                           ; preds = %.lr.ph.split.us.i.preheader, %.lr.ph.split.us.i.prol
  %indvars.iv80.i.prol = phi i64 [ %indvars.iv.next81.i.prol, %.lr.ph.split.us.i.prol ], [ %i.ex, %.lr.ph.split.us.i.preheader ] ; 2 uses
  %i.fp = phi <4 x float> [ %i.fw, %.lr.ph.split.us.i.prol ], [ <float f0x7F7FFFFF, float f0x7F7FFFFF, float f0x00800000, float f0x00800000>, %.lr.ph.split.us.i.preheader ] ; 3 uses
  %prol.iter223 = phi i64 [ %prol.iter223.next, %.lr.ph.split.us.i.prol ], [ 0, %.lr.ph.split.us.i.preheader ]
  %.idx.i.prol = shl nsw i64 %indvars.iv80.i.prol, 3
  %i.fq = getelementptr inbounds i8, ptr %.pre, i64 %.idx.i.prol
  %i.fr = load <2 x float>, ptr %i.fq, align 4, !tbaa !102
  %i.fs = shufflevector <2 x float> %i.fr, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.ft = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.fs, %i.fp
  %i.fu = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.fs, %i.fp
  %i.fv = shufflevector <4 x i1> %i.ft, <4 x i1> %i.fu, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.fw = select <4 x i1> %i.fv, <4 x float> %i.fs, <4 x float> %i.fp ; 3 uses
  %indvars.iv.next81.i.prol = add nsw i64 %indvars.iv80.i.prol, 1 ; 2 uses
  %prol.iter223.next = add i64 %prol.iter223, 1   ; 2 uses
  %prol.iter223.cmp.not = icmp eq i64 %prol.iter223.next, %xtraiter221
  br i1 %prol.iter223.cmp.not, label %.lr.ph.split.us.i.prol.loopexit, label %.lr.ph.split.us.i.prol, !llvm.loop !198

.lr.ph.split.us.i.prol.loopexit:                  ; preds = %.lr.ph.split.us.i.prol, %.lr.ph.split.us.i.preheader
  %.lcssa.unr = phi <4 x float> [ poison, %.lr.ph.split.us.i.preheader ], [ %i.fw, %.lr.ph.split.us.i.prol ]
  %indvars.iv80.i.unr = phi i64 [ %i.ex, %.lr.ph.split.us.i.preheader ], [ %indvars.iv.next81.i.prol, %.lr.ph.split.us.i.prol ]
  %.unr224 = phi <4 x float> [ <float f0x7F7FFFFF, float f0x7F7FFFFF, float f0x00800000, float f0x00800000>, %.lr.ph.split.us.i.preheader ], [ %i.fw, %.lr.ph.split.us.i.prol ]
  %i.fx = sub nsw i64 %i.cq, %wide.trip.count140
  %i.fy = icmp ugt i64 %i.fx, -4
  br i1 %i.fy, label %_brush_bounding_box_raw.exit, label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i.prol.loopexit, %.lr.ph.split.us.i
  %indvars.iv80.i = phi i64 [ %indvars.iv.next81.i.3, %.lr.ph.split.us.i ], [ %indvars.iv80.i.unr, %.lr.ph.split.us.i.prol.loopexit ] ; 5 uses
  %i.fz = phi <4 x float> [ %i.he, %.lr.ph.split.us.i ], [ %.unr224, %.lr.ph.split.us.i.prol.loopexit ] ; 3 uses
  %.idx.i = shl nsw i64 %indvars.iv80.i, 3
  %i.ga = getelementptr inbounds i8, ptr %.pre, i64 %.idx.i
  %i.gb = load <2 x float>, ptr %i.ga, align 4, !tbaa !102
  %i.gc = shufflevector <2 x float> %i.gb, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.gd = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.gc, %i.fz
  %i.ge = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.gc, %i.fz
  %i.gf = shufflevector <4 x i1> %i.gd, <4 x i1> %i.ge, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.gg = select <4 x i1> %i.gf, <4 x float> %i.gc, <4 x float> %i.fz ; 3 uses
  %indvars.iv.next81.i = shl i64 %indvars.iv80.i, 3
  %i.gh = getelementptr i8, ptr %.pre, i64 %indvars.iv.next81.i
  %i.gi = getelementptr i8, ptr %i.gh, i64 8
  %i.gj = load <2 x float>, ptr %i.gi, align 4, !tbaa !102
  %i.gk = shufflevector <2 x float> %i.gj, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.gl = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.gk, %i.gg
  %i.gm = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.gk, %i.gg
  %i.gn = shufflevector <4 x i1> %i.gl, <4 x i1> %i.gm, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.go = select <4 x i1> %i.gn, <4 x float> %i.gk, <4 x float> %i.gg ; 3 uses
  %indvars.iv.next81.i.1 = shl i64 %indvars.iv80.i, 3
  %i.gp = getelementptr i8, ptr %.pre, i64 %indvars.iv.next81.i.1
  %i.gq = getelementptr i8, ptr %i.gp, i64 16
  %i.gr = load <2 x float>, ptr %i.gq, align 4, !tbaa !102
  %i.gs = shufflevector <2 x float> %i.gr, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.gt = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.gs, %i.go
  %i.gu = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.gs, %i.go
  %i.gv = shufflevector <4 x i1> %i.gt, <4 x i1> %i.gu, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.gw = select <4 x i1> %i.gv, <4 x float> %i.gs, <4 x float> %i.go ; 3 uses
  %indvars.iv.next81.i.2 = shl i64 %indvars.iv80.i, 3
  %i.gx = getelementptr i8, ptr %.pre, i64 %indvars.iv.next81.i.2
  %i.gy = getelementptr i8, ptr %i.gx, i64 24
  %i.gz = load <2 x float>, ptr %i.gy, align 4, !tbaa !102
  %i.ha = shufflevector <2 x float> %i.gz, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.hb = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.ha, %i.gw
  %i.hc = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.ha, %i.gw
  %i.hd = shufflevector <4 x i1> %i.hb, <4 x i1> %i.hc, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.he = select <4 x i1> %i.hd, <4 x float> %i.ha, <4 x float> %i.gw ; 2 uses
  %indvars.iv.next81.i.3 = add nsw i64 %indvars.iv80.i, 4 ; 2 uses
  %exitcond84.not.i.3 = icmp eq i64 %indvars.iv.next81.i.3, %wide.trip.count83.i
  br i1 %exitcond84.not.i.3, label %_brush_bounding_box_raw.exit, label %.lr.ph.split.us.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i.prol.loopexit, %.lr.ph.split.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.split.i ], [ %indvars.iv.i.unr, %.lr.ph.split.i.prol.loopexit ] ; 3 uses
  %i.hf = phi <4 x float> [ %i.ij, %.lr.ph.split.i ], [ %.unr, %.lr.ph.split.i.prol.loopexit ] ; 3 uses
  %i.hg = shl nsw i64 %indvars.iv.i, 1            ; 2 uses
  %i.hh = getelementptr inbounds [4 x i8], ptr %i.ew, i64 %i.hg
  %i.hi = getelementptr inbounds [4 x i8], ptr %.pre, i64 %i.hg
  %i.hj = load <2 x float>, ptr %i.hh, align 4, !tbaa !102
  %i.hk = shufflevector <2 x float> %i.hj, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.hl = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.hk, %i.hf
  %i.hm = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.hk, %i.hf
  %i.hn = shufflevector <4 x i1> %i.hl, <4 x i1> %i.hm, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ho = select <4 x i1> %i.hn, <4 x float> %i.hk, <4 x float> %i.hf ; 3 uses
  %i.hp = load <2 x float>, ptr %i.hi, align 4, !tbaa !102
  %i.hq = shufflevector <2 x float> %i.hp, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.hr = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.hq, %i.ho
  %i.hs = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.hq, %i.ho
  %i.ht = shufflevector <4 x i1> %i.hr, <4 x i1> %i.hs, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.hu = select <4 x i1> %i.ht, <4 x float> %i.hq, <4 x float> %i.ho ; 3 uses
  %indvars.iv.next.i = shl i64 %indvars.iv.i, 1
  %i.hv = add i64 %indvars.iv.next.i, 2           ; 2 uses
  %i.hw = getelementptr inbounds [4 x i8], ptr %i.ew, i64 %i.hv
  %i.hx = getelementptr inbounds [4 x i8], ptr %.pre, i64 %i.hv
  %i.hy = load <2 x float>, ptr %i.hw, align 4, !tbaa !102
  %i.hz = shufflevector <2 x float> %i.hy, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.ia = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.hz, %i.hu
  %i.ib = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.hz, %i.hu
  %i.ic = shufflevector <4 x i1> %i.ia, <4 x i1> %i.ib, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.id = select <4 x i1> %i.ic, <4 x float> %i.hz, <4 x float> %i.hu ; 3 uses
  %i.ie = load <2 x float>, ptr %i.hx, align 4, !tbaa !102
  %i.if = shufflevector <2 x float> %i.ie, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.ig = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.if, %i.id
  %i.ih = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.if, %i.id
  %i.ii = shufflevector <4 x i1> %i.ig, <4 x i1> %i.ih, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ij = select <4 x i1> %i.ii, <4 x float> %i.if, <4 x float> %i.id ; 2 uses
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count83.i
  br i1 %exitcond.not.i.1, label %_brush_bounding_box_raw.exit, label %.lr.ph.split.i

_brush_bounding_box_raw.exit:                     ; preds = %.lr.ph.split.i.prol.loopexit, %.lr.ph.split.i, %.lr.ph.split.us.i.prol.loopexit, %.lr.ph.split.us.i, %._crit_edge
  %i.ik = phi ptr [ %i.ev, %._crit_edge ], [ null, %.lr.ph.split.us.i.prol.loopexit ], [ null, %.lr.ph.split.us.i ], [ %i.ew, %.lr.ph.split.i ], [ %i.ew, %.lr.ph.split.i.prol.loopexit ] ; 3 uses
  %i.il = phi <4 x float> [ <float f0x7F7FFFFF, float f0x7F7FFFFF, float f0x00800000, float f0x00800000>, %._crit_edge ], [ %i.he, %.lr.ph.split.us.i ], [ %.lcssa.unr, %.lr.ph.split.us.i.prol.loopexit ], [ %.lcssa214.unr, %.lr.ph.split.i.prol.loopexit ], [ %i.ij, %.lr.ph.split.i ] ; 2 uses
  %i.im = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !130
  %i.in = and i32 %i.im, 4112
  %or.cond77.not = icmp eq i32 %i.in, 4112
  br i1 %or.cond77.not, label %bb.h, label %bb.i

scalar.ph192:                                     ; preds = %scalar.ph192, %scalar.ph192.preheader.new
  %indvars.iv137 = phi i64 [ %indvars.iv137.unr, %scalar.ph192.preheader.new ], [ %indvars.iv.next138.3, %scalar.ph192 ] ; 5 uses
  %.idx163 = shl i64 %indvars.iv137, 3
  %i.io = getelementptr i8, ptr %.pre, i64 %.idx163 ; 2 uses
  %i.ip = load <2 x float>, ptr %i.io, align 4, !tbaa !102
  %i.iq = fmul reassoc nsz arcp contract afn <2 x float> %i.ip, %i.dv
  %i.ir = fsub reassoc nsz arcp contract afn <2 x float> %i.iq, %i.cp
  store <2 x float> %i.ir, ptr %i.io, align 4, !tbaa !102
  %indvars.iv.next138 = shl i64 %indvars.iv137, 3
  %i.is = getelementptr i8, ptr %.pre, i64 %indvars.iv.next138
  %i.it = getelementptr i8, ptr %i.is, i64 8      ; 2 uses
  %i.iu = load <2 x float>, ptr %i.it, align 4, !tbaa !102
  %i.iv = fmul reassoc nsz arcp contract afn <2 x float> %i.iu, %i.dx
  %i.iw = fsub reassoc nsz arcp contract afn <2 x float> %i.iv, %i.cp
  store <2 x float> %i.iw, ptr %i.it, align 4, !tbaa !102
  %indvars.iv.next138.1 = shl i64 %indvars.iv137, 3
  %i.ix = getelementptr i8, ptr %.pre, i64 %indvars.iv.next138.1
  %i.iy = getelementptr i8, ptr %i.ix, i64 16     ; 2 uses
  %i.iz = load <2 x float>, ptr %i.iy, align 4, !tbaa !102
  %i.ja = fmul reassoc nsz arcp contract afn <2 x float> %i.iz, %i.dz
  %i.jb = fsub reassoc nsz arcp contract afn <2 x float> %i.ja, %i.cp
  store <2 x float> %i.jb, ptr %i.iy, align 4, !tbaa !102
  %indvars.iv.next138.2 = shl i64 %indvars.iv137, 3
  %i.jc = getelementptr i8, ptr %.pre, i64 %indvars.iv.next138.2
  %i.jd = getelementptr i8, ptr %i.jc, i64 24     ; 2 uses
  %i.je = load <2 x float>, ptr %i.jd, align 4, !tbaa !102
  %i.jf = fmul reassoc nsz arcp contract afn <2 x float> %i.je, %i.eb
  %i.jg = fsub reassoc nsz arcp contract afn <2 x float> %i.jf, %i.cp
  store <2 x float> %i.jg, ptr %i.jd, align 4, !tbaa !102
  %indvars.iv.next138.3 = add nsw i64 %indvars.iv137, 4 ; 2 uses
  %exitcond141.not.3 = icmp eq i64 %indvars.iv.next138.3, %wide.trip.count140
  br i1 %exitcond141.not.3, label %.lr.ph.i, label %scalar.ph192, !llvm.loop !199

bb.h:                                             ; preds = %_brush_bounding_box_raw.exit
  %i.jh = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.ji = call i32 @gettimeofday(ptr noundef nonnull %7, ptr noundef null) #18 ; 0 uses
  %i.jj = load i64, ptr %7, align 8, !tbaa !132
  %i.jk = add nsw i64 %i.jj, -1290608000
  %i.jl = sitofp reassoc nsz arcp contract afn i64 %i.jk to double
  %i.jm = getelementptr inbounds nuw i8, ptr %7, i64 8
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
  %i.jt = sitofp reassoc nsz arcp contract afn <4 x i32> %i.js to <4 x float>
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
  %i.lh = uitofp nsz nneg i32 %i.lg to double
  %i.li = call reassoc nsz arcp contract afn double @llvm.sqrt.f64(double %i.lh)
  %i.lj = fadd reassoc nsz arcp contract afn double %i.li, 1.000000e+00
  %i.lk = fptosi double %i.lj to i32              ; 4 uses
  %i.ll = uitofp nsz nneg i32 %i.lk to float      ; 2 uses
  %i.lm = fmul reassoc nsz arcp contract afn float %i.la, %i.ll
  %i.ln = fptosi float %i.lm to i32               ; 2 uses
  %i.lo = sitofp reassoc nsz arcp contract afn <2 x i32> %i.le to <2 x float>
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
  %.not12.i = icmp eq i32 %i.lk, 0
  br i1 %.not12.i, label %_brush_falloff_roi.exit, label %.lr.ph.i86

.lr.ph.i86:                                       ; preds = %bb.m
  %i.mb = sitofp reassoc nsz arcp contract afn <2 x i32> %i.km to <2 x float>
  %i.mc = mul nsw i32 %i.lx, %i.kb
  %i.md = sext i32 %i.lu to i64
  %i.me = sext i32 %i.mc to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.t, %.lr.ph.i86
  %.011.i = phi i32 [ 0, %.lr.ph.i86 ], [ %i.nk, %bb.t ] ; 2 uses
  %.08110.i = phi float [ %i.ld, %.lr.ph.i86 ], [ %spec.select.i, %bb.t ] ; 2 uses
  %i.mf = phi <2 x float> [ %i.mb, %.lr.ph.i86 ], [ %i.mk, %bb.t ] ; 3 uses
  %i.mg = extractelement <2 x float> %i.mf, i64 0
  %i.mh = fptosi float %i.mg to i32               ; 4 uses
  %i.mi = extractelement <2 x float> %i.mf, i64 1
  %i.mj = fptosi float %i.mi to i32               ; 4 uses
  %i.mk = fadd reassoc nsz arcp contract afn <2 x float> %i.mf, %i.lr
  %i.ml = icmp sgt i32 %.011.i, %i.ln
  %i.mm = fsub reassoc nsz arcp contract afn float %.08110.i, %i.ma
  %spec.select.i = select nsz i1 %i.ml, float %i.mm, float %.08110.i ; 7 uses
  %i.mn = icmp slt i32 %i.mh, 0
  br i1 %i.mn, label %bb.t, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.mo = icmp sgt i32 %i.kb, %i.mh
  %i.mp = icmp sgt i32 %i.mj, -1
  %.not.i87 = icmp sgt i32 %i.ke, %i.mj
  %i.mq = and i1 %i.mp, %.not.i87
  %or.cond93.i = select i1 %i.mo, i1 %i.mq, i1 false
  br i1 %or.cond93.i, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  %i.mr = zext nneg i32 %i.mj to i64
  %i.ms = mul nuw nsw i64 %i.mr, %i.kc
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ms
  %i.mu = zext nneg i32 %i.mh to i64
  %i.mv = getelementptr inbounds nuw [4 x i8], ptr %i.mt, i64 %i.mu ; 4 uses
  %i.mw = load float, ptr %i.mv, align 4, !tbaa !102 ; 2 uses
  %i.mx = fcmp reassoc nsz arcp contract afn ogt float %i.mw, %spec.select.i
  %.spec.select.i = select reassoc nsz arcp contract afn i1 %i.mx, float %i.mw, float %spec.select.i
  store float %.spec.select.i, ptr %i.mv, align 4, !tbaa !102
  %i.my = add nsw i32 %i.lu, %i.mh                ; 2 uses
  %i.mz = icmp sgt i32 %i.my, -1
  %i.na = icmp slt i32 %i.my, %i.kb
  %or.cond94.i = and i1 %i.mz, %i.na
  br i1 %or.cond94.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.nb = getelementptr inbounds [4 x i8], ptr %i.mv, i64 %i.md ; 2 uses
  %i.nc = load float, ptr %i.nb, align 4, !tbaa !102 ; 2 uses
  %i.nd = fcmp reassoc nsz arcp contract afn ogt float %i.nc, %spec.select.i
  %.spec.select95.i = select reassoc nsz arcp contract afn i1 %i.nd, float %i.nc, float %spec.select.i
  store float %.spec.select95.i, ptr %i.nb, align 4, !tbaa !102
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ne = add nsw i32 %i.lx, %i.mj                ; 2 uses
  %i.nf = icmp sgt i32 %i.ne, -1
  %i.ng = icmp slt i32 %i.ne, %i.ke
  %or.cond96.i = and i1 %i.nf, %i.ng
  br i1 %or.cond96.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.nh = getelementptr inbounds [4 x i8], ptr %i.mv, i64 %i.me ; 2 uses
  %i.ni = load float, ptr %i.nh, align 4, !tbaa !102 ; 2 uses
  %i.nj = fcmp reassoc nsz arcp contract afn ogt float %i.ni, %spec.select.i
  %.spec.select97.i = select reassoc nsz arcp contract afn i1 %i.nj, float %i.ni, float %spec.select.i
  store float %.spec.select97.i, ptr %i.nh, align 4, !tbaa !102
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.o, %bb.n
  %i.nk = add nuw nsw i32 %.011.i, 1              ; 2 uses
  %exitcond.not.i88 = icmp eq i32 %i.nk, %i.lk
  br i1 %exitcond.not.i88, label %_brush_falloff_roi.exit, label %bb.n

_brush_falloff_roi.exit:                          ; preds = %bb.t, %bb.m, %bb.k, %bb.l
  %indvars.iv.next143 = add nsw i64 %indvars.iv142, 1 ; 2 uses
  %exitcond146.not = icmp eq i64 %indvars.iv.next143, %wide.trip.count145
  br i1 %exitcond146.not, label %._crit_edge127, label %bb.k

bb.u:                                             ; preds = %._crit_edge127
  %i.nl = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.nm = call i32 @gettimeofday(ptr noundef nonnull %6, ptr noundef null) #18 ; 0 uses
  %i.nn = load i64, ptr %6, align 8, !tbaa !132
  %i.no = add nsw i64 %i.nn, -1290608000
  %i.np = sitofp reassoc nsz arcp contract afn i64 %i.no to double
  %i.nq = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.nr = load i64, ptr %i.nq, align 8, !tbaa !133
  %i.ns = sitofp reassoc nsz arcp contract afn i64 %i.nr to double
  %i.nt = fmul reassoc nnan nsz arcp contract afn double %i.ns, f0x3EB0C6F7A0B5ED8D
  %i.nu = fadd reassoc nsz arcp contract afn double %i.nt, %i.np
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  %i.nv = fsub reassoc nsz arcp contract afn double %i.nu, %.1102
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.24, ptr noundef nonnull %i.nl, double noundef %i.nv) #18
  %.pre148 = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !130
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge127, %bb.u
  %i.nw = phi i32 [ %i.kg, %._crit_edge127 ], [ %.pre148, %bb.u ]
  %i.nx = and i32 %i.nw, 4112
  %or.cond81.not = icmp eq i32 %i.nx, 4112
  br i1 %or.cond81.not, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ny = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.nz = call i32 @gettimeofday(ptr noundef nonnull %5, ptr noundef null) #18 ; 0 uses
  %i.oa = load i64, ptr %5, align 8, !tbaa !132
  %i.ob = add nsw i64 %i.oa, -1290608000
  %i.oc = sitofp reassoc nsz arcp contract afn i64 %i.ob to double
  %i.od = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.oe = load i64, ptr %i.od, align 8, !tbaa !133
  %i.of = sitofp reassoc nsz arcp contract afn i64 %i.oe to double
  %i.og = fmul reassoc nnan nsz arcp contract afn double %i.of, f0x3EB0C6F7A0B5ED8D
  %i.oh = fadd reassoc nsz arcp contract afn double %i.og, %i.oc
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.oi = fsub reassoc nsz arcp contract afn double %i.oh, %i.q
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.23, ptr noundef nonnull %i.ny, double noundef %i.oi) #18
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
  %i.b = alloca [2 x float], align 8              ; 6 uses
  %i.c = alloca [2 x float], align 8              ; 6 uses
  %i.d = alloca [2 x float], align 4              ; 6 uses
  %i.e = alloca [2 x float], align 8              ; 7 uses
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
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !64 ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  %i.o = load ptr, ptr %i.n, align 16, !tbaa !129 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 152
  %i.q = load float, ptr %i.p, align 8, !tbaa !152 ; 2 uses
  %i.r = fcmp reassoc nsz arcp contract afn ogt float %i.q, 0.000000e+00
  %spec.select.i = select reassoc nsz arcp contract afn i1 %i.r, float %i.q, float 1.000000e+00 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 156
  %i.t = load i32, ptr %i.s, align 4, !tbaa !153  ; 2 uses
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = uitofp nneg i32 %i.t to float
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 160
  %i.x = load i32, ptr %i.w, align 16, !tbaa !154
  %i.y = sitofp reassoc nsz arcp contract afn i32 %i.x to float
  br label %dt_masks_get_image_size.exit

bb.e:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 2760
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !155 ; 3 uses
  %.not.i = icmp eq ptr %i.aa, null
  br i1 %.not.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 156
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !153 ; 2 uses
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ae = uitofp nneg i32 %i.ac to float
  %i.af = fdiv reassoc nsz arcp contract afn float %i.ae, %spec.select.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 160
  %i.ah = load i32, ptr %i.ag, align 16, !tbaa !154
  %i.ai = sitofp reassoc nsz arcp contract afn i32 %i.ah to float
  %i.aj = fdiv reassoc nsz arcp contract afn float %i.ai, %spec.select.i
  br label %dt_masks_get_image_size.exit

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %i.o, i64 376
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !156
  %i.am = sitofp reassoc nsz arcp contract afn i32 %i.al to float
  %i.an = getelementptr inbounds nuw i8, ptr %i.o, i64 380
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !157
  %i.ap = sitofp reassoc nsz arcp contract afn i32 %i.ao to float
  br label %dt_masks_get_image_size.exit

dt_masks_get_image_size.exit:                     ; preds = %bb.d, %bb.g, %bb.h
  %.0402 = phi nsz float [ %i.v, %bb.d ], [ %i.am, %bb.h ], [ %i.af, %bb.g ] ; 7 uses
  %.sink.i = phi float [ %i.y, %bb.d ], [ %i.ap, %bb.h ], [ %i.aj, %bb.g ] ; 7 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.o, i64 144
  %i.ar = load <2 x i32>, ptr %i.aq, align 16, !tbaa !106
  %i.as = sitofp reassoc nsz arcp contract afn <2 x i32> %i.ar to <2 x float> ; 8 uses
  %i.at = getelementptr inbounds nuw i8, ptr %8, i64 172
  %i.au = load i32, ptr %i.at, align 4, !tbaa !18
  %.not320 = icmp eq i32 %i.au, 0
  br i1 %.not320, label %bb.u, label %bb.i

bb.i:                                             ; preds = %dt_masks_get_image_size.exit
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !158 ; 5 uses
  %.not332 = icmp eq ptr %i.aw, null
  br i1 %.not332, label %bb.t, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ax = fmul reassoc nsz arcp contract afn float %.0402, %1
  %i.ay = fmul reassoc nsz arcp contract afn float %.sink.i, %2
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 136 ; 3 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !101 ; 2 uses
  %i.bb = add i64 %i.ba, 2                        ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 144
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !159 ; 3 uses
  %.not.i349 = icmp ult i64 %i.bb, %i.bd
  br i1 %.not.i349, label %bb.m, label %bb.k, !prof !160

bb.k:                                             ; preds = %bb.j
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %dt_masks_dynbuf_add_2.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bf = shl i64 %i.bd, 1
  %i.bg = add i64 %i.bf, 2
  %i.bh = tail call fastcc i32 @_dt_masks_dynbuf_growto(ptr noundef nonnull %i.aw, i64 noundef %i.bg)
  %.not11.i = icmp eq i32 %i.bh, 0
  br i1 %.not11.i, label %dt_masks_dynbuf_add_2.exit, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.l
  %.pre.i = load i64, ptr %i.az, align 8, !tbaa !101 ; 2 uses
  %.pre12.i = add i64 %.pre.i, 2
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge.i, %bb.j
  %.pre-phi.i = phi i64 [ %.pre12.i, %._crit_edge.i ], [ %i.bb, %bb.j ]
  %i.bi = phi i64 [ %.pre.i, %._crit_edge.i ], [ %i.ba, %bb.j ]
  %i.bj = load ptr, ptr %i.aw, align 8, !tbaa !100
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.bi ; 2 uses
  store float %i.ax, ptr %i.bk, align 4, !tbaa !102
  store i64 %.pre-phi.i, ptr %i.az, align 8, !tbaa !101
  %i.bl = getelementptr i8, ptr %i.bk, i64 4
  store float %i.ay, ptr %i.bl, align 4, !tbaa !102
  br label %dt_masks_dynbuf_add_2.exit

dt_masks_dynbuf_add_2.exit:                       ; preds = %bb.k, %bb.l, %bb.m
  %i.bm = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !97 ; 5 uses
  %.val347 = load ptr, ptr %i.bn, align 8, !tbaa !100 ; 2 uses
  %i.bo = getelementptr i8, ptr %i.bn, i64 136    ; 3 uses
  %.val348 = load i64, ptr %i.bo, align 8, !tbaa !101 ; 3 uses
  %i.bp = getelementptr [4 x i8], ptr %.val347, i64 %.val348 ; 2 uses
  %i.bq = getelementptr i8, ptr %i.bp, i64 -16
  %i.br = load <2 x float>, ptr %i.bq, align 4, !tbaa !102
  %i.bs = getelementptr i8, ptr %i.bp, i64 -8
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !102
  %i.bu = add i64 %.val348, 2                     ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bn, i64 144
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !159 ; 3 uses
  %.not.i350 = icmp ult i64 %i.bu, %i.bw
  br i1 %.not.i350, label %bb.p, label %bb.n, !prof !160

bb.n:                                             ; preds = %dt_masks_dynbuf_add_2.exit
  %i.bx = icmp eq i64 %i.bw, 0
  br i1 %i.bx, label %dt_masks_dynbuf_add_2.exit356, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.by = shl i64 %i.bw, 1
  %i.bz = add i64 %i.by, 2
  %i.ca = tail call fastcc i32 @_dt_masks_dynbuf_growto(ptr noundef nonnull %i.bn, i64 noundef %i.bz)
  %.not11.i351 = icmp eq i32 %i.ca, 0
  br i1 %.not11.i351, label %dt_masks_dynbuf_add_2.exit356, label %._crit_edge.i352

._crit_edge.i352:                                 ; preds = %bb.o
  %.pre.i353 = load i64, ptr %i.bo, align 8, !tbaa !101 ; 2 uses
  %.pre12.i354 = add i64 %.pre.i353, 2
  %.pre = load ptr, ptr %i.bn, align 8, !tbaa !100
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge.i352, %dt_masks_dynbuf_add_2.exit
  %i.cb = phi ptr [ %.pre, %._crit_edge.i352 ], [ %.val347, %dt_masks_dynbuf_add_2.exit ]
  %.pre-phi.i355 = phi i64 [ %.pre12.i354, %._crit_edge.i352 ], [ %i.bu, %dt_masks_dynbuf_add_2.exit ]
  %i.cc = phi i64 [ %.pre.i353, %._crit_edge.i352 ], [ %.val348, %dt_masks_dynbuf_add_2.exit ]
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.cc
  store i64 %.pre-phi.i355, ptr %i.bo, align 8, !tbaa !101
  store <2 x float> %i.br, ptr %i.cd, align 4, !tbaa !102
  br label %dt_masks_dynbuf_add_2.exit356

dt_masks_dynbuf_add_2.exit356:                    ; preds = %bb.n, %bb.o, %bb.p
  %i.ce = load ptr, ptr %i.bm, align 8, !tbaa !97 ; 4 uses
  %i.cf = fptrunc reassoc nsz arcp contract afn double %3 to float
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 136 ; 3 uses
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !101 ; 2 uses
  %i.ci = add i64 %i.ch, 2                        ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 144
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !159 ; 3 uses
  %.not.i357 = icmp ult i64 %i.ci, %i.ck
  br i1 %.not.i357, label %bb.s, label %bb.q, !prof !160

bb.q:                                             ; preds = %dt_masks_dynbuf_add_2.exit356
  %i.cl = icmp eq i64 %i.ck, 0
  br i1 %i.cl, label %dt_masks_dynbuf_add_2.exit363, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cm = shl i64 %i.ck, 1
  %i.cn = add i64 %i.cm, 2
  %i.co = tail call fastcc i32 @_dt_masks_dynbuf_growto(ptr noundef nonnull %i.ce, i64 noundef %i.cn)
  %.not11.i358 = icmp eq i32 %i.co, 0
  br i1 %.not11.i358, label %dt_masks_dynbuf_add_2.exit363, label %._crit_edge.i359

._crit_edge.i359:                                 ; preds = %bb.r
  %.pre.i360 = load i64, ptr %i.cg, align 8, !tbaa !101 ; 2 uses
  %.pre12.i361 = add i64 %.pre.i360, 2
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge.i359, %dt_masks_dynbuf_add_2.exit356
  %.pre-phi.i362 = phi i64 [ %.pre12.i361, %._crit_edge.i359 ], [ %i.ci, %dt_masks_dynbuf_add_2.exit356 ]
  %i.cp = phi i64 [ %.pre.i360, %._crit_edge.i359 ], [ %i.ch, %dt_masks_dynbuf_add_2.exit356 ]
  %i.cq = load ptr, ptr %i.ce, align 8, !tbaa !100
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.cp ; 2 uses
  store float %i.bt, ptr %i.cr, align 4, !tbaa !102
  store i64 %.pre-phi.i362, ptr %i.cg, align 8, !tbaa !101
  %i.cs = getelementptr i8, ptr %i.cr, i64 4
  store float %i.cf, ptr %i.cs, align 4, !tbaa !102
  br label %dt_masks_dynbuf_add_2.exit363

dt_masks_dynbuf_add_2.exit363:                    ; preds = %bb.q, %bb.r, %bb.s
  %i.ct = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !96
  %i.cv = add nsw i32 %i.cu, 1
  store i32 %i.cv, ptr %i.ct, align 8, !tbaa !96
  br label %bb.t

bb.t:                                             ; preds = %dt_masks_dynbuf_add_2.exit363, %bb.i
  tail call void @dt_control_queue_redraw_center() #18
  br label %.critedge337

bb.u:                                             ; preds = %dt_masks_get_image_size.exit
  %i.cw = getelementptr inbounds nuw i8, ptr %8, i64 132 ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !161
  %i.cy = icmp sgt i32 %i.cx, -1
  br i1 %i.cy, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.cz = fmul reassoc nsz arcp contract afn float %.0402, %1
  store float %i.cz, ptr %i.a, align 8, !tbaa !102
  %i.da = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.db = fmul reassoc nsz arcp contract afn float %.sink.i, %2
  store float %i.db, ptr %i.da, align 4, !tbaa !102
  %i.dc = call i32 @dt_dev_distort_backtransform(ptr noundef nonnull %i.m, ptr noundef nonnull %i.a, i64 noundef 1) #18 ; 0 uses
  %i.dd = load ptr, ptr %6, align 8, !tbaa !109
  %i.de = load i32, ptr %i.cw, align 4, !tbaa !161
  %i.df = call ptr @g_list_nth_data(ptr noundef %i.dd, i32 noundef %i.de) #18 ; 4 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 16 ; 2 uses
  %i.di = load <2 x float>, ptr %i.a, align 8, !tbaa !102
  %i.dj = fdiv reassoc nsz arcp contract afn <2 x float> %i.di, %i.as ; 2 uses
  %i.dk = load <2 x float>, ptr %i.df, align 4, !tbaa !102
  %i.dl = fsub reassoc nsz arcp contract afn <2 x float> %i.dj, %i.dk ; 2 uses
  %i.dm = load <2 x float>, ptr %i.dg, align 4, !tbaa !102
  %i.dn = fadd reassoc nsz arcp contract afn <2 x float> %i.dm, %i.dl
  %i.do = load <2 x float>, ptr %i.dh, align 4, !tbaa !102
  %i.dp = fadd reassoc nsz arcp contract afn <2 x float> %i.do, %i.dl
  store <2 x float> %i.dp, ptr %i.dh, align 4, !tbaa !102
  %i.dq = shufflevector <2 x float> %i.dj, <2 x float> %i.dn, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %i.dq, ptr %i.df, align 4, !tbaa !102
  call fastcc void @_brush_init_ctrl_points(ptr noundef nonnull %6)
  call void @dt_masks_gui_form_create(ptr noundef nonnull %6, ptr noundef nonnull %8, i32 noundef %9, ptr noundef %0) #18
  call void @dt_control_queue_redraw_center() #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %.critedge337

bb.w:                                             ; preds = %bb.u
  %i.dr = getelementptr inbounds nuw i8, ptr %8, i64 140
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !162 ; 2 uses
  %i.dt = icmp sgt i32 %i.ds, -1
  br i1 %i.dt, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.du = load ptr, ptr %6, align 8, !tbaa !109
  %i.dv = tail call ptr @g_list_nth(ptr noundef %i.du, i32 noundef %i.ds) #18 ; 3 uses
  %i.dw = load ptr, ptr %6, align 8, !tbaa !109
  %.not.i364 = icmp eq ptr %i.dv, null
  br i1 %.not.i364, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !163 ; 2 uses
  %.not6.i = icmp eq ptr %i.dy, null
  br i1 %.not6.i, label %bb.z, label %g_list_next_wraparound.exit

bb.z:                                             ; preds = %bb.y, %bb.x
  br label %g_list_next_wraparound.exit

g_list_next_wraparound.exit:                      ; preds = %bb.y, %bb.z
end_hunk_0
begin_hunk_1_@_brush_events_mouse_scrolled:bb.a
  %i.co = select i1 %.not113, ptr @.str.9, ptr @.str.8
  %i.cp = tail call reassoc nsz arcp contract afn float @dt_conf_get_float(ptr noundef nonnull %i.co) #18
  %i.cq = tail call reassoc nsz arcp contract afn float @dt_masks_change_size(i32 noundef %3, float noundef %i.cp, float noundef 5.000000e-04, float noundef 1.000000e+00) #18
  %i.cr = load i32, ptr %i.cl, align 8, !tbaa !95
  %i.cs = and i32 %i.cr, 136
  %.not114 = icmp eq i32 %i.cs, 0
  %i.ct = select i1 %.not114, ptr @.str.9, ptr @.str.8
  tail call void @dt_conf_set_float(ptr noundef nonnull %i.ct, float noundef %i.cq) #18
  br label %bb.ad

bb.v:                                             ; preds = %.lr.ph158, %bb.x
  %.0100157 = phi ptr [ %.0100154, %.lr.ph158 ], [ %.0100, %bb.x ] ; 2 uses
  %.099156 = phi i32 [ 0, %.lr.ph158 ], [ %i.df, %bb.x ] ; 2 uses
  %i.cu = load i32, ptr %i.ck, align 4, !tbaa !103 ; 2 uses
  %i.cv = icmp eq i32 %i.cu, -1
  %i.cw = icmp eq i32 %i.cu, %.099156
  %or.cond = select i1 %i.cv, i1 true, i1 %i.cw
  br i1 %or.cond, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cx = load ptr, ptr %.0100157, align 8, !tbaa !105
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 36 ; 3 uses
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !108
  %i.da = tail call reassoc nsz arcp contract afn float @dt_masks_change_size(i32 noundef %3, float noundef %i.cz, float noundef 5.000000e-04, float noundef 1.000000e+00) #18
  store float %i.da, ptr %i.cy, align 4, !tbaa !108
  %i.db = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.25, i32 noundef 5) #18
  %i.dc = load float, ptr %i.cy, align 4, !tbaa !108
  %i.dd = fmul reassoc nsz arcp contract afn float %i.dc, 1.000000e+02
  %i.de = fpext reassoc nsz arcp contract afn float %i.dd to double
  tail call void (ptr, ...) @dt_toast_log(ptr noundef %i.db, double noundef %i.de) #18
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w
  %i.df = add nuw nsw i32 %.099156, 1
  %i.dg = getelementptr inbounds nuw i8, ptr %.0100157, i64 8
  %.0100 = load ptr, ptr %i.dg, align 8, !tbaa !92 ; 2 uses
  %.not112 = icmp eq ptr %.0100, null
  br i1 %.not112, label %._crit_edge, label %bb.v

.lr.ph153:                                        ; preds = %.critedge, %.critedge.us146, %.critedge.us
  %i.dh = getelementptr inbounds nuw i8, ptr %7, i64 84
  br label %bb.aa

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %.critedge
  %.096143 = phi ptr [ %.096, %.critedge ], [ %.0100154, %.lr.ph.split ] ; 2 uses
  %.097142 = phi i32 [ %i.dp, %.critedge ], [ 0, %.lr.ph.split ] ; 2 uses
  %.not161 = icmp eq i32 %.fr159, %.097142
  br i1 %.not161, label %bb.y, label %.critedge

bb.y:                                             ; preds = %.lr.ph.split.split
  %i.di = load ptr, ptr %.096143, align 8, !tbaa !105 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 24
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !102
  %i.dl = fcmp reassoc nsz arcp contract afn ogt float %i.dk, 1.000000e+00
  br i1 %i.dl, label %.loopexit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dm = getelementptr inbounds nuw i8, ptr %i.di, i64 28
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !102
  %i.do = fcmp reassoc nsz arcp contract afn ogt float %i.dn, 1.000000e+00
  br i1 %i.do, label %.loopexit, label %.critedge

.critedge:                                        ; preds = %bb.z, %.lr.ph.split.split
  %i.dp = add nuw nsw i32 %.097142, 1
  %i.dq = getelementptr inbounds nuw i8, ptr %.096143, i64 8
  %.096 = load ptr, ptr %i.dq, align 8, !tbaa !92 ; 2 uses
  %.not107 = icmp eq ptr %.096, null
  br i1 %.not107, label %.lr.ph153, label %.lr.ph.split.split

.thread129:                                       ; preds = %bb.ac, %.preheader139
  %i.dr = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !95
  %i.dt = and i32 %i.ds, 136
  %.not110 = icmp eq i32 %i.dt, 0
  %i.du = select i1 %.not110, ptr @.str.7, ptr @.str.6
  %i.dv = tail call reassoc nsz arcp contract afn float @dt_conf_get_float(ptr noundef nonnull %i.du) #18
  %i.dw = tail call reassoc nsz arcp contract afn float @dt_masks_change_size(i32 noundef %3, float noundef %i.dv, float noundef 5.000000e-05, float noundef 5.000000e-01) #18 ; 2 uses
  %i.dx = load i32, ptr %i.dr, align 8, !tbaa !95
  %i.dy = and i32 %i.dx, 136
  %.not111 = icmp eq i32 %i.dy, 0
  %i.dz = select i1 %.not111, ptr @.str.7, ptr @.str.6
  tail call void @dt_conf_set_float(ptr noundef nonnull %i.dz, float noundef %i.dw) #18
  %i.ea = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.26, i32 noundef 5) #18
  %i.eb = fmul reassoc nsz arcp contract afn float %i.dw, 2.000000e+02
  %i.ec = fpext reassoc nsz arcp contract afn float %i.eb to double
  tail call void (ptr, ...) @dt_toast_log(ptr noundef %i.ea, double noundef %i.ec) #18
  br label %bb.ad

bb.aa:                                            ; preds = %.lr.ph153, %bb.ac
  %.092152 = phi ptr [ %.0100154, %.lr.ph153 ], [ %.092, %bb.ac ] ; 2 uses
  %.198151 = phi i32 [ 0, %.lr.ph153 ], [ %i.en, %bb.ac ] ; 2 uses
  %i.ed = load i32, ptr %i.dh, align 4, !tbaa !103 ; 2 uses
  %i.ee = icmp eq i32 %i.ed, -1
  %i.ef = icmp eq i32 %i.ed, %.198151
  %or.cond123 = select i1 %i.ee, i1 true, i1 %i.ef
  br i1 %or.cond123, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.eg = load ptr, ptr %.092152, align 8, !tbaa !105 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 24 ; 2 uses
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !102
  %i.ej = tail call reassoc nsz arcp contract afn float @dt_masks_change_size(i32 noundef %3, float noundef %i.ei, float noundef 5.000000e-05, float noundef 5.000000e-01) #18
  store float %i.ej, ptr %i.eh, align 4, !tbaa !102
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eg, i64 28 ; 2 uses
  %i.el = load float, ptr %i.ek, align 4, !tbaa !102
  %i.em = tail call reassoc nsz arcp contract afn float @dt_masks_change_size(i32 noundef %3, float noundef %i.el, float noundef 5.000000e-05, float noundef 5.000000e-01) #18
  store float %i.em, ptr %i.ek, align 4, !tbaa !102
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  %i.en = add nuw nsw i32 %.198151, 1
  %i.eo = getelementptr inbounds nuw i8, ptr %.092152, i64 8
  %.092 = load ptr, ptr %i.eo, align 8, !tbaa !92 ; 2 uses
  %.not109 = icmp eq ptr %.092, null
  br i1 %.not109, label %.thread129, label %bb.aa

bb.ad:                                            ; preds = %.thread129, %._crit_edge
  %i.ep = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !64
  tail call void @dt_dev_add_masks_history_item(ptr noundef %i.ep, ptr noundef %0, i32 noundef 1) #18
  tail call void @dt_masks_gui_form_create(ptr noundef nonnull %5, ptr noundef nonnull %7, i32 noundef %8, ptr noundef %0) #18
  br label %.loopexit

.loopexit:                                        ; preds = %bb.z, %bb.y, %bb.u, %.lr.ph.split.split.us, %bb.n, %bb.s, %bb.ad, %bb.j
  %.4 = phi i32 [ 1, %bb.j ], [ 1, %bb.s ], [ 0, %bb.n ], [ 1, %bb.ad ], [ 1, %bb.u ], [ 1, %.lr.ph.split.split.us ], [ 1, %bb.y ], [ 1, %bb.z ]
  ret i32 %.4
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @_brush_events_button_pressed(ptr noundef %0, float noundef %1, float noundef %2, double noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7, i32 noundef %8, ptr noundef %9, i32 noundef %10) #1 {
bb.a:
  %i.a = alloca [2 x float], align 8              ; 6 uses
  %i.b = add i32 %5, -5
  %or.cond = icmp ult i32 %i.b, 2
  br i1 %or.cond, label %.thread394, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %9, null
  br i1 %.not, label %.thread394, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr %9, align 8, !tbaa !110
  %i.d = tail call ptr @g_list_nth_data(ptr noundef %i.c, i32 noundef %10) #18 ; 3 uses
  %.not283 = icmp eq ptr %i.d, null
  br i1 %.not283, label %.thread394, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !64 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %i.g = load ptr, ptr %i.f, align 16, !tbaa !129 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 152
  %i.i = load float, ptr %i.h, align 8, !tbaa !152 ; 2 uses
  %i.j = fcmp reassoc nsz arcp contract afn ogt float %i.i, 0.000000e+00
  %spec.select.i = select reassoc nsz arcp contract afn i1 %i.j, float %i.i, float 1.000000e+00 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 156
  %i.l = load i32, ptr %i.k, align 4, !tbaa !153  ; 2 uses
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = uitofp nneg i32 %i.l to float
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 160
  %i.p = load i32, ptr %i.o, align 16, !tbaa !154
  %i.q = sitofp reassoc nsz arcp contract afn i32 %i.p to float
  br label %dt_masks_get_image_size.exit

bb.f:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 2760
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !155  ; 3 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 156
  %i.u = load i32, ptr %i.t, align 4, !tbaa !153  ; 2 uses
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.w = uitofp nneg i32 %i.u to float
  %i.x = fdiv reassoc nsz arcp contract afn float %i.w, %spec.select.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 160
  %i.z = load i32, ptr %i.y, align 16, !tbaa !154
  %i.aa = sitofp reassoc nsz arcp contract afn i32 %i.z to float
  %i.ab = fdiv reassoc nsz arcp contract afn float %i.aa, %spec.select.i
  br label %dt_masks_get_image_size.exit

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 376
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !156
  %i.ae = sitofp reassoc nsz arcp contract afn i32 %i.ad to float
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 380
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !157
  %i.ah = sitofp reassoc nsz arcp contract afn i32 %i.ag to float
  br label %dt_masks_get_image_size.exit

dt_masks_get_image_size.exit:                     ; preds = %bb.e, %bb.h, %bb.i
  %.0342 = phi nsz float [ %i.n, %bb.e ], [ %i.ae, %bb.i ], [ %i.x, %bb.h ] ; 2 uses
  %.sink.i = phi float [ %i.q, %bb.e ], [ %i.ah, %bb.i ], [ %i.ab, %bb.h ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.g, i64 144
  %i.aj = load <2 x i32>, ptr %i.ai, align 16, !tbaa !106
  %i.ak = sitofp reassoc nsz arcp contract afn <2 x i32> %i.aj to <2 x float>
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 6 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !95
  %i.an = and i32 %i.am, 136
  %.not284 = icmp eq i32 %i.an, 0
  %i.ao = select i1 %.not284, ptr @.str.7, ptr @.str.6
  %i.ap = tail call reassoc nsz arcp contract afn float @dt_conf_get_float(ptr noundef nonnull %i.ao) #18
  %i.aq = fcmp reassoc nsz arcp contract afn olt float %i.ap, 5.000000e-01
  br i1 %i.aq, label %bb.j, label %bb.k

bb.j:                                             ; preds = %dt_masks_get_image_size.exit
  %i.ar = load i32, ptr %i.al, align 8, !tbaa !95
  %i.as = and i32 %i.ar, 136
  %.not285 = icmp eq i32 %i.as, 0
  %i.at = select i1 %.not285, ptr @.str.7, ptr @.str.6
  %i.au = tail call reassoc nsz arcp contract afn float @dt_conf_get_float(ptr noundef nonnull %i.at) #18
  br label %bb.k

bb.k:                                             ; preds = %dt_masks_get_image_size.exit, %bb.j
  %i.av = phi reassoc nsz arcp contract afn float [ %i.au, %bb.j ], [ 5.000000e-01, %dt_masks_get_image_size.exit ]
  %i.aw = load i32, ptr %i.al, align 8, !tbaa !95
  %i.ax = and i32 %i.aw, 136
  %.not286 = icmp eq i32 %i.ax, 0
  %i.ay = select i1 %.not286, ptr @.str.9, ptr @.str.8
  %i.az = tail call reassoc nsz arcp contract afn float @dt_conf_get_float(ptr noundef nonnull %i.ay) #18
  %i.ba = fcmp reassoc nsz arcp contract afn olt float %i.az, 1.000000e+00
  br i1 %i.ba, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bb = load i32, ptr %i.al, align 8, !tbaa !95
  %i.bc = and i32 %i.bb, 136
  %.not287 = icmp eq i32 %i.bc, 0
  %i.bd = select i1 %.not287, ptr @.str.9, ptr @.str.8
  %i.be = tail call reassoc nsz arcp contract afn float @dt_conf_get_float(ptr noundef nonnull %i.bd) #18
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.bf = phi reassoc nsz arcp contract afn float [ %i.be, %bb.l ], [ 1.000000e+00, %bb.k ]
  %i.bg = getelementptr inbounds nuw i8, ptr %9, i64 172 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !18 ; 2 uses
  %i.bi = icmp ne i32 %i.bh, 0                    ; 2 uses
  %i.bj = icmp eq i32 %4, 1                       ; 2 uses
  %or.cond4 = and i1 %i.bj, %i.bi
  br i1 %or.cond4, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.bk = tail call i32 @gtk_accelerator_get_default_mod_mask() #18
  %i.bl = load i32, ptr @dt_modifier_shortcuts, align 4, !tbaa !106
  %i.bm = or i32 %i.bl, %6
  %i.bn = and i32 %i.bm, %i.bk
  %.not354 = icmp eq i32 %i.bn, 5
  br i1 %.not354, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bo = tail call i32 @gtk_accelerator_get_default_mod_mask() #18
  %i.bp = load i32, ptr @dt_modifier_shortcuts, align 4, !tbaa !106
  %i.bq = or i32 %i.bp, %6
  %i.br = and i32 %i.bq, %i.bo
  %.not355 = icmp eq i32 %i.br, 1
  br i1 %.not355, label %bb.p, label %.thread

.thread:                                          ; preds = %bb.o
  %.pr = load i32, ptr %i.bg, align 4, !tbaa !18
  br label %bb.s

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bs = load i32, ptr %i.al, align 8, !tbaa !95
  %i.bt = and i32 %i.bs, 8
  %.not318 = icmp eq i32 %i.bt, 0
  br i1 %.not318, label %.thread394, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @dt_masks_set_source_pos_initial_state(ptr noundef nonnull %9, i32 noundef %6, float noundef %1, float noundef %2) #18
  br label %.thread394

bb.r:                                             ; preds = %bb.m
  br i1 %i.bj, label %bb.s, label %bb.bj

bb.s:                                             ; preds = %.thread, %bb.r
  %i.bu = phi i32 [ %.pr, %.thread ], [ %i.bh, %bb.r ]
  %.not300 = icmp eq i32 %i.bu, 0
  br i1 %.not300, label %bb.af, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bv = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !158 ; 2 uses
  %.not307 = icmp eq ptr %i.bw, null
  br i1 %.not307, label %bb.u, label %.thread343

bb.u:                                             ; preds = %bb.t
  %i.bx = tail call fastcc ptr @dt_masks_dynbuf_init(i64 noundef 200000, ptr noundef nonnull @.str.27) ; 3 uses
  store ptr %i.bx, ptr %i.bv, align 8, !tbaa !158
  %.not308 = icmp eq ptr %i.bx, null
  br i1 %.not308, label %.thread394, label %.thread343

.thread343:                                       ; preds = %bb.t, %bb.u
  %i.by = phi ptr [ %i.bw, %bb.t ], [ %i.bx, %bb.u ]
  %i.bz = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !97
  %.not309 = icmp eq ptr %i.ca, null
  br i1 %.not309, label %bb.v, label %.thread345

bb.v:                                             ; preds = %.thread343
  %i.cb = tail call fastcc ptr @dt_masks_dynbuf_init(i64 noundef 400000, ptr noundef nonnull @.str.28) ; 2 uses
  store ptr %i.cb, ptr %i.bz, align 8, !tbaa !97
  %.not310 = icmp eq ptr %i.cb, null
  br i1 %.not310, label %.thread394, label %..thread345_crit_edge

..thread345_crit_edge:                            ; preds = %bb.v
  %.pre = load ptr, ptr %i.bv, align 8, !tbaa !158
  br label %.thread345

.thread345:                                       ; preds = %..thread345_crit_edge, %.thread343
  %i.cc = phi ptr [ %.pre, %..thread345_crit_edge ], [ %i.by, %.thread343 ]
  %i.cd = fmul reassoc nsz arcp contract afn float %.0342, %1
  %i.ce = fmul reassoc nsz arcp contract afn float %.sink.i, %2
  tail call fastcc void @dt_masks_dynbuf_add_2(ptr noundef %i.cc, float noundef %i.cd, float noundef %i.ce)
  %i.cf = load ptr, ptr %i.bz, align 8, !tbaa !97
  tail call fastcc void @dt_masks_dynbuf_add_2(ptr noundef %i.cf, float noundef %i.av, float noundef %i.bf)
  %i.cg = load ptr, ptr %i.bz, align 8, !tbaa !97
  %i.ch = fptrunc reassoc nsz arcp contract afn double %3 to float
  tail call fastcc void @dt_masks_dynbuf_add_2(ptr noundef %i.cg, float noundef 1.000000e+00, float noundef %i.ch)
  %i.ci = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i32 1, ptr %i.ci, align 8, !tbaa !96
  %i.cj = load i32, ptr %i.al, align 8, !tbaa !95
  %i.ck = and i32 %i.cj, 8
  %.not311 = icmp eq i32 %i.ck, 0
  br i1 %.not311, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.thread345
  tail call void @dt_masks_set_source_pos_initial_value(ptr noundef nonnull %9, i32 noundef 64, ptr noundef nonnull %7, float noundef %1, float noundef %2) #18
  br label %bb.y

bb.x:                                             ; preds = %.thread345
  %i.cl = getelementptr inbounds nuw i8, ptr %7, i64 24
  store <2 x float> zeroinitializer, ptr %i.cl, align 8, !tbaa !102
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.cm = getelementptr inbounds nuw i8, ptr %9, i64 200 ; 2 uses
  store i32 0, ptr %i.cm, align 8, !tbaa !180
  %i.cn = tail call ptr @dt_conf_get_string_const(ptr noundef nonnull @.str.29) #18 ; 6 uses
  %.not312 = icmp eq ptr %i.cn, null
  br i1 %.not312, label %bb.ae, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.co = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.cn, ptr noundef nonnull dereferenceable(20) @.str.30) #21
  %.not313 = icmp eq i32 %i.co, 0
  br i1 %.not313, label %.sink.split, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cp = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.cn, ptr noundef nonnull dereferenceable(20) @.str.31) #21
  %.not314 = icmp eq i32 %i.cp, 0
  br i1 %.not314, label %.sink.split, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cq = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.cn, ptr noundef nonnull dereferenceable(19) @.str.32) #21
  %.not315 = icmp eq i32 %i.cq, 0
  br i1 %.not315, label %.sink.split, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cr = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.cn, ptr noundef nonnull dereferenceable(19) @.str.33) #21
  %.not316 = icmp eq i32 %i.cr, 0
  br i1 %.not316, label %.sink.split, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cs = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.cn, ptr noundef nonnull dereferenceable(22) @.str.34) #21
  %.not317 = icmp eq i32 %i.cs, 0
  br i1 %.not317, label %.sink.split, label %bb.ae

.sink.split:                                      ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z
  %.sink = phi i32 [ 2, %bb.z ], [ 1, %bb.aa ], [ 3, %bb.ac ], [ 4, %bb.ab ], [ 5, %bb.ad ]
  store i32 %.sink, ptr %i.cm, align 8, !tbaa !180
  br label %bb.ae

bb.ae:                                            ; preds = %.sink.split, %bb.ad, %bb.y
  tail call void @dt_control_queue_redraw_center() #18
  br label %.thread394

bb.af:                                            ; preds = %bb.s
  %i.ct = getelementptr inbounds nuw i8, ptr %9, i64 68
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !171
  %.not301 = icmp eq i32 %i.cu, 0
  br i1 %.not301, label %bb.aj, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cv = getelementptr inbounds nuw i8, ptr %9, i64 80
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !177
  %i.cx = icmp eq i32 %i.cw, 1
  br i1 %i.cx, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.cy = load ptr, ptr %9, align 8, !tbaa !110
  %i.cz = tail call ptr @g_list_nth_data(ptr noundef %i.cy, i32 noundef %10) #18 ; 2 uses
  %.not306 = icmp eq ptr %i.cz, null
  br i1 %.not306, label %.thread394, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.da = getelementptr inbounds nuw i8, ptr %9, i64 116
  store i32 1, ptr %i.da, align 4, !tbaa !170
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 32
end_hunk_1
begin_hunk_2_@_brush_events_button_pressed:bb.a
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 2160
  %i.lf = load ptr, ptr %i.le, align 16, !tbaa !185
  store ptr %i.lc, ptr %i.lf, align 8, !tbaa !109
  tail call void @free(ptr noundef nonnull %i.la) #18
  br label %.loopexit

.loopexit:                                        ; preds = %bb.bz, %bb.by, %bb.ca
  store i32 %i.kt, ptr %i.ks, align 8, !tbaa !177
  br label %bb.cb

bb.cb:                                            ; preds = %g_list_shorter_than.exit330, %.loopexit, %bb.bx
  tail call void @dt_masks_form_remove(ptr noundef %0, ptr noundef null, ptr noundef nonnull %7) #18
  tail call void @dt_control_queue_redraw_center() #18
  br label %.thread394

bb.cc:                                            ; preds = %bb.br
  %i.lg = getelementptr inbounds nuw i8, ptr %9, i64 92
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !172 ; 2 uses
  %i.li = icmp sgt i32 %i.lh, -1
  %or.cond10 = and i1 %i.je, %i.li
  br i1 %or.cond10, label %bb.cd, label %bb.cf

bb.cd:                                            ; preds = %bb.cc
  %i.lj = load ptr, ptr %7, align 8, !tbaa !109
  %i.lk = tail call ptr @g_list_nth_data(ptr noundef %i.lj, i32 noundef %i.lh) #18
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 40 ; 2 uses
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !167
  %.not294 = icmp eq i32 %i.lm, 1
  br i1 %.not294, label %.thread394, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  store i32 1, ptr %i.ll, align 4, !tbaa !167
  tail call fastcc void @_brush_init_ctrl_points(ptr noundef nonnull %7)
  %i.ln = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !64
  tail call void @dt_dev_add_masks_history_item(ptr noundef %i.ln, ptr noundef %0, i32 noundef 1) #18
  tail call void @dt_masks_gui_form_create(ptr noundef nonnull %7, ptr noundef nonnull %9, i32 noundef %10, ptr noundef %0) #18
  br label %.thread394

bb.cf:                                            ; preds = %bb.cc
  %i.lo = icmp sgt i32 %8, 0
  %or.cond12 = and i1 %i.je, %i.lo
  br i1 %or.cond12, label %bb.cg, label %.thread394

bb.cg:                                            ; preds = %bb.cf
  %i.lp = getelementptr inbounds nuw i8, ptr %9, i64 80 ; 2 uses
  %i.lq = load i32, ptr %i.lp, align 8, !tbaa !177
  %i.lr = icmp eq i32 %i.lq, 1
  br i1 %i.lr, label %bb.ch, label %.thread394

bb.ch:                                            ; preds = %bb.cg
  %i.ls = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !64 ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 2160
  %i.lu = load ptr, ptr %i.lt, align 16, !tbaa !185 ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 8
  %i.lw = load i32, ptr %i.lv, align 8, !tbaa !95
  %i.lx = and i32 %i.lw, 4
  %.not290 = icmp eq i32 %i.lx, 0
  br i1 %.not290, label %bb.ci, label %.preheader359.preheader

.preheader359.preheader:                          ; preds = %bb.ch
  %.047.i332 = load ptr, ptr %i.lu, align 8, !tbaa !92 ; 2 uses
  %.not6.i333 = icmp eq ptr %.047.i332, null
  br i1 %.not6.i333, label %g_list_shorter_than.exit336, label %.preheader359.1

bb.ci:                                            ; preds = %bb.ch
  tail call void @dt_masks_change_form_gui(ptr noundef null) #18
  br label %bb.cm

.preheader359.1:                                  ; preds = %.preheader359.preheader
  %i.ly = getelementptr inbounds nuw i8, ptr %.047.i332, i64 8
  %.047.i332.1 = load ptr, ptr %i.ly, align 8, !tbaa !92
  %.not6.i333.1 = icmp eq ptr %.047.i332.1, null
  br i1 %.not6.i333.1, label %g_list_shorter_than.exit336, label %bb.cj

bb.cj:                                            ; preds = %.preheader359.1
  tail call void @dt_masks_clear_form_gui(ptr noundef nonnull %i.ls) #18
  %i.lz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !64
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 2160
  %i.mb = load ptr, ptr %i.ma, align 16, !tbaa !185
  %.0361 = load ptr, ptr %i.mb, align 8, !tbaa !92 ; 3 uses
  %.not292362 = icmp eq ptr %.0361, null
  br i1 %.not292362, label %.loopexit358, label %.critedge320.lr.ph

g_list_shorter_than.exit336:                      ; preds = %.preheader359.1, %.preheader359.preheader
  tail call void @dt_masks_change_form_gui(ptr noundef null) #18
  br label %bb.cm

.critedge320.lr.ph:                               ; preds = %bb.cj
  %i.mc = getelementptr inbounds nuw i8, ptr %7, i64 160
  %i.md = load i32, ptr %i.mc, align 8, !tbaa !186
  br label %.critedge320

bb.ck:                                            ; preds = %.critedge320
  %i.me = getelementptr inbounds nuw i8, ptr %.0363, i64 8
  %.0 = load ptr, ptr %i.me, align 8, !tbaa !92   ; 2 uses
  %.not292 = icmp eq ptr %.0, null
  br i1 %.not292, label %.loopexit358, label %.critedge320

.critedge320:                                     ; preds = %.critedge320.lr.ph, %bb.ck
  %.0363 = phi ptr [ %.0361, %.critedge320.lr.ph ], [ %.0, %bb.ck ] ; 2 uses
  %i.mf = load ptr, ptr %.0363, align 8, !tbaa !105 ; 3 uses
  %i.mg = load i32, ptr %i.mf, align 4, !tbaa !188
  %.not293 = icmp eq i32 %i.mg, %i.md
  br i1 %.not293, label %bb.cl, label %bb.ck

bb.cl:                                            ; preds = %.critedge320
  %i.mh = tail call ptr @g_list_remove(ptr noundef nonnull %.0361, ptr noundef nonnull %i.mf) #18
  %i.mi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !64
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 2160
  %i.mk = load ptr, ptr %i.mj, align 16, !tbaa !185
  store ptr %i.mh, ptr %i.mk, align 8, !tbaa !109
  tail call void @free(ptr noundef nonnull %i.mf) #18
  br label %.loopexit358

.loopexit358:                                     ; preds = %bb.ck, %bb.cj, %bb.cl
  store i32 1, ptr %i.lp, align 8, !tbaa !177
  br label %bb.cm

bb.cm:                                            ; preds = %g_list_shorter_than.exit336, %.loopexit358, %bb.ci
  %i.ml = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !64
  %i.mm = tail call ptr @dt_masks_get_from_id(ptr noundef %i.ml, i32 noundef %8) #18
  tail call void @dt_masks_form_remove(ptr noundef %0, ptr noundef %i.mm, ptr noundef %7) #18
  br label %.thread394

.thread394:                                       ; preds = %bb.be, %bb.ae, %bb.al, %bb.as, %bb.ax, %bb.az, %bb.bb, %dt_masks_dynbuf_free.exit323, %bb.cb, %bb.bv, %bb.cm, %bb.q, %bb.p, %bb.u, %bb.v, %bb.ah, %bb.ai, %bb.bg, %bb.bh, %bb.bf, %g_list_shorter_than.exit, %bb.ce, %bb.cd, %bb.bi, %bb.cf, %bb.cg, %bb.c, %bb.b, %bb.a
  %.3 = phi i32 [ 1, %bb.a ], [ 0, %bb.b ], [ 0, %bb.c ], [ 1, %bb.cm ], [ 1, %bb.ae ], [ 1, %bb.u ], [ 1, %bb.p ], [ 1, %bb.v ], [ 1, %bb.al ], [ 1, %bb.as ], [ 1, %bb.ax ], [ 1, %bb.az ], [ 1, %bb.bb ], [ 0, %bb.ah ], [ 1, %bb.cd ], [ 1, %dt_masks_dynbuf_free.exit323 ], [ 1, %bb.cb ], [ 1, %bb.bf ], [ 1, %bb.bv ], [ 1, %g_list_shorter_than.exit ], [ 1, %bb.q ], [ 1, %bb.ai ], [ 1, %bb.bg ], [ 1, %bb.bh ], [ 1, %bb.ce ], [ 0, %bb.bi ], [ 0, %bb.cf ], [ 0, %bb.cg ], [ 1, %bb.be ]
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @_brush_events_button_released(ptr noundef %0, float noundef %1, float noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 %6, ptr noundef %7, i32 noundef %8) #1 {
bb.a:
  %i.a = alloca [2 x float], align 8              ; 6 uses
  %i.b = alloca [2 x float], align 8              ; 6 uses
  %i.c = alloca [2 x float], align 8              ; 6 uses
  %i.d = alloca [2 x float], align 8              ; 6 uses
  %.not = icmp eq ptr %7, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %7, align 8, !tbaa !110
  %i.f = tail call ptr @g_list_nth_data(ptr noundef %i.e, i32 noundef %8) #18
  %.not293 = icmp eq ptr %i.f, null
  br i1 %.not293, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !64 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.i = load ptr, ptr %i.h, align 16, !tbaa !129 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 152
  %i.k = load float, ptr %i.j, align 8, !tbaa !152 ; 2 uses
  %i.l = fcmp reassoc nsz arcp contract afn ogt float %i.k, 0.000000e+00
  %spec.select.i = select reassoc nsz arcp contract afn i1 %i.l, float %i.k, float 1.000000e+00 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 156
  %i.n = load i32, ptr %i.m, align 4, !tbaa !153  ; 2 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = uitofp nneg i32 %i.n to float
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 160
  %i.r = load i32, ptr %i.q, align 16, !tbaa !154
  %i.s = sitofp reassoc nsz arcp contract afn i32 %i.r to float
  br label %dt_masks_get_image_size.exit

bb.e:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 2760
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !155  ; 3 uses
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 156
  %i.w = load i32, ptr %i.v, align 4, !tbaa !153  ; 2 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.y = uitofp nneg i32 %i.w to float
  %i.z = fdiv reassoc nsz arcp contract afn float %i.y, %spec.select.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 160
  %i.ab = load i32, ptr %i.aa, align 16, !tbaa !154
  %i.ac = sitofp reassoc nsz arcp contract afn i32 %i.ab to float
  %i.ad = fdiv reassoc nsz arcp contract afn float %i.ac, %spec.select.i
  br label %dt_masks_get_image_size.exit

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 376
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !156
  %i.ag = sitofp reassoc nsz arcp contract afn i32 %i.af to float
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 380
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !157
  %i.aj = sitofp reassoc nsz arcp contract afn i32 %i.ai to float
  br label %dt_masks_get_image_size.exit

dt_masks_get_image_size.exit:                     ; preds = %bb.d, %bb.g, %bb.h
  %.0 = phi nsz float [ %i.p, %bb.d ], [ %i.ag, %bb.h ], [ %i.z, %bb.g ] ; 4 uses
  %.sink.i = phi float [ %i.s, %bb.d ], [ %i.aj, %bb.h ], [ %i.ad, %bb.g ] ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.i, i64 144
  %i.al = load <2 x i32>, ptr %i.ak, align 16, !tbaa !106
  %i.am = sitofp reassoc nsz arcp contract afn <2 x i32> %i.al to <2 x float> ; 8 uses
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 10 uses
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !95
  %i.ap = and i32 %i.ao, 136
  %.not294 = icmp eq i32 %i.ap, 0
  %i.aq = select i1 %.not294, ptr @.str.7, ptr @.str.6
  %i.ar = tail call reassoc nsz arcp contract afn float @dt_conf_get_float(ptr noundef nonnull %i.aq) #18
  %i.as = fcmp reassoc nsz arcp contract afn olt float %i.ar, 5.000000e-01
  br i1 %i.as, label %bb.i, label %bb.j

bb.i:                                             ; preds = %dt_masks_get_image_size.exit
  %i.at = load i32, ptr %i.an, align 8, !tbaa !95
  %i.au = and i32 %i.at, 136
  %.not295 = icmp eq i32 %i.au, 0
  %i.av = select i1 %.not295, ptr @.str.7, ptr @.str.6
  %i.aw = tail call reassoc nsz arcp contract afn float @dt_conf_get_float(ptr noundef nonnull %i.av) #18
  br label %bb.j

bb.j:                                             ; preds = %dt_masks_get_image_size.exit, %bb.i
  %i.ax = phi reassoc nsz arcp contract afn float [ %i.aw, %bb.i ], [ 5.000000e-01, %dt_masks_get_image_size.exit ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 172 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !18 ; 2 uses
  %i.ba = icmp ne i32 %i.az, 0
  %i.bb = icmp eq i32 %3, 1                       ; 2 uses
  %or.cond = and i1 %i.bb, %i.ba
  br i1 %or.cond, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bc = tail call i32 @gtk_accelerator_get_default_mod_mask() #18
  %i.bd = load i32, ptr @dt_modifier_shortcuts, align 4, !tbaa !106
  %i.be = or i32 %i.bd, %4
  %i.bf = and i32 %i.be, %i.bc
  %.not395 = icmp eq i32 %i.bf, 1
  br i1 %.not395, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bg = tail call i32 @gtk_accelerator_get_default_mod_mask() #18
  %i.bh = load i32, ptr @dt_modifier_shortcuts, align 4, !tbaa !106
  %i.bi = or i32 %i.bh, %4
  %i.bj = and i32 %i.bi, %i.bg
  %.not396 = icmp eq i32 %i.bj, 5
  br i1 %.not396, label %.critedge, label %._crit_edge428

._crit_edge428:                                   ; preds = %bb.l
  %.pre = load i32, ptr %i.ay, align 4, !tbaa !18
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge428, %bb.j
  %i.bk = phi i32 [ %.pre, %._crit_edge428 ], [ %i.az, %bb.j ]
  %i.bl = icmp ne i32 %i.bk, 0
  %or.cond5 = and i1 %i.bb, %i.bl
  br i1 %or.cond5, label %bb.n, label %bb.bz

bb.n:                                             ; preds = %bb.m
  %i.bm = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !158 ; 11 uses
  %.not301 = icmp eq ptr %i.bn, null
  br i1 %.not301, label %dt_masks_dynbuf_free.exit365, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bo = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 5 uses
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !96 ; 3 uses
  %i.bq = icmp sgt i32 %i.bp, 0
  br i1 %i.bq, label %bb.p, label %bb.bt

bb.p:                                             ; preds = %bb.o
  %i.br = icmp eq i32 %i.bp, 1
  br i1 %i.br, label %bb.q, label %bb.aa

bb.q:                                             ; preds = %bb.p
  %.val336 = load ptr, ptr %i.bn, align 8, !tbaa !100 ; 2 uses
  %i.bs = getelementptr i8, ptr %i.bn, i64 136    ; 3 uses
  %.val337 = load i64, ptr %i.bs, align 8, !tbaa !101 ; 3 uses
  %i.bt = getelementptr [4 x i8], ptr %.val336, i64 %.val337
  %i.bu = getelementptr i8, ptr %i.bt, i64 -8
  %i.bv = load <2 x float>, ptr %i.bu, align 4, !tbaa !102
  %i.bw = fadd reassoc nsz arcp contract afn <2 x float> %i.bv, <float f0x3C23D70A, float f0xBC23D70A>
  %i.bx = add i64 %.val337, 2                     ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bn, i64 144
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !159 ; 3 uses
  %.not.i342 = icmp ult i64 %i.bx, %i.bz
  br i1 %.not.i342, label %bb.t, label %bb.r, !prof !160

bb.r:                                             ; preds = %bb.q
  %i.ca = icmp eq i64 %i.bz, 0
  br i1 %i.ca, label %dt_masks_dynbuf_add_2.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cb = shl i64 %i.bz, 1
  %i.cc = add i64 %i.cb, 2
  %i.cd = tail call fastcc i32 @_dt_masks_dynbuf_growto(ptr noundef nonnull %i.bn, i64 noundef %i.cc)
  %.not11.i = icmp eq i32 %i.cd, 0
  br i1 %.not11.i, label %dt_masks_dynbuf_add_2.exit, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.s
  %.pre.i = load i64, ptr %i.bs, align 8, !tbaa !101 ; 2 uses
  %.pre12.i = add i64 %.pre.i, 2
  %.pre429 = load ptr, ptr %i.bn, align 8, !tbaa !100
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge.i, %bb.q
  %i.ce = phi ptr [ %.pre429, %._crit_edge.i ], [ %.val336, %bb.q ]
  %.pre-phi.i = phi i64 [ %.pre12.i, %._crit_edge.i ], [ %i.bx, %bb.q ]
  %i.cf = phi i64 [ %.pre.i, %._crit_edge.i ], [ %.val337, %bb.q ]
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.cf
  store i64 %.pre-phi.i, ptr %i.bs, align 8, !tbaa !101
  store <2 x float> %i.bw, ptr %i.cg, align 4, !tbaa !102
  br label %dt_masks_dynbuf_add_2.exit

dt_masks_dynbuf_add_2.exit:                       ; preds = %bb.r, %bb.s, %bb.t
  %i.ch = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !97 ; 5 uses
  %.val332 = load ptr, ptr %i.ci, align 8, !tbaa !100 ; 2 uses
  %i.cj = getelementptr i8, ptr %i.ci, i64 136    ; 3 uses
  %.val333 = load i64, ptr %i.cj, align 8, !tbaa !101 ; 3 uses
  %i.ck = getelementptr [4 x i8], ptr %.val332, i64 %.val333 ; 2 uses
  %i.cl = getelementptr i8, ptr %i.ck, i64 -16
  %i.cm = load <2 x float>, ptr %i.cl, align 4, !tbaa !102
  %i.cn = getelementptr i8, ptr %i.ck, i64 -8
  %i.co = load <2 x float>, ptr %i.cn, align 4, !tbaa !102
  %i.cp = add i64 %.val333, 2                     ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ci, i64 144
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !159 ; 3 uses
  %.not.i343 = icmp ult i64 %i.cp, %i.cr
  br i1 %.not.i343, label %bb.w, label %bb.u, !prof !160

bb.u:                                             ; preds = %dt_masks_dynbuf_add_2.exit
  %i.cs = icmp eq i64 %i.cr, 0
  br i1 %i.cs, label %dt_masks_dynbuf_add_2.exit349, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ct = shl i64 %i.cr, 1
  %i.cu = add i64 %i.ct, 2
  %i.cv = tail call fastcc i32 @_dt_masks_dynbuf_growto(ptr noundef nonnull %i.ci, i64 noundef %i.cu)
  %.not11.i344 = icmp eq i32 %i.cv, 0
  br i1 %.not11.i344, label %dt_masks_dynbuf_add_2.exit349, label %._crit_edge.i345

._crit_edge.i345:                                 ; preds = %bb.v
  %.pre.i346 = load i64, ptr %i.cj, align 8, !tbaa !101 ; 2 uses
  %.pre12.i347 = add i64 %.pre.i346, 2
  %.pre430 = load ptr, ptr %i.ci, align 8, !tbaa !100
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge.i345, %dt_masks_dynbuf_add_2.exit
  %i.cw = phi ptr [ %.pre430, %._crit_edge.i345 ], [ %.val332, %dt_masks_dynbuf_add_2.exit ]
  %.pre-phi.i348 = phi i64 [ %.pre12.i347, %._crit_edge.i345 ], [ %i.cp, %dt_masks_dynbuf_add_2.exit ]
  %i.cx = phi i64 [ %.pre.i346, %._crit_edge.i345 ], [ %.val333, %dt_masks_dynbuf_add_2.exit ]
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.cx
  store i64 %.pre-phi.i348, ptr %i.cj, align 8, !tbaa !101
  store <2 x float> %i.cm, ptr %i.cy, align 4, !tbaa !102
  br label %dt_masks_dynbuf_add_2.exit349

dt_masks_dynbuf_add_2.exit349:                    ; preds = %bb.u, %bb.v, %bb.w
  %i.cz = load ptr, ptr %i.ch, align 8, !tbaa !97 ; 4 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 136 ; 3 uses
  %i.db = load i64, ptr %i.da, align 8, !tbaa !101 ; 2 uses
  %i.dc = add i64 %i.db, 2                        ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cz, i64 144
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !159 ; 3 uses
  %.not.i350 = icmp ult i64 %i.dc, %i.de
  br i1 %.not.i350, label %bb.z, label %bb.x, !prof !160

bb.x:                                             ; preds = %dt_masks_dynbuf_add_2.exit349
  %i.df = icmp eq i64 %i.de, 0
  br i1 %i.df, label %dt_masks_dynbuf_add_2.exit356, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dg = shl i64 %i.de, 1
  %i.dh = add i64 %i.dg, 2
  %i.di = tail call fastcc i32 @_dt_masks_dynbuf_growto(ptr noundef nonnull %i.cz, i64 noundef %i.dh)
  %.not11.i351 = icmp eq i32 %i.di, 0
  br i1 %.not11.i351, label %dt_masks_dynbuf_add_2.exit356, label %._crit_edge.i352

._crit_edge.i352:                                 ; preds = %bb.y
  %.pre.i353 = load i64, ptr %i.da, align 8, !tbaa !101 ; 2 uses
  %.pre12.i354 = add i64 %.pre.i353, 2
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge.i352, %dt_masks_dynbuf_add_2.exit349
  %.pre-phi.i355 = phi i64 [ %.pre12.i354, %._crit_edge.i352 ], [ %i.dc, %dt_masks_dynbuf_add_2.exit349 ]
  %i.dj = phi i64 [ %.pre.i353, %._crit_edge.i352 ], [ %i.db, %dt_masks_dynbuf_add_2.exit349 ]
  %i.dk = load ptr, ptr %i.cz, align 8, !tbaa !100
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %i.dj
  store i64 %.pre-phi.i355, ptr %i.da, align 8, !tbaa !101
  store <2 x float> %i.co, ptr %i.dl, align 4, !tbaa !102
  br label %dt_masks_dynbuf_add_2.exit356

dt_masks_dynbuf_add_2.exit356:                    ; preds = %bb.x, %bb.y, %bb.z
  %i.dm = load i32, ptr %i.bo, align 8, !tbaa !96
  %i.dn = add nsw i32 %i.dm, 1                    ; 2 uses
  store i32 %i.dn, ptr %i.bo, align 8, !tbaa !96
  %.pre431 = load ptr, ptr %i.bm, align 8, !tbaa !158
  br label %bb.aa

bb.aa:                                            ; preds = %dt_masks_dynbuf_add_2.exit356, %bb.p
  %i.do = phi i32 [ %i.dn, %dt_masks_dynbuf_add_2.exit356 ], [ %i.bp, %bb.p ]
  %i.dp = phi ptr [ %.pre431, %dt_masks_dynbuf_add_2.exit356 ], [ %i.bn, %bb.p ]
  %.val325 = load ptr, ptr %i.dp, align 8, !tbaa !100 ; 4 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !97
  %.val = load ptr, ptr %i.dr, align 8, !tbaa !100 ; 2 uses
end_hunk_2
begin_hunk_3_@_brush_events_button_released:bb.a
  br i1 %.not300, label %._crit_edge, label %.lr.ph

bb.cb:                                            ; preds = %bb.bz
  %i.lg = getelementptr inbounds nuw i8, ptr %7, i64 116 ; 2 uses
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !170
  %.not299 = icmp eq i32 %i.lh, 0
  br i1 %.not299, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  store i32 0, ptr %i.lg, align 4, !tbaa !170
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.li = fmul reassoc nsz arcp contract afn float %.0, %1
  %i.lj = getelementptr inbounds nuw i8, ptr %7, i64 36
  %i.lk = load float, ptr %i.lj, align 4, !tbaa !164
  %i.ll = fadd reassoc nsz arcp contract afn float %i.lk, %i.li
  store float %i.ll, ptr %i.b, align 8, !tbaa !102
  %i.lm = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ln = fmul reassoc nsz arcp contract afn float %.sink.i, %2
  %i.lo = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.lp = load float, ptr %i.lo, align 8, !tbaa !165
  %i.lq = fadd reassoc nsz arcp contract afn float %i.lp, %i.ln
  store float %i.lq, ptr %i.lm, align 4, !tbaa !102
  %i.lr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !64
  %i.ls = call i32 @dt_dev_distort_backtransform(ptr noundef %i.lr, ptr noundef nonnull %i.b, i64 noundef 1) #18 ; 0 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.lu = load <2 x float>, ptr %i.b, align 8, !tbaa !102
  %i.lv = fdiv reassoc nsz arcp contract afn <2 x float> %i.lu, %i.am
  store <2 x float> %i.lv, ptr %i.lt, align 8, !tbaa !102
  %i.lw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !64
  call void @dt_dev_add_masks_history_item(ptr noundef %i.lw, ptr noundef %0, i32 noundef 1) #18
  call void @dt_masks_gui_form_create(ptr noundef nonnull %5, ptr noundef nonnull %7, i32 noundef %8, ptr noundef %0) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  br label %.critedge

bb.cd:                                            ; preds = %bb.cb
  %i.lx = getelementptr inbounds nuw i8, ptr %7, i64 140 ; 2 uses
  %i.ly = load i32, ptr %i.lx, align 4, !tbaa !162
  %i.lz = icmp sgt i32 %i.ly, -1
  br i1 %i.lz, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  store i32 -1, ptr %i.lx, align 4, !tbaa !162
  %i.ma = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !64
  tail call void @dt_dev_add_masks_history_item(ptr noundef %i.ma, ptr noundef %0, i32 noundef 1) #18
  br label %.critedge

bb.cf:                                            ; preds = %bb.cd
  %i.mb = getelementptr inbounds nuw i8, ptr %7, i64 132 ; 2 uses
  %i.mc = load i32, ptr %i.mb, align 4, !tbaa !161 ; 2 uses
  %i.md = icmp sgt i32 %i.mc, -1
  br i1 %i.md, label %bb.cg, label %bb.ck

bb.cg:                                            ; preds = %bb.cf
  %i.me = load ptr, ptr %5, align 8, !tbaa !109
  %i.mf = tail call ptr @g_list_nth_data(ptr noundef %i.me, i32 noundef %i.mc) #18 ; 4 uses
  store i32 -1, ptr %i.mb, align 4, !tbaa !161
  %i.mg = getelementptr inbounds nuw i8, ptr %7, i64 44 ; 3 uses
  %i.mh = load float, ptr %i.mg, align 4, !tbaa !178
  %i.mi = fcmp reassoc nsz arcp contract afn une float %i.mh, 0.000000e+00
  br i1 %i.mi, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.mj = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.mk = load float, ptr %i.mj, align 8, !tbaa !179
  %i.ml = fcmp reassoc nsz arcp contract afn une float %i.mk, 0.000000e+00
  br i1 %i.ml, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  store <2 x float> zeroinitializer, ptr %i.mg, align 4, !tbaa !102
  br label %.critedge

bb.cj:                                            ; preds = %bb.ch
  store <2 x float> zeroinitializer, ptr %i.mg, align 4, !tbaa !102
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  %i.mm = fmul reassoc nsz arcp contract afn float %.0, %1
  store float %i.mm, ptr %i.c, align 8, !tbaa !102
  %i.mn = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.mo = fmul reassoc nsz arcp contract afn float %.sink.i, %2
  store float %i.mo, ptr %i.mn, align 4, !tbaa !102
  %i.mp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !64
  %i.mq = call i32 @dt_dev_distort_backtransform(ptr noundef %i.mp, ptr noundef nonnull %i.c, i64 noundef 1) #18 ; 0 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mf, i64 8
  %i.ms = load <2 x float>, ptr %i.c, align 8, !tbaa !102
  %i.mt = fdiv reassoc nsz arcp contract afn <2 x float> %i.ms, %i.am ; 2 uses
  %i.mu = load <2 x float>, ptr %i.mf, align 4, !tbaa !102
  %i.mv = fsub reassoc nsz arcp contract afn <2 x float> %i.mt, %i.mu ; 2 uses
  %i.mw = load <2 x float>, ptr %i.mr, align 4, !tbaa !102
  %i.mx = fadd reassoc nsz arcp contract afn <2 x float> %i.mw, %i.mv
  %i.my = shufflevector <2 x float> %i.mt, <2 x float> %i.mx, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %i.my, ptr %i.mf, align 4, !tbaa !102
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mf, i64 16 ; 2 uses
  %i.na = load <2 x float>, ptr %i.mz, align 4, !tbaa !102
  %i.nb = fadd reassoc nsz arcp contract afn <2 x float> %i.na, %i.mv
  store <2 x float> %i.nb, ptr %i.mz, align 4, !tbaa !102
  call fastcc void @_brush_init_ctrl_points(ptr noundef nonnull %5)
  %i.nc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !64
  call void @dt_dev_add_masks_history_item(ptr noundef %i.nc, ptr noundef %0, i32 noundef 1) #18
  call void @dt_masks_gui_form_create(ptr noundef nonnull %5, ptr noundef nonnull %7, i32 noundef %8, ptr noundef %0) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  br label %.critedge

bb.ck:                                            ; preds = %bb.cf
  %i.nd = getelementptr inbounds nuw i8, ptr %7, i64 136 ; 2 uses
  %i.ne = load i32, ptr %i.nd, align 8, !tbaa !166 ; 2 uses
  %i.nf = icmp sgt i32 %i.ne, -1
  br i1 %i.nf, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.ng = load ptr, ptr %5, align 8, !tbaa !109
  %i.nh = tail call ptr @g_list_nth_data(ptr noundef %i.ng, i32 noundef %i.ne) #18 ; 3 uses
  store i32 -1, ptr %i.nd, align 8, !tbaa !166
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  %i.ni = fmul reassoc nsz arcp contract afn float %.0, %1
  store float %i.ni, ptr %i.d, align 8, !tbaa !102
  %i.nj = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.nk = fmul reassoc nsz arcp contract afn float %.sink.i, %2
  store float %i.nk, ptr %i.nj, align 4, !tbaa !102
  %i.nl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !64
  %i.nm = call i32 @dt_dev_distort_backtransform(ptr noundef %i.nl, ptr noundef nonnull %i.d, i64 noundef 1) #18 ; 0 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nh, i64 8
  %i.no = load <2 x float>, ptr %i.nh, align 4, !tbaa !102
  %i.np = fmul reassoc nsz arcp contract afn <2 x float> %i.no, %i.am ; 2 uses
  %i.nq = shufflevector <2 x float> %i.np, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.nr = load <2 x float>, ptr %i.d, align 8, !tbaa !102
  %i.ns = shufflevector <2 x float> %i.nr, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 2 uses
  %i.nt = shufflevector <2 x float> %i.np, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 2 uses
  %i.nu = fsub reassoc nsz arcp contract afn <4 x float> %i.nq, %i.nt
  %i.nv = fadd reassoc nsz arcp contract afn <4 x float> %i.nq, %i.nt
  %i.nw = shufflevector <4 x float> %i.nu, <4 x float> %i.nv, <4 x i32> <i32 0, i32 5, i32 6, i32 3> ; 2 uses
  %i.nx = fadd reassoc nsz arcp contract afn <4 x float> %i.nw, %i.ns
  %i.ny = fsub reassoc nsz arcp contract afn <4 x float> %i.nw, %i.ns
  %i.nz = shufflevector <4 x float> %i.nx, <4 x float> %i.ny, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.oa = shufflevector <2 x float> %i.am, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ob = fdiv reassoc nsz arcp contract afn <4 x float> %i.nz, %i.oa
  store <4 x float> %i.ob, ptr %i.nn, align 4, !tbaa !102
  %i.oc = getelementptr inbounds nuw i8, ptr %i.nh, i64 40
  store i32 2, ptr %i.oc, align 4, !tbaa !167
  call fastcc void @_brush_init_ctrl_points(ptr noundef nonnull %5)
  %i.od = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !64
  call void @dt_dev_add_masks_history_item(ptr noundef %i.od, ptr noundef %0, i32 noundef 1) #18
  call void @dt_masks_gui_form_create(ptr noundef nonnull %5, ptr noundef nonnull %7, i32 noundef %8, ptr noundef %0) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  br label %.critedge

bb.cm:                                            ; preds = %bb.ck
  %i.oe = getelementptr inbounds nuw i8, ptr %7, i64 144 ; 2 uses
  %i.of = load i32, ptr %i.oe, align 8, !tbaa !168
  %i.og = icmp sgt i32 %i.of, -1
  br i1 %i.og, label %bb.cn, label %.critedge

bb.cn:                                            ; preds = %bb.cm
  store i32 -1, ptr %i.oe, align 8, !tbaa !168
  %i.oh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !64
  tail call void @dt_dev_add_masks_history_item(ptr noundef %i.oh, ptr noundef %0, i32 noundef 1) #18
  br label %.critedge

.critedge:                                        ; preds = %bb.br, %.preheader, %.critedge324, %._crit_edge, %bb.cc, %bb.ce, %bb.cl, %bb.cn, %bb.l, %bb.k, %._crit_edge414, %bb.bo, %bb.bp, %bb.cj, %bb.ci, %bb.cm, %bb.b, %bb.a
  %.8 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 1, %bb.ci ], [ 1, %.critedge324 ], [ 1, %bb.k ], [ 1, %._crit_edge ], [ 1, %bb.cc ], [ 1, %bb.ce ], [ 0, %bb.cm ], [ 1, %bb.cl ], [ 1, %bb.cn ], [ 1, %bb.l ], [ 1, %._crit_edge414 ], [ 1, %bb.bo ], [ 1, %bb.bp ], [ 1, %bb.cj ], [ 1, %.preheader ], [ 1, %bb.br ]
  ret i32 %.8
}

; Function Attrs: nounwind uwtable
define internal void @_brush_events_post_expose(ptr noundef %0, float noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #1 {
bb.a:
  %i.a = alloca [2 x double], align 16            ; 6 uses
  %i.b = alloca float, align 4                    ; 5 uses
  %i.c = alloca float, align 4                    ; 5 uses
  %i.d = alloca float, align 4                    ; 5 uses
  %i.e = alloca float, align 4                    ; 5 uses
  %i.f = alloca float, align 4                    ; 6 uses
  %i.g = alloca float, align 4                    ; 6 uses
  %i.h = alloca float, align 4                    ; 5 uses
  %i.i = alloca float, align 4                    ; 5 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.be, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %2, align 8, !tbaa !110
  %i.k = tail call ptr @g_list_nth_data(ptr noundef %i.j, i32 noundef %3) #18 ; 13 uses
  %.not346 = icmp eq ptr %i.k, null
  br i1 %.not346, label %bb.be, label %dt_masks_get_image_size.exit

dt_masks_get_image_size.exit:                     ; preds = %bb.b
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !64 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 96
  %i.n = load ptr, ptr %i.m, align 16, !tbaa !129
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 144
  %i.p = load <2 x i32>, ptr %i.o, align 16, !tbaa !106
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.q = fpext reassoc nsz arcp contract afn float %1 to double ; 3 uses
  %i.r = fdiv reassoc nsz arcp contract afn double 4.000000e+00, %i.q ; 2 uses
  store double %i.r, ptr %i.a, align 16, !tbaa !220
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store double %i.r, ptr %i.s, align 8, !tbaa !220
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 172 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !18
  %.not347 = icmp eq i32 %i.u, 0
  br i1 %.not347, label %bb.ae, label %bb.c

bb.c:                                             ; preds = %dt_masks_get_image_size.exit
  %i.v = sitofp reassoc nsz arcp contract afn <2 x i32> %i.p to <2 x float> ; 2 uses
  %i.w = extractelement <2 x float> %i.v, i64 0   ; 2 uses
  %i.x = extractelement <2 x float> %i.v, i64 1   ; 2 uses
  %i.y = fcmp reassoc nsz arcp contract afn olt float %i.w, %i.x
  %i.z = select reassoc nsz arcp contract afn i1 %i.y, float %i.w, float %i.x ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 6 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !96
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 2160
  %i.ae = load ptr, ptr %i.ad, align 16, !tbaa !185 ; 2 uses
  %.not357.not = icmp eq ptr %i.ae, null
  br i1 %.not357.not, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 5 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !95
  %i.ah = and i32 %i.ag, 136
  %.not358 = icmp eq i32 %i.ah, 0
  %i.ai = select i1 %.not358, ptr @.str.7, ptr @.str.6
  %i.aj = tail call reassoc nsz arcp contract afn float @dt_conf_get_float(ptr noundef nonnull %i.ai) #18
  %i.ak = fcmp reassoc nsz arcp contract afn olt float %i.aj, 5.000000e-01
  br i1 %i.ak, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.al = load i32, ptr %i.af, align 8, !tbaa !95
  %i.am = and i32 %i.al, 136
  %.not359 = icmp eq i32 %i.am, 0
  %i.an = select i1 %.not359, ptr @.str.7, ptr @.str.6
  %i.ao = tail call reassoc nsz arcp contract afn float @dt_conf_get_float(ptr noundef nonnull %i.an) #18
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.ap = phi reassoc nsz arcp contract afn float [ %i.ao, %bb.f ], [ 5.000000e-01, %bb.e ] ; 3 uses
  %i.aq = load i32, ptr %i.af, align 8, !tbaa !95
  %i.ar = and i32 %i.aq, 136
  %.not360 = icmp eq i32 %i.ar, 0
  %i.as = select i1 %.not360, ptr @.str.9, ptr @.str.8
  %i.at = tail call reassoc nsz arcp contract afn float @dt_conf_get_float(ptr noundef nonnull %i.as) #18
  %i.au = fcmp reassoc nsz arcp contract afn olt float %i.at, 1.000000e+00
  br i1 %i.au, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.av = load i32, ptr %i.af, align 8, !tbaa !95
  %i.aw = and i32 %i.av, 136
  %.not361 = icmp eq i32 %i.aw, 0
  %i.ax = select i1 %.not361, ptr @.str.9, ptr @.str.8
  %i.ay = tail call reassoc nsz arcp contract afn float @dt_conf_get_float(ptr noundef nonnull %i.ax) #18
  %i.az = fmul reassoc nsz arcp contract afn float %i.ay, %i.ap
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.ba = phi float [ %i.az, %bb.h ], [ %i.ap, %bb.g ]
  %i.bb = tail call reassoc nsz arcp contract afn float @dt_conf_get_float(ptr noundef nonnull @.str.41) #18
  %i.bc = fmul reassoc nsz arcp contract afn float %i.ba, %i.z
  %i.bd = fmul reassoc nsz arcp contract afn float %i.ap, %i.z
  tail call void @cairo_save(ptr noundef %0) #18
  tail call void @dt_gui_gtk_set_source_rgba(ptr noundef %0, i32 noundef 7, float noundef %i.bb) #18
  %i.be = fdiv reassoc nsz arcp contract afn double 3.000000e+00, %i.q
  tail call void @cairo_set_line_width(ptr noundef %0, double noundef %i.be) #18
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 3 uses
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !181
  %i.bh = fpext reassoc nsz arcp contract afn float %i.bg to double
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.bj = load float, ptr %i.bi, align 8, !tbaa !182
  %i.bk = fpext reassoc nsz arcp contract afn float %i.bj to double
  %i.bl = fpext reassoc nsz arcp contract afn float %i.bc to double
  tail call void @cairo_arc(ptr noundef %0, double noundef %i.bh, double noundef %i.bk, double noundef %i.bl, double noundef 0.000000e+00, double noundef f0x401921FB54442D18) #18
  tail call void @cairo_fill_preserve(ptr noundef %0) #18
  tail call void @cairo_set_source_rgba(ptr noundef %0, double noundef 8.000000e-01, double noundef 8.000000e-01, double noundef 8.000000e-01, double noundef 8.000000e-01) #18
  tail call void @cairo_stroke(ptr noundef %0) #18
  call void @cairo_set_dash(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef 2, double noundef 0.000000e+00) #18
  %i.bm = load float, ptr %i.bf, align 4, !tbaa !181
  %i.bn = fpext reassoc nsz arcp contract afn float %i.bm to double
  %i.bo = load float, ptr %i.bi, align 8, !tbaa !182
  %i.bp = fpext reassoc nsz arcp contract afn float %i.bo to double
  %i.bq = fpext reassoc nsz arcp contract afn float %i.bd to double
  call void @cairo_arc(ptr noundef %0, double noundef %i.bn, double noundef %i.bp, double noundef %i.bq, double noundef 0.000000e+00, double noundef f0x401921FB54442D18) #18
  call void @cairo_stroke(ptr noundef %0) #18
  %i.br = load i32, ptr %i.af, align 8, !tbaa !95
  %i.bs = and i32 %i.br, 8
  %.not362 = icmp eq i32 %i.bs, 0
  br i1 %.not362, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store float 0.000000e+00, ptr %i.b, align 4, !tbaa !102
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  store float 0.000000e+00, ptr %i.c, align 4, !tbaa !102
  %i.bt = load float, ptr %i.bf, align 4, !tbaa !181 ; 2 uses
  %i.bu = load float, ptr %i.bi, align 8, !tbaa !182 ; 2 uses
  call void @dt_masks_calculate_source_pos_value(ptr noundef nonnull %2, i32 noundef 64, float noundef %i.bt, float noundef %i.bu, float noundef %i.bt, float noundef %i.bu, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i32 noundef 0) #18
  %i.bv = load float, ptr %i.b, align 4, !tbaa !102
  %i.bw = load float, ptr %i.c, align 4, !tbaa !102
  call void @dt_masks_draw_clone_source_pos(ptr noundef %0, float noundef %1, float noundef %i.bv, float noundef %i.bw) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  call void @cairo_restore(ptr noundef %0) #18
  br label %.critedge

bb.l:                                             ; preds = %bb.c
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !158
  %.val363 = load ptr, ptr %i.by, align 8, !tbaa !100 ; 10 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !97
  %.val = load ptr, ptr %i.ca, align 8, !tbaa !100 ; 5 uses
  tail call void @cairo_save(ptr noundef %0) #18
  tail call void @cairo_set_line_join(ptr noundef %0, i32 noundef 1) #18
  tail call void @cairo_set_line_cap(ptr noundef %0, i32 noundef 1) #18
  %i.cb = load float, ptr %.val, align 4, !tbaa !102 ; 6 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.val, i64 4
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !102 ; 5 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !102 ; 5 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.val, i64 12
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !102 ; 7 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 200 ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !180
  switch i32 %i.cj, label %bb.r [
    i32 2, label %bb.m
    i32 1, label %bb.n
    i32 4, label %bb.o
    i32 3, label %bb.p
    i32 5, label %bb.q
  ]

bb.m:                                             ; preds = %bb.l
  %i.ck = fcmp reassoc nsz arcp contract afn olt float %i.ch, 5.000000e-04
  %i.cl = select reassoc nsz arcp contract afn i1 %i.ck, float 5.000000e-04, float %i.ch
  br label %bb.r

bb.n:                                             ; preds = %bb.l
  %i.cm = fmul reassoc nsz arcp contract afn float %i.ch, %i.cd ; 2 uses
  %i.cn = fcmp reassoc nsz arcp contract afn olt float %i.cm, 5.000000e-04
  %i.co = select reassoc nsz arcp contract afn i1 %i.cn, float 5.000000e-04, float %i.cm
  br label %bb.r

bb.o:                                             ; preds = %bb.l
  %i.cp = fcmp reassoc nsz arcp contract afn olt float %i.ch, 5.000000e-02
  %i.cq = select reassoc nsz arcp contract afn i1 %i.cp, float 5.000000e-02, float %i.ch
  br label %bb.r

bb.p:                                             ; preds = %bb.l
  %i.cr = fmul reassoc nsz arcp contract afn float %i.ch, %i.cf ; 2 uses
  %i.cs = fcmp reassoc nsz arcp contract afn olt float %i.cr, 5.000000e-02
  %i.ct = select reassoc nsz arcp contract afn i1 %i.cs, float 5.000000e-02, float %i.cr
  br label %bb.r

bb.q:                                             ; preds = %bb.l
  %i.cu = fmul reassoc nsz arcp contract afn float %i.ch, %i.cb ; 2 uses
  %i.cv = fcmp reassoc nsz arcp contract afn olt float %i.cu, 5.000000e-05
  %i.cw = select reassoc nsz arcp contract afn i1 %i.cv, float 5.000000e-05, float %i.cu
  br label %bb.r

bb.r:                                             ; preds = %bb.l, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m
  %.0337 = phi nsz float [ %i.cb, %bb.l ], [ %i.cb, %bb.m ], [ %i.cb, %bb.n ], [ %i.cb, %bb.o ], [ %i.cb, %bb.p ], [ %i.cw, %bb.q ] ; 2 uses
  %.0335 = phi nsz float [ %i.cd, %bb.l ], [ %i.cl, %bb.m ], [ %i.co, %bb.n ], [ %i.cd, %bb.o ], [ %i.cd, %bb.p ], [ %i.cd, %bb.q ]
  %.0333 = phi nsz float [ %i.cf, %bb.l ], [ %i.cf, %bb.m ], [ %i.cf, %bb.n ], [ %i.cq, %bb.o ], [ %i.ct, %bb.p ], [ %i.cf, %bb.q ] ; 3 uses
  %i.cx = fmul reassoc nsz arcp contract afn float %.0337, %i.z
  %i.cy = fmul reassoc nsz arcp contract afn float %i.cx, %.0335 ; 3 uses
  %i.cz = fmul reassoc nsz arcp contract afn float %i.cy, 2.000000e+00
  %i.da = fpext reassoc nsz arcp contract afn float %i.cz to double
  tail call void @cairo_set_line_width(ptr noundef %0, double noundef %i.da) #18
  tail call void @dt_gui_gtk_set_source_rgba(ptr noundef %0, i32 noundef 8, float noundef %.0333) #18
  %i.db = getelementptr inbounds nuw i8, ptr %.val363, i64 4
  %i.dc = load <2 x float>, ptr %.val363, align 4, !tbaa !102
  %i.dd = fpext reassoc nsz arcp contract afn <2 x float> %i.dc to <2 x double> ; 2 uses
  %i.de = extractelement <2 x double> %i.dd, i64 0
  %i.df = extractelement <2 x double> %i.dd, i64 1
  tail call void @cairo_move_to(ptr noundef %0, double noundef %i.de, double noundef %i.df) #18
  %i.dg = load i32, ptr %i.aa, align 8, !tbaa !96
  %i.dh = icmp sgt i32 %i.dg, 1
  br i1 %i.dh, label %.lr.ph, label %._crit_edge.thread

._crit_edge:                                      ; preds = %bb.z
  br i1 %or.cond.not, label %bb.aa, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.r, %bb.z
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.z ], [ 1, %bb.r ] ; 3 uses
  %.0327379 = phi float [ %.1328, %bb.z ], [ %.0333, %bb.r ] ; 2 uses
  %.0330378 = phi float [ %.1331, %bb.z ], [ %i.cy, %bb.r ] ; 2 uses
  %.idx = shl nuw nsw i64 %indvars.iv, 3
  %i.di = getelementptr inbounds nuw i8, ptr %.val363, i64 %.idx ; 2 uses
  %i.dj = load <2 x float>, ptr %i.di, align 4, !tbaa !102
  %i.dk = fpext reassoc nsz arcp contract afn <2 x float> %i.dj to <2 x double> ; 2 uses
  %i.dl = extractelement <2 x double> %i.dk, i64 0
  %i.dm = extractelement <2 x double> %i.dk, i64 1
  tail call void @cairo_line_to(ptr noundef %0, double noundef %i.dl, double noundef %i.dm) #18
  %.idx423 = shl nuw nsw i64 %indvars.iv, 4
  %i.dn = getelementptr inbounds nuw i8, ptr %.val, i64 %.idx423 ; 4 uses
  %i.do = load float, ptr %i.dn, align 4, !tbaa !102 ; 6 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 4
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !102 ; 5 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !102 ; 5 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dn, i64 12
  %i.du = load float, ptr %i.dt, align 4, !tbaa !102 ; 7 uses
  %i.dv = load i32, ptr %i.ci, align 8, !tbaa !180
  switch i32 %i.dv, label %bb.x [
    i32 2, label %bb.s
    i32 1, label %bb.t
    i32 4, label %bb.u
    i32 3, label %bb.v
    i32 5, label %bb.w
  ]

bb.s:                                             ; preds = %.lr.ph
  %i.dw = fcmp reassoc nsz arcp contract afn olt float %i.du, 5.000000e-04
  %i.dx = select reassoc nsz arcp contract afn i1 %i.dw, float 5.000000e-04, float %i.du
  br label %bb.x

bb.t:                                             ; preds = %.lr.ph
  %i.dy = fmul reassoc nsz arcp contract afn float %i.du, %i.dq ; 2 uses
  %i.dz = fcmp reassoc nsz arcp contract afn olt float %i.dy, 5.000000e-04
  %i.ea = select reassoc nsz arcp contract afn i1 %i.dz, float 5.000000e-04, float %i.dy
  br label %bb.x

bb.u:                                             ; preds = %.lr.ph
  %i.eb = fcmp reassoc nsz arcp contract afn olt float %i.du, 5.000000e-02
  %i.ec = select reassoc nsz arcp contract afn i1 %i.eb, float 5.000000e-02, float %i.du
  br label %bb.x

bb.v:                                             ; preds = %.lr.ph
  %i.ed = fmul reassoc nsz arcp contract afn float %i.du, %i.ds ; 2 uses
  %i.ee = fcmp reassoc nsz arcp contract afn olt float %i.ed, 5.000000e-02
  %i.ef = select reassoc nsz arcp contract afn i1 %i.ee, float 5.000000e-02, float %i.ed
  br label %bb.x

bb.w:                                             ; preds = %.lr.ph
  %i.eg = fmul reassoc nsz arcp contract afn float %i.du, %i.do ; 2 uses
  %i.eh = fcmp reassoc nsz arcp contract afn olt float %i.eg, 5.000000e-05
  %i.ei = select reassoc nsz arcp contract afn i1 %i.eh, float 5.000000e-05, float %i.eg
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s
  %.2 = phi nsz float [ %i.do, %.lr.ph ], [ %i.do, %bb.s ], [ %i.do, %bb.t ], [ %i.do, %bb.u ], [ %i.do, %bb.v ], [ %i.ei, %bb.w ] ; 3 uses
  %.1336 = phi nsz float [ %i.dq, %.lr.ph ], [ %i.dx, %bb.s ], [ %i.ea, %bb.t ], [ %i.dq, %bb.u ], [ %i.dq, %bb.v ], [ %i.dq, %bb.w ]
  %.1334 = phi nsz float [ %i.ds, %.lr.ph ], [ %i.ds, %bb.s ], [ %i.ds, %bb.t ], [ %i.ec, %bb.u ], [ %i.ef, %bb.v ], [ %i.ds, %bb.w ] ; 5 uses
  %i.ej = fmul reassoc nsz arcp contract afn float %.2, %i.z
  %i.ek = fmul reassoc nsz arcp contract afn float %i.ej, %.1336 ; 5 uses
  %i.el = fcmp reassoc nsz arcp contract afn oeq float %i.ek, %.0330378
  %i.em = fcmp reassoc nsz arcp contract afn oeq float %.1334, %.0327379
  %or.cond.not = select i1 %i.el, i1 %i.em, i1 false ; 2 uses
  br i1 %or.cond.not, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @cairo_stroke(ptr noundef %0) #18
  %i.en = fmul reassoc nsz arcp contract afn float %i.ek, 2.000000e+00
  %i.eo = fpext reassoc nsz arcp contract afn float %i.en to double
  tail call void @cairo_set_line_width(ptr noundef %0, double noundef %i.eo) #18
  tail call void @dt_gui_gtk_set_source_rgba(ptr noundef %0, i32 noundef 8, float noundef %.1334) #18
  %i.ep = load <2 x float>, ptr %i.di, align 4, !tbaa !102
  %i.eq = fpext reassoc nsz arcp contract afn <2 x float> %i.ep to <2 x double> ; 2 uses
  %i.er = extractelement <2 x double> %i.eq, i64 0
  %i.es = extractelement <2 x double> %i.eq, i64 1
  tail call void @cairo_move_to(ptr noundef %0, double noundef %i.er, double noundef %i.es) #18
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  %.1331 = phi nsz float [ %i.ek, %bb.y ], [ %.0330378, %bb.x ]
  %.1328 = phi nsz float [ %.1334, %bb.y ], [ %.0327379, %bb.x ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.et = load i32, ptr %i.aa, align 8, !tbaa !96
  %i.eu = sext i32 %i.et to i64
  %i.ev = icmp slt i64 %indvars.iv.next, %i.eu
  br i1 %i.ev, label %.lr.ph, label %._crit_edge

bb.aa:                                            ; preds = %._crit_edge
  tail call void @cairo_stroke(ptr noundef %0) #18
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.r, %bb.aa, %._crit_edge
  %.0329.lcssa435 = phi float [ %.1334, %._crit_edge ], [ %.1334, %bb.aa ], [ %.0333, %bb.r ]
  %.0332.lcssa434 = phi float [ %i.ek, %._crit_edge ], [ %i.ek, %bb.aa ], [ %i.cy, %bb.r ]
  %.1338.lcssa433 = phi float [ %.2, %._crit_edge ], [ %.2, %bb.aa ], [ %.0337, %bb.r ]
  %i.ew = fdiv reassoc nsz arcp contract afn double 3.000000e+00, %i.q
  tail call void @cairo_set_line_width(ptr noundef %0, double noundef %i.ew) #18
  tail call void @dt_gui_gtk_set_source_rgba(ptr noundef %0, i32 noundef 7, float noundef %.0329.lcssa435) #18
  %i.ex = load i32, ptr %i.aa, align 8, !tbaa !96
  %i.ey = shl i32 %i.ex, 1                        ; 2 uses
  %i.ez = add i32 %i.ey, -2
  %i.fa = sext i32 %i.ez to i64
  %i.fb = getelementptr inbounds [4 x i8], ptr %.val363, i64 %i.fa
  %i.fc = load float, ptr %i.fb, align 4, !tbaa !102
  %i.fd = fpext reassoc nsz arcp contract afn float %i.fc to double
  %i.fe = add i32 %i.ey, -1
  %i.ff = sext i32 %i.fe to i64
  %i.fg = getelementptr inbounds [4 x i8], ptr %.val363, i64 %i.ff
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !102
  %i.fi = fpext reassoc nsz arcp contract afn float %i.fh to double
  %i.fj = fpext reassoc nsz arcp contract afn float %.0332.lcssa434 to double
  tail call void @cairo_arc(ptr noundef %0, double noundef %i.fd, double noundef %i.fi, double noundef %i.fj, double noundef 0.000000e+00, double noundef f0x401921FB54442D18) #18
  tail call void @cairo_fill_preserve(ptr noundef %0) #18
  tail call void @cairo_set_source_rgba(ptr noundef %0, double noundef 8.000000e-01, double noundef 8.000000e-01, double noundef 8.000000e-01, double noundef 8.000000e-01) #18
  tail call void @cairo_stroke(ptr noundef %0) #18
  call void @cairo_set_dash(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef 2, double noundef 0.000000e+00) #18
  %i.fk = load i32, ptr %i.aa, align 8, !tbaa !96
  %i.fl = shl i32 %i.fk, 1                        ; 2 uses
  %i.fm = add i32 %i.fl, -2
  %i.fn = sext i32 %i.fm to i64
  %i.fo = getelementptr inbounds [4 x i8], ptr %.val363, i64 %i.fn
  %i.fp = load float, ptr %i.fo, align 4, !tbaa !102
  %i.fq = fpext reassoc nsz arcp contract afn float %i.fp to double
  %i.fr = add i32 %i.fl, -1
  %i.fs = sext i32 %i.fr to i64
  %i.ft = getelementptr inbounds [4 x i8], ptr %.val363, i64 %i.fs
  %i.fu = load float, ptr %i.ft, align 4, !tbaa !102
  %i.fv = fpext reassoc nsz arcp contract afn float %i.fu to double
  %i.fw = fmul reassoc nsz arcp contract afn float %.1338.lcssa433, %i.z
  %i.fx = fpext reassoc nsz arcp contract afn float %i.fw to double
  call void @cairo_arc(ptr noundef %0, double noundef %i.fq, double noundef %i.fv, double noundef %i.fx, double noundef 0.000000e+00, double noundef f0x401921FB54442D18) #18
  call void @cairo_stroke(ptr noundef %0) #18
  %i.fy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !64
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 2160
  %i.ga = load ptr, ptr %i.fz, align 16, !tbaa !185 ; 2 uses
  %.not355 = icmp eq ptr %i.ga, null
  br i1 %.not355, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge.thread
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.gc = load i32, ptr %i.gb, align 8, !tbaa !95
  %i.gd = and i32 %i.gc, 8
  %.not356 = icmp eq i32 %i.gd, 0
  br i1 %.not356, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ge = load i32, ptr %i.aa, align 8, !tbaa !96
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  store float 0.000000e+00, ptr %i.d, align 4, !tbaa !102
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  store float 0.000000e+00, ptr %i.e, align 4, !tbaa !102
  %i.gf = load float, ptr %.val363, align 4, !tbaa !102
  %i.gg = load float, ptr %i.db, align 4, !tbaa !102
  %i.gh = shl i32 %i.ge, 1                        ; 2 uses
  %i.gi = add i32 %i.gh, -2
  %i.gj = sext i32 %i.gi to i64
  %i.gk = getelementptr inbounds [4 x i8], ptr %.val363, i64 %i.gj
  %i.gl = load float, ptr %i.gk, align 4, !tbaa !102
  %i.gm = add i32 %i.gh, -1
  %i.gn = sext i32 %i.gm to i64
  %i.go = getelementptr inbounds [4 x i8], ptr %.val363, i64 %i.gn
  %i.gp = load float, ptr %i.go, align 4, !tbaa !102
  call void @dt_masks_calculate_source_pos_value(ptr noundef nonnull %2, i32 noundef 64, float noundef %i.gf, float noundef %i.gg, float noundef %i.gl, float noundef %i.gp, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, i32 noundef 1) #18
  %i.gq = load float, ptr %i.d, align 4, !tbaa !102
  %i.gr = load float, ptr %i.e, align 4, !tbaa !102
  call void @dt_masks_draw_clone_source_pos(ptr noundef %0, float noundef %1, float noundef %i.gq, float noundef %i.gr) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %._crit_edge.thread
  call void @cairo_restore(ptr noundef %0) #18
  br label %.critedge

bb.ae:                                            ; preds = %dt_masks_get_image_size.exit
  %i.gs = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  %i.gt = load i32, ptr %i.gs, align 8, !tbaa !112
  %i.gu = mul nsw i32 %4, 3                       ; 7 uses
  %i.gv = add nsw i32 %i.gu, 2                    ; 4 uses
  %i.gw = icmp sgt i32 %i.gt, %i.gv
  br i1 %i.gw, label %bb.af, label %.loopexit374

bb.af:                                            ; preds = %bb.ae
  %i.gx = load ptr, ptr %i.k, align 8, !tbaa !114
  %i.gy = mul nsw i32 %4, 6
  %i.gz = sext i32 %i.gy to i64
  %i.ha = getelementptr inbounds [4 x i8], ptr %i.gx, i64 %i.gz
  %i.hb = load <2 x float>, ptr %i.ha, align 4, !tbaa !102
  %i.hc = fpext reassoc nsz arcp contract afn <2 x float> %i.hb to <2 x double> ; 2 uses
  %i.hd = extractelement <2 x double> %i.hc, i64 0
  %i.he = extractelement <2 x double> %i.hc, i64 1
  tail call void @cairo_move_to(ptr noundef %0, double noundef %i.hd, double noundef %i.he) #18
  %i.hf = getelementptr inbounds nuw i8, ptr %2, i64 164
  %i.hg = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.hh = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.hi = getelementptr inbounds nuw i8, ptr %2, i64 100
  %i.hj = sext i32 %i.gu to i64
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.an
  %indvars.iv402 = phi i64 [ %i.hj, %bb.af ], [ %indvars.iv.next403, %bb.an ] ; 2 uses
  %.0323384 = phi i32 [ 1, %bb.af ], [ %.1, %bb.an ] ; 5 uses
  %i.hk = load ptr, ptr %i.k, align 8, !tbaa !114
  %i.hl = shl nsw i64 %indvars.iv402, 1           ; 4 uses
  %i.hm = getelementptr inbounds [4 x i8], ptr %i.hk, i64 %i.hl
  %i.hn = load <2 x float>, ptr %i.hm, align 4, !tbaa !102
  %i.ho = fpext reassoc nsz arcp contract afn <2 x float> %i.hn to <2 x double> ; 2 uses
  %i.hp = extractelement <2 x double> %i.ho, i64 0
  %i.hq = extractelement <2 x double> %i.ho, i64 1
  tail call void @cairo_line_to(ptr noundef %0, double noundef %i.hp, double noundef %i.hq) #18
  %i.hr = load ptr, ptr %i.k, align 8, !tbaa !114 ; 3 uses
  %i.hs = getelementptr [4 x i8], ptr %i.hr, i64 %i.hl
  %i.ht = getelementptr i8, ptr %i.hs, i64 4
  %i.hu = load float, ptr %i.ht, align 4, !tbaa !102
  %i.hv = mul nsw i32 %.0323384, 6
  %i.hw = sext i32 %i.hv to i64
  %i.hx = getelementptr [4 x i8], ptr %i.hr, i64 %i.hw ; 2 uses
  %i.hy = getelementptr i8, ptr %i.hx, i64 12
  %i.hz = load float, ptr %i.hy, align 4, !tbaa !102
  %i.ia = fcmp reassoc nsz arcp contract afn oeq float %i.hu, %i.hz
  br i1 %i.ia, label %bb.ah, label %bb.an

bb.ah:                                            ; preds = %bb.ag
  %i.ib = getelementptr inbounds [4 x i8], ptr %i.hr, i64 %i.hl
  %i.ic = load float, ptr %i.ib, align 4, !tbaa !102
  %i.id = getelementptr i8, ptr %i.hx, i64 8
  %i.ie = load float, ptr %i.id, align 4, !tbaa !102
  %i.if = fcmp reassoc nsz arcp contract afn oeq float %i.ic, %i.ie
  br i1 %i.if, label %bb.ai, label %bb.an

bb.ai:                                            ; preds = %bb.ah
  %i.ig = load i32, ptr %i.hf, align 4, !tbaa !175
  %i.ih = icmp eq i32 %i.ig, %3
  br i1 %i.ih, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %bb.ai
  %i.ii = load i32, ptr %i.hg, align 4, !tbaa !19
  %.not352 = icmp eq i32 %i.ii, 0
  br i1 %.not352, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.ij = load i32, ptr %i.hh, align 8, !tbaa !169
  %.not353 = icmp eq i32 %i.ij, 0
  br i1 %.not353, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.ik = load i32, ptr %i.hi, align 4, !tbaa !173
  %i.il = add nsw i32 %.0323384, -1
  %i.im = icmp eq i32 %i.ik, %i.il
  %i.in = zext i1 %i.im to i32
  br label %bb.am

bb.am:                                            ; preds = %bb.aj, %bb.ak, %bb.al, %bb.ai
  %i.io = phi i32 [ 0, %bb.ai ], [ 1, %bb.ak ], [ 1, %bb.aj ], [ %i.in, %bb.al ]
  tail call void @dt_masks_line_stroke(ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.io, float noundef %1) #18
  %i.ip = add nsw i32 %.0323384, 1
  %i.iq = srem i32 %i.ip, %4
  %i.ir = load ptr, ptr %i.k, align 8, !tbaa !114
  %i.is = getelementptr inbounds [4 x i8], ptr %i.ir, i64 %i.hl
  %i.it = load <2 x float>, ptr %i.is, align 4, !tbaa !102
  %i.iu = fpext reassoc nsz arcp contract afn <2 x float> %i.it to <2 x double> ; 2 uses
  %i.iv = extractelement <2 x double> %i.iu, i64 0
  %i.iw = extractelement <2 x double> %i.iu, i64 1
  tail call void @cairo_move_to(ptr noundef %0, double noundef %i.iv, double noundef %i.iw) #18
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.ah, %bb.ag
  %.1 = phi i32 [ %i.iq, %bb.am ], [ %.0323384, %bb.ah ], [ %.0323384, %bb.ag ] ; 2 uses
  %indvars.iv.next403 = add nsw i64 %indvars.iv402, 1
  %.not348 = icmp eq i32 %.1, 0
  br i1 %.not348, label %.loopexit374, label %bb.ag

.loopexit374:                                     ; preds = %bb.an, %bb.ae
  %i.ix = getelementptr inbounds nuw i8, ptr %2, i64 164 ; 5 uses
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !175
  %i.iz = icmp eq i32 %i.iy, %3
  br i1 %i.iz, label %bb.ao, label %.loopexit.thread436

bb.ao:                                            ; preds = %.loopexit374
  %i.ja = load i32, ptr %i.gs, align 8, !tbaa !112
  %i.jb = icmp sgt i32 %i.ja, %i.gv
  %i.jc = icmp sgt i32 %4, 0
  %or.cond396 = and i1 %i.jb, %i.jc
  br i1 %or.cond396, label %.lr.ph387, label %.loopexit.thread

.lr.ph387:                                        ; preds = %bb.ao
  %i.jd = getelementptr inbounds nuw i8, ptr %2, i64 132
  %i.je = getelementptr inbounds nuw i8, ptr %2, i64 84
  %wide.trip.count = zext nneg i32 %4 to i64
  br label %bb.ap

bb.ap:                                            ; preds = %.lr.ph387, %bb.ar
  %indvars.iv405 = phi i64 [ 0, %.lr.ph387 ], [ %indvars.iv.next406, %bb.ar ] ; 4 uses
  %i.jf = load i32, ptr %i.jd, align 4, !tbaa !161
  %i.jg = zext i32 %i.jf to i64
  %i.jh = icmp eq i64 %indvars.iv405, %i.jg
  br i1 %i.jh, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ji = load i32, ptr %i.je, align 4, !tbaa !103
  %i.jj = zext i32 %i.ji to i64
  %i.jk = icmp eq i64 %indvars.iv405, %i.jj
  %i.jl = zext i1 %i.jk to i32
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.jm = phi i32 [ 1, %bb.ap ], [ %i.jl, %bb.aq ]
  %i.jn = load ptr, ptr %i.k, align 8, !tbaa !114
  %.idx426 = mul nuw nsw i64 %indvars.iv405, 24
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 %.idx426 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 8
  %i.jq = load float, ptr %i.jp, align 4, !tbaa !102
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jo, i64 12
  %i.js = load float, ptr %i.jr, align 4, !tbaa !102
  tail call void @dt_masks_draw_anchor(ptr noundef %0, i32 noundef %i.jm, float noundef %1, float noundef %i.jq, float noundef %i.js) #18
  %indvars.iv.next406 = add nuw nsw i64 %indvars.iv405, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next406, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.ap

.loopexit:                                        ; preds = %bb.ar
  %.pre = load i32, ptr %i.ix, align 4, !tbaa !175
  %i.jt = icmp eq i32 %.pre, %3
  br i1 %i.jt, label %.loopexit.thread, label %.loopexit.thread436

.loopexit.thread:                                 ; preds = %bb.ao, %.loopexit
  %i.ju = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.jv = load i32, ptr %i.ju, align 8, !tbaa !176 ; 4 uses
  %i.jw = icmp sgt i32 %i.jv, -1
  br i1 %i.jw, label %bb.as, label %.loopexit.thread436

bb.as:                                            ; preds = %.loopexit.thread
  %i.jx = load ptr, ptr %i.k, align 8, !tbaa !114
  %i.jy = mul nuw nsw i32 %i.jv, 6
  %i.jz = zext nneg i32 %i.jy to i64
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.jx, i64 %i.jz ; 4 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  %i.kc = load float, ptr %i.kb, align 4, !tbaa !102 ; 3 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.ka, i64 12
  %i.ke = load float, ptr %i.kd, align 4, !tbaa !102 ; 3 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ka, i64 16
  %i.kg = load float, ptr %i.kf, align 4, !tbaa !102
  %i.kh = getelementptr inbounds nuw i8, ptr %i.ka, i64 20
  %i.ki = load float, ptr %i.kh, align 4, !tbaa !102
  %i.kj = fsub reassoc nsz arcp contract afn float %i.kc, %i.ke
  %i.kk = fadd reassoc nsz arcp contract afn float %i.ki, %i.kj ; 2 uses
  %i.kl = fadd reassoc nsz arcp contract afn float %i.ke, %i.kc
  %i.km = fsub reassoc nsz arcp contract afn float %i.kl, %i.kg ; 2 uses
  %i.kn = fpext reassoc nsz arcp contract afn float %i.kc to double
  %i.ko = fpext reassoc nsz arcp contract afn float %i.ke to double
  tail call void @cairo_move_to(ptr noundef %0, double noundef %i.kn, double noundef %i.ko) #18
  %i.kp = fpext reassoc nsz arcp contract afn float %i.kk to double
  %i.kq = fpext reassoc nsz arcp contract afn float %i.km to double
  tail call void @cairo_line_to(ptr noundef %0, double noundef %i.kp, double noundef %i.kq) #18
  tail call void @dt_masks_line_stroke(ptr noundef %0, i32 noundef 1, i32 noundef 0, i32 noundef 0, float noundef %1) #18
  %i.kr = load i32, ptr %i.ix, align 4, !tbaa !175
  %i.ks = icmp eq i32 %i.kr, %3
  br i1 %i.ks, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  %i.kt = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.ku = load i32, ptr %i.kt, align 8, !tbaa !166
  %i.kv = icmp eq i32 %i.jv, %i.ku
  br i1 %i.kv, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.kw = getelementptr inbounds nuw i8, ptr %2, i64 92
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !172
  %i.ky = icmp eq i32 %i.jv, %i.kx
  %i.kz = zext i1 %i.ky to i32
  br label %bb.av

bb.av:                                            ; preds = %bb.at, %bb.au, %bb.as
  %i.la = phi i32 [ 0, %bb.as ], [ 1, %bb.at ], [ %i.kz, %bb.au ]
  tail call void @dt_masks_draw_ctrl(ptr noundef %0, float noundef %i.kk, float noundef %i.km, float noundef %1, i32 noundef %i.la) #18
  br label %.loopexit.thread436

.loopexit.thread436:                              ; preds = %.loopexit374, %bb.av, %.loopexit.thread, %.loopexit
  %i.lb = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.lc = load i32, ptr %i.lb, align 8, !tbaa !221
  %.not349 = icmp eq i32 %i.lc, 0
  br i1 %.not349, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %.loopexit.thread436
  %i.ld = load i32, ptr %i.ix, align 4, !tbaa !175
  %i.le = icmp eq i32 %i.ld, %3
  br i1 %i.le, label %bb.ax, label %bb.az

bb.ax:                                            ; preds = %bb.aw, %.loopexit.thread436
  %i.lf = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 3 uses
  %i.lg = load i32, ptr %i.lf, align 8, !tbaa !116
  %i.lh = icmp sgt i32 %i.lg, %i.gv
  br i1 %i.lh, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.li = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !117
  %i.lk = mul nsw i32 %4, 6
  %i.ll = sext i32 %i.lk to i64
  %i.lm = getelementptr inbounds [4 x i8], ptr %i.lj, i64 %i.ll
  %i.ln = load <2 x float>, ptr %i.lm, align 4, !tbaa !102
  %i.lo = fpext reassoc nsz arcp contract afn <2 x float> %i.ln to <2 x double> ; 2 uses
  %i.lp = extractelement <2 x double> %i.lo, i64 0
  %i.lq = extractelement <2 x double> %i.lo, i64 1
  tail call void @cairo_move_to(ptr noundef %0, double noundef %i.lp, double noundef %i.lq) #18
  %.0320388 = add nsw i32 %i.gu, 1                ; 2 uses
  %i.lr = load i32, ptr %i.lf, align 8, !tbaa !116
  %i.ls = icmp slt i32 %.0320388, %i.lr
  br i1 %i.ls, label %.lr.ph391.preheader, label %._crit_edge392

.lr.ph391.preheader:                              ; preds = %bb.ay
  %i.lt = sext i32 %.0320388 to i64
  br label %.lr.ph391

._crit_edge392:                                   ; preds = %.lr.ph391, %bb.ay
  %i.lu = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.lv = load i32, ptr %i.lu, align 8, !tbaa !20
  tail call void @dt_masks_line_stroke(ptr noundef %0, i32 noundef 1, i32 noundef 0, i32 noundef %i.lv, float noundef %1) #18
  br label %bb.az

.lr.ph391:                                        ; preds = %.lr.ph391.preheader, %.lr.ph391
  %indvars.iv408 = phi i64 [ %i.lt, %.lr.ph391.preheader ], [ %indvars.iv.next409, %.lr.ph391 ] ; 2 uses
  %i.lw = load ptr, ptr %i.li, align 8, !tbaa !117
  %.idx427 = shl nsw i64 %indvars.iv408, 3
  %i.lx = getelementptr inbounds i8, ptr %i.lw, i64 %.idx427
  %i.ly = load <2 x float>, ptr %i.lx, align 4, !tbaa !102
  %i.lz = fpext reassoc nsz arcp contract afn <2 x float> %i.ly to <2 x double> ; 2 uses
  %i.ma = extractelement <2 x double> %i.lz, i64 0
  %i.mb = extractelement <2 x double> %i.lz, i64 1
  tail call void @cairo_line_to(ptr noundef %0, double noundef %i.ma, double noundef %i.mb) #18
  %indvars.iv.next409 = add nsw i64 %indvars.iv408, 1 ; 2 uses
  %i.mc = load i32, ptr %i.lf, align 8, !tbaa !116
  %i.md = sext i32 %i.mc to i64
  %i.me = icmp slt i64 %indvars.iv.next409, %i.md
  br i1 %i.me, label %.lr.ph391, label %._crit_edge392

bb.az:                                            ; preds = %._crit_edge392, %bb.ax, %bb.aw
  %i.mf = load i32, ptr %i.t, align 4, !tbaa !18
  %.not350 = icmp eq i32 %i.mf, 0
  br i1 %.not350, label %bb.ba, label %.critedge

bb.ba:                                            ; preds = %bb.az
  %i.mg = getelementptr inbounds nuw i8, ptr %i.k, i64 40 ; 4 uses
  %i.mh = load i32, ptr %i.mg, align 8, !tbaa !113 ; 2 uses
  %i.mi = icmp sgt i32 %i.mh, %i.gv
  br i1 %i.mi, label %.lr.ph.i.i, label %.critedge

.lr.ph.i.i:                                       ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #18
  store float 0.000000e+00, ptr %i.f, align 4, !tbaa !102
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #18
  store float 0.000000e+00, ptr %i.g, align 4, !tbaa !102
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #18
  store float 0.000000e+00, ptr %i.h, align 4, !tbaa !102
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #18
  store float 0.000000e+00, ptr %i.i, align 4, !tbaa !102
  %i.mj = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 5 uses
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !115 ; 5 uses
  %i.ml = sext i32 %i.gu to i64                   ; 5 uses
  %wide.trip.count83.i.i = sext i32 %i.mh to i64  ; 3 uses
  %i.mm = sub nsw i64 %wide.trip.count83.i.i, %i.ml
  %xtraiter = and i64 %i.mm, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.us.i.i.prol.loopexit, label %.lr.ph.split.us.i.i.prol

.lr.ph.split.us.i.i.prol:                         ; preds = %.lr.ph.i.i, %.lr.ph.split.us.i.i.prol
  %indvars.iv80.i.i.prol = phi i64 [ %indvars.iv.next81.i.i.prol, %.lr.ph.split.us.i.i.prol ], [ %i.ml, %.lr.ph.i.i ] ; 2 uses
  %i.mn = phi <2 x float> [ %i.mu, %.lr.ph.split.us.i.i.prol ], [ splat (float f0x00800000), %.lr.ph.i.i ] ; 2 uses
  %i.mo = phi <2 x float> [ %i.mt, %.lr.ph.split.us.i.i.prol ], [ splat (float f0x7F7FFFFF), %.lr.ph.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.split.us.i.i.prol ], [ 0, %.lr.ph.i.i ]
  %.idx.i.i.prol = shl nsw i64 %indvars.iv80.i.i.prol, 3
  %i.mp = getelementptr inbounds i8, ptr %i.mk, i64 %.idx.i.i.prol
  %i.mq = load <2 x float>, ptr %i.mp, align 4, !tbaa !102 ; 4 uses
  %i.mr = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.mq, %i.mn
  %i.ms = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.mq, %i.mo
  %i.mt = select <2 x i1> %i.ms, <2 x float> %i.mq, <2 x float> %i.mo ; 3 uses
  %i.mu = select <2 x i1> %i.mr, <2 x float> %i.mq, <2 x float> %i.mn ; 3 uses
  %indvars.iv.next81.i.i.prol = add nsw i64 %indvars.iv80.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.split.us.i.i.prol.loopexit, label %.lr.ph.split.us.i.i.prol, !llvm.loop !219

.lr.ph.split.us.i.i.prol.loopexit:                ; preds = %.lr.ph.split.us.i.i.prol, %.lr.ph.i.i
  %.lcssa445.unr = phi <2 x float> [ poison, %.lr.ph.i.i ], [ %i.mt, %.lr.ph.split.us.i.i.prol ]
  %.lcssa.unr = phi <2 x float> [ poison, %.lr.ph.i.i ], [ %i.mu, %.lr.ph.split.us.i.i.prol ]
  %indvars.iv80.i.i.unr = phi i64 [ %i.ml, %.lr.ph.i.i ], [ %indvars.iv.next81.i.i.prol, %.lr.ph.split.us.i.i.prol ]
  %.unr = phi <2 x float> [ splat (float f0x00800000), %.lr.ph.i.i ], [ %i.mu, %.lr.ph.split.us.i.i.prol ]
  %.unr447 = phi <2 x float> [ splat (float f0x7F7FFFFF), %.lr.ph.i.i ], [ %i.mt, %.lr.ph.split.us.i.i.prol ]
  %i.mv = sub nsw i64 %i.ml, %wide.trip.count83.i.i
  %i.mw = icmp ugt i64 %i.mv, -4
  br i1 %i.mw, label %_brush_bounding_box.exit, label %.lr.ph.split.us.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.split.us.i.i.prol.loopexit, %.lr.ph.split.us.i.i
  %indvars.iv80.i.i = phi i64 [ %indvars.iv.next81.i.i.3, %.lr.ph.split.us.i.i ], [ %indvars.iv80.i.i.unr, %.lr.ph.split.us.i.i.prol.loopexit ] ; 5 uses
  %i.mx = phi <2 x float> [ %i.nz, %.lr.ph.split.us.i.i ], [ %.unr, %.lr.ph.split.us.i.i.prol.loopexit ] ; 2 uses
  %i.my = phi <2 x float> [ %i.ny, %.lr.ph.split.us.i.i ], [ %.unr447, %.lr.ph.split.us.i.i.prol.loopexit ] ; 2 uses
  %.idx.i.i = shl nsw i64 %indvars.iv80.i.i, 3
  %i.mz = getelementptr inbounds i8, ptr %i.mk, i64 %.idx.i.i
  %i.na = load <2 x float>, ptr %i.mz, align 4, !tbaa !102 ; 4 uses
  %i.nb = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.na, %i.mx
  %i.nc = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.na, %i.my
  %i.nd = select <2 x i1> %i.nc, <2 x float> %i.na, <2 x float> %i.my ; 2 uses
  %i.ne = select <2 x i1> %i.nb, <2 x float> %i.na, <2 x float> %i.mx ; 2 uses
  %indvars.iv.next81.i.i = shl i64 %indvars.iv80.i.i, 3
  %i.nf = getelementptr i8, ptr %i.mk, i64 %indvars.iv.next81.i.i
  %i.ng = getelementptr i8, ptr %i.nf, i64 8
  %i.nh = load <2 x float>, ptr %i.ng, align 4, !tbaa !102 ; 4 uses
  %i.ni = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.nh, %i.ne
  %i.nj = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.nh, %i.nd
  %i.nk = select <2 x i1> %i.nj, <2 x float> %i.nh, <2 x float> %i.nd ; 2 uses
  %i.nl = select <2 x i1> %i.ni, <2 x float> %i.nh, <2 x float> %i.ne ; 2 uses
  %indvars.iv.next81.i.i.1 = shl i64 %indvars.iv80.i.i, 3
  %i.nm = getelementptr i8, ptr %i.mk, i64 %indvars.iv.next81.i.i.1
  %i.nn = getelementptr i8, ptr %i.nm, i64 16
  %i.no = load <2 x float>, ptr %i.nn, align 4, !tbaa !102 ; 4 uses
  %i.np = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.no, %i.nl
  %i.nq = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.no, %i.nk
  %i.nr = select <2 x i1> %i.nq, <2 x float> %i.no, <2 x float> %i.nk ; 2 uses
  %i.ns = select <2 x i1> %i.np, <2 x float> %i.no, <2 x float> %i.nl ; 2 uses
  %indvars.iv.next81.i.i.2 = shl i64 %indvars.iv80.i.i, 3
  %i.nt = getelementptr i8, ptr %i.mk, i64 %indvars.iv.next81.i.i.2
  %i.nu = getelementptr i8, ptr %i.nt, i64 24
  %i.nv = load <2 x float>, ptr %i.nu, align 4, !tbaa !102 ; 4 uses
  %i.nw = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.nv, %i.ns
  %i.nx = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.nv, %i.nr
  %i.ny = select <2 x i1> %i.nx, <2 x float> %i.nv, <2 x float> %i.nr ; 2 uses
  %i.nz = select <2 x i1> %i.nw, <2 x float> %i.nv, <2 x float> %i.ns ; 2 uses
  %indvars.iv.next81.i.i.3 = add nsw i64 %indvars.iv80.i.i, 4 ; 2 uses
  %exitcond84.not.i.i.3 = icmp eq i64 %indvars.iv.next81.i.i.3, %wide.trip.count83.i.i
  br i1 %exitcond84.not.i.i.3, label %_brush_bounding_box.exit, label %.lr.ph.split.us.i.i

_brush_bounding_box.exit:                         ; preds = %.lr.ph.split.us.i.i, %.lr.ph.split.us.i.i.prol.loopexit
  %.lcssa445 = phi <2 x float> [ %.lcssa445.unr, %.lr.ph.split.us.i.i.prol.loopexit ], [ %i.ny, %.lr.ph.split.us.i.i ] ; 2 uses
  %.lcssa = phi <2 x float> [ %.lcssa.unr, %.lr.ph.split.us.i.i.prol.loopexit ], [ %i.nz, %.lr.ph.split.us.i.i ]
  %i.oa = fadd reassoc nsz arcp contract afn <2 x float> %.lcssa, splat (float 4.000000e+00)
  %i.ob = fsub reassoc nsz arcp contract afn <2 x float> %i.oa, %.lcssa445
  %i.oc = fptosi <2 x float> %i.ob to <2 x i32>
  %i.od = fadd reassoc nsz arcp contract afn <2 x float> %.lcssa445, splat (float -2.000000e+00)
  %i.oe = fptosi <2 x float> %i.od to <2 x i32>
  %i.of = sitofp reassoc nsz arcp contract afn <2 x i32> %i.oe to <2 x float>
  %i.og = sitofp reassoc nsz arcp contract afn <2 x i32> %i.oc to <2 x float>
  %i.oh = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.og, splat (float 5.000000e-01)
  %i.oi = fadd reassoc nsz arcp contract afn <2 x float> %i.oh, %i.of ; 2 uses
  %i.oj = load i32, ptr %i.gs, align 8, !tbaa !112
  %i.ok = load ptr, ptr %i.k, align 8, !tbaa !114
  %i.ol = extractelement <2 x float> %i.oi, i64 0
  %i.om = extractelement <2 x float> %i.oi, i64 1
  call void @dt_masks_closest_point(i32 noundef %i.oj, i32 noundef %i.gu, ptr noundef %i.ok, float noundef %i.ol, float noundef %i.om, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g) #18
  %i.on = load i32, ptr %i.mg, align 8, !tbaa !113
  %i.oo = load ptr, ptr %i.mj, align 8, !tbaa !115
  %i.op = load float, ptr %i.f, align 4, !tbaa !102
  %i.oq = load float, ptr %i.g, align 4, !tbaa !102
  call void @dt_masks_closest_point(i32 noundef %i.on, i32 noundef %i.gu, ptr noundef %i.oo, float noundef %i.op, float noundef %i.oq, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i) #18
  %i.or = load float, ptr %i.h, align 4, !tbaa !102
  %i.os = load float, ptr %i.i, align 4, !tbaa !102
  %i.ot = load float, ptr %i.f, align 4, !tbaa !102
  %i.ou = load float, ptr %i.g, align 4, !tbaa !102
  call void @dt_masks_draw_arrow(ptr noundef %0, float noundef %i.or, float noundef %i.os, float noundef %i.ot, float noundef %i.ou, float noundef %1, i32 noundef 0) #18
  call void @dt_masks_stroke_arrow(ptr noundef %0, ptr noundef nonnull %2, i32 noundef %3, float noundef %1) #18
  %i.ov = load ptr, ptr %i.mj, align 8, !tbaa !115
  %i.ow = mul nsw i32 %4, 6
  %i.ox = sext i32 %i.ow to i64                   ; 2 uses
  %i.oy = getelementptr inbounds [4 x i8], ptr %i.ov, i64 %i.ox
  %i.oz = load <2 x float>, ptr %i.oy, align 4, !tbaa !102
  %i.pa = fpext reassoc nsz arcp contract afn <2 x float> %i.oz to <2 x double> ; 2 uses
  %i.pb = extractelement <2 x double> %i.pa, i64 0
  %i.pc = extractelement <2 x double> %i.pa, i64 1
  call void @cairo_move_to(ptr noundef %0, double noundef %i.pb, double noundef %i.pc) #18
  %i.pd = load i32, ptr %i.mg, align 8, !tbaa !113
  %i.pe = icmp slt i32 %i.gu, %i.pd
  br i1 %i.pe, label %.lr.ph394, label %._crit_edge395

._crit_edge395:                                   ; preds = %.lr.ph394, %_brush_bounding_box.exit
  %i.pf = load ptr, ptr %i.mj, align 8, !tbaa !115
  %i.pg = getelementptr inbounds [4 x i8], ptr %i.pf, i64 %i.ox
  %i.ph = load <2 x float>, ptr %i.pg, align 4, !tbaa !102
  %i.pi = fpext reassoc nsz arcp contract afn <2 x float> %i.ph to <2 x double> ; 2 uses
  %i.pj = extractelement <2 x double> %i.pi, i64 0
  %i.pk = extractelement <2 x double> %i.pi, i64 1
  call void @cairo_line_to(ptr noundef %0, double noundef %i.pj, double noundef %i.pk) #18
  %i.pl = load i32, ptr %i.ix, align 4, !tbaa !175
  %i.pm = icmp eq i32 %i.pl, %3
  br i1 %i.pm, label %bb.bb, label %bb.bd

.lr.ph394:                                        ; preds = %_brush_bounding_box.exit, %.lr.ph394
  %indvars.iv411 = phi i64 [ %indvars.iv.next412, %.lr.ph394 ], [ %i.ml, %_brush_bounding_box.exit ] ; 2 uses
  %i.pn = load ptr, ptr %i.mj, align 8, !tbaa !115
  %.idx428 = shl nsw i64 %indvars.iv411, 3
  %i.po = getelementptr inbounds i8, ptr %i.pn, i64 %.idx428
  %i.pp = load <2 x float>, ptr %i.po, align 4, !tbaa !102
  %i.pq = fpext reassoc nsz arcp contract afn <2 x float> %i.pp to <2 x double> ; 2 uses
  %i.pr = extractelement <2 x double> %i.pq, i64 0
  %i.ps = extractelement <2 x double> %i.pq, i64 1
  call void @cairo_line_to(ptr noundef %0, double noundef %i.pr, double noundef %i.ps) #18
  %indvars.iv.next412 = add nsw i64 %indvars.iv411, 1 ; 2 uses
  %i.pt = load i32, ptr %i.mg, align 8, !tbaa !113
  %i.pu = sext i32 %i.pt to i64
  %i.pv = icmp slt i64 %indvars.iv.next412, %i.pu
  br i1 %i.pv, label %.lr.ph394, label %._crit_edge395

bb.bb:                                            ; preds = %._crit_edge395
  %i.pw = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.px = load i32, ptr %i.pw, align 4, !tbaa !19
  %.not351 = icmp eq i32 %i.px, 0
  br i1 %.not351, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.py = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.pz = load i32, ptr %i.py, align 8, !tbaa !169
  %i.qa = icmp ne i32 %i.pz, 0
  %i.qb = zext i1 %i.qa to i32
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bb, %bb.bc, %._crit_edge395
  %i.qc = phi i32 [ 0, %._crit_edge395 ], [ 1, %bb.bb ], [ %i.qb, %bb.bc ]
  call void @dt_masks_line_stroke(ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef %i.qc, float noundef %1) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  br label %.critedge

.critedge:                                        ; preds = %bb.k, %bb.az, %bb.ba, %bb.bd, %bb.ad, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.be

bb.be:                                            ; preds = %.critedge, %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare ptr @dt_mouse_action_create_simple(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #6

declare i32 @g_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #4

declare i64 @g_strlcat(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare float @dt_conf_get_float(ptr noundef) local_unnamed_addr #4

declare void @dt_conf_set_float(ptr noundef, float noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #7

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

declare ptr @g_list_append(ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @g_list_nth_data(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @_brush_get_pts_border(ptr noundef %0, ptr noundef %1, double noundef %2, i32 noundef range(i32 0, 4) %3, ptr noundef %4, ptr nofree noundef captures(none) initializes((0, 8)) %5, ptr nofree noundef captures(none) initializes((0, 4)) %6, ptr nofree noundef captures(address_is_null) %7, ptr nofree noundef captures(none) %8, ptr nofree noundef captures(address_is_null) %9, ptr nofree noundef writeonly captures(none) %10, i32 noundef %11) unnamed_addr #1 {
bb.a:
  %12 = alloca %struct.timeval, align 8           ; 5 uses
  %13 = alloca %struct.timeval, align 8           ; 5 uses
  %14 = alloca %struct.timeval, align 8           ; 5 uses
  %15 = alloca %struct.timeval, align 8           ; 5 uses
  %16 = alloca %struct.timeval, align 8           ; 5 uses
  %i.a = alloca [7 x float], align 16             ; 7 uses
  %i.b = alloca [7 x float], align 16             ; 9 uses
  %i.c = alloca [2 x float], align 8              ; 4 uses
  %i.d = alloca [2 x float], align 8              ; 4 uses
  %i.e = alloca [2 x float], align 8              ; 5 uses
  %i.f = alloca [2 x float], align 4              ; 6 uses
  %i.g = alloca [2 x float], align 8              ; 5 uses
  %i.h = alloca [2 x float], align 8              ; 4 uses
  %i.i = alloca [2 x float], align 8              ; 5 uses
  %i.j = alloca [2 x float], align 8              ; 5 uses
  %i.k = alloca [2 x float], align 8              ; 4 uses
  %i.l = alloca [2 x float], align 8              ; 6 uses
  %i.m = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !130
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %dt_get_debug_wtime.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18
  %i.n = call i32 @gettimeofday(ptr noundef nonnull %16, ptr noundef null) #18 ; 0 uses
  %i.o = load i64, ptr %16, align 8, !tbaa !132
  %i.p = add nsw i64 %i.o, -1290608000
  %i.q = sitofp reassoc nsz arcp contract afn i64 %i.p to double
  %i.r = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !133
  %i.t = sitofp reassoc nsz arcp contract afn i64 %i.s to double
  %i.u = fmul reassoc nnan nsz arcp contract afn double %i.t, f0x3EB0C6F7A0B5ED8D
  %i.v = fadd reassoc nsz arcp contract afn double %i.u, %i.q
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  br label %dt_get_debug_wtime.exit

dt_get_debug_wtime.exit:                          ; preds = %bb.a, %bb.b
  %i.w = phi reassoc nsz arcp contract afn double [ %i.v, %bb.b ], [ 0.000000e+00, %bb.a ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 144
  %i.y = load <2 x i32>, ptr %i.x, align 16, !tbaa !106
  %i.z = sitofp reassoc nsz arcp contract afn <2 x i32> %i.y to <2 x float> ; 9 uses
  %i.aa = shufflevector <2 x float> %i.z, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ab = extractelement <2 x float> %i.z, i64 1  ; 6 uses
  %i.ac = extractelement <2 x float> %i.z, i64 0  ; 6 uses
  store ptr null, ptr %5, align 8, !tbaa !134
  store i32 0, ptr %6, align 4, !tbaa !106
  %.not = icmp eq ptr %7, null                    ; 4 uses
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %dt_get_debug_wtime.exit
  store ptr null, ptr %7, align 8, !tbaa !134
  store i32 0, ptr %8, align 4, !tbaa !106
  br label %.critedge

.critedge:                                        ; preds = %dt_get_debug_wtime.exit, %bb.c
  %.not490 = icmp eq ptr %9, null                 ; 3 uses
  br i1 %.not490, label %.critedge520, label %bb.d

bb.d:                                             ; preds = %.critedge
  store ptr null, ptr %9, align 8, !tbaa !134
  store i32 0, ptr %10, align 4, !tbaa !106
  br label %.critedge520

.critedge520:                                     ; preds = %.critedge, %bb.d
  %i.ad = tail call fastcc ptr @dt_masks_dynbuf_init(i64 noundef 1000000, ptr noundef nonnull @.str.10) ; 33 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %dt_masks_dynbuf_free.exit598, label %bb.e

bb.e:                                             ; preds = %.critedge520
  br i1 %.not, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = tail call fastcc ptr @dt_masks_dynbuf_init(i64 noundef 1000000, ptr noundef nonnull @.str.11) ; 2 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ah = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !130
  %i.ai = and i32 %i.ah, 4096
  %.not.i594 = icmp eq i32 %i.ai, 0
  br i1 %.not.i594, label %dt_masks_dynbuf_free.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ak = load ptr, ptr %i.ad, align 8, !tbaa !100
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.20, ptr noundef nonnull %i.aj, ptr noundef %i.ak) #18
  br label %dt_masks_dynbuf_free.exit

dt_masks_dynbuf_free.exit:                        ; preds = %bb.g, %bb.h
  %i.al = load ptr, ptr %i.ad, align 8, !tbaa !100
  tail call void @free(ptr noundef %i.al) #18
  tail call void @free(ptr noundef nonnull %i.ad) #18
  br label %dt_masks_dynbuf_free.exit598

bb.i:                                             ; preds = %bb.f, %bb.e
  %.0452 = phi ptr [ %i.af, %bb.f ], [ null, %bb.e ] ; 31 uses
  br i1 %.not490, label %bb.p, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = tail call fastcc ptr @dt_masks_dynbuf_init(i64 noundef 1000000, ptr noundef nonnull @.str.12) ; 2 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.ao = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !130
  %i.ap = and i32 %i.ao, 4096
  %.not.i595 = icmp eq i32 %i.ap, 0
  br i1 %.not.i595, label %dt_masks_dynbuf_free.exit596, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ar = load ptr, ptr %i.ad, align 8, !tbaa !100
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.20, ptr noundef nonnull %i.aq, ptr noundef %i.ar) #18
  br label %dt_masks_dynbuf_free.exit596

dt_masks_dynbuf_free.exit596:                     ; preds = %bb.k, %bb.l
  %i.as = load ptr, ptr %i.ad, align 8, !tbaa !100
  tail call void @free(ptr noundef %i.as) #18
  tail call void @free(ptr noundef nonnull %i.ad) #18
  %i.at = icmp eq ptr %.0452, null
  br i1 %i.at, label %dt_masks_dynbuf_free.exit598, label %bb.m

bb.m:                                             ; preds = %dt_masks_dynbuf_free.exit596
  %i.au = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !130
  %i.av = and i32 %i.au, 4096
  %.not.i597 = icmp eq i32 %i.av, 0
  br i1 %.not.i597, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aw = getelementptr inbounds nuw i8, ptr %.0452, i64 8
  %i.ax = load ptr, ptr %.0452, align 8, !tbaa !100
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.20, ptr noundef nonnull %i.aw, ptr noundef %i.ax) #18
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ay = load ptr, ptr %.0452, align 8, !tbaa !100
  tail call void @free(ptr noundef %i.ay) #18
  tail call void @free(ptr noundef nonnull %.0452) #18
  br label %dt_masks_dynbuf_free.exit598

bb.p:                                             ; preds = %bb.j, %bb.i
  %.0453 = phi ptr [ %i.am, %bb.j ], [ null, %bb.i ] ; 38 uses
  %i.az = icmp ne i32 %11, 0                      ; 2 uses
  %.0458728.pre = load ptr, ptr %1, align 8, !tbaa !92 ; 4 uses
  br i1 %i.az, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ba = icmp ne ptr %.0458728.pre, null
  %i.bb = icmp ne i32 %3, 0
  %or.cond = and i1 %i.bb, %i.ba
  br i1 %or.cond, label %.thread852, label %bb.r

.thread852:                                       ; preds = %bb.q
  %i.bc = load ptr, ptr %.0458728.pre, align 8, !tbaa !105
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.be = load <2 x float>, ptr %i.bc, align 4, !tbaa !102
  %i.bf = load <2 x float>, ptr %i.bd, align 8, !tbaa !102
  %i.bg = fsub reassoc nsz arcp contract afn <2 x float> %i.be, %i.bf
  %i.bh = fmul reassoc nsz arcp contract afn <2 x float> %i.bg, %i.z
  br label %.lr.ph

bb.r:                                             ; preds = %bb.q, %bb.p
  %.not491729 = icmp eq ptr %.0458728.pre, null
  br i1 %.not491729, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.thread852, %bb.r
  %i.bi = phi <2 x float> [ %i.bh, %.thread852 ], [ zeroinitializer, %bb.r ] ; 3 uses
  %i.bj = extractelement <2 x float> %i.bi, i64 1 ; 4 uses
  %i.bk = extractelement <2 x float> %i.bi, i64 0 ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ad, i64 136 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ad, i64 144
  br label %bb.s

._crit_edge.loopexit:                             ; preds = %dt_masks_dynbuf_reserve_n.exit.thread
  %.pre = load ptr, ptr %1, align 8, !tbaa !109
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.r
  %.0456859 = phi float [ %i.bk, %._crit_edge.loopexit ], [ 0.000000e+00, %bb.r ]
  %.0457857 = phi float [ %i.bj, %._crit_edge.loopexit ], [ 0.000000e+00, %bb.r ]
  %i.bn = phi ptr [ %.pre, %._crit_edge.loopexit ], [ null, %bb.r ]
  %i.bo = phi <2 x float> [ %i.bi, %._crit_edge.loopexit ], [ zeroinitializer, %bb.r ] ; 5 uses
  %i.bp = shufflevector <2 x float> %i.bo, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bq = tail call i32 @g_list_length(ptr noundef %i.bn) #18 ; 6 uses
  %.not715 = icmp eq ptr %.0452, null             ; 6 uses
  br i1 %.not715, label %dt_masks_dynbuf_add_zeros.exit, label %bb.w

bb.s:                                             ; preds = %.lr.ph, %dt_masks_dynbuf_reserve_n.exit.thread
  %.0458730 = phi ptr [ %.0458728.pre, %.lr.ph ], [ %.0458, %dt_masks_dynbuf_reserve_n.exit.thread ] ; 2 uses
  %i.br = load ptr, ptr %.0458730, align 8, !tbaa !105 ; 6 uses
  %i.bs = load i64, ptr %i.bl, align 8, !tbaa !101 ; 2 uses
  %i.bt = add i64 %i.bs, 6                        ; 3 uses
  %i.bu = load i64, ptr %i.bm, align 8, !tbaa !159 ; 3 uses
  %.not.i599 = icmp ult i64 %i.bt, %i.bu
  br i1 %.not.i599, label %dt_masks_dynbuf_reserve_n.exit, label %bb.t, !prof !160

bb.t:                                             ; preds = %bb.s
  %i.bv = icmp eq i64 %i.bu, 0
  br i1 %i.bv, label %dt_masks_dynbuf_reserve_n.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.t, %.preheader.i
  %.018.i = phi i64 [ %i.bw, %.preheader.i ], [ %i.bu, %bb.t ] ; 3 uses
  %.not19.i = icmp ult i64 %i.bt, %.018.i
  %i.bw = shl i64 %.018.i, 1
  br i1 %.not19.i, label %bb.u, label %.preheader.i

bb.u:                                             ; preds = %.preheader.i
  %i.bx = tail call fastcc i32 @_dt_masks_dynbuf_growto(ptr noundef nonnull %i.ad, i64 noundef %.018.i)
  %.not20.not.i = icmp eq i32 %i.bx, 0
  br i1 %.not20.not.i, label %dt_masks_dynbuf_reserve_n.exit.thread, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.u
  %.pre.i = load i64, ptr %i.bl, align 8, !tbaa !101 ; 2 uses
  %.pre21.i = add i64 %.pre.i, 6
  br label %dt_masks_dynbuf_reserve_n.exit

dt_masks_dynbuf_reserve_n.exit:                   ; preds = %bb.s, %._crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre21.i, %._crit_edge.i ], [ %i.bt, %bb.s ]
  %i.by = phi i64 [ %.pre.i, %._crit_edge.i ], [ %i.bs, %bb.s ]
  %i.bz = load ptr, ptr %i.ad, align 8, !tbaa !100 ; 2 uses
  store i64 %.pre-phi.i, ptr %i.bl, align 8, !tbaa !101
  %.not518 = icmp eq ptr %i.bz, null
  br i1 %.not518, label %dt_masks_dynbuf_reserve_n.exit.thread, label %bb.v

bb.v:                                             ; preds = %dt_masks_dynbuf_reserve_n.exit
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.by ; 6 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !102
  %i.cd = fmul reassoc nsz arcp contract afn float %i.cc, %i.ac
  %i.ce = fsub reassoc nsz arcp contract afn float %i.cd, %i.bk
  store float %i.ce, ptr %i.ca, align 4, !tbaa !102
  %i.cf = getelementptr inbounds nuw i8, ptr %i.br, i64 12
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !102
  %i.ch = fmul reassoc nsz arcp contract afn float %i.cg, %i.ab
  %i.ci = fsub reassoc nsz arcp contract afn float %i.ch, %i.bj
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  store float %i.ci, ptr %i.cj, align 4, !tbaa !102
  %i.ck = load float, ptr %i.br, align 4, !tbaa !102
  %i.cl = fmul reassoc nsz arcp contract afn float %i.ck, %i.ac
  %i.cm = fsub reassoc nsz arcp contract afn float %i.cl, %i.bk
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
end_hunk_3
