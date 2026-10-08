Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rtextures?download=true
inline.NumInlined: 812
inline.NumDeleted: 134
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 86
loop-unroll.NumUnrolled: 118
begin_hunk_0_@ImageRotate:bb.a
  %i.n = icmp sgt i32 %i.m, 13
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.51) #52
  br label %bb.u

bb.h:                                             ; preds = %bb.f
  %i.o = sitofp i32 %1 to float
  %i.p = fmul nnan float %i.o, f0x40490FDB
  %i.q = fdiv float %i.p, 1.800000e+02            ; 2 uses
  %i.r = tail call float @sinf(float noundef %i.q) #52 ; 3 uses
  %i.s = tail call float @cosf(float noundef %i.q) #52 ; 3 uses
  %i.t = load i32, ptr %i.c, align 8
  %i.u = sitofp i32 %i.t to float                 ; 2 uses
  %i.v = fmul float %i.s, %i.u
  %i.w = tail call float @llvm.fabs.f32(float %i.v)
  %i.x = load i32, ptr %i.f, align 4
  %i.y = sitofp i32 %i.x to float                 ; 2 uses
  %i.z = fmul float %i.r, %i.y
  %i.aa = tail call float @llvm.fabs.f32(float %i.z)
  %i.ab = fadd float %i.w, %i.aa
  %i.ac = fptosi float %i.ab to i32               ; 6 uses
  %i.ad = fmul float %i.s, %i.y
  %i.ae = tail call float @llvm.fabs.f32(float %i.ad)
  %i.af = fmul float %i.r, %i.u
  %i.ag = tail call float @llvm.fabs.f32(float %i.af)
  %i.ah = fadd float %i.ag, %i.ae
  %i.ai = fptosi float %i.ah to i32               ; 5 uses
  %i.aj = load i32, ptr %i.l, align 4             ; 3 uses
  switch i32 %i.aj, label %bb.q [
    i32 1, label %bb.i
    i32 2, label %bb.j
    i32 3, label %bb.j
    i32 5, label %bb.j
    i32 6, label %bb.j
    i32 7, label %bb.k
    i32 4, label %.thread
    i32 8, label %bb.k
    i32 9, label %bb.l
    i32 10, label %bb.m
    i32 11, label %bb.j
    i32 12, label %bb.n
    i32 13, label %bb.o
    i32 24, label %bb.p
    i32 23, label %bb.i
    i32 20, label %bb.i
    i32 17, label %bb.i
    i32 16, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h, %bb.h, %bb.h, %bb.h, %bb.h
  br label %bb.q

bb.j:                                             ; preds = %bb.h, %bb.h, %bb.h, %bb.h, %bb.h
  br label %bb.q

bb.k:                                             ; preds = %bb.h, %bb.h
  br label %bb.q

bb.l:                                             ; preds = %bb.h
  br label %.thread

bb.m:                                             ; preds = %bb.h
  br label %.thread

bb.n:                                             ; preds = %bb.h
  br label %.thread

bb.o:                                             ; preds = %bb.h
  br label %.thread

bb.p:                                             ; preds = %bb.h
  br label %.thread

bb.q:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %.0.i = phi i32 [ 0, %bb.h ], [ 1, %bb.i ], [ 2, %bb.j ], [ 4, %bb.k ]
  %i.ak = and i32 %i.aj, -2
  %or.cond3.i = icmp eq i32 %i.ak, 14
  br i1 %or.cond3.i, label %GetPixelDataSize.exit, label %.thread

.thread:                                          ; preds = %bb.h, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q
  %i.al = phi i32 [ %.0.i, %bb.q ], [ 8, %bb.o ], [ 6, %bb.n ], [ 16, %bb.m ], [ 12, %bb.l ], [ 0, %bb.p ], [ 3, %bb.h ]
  %i.am = and i32 %i.aj, -8
  %or.cond5.i = icmp eq i32 %i.am, 16
  %spec.select.i = select i1 %or.cond5.i, i32 16, i32 %i.al
  br label %GetPixelDataSize.exit

GetPixelDataSize.exit:                            ; preds = %bb.q, %.thread
  %.016.i = phi i32 [ %spec.select.i, %.thread ], [ 8, %bb.q ] ; 9 uses
  %i.an = mul nuw nsw i32 %i.ac, %i.ai
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = zext nneg i32 %.016.i to i64            ; 2 uses
  %i.aq = tail call noalias ptr @calloc(i64 noundef %i.ao, i64 noundef %i.ap) #56 ; 3 uses
  %i.ar = ptrtoaddr ptr %i.aq to i64
  %.not = icmp eq i32 %i.ai, 0
  br i1 %.not, label %._crit_edge132.split, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %GetPixelDataSize.exit
  %.not133 = icmp eq i32 %i.ac, 0
  %i.as = uitofp nneg i32 %i.ac to float
  %i.at = fmul nnan float %i.as, 5.000000e-01
  %i.au = uitofp nneg i32 %i.ai to float
  %i.av = fmul nnan float %i.au, 5.000000e-01
  %.not156 = icmp eq i32 %.016.i, 0
  br i1 %.not133, label %._crit_edge132.split, label %.preheader.lr.ph.split

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.aw = load <2 x i32>, ptr %i.c, align 8       ; 3 uses
  %i.ax = sitofp <2 x i32> %i.aw to <2 x float>   ; 3 uses
  %i.ay = fmul nnan <2 x float> %i.ax, splat (float 5.000000e-01)
  %i.az = add nsw <2 x i32> %i.aw, splat (i32 -1) ; 2 uses
  %i.ba = zext nneg i32 %i.ac to i64
  %wide.trip.count143 = zext nneg i32 %i.ai to i64
  %wide.trip.count138 = zext nneg i32 %i.ac to i64 ; 2 uses
  %wide.trip.count = zext i32 %.016.i to i64      ; 8 uses
  %i.bb = mul nuw nsw i64 %wide.trip.count, %wide.trip.count138
  %i.bc = insertelement <2 x float> poison, float %i.r, i64 0
  %i.bd = insertelement <2 x float> %i.bc, float %i.s, i64 1 ; 2 uses
  %i.be = extractelement <2 x float> %i.ax, i64 0
  %i.bf = extractelement <2 x float> %i.ax, i64 1
  %i.bg = extractelement <2 x i32> %i.aw, i64 0   ; 2 uses
  %i.bh = extractelement <2 x i32> %i.az, i64 0
  %i.bi = extractelement <2 x i32> %i.az, i64 1
  %i.bj = shufflevector <2 x float> %i.bd, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %min.iters.check = icmp ult i32 %.016.i, 4
  %min.iters.check162 = icmp ult i32 %.016.i, 16
  %i.bk = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 4294967280   ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.bk, 0
  %n.vec172 = and i64 %wide.trip.count, 4294967292 ; 3 uses
  %cmp.n187 = icmp eq i64 %n.vec172, %wide.trip.count
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge
  %indvars.iv140 = phi i64 [ 0, %.preheader.lr.ph.split ], [ %indvars.iv.next141, %._crit_edge ] ; 4 uses
  %i.bl = mul i64 %i.bb, %indvars.iv140
  %i.bm = add i64 %i.bl, %i.ar
  %i.bn = trunc nuw nsw i64 %indvars.iv140 to i32
  %i.bo = uitofp nneg i32 %i.bn to float
  %i.bp = fsub nnan float %i.bo, %i.av
  %i.bq = insertelement <2 x float> poison, float %i.bp, i64 0
  %i.br = shufflevector <2 x float> %i.bq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bs = fmul <2 x float> %i.bd, %i.br           ; 2 uses
  %i.bt = mul nuw nsw i64 %indvars.iv140, %i.ba
  br label %bb.r

._crit_edge132.split:                             ; preds = %._crit_edge, %.preheader.lr.ph, %GetPixelDataSize.exit
  %i.bu = load ptr, ptr %0, align 8
  tail call void @free(ptr noundef %i.bu) #52
  store ptr %i.aq, ptr %0, align 8
  store i32 %i.ac, ptr %i.c, align 8
  store i32 %i.ai, ptr %i.f, align 4
  br label %bb.u

._crit_edge:                                      ; preds = %.loopexit
  %indvars.iv.next141 = add nuw nsw i64 %indvars.iv140, 1 ; 2 uses
  %exitcond144.not = icmp eq i64 %indvars.iv.next141, %wide.trip.count143
  br i1 %exitcond144.not, label %._crit_edge132.split, label %.preheader

bb.r:                                             ; preds = %.preheader, %.loopexit
  %indvars.iv135 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next136, %.loopexit ] ; 4 uses
  %i.bv = mul i64 %indvars.iv135, %wide.trip.count
  %i.bw = add i64 %i.bm, %i.bv                    ; 4 uses
  %i.bx = trunc nuw nsw i64 %indvars.iv135 to i32
  %i.by = uitofp nneg i32 %i.bx to float
  %i.bz = fsub nnan float %i.by, %i.at
  %i.ca = insertelement <2 x float> poison, float %i.bz, i64 0
  %i.cb = shufflevector <2 x float> %i.ca, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cc = fmul <2 x float> %i.bj, %i.cb           ; 2 uses
  %i.cd = fadd <2 x float> %i.bs, %i.cc
  %i.ce = fsub <2 x float> %i.bs, %i.cc
  %i.cf = shufflevector <2 x float> %i.cd, <2 x float> %i.ce, <2 x i32> <i32 0, i32 3>
  %i.cg = fadd <2 x float> %i.cf, %i.ay           ; 5 uses
  %i.ch = extractelement <2 x float> %i.cg, i64 0 ; 2 uses
  %i.ci = fcmp ult float %i.ch, 0.000000e+00
  br i1 %i.ci, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cj = fcmp olt float %i.ch, %i.be
  %i.ck = extractelement <2 x float> %i.cg, i64 1 ; 2 uses
  %i.cl = fcmp oge float %i.ck, 0.000000e+00
  %or.cond = select i1 %i.cj, i1 %i.cl, i1 false
  %i.cm = fcmp olt float %i.ck, %i.bf
  %or.cond124 = select i1 %or.cond, i1 %i.cm, i1 false
  br i1 %or.cond124, label %bb.t, label %.loopexit

bb.t:                                             ; preds = %bb.s
  %i.cn = tail call <2 x float> @llvm.floor.v2f32(<2 x float> %i.cg)
  %i.co = fptosi <2 x float> %i.cn to <2 x i32>   ; 3 uses
  %i.cp = sitofp <2 x i32> %i.co to <2 x float>   ; 2 uses
  %foldExtExtBinop = fsub <2 x float> %i.cg, %i.cp ; 3 uses
  %i.cq = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %foldExtExtBinop189 = fsub <2 x float> %i.cg, %i.cp ; 3 uses
  %i.cr = extractelement <2 x float> %foldExtExtBinop189, i64 1 ; 2 uses
  br i1 %.not156, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %bb.t
  %i.cs = extractelement <2 x i32> %i.co, i64 1   ; 2 uses
  %i.ct = add nsw i32 %i.cs, 1
  %i.cu = tail call i32 @llvm.smin.i32(i32 %i.ct, i32 %i.bi)
  %i.cv = extractelement <2 x i32> %i.co, i64 0   ; 3 uses
  %i.cw = add nsw i32 %i.cv, 1
  %. = tail call i32 @llvm.smin.i32(i32 %i.cw, i32 %i.bh) ; 2 uses
  %i.cx = load ptr, ptr %0, align 8               ; 5 uses
  %i.cy = mul nsw i32 %i.bg, %i.cs                ; 2 uses
  %i.cz = add nsw i32 %i.cy, %i.cv
  %i.da = mul nsw i32 %i.cz, %.016.i
  %i.db = add nsw i32 %i.cy, %.
  %i.dc = mul nsw i32 %i.db, %.016.i
  %i.dd = mul nsw i32 %i.cu, %i.bg                ; 2 uses
  %i.de = add nsw i32 %i.dd, %i.cv
  %i.df = mul nsw i32 %i.de, %.016.i
  %i.dg = add nsw i32 %i.dd, %.
  %i.dh = mul nsw i32 %i.dg, %.016.i
  %i.di = fsub float 1.000000e+00, %i.cq          ; 3 uses
  %i.dj = fsub float 1.000000e+00, %i.cr          ; 3 uses
  %i.dk = add nuw nsw i64 %indvars.iv135, %i.bt
  %i.dl = mul nuw nsw i64 %i.dk, %i.ap
  %i.dm = sext i32 %i.da to i64                   ; 2 uses
  %i.dn = sext i32 %i.dc to i64                   ; 2 uses
  %i.do = sext i32 %i.df to i64                   ; 2 uses
  %i.dp = sext i32 %i.dh to i64                   ; 2 uses
  %invariant.gep = getelementptr i8, ptr %i.cx, i64 %i.dm ; 3 uses
  %invariant.gep148 = getelementptr i8, ptr %i.cx, i64 %i.dn ; 3 uses
  %invariant.gep150 = getelementptr i8, ptr %i.cx, i64 %i.do ; 3 uses
  %invariant.gep152 = getelementptr i8, ptr %i.cx, i64 %i.dp ; 3 uses
  %invariant.gep154 = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.dl ; 3 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.dq = ptrtoaddr ptr %i.cx to i64              ; 4 uses
  %i.dr = add i64 %i.dq, %i.dp
  %i.ds = sub i64 %i.dr, %i.bw
  %diff.check = icmp ugt i64 %i.ds, -16
  %i.dt = add i64 %i.dq, %i.do
  %i.du = sub i64 %i.dt, %i.bw
  %diff.check157 = icmp ugt i64 %i.du, -16
  %conflict.rdx = or i1 %diff.check, %diff.check157
  %i.dv = add i64 %i.dq, %i.dn
  %i.dw = sub i64 %i.dv, %i.bw
  %diff.check158 = icmp ugt i64 %i.dw, -16
  %conflict.rdx159 = or i1 %conflict.rdx, %diff.check158
  %i.dx = add i64 %i.dq, %i.dm
  %i.dy = sub i64 %i.dx, %i.bw
  %diff.check160 = icmp ugt i64 %i.dy, -16
  %conflict.rdx161 = or i1 %conflict.rdx159, %diff.check160
  br i1 %conflict.rdx161, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check162, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %broadcast.splatinsert = insertelement <16 x float> poison, float %i.di, i64 0
  %broadcast.splat = shufflevector <16 x float> %broadcast.splatinsert, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert163 = insertelement <16 x float> poison, float %i.dj, i64 0
  %broadcast.splat164 = shufflevector <16 x float> %broadcast.splatinsert163, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %broadcast.splat166 = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %broadcast.splat168 = shufflevector <2 x float> %foldExtExtBinop189, <2 x float> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.dz = getelementptr i8, ptr %invariant.gep, i64 %index
  %wide.load = load <16 x i8>, ptr %i.dz, align 1
  %i.ea = uitofp <16 x i8> %wide.load to <16 x float>
  %i.eb = getelementptr i8, ptr %invariant.gep148, i64 %index
  %wide.load169 = load <16 x i8>, ptr %i.eb, align 1
  %i.ec = uitofp <16 x i8> %wide.load169 to <16 x float>
  %i.ed = getelementptr i8, ptr %invariant.gep150, i64 %index
  %wide.load170 = load <16 x i8>, ptr %i.ed, align 1
  %i.ee = uitofp <16 x i8> %wide.load170 to <16 x float>
  %i.ef = getelementptr i8, ptr %invariant.gep152, i64 %index
  %wide.load171 = load <16 x i8>, ptr %i.ef, align 1
  %i.eg = uitofp <16 x i8> %wide.load171 to <16 x float>
  %i.eh = fmul <16 x float> %broadcast.splat, %i.ea
  %i.ei = fmul <16 x float> %broadcast.splat164, %i.eh
  %i.ej = fmul <16 x float> %broadcast.splat166, %i.ec
  %i.ek = fmul <16 x float> %broadcast.splat164, %i.ej
  %i.el = fadd <16 x float> %i.ei, %i.ek
  %i.em = fmul <16 x float> %broadcast.splat, %i.ee
  %i.en = fmul <16 x float> %broadcast.splat168, %i.em
  %i.eo = fadd <16 x float> %i.el, %i.en
  %i.ep = fmul <16 x float> %broadcast.splat166, %i.eg
  %i.eq = fmul <16 x float> %broadcast.splat168, %i.ep
  %i.er = fadd <16 x float> %i.eo, %i.eq
  %i.es = fptoui <16 x float> %i.er to <16 x i8>
  %i.et = getelementptr inbounds nuw i8, ptr %invariant.gep154, i64 %index
  store <16 x i8> %i.es, ptr %i.et, align 1
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.eu = icmp eq i64 %index.next, %n.vec
  br i1 %i.eu, label %middle.block, label %vector.body, !llvm.loop !124

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !13

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %broadcast.splatinsert173 = insertelement <4 x float> poison, float %i.di, i64 0
  %broadcast.splat174 = shufflevector <4 x float> %broadcast.splatinsert173, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert175 = insertelement <4 x float> poison, float %i.dj, i64 0
  %broadcast.splat176 = shufflevector <4 x float> %broadcast.splatinsert175, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splat178 = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splat180 = shufflevector <2 x float> %foldExtExtBinop189, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index181 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next186, %vec.epilog.vector.body ] ; 6 uses
  %i.ev = getelementptr i8, ptr %invariant.gep, i64 %index181
  %wide.load182 = load <4 x i8>, ptr %i.ev, align 1
  %i.ew = uitofp <4 x i8> %wide.load182 to <4 x float>
  %i.ex = getelementptr i8, ptr %invariant.gep148, i64 %index181
  %wide.load183 = load <4 x i8>, ptr %i.ex, align 1
  %i.ey = uitofp <4 x i8> %wide.load183 to <4 x float>
  %i.ez = getelementptr i8, ptr %invariant.gep150, i64 %index181
  %wide.load184 = load <4 x i8>, ptr %i.ez, align 1
  %i.fa = uitofp <4 x i8> %wide.load184 to <4 x float>
  %i.fb = getelementptr i8, ptr %invariant.gep152, i64 %index181
  %wide.load185 = load <4 x i8>, ptr %i.fb, align 1
  %i.fc = uitofp <4 x i8> %wide.load185 to <4 x float>
  %i.fd = fmul <4 x float> %broadcast.splat174, %i.ew
  %i.fe = fmul <4 x float> %broadcast.splat176, %i.fd
  %i.ff = fmul <4 x float> %broadcast.splat178, %i.ey
  %i.fg = fmul <4 x float> %broadcast.splat176, %i.ff
  %i.fh = fadd <4 x float> %i.fe, %i.fg
  %i.fi = fmul <4 x float> %broadcast.splat174, %i.fa
  %i.fj = fmul <4 x float> %broadcast.splat180, %i.fi
  %i.fk = fadd <4 x float> %i.fh, %i.fj
  %i.fl = fmul <4 x float> %broadcast.splat178, %i.fc
  %i.fm = fmul <4 x float> %broadcast.splat180, %i.fl
  %i.fn = fadd <4 x float> %i.fk, %i.fm
  %i.fo = fptoui <4 x float> %i.fn to <4 x i8>
  %i.fp = getelementptr inbounds nuw i8, ptr %invariant.gep154, i64 %index181
  store <4 x i8> %i.fo, ptr %i.fp, align 1
  %index.next186 = add nuw i64 %index181, 4       ; 2 uses
  %i.fq = icmp eq i64 %index.next186, %n.vec172
  br i1 %i.fq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !125

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n187, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec172, %vec.epilog.middle.block ]
  %i.fr = insertelement <4 x float> poison, float %i.di, i64 0
  %i.fs = insertelement <4 x float> %i.fr, float %i.cq, i64 1
  %i.ft = shufflevector <4 x float> %i.fs, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.fu = insertelement <4 x float> poison, float %i.dj, i64 0
  %i.fv = insertelement <4 x float> %i.fu, float %i.cr, i64 1
  %i.fw = shufflevector <4 x float> %i.fv, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 6 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv
  %i.fx = load i8, ptr %gep, align 1
  %gep149 = getelementptr i8, ptr %invariant.gep148, i64 %indvars.iv
  %i.fy = load i8, ptr %gep149, align 1
  %gep151 = getelementptr i8, ptr %invariant.gep150, i64 %indvars.iv
  %i.fz = load i8, ptr %gep151, align 1
  %gep153 = getelementptr i8, ptr %invariant.gep152, i64 %indvars.iv
  %i.ga = load i8, ptr %gep153, align 1
  %i.gb = insertelement <4 x i8> poison, i8 %i.fx, i64 0
  %i.gc = insertelement <4 x i8> %i.gb, i8 %i.fz, i64 1
  %i.gd = insertelement <4 x i8> %i.gc, i8 %i.fy, i64 2
  %i.ge = insertelement <4 x i8> %i.gd, i8 %i.ga, i64 3
  %i.gf = uitofp <4 x i8> %i.ge to <4 x float>
  %i.gg = fmul <4 x float> %i.ft, %i.gf
  %i.gh = fmul <4 x float> %i.fw, %i.gg           ; 4 uses
  %shift = shufflevector <4 x float> %i.gh, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop191 = fadd <4 x float> %i.gh, %shift
  %shift193 = shufflevector <4 x float> %i.gh, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop194 = fadd <4 x float> %foldExtExtBinop191, %shift193
  %shift196 = shufflevector <4 x float> %i.gh, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop197 = fadd <4 x float> %foldExtExtBinop194, %shift196
  %i.gi = extractelement <4 x float> %foldExtExtBinop197, i64 0
  %i.gj = fptoui float %i.gi to i8
  %gep155 = getelementptr inbounds nuw i8, ptr %invariant.gep154, i64 %indvars.iv
  store i8 %i.gj, ptr %gep155, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !126

.loopexit:                                        ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.t, %bb.s, %bb.r
  %indvars.iv.next136 = add nuw nsw i64 %indvars.iv135, 1 ; 2 uses
  %exitcond139.not = icmp eq i64 %indvars.iv.next136, %wide.trip.count138
  br i1 %exitcond139.not, label %._crit_edge, label %bb.r

bb.u:                                             ; preds = %bb.a, %bb.b, %bb.c, %._crit_edge132.split, %bb.g
  ret void
}

; Function Attrs: nounwind uwtable
define void @ImageRotateCW(ptr nofree noundef captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
end_hunk_0
