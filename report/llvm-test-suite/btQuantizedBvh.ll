inline.NumInlined: 552
inline.NumDeleted: 106
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZNK14btQuantizedBvh27walkStacklessTreeAgainstRayEP21btNodeOverlapCallbackRK9btVector3S4_S4_S4_ii:_Z8btSetMinIfEvRT_RKS0_.exit.i
  %i.x = extractelement <2 x float> %i.r, i64 1   ; 4 uses
  %i.y = fcmp olt float %i.w, %i.x
  %.sroa.890.0 = select i1 %i.y, float %i.w, float %i.x
  %i.z = fcmp olt float %i.u, %i.t
  %.sroa.079.0 = select i1 %i.z, float %i.t, float %i.u
  %i.aa = fcmp olt float %i.x, %i.w
  %.sroa.8.0 = select i1 %i.aa, float %i.w, float %i.x
  %i.ab = fadd float %.sroa.087.0, %i.c
  %i.ac = fadd float %.sroa.890.0, %i.e
  %i.ad = fadd float %.sroa.079.0, %i.h
  %i.ae = fadd float %.sroa.8.0, %i.j
  %i.af = fsub <2 x float> %i.s, %i.r             ; 5 uses
  %foldExtExtBinop146 = fmul <2 x float> %i.af, %i.af
  %i.ag = extractelement <2 x float> %foldExtExtBinop146, i64 1
  %i.ah = extractelement <2 x float> %i.af, i64 0 ; 3 uses
  %i.ai = tail call float @llvm.fmuladd.f32(float %i.ah, float %i.ah, float %i.ag)
  %i.aj = tail call noundef float @llvm.fmuladd.f32(float %i.q, float %i.q, float %i.ai)
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.aj)
  %i.ak = fdiv float 1.000000e+00, %sqrt.i.i      ; 2 uses
  %i.al = insertelement <2 x float> poison, float %i.ak, i64 0
  %i.am = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> zeroinitializer
  %i.an = fmul <2 x float> %i.af, %i.am           ; 4 uses
  %i.ao = fmul float %i.q, %i.ak                  ; 3 uses
  %foldExtExtBinop = fmul <2 x float> %i.af, %i.an
  %i.ap = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.aq = extractelement <2 x float> %i.an, i64 0
  %i.ar = tail call float @llvm.fmuladd.f32(float %i.aq, float %i.ah, float %i.ap)
  %i.as = tail call noundef float @llvm.fmuladd.f32(float %i.ao, float %i.q, float %i.ar)
  %i.at = fcmp oeq <2 x float> %i.an, zeroinitializer
  %i.au = fdiv <2 x float> splat (float 1.000000e+00), %i.an
  %i.av = select <2 x i1> %i.at, <2 x float> splat (float f0x5D5E0B6B), <2 x float> %i.au ; 3 uses
  %i.aw = fcmp oeq float %i.ao, 0.000000e+00
  %i.ax = fdiv float 1.000000e+00, %i.ao
  %i.ay = select i1 %i.aw, float f0x5D5E0B6B, float %i.ax ; 3 uses
  %i.az = fcmp uge <2 x float> %i.av, zeroinitializer ; 2 uses
  %i.ba = fcmp uge float %i.ay, 0.000000e+00      ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !48
  %i.bd = icmp sgt i32 %i.bc, 0
  br i1 %i.bd, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_Z8btSetMinIfEvRT_RKS0_.exit.i
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !27
  br label %bb.a

bb.a:                                             ; preds = %.lr.ph, %bb.g
  %.0102 = phi ptr [ %i.bf, %.lr.ph ], [ %.1, %bb.g ] ; 12 uses
  %.041101 = phi i32 [ 0, %.lr.ph ], [ %i.bg, %bb.g ]
  %.042100 = phi i32 [ 0, %.lr.ph ], [ %.143, %bb.g ] ; 2 uses
  %i.bg = add nuw nsw i32 %.041101, 1             ; 2 uses
  %.sroa.7.0..0102.sroa_idx = getelementptr inbounds nuw i8, ptr %.0102, i64 4
  %.sroa.11.0..0102.sroa_idx = getelementptr inbounds nuw i8, ptr %.0102, i64 8
  %.sroa.11.0.copyload = load float, ptr %.sroa.11.0..0102.sroa_idx, align 4 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.0102, i64 16
  %.sroa.20.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.0102, i64 20
  %i.bi = load <2 x float>, ptr %.0102, align 4   ; 3 uses
  %.sroa.7.0.copyload = load float, ptr %.sroa.7.0..0102.sroa_idx, align 4
  %i.bj = load <2 x float>, ptr %i.bh, align 4    ; 3 uses
  %.sroa.20.16.copyload = load float, ptr %.sroa.20.16..sroa_idx, align 4
  %.sroa.24.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.0102, i64 24
  %.sroa.24.16.copyload = load float, ptr %.sroa.24.16..sroa_idx, align 4 ; 2 uses
  %i.bk = load float, ptr %i.f, align 4, !tbaa !40
  %i.bl = fadd float %i.bk, %.sroa.11.0.copyload  ; 2 uses
  %i.bm = load float, ptr %i.k, align 4, !tbaa !40
  %i.bn = fadd float %i.bm, %.sroa.24.16.copyload ; 2 uses
  %i.bo = extractelement <2 x float> %i.bj, i64 0
  %i.bp = fcmp ogt float %i.ab, %i.bo
  %i.bq = extractelement <2 x float> %i.bi, i64 0
  %i.br = fcmp olt float %i.ad, %i.bq
  %i.bs = fcmp ogt float %i.o, %.sroa.24.16.copyload
  %i.bt = fcmp olt float %i.p, %.sroa.11.0.copyload
  %or.cond143 = select i1 %i.bs, i1 true, i1 %i.bt
  %i.bu = select i1 %or.cond143, i1 true, i1 %i.bp
  %.not = select i1 %i.bu, i1 true, i1 %i.br
  %i.bv = fcmp ogt float %i.ac, %.sroa.20.16.copyload
  %i.bw = fcmp olt float %i.ae, %.sroa.7.0.copyload
  %brmerge = or i1 %.not, %i.bw
  %or.cond144 = select i1 %i.bv, i1 true, i1 %brmerge
  br i1 %or.cond144, label %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bx = load <2 x float>, ptr %5, align 4, !tbaa !40 ; 2 uses
  %i.by = load <2 x float>, ptr %4, align 4, !tbaa !40 ; 2 uses
  %i.bz = shufflevector <2 x float> %i.bx, <2 x float> %i.by, <2 x i32> <i32 0, i32 3>
  %i.ca = shufflevector <2 x float> %i.bj, <2 x float> %i.bi, <2 x i32> <i32 0, i32 3>
  %i.cb = fadd <2 x float> %i.bz, %i.ca           ; 2 uses
  %i.cc = shufflevector <2 x float> %i.by, <2 x float> %i.bx, <2 x i32> <i32 0, i32 3>
  %i.cd = shufflevector <2 x float> %i.bi, <2 x float> %i.bj, <2 x i32> <i32 0, i32 3>
  %i.ce = fadd <2 x float> %i.cc, %i.cd           ; 2 uses
  %i.cf = select <2 x i1> %i.az, <2 x float> %i.cb, <2 x float> %i.ce
  %i.cg = load <2 x float>, ptr %2, align 4, !tbaa !40 ; 2 uses
  %i.ch = fsub <2 x float> %i.cf, %i.cg
  %i.ci = fmul <2 x float> %i.av, %i.ch           ; 3 uses
  %i.cj = select <2 x i1> %i.az, <2 x float> %i.ce, <2 x float> %i.cb
  %i.ck = fsub <2 x float> %i.cj, %i.cg
  %i.cl = fmul <2 x float> %i.av, %i.ck           ; 3 uses
  %i.cm = extractelement <2 x float> %i.cl, i64 0 ; 2 uses
  %i.cn = extractelement <2 x float> %i.cl, i64 1 ; 2 uses
  %i.co = fcmp ogt float %i.cm, %i.cn
  %i.cp = extractelement <2 x float> %i.ci, i64 0 ; 2 uses
  %i.cq = extractelement <2 x float> %i.ci, i64 1 ; 2 uses
  %i.cr = fcmp ogt float %i.cq, %i.cp
  %or.cond.i = select i1 %i.co, i1 true, i1 %i.cr
  br i1 %or.cond.i, label %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.cs = shufflevector <2 x float> %i.ci, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ct = fcmp olt <2 x float> %i.cl, %i.cs       ; 2 uses
  %i.cu = extractelement <2 x i1> %i.ct, i64 0
  %i.cv = select i1 %i.cu, float %i.cq, float %i.cm ; 3 uses
  %i.cw = extractelement <2 x i1> %i.ct, i64 1
  %.052.i = select i1 %i.cw, float %i.cn, float %i.cp ; 3 uses
  %.sroa.speculated122 = select i1 %i.ba, float %i.bl, float %i.bn
  %i.cx = load float, ptr %.sroa.1393.0..sroa_idx, align 4, !tbaa !40 ; 2 uses
  %i.cy = fsub float %.sroa.speculated122, %i.cx
  %i.cz = fmul float %i.ay, %i.cy                 ; 3 uses
  %.sroa.speculated = select i1 %i.ba, float %i.bn, float %i.bl
  %i.da = fsub float %.sroa.speculated, %i.cx
  %i.db = fmul float %i.ay, %i.da                 ; 3 uses
  %i.dc = fcmp ogt float %i.cv, %i.db
  %i.dd = fcmp ogt float %i.cz, %.052.i
  %or.cond60.i = select i1 %i.dc, i1 true, i1 %i.dd
  br i1 %or.cond60.i, label %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit.thread, label %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit

_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit:    ; preds = %bb.c
  %i.de = fcmp ogt float %i.cz, %i.cv
  %i.df = select i1 %i.de, float %i.cz, float %i.cv
  %i.dg = fcmp olt float %i.db, %.052.i
  %.1.i = select i1 %i.dg, float %i.db, float %.052.i
  %i.dh = fcmp olt float %i.df, %i.as
  %i.di = fcmp ogt float %.1.i, 0.000000e+00
  %i.dj = select i1 %i.dh, i1 %i.di, i1 false     ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.0102, i64 32 ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !59
  %i.dm = icmp eq i32 %i.dl, -1                   ; 2 uses
  %or.cond = and i1 %i.dj, %i.dm
  br i1 %or.cond, label %.thread, label %bb.d

_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit.thread: ; preds = %bb.b, %bb.c, %bb.a
  %i.dn = getelementptr inbounds nuw i8, ptr %.0102, i64 32 ; 2 uses
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !59
  %i.dp = icmp eq i32 %i.do, -1
  br label %bb.d

.thread:                                          ; preds = %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit
  %i.dq = getelementptr inbounds nuw i8, ptr %.0102, i64 36
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !62
  %i.ds = getelementptr inbounds nuw i8, ptr %.0102, i64 40
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !63
  %i.du = load ptr, ptr %1, align 8, !tbaa !8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %i.dw = load ptr, ptr %i.dv, align 8
  tail call void %i.dw(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.dr, i32 noundef %i.dt)
  br label %bb.e

bb.d:                                             ; preds = %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit.thread, %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit
  %i.dx = phi i1 [ %i.dp, %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit.thread ], [ %i.dm, %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit ]
  %i.dy = phi ptr [ %i.dn, %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit.thread ], [ %i.dk, %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit ]
  %i.dz = phi i1 [ false, %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit.thread ], [ %i.dj, %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit ]
  %or.cond3 = or i1 %i.dx, %i.dz
  br i1 %or.cond3, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.thread, %bb.d
  %i.ea = getelementptr inbounds nuw i8, ptr %.0102, i64 64
  %i.eb = add nsw i32 %.042100, 1
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ec = load i32, ptr %i.dy, align 4, !tbaa !59 ; 2 uses
  %i.ed = sext i32 %i.ec to i64
  %i.ee = getelementptr inbounds [64 x i8], ptr %.0102, i64 %i.ed
  %i.ef = add nsw i32 %i.ec, %.042100
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.143 = phi i32 [ %i.eb, %bb.e ], [ %i.ef, %bb.f ] ; 2 uses
  %.1 = phi ptr [ %i.ea, %bb.e ], [ %i.ee, %bb.f ]
  %i.eg = load i32, ptr %i.bb, align 4, !tbaa !48
  %i.eh = icmp slt i32 %.143, %i.eg
  br i1 %i.eh, label %bb.a, label %._crit_edge

._crit_edge:                                      ; preds = %bb.g, %_Z8btSetMinIfEvRT_RKS0_.exit.i
  %.041.lcssa = phi i32 [ 0, %_Z8btSetMinIfEvRT_RKS0_.exit.i ], [ %i.bg, %bb.g ] ; 2 uses
  %i.ei = load i32, ptr @maxIterations, align 4, !tbaa !4
  %i.ej = icmp slt i32 %i.ei, %.041.lcssa
  br i1 %i.ej, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge
  store i32 %.041.lcssa, ptr @maxIterations, align 4, !tbaa !4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZNK14btQuantizedBvh36walkStacklessQuantizedTreeAgainstRayEP21btNodeOverlapCallbackRK9btVector3S4_S4_S4_ii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(244) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #6 align 2 {
_Z8btSetMinIfEvRT_RKS0_.exit.i:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load float, ptr %i.a, align 4, !tbaa !40 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.d = load float, ptr %i.c, align 4, !tbaa !40 ; 4 uses
  %i.e = fsub float %i.b, %i.d                    ; 4 uses
  %i.f = load <2 x float>, ptr %3, align 4, !tbaa !40 ; 5 uses
  %i.g = load <2 x float>, ptr %2, align 4, !tbaa !40 ; 5 uses
  %i.h = fsub <2 x float> %i.f, %i.g              ; 5 uses
  %foldExtExtBinop204 = fmul <2 x float> %i.h, %i.h
  %i.i = extractelement <2 x float> %foldExtExtBinop204, i64 1
  %i.j = extractelement <2 x float> %i.h, i64 0   ; 3 uses
  %i.k = tail call float @llvm.fmuladd.f32(float %i.j, float %i.j, float %i.i)
  %i.l = tail call noundef float @llvm.fmuladd.f32(float %i.e, float %i.e, float %i.k)
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.l)
  %i.m = fdiv float 1.000000e+00, %sqrt.i.i       ; 2 uses
  %i.n = insertelement <2 x float> poison, float %i.m, i64 0
  %i.o = shufflevector <2 x float> %i.n, <2 x float> poison, <2 x i32> zeroinitializer
  %i.p = fmul <2 x float> %i.h, %i.o              ; 4 uses
  %i.q = fmul float %i.e, %i.m                    ; 3 uses
  %foldExtExtBinop = fmul <2 x float> %i.h, %i.p
  %i.r = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.s = extractelement <2 x float> %i.p, i64 0
  %i.t = tail call float @llvm.fmuladd.f32(float %i.s, float %i.j, float %i.r)
  %i.u = tail call noundef float @llvm.fmuladd.f32(float %i.q, float %i.e, float %i.t)
  %i.v = fcmp oeq <2 x float> %i.p, zeroinitializer
  %i.w = fdiv <2 x float> splat (float 1.000000e+00), %i.p
  %i.x = select <2 x i1> %i.v, <2 x float> splat (float f0x5D5E0B6B), <2 x float> %i.w ; 3 uses
  %i.y = fcmp oeq float %i.q, 0.000000e+00
  %i.z = fdiv float 1.000000e+00, %i.q
  %i.aa = select i1 %i.y, float f0x5D5E0B6B, float %i.z ; 3 uses
  %i.ab = load float, ptr %4, align 4, !tbaa !40
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.af = load float, ptr %i.ae, align 4, !tbaa !40
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48
  %8 = shufflevector <2 x float> %i.g, <2 x float> %i.f, <4 x i32> <i32 0, i32 1, i32 poison, i32 2>
  %9 = insertelement <4 x float> %8, float %i.d, i64 2
  %10 = shufflevector <2 x float> %i.f, <2 x float> %i.g, <4 x i32> <i32 0, i32 1, i32 poison, i32 2>
  %11 = insertelement <4 x float> %10, float %i.b, i64 2
  %12 = fcmp olt <4 x float> %9, %11
  %13 = shufflevector <2 x float> %i.f, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 0>
  %i.al = insertelement <4 x float> %13, float %i.b, i64 2
  %14 = shufflevector <2 x float> %i.g, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 0>
  %i.am = insertelement <4 x float> %14, float %i.d, i64 2
  %15 = select <4 x i1> %12, <4 x float> %i.al, <4 x float> %i.am
  %16 = load <2 x float>, ptr %5, align 4, !tbaa !40
  %17 = insertelement <4 x float> poison, float %i.af, i64 2
  %18 = insertelement <4 x float> %17, float %i.ab, i64 3
  %19 = shufflevector <2 x float> %16, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %20 = shufflevector <4 x float> %19, <4 x float> %18, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %21 = fadd <4 x float> %15, %20                 ; 2 uses
  %22 = load <3 x float>, ptr %i.ag, align 8, !tbaa !40 ; 2 uses
  %23 = shufflevector <3 x float> %22, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 3 uses
  %24 = load <3 x float>, ptr %i.ai, align 8, !tbaa !40 ; 2 uses
  %25 = shufflevector <3 x float> %24, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 2 uses
  %26 = load <3 x float>, ptr %i.aj, align 8, !tbaa !40 ; 2 uses
  %27 = shufflevector <3 x float> %26, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.an = fcmp olt <4 x float> %21, %23
  %i.ao = select <4 x i1> %i.an, <4 x float> %23, <4 x float> %21 ; 2 uses
  %i.ap = fcmp olt <4 x float> %25, %i.ao
  %i.aq = select <4 x i1> %i.ap, <4 x float> %25, <4 x float> %i.ao
  %i.ar = fsub <4 x float> %i.aq, %23
  %i.as = fmul <4 x float> %i.ar, %27
  %i.at = fadd <4 x float> %i.as, <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float -0.000000e+00>
  %i.au = fptoui <4 x float> %i.at to <4 x i16>   ; 2 uses
  %28 = shufflevector <2 x float> %i.f, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %29 = insertelement <2 x float> %28, float %i.b, i64 1 ; 2 uses
  %i.av = shufflevector <2 x float> %i.g, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.aw = insertelement <2 x float> %i.av, float %i.d, i64 1 ; 2 uses
  %30 = fcmp olt <2 x float> %29, %i.aw
  %i.ax = select <2 x i1> %30, <2 x float> %29, <2 x float> %i.aw
  %i.ay = load <2 x float>, ptr %i.ac, align 4, !tbaa !40
  %i.az = fadd <2 x float> %i.ax, %i.ay           ; 2 uses
  %i.ba = shufflevector <3 x float> %22, <3 x float> poison, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.bb = fcmp olt <2 x float> %i.az, %i.ba
  %i.bc = select <2 x i1> %i.bb, <2 x float> %i.ba, <2 x float> %i.az ; 2 uses
  %i.bd = shufflevector <3 x float> %24, <3 x float> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.be = fcmp olt <2 x float> %i.bd, %i.bc
  %i.bf = select <2 x i1> %i.be, <2 x float> %i.bd, <2 x float> %i.bc
  %i.bg = fsub <2 x float> %i.bf, %i.ba
  %i.bh = shufflevector <3 x float> %26, <3 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.bi = fmul <2 x float> %i.bg, %i.bh
  %i.bj = fptoui <2 x float> %i.bi to <2 x i16>
  %i.bk = and <2 x i16> %i.bj, splat (i16 -2)
  %i.bl = or <4 x i16> %i.au, <i16 1, i16 1, i16 1, i16 poison>
  %i.bm = and <4 x i16> %i.au, <i16 poison, i16 poison, i16 poison, i16 -2>
  %i.bn = shufflevector <4 x i16> %i.bl, <4 x i16> %i.bm, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  %i.bo = icmp slt i32 %6, %7
  br i1 %i.bo, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_Z8btSetMinIfEvRT_RKS0_.exit.i
  %i.bp = fcmp uge float %i.aa, 0.000000e+00      ; 2 uses
  %i.bq = fcmp uge <2 x float> %i.x, zeroinitializer ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !31
  %i.bt = sext i32 %6 to i64
  %i.bu = getelementptr inbounds [16 x i8], ptr %i.bs, i64 %i.bt
  br label %bb.a

bb.a:                                             ; preds = %.lr.ph, %bb.g
  %.0159 = phi i32 [ %6, %.lr.ph ], [ %.1, %bb.g ] ; 2 uses
  %.048158 = phi i32 [ 0, %.lr.ph ], [ %i.bv, %bb.g ]
  %.049156 = phi ptr [ %i.bu, %.lr.ph ], [ %.150, %bb.g ] ; 9 uses
  %i.bv = add nuw nsw i32 %.048158, 1             ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.049156, i64 8
  %i.bx = load <2 x i16>, ptr %i.bw, align 2, !tbaa !50
  %i.by = icmp ugt <2 x i16> %i.bk, %i.bx         ; 2 uses
  %i.bz = load <4 x i16>, ptr %.049156, align 2, !tbaa !50 ; 2 uses
  %i.ca = icmp ult <4 x i16> %i.bn, %i.bz
  %i.cb = icmp ugt <4 x i16> %i.bn, %i.bz
  %i.cc = shufflevector <4 x i1> %i.ca, <4 x i1> %i.cb, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.cd = bitcast <4 x i1> %i.cc to i4
  %i.ce = icmp ne i4 %i.cd, 0
  %i.cf = extractelement <2 x i1> %i.by, i64 1
  %op.rdx = or i1 %i.ce, %i.cf
  %i.cg = extractelement <2 x i1> %i.by, i64 0
  %op.rdx202 = or i1 %op.rdx, %i.cg
  %i.ch = getelementptr inbounds nuw i8, ptr %.049156, i64 12 ; 3 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !54
  %i.cj = icmp sgt i32 %i.ci, -1                  ; 2 uses
  br i1 %op.rdx202, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ck = getelementptr inbounds nuw i8, ptr %.049156, i64 6
  %i.cl = load <2 x i16>, ptr %.049156, align 4, !tbaa !50
  %i.cm = uitofp <2 x i16> %i.cl to <2 x float>
  %i.cn = load <2 x float>, ptr %i.aj, align 8, !tbaa !40 ; 2 uses
  %i.co = fdiv <2 x float> %i.cm, %i.cn
  %i.cp = load <2 x float>, ptr %i.ag, align 8, !tbaa !40 ; 2 uses
  %i.cq = fadd <2 x float> %i.co, %i.cp
  %i.cr = load <2 x float>, ptr %4, align 4, !tbaa !40
  %i.cs = fadd <2 x float> %i.cr, %i.cq           ; 2 uses
  %i.ct = load <2 x float>, ptr %5, align 4, !tbaa !40
  %i.cu = load <2 x i16>, ptr %i.ck, align 2, !tbaa !50
  %i.cv = uitofp <2 x i16> %i.cu to <2 x float>
  %i.cw = fdiv <2 x float> %i.cv, %i.cn
  %i.cx = fadd <2 x float> %i.cp, %i.cw
  %i.cy = fadd <2 x float> %i.ct, %i.cx           ; 2 uses
  %i.cz = shufflevector <2 x float> %i.cy, <2 x float> %i.cs, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.da = shufflevector <2 x float> %i.cs, <2 x float> %i.cy, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.db = select <2 x i1> %i.bq, <2 x float> %i.cz, <2 x float> %i.da
  %i.dc = load <2 x float>, ptr %2, align 4, !tbaa !40 ; 2 uses
  %i.dd = fsub <2 x float> %i.db, %i.dc
  %i.de = fmul <2 x float> %i.x, %i.dd            ; 3 uses
  %i.df = select <2 x i1> %i.bq, <2 x float> %i.da, <2 x float> %i.cz
  %i.dg = fsub <2 x float> %i.df, %i.dc
  %i.dh = fmul <2 x float> %i.x, %i.dg            ; 3 uses
  %i.di = extractelement <2 x float> %i.dh, i64 0 ; 2 uses
  %i.dj = extractelement <2 x float> %i.dh, i64 1 ; 2 uses
  %i.dk = fcmp ogt float %i.di, %i.dj
  %i.dl = extractelement <2 x float> %i.de, i64 0 ; 2 uses
  %i.dm = extractelement <2 x float> %i.de, i64 1 ; 2 uses
  %i.dn = fcmp ogt float %i.dm, %i.dl
  %or.cond.i = select i1 %i.dk, i1 true, i1 %i.dn
  br i1 %or.cond.i, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.do = getelementptr inbounds nuw i8, ptr %.049156, i64 4
  %i.dp = load i16, ptr %i.do, align 4, !tbaa !50
  %i.dq = insertelement <2 x i16> poison, i16 %i.dp, i64 0
  %i.dr = getelementptr inbounds nuw i8, ptr %.049156, i64 10
  %i.ds = load i16, ptr %i.dr, align 2, !tbaa !50
  %i.dt = insertelement <2 x i16> %i.dq, i16 %i.ds, i64 1
  %i.du = uitofp <2 x i16> %i.dt to <2 x float>
  %i.dv = load float, ptr %i.ak, align 8, !tbaa !40
  %i.dw = insertelement <2 x float> poison, float %i.dv, i64 0
  %i.dx = shufflevector <2 x float> %i.dw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dy = fdiv <2 x float> %i.du, %i.dx
  %i.dz = load float, ptr %i.ah, align 8, !tbaa !40
  %i.ea = insertelement <2 x float> poison, float %i.dz, i64 0
  %i.eb = shufflevector <2 x float> %i.ea, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ec = fadd <2 x float> %i.dy, %i.eb
  %i.ed = load float, ptr %i.ad, align 4, !tbaa !40
  %i.ee = insertelement <2 x float> poison, float %i.ed, i64 0
  %i.ef = load float, ptr %i.ae, align 4, !tbaa !40
  %i.eg = insertelement <2 x float> %i.ee, float %i.ef, i64 1
  %i.eh = fadd <2 x float> %i.eg, %i.ec           ; 2 uses
  %i.ei = shufflevector <2 x float> %i.de, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ej = fcmp olt <2 x float> %i.dh, %i.ei       ; 2 uses
  %i.ek = extractelement <2 x i1> %i.ej, i64 0
  %i.el = select i1 %i.ek, float %i.dm, float %i.di ; 3 uses
  %i.em = extractelement <2 x i1> %i.ej, i64 1
  %.052.i = select i1 %i.em, float %i.dj, float %i.dl ; 3 uses
  %.sroa.12.0.vec.extract = extractelement <2 x float> %i.eh, i64 0 ; 2 uses
  %.sroa.26.0.vec.extract = extractelement <2 x float> %i.eh, i64 1 ; 2 uses
  %i.en = select i1 %i.bp, float %.sroa.12.0.vec.extract, float %.sroa.26.0.vec.extract
  %i.eo = load float, ptr %i.c, align 4, !tbaa !40 ; 2 uses
  %i.ep = fsub float %i.en, %i.eo
  %i.eq = fmul float %i.aa, %i.ep                 ; 3 uses
  %i.er = select i1 %i.bp, float %.sroa.26.0.vec.extract, float %.sroa.12.0.vec.extract
  %i.es = fsub float %i.er, %i.eo
  %i.et = fmul float %i.aa, %i.es                 ; 3 uses
  %i.eu = fcmp ogt float %i.el, %i.et
  %i.ev = fcmp ogt float %i.eq, %.052.i
  %or.cond60.i = select i1 %i.eu, i1 true, i1 %i.ev
  br i1 %or.cond60.i, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ew = fcmp ogt float %i.eq, %i.el
  %i.ex = select i1 %i.ew, float %i.eq, float %i.el
  %i.ey = fcmp olt float %i.et, %.052.i
  %.1.i = select i1 %i.ey, float %i.et, float %.052.i
  %i.ez = fcmp olt float %i.ex, %i.u
  %i.fa = fcmp ogt float %.1.i, 0.000000e+00
  %i.fb = select i1 %i.ez, i1 %i.fa, i1 false     ; 2 uses
  %or.cond = and i1 %i.cj, %i.fb
  br i1 %or.cond, label %.thread142, label %.thread

.thread142:                                       ; preds = %bb.d
  %i.fc = load i32, ptr %i.ch, align 4, !tbaa !54 ; 2 uses
  %i.fd = ashr i32 %i.fc, 21
  %i.fe = and i32 %i.fc, 2097151
  %i.ff = load ptr, ptr %1, align 8, !tbaa !8
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %i.fh = load ptr, ptr %i.fg, align 8
  tail call void %i.fh(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.fd, i32 noundef %i.fe)
  br label %bb.e

.thread:                                          ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  %.051138 = phi i1 [ %i.fb, %bb.d ], [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.c ]
  %or.cond3 = or i1 %i.cj, %.051138
  br i1 %or.cond3, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.thread142, %.thread
  %i.fi = getelementptr inbounds nuw i8, ptr %.049156, i64 16
  %i.fj = add nsw i32 %.0159, 1
  br label %bb.g

bb.f:                                             ; preds = %.thread
  %i.fk = load i32, ptr %i.ch, align 4, !tbaa !54 ; 2 uses
  %i.fl = sub nsw i32 0, %i.fk
  %i.fm = sext i32 %i.fl to i64
  %i.fn = getelementptr inbounds [16 x i8], ptr %.049156, i64 %i.fm
  %i.fo = sub nsw i32 %.0159, %i.fk
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.150 = phi ptr [ %i.fi, %bb.e ], [ %i.fn, %bb.f ]
  %.1 = phi i32 [ %i.fj, %bb.e ], [ %i.fo, %bb.f ] ; 2 uses
  %i.fp = icmp slt i32 %.1, %7
  br i1 %i.fp, label %bb.a, label %._crit_edge

._crit_edge:                                      ; preds = %bb.g, %_Z8btSetMinIfEvRT_RKS0_.exit.i
  %.048.lcssa = phi i32 [ 0, %_Z8btSetMinIfEvRT_RKS0_.exit.i ], [ %i.bv, %bb.g ] ; 2 uses
  %i.fq = load i32, ptr @maxIterations, align 4, !tbaa !4
  %i.fr = icmp slt i32 %i.fq, %.048.lcssa
  br i1 %i.fr, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge
  store i32 %.048.lcssa, ptr @maxIterations, align 4, !tbaa !4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZNK14btQuantizedBvh25reportRayOverlappingNodexEP21btNodeOverlapCallbackRK9btVector3S4_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(244) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %3) local_unnamed_addr #4 align 2 {
bb.a:
  %4 = alloca %class.btVector3, align 4           ; 5 uses
  %5 = alloca %class.btVector3, align 4           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.b = load i8, ptr %i.a, align 8, !tbaa !25, !range !44, !noundef !45
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.e = load i32, ptr %i.d, align 4, !tbaa !48
  call void @_ZNK14btQuantizedBvh36walkStacklessQuantizedTreeAgainstRayEP21btNodeOverlapCallbackRK9btVector3S4_S4_S4_ii(ptr noundef nonnull readonly align 8 dereferenceable(244) %0, ptr noundef %1, ptr noundef nonnull readonly align 4 dereferenceable(16) %2, ptr noundef nonnull readonly align 4 dereferenceable(16) %3, ptr noundef nonnull readonly align 4 dereferenceable(16) %4, ptr noundef nonnull readonly align 4 dereferenceable(16) %5, i32 noundef 0, i32 noundef %i.e)
  br label %_ZNK14btQuantizedBvh29reportBoxCastOverlappingNodexEP21btNodeOverlapCallbackRK9btVector3S4_S4_S4_.exit

bb.c:                                             ; preds = %bb.a
  call void @_ZNK14btQuantizedBvh27walkStacklessTreeAgainstRayEP21btNodeOverlapCallbackRK9btVector3S4_S4_S4_ii(ptr noundef nonnull readonly align 8 dereferenceable(244) %0, ptr noundef %1, ptr noundef nonnull readonly align 4 dereferenceable(16) %2, ptr noundef nonnull readonly align 4 dereferenceable(16) %3, ptr noundef nonnull readonly align 4 dereferenceable(16) %4, ptr noundef nonnull readonly align 4 dereferenceable(16) %5, i32 poison, i32 poison)
  br label %_ZNK14btQuantizedBvh29reportBoxCastOverlappingNodexEP21btNodeOverlapCallbackRK9btVector3S4_S4_S4_.exit

_ZNK14btQuantizedBvh29reportBoxCastOverlappingNodexEP21btNodeOverlapCallbackRK9btVector3S4_S4_S4_.exit: ; preds = %bb.b, %bb.c
end_hunk_0
