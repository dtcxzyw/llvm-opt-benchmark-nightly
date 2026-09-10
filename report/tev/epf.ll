Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/epf?download=true
inline.NumInlined: 28
inline.NumDeleted: 18
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZZNK3jxl10AcStrategy16covered_blocks_xEvE4kLut = comdat any

$_ZZNK3jxl10AcStrategy16covered_blocks_yEvE4kLut = comdat any

@_ZZNK3jxl10AcStrategy16covered_blocks_xEvE4kLut = linkonce_odr hidden local_unnamed_addr constant [27 x i8] c"\01\01\01\01\02\04\01\02\01\04\02\04\01\01\01\01\01\01\08\04\08\10\08\10 \10 ", comdat, align 16
@_ZZNK3jxl10AcStrategy16covered_blocks_yEvE4kLut = linkonce_odr hidden local_unnamed_addr constant [27 x i8] c"\01\01\01\01\02\04\02\01\04\01\04\02\01\01\01\01\01\01\08\08\04\10\10\08  \10", comdat, align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden range(i32 0, 2) i32 @_ZN3jxl12ComputeSigmaERKNS_10LoopFilterERKNS_5RectTImEEPNS_18PassesDecoderStateE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(137) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load i32, ptr %i.a, align 4, !tbaa !22
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.loopexit133, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 2808 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !170  ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1020
  %i.f = load float, ptr %i.e, align 4, !tbaa !171
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 2896 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !172
  %i.i = lshr i64 %i.h, 2                         ; 15 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 1120
  %i.k = load i64, ptr %i.j, align 8, !tbaa !172
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !174  ; 2 uses
  %.not153 = icmp eq i64 %i.m, 0
  br i1 %.not153, label %.loopexit133, label %.lr.ph151

.lr.ph151:                                        ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 2920
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 200
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 176
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %.idx = shl i64 %i.i, 3
  %i.u = load i64, ptr %i.r, align 8, !tbaa !175
  br label %.lr.ph151.split

.lr.ph151.split:                                  ; preds = %.lr.ph151, %._crit_edge148
  %i.v = phi i64 [ %i.m, %.lr.ph151 ], [ %i.ba, %._crit_edge148 ]
  %i.w = phi i64 [ %i.u, %.lr.ph151 ], [ %i.bb, %._crit_edge148 ]
  %.0107149 = phi i64 [ 0, %.lr.ph151 ], [ %i.bc, %._crit_edge148 ] ; 4 uses
  %i.x = load i64, ptr %i.n, align 8, !tbaa !176
  %i.y = add i64 %i.x, %.0107149                  ; 4 uses
  %i.z = load ptr, ptr %i.o, align 8, !tbaa !177
  %i.aa = load i64, ptr %i.g, align 8, !tbaa !172
  %i.ab = mul i64 %i.aa, %i.y
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ab ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ac, i64 64) ]
  %i.ad = load i64, ptr %1, align 8, !tbaa !178   ; 4 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.ad ; 6 uses
  %i.af = load ptr, ptr %i.c, align 8, !tbaa !170 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1144
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !177
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 1120
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !172
  %i.ak = mul i64 %i.aj, %i.y
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ak ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.al, i64 64) ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ad
  %i.an = load ptr, ptr %i.p, align 8, !tbaa !177
  %i.ao = load i64, ptr %i.q, align 8, !tbaa !172
  %i.ap = mul i64 %i.ao, %i.y
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ap ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aq, i64 64) ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ad
  %i.as = getelementptr inbounds nuw i8, ptr %i.af, i64 1088
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !177
  %i.au = getelementptr inbounds nuw i8, ptr %i.af, i64 1064
  %i.av = load i64, ptr %i.au, align 8, !tbaa !172
  %i.aw = mul i64 %i.av, %i.y
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.aw ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ax, i64 64) ]
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.ad
  %.not155 = icmp eq i64 %i.w, 0
  br i1 %.not155, label %._crit_edge148, label %.lr.ph147

.lr.ph147:                                        ; preds = %.lr.ph151.split
  %i.az = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 6 uses
  br label %bb.c

._crit_edge148.loopexit:                          ; preds = %bb.f
  %.pre167 = load i64, ptr %i.l, align 8, !tbaa !174
  br label %._crit_edge148

._crit_edge148:                                   ; preds = %._crit_edge148.loopexit, %.lr.ph151.split
  %i.ba = phi i64 [ %.pre167, %._crit_edge148.loopexit ], [ %i.v, %.lr.ph151.split ] ; 2 uses
  %i.bb = phi i64 [ %i.hh, %._crit_edge148.loopexit ], [ 0, %.lr.ph151.split ]
  %i.bc = add nuw i64 %.0107149, 1                ; 2 uses
  %i.bd = icmp ult i64 %i.bc, %i.ba
  br i1 %i.bd, label %.lr.ph151.split, label %.loopexit133, !llvm.loop !9

bb.c:                                             ; preds = %.lr.ph147, %bb.f
  %.0106144 = phi i64 [ 0, %.lr.ph147 ], [ %i.hg, %bb.f ] ; 12 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.0106144
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !180 ; 2 uses
  %i.bg = lshr i8 %i.bf, 1
  %i.bh = zext nneg i8 %i.bg to i64               ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr @_ZZNK3jxl10AcStrategy16covered_blocks_xEvE4kLut, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !180
  %i.bk = zext i8 %i.bj to i64                    ; 4 uses
  %i.bl = trunc i8 %i.bf to i1
  br i1 %i.bl, label %.preheader.preheader, label %bb.f

.preheader.preheader:                             ; preds = %bb.c
  %i.bm = load float, ptr %i.s, align 8, !tbaa !181
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %.0106144
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !182
  %i.bp = sitofp i32 %i.bo to float
  %i.bq = fmul float %i.f, %i.bp
  %i.br = fmul float %i.bq, f0xBF95F61A
  %i.bs = fdiv float %i.bm, %i.br                 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr @_ZZNK3jxl10AcStrategy16covered_blocks_yEvE4kLut, i64 %i.bh
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !180
  %i.bv = zext i8 %i.bu to i64                    ; 4 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %i.bk, i64 1) ; 3 uses
  %umax158 = tail call i64 @llvm.umax.i64(i64 %i.bv, i64 1) ; 5 uses
  %xtraiter = and i64 %umax, 1
  %i.bw = shl nuw i64 1, %i.bh
  %i.bx = and i64 %i.bw, 258383
  %.not186 = icmp eq i64 %i.bx, 0
  %unroll_iter = and i64 %umax, 254
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod174 = trunc i64 %umax to i1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.0105135 = phi i64 [ %i.cr, %._crit_edge ], [ 0, %.preheader.preheader ] ; 3 uses
  %i.by = mul i64 %.0105135, %i.k
  %invariant.gep = getelementptr i8, ptr %i.am, i64 %i.by ; 3 uses
  %i.bz = add nuw nsw i64 %.0105135, 2
  %i.ca = mul i64 %i.bz, %i.i                     ; 3 uses
  br i1 %.not186, label %.preheader.new, label %.epil.preheader

._crit_edge136.split:                             ; preds = %._crit_edge
  %i.cb = load i64, ptr %1, align 8, !tbaa !178   ; 2 uses
  %i.cc = sub i64 0, %i.cb
  %i.cd = icmp eq i64 %.0106144, %i.cc            ; 3 uses
  br i1 %i.cd, label %.lr.ph.preheader, label %.loopexit132

.lr.ph.preheader:                                 ; preds = %._crit_edge136.split
  %xtraiter175 = and i64 %umax158, 3              ; 3 uses
  %i.ce = shl nuw i64 1, %i.bh
  %i.cf = and i64 %i.ce, 260831
  %.not187 = icmp eq i64 %i.cf, 0
  br i1 %.not187, label %.lr.ph.preheader.new, label %.lr.ph.epil.preheader

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter178 = and i64 %umax158, 252
  br label %.lr.ph

._crit_edge.unr-lcssa:                            ; preds = %.preheader.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader
  %.0104134.epil.init = phi i64 [ 0, %.preheader ], [ %i.dp, %._crit_edge.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod174)
  %i.cg = add i64 %.0104134.epil.init, %.0106144  ; 2 uses
  %gep.epil = getelementptr i8, ptr %invariant.gep, i64 %i.cg
  %i.ch = load i8, ptr %gep.epil, align 1, !tbaa !180
  %i.ci = zext i8 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.ci
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !183
  %i.cl = fmul float %i.bs, %i.ck                 ; 2 uses
  %i.cm = fcmp olt float %i.cl, f0xB8D1B717
  %.sroa.speculated.epil = select i1 %i.cm, float %i.cl, float f0xB8D1B717
  %i.cn = fdiv float 1.000000e+00, %.sroa.speculated.epil
  %i.co = getelementptr [4 x i8], ptr %i.ae, i64 %i.cg
  %i.cp = getelementptr i8, ptr %i.co, i64 8
  %i.cq = getelementptr [4 x i8], ptr %i.cp, i64 %i.ca
  store float %i.cn, ptr %i.cq, align 4, !tbaa !183
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %i.cr = add nuw nsw i64 %.0105135, 1            ; 2 uses
  %exitcond159.not = icmp eq i64 %i.cr, %umax158
  br i1 %exitcond159.not, label %._crit_edge136.split, label %.preheader, !llvm.loop !10

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %.0104134 = phi i64 [ %i.dp, %.preheader.new ], [ 0, %.preheader ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.new ], [ 0, %.preheader ]
  %i.cs = add i64 %.0104134, %.0106144            ; 2 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.cs
  %i.ct = load i8, ptr %gep, align 1, !tbaa !180
  %i.cu = zext i8 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.cu
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !183
  %i.cx = fmul float %i.bs, %i.cw                 ; 2 uses
  %i.cy = fcmp olt float %i.cx, f0xB8D1B717
  %.sroa.speculated = select i1 %i.cy, float %i.cx, float f0xB8D1B717
  %i.cz = fdiv float 1.000000e+00, %.sroa.speculated
  %i.da = getelementptr [4 x i8], ptr %i.ae, i64 %i.cs
  %i.db = getelementptr i8, ptr %i.da, i64 8
  %i.dc = getelementptr [4 x i8], ptr %i.db, i64 %i.ca
  store float %i.cz, ptr %i.dc, align 4, !tbaa !183
  %i.dd = or disjoint i64 %.0104134, 1
  %i.de = add i64 %i.dd, %.0106144                ; 2 uses
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 %i.de
  %i.df = load i8, ptr %gep.1, align 1, !tbaa !180
  %i.dg = zext i8 %i.df to i64
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.dg
  %i.di = load float, ptr %i.dh, align 4, !tbaa !183
  %i.dj = fmul float %i.bs, %i.di                 ; 2 uses
  %i.dk = fcmp olt float %i.dj, f0xB8D1B717
  %.sroa.speculated.1 = select i1 %i.dk, float %i.dj, float f0xB8D1B717
  %i.dl = fdiv float 1.000000e+00, %.sroa.speculated.1
  %i.dm = getelementptr [4 x i8], ptr %i.ae, i64 %i.de
  %i.dn = getelementptr i8, ptr %i.dm, i64 8
  %i.do = getelementptr [4 x i8], ptr %i.dn, i64 %i.ca
  store float %i.dl, ptr %i.do, align 4, !tbaa !183
  %i.dp = add nuw nsw i64 %.0104134, 2            ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.preheader.new, !llvm.loop !11

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.0103139 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ek, %.lr.ph ] ; 5 uses
  %niter179 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter179.next.3, %.lr.ph ]
  %i.dq = or disjoint i64 %.0103139, 2
  %i.dr = mul i64 %i.dq, %i.i
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.dr ; 2 uses
  %i.dt = getelementptr inbounds i8, ptr %i.ds, i64 -4
  %i.du = load float, ptr %i.ds, align 4, !tbaa !183
  store float %i.du, ptr %i.dt, align 4, !tbaa !183
  %i.dv = or disjoint i64 %.0103139, 3
  %i.dw = mul i64 %i.dv, %i.i
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.dw ; 2 uses
  %i.dy = getelementptr inbounds i8, ptr %i.dx, i64 -4
  %i.dz = load float, ptr %i.dx, align 4, !tbaa !183
  store float %i.dz, ptr %i.dy, align 4, !tbaa !183
  %i.ea = add nuw nsw i64 %.0103139, 4
  %i.eb = mul i64 %i.ea, %i.i
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.eb ; 2 uses
  %i.ed = getelementptr inbounds i8, ptr %i.ec, i64 -4
  %i.ee = load float, ptr %i.ec, align 4, !tbaa !183
  store float %i.ee, ptr %i.ed, align 4, !tbaa !183
  %i.ef = add nuw nsw i64 %.0103139, 5
  %i.eg = mul i64 %i.ef, %i.i
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.eg ; 2 uses
  %i.ei = getelementptr inbounds i8, ptr %i.eh, i64 -4
  %i.ej = load float, ptr %i.eh, align 4, !tbaa !183
  store float %i.ej, ptr %i.ei, align 4, !tbaa !183
  %i.ek = add nuw nsw i64 %.0103139, 4            ; 2 uses
  %niter179.next.3 = add nuw i64 %niter179, 4     ; 2 uses
  %niter179.ncmp.3 = icmp eq i64 %niter179.next.3, %unroll_iter178
  br i1 %niter179.ncmp.3, label %.loopexit132.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !12

.loopexit132.loopexit.unr-lcssa:                  ; preds = %.lr.ph
  %lcmp.mod176.not = icmp eq i64 %xtraiter175, 0
  br i1 %lcmp.mod176.not, label %.loopexit132, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit132.loopexit.unr-lcssa, %.lr.ph.preheader
  %.0103139.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ek, %.loopexit132.loopexit.unr-lcssa ]
  %lcmp.mod177 = icmp ne i64 %xtraiter175, 0
  tail call void @llvm.assume(i1 %lcmp.mod177)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.0103139.epil = phi i64 [ %i.eq, %.lr.ph.epil ], [ %.0103139.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.el = add nuw nsw i64 %.0103139.epil, 2
  %i.em = mul i64 %i.el, %i.i
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.em ; 2 uses
  %i.eo = getelementptr inbounds i8, ptr %i.en, i64 -4
  %i.ep = load float, ptr %i.en, align 4, !tbaa !183
  store float %i.ep, ptr %i.eo, align 4, !tbaa !183
  %i.eq = add nuw nsw i64 %.0103139.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter175
  br i1 %epil.iter.cmp.not, label %.loopexit132, label %.lr.ph.epil, !llvm.loop !13

.loopexit132:                                     ; preds = %.loopexit132.loopexit.unr-lcssa, %.lr.ph.epil, %._crit_edge136.split
  %i.er = add i64 %.0106144, %i.bk
  %i.es = add i64 %i.er, %i.cb
  %i.et = load ptr, ptr %i.c, align 8, !tbaa !170 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 80
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !185
  %i.ew = icmp eq i64 %i.es, %i.ev
  br i1 %i.ew, label %.lr.ph142, label %.thread

.lr.ph142:                                        ; preds = %.loopexit132
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %.0106144
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %i.bk ; 5 uses
  %xtraiter180 = and i64 %umax158, 3              ; 3 uses
  %i.ez = shl nuw i64 1, %i.bh
  %i.fa = and i64 %i.ez, 260831
  %.not188 = icmp eq i64 %i.fa, 0
  br i1 %.not188, label %.lr.ph142.new, label %_ZN3jxl11RightMirrorEPfm.exit.epil.preheader

.lr.ph142.new:                                    ; preds = %.lr.ph142
  %unroll_iter184 = and i64 %umax158, 252
  br label %_ZN3jxl11RightMirrorEPfm.exit

.thread:                                          ; preds = %.loopexit132
  %i.fb = add i64 %.0106144, 2                    ; 2 uses
  %i.fc = select i1 %i.cd, i64 1, i64 %i.fb
  br label %bb.d

_ZN3jxl11RightMirrorEPfm.exit:                    ; preds = %_ZN3jxl11RightMirrorEPfm.exit, %.lr.ph142.new
  %.0102141 = phi i64 [ 0, %.lr.ph142.new ], [ %i.fx, %_ZN3jxl11RightMirrorEPfm.exit ] ; 5 uses
  %niter185 = phi i64 [ 0, %.lr.ph142.new ], [ %niter185.next.3, %_ZN3jxl11RightMirrorEPfm.exit ]
  %i.fd = or disjoint i64 %.0102141, 2
  %i.fe = mul i64 %i.fd, %i.i
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %i.fe ; 2 uses
  %i.fg = getelementptr inbounds i8, ptr %i.ff, i64 -4
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !183
  store float %i.fh, ptr %i.ff, align 4, !tbaa !183
  %i.fi = or disjoint i64 %.0102141, 3
  %i.fj = mul i64 %i.fi, %i.i
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %i.fj ; 2 uses
  %i.fl = getelementptr inbounds i8, ptr %i.fk, i64 -4
  %i.fm = load float, ptr %i.fl, align 4, !tbaa !183
  store float %i.fm, ptr %i.fk, align 4, !tbaa !183
  %i.fn = add nuw nsw i64 %.0102141, 4
  %i.fo = mul i64 %i.fn, %i.i
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %i.fo ; 2 uses
  %i.fq = getelementptr inbounds i8, ptr %i.fp, i64 -4
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !183
  store float %i.fr, ptr %i.fp, align 4, !tbaa !183
  %i.fs = add nuw nsw i64 %.0102141, 5
  %i.ft = mul i64 %i.fs, %i.i
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %i.ft ; 2 uses
  %i.fv = getelementptr inbounds i8, ptr %i.fu, i64 -4
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !183
  store float %i.fw, ptr %i.fu, align 4, !tbaa !183
  %i.fx = add nuw nsw i64 %.0102141, 4            ; 2 uses
  %niter185.next.3 = add nuw i64 %niter185, 4     ; 2 uses
  %niter185.ncmp.3 = icmp eq i64 %niter185.next.3, %unroll_iter184
  br i1 %niter185.ncmp.3, label %._crit_edge143.unr-lcssa, label %_ZN3jxl11RightMirrorEPfm.exit, !llvm.loop !14

._crit_edge143.unr-lcssa:                         ; preds = %_ZN3jxl11RightMirrorEPfm.exit
  %lcmp.mod182.not = icmp eq i64 %xtraiter180, 0
  br i1 %lcmp.mod182.not, label %._crit_edge143, label %_ZN3jxl11RightMirrorEPfm.exit.epil.preheader

_ZN3jxl11RightMirrorEPfm.exit.epil.preheader:     ; preds = %._crit_edge143.unr-lcssa, %.lr.ph142
  %.0102141.epil.init = phi i64 [ 0, %.lr.ph142 ], [ %i.fx, %._crit_edge143.unr-lcssa ]
  %lcmp.mod183 = icmp ne i64 %xtraiter180, 0
  tail call void @llvm.assume(i1 %lcmp.mod183)
  br label %_ZN3jxl11RightMirrorEPfm.exit.epil

_ZN3jxl11RightMirrorEPfm.exit.epil:               ; preds = %_ZN3jxl11RightMirrorEPfm.exit.epil, %_ZN3jxl11RightMirrorEPfm.exit.epil.preheader
  %.0102141.epil = phi i64 [ %.0102141.epil.init, %_ZN3jxl11RightMirrorEPfm.exit.epil.preheader ], [ %i.gd, %_ZN3jxl11RightMirrorEPfm.exit.epil ] ; 2 uses
  %epil.iter181 = phi i64 [ 0, %_ZN3jxl11RightMirrorEPfm.exit.epil.preheader ], [ %epil.iter181.next, %_ZN3jxl11RightMirrorEPfm.exit.epil ]
  %i.fy = add nuw nsw i64 %.0102141.epil, 2
  %i.fz = mul i64 %i.fy, %i.i
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %i.fz ; 2 uses
  %i.gb = getelementptr inbounds i8, ptr %i.ga, i64 -4
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !183
  store float %i.gc, ptr %i.ga, align 4, !tbaa !183
  %i.gd = add nuw nsw i64 %.0102141.epil, 1
  %epil.iter181.next = add i64 %epil.iter181, 1   ; 2 uses
  %epil.iter181.cmp.not = icmp eq i64 %epil.iter181.next, %xtraiter180
  br i1 %epil.iter181.cmp.not, label %._crit_edge143, label %_ZN3jxl11RightMirrorEPfm.exit.epil, !llvm.loop !15

._crit_edge143:                                   ; preds = %_ZN3jxl11RightMirrorEPfm.exit.epil, %._crit_edge143.unr-lcssa
  %i.ge = add i64 %.0106144, 2
  %i.gf = select i1 %i.cd, i64 1, i64 %i.ge
  %i.gg = add i64 %.0106144, 3
  br label %bb.d

bb.d:                                             ; preds = %.thread, %._crit_edge143
  %i.gh = phi i64 [ %i.gf, %._crit_edge143 ], [ %i.fc, %.thread ] ; 3 uses
  %.pn = phi i64 [ %i.gg, %._crit_edge143 ], [ %i.fb, %.thread ]
  %i.gi = add i64 %.pn, %i.bk
  %i.gj = sub i64 %i.gi, %i.gh                    ; 2 uses
  %i.gk = load i64, ptr %i.n, align 8, !tbaa !176 ; 2 uses
  %i.gl = sub i64 0, %i.gk
  %i.gm = icmp eq i64 %.0107149, %i.gl
  br i1 %i.gm, label %.preheader128, label %bb.e

.preheader128:                                    ; preds = %bb.d
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.gh ; 2 uses
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %i.i
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gn, i64 %.idx
  %i.gq = shl i64 %i.gj, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.go, ptr align 4 %i.gp, i64 %i.gq, i1 false)
  %.pre = load i64, ptr %i.n, align 8, !tbaa !176
  %.pre166 = load ptr, ptr %i.c, align 8, !tbaa !170
  br label %bb.e

bb.e:                                             ; preds = %.preheader128, %bb.d
  %i.gr = phi ptr [ %.pre166, %.preheader128 ], [ %i.et, %bb.d ]
  %i.gs = phi i64 [ %.pre, %.preheader128 ], [ %i.gk, %bb.d ]
  %i.gt = add i64 %.0107149, %i.bv
  %i.gu = add i64 %i.gt, %i.gs
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gr, i64 88
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !186
  %i.gx = icmp eq i64 %i.gu, %i.gw
  br i1 %i.gx, label %.preheader127, label %bb.f

.preheader127:                                    ; preds = %bb.e
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.gh ; 2 uses
  %i.gz = add nuw nsw i64 %i.bv, 2
  %i.ha = mul i64 %i.gz, %i.i
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %i.ha
  %i.hc = add nuw nsw i64 %i.bv, 1
  %i.hd = mul i64 %i.hc, %i.i
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %i.hd
  %i.hf = shl i64 %i.gj, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.hb, ptr align 4 %i.he, i64 %i.hf, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %.preheader127, %bb.e, %bb.c
  %i.hg = add nuw i64 %.0106144, 1                ; 2 uses
  %i.hh = load i64, ptr %i.r, align 8, !tbaa !175 ; 2 uses
  %i.hi = icmp ult i64 %i.hg, %i.hh
  br i1 %i.hi, label %bb.c, label %._crit_edge148.loopexit, !llvm.loop !16

.loopexit133:                                     ; preds = %._crit_edge148, %bb.b, %bb.a
  %.sroa.0125.0 = phi i32 [ 1, %bb.a ], [ 0, %bb.b ], [ 0, %._crit_edge148 ]
  ret i32 %.sroa.0125.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = distinct !{!9, !179}
!10 = distinct !{!10, !179}
!11 = distinct !{!11, !179}
!12 = distinct !{!12, !179}
!13 = distinct !{!13, !184}
!14 = distinct !{!14, !179}
!15 = distinct !{!15, !184}
!16 = distinct !{!16, !179}
!17 = !{!"_ZTSN3jxl6FieldsE"}
!18 = !{!"bool", !5, i64 0}
!19 = !{!"float", !5, i64 0}
!20 = !{!"long", !5, i64 0}
!21 = !{!"_ZTSN3jxl10LoopFilterE", !17, i64 0, !18, i64 8, !18, i64 9, !18, i64 10, !19, i64 12, !19, i64 16, !19, i64 20, !19, i64 24, !19, i64 28, !19, i64 32, !6, i64 36, !18, i64 40, !5, i64 44, !18, i64 76, !5, i64 80, !19, i64 92, !19, i64 96, !18, i64 100, !19, i64 104, !19, i64 108, !19, i64 112, !19, i64 116, !19, i64 120, !20, i64 128, !18, i64 136}
!22 = !{!21, !6, i64 36}
!23 = !{!"any pointer", !5, i64 0}
!24 = !{!"p1 _ZTS22JxlMemoryManagerStruct", !23, i64 0}
!25 = !{!"p1 _ZTSN3jxl13CodecMetadataE", !23, i64 0}
!26 = !{!"_ZTSN3jxl15FrameDimensionsE", !20, i64 0, !20, i64 8, !20, i64 16, !20, i64 24, !20, i64 32, !20, i64 40, !20, i64 48, !20, i64 56, !20, i64 64, !20, i64 72, !20, i64 80, !20, i64 88, !20, i64 96, !20, i64 104, !20, i64 112, !20, i64 120, !20, i64 128, !20, i64 136}
!27 = !{!"_ZTSN3jxl13AlignedMemoryE", !23, i64 0, !24, i64 8, !23, i64 16}
!28 = !{!"_ZTSN3jxl6detail9PlaneBaseE", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !20, i64 16, !27, i64 24, !20, i64 48}
!29 = !{!"_ZTSN3jxl5PlaneIhEE", !28, i64 0}
!30 = !{!"p1 omnipotent char", !23, i64 0}
!31 = !{!"_ZTSN3jxl15AcStrategyImageE", !29, i64 0, !30, i64 56, !20, i64 64}
!32 = !{!"p1 float", !23, i64 0}
!33 = !{!"p1 _ZTSN3jxl13QuantEncodingE", !23, i64 0}
!34 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3jxl13QuantEncodingELi0ELb0EEE", !33, i64 0}
!35 = !{!"_ZTSNSt3__117__compressed_pairIPN3jxl13QuantEncodingENS_9allocatorIS2_EEEE", !34, i64 0}
!36 = !{!"_ZTSNSt3__16vectorIN3jxl13QuantEncodingENS_9allocatorIS2_EEEE", !33, i64 0, !33, i64 8, !35, i64 16}
!37 = !{!"_ZTSN3jxl15DequantMatricesE", !6, i64 0, !27, i64 8, !32, i64 32, !32, i64 40, !5, i64 48, !5, i64 60, !5, i64 72, !36, i64 720}
!38 = !{!"p1 _ZTSN3jxl15DequantMatricesE", !23, i64 0}
!39 = !{!"_ZTSN3jxl9QuantizerE", !5, i64 0, !5, i64 16, !6, i64 32, !6, i64 36, !19, i64 40, !19, i64 44, !19, i64 48, !5, i64 52, !38, i64 64}
!40 = !{!"_ZTSN3jxl5PlaneIiEE", !28, i64 0}
!41 = !{!"_ZTSN3jxl5PlaneIaEE", !28, i64 0}
!42 = !{!"_ZTSN3jxl16ColorCorrelationE", !5, i64 0, !6, i64 16, !19, i64 20, !19, i64 24, !19, i64 28, !6, i64 32, !6, i64 36}
!43 = !{!"_ZTSN3jxl19ColorCorrelationMapE", !41, i64 0, !41, i64 56, !42, i64 112}
!44 = !{!"_ZTSNSt3__15arrayIfLm8EEE", !5, i64 0}
!45 = !{!"_ZTSN3jxl11NoiseParamsE", !44, i64 0}
!46 = !{!"p1 _ZTSNSt3__15arrayIN3jxl14ReferenceFrameELm4EEE", !23, i64 0}
!47 = !{!"p1 _ZTSN3jxl13PatchPositionE", !23, i64 0}
!48 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3jxl13PatchPositionELi0ELb0EEE", !47, i64 0}
!49 = !{!"_ZTSNSt3__117__compressed_pairIPN3jxl13PatchPositionENS_9allocatorIS2_EEEE", !48, i64 0}
!50 = !{!"_ZTSNSt3__16vectorIN3jxl13PatchPositionENS_9allocatorIS2_EEEE", !47, i64 0, !47, i64 8, !49, i64 16}
!51 = !{!"p1 _ZTSN3jxl22PatchReferencePositionE", !23, i64 0}
!52 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3jxl22PatchReferencePositionELi0ELb0EEE", !51, i64 0}
!53 = !{!"_ZTSNSt3__117__compressed_pairIPN3jxl22PatchReferencePositionENS_9allocatorIS2_EEEE", !52, i64 0}
!54 = !{!"_ZTSNSt3__16vectorIN3jxl22PatchReferencePositionENS_9allocatorIS2_EEEE", !51, i64 0, !51, i64 8, !53, i64 16}
!55 = !{!"p1 _ZTSN3jxl13PatchBlendingE", !23, i64 0}
!56 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3jxl13PatchBlendingELi0ELb0EEE", !55, i64 0}
!57 = !{!"_ZTSNSt3__117__compressed_pairIPN3jxl13PatchBlendingENS_9allocatorIS2_EEEE", !56, i64 0}
!58 = !{!"_ZTSNSt3__16vectorIN3jxl13PatchBlendingENS_9allocatorIS2_EEEE", !55, i64 0, !55, i64 8, !57, i64 16}
!59 = !{!"p1 _ZTSN3jxl15PatchDictionary13PatchTreeNodeE", !23, i64 0}
!60 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3jxl15PatchDictionary13PatchTreeNodeELi0ELb0EEE", !59, i64 0}
!61 = !{!"_ZTSNSt3__117__compressed_pairIPN3jxl15PatchDictionary13PatchTreeNodeENS_9allocatorIS3_EEEE", !60, i64 0}
!62 = !{!"_ZTSNSt3__16vectorIN3jxl15PatchDictionary13PatchTreeNodeENS_9allocatorIS3_EEEE", !59, i64 0, !59, i64 8, !61, i64 16}
!63 = !{!"p1 long", !23, i64 0}
!64 = !{!"_ZTSNSt3__122__compressed_pair_elemIPmLi0ELb0EEE", !63, i64 0}
!65 = !{!"_ZTSNSt3__117__compressed_pairIPmNS_9allocatorImEEEE", !64, i64 0}
!66 = !{!"_ZTSNSt3__16vectorImNS_9allocatorImEEEE", !63, i64 0, !63, i64 8, !65, i64 16}
!67 = !{!"p1 _ZTSNSt3__14pairImmEE", !23, i64 0}
!68 = !{!"_ZTSNSt3__122__compressed_pair_elemIPNS_4pairImmEELi0ELb0EEE", !67, i64 0}
!69 = !{!"_ZTSNSt3__117__compressed_pairIPNS_4pairImmEENS_9allocatorIS2_EEEE", !68, i64 0}
!70 = !{!"_ZTSNSt3__16vectorINS_4pairImmEENS_9allocatorIS2_EEEE", !67, i64 0, !67, i64 8, !69, i64 16}
!71 = !{!"_ZTSN3jxl15PatchDictionaryE", !24, i64 0, !46, i64 8, !50, i64 16, !54, i64 40, !58, i64 64, !20, i64 88, !62, i64 96, !66, i64 120, !70, i64 144, !70, i64 168}
!72 = !{!"p1 _ZTSN3jxl15QuantizedSplineE", !23, i64 0}
!73 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3jxl15QuantizedSplineELi0ELb0EEE", !72, i64 0}
!74 = !{!"_ZTSNSt3__117__compressed_pairIPN3jxl15QuantizedSplineENS_9allocatorIS2_EEEE", !73, i64 0}
!75 = !{!"_ZTSNSt3__16vectorIN3jxl15QuantizedSplineENS_9allocatorIS2_EEEE", !72, i64 0, !72, i64 8, !74, i64 16}
!76 = !{!"p1 _ZTSN3jxl6Spline5PointE", !23, i64 0}
!77 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3jxl6Spline5PointELi0ELb0EEE", !76, i64 0}
!78 = !{!"_ZTSNSt3__117__compressed_pairIPN3jxl6Spline5PointENS_9allocatorIS3_EEEE", !77, i64 0}
!79 = !{!"_ZTSNSt3__16vectorIN3jxl6Spline5PointENS_9allocatorIS3_EEEE", !76, i64 0, !76, i64 8, !78, i64 16}
!80 = !{!"p1 _ZTSN3jxl13SplineSegmentE", !23, i64 0}
!81 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3jxl13SplineSegmentELi0ELb0EEE", !80, i64 0}
!82 = !{!"_ZTSNSt3__117__compressed_pairIPN3jxl13SplineSegmentENS_9allocatorIS2_EEEE", !81, i64 0}
!83 = !{!"_ZTSNSt3__16vectorIN3jxl13SplineSegmentENS_9allocatorIS2_EEEE", !80, i64 0, !80, i64 8, !82, i64 16}
!84 = !{!"_ZTSN3jxl7SplinesE", !6, i64 0, !75, i64 8, !79, i64 32, !83, i64 56, !66, i64 80, !66, i64 104}
!85 = !{!"_ZTSN3jxl13ImageFeaturesE", !45, i64 0, !71, i64 32, !84, i64 224}
!86 = !{!"p1 int", !23, i64 0}
!87 = !{!"_ZTSNSt3__122__compressed_pair_elemIPjLi0ELb0EEE", !86, i64 0}
!88 = !{!"_ZTSNSt3__117__compressed_pairIPjNS_9allocatorIjEEEE", !87, i64 0}
!89 = !{!"_ZTSNSt3__16vectorIjNS_9allocatorIjEEEE", !86, i64 0, !86, i64 8, !88, i64 16}
!90 = !{!"_ZTSN3jxl6Image3IfEE", !5, i64 0}
!91 = !{!"p1 _ZTSN3jxl6Image3IfEE", !23, i64 0}
!92 = !{!"_ZTSNSt3__122__compressed_pair_elemIPhLi0ELb0EEE", !30, i64 0}
!93 = !{!"_ZTSNSt3__117__compressed_pairIPhNS_9allocatorIhEEEE", !92, i64 0}
!94 = !{!"_ZTSNSt3__16vectorIhNS_9allocatorIhEEEE", !30, i64 0, !30, i64 8, !93, i64 16}
!95 = !{!"_ZTSN3jxl11BlockCtxMapE", !5, i64 0, !89, i64 72, !94, i64 96, !20, i64 120, !20, i64 128}
!96 = !{!"_ZTSNSt3__15arrayIN3jxl14ReferenceFrameELm4EEE", !5, i64 0}
!97 = !{!"_ZTSN3jxl17PassesSharedStateE", !24, i64 0, !25, i64 8, !26, i64 16, !31, i64 160, !37, i64 232, !39, i64 976, !40, i64 1048, !29, i64 1104, !43, i64 1160, !85, i64 1312, !20, i64 1664, !89, i64 1672, !29, i64 1696, !90, i64 1752, !91, i64 1920, !95, i64 1928, !5, i64 2064, !96, i64 2736, !20, i64 2800}
!98 = !{!"p1 _ZTSN3jxl17PassesSharedStateE", !23, i64 0}
!99 = !{!"p1 _ZTSN3jxl19RenderPipelineStageE", !23, i64 0}
!100 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3jxl19RenderPipelineStageELi0ELb0EEE", !99, i64 0}
!101 = !{!"_ZTSNSt3__117__compressed_pairIPN3jxl19RenderPipelineStageENS_14default_deleteIS2_EEEE", !100, i64 0}
!102 = !{!"_ZTSNSt3__110unique_ptrIN3jxl19RenderPipelineStageENS_14default_deleteIS2_EEEE", !101, i64 0}
!103 = !{!"p1 _ZTSN3jxl7ANSCodeE", !23, i64 0}
!104 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3jxl7ANSCodeELi0ELb0EEE", !103, i64 0}
!105 = !{!"_ZTSNSt3__117__compressed_pairIPN3jxl7ANSCodeENS_9allocatorIS2_EEEE", !104, i64 0}
!106 = !{!"_ZTSNSt3__16vectorIN3jxl7ANSCodeENS_9allocatorIS2_EEEE", !103, i64 0, !103, i64 8, !105, i64 16}
!107 = !{!"p1 _ZTSNSt3__16vectorIhNS_9allocatorIhEEEE", !23, i64 0}
!108 = !{!"_ZTSNSt3__122__compressed_pair_elemIPNS_6vectorIhNS_9allocatorIhEEEELi0ELb0EEE", !107, i64 0}
!109 = !{!"_ZTSNSt3__117__compressed_pairIPNS_6vectorIhNS_9allocatorIhEEEENS2_IS4_EEEE", !108, i64 0}
!110 = !{!"_ZTSNSt3__16vectorINS0_IhNS_9allocatorIhEEEENS1_IS3_EEEE", !107, i64 0, !107, i64 8, !109, i64 16}
!111 = !{!"_ZTSN3jxl5PlaneIfEE", !28, i64 0}
!112 = !{!"_ZTS11JxlDataType", !5, i64 0}
!113 = !{!"_ZTS13JxlEndianness", !5, i64 0}
!114 = !{!"_ZTS14JxlPixelFormat", !6, i64 0, !112, i64 4, !113, i64 8, !20, i64 16}
!115 = !{!"_ZTSN3jxl13PixelCallbackE", !23, i64 0, !23, i64 8, !23, i64 16, !23, i64 24}
!116 = !{!"_ZTSN3jxl11ImageOutputE", !114, i64 0, !20, i64 24, !115, i64 32, !23, i64 64, !20, i64 72, !20, i64 80}
!117 = !{!"p1 _ZTSN3jxl11ImageOutputE", !23, i64 0}
!118 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3jxl11ImageOutputELi0ELb0EEE", !117, i64 0}
!119 = !{!"_ZTSNSt3__117__compressed_pairIPN3jxl11ImageOutputENS_9allocatorIS2_EEEE", !118, i64 0}
!120 = !{!"_ZTSNSt3__16vectorIN3jxl11ImageOutputENS_9allocatorIS2_EEEE", !117, i64 0, !117, i64 8, !119, i64 16}
!121 = !{!"_ZTSN3jxl11OrientationE", !5, i64 0}
!122 = !{!"_ZTSNSt3__122__cxx_atomic_base_implIjEE", !5, i64 0}
!123 = !{!"_ZTSNSt3__117__cxx_atomic_implIjNS_22__cxx_atomic_base_implIjEEEE", !122, i64 0}
!124 = !{!"_ZTSNSt3__113__atomic_baseIjLb0EEE", !123, i64 0}
!125 = !{!"_ZTSNSt3__113__atomic_baseIjLb1EEE", !124, i64 0}
!126 = !{!"_ZTSNSt3__16atomicIjEE", !125, i64 0}
!127 = !{!"p1 _ZTSN3jxl7ACImageE", !23, i64 0}
!128 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3jxl7ACImageELi0ELb0EEE", !127, i64 0}
!129 = !{!"_ZTSNSt3__117__compressed_pairIPN3jxl7ACImageENS_14default_deleteIS2_EEEE", !128, i64 0}
!130 = !{!"_ZTSNSt3__110unique_ptrIN3jxl7ACImageENS_14default_deleteIS2_EEEE", !129, i64 0}
!131 = !{!"p1 _ZTSN3jxl14RenderPipelineE", !23, i64 0}
!132 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3jxl14RenderPipelineELi0ELb0EEE", !131, i64 0}
!133 = !{!"_ZTSNSt3__117__compressed_pairIPN3jxl14RenderPipelineENS_14default_deleteIS2_EEEE", !132, i64 0}
!134 = !{!"_ZTSNSt3__110unique_ptrIN3jxl14RenderPipelineENS_14default_deleteIS2_EEEE", !133, i64 0}
!135 = !{!"p1 _ZTSN3jxl4jpeg8JPEGDataE", !23, i64 0}
!136 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3jxl4jpeg8JPEGDataELi0ELb0EEE", !135, i64 0}
!137 = !{!"_ZTSNSt3__117__compressed_pairIPN3jxl4jpeg8JPEGDataENS_14default_deleteIS3_EEEE", !136, i64 0}
!138 = !{!"_ZTSNSt3__110unique_ptrIN3jxl4jpeg8JPEGDataENS_14default_deleteIS3_EEEE", !137, i64 0}
!139 = !{!"_ZTSN3jxl14ColorTransformE", !5, i64 0}
!140 = !{!"_ZTSN3jxl22YCbCrChromaSubsamplingE", !17, i64 0, !5, i64 8, !5, i64 20, !5, i64 21}
!141 = !{!"_ZTSN3jxl11FrameOriginE", !6, i64 0, !6, i64 4}
!142 = !{!"_ZTSN3jxl9BlendModeE", !5, i64 0}
!143 = !{!"_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repE", !5, i64 0}
!144 = !{!"_ZTSNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEE", !143, i64 0}
!145 = !{!"_ZTSNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EE", !144, i64 0}
!146 = !{!"_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE", !145, i64 0}
!147 = !{!"p1 _ZTSN3jxl13ImageMetadataE", !23, i64 0}
!148 = !{!"_ZTSN3jxl3cms10WhitePointE", !5, i64 0}
!149 = !{!"_ZTSN3jxl3cms9PrimariesE", !5, i64 0}
!150 = !{!"_ZTSN3jxl3cms15RenderingIntentE", !5, i64 0}
!151 = !{!"_ZTSN3jxl3cms10ColorSpaceE", !5, i64 0}
!152 = !{!"_ZTSN3jxl3cms16TransferFunctionE", !5, i64 0}
!153 = !{!"_ZTSN3jxl3cms22CustomTransferFunctionE", !18, i64 0, !6, i64 4, !152, i64 8}
!154 = !{!"_ZTSN3jxl3cms8CustomxyE", !6, i64 0, !6, i64 4}
!155 = !{!"_ZTSN3jxl3cms13ColorEncodingE", !148, i64 0, !149, i64 4, !150, i64 8, !18, i64 12, !94, i64 16, !151, i64 40, !18, i64 44, !153, i64 48, !154, i64 60, !154, i64 68, !154, i64 76, !154, i64 84}
!156 = !{!"_ZTSN3jxl8CustomxyE", !17, i64 0, !154, i64 8}
!157 = !{!"_ZTSN3jxl22CustomTransferFunctionE", !17, i64 0, !151, i64 8, !153, i64 12}
!158 = !{!"_ZTSN3jxl13ColorEncodingE", !17, i64 0, !18, i64 8, !18, i64 9, !155, i64 16, !156, i64 112, !157, i64 128, !156, i64 152, !156, i64 168, !156, i64 184}
!159 = !{!"p1 _ZTSN3jxl5PlaneIfEE", !23, i64 0}
!160 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3jxl5PlaneIfEELi0ELb0EEE", !159, i64 0}
!161 = !{!"_ZTSNSt3__117__compressed_pairIPN3jxl5PlaneIfEENS_9allocatorIS3_EEEE", !160, i64 0}
!162 = !{!"_ZTSNSt3__16vectorIN3jxl5PlaneIfEENS_9allocatorIS3_EEEE", !159, i64 0, !159, i64 8, !161, i64 16}
!163 = !{!"_ZTSN3jxl11ImageBundleE", !24, i64 0, !138, i64 8, !139, i64 16, !140, i64 24, !141, i64 48, !6, i64 56, !6, i64 60, !18, i64 64, !18, i64 65, !142, i64 68, !146, i64 72, !147, i64 96, !90, i64 104, !158, i64 272, !162, i64 472, !20, i64 496}
!164 = !{!"_ZTSNSt3__15arrayINS0_IfLm3EEELm3EEE", !5, i64 0}
!165 = !{!"_ZTSN3jxl11OpsinParamsE", !5, i64 0, !5, i64 144, !5, i64 160, !5, i64 176}
!166 = !{!"_ZTSNSt3__15arrayIfLm3EEE", !5, i64 0}
!167 = !{!"_ZTS15JxlCmsInterface", !23, i64 0, !23, i64 8, !23, i64 16, !23, i64 24, !23, i64 32, !23, i64 40, !23, i64 48, !23, i64 56}
!168 = !{!"_ZTSN3jxl18OutputEncodingInfoE", !158, i64 0, !19, i64 200, !164, i64 204, !18, i64 240, !18, i64 241, !158, i64 248, !158, i64 448, !18, i64 648, !165, i64 652, !18, i64 844, !19, i64 848, !166, i64 852, !19, i64 864, !18, i64 868, !167, i64 872}
!169 = !{!"_ZTSN3jxl18PassesDecoderStateE", !97, i64 0, !98, i64 2808, !102, i64 2816, !106, i64 2824, !110, i64 2848, !19, i64 2872, !19, i64 2876, !111, i64 2880, !20, i64 2936, !20, i64 2944, !116, i64 2952, !120, i64 3040, !18, i64 3064, !18, i64 3065, !121, i64 3068, !20, i64 3072, !20, i64 3080, !126, i64 3088, !130, i64 3096, !134, i64 3104, !163, i64 3112, !168, i64 3616}
!170 = !{!169, !98, i64 2808}
!171 = !{!39, !19, i64 44}
!172 = !{!28, !20, i64 16}
!173 = !{!"_ZTSN3jxl5RectTImEE", !20, i64 0, !20, i64 8, !20, i64 16, !20, i64 24}
!174 = !{!173, !20, i64 24}
!175 = !{!173, !20, i64 16}
!176 = !{!173, !20, i64 8}
!177 = !{!27, !23, i64 16}
!178 = !{!173, !20, i64 0}
!179 = !{!"llvm.loop.mustprogress"}
!180 = !{!5, !5, i64 0}
!181 = !{!21, !19, i64 104}
!182 = !{!6, !6, i64 0}
!183 = !{!19, !19, i64 0}
!184 = !{!"llvm.loop.unroll.disable"}
!185 = !{!97, !20, i64 80}
!186 = !{!97, !20, i64 88}
end_hunk_0
