Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/heal?download=true
inline.NumInlined: 7
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_heal_laplace_iteration:bb.a
  %invariant.gep = getelementptr [4 x i8], ptr %1, i64 %i.a
  %i.b = insertelement <2 x float> poison, float %7, i64 0
  %i.c = shufflevector <2 x float> %i.b, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert167 = insertelement <8 x float> poison, float %7, i64 0
  %broadcast.splat168 = shufflevector <8 x float> %broadcast.splatinsert167, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %bb.b

._crit_edge142.loopexit:                          ; preds = %._crit_edge
  %i.d = extractelement <2 x float> %i.gx, i64 0
  %i.e = fadd reassoc nsz arcp contract afn float %i.d, %.sroa.0153.4
  %i.f = extractelement <2 x float> %i.gx, i64 1
  %i.g = fadd reassoc nsz arcp contract afn float %i.e, %i.f
  br label %._crit_edge142

._crit_edge142:                                   ; preds = %._crit_edge142.loopexit, %bb.a
  %i.h = phi float [ 0.000000e+00, %bb.a ], [ %i.g, %._crit_edge142.loopexit ]
  ret float %i.h

bb.b:                                             ; preds = %.lr.ph141, %._crit_edge
  %.sroa.0153.1 = phi nsz float [ 0.000000e+00, %.lr.ph141 ], [ %.sroa.0153.4, %._crit_edge ] ; 4 uses
  %.0117139 = phi i64 [ 0, %.lr.ph141 ], [ %i.gy, %._crit_edge ] ; 2 uses
  %i.i = phi <2 x float> [ zeroinitializer, %.lr.ph141 ], [ %i.gx, %._crit_edge ] ; 4 uses
  %.idx = shl i64 %.0117139, 3
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 %.idx ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !56
  %i.l = zext i32 %i.k to i64                     ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !56   ; 4 uses
  %i.o = shl nuw nsw i64 %i.l, 2                  ; 6 uses
  %i.p = udiv i64 %i.l, %3                        ; 3 uses
  %i.q = urem i64 %i.l, %3                        ; 2 uses
  %i.r = icmp eq i64 %i.p, 1
  %spec.select = select i1 %i.r, float 3.000000e+00, float 4.000000e+00 ; 2 uses
  %i.s = icmp eq i64 %i.p, %2
  %i.t = fadd reassoc nsz arcp contract afn float %spec.select, -1.000000e+00
  %.1116 = select nsz i1 %i.s, float %i.t, float %spec.select ; 4 uses
  %i.u = and i64 %i.p, 1                          ; 3 uses
  %i.v = xor i64 %i.u, %6
  %i.w = shl nuw nsw i64 %i.v, 2                  ; 5 uses
  %i.x = icmp eq i32 %i.n, 1
  br i1 %i.x, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.y = icmp ne i64 %i.q, 0
  %i.z = icmp ne i64 %6, %i.u
  %or.cond = or i1 %i.z, %i.y
  br i1 %or.cond, label %.preheader132, label %bb.d

.preheader132:                                    ; preds = %bb.c
  %i.aa = getelementptr [4 x i8], ptr %1, i64 %i.o
  %i.ab = getelementptr i8, ptr %i.aa, i64 -16
  %i.ac = getelementptr [4 x i8], ptr %i.ab, i64 %i.w ; 2 uses
  %.sroa.5150.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.ad = load <2 x float>, ptr %.sroa.5150.0..sroa_idx, align 4, !tbaa !16
  %i.ae = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr align 4 %i.ac, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x float> poison), !tbaa !16
  %i.af = shufflevector <4 x float> %i.ae, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  br label %.loopexit133

bb.d:                                             ; preds = %bb.c
  %i.ag = fadd reassoc nsz arcp contract afn float %.1116, -1.000000e+00
  br label %.loopexit133

.loopexit133:                                     ; preds = %.preheader132, %bb.d
  %.0114 = phi nsz float [ %.1116, %.preheader132 ], [ %i.ag, %bb.d ] ; 2 uses
  %i.ah = phi <2 x float> [ %i.ad, %.preheader132 ], [ zeroinitializer, %bb.d ]
  %i.ai = phi <2 x float> [ %i.af, %.preheader132 ], [ zeroinitializer, %bb.d ]
  %i.aj = add nuw nsw i64 %i.q, 1
  %i.ak = icmp samesign ult i64 %i.aj, %3
  %i.al = icmp eq i64 %6, %i.u
  %or.cond3 = or i1 %i.al, %i.ak
  br i1 %or.cond3, label %.preheader, label %bb.e

.preheader:                                       ; preds = %.loopexit133
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.o
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.w ; 2 uses
  %.sroa.5147.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.ao = load <2 x float>, ptr %.sroa.5147.0..sroa_idx, align 4, !tbaa !16
  %i.ap = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 4 %i.an, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x float> poison), !tbaa !16
  %i.aq = shufflevector <4 x float> %i.ap, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  br label %.loopexit

bb.e:                                             ; preds = %.loopexit133
  %i.ar = fadd reassoc nsz arcp contract afn float %.0114, -1.000000e+00
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %bb.e
  %.1 = phi nsz float [ %.0114, %.preheader ], [ %i.ar, %bb.e ]
  %i.as = phi <2 x float> [ %i.ao, %.preheader ], [ zeroinitializer, %bb.e ]
  %i.at = phi <2 x float> [ %i.aq, %.preheader ], [ zeroinitializer, %bb.e ]
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.o ; 3 uses
  %i.av = sub i64 %i.o, %i.a
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.av ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.o ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.az = getelementptr inbounds nuw i8, ptr %gep, i64 4
  %i.ba = load <2 x float>, ptr %i.ax, align 4, !tbaa !16 ; 2 uses
  %i.bb = insertelement <2 x float> poison, float %.1, i64 0
  %i.bc = shufflevector <2 x float> %i.bb, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bd = fmul reassoc nsz arcp contract afn <2 x float> %i.ba, %i.bc
  %i.be = load <2 x float>, ptr %i.ay, align 4, !tbaa !16
  %i.bf = load <2 x float>, ptr %i.az, align 4, !tbaa !16
  %i.bg = fadd reassoc nsz arcp contract afn <2 x float> %i.be, %i.bf
  %i.bh = fadd reassoc nsz arcp contract afn <2 x float> %i.bg, %i.ah
  %i.bi = fadd reassoc nsz arcp contract afn <2 x float> %i.bh, %i.as
  %i.bj = fsub reassoc nsz arcp contract afn <2 x float> %i.bd, %i.bi
  %i.bk = fmul reassoc nsz arcp contract afn <2 x float> %i.bj, %i.c ; 3 uses
  %i.bl = fmul reassoc nsz arcp contract afn <2 x float> %i.bk, %i.bk
  %i.bm = fadd reassoc nsz arcp contract afn <2 x float> %i.bl, %i.i
  %i.bn = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 4 %i.au, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x float> poison), !tbaa !16 ; 2 uses
  %i.bo = shufflevector <4 x float> %i.bn, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.bp = fmul reassoc nsz arcp contract afn <2 x float> %i.bo, %i.bc
  %i.bq = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 4 %i.aw, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x float> poison), !tbaa !16
  %i.br = shufflevector <4 x float> %i.bq, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.bs = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr align 4 %gep, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x float> poison), !tbaa !16
  %i.bt = shufflevector <4 x float> %i.bs, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.bu = fadd reassoc nsz arcp contract afn <2 x float> %i.br, %i.bt
  %i.bv = fadd reassoc nsz arcp contract afn <2 x float> %i.bu, %i.ai
  %i.bw = fadd reassoc nsz arcp contract afn <2 x float> %i.bv, %i.at
  %i.bx = fsub reassoc nsz arcp contract afn <2 x float> %i.bp, %i.bw
  %i.by = fmul reassoc nsz arcp contract afn <2 x float> %i.bx, %i.c ; 3 uses
  %foldExtExtBinop = fmul reassoc nsz arcp contract afn <2 x float> %i.by, %i.by
  %i.bz = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ca = fadd reassoc nsz arcp contract afn float %i.bz, %.sroa.0153.1
  %i.cb = shufflevector <2 x float> %i.ba, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.cc = shufflevector <4 x float> %i.bn, <4 x float> %i.cb, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.cd = shufflevector <2 x float> %i.by, <2 x float> %i.bk, <4 x i32> <i32 0, i32 2, i32 3, i32 1>
  %i.ce = fsub reassoc nsz arcp contract afn <4 x float> %i.cc, %i.cd
  store <4 x float> %i.ce, ptr %i.au, align 4, !tbaa !16
  br label %._crit_edge

bb.f:                                             ; preds = %bb.b
  %i.cf = zext i32 %i.n to i64                    ; 3 uses
  %.not143 = icmp eq i32 %i.n, 0
  br i1 %.not143, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.f
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.o
  %i.ch = getelementptr inbounds i8, ptr %i.cg, i64 -16
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %i.w ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  %i.cj = load <2 x float>, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !16, !alias.scope !60 ; 3 uses
  %i.ck = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 4 %i.ci, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x float> poison), !tbaa !16, !alias.scope !60 ; 3 uses
  %i.cl = shufflevector <4 x float> %i.ck, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %min.iters.check = icmp ult i32 %i.n, 8
  br i1 %min.iters.check, label %.lr.ph.preheader206, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.cf, 4294967288              ; 3 uses
  %i.cm = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.sroa.0153.1, i64 0
  %i.cn = shufflevector <2 x float> %i.i, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.co = shufflevector <8 x float> %i.cn, <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <8 x i32> <i32 0, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cp = shufflevector <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <8 x float> %i.cn, <8 x i32> <i32 9, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %broadcast.splatinsert = insertelement <8 x float> poison, float %.1116, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.cq = shufflevector <4 x float> %i.ck, <4 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 3>
  %i.cr = shufflevector <2 x float> %i.cj, <2 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 1>
  %i.cs = shufflevector <2 x float> %i.cj, <2 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 0>
  %i.ct = shufflevector <4 x float> %i.ck, <4 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 0>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x float> [ %i.cm, %vector.ph ], [ %i.dl, %vector.body ]
  %vec.phi169 = phi <8 x float> [ %i.co, %vector.ph ], [ %i.dv, %vector.body ]
  %vec.phi170 = phi <8 x float> [ %i.cp, %vector.ph ], [ %i.ef, %vector.body ]
  %vector.recur = phi <8 x float> [ %i.cq, %vector.ph ], [ %strided.vec179, %vector.body ]
  %vector.recur172 = phi <8 x float> [ %i.cr, %vector.ph ], [ %strided.vec178, %vector.body ]
  %vector.recur174 = phi <8 x float> [ %i.cs, %vector.ph ], [ %strided.vec177, %vector.body ]
  %vector.recur176 = phi <8 x float> [ %i.ct, %vector.ph ], [ %strided.vec, %vector.body ]
  %i.cu = add nuw nsw i64 %index, %i.l
  %i.cv = shl nuw nsw i64 %i.cu, 2                ; 3 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cv ; 2 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.w
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cv ; 2 uses
  %i.cz = sub i64 %i.cv, %i.a
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cz
  %i.db = getelementptr [4 x i8], ptr %i.cw, i64 %i.a
  %wide.vec = load <32 x float>, ptr %i.cx, align 4, !tbaa !16 ; 6 uses
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28> ; 3 uses
  %strided.vec177 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29> ; 3 uses
  %strided.vec178 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30> ; 3 uses
  %strided.vec179 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31> ; 3 uses
  %i.dc = shufflevector <8 x float> %vector.recur176, <8 x float> %strided.vec, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %wide.vec180 = load <32 x float>, ptr %i.cy, align 4, !tbaa !16 ; 4 uses
  %strided.vec181 = shufflevector <32 x float> %wide.vec180, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28> ; 2 uses
  %strided.vec182 = shufflevector <32 x float> %wide.vec180, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29> ; 2 uses
  %strided.vec183 = shufflevector <32 x float> %wide.vec180, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30> ; 2 uses
  %strided.vec184 = shufflevector <32 x float> %wide.vec180, <32 x float> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31> ; 2 uses
  %i.dd = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec181, %broadcast.splat
  %wide.vec185 = load <32 x float>, ptr %i.da, align 4, !tbaa !16 ; 4 uses
  %strided.vec186 = shufflevector <32 x float> %wide.vec185, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec187 = shufflevector <32 x float> %wide.vec185, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec188 = shufflevector <32 x float> %wide.vec185, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec189 = shufflevector <32 x float> %wide.vec185, <32 x float> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %wide.vec190 = load <32 x float>, ptr %i.db, align 4, !tbaa !16 ; 4 uses
  %strided.vec191 = shufflevector <32 x float> %wide.vec190, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec192 = shufflevector <32 x float> %wide.vec190, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec193 = shufflevector <32 x float> %wide.vec190, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec194 = shufflevector <32 x float> %wide.vec190, <32 x float> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.de = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec186, %strided.vec
  %i.df = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec191, %i.dc
  %i.dg = fadd reassoc nsz arcp contract afn <8 x float> %i.de, %i.df
  %i.dh = fsub reassoc nsz arcp contract afn <8 x float> %i.dd, %i.dg
  %i.di = fmul reassoc nsz arcp contract afn <8 x float> %i.dh, %broadcast.splat168 ; 3 uses
  %i.dj = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec181, %i.di
  %i.dk = fmul reassoc nsz arcp contract afn <8 x float> %i.di, %i.di
  %i.dl = fadd reassoc nsz arcp contract afn <8 x float> %i.dk, %vec.phi ; 2 uses
  %i.dm = shufflevector <8 x float> %vector.recur174, <8 x float> %strided.vec177, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.dn = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec182, %broadcast.splat
  %i.do = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec187, %strided.vec177
  %i.dp = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec192, %i.dm
  %i.dq = fadd reassoc nsz arcp contract afn <8 x float> %i.do, %i.dp
  %i.dr = fsub reassoc nsz arcp contract afn <8 x float> %i.dn, %i.dq
  %i.ds = fmul reassoc nsz arcp contract afn <8 x float> %i.dr, %broadcast.splat168 ; 3 uses
  %i.dt = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec182, %i.ds
  %i.du = fmul reassoc nsz arcp contract afn <8 x float> %i.ds, %i.ds
  %i.dv = fadd reassoc nsz arcp contract afn <8 x float> %i.du, %vec.phi169 ; 2 uses
  %i.dw = shufflevector <8 x float> %vector.recur172, <8 x float> %strided.vec178, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.dx = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec183, %broadcast.splat
  %i.dy = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec188, %strided.vec178
  %i.dz = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec193, %i.dw
  %i.ea = fadd reassoc nsz arcp contract afn <8 x float> %i.dy, %i.dz
  %i.eb = fsub reassoc nsz arcp contract afn <8 x float> %i.dx, %i.ea
  %i.ec = fmul reassoc nsz arcp contract afn <8 x float> %i.eb, %broadcast.splat168 ; 3 uses
  %i.ed = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec183, %i.ec
  %i.ee = fmul reassoc nsz arcp contract afn <8 x float> %i.ec, %i.ec
  %i.ef = fadd reassoc nsz arcp contract afn <8 x float> %i.ee, %vec.phi170 ; 2 uses
  %i.eg = shufflevector <8 x float> %vector.recur, <8 x float> %strided.vec179, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.eh = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec184, %broadcast.splat
  %i.ei = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec189, %strided.vec179
  %i.ej = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec194, %i.eg
  %i.ek = fadd reassoc nsz arcp contract afn <8 x float> %i.ei, %i.ej
  %i.el = fsub reassoc nsz arcp contract afn <8 x float> %i.eh, %i.ek
  %i.em = fmul reassoc nsz arcp contract afn <8 x float> %i.el, %broadcast.splat168
  %i.en = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec184, %i.em
  %i.eo = shufflevector <8 x float> %i.dj, <8 x float> %i.dt, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ep = shufflevector <8 x float> %i.ed, <8 x float> %i.en, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x float> %i.eo, <16 x float> %i.ep, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.cy, align 4, !tbaa !16
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.eq = icmp eq i64 %index.next, %n.vec
  br i1 %i.eq, label %middle.block, label %vector.body, !llvm.loop !64

middle.block:                                     ; preds = %vector.body
  %i.er = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.dl) ; 2 uses
  %i.es = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.dv)
  %i.et = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.ef)
  %cmp.n = icmp eq i64 %n.vec, %i.cf
  %i.eu = insertelement <2 x float> poison, float %i.es, i64 0
  %i.ev = insertelement <2 x float> %i.eu, float %i.et, i64 1 ; 2 uses
  %i.ew = shufflevector <32 x float> %wide.vec, <32 x float> poison, <2 x i32> <i32 29, i32 30>
  %i.ex = shufflevector <32 x float> %wide.vec, <32 x float> poison, <2 x i32> <i32 28, i32 31>
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader206

.lr.ph.preheader206:                              ; preds = %.lr.ph.preheader, %middle.block
  %.sroa.0153.3.ph = phi float [ %.sroa.0153.1, %.lr.ph.preheader ], [ %i.er, %middle.block ]
  %.0110135.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.ph = phi <2 x float> [ %i.cj, %.lr.ph.preheader ], [ %i.ew, %middle.block ]
  %.ph207 = phi <2 x float> [ %i.i, %.lr.ph.preheader ], [ %i.ev, %middle.block ]
  %.ph208 = phi <2 x float> [ %i.cl, %.lr.ph.preheader ], [ %i.ex, %middle.block ]
  %i.ey = insertelement <2 x float> poison, float %.1116, i64 0
  %i.ez = shufflevector <2 x float> %i.ey, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader206, %.lr.ph
  %.sroa.0153.3 = phi nsz float [ %i.gr, %.lr.ph ], [ %.sroa.0153.3.ph, %.lr.ph.preheader206 ]
  %.0110135 = phi i64 [ %i.gw, %.lr.ph ], [ %.0110135.ph, %.lr.ph.preheader206 ] ; 2 uses
  %i.fa = phi <2 x float> [ %i.fq, %.lr.ph ], [ %.ph, %.lr.ph.preheader206 ]
  %i.fb = phi <2 x float> [ %i.gb, %.lr.ph ], [ %.ph207, %.lr.ph.preheader206 ]
  %i.fc = phi <2 x float> [ %i.gk, %.lr.ph ], [ %.ph208, %.lr.ph.preheader206 ]
  %i.fd = add nuw nsw i64 %.0110135, %i.l
  %i.fe = shl nuw nsw i64 %i.fd, 2                ; 3 uses
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.fe ; 2 uses
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %i.w ; 3 uses
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.fe ; 3 uses
  %i.fi = sub i64 %i.fe, %i.a
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.fi ; 2 uses
  %i.fk = getelementptr [4 x i8], ptr %i.ff, i64 %i.a ; 2 uses
  %i.fl = load float, ptr %i.fg, align 4, !tbaa !16
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fg, i64 4
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fh, i64 4
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fj, i64 4
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fk, i64 4
  %i.fq = load <2 x float>, ptr %i.fm, align 4, !tbaa !16 ; 2 uses
  %i.fr = load <2 x float>, ptr %i.fn, align 4, !tbaa !16 ; 2 uses
  %i.fs = fmul reassoc nsz arcp contract afn <2 x float> %i.fr, %i.ez
  %i.ft = load <2 x float>, ptr %i.fo, align 4, !tbaa !16
  %i.fu = load <2 x float>, ptr %i.fp, align 4, !tbaa !16
  %i.fv = fadd reassoc nsz arcp contract afn <2 x float> %i.ft, %i.fq
  %i.fw = fadd reassoc nsz arcp contract afn <2 x float> %i.fu, %i.fa
  %i.fx = fadd reassoc nsz arcp contract afn <2 x float> %i.fv, %i.fw
  %i.fy = fsub reassoc nsz arcp contract afn <2 x float> %i.fs, %i.fx
  %i.fz = fmul reassoc nsz arcp contract afn <2 x float> %i.fy, %i.c ; 3 uses
  %i.ga = fmul reassoc nsz arcp contract afn <2 x float> %i.fz, %i.fz
  %i.gb = fadd reassoc nsz arcp contract afn <2 x float> %i.ga, %i.fb ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fg, i64 12
  %i.gd = load float, ptr %i.gc, align 4, !tbaa !16
  %i.ge = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 4 %i.fh, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x float> poison), !tbaa !16 ; 2 uses
  %i.gf = shufflevector <4 x float> %i.ge, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.gg = fmul reassoc nsz arcp contract afn <2 x float> %i.gf, %i.ez
  %i.gh = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 4 %i.fj, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x float> poison), !tbaa !16
  %i.gi = shufflevector <4 x float> %i.gh, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %8 = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr align 4 %i.fk, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x float> poison), !tbaa !16
  %9 = shufflevector <4 x float> %8, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.gj = insertelement <2 x float> poison, float %i.fl, i64 0
  %i.gk = insertelement <2 x float> %i.gj, float %i.gd, i64 1 ; 2 uses
  %i.gl = fadd reassoc nsz arcp contract afn <2 x float> %i.gi, %i.gk
  %i.gm = fadd reassoc nsz arcp contract afn <2 x float> %9, %i.fc
  %i.gn = fadd reassoc nsz arcp contract afn <2 x float> %i.gl, %i.gm
  %i.go = fsub reassoc nsz arcp contract afn <2 x float> %i.gg, %i.gn
  %i.gp = fmul reassoc nsz arcp contract afn <2 x float> %i.go, %i.c ; 3 uses
  %foldExtExtBinop204 = fmul reassoc nsz arcp contract afn <2 x float> %i.gp, %i.gp
  %i.gq = extractelement <2 x float> %foldExtExtBinop204, i64 0
  %i.gr = fadd reassoc nsz arcp contract afn float %i.gq, %.sroa.0153.3 ; 2 uses
  %i.gs = shufflevector <2 x float> %i.fr, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.gt = shufflevector <4 x float> %i.ge, <4 x float> %i.gs, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.gu = shufflevector <2 x float> %i.gp, <2 x float> %i.fz, <4 x i32> <i32 0, i32 2, i32 3, i32 1>
  %i.gv = fsub reassoc nsz arcp contract afn <4 x float> %i.gt, %i.gu
  store <4 x float> %i.gv, ptr %i.fh, align 4, !tbaa !16
  %i.gw = add nuw nsw i64 %.0110135, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.gw, %i.cf
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !65

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.f, %.loopexit
  %.sroa.0153.4 = phi nsz float [ %i.ca, %.loopexit ], [ %.sroa.0153.1, %bb.f ], [ %i.er, %middle.block ], [ %i.gr, %.lr.ph ] ; 2 uses
  %i.gx = phi <2 x float> [ %i.bm, %.loopexit ], [ %i.i, %bb.f ], [ %i.ev, %middle.block ], [ %i.gb, %.lr.ph ] ; 3 uses
  %i.gy = add nuw i64 %.0117139, 1                ; 2 uses
  %exitcond145.not = icmp eq i64 %i.gy, %5
  br i1 %exitcond145.not, label %._crit_edge142.loopexit, label %bb.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr>, <8 x i1>, <8 x float>) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr>, <4 x i1>, <4 x float>) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v4f32.v4p0(<4 x float>, <4 x ptr>, <4 x i1>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v8f32(float, <8 x float>) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <4 x float> @llvm.masked.load.v4f32.p0(ptr captures(none), <4 x i1>, <4 x float>) #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(write) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #13 = { nounwind }

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
!11 = !{!12}
!12 = distinct !{!12, !13, !"_heal_sub: argument 0"}
!13 = distinct !{!13, !"_heal_sub"}
!14 = !{!15}
!15 = distinct !{!15, !13, !"_heal_sub: argument 1"}
!16 = !{!17, !17, i64 0}
!17 = !{!"float", !9, i64 0}
!18 = !{!12, !15}
!19 = distinct !{!19, !20, !21}
!20 = !{!"llvm.loop.isvectorized", i32 1}
!21 = !{!"llvm.loop.unroll.runtime.disable"}
!22 = distinct !{!22, !20}
!23 = distinct !{!23, !20, !21}
!24 = distinct !{!24, !20}
!25 = distinct !{!25, !26}
!26 = !{!"llvm.loop.unroll.disable"}
!27 = !{!28, !30, !31}
!28 = distinct !{!28, !29, !"_heal_laplace_loop: argument 0"}
!29 = distinct !{!29, !"_heal_laplace_loop"}
!30 = distinct !{!30, !29, !"_heal_laplace_loop: argument 1"}
!31 = distinct !{!31, !29, !"_heal_laplace_loop: argument 2"}
!32 = !{!33, !33, i64 0}
!33 = !{!"long", !9, i64 0}
!34 = !{!28, !30}
!35 = !{!31}
!36 = !{!37}
!37 = distinct !{!37, !38, !"_heal_add: argument 1"}
!38 = distinct !{!38, !"_heal_add"}
!39 = !{!40}
!40 = distinct !{!40, !38, !"_heal_add: argument 2"}
!41 = !{!37, !40}
!42 = !{!43, !40}
!43 = distinct !{!43, !38, !"_heal_add: argument 0"}
!44 = !{!43, !37}
!45 = distinct !{!45, !20, !21}
!46 = distinct !{!46, !21, !20}
!47 = distinct !{!47, !20, !21}
!48 = distinct !{!48, !21, !20}
!49 = distinct !{!49, !20, !21}
!50 = distinct !{!50, !21, !20}
!51 = !{!52}
!52 = distinct !{!52, !53, !"_collect_color_runs: argument 0"}
!53 = distinct !{!53, !"_collect_color_runs"}
!54 = !{!55}
!55 = distinct !{!55, !53, !"_collect_color_runs: argument 1"}
!56 = !{!8, !8, i64 0}
!57 = distinct !{!57, !58}
!58 = !{!"llvm.loop.peeled.count", i32 1}
!59 = !{!52, !55}
!60 = !{!61, !63}
!61 = distinct !{!61, !62, !"copy_pixel: argument 0"}
!62 = distinct !{!62, !"copy_pixel"}
!63 = distinct !{!63, !62, !"copy_pixel: argument 1"}
!64 = distinct !{!64, !20, !21}
!65 = distinct !{!65, !21, !20}
end_hunk_0
