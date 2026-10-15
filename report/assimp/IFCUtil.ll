Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/IFCUtil?download=true
inline.NumInlined: 1656
inline.NumDeleted: 752
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN6Assimp3IFC11TempOpening9TransformERK12aiMatrix4x4tIdE:bb.a
  %i.cc = load double, ptr %i.bv, align 8, !noalias !32 ; 2 uses
  %i.cd = load double, ptr %i.bw, align 8, !noalias !32 ; 2 uses
  %i.ce = load <8 x double>, ptr %1, align 8, !noalias !32 ; 4 uses
  %i.cf = insertelement <2 x double> poison, double %i.cc, i64 0
  %i.cg = shufflevector <2 x double> %i.cf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ch = shufflevector <8 x double> %i.ce, <8 x double> poison, <2 x i32> <i32 1, i32 5>
  %i.ci = fmul <2 x double> %i.cg, %i.ch
  %i.cj = shufflevector <8 x double> %i.ce, <8 x double> poison, <2 x i32> <i32 0, i32 4>
  %i.ck = insertelement <2 x double> poison, double %i.cb, i64 0
  %i.cl = shufflevector <2 x double> %i.ck, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cj, <2 x double> %i.cl, <2 x double> %i.ci)
  %i.cn = shufflevector <8 x double> %i.ce, <8 x double> poison, <2 x i32> <i32 2, i32 6>
  %i.co = insertelement <2 x double> poison, double %i.cd, i64 0
  %i.cp = shufflevector <2 x double> %i.co, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cn, <2 x double> %i.cp, <2 x double> %i.cm)
  %i.cr = shufflevector <8 x double> %i.ce, <8 x double> poison, <2 x i32> <i32 3, i32 7>
  %i.cs = fadd <2 x double> %i.cq, %i.cr
  %i.ct = fmul double %i.cc, %i.by
  %i.cu = tail call double @llvm.fmuladd.f64(double %i.bx, double %i.cb, double %i.ct)
  %i.cv = tail call double @llvm.fmuladd.f64(double %i.bz, double %i.cd, double %i.cu)
  %i.cw = fadd double %i.ca, %i.cv
  store <2 x double> %i.cs, ptr %.sroa.05.09.i, align 8
  store double %i.cw, ptr %i.bw, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 24 ; 2 uses
  %.not.i = icmp eq ptr %i.cx, %i.e
  br i1 %.not.i, label %_ZN6Assimp3IFC8TempMesh9TransformERK12aiMatrix4x4tIdE.exit, label %scalar.ph, !llvm.loop !19

_ZN6Assimp3IFC8TempMesh9TransformERK12aiMatrix4x4tIdE.exit: ; preds = %scalar.ph, %middle.block, %bb.b, %bb.a
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cz = load ptr, ptr %i.cy, align 8            ; 3 uses
  %.not9 = icmp eq ptr %i.cz, null
  br i1 %.not9, label %_ZN6Assimp3IFC8TempMesh9TransformERK12aiMatrix4x4tIdE.exit8, label %bb.c

bb.c:                                             ; preds = %_ZN6Assimp3IFC8TempMesh9TransformERK12aiMatrix4x4tIdE.exit
  %i.da = load ptr, ptr %i.cz, align 8            ; 9 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.dc = load ptr, ptr %i.db, align 8            ; 3 uses
  %.not8.i4 = icmp eq ptr %i.da, %i.dc
  br i1 %.not8.i4, label %_ZN6Assimp3IFC8TempMesh9TransformERK12aiMatrix4x4tIdE.exit8, label %.lr.ph.i5

.lr.ph.i5:                                        ; preds = %bb.c
  %i.dd = ptrtoaddr ptr %i.dc to i64
  %i.de = ptrtoaddr ptr %i.da to i64
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.dq = add i64 %i.dd, -24
  %i.dr = sub i64 %i.dq, %i.de                    ; 2 uses
  %i.ds = udiv i64 %i.dr, 24                      ; 2 uses
  %i.dt = add nuw nsw i64 %i.ds, 1                ; 2 uses
  %min.iters.check45 = icmp ult i64 %i.dr, 72
  br i1 %min.iters.check45, label %scalar.ph44.preheader, label %vector.memcheck46

vector.memcheck46:                                ; preds = %.lr.ph.i5
  %i.du = mul nuw i64 %i.ds, 24
  %i.dv = getelementptr i8, ptr %i.da, i64 %i.du
  %i.dw = getelementptr i8, ptr %i.dv, i64 24
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 96
  %bound047 = icmp ult ptr %i.da, %i.dx
  %bound148 = icmp ult ptr %1, %i.dw
  %found.conflict49 = and i1 %bound047, %bound148
  br i1 %found.conflict49, label %scalar.ph44.preheader, label %vector.ph50

vector.ph50:                                      ; preds = %vector.memcheck46
  %n.vec51 = and i64 %i.dt, 2305843009213693950   ; 3 uses
  %i.dy = mul i64 %n.vec51, 24
  %i.dz = getelementptr i8, ptr %i.da, i64 %i.dy
  %i.ea = load <1 x double>, ptr %1, align 8
  %broadcast.splat59 = shufflevector <1 x double> %i.ea, <1 x double> poison, <2 x i32> zeroinitializer
  %i.eb = load <1 x double>, ptr %i.df, align 8
  %broadcast.splat57 = shufflevector <1 x double> %i.eb, <1 x double> poison, <2 x i32> zeroinitializer
  %i.ec = load <1 x double>, ptr %i.dg, align 8
  %broadcast.splat61 = shufflevector <1 x double> %i.ec, <1 x double> poison, <2 x i32> zeroinitializer
  %i.ed = load <2 x double>, ptr %i.dh, align 8
  %i.ee = load <1 x double>, ptr %i.di, align 8
  %broadcast.splat67 = shufflevector <1 x double> %i.ee, <1 x double> poison, <2 x i32> zeroinitializer
  %i.ef = load <1 x double>, ptr %i.dj, align 8
  %broadcast.splat65 = shufflevector <1 x double> %i.ef, <1 x double> poison, <2 x i32> zeroinitializer
  %i.eg = load <1 x double>, ptr %i.dk, align 8
  %broadcast.splat69 = shufflevector <1 x double> %i.eg, <1 x double> poison, <2 x i32> zeroinitializer
  %i.eh = load <2 x double>, ptr %i.dl, align 8
  %i.ei = load <1 x double>, ptr %i.dm, align 8
  %broadcast.splat75 = shufflevector <1 x double> %i.ei, <1 x double> poison, <2 x i32> zeroinitializer
  %i.ej = load <1 x double>, ptr %i.dn, align 8
  %broadcast.splat73 = shufflevector <1 x double> %i.ej, <1 x double> poison, <2 x i32> zeroinitializer
  %i.ek = load <1 x double>, ptr %i.do, align 8
  %broadcast.splat77 = shufflevector <1 x double> %i.ek, <1 x double> poison, <2 x i32> zeroinitializer
  %i.el = load <1 x double>, ptr %i.dp, align 8
  %broadcast.splat79 = shufflevector <1 x double> %i.el, <1 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body52

vector.body52:                                    ; preds = %vector.body52, %vector.ph50
  %index53 = phi i64 [ 0, %vector.ph50 ], [ %index.next81, %vector.body52 ] ; 2 uses
  %i.em = mul i64 %index53, 24                    ; 2 uses
  %next.gep54 = getelementptr i8, ptr %i.da, i64 %i.em ; 4 uses
  %i.en = getelementptr i8, ptr %i.da, i64 %i.em  ; 3 uses
  %next.gep55 = getelementptr i8, ptr %i.en, i64 24
  %i.eo = load double, ptr %next.gep54, align 8, !alias.scope !33, !noalias !34
  %i.ep = load double, ptr %next.gep55, align 8, !alias.scope !33, !noalias !34
  %i.eq = insertelement <2 x double> poison, double %i.eo, i64 0
  %i.er = insertelement <2 x double> %i.eq, double %i.ep, i64 1 ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %next.gep54, i64 8
  %i.et = getelementptr i8, ptr %i.en, i64 32
  %i.eu = load double, ptr %i.es, align 8, !alias.scope !33, !noalias !34
  %i.ev = load double, ptr %i.et, align 8, !alias.scope !33, !noalias !34
  %i.ew = insertelement <2 x double> poison, double %i.eu, i64 0
  %i.ex = insertelement <2 x double> %i.ew, double %i.ev, i64 1 ; 3 uses
  %i.ey = fmul <2 x double> %broadcast.splat57, %i.ex
  %i.ez = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat59, <2 x double> %i.er, <2 x double> %i.ey)
  %i.fa = getelementptr inbounds nuw i8, ptr %next.gep54, i64 16
  %i.fb = getelementptr i8, ptr %i.en, i64 40
  %i.fc = load double, ptr %i.fa, align 8, !alias.scope !33, !noalias !34
  %i.fd = load double, ptr %i.fb, align 8, !alias.scope !33, !noalias !34
  %i.fe = insertelement <2 x double> poison, double %i.fc, i64 0
  %i.ff = insertelement <2 x double> %i.fe, double %i.fd, i64 1 ; 3 uses
  %i.fg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat61, <2 x double> %i.ff, <2 x double> %i.ez)
  %i.fh = fmul <2 x double> %i.ex, %broadcast.splat65
  %i.fi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat67, <2 x double> %i.er, <2 x double> %i.fh)
  %i.fj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat69, <2 x double> %i.ff, <2 x double> %i.fi)
  %i.fk = fmul <2 x double> %i.ex, %broadcast.splat73
  %i.fl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat75, <2 x double> %i.er, <2 x double> %i.fk)
  %i.fm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat77, <2 x double> %i.ff, <2 x double> %i.fl)
  %i.fn = fadd <2 x double> %broadcast.splat79, %i.fm
  %i.fo = shufflevector <2 x double> %i.fg, <2 x double> %i.eh, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.fp = shufflevector <2 x double> %i.ed, <2 x double> %i.fj, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.fq = fadd <4 x double> %i.fo, %i.fp
  %i.fr = shufflevector <2 x double> %i.fn, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %interleaved.vec80 = shufflevector <4 x double> %i.fq, <4 x double> %i.fr, <6 x i32> <i32 0, i32 2, i32 4, i32 1, i32 3, i32 5>
  store <6 x double> %interleaved.vec80, ptr %next.gep54, align 8, !alias.scope !33, !noalias !35
  %index.next81 = add nuw i64 %index53, 2         ; 2 uses
  %i.fs = icmp eq i64 %index.next81, %n.vec51
  br i1 %i.fs, label %middle.block82, label %vector.body52, !llvm.loop !25

middle.block82:                                   ; preds = %vector.body52
  %cmp.n83 = icmp eq i64 %i.dt, %n.vec51
  br i1 %cmp.n83, label %_ZN6Assimp3IFC8TempMesh9TransformERK12aiMatrix4x4tIdE.exit8, label %scalar.ph44.preheader

scalar.ph44.preheader:                            ; preds = %vector.memcheck46, %.lr.ph.i5, %middle.block82
  %.sroa.05.09.i6.ph = phi ptr [ %i.da, %vector.memcheck46 ], [ %i.da, %.lr.ph.i5 ], [ %i.dz, %middle.block82 ]
  br label %scalar.ph44

scalar.ph44:                                      ; preds = %scalar.ph44.preheader, %scalar.ph44
  %.sroa.05.09.i6 = phi ptr [ %i.gv, %scalar.ph44 ], [ %.sroa.05.09.i6.ph, %scalar.ph44.preheader ] ; 5 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i6, i64 8
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i6, i64 16 ; 2 uses
  %i.fv = load double, ptr %i.dm, align 8, !noalias !36
  %i.fw = load double, ptr %i.dn, align 8, !noalias !36
  %i.fx = load double, ptr %i.do, align 8, !noalias !36
  %i.fy = load double, ptr %i.dp, align 8, !noalias !36
  %i.fz = load double, ptr %.sroa.05.09.i6, align 8, !noalias !36 ; 2 uses
  %i.ga = load double, ptr %i.ft, align 8, !noalias !36 ; 2 uses
  %i.gb = load double, ptr %i.fu, align 8, !noalias !36 ; 2 uses
  %i.gc = load <8 x double>, ptr %1, align 8, !noalias !36 ; 4 uses
  %i.gd = insertelement <2 x double> poison, double %i.ga, i64 0
  %i.ge = shufflevector <2 x double> %i.gd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gf = shufflevector <8 x double> %i.gc, <8 x double> poison, <2 x i32> <i32 1, i32 5>
  %i.gg = fmul <2 x double> %i.ge, %i.gf
  %i.gh = shufflevector <8 x double> %i.gc, <8 x double> poison, <2 x i32> <i32 0, i32 4>
  %i.gi = insertelement <2 x double> poison, double %i.fz, i64 0
  %i.gj = shufflevector <2 x double> %i.gi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gh, <2 x double> %i.gj, <2 x double> %i.gg)
  %i.gl = shufflevector <8 x double> %i.gc, <8 x double> poison, <2 x i32> <i32 2, i32 6>
  %i.gm = insertelement <2 x double> poison, double %i.gb, i64 0
  %i.gn = shufflevector <2 x double> %i.gm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.go = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gl, <2 x double> %i.gn, <2 x double> %i.gk)
  %i.gp = shufflevector <8 x double> %i.gc, <8 x double> poison, <2 x i32> <i32 3, i32 7>
  %i.gq = fadd <2 x double> %i.go, %i.gp
  %i.gr = fmul double %i.ga, %i.fw
  %i.gs = tail call double @llvm.fmuladd.f64(double %i.fv, double %i.fz, double %i.gr)
  %i.gt = tail call double @llvm.fmuladd.f64(double %i.fx, double %i.gb, double %i.gs)
  %i.gu = fadd double %i.fy, %i.gt
  store <2 x double> %i.gq, ptr %.sroa.05.09.i6, align 8
  store double %i.gu, ptr %i.fu, align 8
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i6, i64 24 ; 2 uses
  %.not.i7 = icmp eq ptr %i.gv, %i.dc
  br i1 %.not.i7, label %_ZN6Assimp3IFC8TempMesh9TransformERK12aiMatrix4x4tIdE.exit8, label %scalar.ph44, !llvm.loop !26

_ZN6Assimp3IFC8TempMesh9TransformERK12aiMatrix4x4tIdE.exit8: ; preds = %scalar.ph44, %middle.block82, %bb.c, %_ZN6Assimp3IFC8TempMesh9TransformERK12aiMatrix4x4tIdE.exit
  %i.gw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.gx = load <2 x double>, ptr %i.gw, align 8
  %i.gy = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.gz = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ha = load double, ptr %i.gz, align 8
  %i.hb = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.hc = load double, ptr %i.hb, align 8
  %i.hd = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.he = load double, ptr %i.hd, align 8
  %i.hf = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.hg = load double, ptr %i.hf, align 8
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %2 = load <2 x double>, ptr %1, align 8         ; 2 uses
  %i.hk = load <2 x double>, ptr %i.gy, align 8   ; 2 uses
  %3 = load double, ptr %i.hh, align 8, !noalias !37 ; 2 uses
  %i.hl = load double, ptr %i.hi, align 8, !noalias !37 ; 2 uses
  %i.hm = load double, ptr %i.hj, align 8, !noalias !37 ; 2 uses
  %i.hn = shufflevector <2 x double> %2, <2 x double> %i.hk, <2 x i32> <i32 1, i32 3>
  %i.ho = insertelement <2 x double> poison, double %i.hl, i64 0
  %i.hp = shufflevector <2 x double> %i.ho, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hq = fmul <2 x double> %i.hn, %i.hp
  %i.hr = shufflevector <2 x double> %2, <2 x double> %i.hk, <2 x i32> <i32 0, i32 2>
  %i.hs = insertelement <2 x double> poison, double %3, i64 0
  %i.ht = shufflevector <2 x double> %i.hs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hr, <2 x double> %i.ht, <2 x double> %i.hq)
  %i.hv = insertelement <2 x double> %i.gx, double %i.ha, i64 1
  %i.hw = insertelement <2 x double> poison, double %i.hm, i64 0
  %i.hx = shufflevector <2 x double> %i.hw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hv, <2 x double> %i.hx, <2 x double> %i.hu)
  %i.hz = fmul double %i.he, %i.hl
  %i.ia = tail call double @llvm.fmuladd.f64(double %i.hc, double %3, double %i.hz)
  %i.ib = tail call double @llvm.fmuladd.f64(double %i.hg, double %i.hm, double %i.ia)
  store <2 x double> %i.hy, ptr %i.hh, align 8
  store double %i.ib, ptr %i.hj, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN6Assimp3IFC8TempMesh9TransformERK12aiMatrix4x4tIdE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %.not8 = icmp eq ptr %i.a, %i.c
  br i1 %.not8, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = ptrtoaddr ptr %i.c to i64
  %i.e = ptrtoaddr ptr %i.a to i64
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.q = add i64 %i.d, -24
  %i.r = sub i64 %i.q, %i.e                       ; 2 uses
  %i.s = udiv i64 %i.r, 24                        ; 2 uses
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.r, 72
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.u = mul nuw i64 %i.s, 24
  %i.v = getelementptr i8, ptr %i.a, i64 %i.u
  %i.w = getelementptr i8, ptr %i.v, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 96
  %bound0 = icmp ult ptr %i.a, %i.x
  %bound1 = icmp ult ptr %1, %i.w
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.t, 2305843009213693950      ; 3 uses
  %i.y = mul i64 %n.vec, 24
  %i.z = getelementptr i8, ptr %i.a, i64 %i.y
  %i.aa = load <1 x double>, ptr %1, align 8
  %broadcast.splat14 = shufflevector <1 x double> %i.aa, <1 x double> poison, <2 x i32> zeroinitializer
  %i.ab = load <1 x double>, ptr %i.f, align 8
  %broadcast.splat = shufflevector <1 x double> %i.ab, <1 x double> poison, <2 x i32> zeroinitializer
  %i.ac = load <1 x double>, ptr %i.g, align 8
  %broadcast.splat16 = shufflevector <1 x double> %i.ac, <1 x double> poison, <2 x i32> zeroinitializer
  %i.ad = load <2 x double>, ptr %i.h, align 8
  %i.ae = load <1 x double>, ptr %i.i, align 8
  %broadcast.splat22 = shufflevector <1 x double> %i.ae, <1 x double> poison, <2 x i32> zeroinitializer
  %i.af = load <1 x double>, ptr %i.j, align 8
  %broadcast.splat20 = shufflevector <1 x double> %i.af, <1 x double> poison, <2 x i32> zeroinitializer
  %i.ag = load <1 x double>, ptr %i.k, align 8
  %broadcast.splat24 = shufflevector <1 x double> %i.ag, <1 x double> poison, <2 x i32> zeroinitializer
  %i.ah = load <2 x double>, ptr %i.l, align 8
  %i.ai = load <1 x double>, ptr %i.m, align 8
  %broadcast.splat30 = shufflevector <1 x double> %i.ai, <1 x double> poison, <2 x i32> zeroinitializer
  %i.aj = load <1 x double>, ptr %i.n, align 8
  %broadcast.splat28 = shufflevector <1 x double> %i.aj, <1 x double> poison, <2 x i32> zeroinitializer
  %i.ak = load <1 x double>, ptr %i.o, align 8
  %broadcast.splat32 = shufflevector <1 x double> %i.ak, <1 x double> poison, <2 x i32> zeroinitializer
  %i.al = load <1 x double>, ptr %i.p, align 8
  %broadcast.splat34 = shufflevector <1 x double> %i.al, <1 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.am = mul i64 %index, 24                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.a, i64 %i.am ; 4 uses
  %i.an = getelementptr i8, ptr %i.a, i64 %i.am   ; 3 uses
  %next.gep12 = getelementptr i8, ptr %i.an, i64 24
  %i.ao = load double, ptr %next.gep, align 8, !alias.scope !45, !noalias !46
  %i.ap = load double, ptr %next.gep12, align 8, !alias.scope !45, !noalias !46
  %i.aq = insertelement <2 x double> poison, double %i.ao, i64 0
  %i.ar = insertelement <2 x double> %i.aq, double %i.ap, i64 1 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %next.gep, i64 8
  %i.at = getelementptr i8, ptr %i.an, i64 32
  %i.au = load double, ptr %i.as, align 8, !alias.scope !45, !noalias !46
  %i.av = load double, ptr %i.at, align 8, !alias.scope !45, !noalias !46
  %i.aw = insertelement <2 x double> poison, double %i.au, i64 0
  %i.ax = insertelement <2 x double> %i.aw, double %i.av, i64 1 ; 3 uses
  %i.ay = fmul <2 x double> %broadcast.splat, %i.ax
  %i.az = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat14, <2 x double> %i.ar, <2 x double> %i.ay)
  %i.ba = getelementptr inbounds nuw i8, ptr %next.gep, i64 16
  %i.bb = getelementptr i8, ptr %i.an, i64 40
  %i.bc = load double, ptr %i.ba, align 8, !alias.scope !45, !noalias !46
  %i.bd = load double, ptr %i.bb, align 8, !alias.scope !45, !noalias !46
  %i.be = insertelement <2 x double> poison, double %i.bc, i64 0
  %i.bf = insertelement <2 x double> %i.be, double %i.bd, i64 1 ; 3 uses
  %i.bg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat16, <2 x double> %i.bf, <2 x double> %i.az)
  %i.bh = fmul <2 x double> %i.ax, %broadcast.splat20
  %i.bi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat22, <2 x double> %i.ar, <2 x double> %i.bh)
  %i.bj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat24, <2 x double> %i.bf, <2 x double> %i.bi)
  %i.bk = fmul <2 x double> %i.ax, %broadcast.splat28
  %i.bl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat30, <2 x double> %i.ar, <2 x double> %i.bk)
  %i.bm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat32, <2 x double> %i.bf, <2 x double> %i.bl)
  %i.bn = fadd <2 x double> %broadcast.splat34, %i.bm
  %i.bo = shufflevector <2 x double> %i.bg, <2 x double> %i.ah, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.bp = shufflevector <2 x double> %i.ad, <2 x double> %i.bj, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.bq = fadd <4 x double> %i.bo, %i.bp
  %i.br = shufflevector <2 x double> %i.bn, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <4 x double> %i.bq, <4 x double> %i.br, <6 x i32> <i32 0, i32 2, i32 4, i32 1, i32 3, i32 5>
  store <6 x double> %interleaved.vec, ptr %next.gep, align 8, !alias.scope !45, !noalias !47
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bs = icmp eq i64 %index.next, %n.vec
  br i1 %i.bs, label %middle.block, label %vector.body, !llvm.loop !43

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.sroa.05.09.ph = phi ptr [ %i.a, %vector.memcheck ], [ %i.a, %.lr.ph ], [ %i.z, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
  ret void

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.sroa.05.09 = phi ptr [ %i.cv, %scalar.ph ], [ %.sroa.05.09.ph, %scalar.ph.preheader ] ; 5 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.05.09, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.05.09, i64 16 ; 2 uses
  %i.bv = load double, ptr %i.m, align 8, !noalias !48
  %i.bw = load double, ptr %i.n, align 8, !noalias !48
  %i.bx = load double, ptr %i.o, align 8, !noalias !48
  %i.by = load double, ptr %i.p, align 8, !noalias !48
  %i.bz = load double, ptr %.sroa.05.09, align 8, !noalias !48 ; 2 uses
  %i.ca = load double, ptr %i.bt, align 8, !noalias !48 ; 2 uses
  %i.cb = load double, ptr %i.bu, align 8, !noalias !48 ; 2 uses
  %i.cc = load <8 x double>, ptr %1, align 8, !noalias !48 ; 4 uses
  %i.cd = insertelement <2 x double> poison, double %i.ca, i64 0
  %i.ce = shufflevector <2 x double> %i.cd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cf = shufflevector <8 x double> %i.cc, <8 x double> poison, <2 x i32> <i32 1, i32 5>
  %i.cg = fmul <2 x double> %i.ce, %i.cf
  %i.ch = shufflevector <8 x double> %i.cc, <8 x double> poison, <2 x i32> <i32 0, i32 4>
  %i.ci = insertelement <2 x double> poison, double %i.bz, i64 0
  %i.cj = shufflevector <2 x double> %i.ci, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ck = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ch, <2 x double> %i.cj, <2 x double> %i.cg)
  %i.cl = shufflevector <8 x double> %i.cc, <8 x double> poison, <2 x i32> <i32 2, i32 6>
  %i.cm = insertelement <2 x double> poison, double %i.cb, i64 0
  %i.cn = shufflevector <2 x double> %i.cm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.co = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cl, <2 x double> %i.cn, <2 x double> %i.ck)
  %i.cp = shufflevector <8 x double> %i.cc, <8 x double> poison, <2 x i32> <i32 3, i32 7>
  %i.cq = fadd <2 x double> %i.co, %i.cp
  %i.cr = fmul double %i.ca, %i.bw
  %i.cs = tail call double @llvm.fmuladd.f64(double %i.bv, double %i.bz, double %i.cr)
  %i.ct = tail call double @llvm.fmuladd.f64(double %i.bx, double %i.cb, double %i.cs)
  %i.cu = fadd double %i.by, %i.ct
  store <2 x double> %i.cq, ptr %.sroa.05.09, align 8
  store double %i.cu, ptr %i.bu, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.05.09, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.cv, %i.c
  br i1 %.not, label %._crit_edge, label %scalar.ph, !llvm.loop !44
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN6Assimp3IFC8TempMesh6ToMeshEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::unique_ptr", align 8   ; 5 uses
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.e = tail call noalias noundef nonnull dereferenceable(1320) ptr @_Znwm(i64 noundef 1320) #27 ; 10 uses
  store i32 0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 5 uses
  store i32 0, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 224
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 1272
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 1312
  store ptr null, ptr %i.k, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(204) %i.h, i8 0, i64 204, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1044) %i.i, i8 0, i64 1044, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.j, i8 0, i64 36, i1 false)
  store ptr %i.e, ptr %1, align 8
  %i.l = load ptr, ptr %i.b, align 8
  %i.m = load ptr, ptr %0, align 8
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
end_hunk_0
begin_hunk_1_@_ZN6Assimp3IFC16AssignMatrixAxesER12aiMatrix4x4tIdERK10aiVector3tIdES7_S7_:bb.a
  store double %i.p, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.s = load double, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  store double %i.s, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.v = load double, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 80
  store double %i.v, ptr %i.w, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3IFC20ConvertAxisPlacementER12aiMatrix4x4tIdERKNS0_10Schema_2x319IfcAxis2Placement3DE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(104) %1) local_unnamed_addr #7 {
bb.a:
  %.sroa.024 = alloca double, align 8             ; 9 uses
  %.sroa.625 = alloca double, align 8             ; 6 uses
  %.sroa.8 = alloca double, align 8               ; 6 uses
  %2 = alloca %class.aiVector3t, align 8          ; 7 uses
  %3 = alloca %class.aiVector3t, align 8          ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.024)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.625)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x317IfcCartesianPointEEcvRKS4_Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  store double 0.000000e+00, ptr %.sroa.024, align 8
  store double 0.000000e+00, ptr %.sroa.625, align 8
  store double 0.000000e+00, ptr %.sroa.8, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8              ; 7 uses
  %.not.i = icmp eq ptr %i.e, %i.f
  br i1 %.not.i, label %_ZN6Assimp3IFC21ConvertCartesianPointER10aiVector3tIdERKNS0_10Schema_2x317IfcCartesianPointE.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3                   ; 3 uses
  %xtraiter = and i64 %i.j, 3                     ; 3 uses
  %i.k = icmp ult i64 %i.j, 4
  br i1 %i.k, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.j, -4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.07.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.y, %.lr.ph.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.07.i
  %i.m = load double, ptr %i.l, align 8
  store double %i.m, ptr %.sroa.024, align 8
  %i.n = or disjoint i64 %.07.i, 1                ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.n
  %i.p = load double, ptr %i.o, align 8
  %i.q = trunc i64 %i.n to i32
  %cond40 = icmp eq i32 %i.q, 1
  %spec.select41 = select i1 %cond40, ptr %.sroa.625, ptr %.sroa.024
  store double %i.p, ptr %spec.select41, align 8
  %i.r = or disjoint i64 %.07.i, 2                ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.r
  %i.t = load double, ptr %i.s, align 8
  %i.u = trunc i64 %i.r to i32
  %cond = icmp eq i32 %i.u, 2
  %spec.select = select i1 %cond, ptr %.sroa.8, ptr %.sroa.024
  store double %i.t, ptr %spec.select, align 8
  %i.v = or disjoint i64 %.07.i, 3
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.v
  %i.x = load double, ptr %i.w, align 8
  store double %i.x, ptr %.sroa.024, align 8
  %i.y = add nuw i64 %.07.i, 4                    ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN6Assimp3IFC21ConvertCartesianPointER10aiVector3tIdERKNS0_10Schema_2x317IfcCartesianPointE.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !1

_ZN6Assimp3IFC21ConvertCartesianPointER10aiVector3tIdERKNS0_10Schema_2x317IfcCartesianPointE.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6Assimp3IFC21ConvertCartesianPointER10aiVector3tIdERKNS0_10Schema_2x317IfcCartesianPointE.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN6Assimp3IFC21ConvertCartesianPointER10aiVector3tIdERKNS0_10Schema_2x317IfcCartesianPointE.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.07.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.y, %_ZN6Assimp3IFC21ConvertCartesianPointER10aiVector3tIdERKNS0_10Schema_2x317IfcCartesianPointE.exit.loopexit.unr-lcssa ]
  %lcmp.mod39 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod39)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %_ZN10aiVector3tIdEixEj.exit.i.epil, %.lr.ph.i.epil.preheader
  %.07.i.epil = phi i64 [ %i.ac, %_ZN10aiVector3tIdEixEj.exit.i.epil ], [ %.07.i.epil.init, %.lr.ph.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_ZN10aiVector3tIdEixEj.exit.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.07.i.epil
  %i.aa = load double, ptr %i.z, align 8
  %i.ab = trunc i64 %.07.i.epil to i32
  switch i32 %i.ab, label %_ZN10aiVector3tIdEixEj.exit.i.epil [
    i32 2, label %bb.c
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph.i.epil
  br label %_ZN10aiVector3tIdEixEj.exit.i.epil

bb.c:                                             ; preds = %.lr.ph.i.epil
  br label %_ZN10aiVector3tIdEixEj.exit.i.epil

_ZN10aiVector3tIdEixEj.exit.i.epil:               ; preds = %bb.c, %bb.b, %.lr.ph.i.epil
  %.0.i.i.epil = phi ptr [ %.sroa.625, %bb.b ], [ %.sroa.8, %bb.c ], [ %.sroa.024, %.lr.ph.i.epil ]
  store double %i.aa, ptr %.0.i.i.epil, align 8
  %i.ac = add nuw i64 %.07.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN6Assimp3IFC21ConvertCartesianPointER10aiVector3tIdERKNS0_10Schema_2x317IfcCartesianPointE.exit, label %.lr.ph.i.epil, !llvm.loop !190

_ZN6Assimp3IFC21ConvertCartesianPointER10aiVector3tIdERKNS0_10Schema_2x317IfcCartesianPointE.exit: ; preds = %_ZN6Assimp3IFC21ConvertCartesianPointER10aiVector3tIdERKNS0_10Schema_2x317IfcCartesianPointE.exit.loopexit.unr-lcssa, %_ZN10aiVector3tIdEixEj.exit.i.epil, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  store double 1.000000e+00, ptr %i.ad, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ag = load i8, ptr %i.af, align 8, !range !12, !noundef !10
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN6Assimp3IFC21ConvertCartesianPointER10aiVector3tIdERKNS0_10Schema_2x317IfcCartesianPointE.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.aj = tail call noundef nonnull align 8 dereferenceable(72) ptr @_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x312IfcDirectionEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ai)
  call void @_ZN6Assimp3IFC16ConvertDirectionER10aiVector3tIdERKNS0_10Schema_2x312IfcDirectionE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(72) %i.aj)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN6Assimp3IFC21ConvertCartesianPointER10aiVector3tIdERKNS0_10Schema_2x317IfcCartesianPointE.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.al = load i8, ptr %i.ak, align 8, !range !12, !noundef !10
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.f, label %_ZN10aiVector3tIdE9NormalizeEv.exit

bb.f:                                             ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ao = tail call noundef nonnull align 8 dereferenceable(72) ptr @_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x312IfcDirectionEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.an)
  call void @_ZN6Assimp3IFC16ConvertDirectionER10aiVector3tIdERKNS0_10Schema_2x312IfcDirectionE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(72) %i.ao)
  %.pre = load double, ptr %3, align 8            ; 2 uses
  %i.ap = load <2 x double>, ptr %i.ae, align 8   ; 2 uses
  %i.aq = shufflevector <2 x double> %i.ap, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ar = insertelement <2 x double> %i.aq, double %.pre, i64 1
  br label %_ZN10aiVector3tIdE9NormalizeEv.exit

_ZN10aiVector3tIdE9NormalizeEv.exit:              ; preds = %bb.f, %bb.e
  %i.as = phi double [ %.pre, %bb.f ], [ 1.000000e+00, %bb.e ] ; 2 uses
  %i.at = phi <2 x double> [ %i.ar, %bb.f ], [ <double 0.000000e+00, double 1.000000e+00>, %bb.e ] ; 3 uses
  %i.au = phi <2 x double> [ %i.ap, %bb.f ], [ zeroinitializer, %bb.e ] ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 8
  %foldExtExtBinop = fmul <2 x double> %i.au, %i.au
  %i.aw = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.ax = tail call double @llvm.fmuladd.f64(double %i.as, double %i.as, double %i.aw)
  %i.ay = extractelement <2 x double> %i.at, i64 0 ; 2 uses
  %i.az = tail call noundef double @llvm.fmuladd.f64(double %i.ay, double %i.ay, double %i.ax)
  %i.ba = tail call noundef double @sqrt(double noundef %i.az) #26 ; 2 uses
  %i.bb = load double, ptr %2, align 8            ; 4 uses
  %i.bc = fcmp oeq double %i.ba, 0.000000e+00
  %i.bd = fdiv double 1.000000e+00, %i.ba
  %i.be = insertelement <2 x double> poison, double %i.bd, i64 0
  %i.bf = shufflevector <2 x double> %i.be, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bg = fmul <2 x double> %i.at, %i.bf
  %i.bh = fmul <2 x double> %i.au, %i.bf
  %i.bi = insertelement <2 x i1> poison, i1 %i.bc, i64 0
  %i.bj = shufflevector <2 x i1> %i.bi, <2 x i1> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bk = select <2 x i1> %i.bj, <2 x double> %i.au, <2 x double> %i.bh ; 2 uses
  %i.bl = select <2 x i1> %i.bj, <2 x double> %i.at, <2 x double> %i.bg ; 3 uses
  %i.bm = load <2 x double>, ptr %i.av, align 8   ; 6 uses
  %i.bn = extractelement <2 x double> %i.bm, i64 0 ; 2 uses
  %foldExtExtBinop35 = fmul <2 x double> %i.bk, %i.bm
  %i.bo = extractelement <2 x double> %foldExtExtBinop35, i64 0
  %i.bp = extractelement <2 x double> %i.bl, i64 1
  %i.bq = tail call double @llvm.fmuladd.f64(double %i.bp, double %i.bb, double %i.bo)
  %i.br = extractelement <2 x double> %i.bm, i64 1 ; 2 uses
  %i.bs = extractelement <2 x double> %i.bl, i64 0
  %i.bt = tail call noundef double @llvm.fmuladd.f64(double %i.bs, double %i.br, double %i.bq)
  %i.bu = shufflevector <2 x double> %i.bm, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.bv = insertelement <2 x double> %i.bu, double %i.bb, i64 1 ; 2 uses
  %i.bw = insertelement <2 x double> poison, double %i.bt, i64 0
  %i.bx = shufflevector <2 x double> %i.bw, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.by = fmul <2 x double> %i.bv, %i.bx
  %i.bz = fmul <2 x double> %i.bm, %i.bx
  %i.ca = fsub <2 x double> %i.bl, %i.by          ; 4 uses
  %i.cb = fsub <2 x double> %i.bk, %i.bz          ; 4 uses
  %foldExtExtBinop37 = fmul <2 x double> %i.cb, %i.cb
  %i.cc = extractelement <2 x double> %foldExtExtBinop37, i64 0
  %i.cd = extractelement <2 x double> %i.ca, i64 1 ; 2 uses
  %i.ce = tail call double @llvm.fmuladd.f64(double %i.cd, double %i.cd, double %i.cc)
  %i.cf = extractelement <2 x double> %i.ca, i64 0 ; 2 uses
  %i.cg = tail call noundef double @llvm.fmuladd.f64(double %i.cf, double %i.cf, double %i.ce)
  %i.ch = tail call noundef double @sqrt(double noundef %i.cg) #26 ; 2 uses
  %i.ci = fcmp oeq double %i.ch, 0.000000e+00
  %i.cj = fdiv double 1.000000e+00, %i.ch
  %i.ck = insertelement <2 x double> poison, double %i.cj, i64 0
  %i.cl = shufflevector <2 x double> %i.ck, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cm = fmul <2 x double> %i.cl, %i.ca
  %i.cn = fmul <2 x double> %i.cl, %i.cb
  %i.co = insertelement <2 x i1> poison, i1 %i.ci, i64 0
  %i.cp = shufflevector <2 x i1> %i.co, <2 x i1> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cq = select <2 x i1> %i.cp, <2 x double> %i.cb, <2 x double> %i.cn ; 2 uses
  %i.cr = select <2 x i1> %i.cp, <2 x double> %i.ca, <2 x double> %i.cm ; 3 uses
  %i.cs = fneg <2 x double> %i.cq
  %i.ct = fmul <2 x double> %i.bv, %i.cs
  %i.cu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bm, <2 x double> %i.cr, <2 x double> %i.ct) ; 2 uses
  %i.cv = extractelement <2 x double> %i.cr, i64 1 ; 2 uses
  %i.cw = fneg double %i.cv
  %i.cx = fmul double %i.bn, %i.cw
  %i.cy = extractelement <2 x double> %i.cq, i64 0 ; 2 uses
  %i.cz = tail call double @llvm.fmuladd.f64(double %i.bb, double %i.cy, double %i.cx)
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.da, i8 0, i64 24, i1 false)
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  store double 1.000000e+00, ptr %.sroa.9.0..sroa_idx.i, align 8
  %.sroa.024.0..sroa.024.0..sroa.024.0..sroa.024.0. = load double, ptr %.sroa.024, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %.sroa.024.0..sroa.024.0..sroa.024.0..sroa.024.0., ptr %i.db, align 8
  %.sroa.625.0..sroa.625.0..sroa.625.0..sroa.625.8. = load double, ptr %.sroa.625, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 56
  store double %.sroa.625.0..sroa.625.0..sroa.625.0..sroa.625.8., ptr %i.dc, align 8
  %.sroa.8.0..sroa.8.0..sroa.8.0..sroa.8.16. = load double, ptr %.sroa.8, align 8
  store double %.sroa.8.0..sroa.8.0..sroa.8.0..sroa.8.16., ptr %.sroa.8.0..sroa_idx.i, align 8
  store double %i.cv, ptr %0, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %i.cy, ptr %i.dd, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.df = extractelement <2 x double> %i.cr, i64 0
  store double %i.df, ptr %i.de, align 8
  %i.dg = extractelement <2 x double> %i.cu, i64 0
  store double %i.dg, ptr %.sroa.4.0..sroa_idx.i, align 8
  %4 = extractelement <2 x double> %i.cu, i64 1
  store double %4, ptr %.sroa.5.0..sroa_idx.i, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 72
  store double %i.cz, ptr %i.dh, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.bb, ptr %i.di, align 8
  store double %i.bn, ptr %.sroa.6.0..sroa_idx.i, align 8
  store double %i.br, ptr %.sroa.7.0..sroa_idx.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.024)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.625)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(88) ptr @_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x317IfcCartesianPointEEcvRKS4_Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.30", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.32, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6Assimp4STEP9TypeErrorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmm(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef -1, i64 noundef 1152921504606846975)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN6Assimp4STEP9TypeErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
          to label %bb.k unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.i = load i64, ptr %i.g, align 8
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br i1 %.0, label %bb.f, label %bb.j

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br i1 %.0, label %bb.f, label %bb.j

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn10 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.c) #26
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %bb.h, label %_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZNK6Assimp4STEP10LazyObject8LazyInitEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a)
  %.pre.i.i = load ptr, ptr %i.k, align 8
  br label %_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i

_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i:          ; preds = %bb.h, %bb.g
  %i.m = phi ptr [ %.pre.i.i, %bb.h ], [ %i.l, %bb.g ]
  %i.n = tail call ptr @__dynamic_cast(ptr nonnull %i.m, ptr nonnull @_ZTIN6Assimp4STEP6ObjectE, ptr nonnull @_ZTIN6Assimp3IFC10Schema_2x317IfcCartesianPointE, i64 -1) #26 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.i, label %_ZNK6Assimp4STEP10LazyObject2ToINS_3IFC10Schema_2x317IfcCartesianPointEEERKT_v.exit

bb.i:                                             ; preds = %_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i
  tail call void @__cxa_bad_cast() #29
  unreachable

_ZNK6Assimp4STEP10LazyObject2ToINS_3IFC10Schema_2x317IfcCartesianPointEEERKT_v.exit: ; preds = %_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i
  ret ptr %i.n

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn9 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn10, %bb.f ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn9

bb.k:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(72) ptr @_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x312IfcDirectionEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.30", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.32, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6Assimp4STEP9TypeErrorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmm(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef -1, i64 noundef 1152921504606846975)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN6Assimp4STEP9TypeErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
          to label %bb.k unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.i = load i64, ptr %i.g, align 8
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br i1 %.0, label %bb.f, label %bb.j

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br i1 %.0, label %bb.f, label %bb.j

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn10 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.c) #26
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %bb.h, label %_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZNK6Assimp4STEP10LazyObject8LazyInitEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a)
  %.pre.i.i = load ptr, ptr %i.k, align 8
  br label %_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i

_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i:          ; preds = %bb.h, %bb.g
  %i.m = phi ptr [ %.pre.i.i, %bb.h ], [ %i.l, %bb.g ]
  %i.n = tail call ptr @__dynamic_cast(ptr nonnull %i.m, ptr nonnull @_ZTIN6Assimp4STEP6ObjectE, ptr nonnull @_ZTIN6Assimp3IFC10Schema_2x312IfcDirectionE, i64 -1) #26 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.i, label %_ZNK6Assimp4STEP10LazyObject2ToINS_3IFC10Schema_2x312IfcDirectionEEERKT_v.exit

bb.i:                                             ; preds = %_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i
  tail call void @__cxa_bad_cast() #29
  unreachable

_ZNK6Assimp4STEP10LazyObject2ToINS_3IFC10Schema_2x312IfcDirectionEEERKT_v.exit: ; preds = %_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i
  ret ptr %i.n

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn9 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn10, %bb.f ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn9

bb.k:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3IFC20ConvertAxisPlacementER12aiMatrix4x4tIdERKNS0_10Schema_2x319IfcAxis2Placement2DE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) local_unnamed_addr #7 {
bb.a:
  %.sroa.08 = alloca double, align 8              ; 9 uses
  %.sroa.69 = alloca double, align 8              ; 6 uses
  %.sroa.8 = alloca double, align 8               ; 6 uses
end_hunk_1
