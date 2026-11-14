Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flac/original/fixed_intrin_avx2?download=true
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: readwrite, errnomem: write) uwtable
define hidden range(i32 0, 5) i32 @FLAC__fixed_compute_best_predictor_wide_intrin_avx2(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %1, 3
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 -4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !8    ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 -8
  %i.e = getelementptr i8, ptr %0, i64 -12
  %i.f = getelementptr i8, ptr %0, i64 -16
  %i.g = lshr i32 %1, 2                           ; 2 uses
  %i.h = zext nneg i32 %i.g to i64                ; 3 uses
  %i.i = getelementptr [4 x i8], ptr %0, i64 %i.h ; 4 uses
  %i.j = getelementptr i8, ptr %i.i, i64 -4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !8    ; 2 uses
  %i.l = getelementptr i8, ptr %i.i, i64 -8
  %i.m = getelementptr i8, ptr %i.i, i64 -12
  %i.n = getelementptr i8, ptr %i.i, i64 -16
  %.idx = shl nuw nsw i64 %i.h, 3
  %i.o = getelementptr i8, ptr %0, i64 %.idx      ; 4 uses
  %i.p = getelementptr i8, ptr %i.o, i64 -4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !8    ; 2 uses
  %i.r = getelementptr i8, ptr %i.o, i64 -8
  %i.s = getelementptr i8, ptr %i.o, i64 -12
  %i.t = getelementptr i8, ptr %i.o, i64 -16
  %.idx271 = mul nuw nsw i64 %i.h, 12
  %i.u = getelementptr i8, ptr %0, i64 %.idx271   ; 4 uses
  %i.v = getelementptr i8, ptr %i.u, i64 -4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !8    ; 2 uses
  %i.x = getelementptr i8, ptr %i.u, i64 -8
  %i.y = getelementptr i8, ptr %i.u, i64 -12
  %i.z = load <2 x i32>, ptr %i.e, align 4, !tbaa !8 ; 2 uses
  %i.aa = load i32, ptr %i.d, align 4, !tbaa !8
  %i.ab = load <2 x i32>, ptr %i.m, align 4, !tbaa !8 ; 2 uses
  %i.ac = load i32, ptr %i.l, align 4, !tbaa !8
  %i.ad = load <2 x i32>, ptr %i.s, align 4, !tbaa !8
  %i.ae = load i32, ptr %i.r, align 4, !tbaa !8
  %i.af = load <2 x i32>, ptr %i.y, align 4, !tbaa !8
  %i.ag = load i32, ptr %i.x, align 4, !tbaa !8
  %i.ah = insertelement <4 x i32> poison, i32 %i.c, i64 0
  %i.ai = insertelement <4 x i32> %i.ah, i32 %i.k, i64 1
  %i.aj = insertelement <4 x i32> %i.ai, i32 %i.q, i64 2
  %i.ak = insertelement <4 x i32> %i.aj, i32 %i.w, i64 3
  %i.al = shufflevector <2 x i32> %i.z, <2 x i32> %i.ab, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.am = shufflevector <2 x i32> %i.ad, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.an = shufflevector <4 x i32> %i.al, <4 x i32> %i.am, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.ao = shufflevector <2 x i32> %i.af, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ap = shufflevector <4 x i32> %i.an, <4 x i32> %i.ao, <4 x i32> <i32 0, i32 1, i32 2, i32 5> ; 2 uses
  %i.aq = sub nsw <4 x i32> %i.ak, %i.ap
  %i.ar = sext <4 x i32> %i.aq to <4 x i64>       ; 2 uses
  %i.as = shufflevector <2 x i32> %i.z, <2 x i32> %i.ab, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.at = shufflevector <4 x i32> %i.as, <4 x i32> %i.am, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.au = shufflevector <4 x i32> %i.at, <4 x i32> %i.ao, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.av = sub nsw <4 x i32> %i.ap, %i.au
  %i.aw = sext <4 x i32> %i.av to <4 x i64>
  %i.ax = sub nsw <4 x i64> %i.ar, %i.aw          ; 2 uses
  %i.ay = getelementptr i8, ptr %i.u, i64 -16
  %i.az = load <2 x i32>, ptr %i.f, align 4, !tbaa !8 ; 2 uses
  %i.ba = load <2 x i32>, ptr %i.n, align 4, !tbaa !8 ; 2 uses
  %i.bb = load <2 x i32>, ptr %i.t, align 4, !tbaa !8
  %i.bc = load <2 x i32>, ptr %i.ay, align 4, !tbaa !8
  %i.bd = shufflevector <2 x i32> %i.az, <2 x i32> %i.ba, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.be = shufflevector <2 x i32> %i.bb, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.bf = shufflevector <4 x i32> %i.bd, <4 x i32> %i.be, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.bg = shufflevector <2 x i32> %i.bc, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.bh = shufflevector <4 x i32> %i.bf, <4 x i32> %i.bg, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.bi = shl <4 x i32> %i.bh, splat (i32 1)
  %i.bj = insertelement <4 x i32> poison, i32 %i.aa, i64 0
  %i.bk = insertelement <4 x i32> %i.bj, i32 %i.ac, i64 1
  %i.bl = insertelement <4 x i32> %i.bk, i32 %i.ae, i64 2
  %i.bm = insertelement <4 x i32> %i.bl, i32 %i.ag, i64 3
  %i.bn = sub <4 x i32> %i.bm, %i.bi
  %i.bo = shufflevector <2 x i32> %i.az, <2 x i32> %i.ba, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.bp = shufflevector <4 x i32> %i.bo, <4 x i32> %i.be, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.bq = shufflevector <4 x i32> %i.bp, <4 x i32> %i.bg, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.br = add nsw <4 x i32> %i.bn, %i.bq
  %i.bs = sext <4 x i32> %i.br to <4 x i64>
  %i.bt = sub nsw <4 x i64> %i.ax, %i.bs
  %i.bu = sext i32 %i.c to i64
  %.sroa.0264.0.vec.insert = insertelement <4 x i64> poison, i64 %i.bu, i64 0
  %i.bv = sext i32 %i.k to i64
  %.sroa.0264.8.vec.insert = insertelement <4 x i64> %.sroa.0264.0.vec.insert, i64 %i.bv, i64 1
  %i.bw = insertelement <2 x i32> poison, i32 %i.q, i64 0
  %i.bx = insertelement <2 x i32> %i.bw, i32 %i.w, i64 1
  %i.by = sext <2 x i32> %i.bx to <2 x i64>
  %i.bz = shufflevector <2 x i64> %i.by, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %.sroa.0264.24.vec.insert294 = shufflevector <4 x i64> %.sroa.0264.8.vec.insert, <4 x i64> %i.bz, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ca = lshr i32 %1, 2
  %i.cb = lshr i32 %1, 1
  %i.cc = mul i32 %1, 3
  %i.cd = lshr i32 %i.cc, 2
  %i.ce = zext nneg i32 %i.ca to i64
  %i.cf = zext nneg i32 %i.cb to i64
  %i.cg = zext nneg i32 %i.cd to i64
  %wide.trip.count = zext nneg i32 %i.g to i64
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ce
  %invariant.gep279 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cf
  %invariant.gep281 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cg
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 5 uses
  %.0243 = phi <4 x i64> [ %i.bt, %.lr.ph ], [ %i.da, %bb.b ]
  %.0160242 = phi <4 x i64> [ %i.ax, %.lr.ph ], [ %i.cx, %bb.b ]
  %.0161241 = phi <4 x i64> [ %i.ar, %.lr.ph ], [ %i.cu, %bb.b ]
  %.0162240 = phi <4 x i64> [ %.sroa.0264.24.vec.insert294, %.lr.ph ], [ %.sroa.0.24.vec.insert293, %bb.b ]
  %.0163239 = phi <4 x i64> [ zeroinitializer, %.lr.ph ], [ %i.df, %bb.b ]
  %.0164238 = phi <4 x i64> [ zeroinitializer, %.lr.ph ], [ %i.dc, %bb.b ]
  %.0165237 = phi <4 x i64> [ zeroinitializer, %.lr.ph ], [ %i.cz, %bb.b ]
  %.0166236 = phi <4 x i64> [ zeroinitializer, %.lr.ph ], [ %i.cw, %bb.b ]
  %.0167235 = phi <4 x i64> [ zeroinitializer, %.lr.ph ], [ %i.ct, %bb.b ]
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !8
  %i.cj = sext i32 %i.ci to i64
  %.sroa.0.0.vec.insert = insertelement <4 x i64> poison, i64 %i.cj, i64 0
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.ck = load i32, ptr %gep, align 4, !tbaa !8
  %i.cl = sext i32 %i.ck to i64
  %.sroa.0.8.vec.insert = insertelement <4 x i64> %.sroa.0.0.vec.insert, i64 %i.cl, i64 1
  %gep280 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep279, i64 %indvars.iv
  %i.cm = load i32, ptr %gep280, align 4, !tbaa !8
  %gep282 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep281, i64 %indvars.iv
  %i.cn = load i32, ptr %gep282, align 4, !tbaa !8
  %i.co = insertelement <2 x i32> poison, i32 %i.cm, i64 0
  %i.cp = insertelement <2 x i32> %i.co, i32 %i.cn, i64 1
  %i.cq = sext <2 x i32> %i.cp to <2 x i64>
  %i.cr = shufflevector <2 x i64> %i.cq, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %.sroa.0.24.vec.insert293 = shufflevector <4 x i64> %.sroa.0.8.vec.insert, <4 x i64> %i.cr, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 3 uses
  %i.cs = tail call <4 x i64> @llvm.abs.v4i64(<4 x i64> %.sroa.0.24.vec.insert293, i1 false)
  %i.ct = add <4 x i64> %i.cs, %.0167235          ; 2 uses
  %i.cu = sub <4 x i64> %.sroa.0.24.vec.insert293, %.0162240 ; 3 uses
  %i.cv = tail call <4 x i64> @llvm.abs.v4i64(<4 x i64> %i.cu, i1 false)
  %i.cw = add <4 x i64> %i.cv, %.0166236          ; 2 uses
  %i.cx = sub <4 x i64> %i.cu, %.0161241          ; 3 uses
  %i.cy = tail call <4 x i64> @llvm.abs.v4i64(<4 x i64> %i.cx, i1 false)
  %i.cz = add <4 x i64> %i.cy, %.0165237          ; 2 uses
  %i.da = sub <4 x i64> %i.cx, %.0160242          ; 3 uses
  %i.db = tail call <4 x i64> @llvm.abs.v4i64(<4 x i64> %i.da, i1 false)
  %i.dc = add <4 x i64> %i.db, %.0164238          ; 2 uses
  %i.dd = sub <4 x i64> %i.da, %.0243
  %i.de = tail call <4 x i64> @llvm.abs.v4i64(<4 x i64> %i.dd, i1 false)
  %i.df = add <4 x i64> %i.de, %.0163239          ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.b, !llvm.loop !12

._crit_edge.loopexit:                             ; preds = %bb.b
  %i.dg = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.ct)
  %i.dh = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.cw)
  %i.di = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.cz)
  %i.dj = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.dc)
  %i.dk = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.df)
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0167.lcssa = phi i64 [ 0, %bb.a ], [ %i.dg, %._crit_edge.loopexit ] ; 3 uses
  %.0166.lcssa = phi i64 [ 0, %bb.a ], [ %i.dh, %._crit_edge.loopexit ] ; 4 uses
  %.0165.lcssa = phi i64 [ 0, %bb.a ], [ %i.di, %._crit_edge.loopexit ] ; 5 uses
  %.0164.lcssa = phi i64 [ 0, %bb.a ], [ %i.dj, %._crit_edge.loopexit ] ; 6 uses
  %.0163.lcssa = phi i64 [ 0, %bb.a ], [ %i.dk, %._crit_edge.loopexit ] ; 6 uses
  %i.dl = tail call i64 @llvm.umin.i64(i64 %.0166.lcssa, i64 %.0165.lcssa)
  %. = tail call i64 @llvm.umin.i64(i64 %i.dl, i64 %.0164.lcssa)
  %i.dm = tail call i64 @llvm.umin.i64(i64 %., i64 %.0163.lcssa)
  %.not = icmp ugt i64 %.0167.lcssa, %i.dm
  br i1 %.not, label %bb.c, label %bb.f

bb.c:                                             ; preds = %._crit_edge
  %i.dn = tail call i64 @llvm.umin.i64(i64 %.0165.lcssa, i64 %.0164.lcssa)
  %.190 = tail call i64 @llvm.umin.i64(i64 %i.dn, i64 %.0163.lcssa)
  %.not181 = icmp ugt i64 %.0166.lcssa, %.190
  br i1 %.not181, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.do = tail call i64 @llvm.umin.i64(i64 %.0164.lcssa, i64 %.0163.lcssa)
  %.not182 = icmp ugt i64 %.0165.lcssa, %i.do
  br i1 %.not182, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %.not183 = icmp ugt i64 %.0164.lcssa, %.0163.lcssa
  %.191 = select i1 %.not183, i32 4, i32 3
  br label %.thread

bb.f:                                             ; preds = %._crit_edge
  %.not184 = icmp eq i64 %.0167.lcssa, 0
  br i1 %.not184, label %bb.g, label %.thread

.thread:                                          ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %.0168231 = phi i32 [ 0, %bb.f ], [ %.191, %bb.e ], [ 1, %bb.c ], [ 2, %bb.d ]
  %i.dp = uitofp reassoc nsz arcp i64 %.0167.lcssa to double
  %i.dq = fmul reassoc nnan nsz arcp double %i.dp, f0x3FE62E42FEFA39EF
  %i.dr = uitofp reassoc nsz arcp i32 %1 to double
  %i.ds = fdiv reassoc nsz arcp double %i.dq, %i.dr
  %i.dt = tail call reassoc nsz arcp double @log(double noundef %i.ds) #4
  %i.du = fmul reassoc nsz arcp double %i.dt, f0x3FF71547652B82FE
  %i.dv = fptrunc reassoc nsz arcp double %i.du to float
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.thread
  %.0168232 = phi i32 [ %.0168231, %.thread ], [ 0, %bb.f ]
  %i.dw = phi float [ %i.dv, %.thread ], [ 0.000000e+00, %bb.f ]
  store float %i.dw, ptr %2, align 4, !tbaa !11
  %.not185 = icmp eq i64 %.0166.lcssa, 0
  br i1 %.not185, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.dx = uitofp reassoc nsz arcp i64 %.0166.lcssa to double
  %i.dy = fmul reassoc nnan nsz arcp double %i.dx, f0x3FE62E42FEFA39EF
  %i.dz = uitofp reassoc nsz arcp i32 %1 to double
  %i.ea = fdiv reassoc nsz arcp double %i.dy, %i.dz
  %i.eb = tail call reassoc nsz arcp double @log(double noundef %i.ea) #4
  %i.ec = fmul reassoc nsz arcp double %i.eb, f0x3FF71547652B82FE
  %i.ed = fptrunc reassoc nsz arcp double %i.ec to float
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.ee = phi float [ %i.ed, %bb.h ], [ 0.000000e+00, %bb.g ]
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 4
  store float %i.ee, ptr %i.ef, align 4, !tbaa !11
  %.not186 = icmp eq i64 %.0165.lcssa, 0
  br i1 %.not186, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.eg = uitofp reassoc nsz arcp i64 %.0165.lcssa to double
  %i.eh = fmul reassoc nnan nsz arcp double %i.eg, f0x3FE62E42FEFA39EF
  %i.ei = uitofp reassoc nsz arcp i32 %1 to double
  %i.ej = fdiv reassoc nsz arcp double %i.eh, %i.ei
  %i.ek = tail call reassoc nsz arcp double @log(double noundef %i.ej) #4
  %i.el = fmul reassoc nsz arcp double %i.ek, f0x3FF71547652B82FE
  %i.em = fptrunc reassoc nsz arcp double %i.el to float
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.en = phi float [ %i.em, %bb.j ], [ 0.000000e+00, %bb.i ]
  %i.eo = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float %i.en, ptr %i.eo, align 4, !tbaa !11
  %.not187 = icmp eq i64 %.0164.lcssa, 0
  br i1 %.not187, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ep = uitofp reassoc nsz arcp i64 %.0164.lcssa to double
  %i.eq = fmul reassoc nnan nsz arcp double %i.ep, f0x3FE62E42FEFA39EF
  %i.er = uitofp reassoc nsz arcp i32 %1 to double
  %i.es = fdiv reassoc nsz arcp double %i.eq, %i.er
  %i.et = tail call reassoc nsz arcp double @log(double noundef %i.es) #4
  %i.eu = fmul reassoc nsz arcp double %i.et, f0x3FF71547652B82FE
  %i.ev = fptrunc reassoc nsz arcp double %i.eu to float
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.ew = phi float [ %i.ev, %bb.l ], [ 0.000000e+00, %bb.k ]
  %i.ex = getelementptr inbounds nuw i8, ptr %2, i64 12
  store float %i.ew, ptr %i.ex, align 4, !tbaa !11
  %.not188 = icmp eq i64 %.0163.lcssa, 0
  br i1 %.not188, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ey = uitofp reassoc nsz arcp i64 %.0163.lcssa to double
  %i.ez = fmul reassoc nnan nsz arcp double %i.ey, f0x3FE62E42FEFA39EF
  %i.fa = uitofp reassoc nsz arcp i32 %1 to double
  %i.fb = fdiv reassoc nsz arcp double %i.ez, %i.fa
  %i.fc = tail call reassoc nsz arcp double @log(double noundef %i.fb) #4
  %i.fd = fmul reassoc nsz arcp double %i.fc, f0x3FF71547652B82FE
  %i.fe = fptrunc reassoc nsz arcp double %i.fd to float
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.ff = phi float [ %i.fe, %bb.n ], [ 0.000000e+00, %bb.m ]
  %i.fg = getelementptr inbounds nuw i8, ptr %2, i64 16
  store float %i.ff, ptr %i.fg, align 4, !tbaa !11
  ret i32 %.0168232
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log(double noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: readwrite, errnomem: write) uwtable
define hidden range(i32 0, 5) i32 @FLAC__fixed_compute_best_predictor_limit_residual_intrin_avx2(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 {
.thread521.3:
  %i.a = getelementptr i8, ptr %0, i64 -8
  %i.b = getelementptr i8, ptr %0, i64 -16
  %i.c = load i32, ptr %i.b, align 4, !tbaa !8
  %i.d = sext i32 %i.c to i64                     ; 5 uses
  %i.e = tail call i64 @llvm.abs.i64(i64 %i.d, i1 true) ; 2 uses
  %i.f = getelementptr i8, ptr %0, i64 -12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !8
  %i.h = sext i32 %i.g to i64                     ; 8 uses
  %i.i = tail call i64 @llvm.abs.i64(i64 %i.h, i1 true) ; 2 uses
  %i.j = sub nsw i64 %i.h, %i.d
  %spec.select441.1 = tail call i64 @llvm.abs.i64(i64 %i.j, i1 true) ; 2 uses
  %i.k = load i32, ptr %i.a, align 4, !tbaa !8
  %i.l = sext i32 %i.k to i64                     ; 8 uses
  %i.m = tail call i64 @llvm.abs.i64(i64 %i.l, i1 true) ; 3 uses
  %i.n = sub nsw i64 %i.l, %i.h
  %spec.select441.2 = tail call i64 @llvm.abs.i64(i64 %i.n, i1 true) ; 2 uses
  %i.o = shl nsw i64 %i.h, 1
  %i.p = sub nsw i64 %i.l, %i.o
  %i.q = add nsw i64 %i.p, %i.d
  %spec.select442.2 = tail call i64 @llvm.abs.i64(i64 %i.q, i1 true) ; 2 uses
  %i.r = getelementptr i8, ptr %0, i64 -4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !8
  %i.t = sext i32 %i.s to i64                     ; 5 uses
  %i.u = tail call i64 @llvm.abs.i64(i64 %i.t, i1 true) ; 2 uses
  %i.v = sub nsw i64 %i.t, %i.l                   ; 3 uses
  %spec.select441.3 = tail call i64 @llvm.abs.i64(i64 %i.v, i1 true) ; 3 uses
  %i.w = shl nsw i64 %i.l, 1
  %i.x = sub nsw i64 %i.t, %i.w
  %i.y = add nsw i64 %i.x, %i.h
  %spec.select442.3 = tail call i64 @llvm.abs.i64(i64 %i.y, i1 true) ; 3 uses
  %reass.add533.3 = sub nsw i64 %i.h, %i.l
  %reass.mul534.3 = mul nsw i64 %reass.add533.3, 3
  %i.z = sub nsw i64 %i.t, %i.d
  %i.aa = add nsw i64 %i.z, %reass.mul534.3
  %spec.select443.3 = tail call i64 @llvm.abs.i64(i64 %i.aa, i1 true) ; 3 uses
  %i.ab = icmp sgt i32 %1, 3
  br i1 %i.ab, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.thread521.3
  %i.ac = shl nsw i64 %i.h, 1
  %i.ad = add nsw i64 %i.l, %i.d
  %.neg529 = sub nsw i64 %i.ac, %i.ad
  %.neg431 = sub nsw i64 %i.h, %i.l
  %i.ae = add nsw i64 %.neg431, %i.v              ; 2 uses
  %i.af = add nsw i64 %.neg529, %i.ae
  %.sroa.0.0.vec.insert628 = insertelement <4 x i64> poison, i64 %i.af, i64 0
  %i.ag = lshr i32 %1, 2                          ; 2 uses
  %i.ah = zext nneg i32 %i.ag to i64              ; 3 uses
  %i.ai = getelementptr [4 x i8], ptr %0, i64 %i.ah ; 4 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 -12
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !8
  %i.al = sext i32 %i.ak to i64                   ; 2 uses
  %i.am = shl nsw i64 %i.al, 1
  %i.an = getelementptr i8, ptr %i.ai, i64 -8
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !8
  %i.ap = sext i32 %i.ao to i64                   ; 3 uses
  %i.aq = getelementptr i8, ptr %i.ai, i64 -16
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !8
  %i.as = sext i32 %i.ar to i64
  %i.at = add nsw i64 %i.ap, %i.as
  %.neg529.1 = sub nsw i64 %i.am, %i.at
  %.neg431.1 = sub nsw i64 %i.al, %i.ap
  %i.au = getelementptr i8, ptr %i.ai, i64 -4
  %i.av = load i32, ptr %i.au, align 4, !tbaa !8
  %i.aw = sext i32 %i.av to i64                   ; 2 uses
  %i.ax = sub nsw i64 %i.aw, %i.ap                ; 2 uses
  %i.ay = add nsw i64 %.neg431.1, %i.ax           ; 2 uses
  %i.az = add nsw i64 %.neg529.1, %i.ay
  %.sroa.0.8.vec.insert629 = insertelement <4 x i64> %.sroa.0.0.vec.insert628, i64 %i.az, i64 1
  %.idx = shl nuw nsw i64 %i.ah, 3
  %i.ba = getelementptr i8, ptr %0, i64 %.idx     ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ba, i64 -8
  %i.bc = getelementptr i8, ptr %i.ba, i64 -16
  %.idx641 = mul nuw nsw i64 %i.ah, 12
  %i.bd = getelementptr i8, ptr %0, i64 %.idx641  ; 2 uses
  %i.be = getelementptr i8, ptr %i.bd, i64 -8
  %i.bf = getelementptr i8, ptr %i.bd, i64 -16
  %i.bg = load <2 x i32>, ptr %i.bc, align 4, !tbaa !8 ; 2 uses
  %i.bh = load <2 x i32>, ptr %i.bb, align 4, !tbaa !8 ; 3 uses
  %i.bi = load <2 x i32>, ptr %i.bf, align 4, !tbaa !8 ; 2 uses
  %i.bj = shufflevector <2 x i32> %i.bg, <2 x i32> %i.bi, <2 x i32> <i32 1, i32 3>
  %i.bk = sext <2 x i32> %i.bj to <2 x i64>       ; 2 uses
  %i.bl = shl nsw <2 x i64> %i.bk, splat (i64 1)
  %i.bm = load <2 x i32>, ptr %i.be, align 4, !tbaa !8 ; 2 uses
  %i.bn = shufflevector <2 x i32> %i.bg, <2 x i32> %i.bm, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.bo = sext <2 x i32> %i.bn to <2 x i64>       ; 2 uses
  %i.bp = shufflevector <2 x i32> %i.bh, <2 x i32> %i.bn, <2 x i32> <i32 0, i32 3>
  %i.bq = sext <2 x i32> %i.bp to <2 x i64>
  %i.br = shufflevector <2 x i32> %i.bh, <2 x i32> %i.bi, <2 x i32> <i32 0, i32 2>
  %i.bs = sext <2 x i32> %i.br to <2 x i64>       ; 2 uses
  %i.bt = add nsw <2 x i64> %i.bo, %i.bs
  %i.bu = sub nsw <2 x i64> %i.bl, %i.bt
  %i.bv = sub nsw <2 x i64> %i.bk, %i.bq
  %i.bw = shufflevector <2 x i32> %i.bh, <2 x i32> %i.bm, <2 x i32> <i32 1, i32 3>
  %i.bx = sext <2 x i32> %i.bw to <2 x i64>       ; 2 uses
  %i.by = shufflevector <2 x i64> %i.bs, <2 x i64> %i.bo, <2 x i32> <i32 0, i32 3>
  %i.bz = sub nsw <2 x i64> %i.bx, %i.by          ; 2 uses
  %i.ca = add nsw <2 x i64> %i.bv, %i.bz          ; 2 uses
  %i.cb = add nsw <2 x i64> %i.bu, %i.ca
  %i.cc = shufflevector <2 x i64> %i.cb, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %.sroa.0.24.vec.insert631733 = shufflevector <4 x i64> %.sroa.0.8.vec.insert629, <4 x i64> %i.cc, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %.sroa.0632.0.vec.insert = insertelement <4 x i64> poison, i64 %i.ae, i64 0
  %.sroa.0632.8.vec.insert = insertelement <4 x i64> %.sroa.0632.0.vec.insert, i64 %i.ay, i64 1
  %i.cd = shufflevector <2 x i64> %i.ca, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ce = shufflevector <4 x i64> %.sroa.0632.8.vec.insert, <4 x i64> %i.cd, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %.sroa.0634.0.vec.insert = insertelement <4 x i64> poison, i64 %i.v, i64 0
  %.sroa.0634.8.vec.insert = insertelement <4 x i64> %.sroa.0634.0.vec.insert, i64 %i.ax, i64 1
  %i.cf = shufflevector <2 x i64> %i.bz, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cg = shufflevector <4 x i64> %.sroa.0634.8.vec.insert, <4 x i64> %i.cf, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %.sroa.0636.0.vec.insert = insertelement <4 x i64> poison, i64 %i.t, i64 0
  %.sroa.0636.8.vec.insert = insertelement <4 x i64> %.sroa.0636.0.vec.insert, i64 %i.aw, i64 1
  %i.ch = shufflevector <2 x i64> %i.bx, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ci = shufflevector <4 x i64> %.sroa.0636.8.vec.insert, <4 x i64> %i.ch, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.cj = lshr i32 %1, 2
  %i.ck = lshr i32 %1, 1
  %i.cl = mul i32 %1, 3
  %i.cm = lshr i32 %i.cl, 2
  %i.cn = zext nneg i32 %i.cj to i64
  %i.co = zext nneg i32 %i.ck to i64
  %i.cp = zext nneg i32 %i.cm to i64
  %wide.trip.count = zext nneg i32 %i.ag to i64
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cn
  %invariant.gep661 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.co
  %invariant.gep663 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cp
  br label %bb.a

bb.a:                                             ; preds = %.lr.ph, %bb.a
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.a ] ; 5 uses
  %.0559 = phi <4 x i64> [ %.sroa.0.24.vec.insert631733, %.lr.ph ], [ %i.dm, %bb.a ]
  %.0364558 = phi <4 x i64> [ %i.ce, %.lr.ph ], [ %i.di, %bb.a ]
  %.0365557 = phi <4 x i64> [ %i.cg, %.lr.ph ], [ %i.de, %bb.a ]
  %.0366556 = phi <4 x i64> [ %i.ci, %.lr.ph ], [ %.sroa.0.24.vec.insert732, %bb.a ]
  %.0367555 = phi <4 x i64> [ zeroinitializer, %.lr.ph ], [ %i.dt, %bb.a ]
  %.0368554 = phi <4 x i64> [ zeroinitializer, %.lr.ph ], [ %i.dp, %bb.a ]
  %.0369553 = phi <4 x i64> [ zeroinitializer, %.lr.ph ], [ %i.dl, %bb.a ]
  %.0370552 = phi <4 x i64> [ zeroinitializer, %.lr.ph ], [ %i.dh, %bb.a ]
  %.0371551 = phi <4 x i64> [ zeroinitializer, %.lr.ph ], [ %i.dd, %bb.a ]
  %.0372550 = phi <4 x i64> [ zeroinitializer, %.lr.ph ], [ %i.ds, %bb.a ]
  %.0373549 = phi <4 x i64> [ zeroinitializer, %.lr.ph ], [ %i.do, %bb.a ]
  %.0374548 = phi <4 x i64> [ zeroinitializer, %.lr.ph ], [ %i.dk, %bb.a ]
  %.0375547 = phi <4 x i64> [ zeroinitializer, %.lr.ph ], [ %i.dg, %bb.a ]
  %.0376546 = phi <4 x i64> [ zeroinitializer, %.lr.ph ], [ %i.dc, %bb.a ]
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !8
  %i.cs = sext i32 %i.cr to i64
  %.sroa.0.0.vec.insert = insertelement <4 x i64> poison, i64 %i.cs, i64 0
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.ct = load i32, ptr %gep, align 4, !tbaa !8
  %i.cu = sext i32 %i.ct to i64
  %.sroa.0.8.vec.insert = insertelement <4 x i64> %.sroa.0.0.vec.insert, i64 %i.cu, i64 1
  %gep662 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep661, i64 %indvars.iv
  %i.cv = load i32, ptr %gep662, align 4, !tbaa !8
  %gep664 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep663, i64 %indvars.iv
  %i.cw = load i32, ptr %gep664, align 4, !tbaa !8
  %i.cx = insertelement <2 x i32> poison, i32 %i.cv, i64 0
  %i.cy = insertelement <2 x i32> %i.cx, i32 %i.cw, i64 1
  %i.cz = sext <2 x i32> %i.cy to <2 x i64>
  %i.da = shufflevector <2 x i64> %i.cz, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %.sroa.0.24.vec.insert732 = shufflevector <4 x i64> %.sroa.0.8.vec.insert, <4 x i64> %i.da, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 3 uses
  %i.db = tail call <4 x i64> @llvm.abs.v4i64(<4 x i64> %.sroa.0.24.vec.insert732, i1 false) ; 2 uses
  %i.dc = add <4 x i64> %i.db, %.0376546          ; 2 uses
  %i.dd = or <4 x i64> %i.db, %.0371551           ; 2 uses
  %i.de = sub <4 x i64> %.sroa.0.24.vec.insert732, %.0366556 ; 3 uses
  %i.df = tail call <4 x i64> @llvm.abs.v4i64(<4 x i64> %i.de, i1 false) ; 2 uses
  %i.dg = add <4 x i64> %i.df, %.0375547          ; 2 uses
  %i.dh = or <4 x i64> %i.df, %.0370552           ; 2 uses
  %i.di = sub <4 x i64> %i.de, %.0365557          ; 3 uses
  %i.dj = tail call <4 x i64> @llvm.abs.v4i64(<4 x i64> %i.di, i1 false) ; 2 uses
  %i.dk = add <4 x i64> %i.dj, %.0374548          ; 2 uses
  %i.dl = or <4 x i64> %i.dj, %.0369553           ; 2 uses
  %i.dm = sub <4 x i64> %i.di, %.0364558          ; 3 uses
  %i.dn = tail call <4 x i64> @llvm.abs.v4i64(<4 x i64> %i.dm, i1 false) ; 2 uses
  %i.do = add <4 x i64> %i.dn, %.0373549          ; 2 uses
  %i.dp = or <4 x i64> %i.dn, %.0368554           ; 2 uses
  %i.dq = sub <4 x i64> %i.dm, %.0559
  %i.dr = tail call <4 x i64> @llvm.abs.v4i64(<4 x i64> %i.dq, i1 false) ; 2 uses
  %i.ds = add <4 x i64> %i.dr, %.0372550          ; 2 uses
  %i.dt = or <4 x i64> %i.dr, %.0367555           ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
end_hunk_0
begin_hunk_1_@FLAC__fixed_compute_best_predictor_limit_residual_intrin_avx2:.thread521.3
  %op.rdx728 = or i64 %i.ej, %spec.select441.2    ; 3 uses
  %op.rdx730 = or i64 %.0369.lcssa, %spec.select442.2 ; 3 uses
  %i.ek = and i32 %1, -4                          ; 2 uses
  %.not593 = icmp eq i32 %i.ek, %1
  br i1 %.not593, label %._crit_edge582, label %.lr.ph581.preheader

.lr.ph581.preheader:                              ; preds = %._crit_edge
  %i.el = sext i32 %i.ek to i64                   ; 5 uses
  %i.em = sext i32 %1 to i64                      ; 2 uses
  %i.en = or disjoint i64 %i.el, 1
  %i.eo = tail call i64 @llvm.smax.i64(i64 %i.en, i64 %i.em) ; 2 uses
  %i.ep = sub i64 %i.eo, %i.el                    ; 2 uses
  %min.iters.check = icmp ult i64 %i.ep, 4
  br i1 %min.iters.check, label %.lr.ph581.preheader734, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph581.preheader
  %i.eq = and i64 %i.eo, 3                        ; 2 uses
  %n.vec = sub nuw i64 %i.ep, %i.eq               ; 2 uses
  %i.er = add i64 %n.vec, %i.el
  %i.es = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %.0367.lcssa, i64 0
  %i.et = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %.0368.lcssa, i64 0
  %i.eu = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %op.rdx730, i64 0
  %i.ev = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %op.rdx728, i64 0
  %i.ew = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %op.rdx725, i64 0
  %i.ex = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %.0372.lcssa, i64 0
  %i.ey = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %op.rdx721, i64 0
  %i.ez = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %op.rdx720, i64 0
  %i.fa = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %op.rdx718, i64 0
  %i.fb = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %op.rdx715, i64 0
  %invariant.gep793 = getelementptr [4 x i8], ptr %0, i64 %i.el
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i64> [ %i.es, %vector.ph ], [ %i.gn, %vector.body ]
  %vec.phi691 = phi <4 x i64> [ %i.et, %vector.ph ], [ %i.gm, %vector.body ]
  %vec.phi692 = phi <4 x i64> [ %i.eu, %vector.ph ], [ %i.gl, %vector.body ]
  %vec.phi693 = phi <4 x i64> [ %i.ev, %vector.ph ], [ %i.gk, %vector.body ]
  %vec.phi694 = phi <4 x i64> [ %i.ew, %vector.ph ], [ %i.gj, %vector.body ]
  %vec.phi695 = phi <4 x i64> [ %i.ex, %vector.ph ], [ %i.gi, %vector.body ]
  %vec.phi696 = phi <4 x i64> [ %i.ey, %vector.ph ], [ %i.gh, %vector.body ]
  %vec.phi697 = phi <4 x i64> [ %i.ez, %vector.ph ], [ %i.gg, %vector.body ]
  %vec.phi698 = phi <4 x i64> [ %i.fa, %vector.ph ], [ %i.gf, %vector.body ]
  %vec.phi699 = phi <4 x i64> [ %i.fb, %vector.ph ], [ %i.ge, %vector.body ]
  %gep794 = getelementptr [4 x i8], ptr %invariant.gep793, i64 %index ; 5 uses
  %wide.load = load <4 x i32>, ptr %gep794, align 4, !tbaa !8
  %i.fc = sext <4 x i32> %wide.load to <4 x i64>  ; 5 uses
  %i.fd = tail call <4 x i64> @llvm.abs.v4i64(<4 x i64> %i.fc, i1 true) ; 2 uses
  %i.fe = getelementptr i8, ptr %gep794, i64 -4
  %wide.load700 = load <4 x i32>, ptr %i.fe, align 4, !tbaa !8
  %i.ff = sext <4 x i32> %wide.load700 to <4 x i64> ; 4 uses
  %i.fg = sub nsw <4 x i64> %i.fc, %i.ff
  %i.fh = tail call <4 x i64> @llvm.abs.v4i64(<4 x i64> %i.fg, i1 true) ; 2 uses
  %i.fi = shl nsw <4 x i64> %i.ff, splat (i64 1)
  %i.fj = sub nsw <4 x i64> %i.fc, %i.fi
  %i.fk = getelementptr i8, ptr %gep794, i64 -8
  %wide.load701 = load <4 x i32>, ptr %i.fk, align 4, !tbaa !8
  %i.fl = sext <4 x i32> %wide.load701 to <4 x i64> ; 3 uses
  %i.fm = add nsw <4 x i64> %i.fj, %i.fl
  %i.fn = tail call <4 x i64> @llvm.abs.v4i64(<4 x i64> %i.fm, i1 true) ; 2 uses
  %i.fo = getelementptr i8, ptr %gep794, i64 -12
  %wide.load702 = load <4 x i32>, ptr %i.fo, align 4, !tbaa !8
  %i.fp = sext <4 x i32> %wide.load702 to <4 x i64> ; 2 uses
  %i.fq = sub nsw <4 x i64> %i.fl, %i.ff
  %i.fr = mul nsw <4 x i64> %i.fq, splat (i64 3)
  %i.fs = sub nsw <4 x i64> %i.fc, %i.fp
  %i.ft = add nsw <4 x i64> %i.fs, %i.fr
  %i.fu = tail call <4 x i64> @llvm.abs.v4i64(<4 x i64> %i.ft, i1 true) ; 2 uses
  %i.fv = mul nsw <4 x i64> %i.fl, splat (i64 6)
  %i.fw = add nsw <4 x i64> %i.fv, %i.fc
  %i.fx = add nsw <4 x i64> %i.fp, %i.ff
  %i.fy = getelementptr i8, ptr %gep794, i64 -16
  %wide.load703 = load <4 x i32>, ptr %i.fy, align 4, !tbaa !8
  %i.fz = sext <4 x i32> %wide.load703 to <4 x i64>
  %i.ga = add nsw <4 x i64> %i.fw, %i.fz
  %i.gb = shl nsw <4 x i64> %i.fx, splat (i64 2)
  %i.gc = sub nsw <4 x i64> %i.ga, %i.gb
  %i.gd = tail call <4 x i64> @llvm.abs.v4i64(<4 x i64> %i.gc, i1 true) ; 2 uses
  %i.ge = add <4 x i64> %i.fd, %vec.phi699        ; 2 uses
  %i.gf = add <4 x i64> %i.fh, %vec.phi698        ; 2 uses
  %i.gg = add <4 x i64> %i.fn, %vec.phi697        ; 2 uses
  %i.gh = add <4 x i64> %i.fu, %vec.phi696        ; 2 uses
  %i.gi = add <4 x i64> %i.gd, %vec.phi695        ; 2 uses
  %i.gj = or <4 x i64> %i.fd, %vec.phi694         ; 2 uses
  %i.gk = or <4 x i64> %i.fh, %vec.phi693         ; 2 uses
  %i.gl = or <4 x i64> %i.fn, %vec.phi692         ; 2 uses
  %i.gm = or <4 x i64> %i.fu, %vec.phi691         ; 2 uses
  %i.gn = or <4 x i64> %i.gd, %vec.phi            ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.go = icmp eq i64 %index.next, %n.vec
  br i1 %i.go, label %middle.block, label %vector.body, !llvm.loop !14

middle.block:                                     ; preds = %vector.body
  %i.gp = tail call i64 @llvm.vector.reduce.or.v4i64(<4 x i64> %i.gn) ; 2 uses
  %i.gq = tail call i64 @llvm.vector.reduce.or.v4i64(<4 x i64> %i.gm) ; 2 uses
  %i.gr = tail call i64 @llvm.vector.reduce.or.v4i64(<4 x i64> %i.gl) ; 2 uses
  %i.gs = tail call i64 @llvm.vector.reduce.or.v4i64(<4 x i64> %i.gk) ; 2 uses
  %i.gt = tail call i64 @llvm.vector.reduce.or.v4i64(<4 x i64> %i.gj) ; 2 uses
  %i.gu = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.gi) ; 2 uses
  %i.gv = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.gh) ; 2 uses
  %i.gw = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.gg) ; 2 uses
  %i.gx = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.gf) ; 2 uses
  %i.gy = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.ge) ; 2 uses
  %cmp.n = icmp eq i64 %i.eq, 0
  br i1 %cmp.n, label %._crit_edge582, label %.lr.ph581.preheader734

.lr.ph581.preheader734:                           ; preds = %.lr.ph581.preheader, %middle.block
  %indvars.iv624.ph = phi i64 [ %i.el, %.lr.ph581.preheader ], [ %i.er, %middle.block ]
  %.0382578.ph = phi i64 [ %.0367.lcssa, %.lr.ph581.preheader ], [ %i.gp, %middle.block ]
  %.1384577.ph = phi i64 [ %.0368.lcssa, %.lr.ph581.preheader ], [ %i.gq, %middle.block ]
  %.1386576.ph = phi i64 [ %op.rdx730, %.lr.ph581.preheader ], [ %i.gr, %middle.block ]
  %.1388575.ph = phi i64 [ %op.rdx728, %.lr.ph581.preheader ], [ %i.gs, %middle.block ]
  %.1390574.ph = phi i64 [ %op.rdx725, %.lr.ph581.preheader ], [ %i.gt, %middle.block ]
  %.0399573.ph = phi i64 [ %.0372.lcssa, %.lr.ph581.preheader ], [ %i.gu, %middle.block ]
  %.1401572.ph = phi i64 [ %op.rdx721, %.lr.ph581.preheader ], [ %i.gv, %middle.block ]
  %.1403571.ph = phi i64 [ %op.rdx720, %.lr.ph581.preheader ], [ %i.gw, %middle.block ]
  %.1405570.ph = phi i64 [ %op.rdx718, %.lr.ph581.preheader ], [ %i.gx, %middle.block ]
  %.1407569.ph = phi i64 [ %op.rdx715, %.lr.ph581.preheader ], [ %i.gy, %middle.block ]
  br label %.lr.ph581

.lr.ph581:                                        ; preds = %.lr.ph581.preheader734, %.lr.ph581
  %indvars.iv624 = phi i64 [ %indvars.iv.next625, %.lr.ph581 ], [ %indvars.iv624.ph, %.lr.ph581.preheader734 ] ; 2 uses
  %.0382578 = phi i64 [ %i.io, %.lr.ph581 ], [ %.0382578.ph, %.lr.ph581.preheader734 ]
  %.1384577 = phi i64 [ %i.in, %.lr.ph581 ], [ %.1384577.ph, %.lr.ph581.preheader734 ]
  %.1386576 = phi i64 [ %i.im, %.lr.ph581 ], [ %.1386576.ph, %.lr.ph581.preheader734 ]
  %.1388575 = phi i64 [ %i.il, %.lr.ph581 ], [ %.1388575.ph, %.lr.ph581.preheader734 ]
  %.1390574 = phi i64 [ %i.ik, %.lr.ph581 ], [ %.1390574.ph, %.lr.ph581.preheader734 ]
  %.0399573 = phi i64 [ %i.ij, %.lr.ph581 ], [ %.0399573.ph, %.lr.ph581.preheader734 ]
  %.1401572 = phi i64 [ %i.ii, %.lr.ph581 ], [ %.1401572.ph, %.lr.ph581.preheader734 ]
  %.1403571 = phi i64 [ %i.ih, %.lr.ph581 ], [ %.1403571.ph, %.lr.ph581.preheader734 ]
  %.1405570 = phi i64 [ %i.ig, %.lr.ph581 ], [ %.1405570.ph, %.lr.ph581.preheader734 ]
  %.1407569 = phi i64 [ %i.if, %.lr.ph581 ], [ %.1407569.ph, %.lr.ph581.preheader734 ]
  %i.gz = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv624 ; 5 uses
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !8
  %i.hb = sext i32 %i.ha to i64                   ; 5 uses
  %i.hc = tail call i64 @llvm.abs.i64(i64 %i.hb, i1 true) ; 2 uses
  %i.hd = getelementptr i8, ptr %i.gz, i64 -4
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !8
  %i.hf = sext i32 %i.he to i64                   ; 4 uses
  %i.hg = sub nsw i64 %i.hb, %i.hf
  %i.hh = tail call i64 @llvm.abs.i64(i64 %i.hg, i1 true) ; 2 uses
  %i.hi = shl nsw i64 %i.hf, 1
  %i.hj = sub nsw i64 %i.hb, %i.hi
  %i.hk = getelementptr i8, ptr %i.gz, i64 -8
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !8
  %i.hm = sext i32 %i.hl to i64                   ; 3 uses
  %i.hn = add nsw i64 %i.hj, %i.hm
  %i.ho = tail call i64 @llvm.abs.i64(i64 %i.hn, i1 true) ; 2 uses
  %i.hp = getelementptr i8, ptr %i.gz, i64 -12
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !8
  %i.hr = sext i32 %i.hq to i64                   ; 2 uses
  %reass.add = sub nsw i64 %i.hm, %i.hf
  %reass.mul = mul nsw i64 %reass.add, 3
  %i.hs = sub nsw i64 %i.hb, %i.hr
  %i.ht = add nsw i64 %i.hs, %reass.mul
  %i.hu = tail call i64 @llvm.abs.i64(i64 %i.ht, i1 true) ; 2 uses
  %i.hv = mul nsw i64 %i.hm, 6
  %i.hw = add nsw i64 %i.hv, %i.hb
  %i.hx = add nsw i64 %i.hr, %i.hf
  %i.hy = getelementptr i8, ptr %i.gz, i64 -16
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !8
  %i.ia = sext i32 %i.hz to i64
  %i.ib = add nsw i64 %i.hw, %i.ia
  %i.ic = shl nsw i64 %i.hx, 2
  %i.id = sub nsw i64 %i.ib, %i.ic
  %i.ie = tail call i64 @llvm.abs.i64(i64 %i.id, i1 true) ; 2 uses
  %i.if = add i64 %i.hc, %.1407569                ; 2 uses
  %i.ig = add i64 %i.hh, %.1405570                ; 2 uses
  %i.ih = add i64 %i.ho, %.1403571                ; 2 uses
  %i.ii = add i64 %i.hu, %.1401572                ; 2 uses
  %i.ij = add i64 %i.ie, %.0399573                ; 2 uses
  %i.ik = or i64 %i.hc, %.1390574                 ; 2 uses
  %i.il = or i64 %i.hh, %.1388575                 ; 2 uses
  %i.im = or i64 %i.ho, %.1386576                 ; 2 uses
  %i.in = or i64 %i.hu, %.1384577                 ; 2 uses
  %i.io = or i64 %i.ie, %.0382578                 ; 2 uses
  %indvars.iv.next625 = add nsw i64 %indvars.iv624, 1 ; 2 uses
  %i.ip = icmp slt i64 %indvars.iv.next625, %i.em
  br i1 %i.ip, label %.lr.ph581, label %._crit_edge582, !llvm.loop !15

._crit_edge582:                                   ; preds = %.lr.ph581, %middle.block, %._crit_edge
  %.1407.lcssa = phi i64 [ %op.rdx715, %._crit_edge ], [ %i.gy, %middle.block ], [ %i.if, %.lr.ph581 ] ; 3 uses
  %.1405.lcssa = phi i64 [ %op.rdx718, %._crit_edge ], [ %i.gx, %middle.block ], [ %i.ig, %.lr.ph581 ] ; 4 uses
  %.1403.lcssa = phi i64 [ %op.rdx720, %._crit_edge ], [ %i.gw, %middle.block ], [ %i.ih, %.lr.ph581 ] ; 4 uses
  %.1401.lcssa = phi i64 [ %op.rdx721, %._crit_edge ], [ %i.gv, %middle.block ], [ %i.ii, %.lr.ph581 ] ; 4 uses
  %.0399.lcssa = phi i64 [ %.0372.lcssa, %._crit_edge ], [ %i.gu, %middle.block ], [ %i.ij, %.lr.ph581 ] ; 3 uses
  %.1390.lcssa = phi i64 [ %op.rdx725, %._crit_edge ], [ %i.gt, %middle.block ], [ %i.ik, %.lr.ph581 ]
  %.1388.lcssa = phi i64 [ %op.rdx728, %._crit_edge ], [ %i.gs, %middle.block ], [ %i.il, %.lr.ph581 ]
  %.1386.lcssa = phi i64 [ %op.rdx730, %._crit_edge ], [ %i.gr, %middle.block ], [ %i.im, %.lr.ph581 ]
  %.1384.lcssa = phi i64 [ %.0368.lcssa, %._crit_edge ], [ %i.gq, %middle.block ], [ %i.in, %.lr.ph581 ]
  %.0382.lcssa = phi i64 [ %.0367.lcssa, %._crit_edge ], [ %i.gp, %middle.block ], [ %i.io, %.lr.ph581 ]
  %i.iq = icmp ult i64 %.1390.lcssa, 2147483648
  br i1 %i.iq, label %bb.b, label %bb.d

bb.b:                                             ; preds = %._crit_edge582
  %.not426 = icmp eq i64 %.1407.lcssa, 0
  br i1 %.not426, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ir = uitofp reassoc nsz arcp i64 %.1407.lcssa to double
  %i.is = fmul reassoc nnan nsz arcp double %i.ir, f0x3FE62E42FEFA39EF
  %i.it = uitofp reassoc nsz arcp i32 %1 to double
  %i.iu = fdiv reassoc nsz arcp double %i.is, %i.it
  %i.iv = tail call reassoc nsz arcp double @log(double noundef %i.iu) #4
  %i.iw = fmul reassoc nsz arcp double %i.iv, f0x3FF71547652B82FE
  %i.ix = fptrunc reassoc nsz arcp double %i.iw to float
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge582, %bb.c, %bb.b
  %storemerge = phi float [ 0.000000e+00, %bb.b ], [ %i.ix, %bb.c ], [ 3.400000e+01, %._crit_edge582 ]
  %.1392 = phi i64 [ 0, %bb.b ], [ %.1407.lcssa, %bb.c ], [ -1, %._crit_edge582 ] ; 3 uses
  store float %storemerge, ptr %2, align 4, !tbaa !11
  %i.iy = icmp ult i64 %.1388.lcssa, 2147483648
  br i1 %i.iy, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.iz = icmp ult i64 %.1405.lcssa, %.1392       ; 2 uses
  %spec.select434 = tail call i64 @llvm.umin.i64(i64 %.1405.lcssa, i64 %.1392) ; 2 uses
  %.not427 = icmp eq i64 %.1405.lcssa, 0
  br i1 %.not427, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ja = uitofp reassoc nsz arcp i64 %.1405.lcssa to double
  %i.jb = fmul reassoc nnan nsz arcp double %i.ja, f0x3FE62E42FEFA39EF
  %i.jc = uitofp reassoc nsz arcp i32 %1 to double
  %i.jd = fdiv reassoc nsz arcp double %i.jb, %i.jc
  %i.je = tail call reassoc nsz arcp double @log(double noundef %i.jd) #4
  %i.jf = fmul reassoc nsz arcp double %i.je, f0x3FF71547652B82FE
  %i.jg = fptrunc reassoc nsz arcp double %i.jf to float
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f, %bb.e
  %.sink = phi float [ 0.000000e+00, %bb.e ], [ %i.jg, %bb.f ], [ 3.400000e+01, %bb.d ]
  %.3394 = phi i64 [ %spec.select434, %bb.e ], [ %spec.select434, %bb.f ], [ %.1392, %bb.d ] ; 3 uses
  %.3.shrunk = phi i1 [ %i.iz, %bb.e ], [ %i.iz, %bb.f ], [ false, %bb.d ]
  %.3 = zext i1 %.3.shrunk to i32                 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %2, i64 4
  store float %.sink, ptr %i.jh, align 4, !tbaa !11
  %i.ji = icmp ult i64 %.1386.lcssa, 2147483648
  br i1 %i.ji, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.jj = icmp ult i64 %.1403.lcssa, %.3394
  %spec.select436 = tail call i64 @llvm.umin.i64(i64 %.1403.lcssa, i64 %.3394) ; 2 uses
  %spec.select437 = select i1 %i.jj, i32 2, i32 %.3 ; 2 uses
  %.not428 = icmp eq i64 %.1403.lcssa, 0
  br i1 %.not428, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.jk = uitofp reassoc nsz arcp i64 %.1403.lcssa to double
  %i.jl = fmul reassoc nnan nsz arcp double %i.jk, f0x3FE62E42FEFA39EF
  %i.jm = uitofp reassoc nsz arcp i32 %1 to double
  %i.jn = fdiv reassoc nsz arcp double %i.jl, %i.jm
  %i.jo = tail call reassoc nsz arcp double @log(double noundef %i.jn) #4
  %i.jp = fmul reassoc nsz arcp double %i.jo, f0x3FF71547652B82FE
  %i.jq = fptrunc reassoc nsz arcp double %i.jp to float
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.i, %bb.h
  %.sink666 = phi float [ 0.000000e+00, %bb.h ], [ %i.jq, %bb.i ], [ 3.400000e+01, %bb.g ]
  %.5396 = phi i64 [ %spec.select436, %bb.h ], [ %spec.select436, %bb.i ], [ %.3394, %bb.g ] ; 3 uses
  %.5 = phi i32 [ %spec.select437, %bb.h ], [ %spec.select437, %bb.i ], [ %.3, %bb.g ] ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float %.sink666, ptr %i.jr, align 4, !tbaa !11
  %i.js = icmp ult i64 %.1384.lcssa, 2147483648
  br i1 %i.js, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.jt = icmp ult i64 %.1401.lcssa, %.5396
  %spec.select438 = tail call i64 @llvm.umin.i64(i64 %.1401.lcssa, i64 %.5396) ; 2 uses
  %spec.select439 = select i1 %i.jt, i32 3, i32 %.5 ; 2 uses
  %.not429 = icmp eq i64 %.1401.lcssa, 0
  br i1 %.not429, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ju = uitofp reassoc nsz arcp i64 %.1401.lcssa to double
  %i.jv = fmul reassoc nnan nsz arcp double %i.ju, f0x3FE62E42FEFA39EF
  %i.jw = uitofp reassoc nsz arcp i32 %1 to double
  %i.jx = fdiv reassoc nsz arcp double %i.jv, %i.jw
  %i.jy = tail call reassoc nsz arcp double @log(double noundef %i.jx) #4
  %i.jz = fmul reassoc nsz arcp double %i.jy, f0x3FF71547652B82FE
  %i.ka = fptrunc reassoc nsz arcp double %i.jz to float
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.l, %bb.k
  %.sink668 = phi float [ 0.000000e+00, %bb.k ], [ %i.ka, %bb.l ], [ 3.400000e+01, %bb.j ]
  %.7398 = phi i64 [ %spec.select438, %bb.k ], [ %spec.select438, %bb.l ], [ %.5396, %bb.j ]
  %.7 = phi i32 [ %spec.select439, %bb.k ], [ %spec.select439, %bb.l ], [ %.5, %bb.j ] ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %2, i64 12
  store float %.sink668, ptr %i.kb, align 4, !tbaa !11
  %i.kc = icmp ult i64 %.0382.lcssa, 2147483648
  br i1 %i.kc, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.kd = icmp ult i64 %.0399.lcssa, %.7398
  %spec.select440 = select i1 %i.kd, i32 4, i32 %.7 ; 2 uses
  %.not430 = icmp eq i64 %.0399.lcssa, 0
  br i1 %.not430, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ke = uitofp reassoc nsz arcp i64 %.0399.lcssa to double
  %i.kf = fmul reassoc nnan nsz arcp double %i.ke, f0x3FE62E42FEFA39EF
  %i.kg = uitofp reassoc nsz arcp i32 %1 to double
  %i.kh = fdiv reassoc nsz arcp double %i.kf, %i.kg
  %i.ki = tail call reassoc nsz arcp double @log(double noundef %i.kh) #4
  %i.kj = fmul reassoc nsz arcp double %i.ki, f0x3FF71547652B82FE
  %i.kk = fptrunc reassoc nsz arcp double %i.kj to float
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %bb.o, %bb.n
  %.sink670 = phi float [ 0.000000e+00, %bb.n ], [ %i.kk, %bb.o ], [ 3.400000e+01, %bb.m ]
  %.9 = phi i32 [ %spec.select440, %bb.n ], [ %spec.select440, %bb.o ], [ %.7, %bb.m ]
  %i.kl = getelementptr inbounds nuw i8, ptr %2, i64 16
  store float %.sink670, ptr %i.kl, align 4, !tbaa !11
  ret i32 %.9
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i64> @llvm.abs.v4i64(<4 x i64>, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v4i64(<4 x i64>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.or.v4i64(<4 x i64>) #2

attributes #0 = { nofree norecurse nosync nounwind sspstrong memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="256" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!5, !5, i64 0}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"float", !4, i64 0}
!11 = !{!10, !10, i64 0}
!12 = distinct !{!12, !9}
!13 = distinct !{!13, !9}
!14 = distinct !{!14, !9, !16, !17}
!15 = distinct !{!15, !9, !17, !16}
!16 = !{!"llvm.loop.isvectorized", i32 1}
!17 = !{!"llvm.loop.unroll.runtime.disable"}
end_hunk_1
