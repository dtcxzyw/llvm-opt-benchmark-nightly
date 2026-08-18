inline.NumInlined: 260
inline.NumDeleted: 111
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN7CaDiCaL8Internal13ternary_roundERlS1_:bb.a
  %i.bh = load ptr, ptr %.sroa.091.0119, align 8, !tbaa !159
  store ptr %i.bh, ptr %i.bg, align 8, !tbaa !159
  %i.bi = icmp sgt i64 %i.ax, 0
  br i1 %i.bi, label %bb.l, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.l:                                             ; preds = %_ZNKSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bf, ptr align 8 %i.au, i64 %i.ax, i1 false)
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.l, %_ZNKSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %.not.i17.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.au) #12
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.m, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.bf, ptr %i.an, align 8, !tbaa !16
  store ptr %i.bj, ptr %i.ao, align 8, !tbaa !12
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.bd
  store ptr %i.bk, ptr %i.aq, align 8, !tbaa !176
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit: ; preds = %bb.i, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  %i.bl = getelementptr inbounds nuw i8, ptr %.054115, i64 4 ; 2 uses
  %.not80 = icmp eq ptr %i.bl, %i.s
  br i1 %.not80, label %.thread98, label %.lr.ph117

.thread98:                                        ; preds = %bb.e, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit, %bb.d, %bb.g, %bb.c, %bb.b
  %.369 = phi i64 [ %.066120, %bb.c ], [ %.066120, %bb.b ], [ %.167165, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit ], [ %.066120, %bb.g ], [ %.066120, %bb.d ], [ %.066120, %bb.e ] ; 2 uses
  %.3 = phi i64 [ %.052121, %bb.c ], [ %.052121, %bb.b ], [ %.153166, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit ], [ %.052121, %bb.g ], [ %.052121, %bb.d ], [ %.052121, %bb.e ] ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.091.0119, i64 8 ; 2 uses
  %.not102 = icmp eq ptr %i.bm, %i.d
  br i1 %.not102, label %._crit_edge124, label %bb.b

bb.n:                                             ; preds = %._crit_edge124
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 4976
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !181
  %i.bp = sitofp i64 %.066.lcssa to double
  %i.bq = load ptr, ptr %i.c, align 8, !tbaa !12  ; 2 uses
  %i.br = load ptr, ptr %i.a, align 8, !tbaa !16  ; 2 uses
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = sub i64 %i.bs, %i.bt
  %i.bv = ashr exact i64 %i.bu, 3
  %i.bw = uitofp i64 %i.bv to double
  %.not103 = icmp eq ptr %i.bq, %i.br             ; 2 uses
  %i.bx = sitofp i64 %.052.lcssa to double
  %i.by = insertelement <2 x double> poison, double %i.bp, i64 0
  %i.bz = insertelement <2 x double> %i.by, double %i.bx, i64 1
  %i.ca = fmul nnan <2 x double> %i.bz, splat (double 1.000000e+02)
  %i.cb = insertelement <2 x double> poison, double %i.bw, i64 0
  %i.cc = shufflevector <2 x double> %i.cb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cd = fdiv <2 x double> %i.ca, %i.cc          ; 2 uses
  %i.ce = extractelement <2 x double> %i.cd, i64 0
  %i.cf = select i1 %.not103, double 0.000000e+00, double %i.ce
  %i.cg = extractelement <2 x double> %i.cd, i64 1
  %i.ch = select i1 %.not103, double 0.000000e+00, double %i.cg
  tail call void (ptr, ptr, i64, ptr, ...) @_ZN7CaDiCaL8Internal5phaseEPKclS2_z(ptr noundef nonnull align 8 dereferenceable(7288) %i.i, ptr noundef nonnull @.str, i64 noundef %i.bo, ptr noundef nonnull @.str.1, i64 noundef %.066.lcssa, double noundef %i.cf, i64 noundef %.052.lcssa, double noundef %i.ch)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge124
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 7272 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !182, !nonnull !171, !align !183
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !160 ; 2 uses
  %.not104127 = icmp eq i32 %i.ck, 0
  br i1 %.not104127, label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit, label %.lr.ph130

.lr.ph130:                                        ; preds = %bb.o
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 7264 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 2960 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 2964 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 7256
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 3804
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 760 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 3824
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph130, %_ZN7CaDiCaL8Internal11ternary_idxEiRlS1_.exit
  %.sroa.087.0128 = phi i32 [ 1, %.lr.ph130 ], [ %i.ex, %_ZN7CaDiCaL8Internal11ternary_idxEiRlS1_.exit ] ; 6 uses
  %i.ct = load volatile i8, ptr %i.cl, align 8, !tbaa !184, !range !170, !noundef !171
  %i.cu = trunc nuw i8 %i.ct to i1
  br i1 %i.cu, label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cv = load i32, ptr %i.cn, align 4, !tbaa !185 ; 3 uses
  %.not.i82 = icmp eq i32 %i.cv, 0
  br i1 %.not.i82, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cw = add nsw i32 %i.cv, -1
  store i32 %i.cw, ptr %i.cn, align 4, !tbaa !185
  %i.cx = icmp eq i32 %i.cv, 1
  br i1 %i.cx, label %.sink.split.i, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.cy = load ptr, ptr %i.co, align 8, !tbaa !186
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 360
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !187 ; 3 uses
  %.not3.i = icmp eq ptr %i.da, null
  br i1 %.not3.i, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.db = load i32, ptr %i.cm, align 8, !tbaa !206 ; 2 uses
  %i.dc = add nsw i32 %i.db, -1
  store i32 %i.dc, ptr %i.cm, align 8, !tbaa !206
  %.not4.i = icmp eq i32 %i.db, 0
  br i1 %.not4.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.dd = load i32, ptr %i.cp, align 4, !tbaa !207
  store i32 %i.dd, ptr %i.cm, align 8, !tbaa !206
  %i.de = load ptr, ptr %i.da, align 8, !tbaa !208
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dg = load ptr, ptr %i.df, align 8
  %i.dh = tail call noundef zeroext i1 %i.dg(ptr noundef nonnull align 8 dereferenceable(8) %i.da), !inline_history !210
  br i1 %i.dh, label %.sink.split.i, label %bb.v

.sink.split.i:                                    ; preds = %bb.u, %bb.r
  store volatile i8 1, ptr %i.cl, align 8, !tbaa !184
  br label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit

bb.v:                                             ; preds = %bb.t, %bb.s, %bb.u
  %i.di = load i64, ptr %1, align 8, !tbaa !166
  %i.dj = icmp slt i64 %i.di, 0
  br i1 %i.dj, label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dk = load i64, ptr %2, align 8, !tbaa !166
  %i.dl = icmp slt i64 %i.dk, 0
  br i1 %i.dl, label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit, label %.critedge

.critedge:                                        ; preds = %bb.w
  %i.dm = tail call i32 @llvm.abs.i32(i32 %.sroa.087.0128, i1 true) ; 3 uses
  %i.dn = zext nneg i32 %i.dm to i64              ; 3 uses
  %i.do = load ptr, ptr %i.cq, align 8, !tbaa !179 ; 2 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.dn
  %i.dq = load i32, ptr %i.dp, align 1            ; 2 uses
  %i.dr = and i32 %i.dq, 117441536
  %or.cond18.not.i = icmp eq i32 %i.dr, 16778240
  br i1 %or.cond18.not.i, label %bb.x, label %_ZN7CaDiCaL8Internal11ternary_idxEiRlS1_.exit

bb.x:                                             ; preds = %.critedge
  %i.ds = tail call noundef i32 @llvm.fshl.i32(i32 %i.dm, i32 %.sroa.087.0128, i32 1)
  %i.dt = zext i32 %i.ds to i64
  %i.du = load ptr, ptr %i.cr, align 8, !tbaa !8  ; 2 uses
  %i.dv = getelementptr inbounds nuw [24 x i8], ptr %i.du, i64 %i.dt ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !12
  %i.dy = load ptr, ptr %i.dv, align 8, !tbaa !16
  %i.dz = ptrtoint ptr %i.dx to i64
  %i.ea = ptrtoint ptr %i.dy to i64
  %i.eb = sub i64 %i.dz, %i.ea
  %i.ec = lshr exact i64 %i.eb, 3
  %i.ed = trunc i64 %i.ec to i32                  ; 2 uses
  %i.ee = sub nsw i32 0, %.sroa.087.0128          ; 2 uses
  %i.ef = tail call noundef i32 @llvm.fshl.i32(i32 %i.dm, i32 %i.ee, i32 1)
  %i.eg = zext i32 %i.ef to i64
  %i.eh = getelementptr inbounds nuw [24 x i8], ptr %i.du, i64 %i.eg ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !12
  %i.ek = load ptr, ptr %i.eh, align 8, !tbaa !16
  %i.el = ptrtoint ptr %i.ej to i64
  %i.em = ptrtoint ptr %i.ek to i64
  %i.en = sub i64 %i.el, %i.em
  %i.eo = lshr exact i64 %i.en, 3
  %i.ep = trunc i64 %i.eo to i32                  ; 2 uses
  %i.eq = load i32, ptr %i.cs, align 8, !tbaa !17 ; 2 uses
  %.not16.i = icmp slt i32 %i.eq, %i.ed
  %.not17.i = icmp slt i32 %i.eq, %i.ep
  %or.cond.i = or i1 %.not16.i, %.not17.i
  br i1 %or.cond.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.er = icmp slt i32 %i.ep, %i.ed
  %i.es = select i1 %i.er, i32 %i.ee, i32 %.sroa.087.0128
  tail call void @_ZN7CaDiCaL8Internal11ternary_litEiRlS1_(ptr noundef nonnull align 8 dereferenceable(7288) %0, i32 noundef %i.es, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %.pre.i = load ptr, ptr %i.cq, align 8, !tbaa !179 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %i.dn
  %.pre19.i = load i32, ptr %.phi.trans.insert.i, align 1
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.et = phi i32 [ %.pre19.i, %bb.y ], [ %i.dq, %bb.x ]
  %i.eu = phi ptr [ %.pre.i, %bb.y ], [ %i.do, %bb.x ]
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %i.dn
  %i.ew = and i32 %i.et, -1025
  store i32 %i.ew, ptr %i.ev, align 1
  br label %_ZN7CaDiCaL8Internal11ternary_idxEiRlS1_.exit

_ZN7CaDiCaL8Internal11ternary_idxEiRlS1_.exit:    ; preds = %.critedge, %bb.z
  %i.ex = add i32 %.sroa.087.0128, 1
  %.not104 = icmp eq i32 %.sroa.087.0128, %i.ck
  br i1 %.not104, label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit, label %bb.p

_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit: ; preds = %_ZN7CaDiCaL8Internal11ternary_idxEiRlS1_.exit, %bb.w, %bb.v, %bb.p, %bb.o, %.sink.split.i
  %i.ey = load ptr, ptr %i.ci, align 8, !tbaa !182, !nonnull !171, !align !183
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !160 ; 5 uses
  %.not105134 = icmp eq i32 %i.ez, 0
  br i1 %.not105134, label %._crit_edge138.thread, label %.lr.ph137

.lr.ph137:                                        ; preds = %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !179 ; 3 uses
  %xtraiter = and i32 %i.ez, 1
  %3 = icmp eq i32 %i.ez, 1
  br i1 %3, label %.epil.preheader, label %.lr.ph137.new

.lr.ph137.new:                                    ; preds = %.lr.ph137
  %unroll_iter = and i32 %i.ez, -2
  br label %bb.aa

._crit_edge138.unr-lcssa:                         ; preds = %bb.aa
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge138.a, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge138.unr-lcssa, %.lr.ph137
  %.0136.epil.init = phi i32 [ 0, %.lr.ph137 ], [ %.1.1, %._crit_edge138.unr-lcssa ]
  %.sroa.083.0135.epil.init = phi i32 [ 1, %.lr.ph137 ], [ %i.gb, %._crit_edge138.unr-lcssa ]
  %lcmp.mod173 = trunc i32 %i.ez to i1
  tail call void @llvm.assume(i1 %lcmp.mod173)
  %i.fc = tail call noundef i32 @llvm.abs.i32(i32 %.sroa.083.0135.epil.init, i1 true)
  %i.fd = zext nneg i32 %i.fc to i64
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %i.fd
  %i.ff = load i32, ptr %i.fe, align 1            ; 2 uses
  %i.fg = and i32 %i.ff, 117440512
  %i.fh = icmp eq i32 %i.fg, 16777216
  %i.fi = lshr i32 %i.ff, 10
  %i.fj = and i32 %i.fi, 1
  %spec.select81.epil = select i1 %i.fh, i32 %i.fj, i32 0
  %.1.epil = add nuw nsw i32 %spec.select81.epil, %.0136.epil.init
  br label %._crit_edge138.a

._crit_edge138.a:                                 ; preds = %._crit_edge138.unr-lcssa, %.epil.preheader
  %.1.lcssa.a = phi i32 [ %.1.1, %._crit_edge138.unr-lcssa ], [ %.1.epil, %.epil.preheader ] ; 3 uses
  %.not169.a = icmp eq i32 %.1.lcssa.a, 0
  br i1 %.not169.a, label %._crit_edge138.thread, label %bb.ab

bb.aa:                                            ; preds = %bb.aa, %.lr.ph137.new
  %.0136 = phi i32 [ 0, %.lr.ph137.new ], [ %.1.1, %bb.aa ]
  %.sroa.083.0135.a = phi i32 [ 1, %.lr.ph137.new ], [ %i.gb, %bb.aa ] ; 3 uses
  %niter = phi i32 [ 0, %.lr.ph137.new ], [ %niter.next.1, %bb.aa ]
  %i.fk = tail call noundef i32 @llvm.abs.i32(i32 %.sroa.083.0135.a, i1 true)
  %i.fl = zext nneg i32 %i.fk to i64
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %i.fl
  %i.fn = load i32, ptr %i.fm, align 1            ; 2 uses
  %i.fo = and i32 %i.fn, 117440512
  %i.fp = icmp eq i32 %i.fo, 16777216
  %i.fq = lshr i32 %i.fn, 10
  %i.fr = and i32 %i.fq, 1
  %spec.select81 = select i1 %i.fp, i32 %i.fr, i32 0
  %.1 = add nuw nsw i32 %spec.select81, %.0136
  %i.fs = add nuw i32 %.sroa.083.0135.a, 1
  %i.ft = tail call noundef i32 @llvm.abs.i32(i32 %i.fs, i1 true)
  %i.fu = zext nneg i32 %i.ft to i64
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %i.fu
  %i.fw = load i32, ptr %i.fv, align 1            ; 2 uses
  %i.fx = and i32 %i.fw, 117440512
  %i.fy = icmp eq i32 %i.fx, 16777216
  %i.fz = lshr i32 %i.fw, 10
  %i.ga = and i32 %i.fz, 1
  %spec.select81.1 = select i1 %i.fy, i32 %i.ga, i32 0
  %.1.1 = add nuw nsw i32 %spec.select81.1, %.1   ; 3 uses
  %i.gb = add nuw i32 %.sroa.083.0135.a, 2        ; 2 uses
  %niter.next.1 = add nuw i32 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge138.unr-lcssa, label %bb.aa

bb.ab:                                            ; preds = %._crit_edge138.a
  %i.gc = load ptr, ptr %i.h, align 8, !tbaa !180 ; 2 uses
  %.not74 = icmp eq ptr %i.gc, null
  br i1 %.not74, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 4976
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !181
  %i.gf = uitofp nneg i32 %.1.lcssa.a to double
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.gh = load i32, ptr %i.gg, align 8, !tbaa !211 ; 2 uses
  %i.gi = sitofp i32 %i.gh to double
  %i.gj = fmul nnan double %i.gf, 1.000000e+02
  %.not106 = icmp eq i32 %i.gh, 0
  %i.gk = fdiv double %i.gj, %i.gi
  %i.gl = select i1 %.not106, double 0.000000e+00, double %i.gk
  tail call void (ptr, ptr, i64, ptr, ...) @_ZN7CaDiCaL8Internal5phaseEPKclS2_z(ptr noundef nonnull align 8 dereferenceable(7288) %i.gc, ptr noundef nonnull @.str, i64 noundef %i.ge, ptr noundef nonnull @.str.2, i32 noundef %.1.lcssa.a, double noundef %i.gl)
  br label %bb.ae

._crit_edge138.thread:                            ; preds = %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit, %._crit_edge138.a
  %i.gm = load ptr, ptr %i.h, align 8, !tbaa !180 ; 2 uses
  %.not73 = icmp eq ptr %i.gm, null
  br i1 %.not73, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %._crit_edge138.thread
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 4976
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !181
  tail call void (ptr, ptr, i64, ptr, ...) @_ZN7CaDiCaL8Internal5phaseEPKclS2_z(ptr noundef nonnull align 8 dereferenceable(7288) %i.gm, ptr noundef nonnull @.str, i64 noundef %i.go, ptr noundef nonnull @.str.3)
  br label %bb.ae

bb.ae:                                            ; preds = %._crit_edge138.thread, %bb.ad, %bb.ab, %bb.ac
  %i.gp = phi i1 [ false, %._crit_edge138.thread ], [ false, %bb.ad ], [ true, %bb.ab ], [ true, %bb.ac ]
  tail call void @_ZN7CaDiCaL8Internal10reset_occsEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  ret i1 %i.gp
}

declare void @_ZN7CaDiCaL8Internal9init_occsEv(ptr noundef nonnull align 8 dereferenceable(7288)) local_unnamed_addr #3

declare void @_ZN7CaDiCaL8Internal5phaseEPKclS2_z(ptr noundef nonnull align 8 dereferenceable(7288), ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @_ZN7CaDiCaL8Internal10reset_occsEv(ptr noundef nonnull align 8 dereferenceable(7288)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7CaDiCaL8Internal7ternaryEv(ptr noundef nonnull align 8 dereferenceable(7288) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 3808
  %i.d = load i32, ptr %i.c, align 8, !tbaa !212
  %.not = icmp eq i32 %i.d, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i8, ptr %i.e, align 4, !range !170
  %i.g = trunc nuw i8 %i.f to i1
  %or.cond = select i1 %.not, i1 true, i1 %i.g
  br i1 %or.cond, label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 7264 ; 6 uses
  %i.i = load volatile i8, ptr %i.h, align 8, !tbaa !184, !range !170, !noundef !171
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2960 ; 9 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2964 ; 6 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !185  ; 3 uses
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = add nsw i32 %i.m, -1
  store i32 %i.n, ptr %i.l, align 4, !tbaa !185
  %i.o = icmp eq i32 %i.m, 1
  br i1 %i.o, label %.sink.split.i, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 7256 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !186
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 360
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !187  ; 3 uses
  %.not3.i = icmp eq ptr %i.s, null
  br i1 %.not3.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = load i32, ptr %i.k, align 8, !tbaa !206  ; 2 uses
  %i.u = add nsw i32 %i.t, -1
  store i32 %i.u, ptr %i.k, align 8, !tbaa !206
  %.not4.i = icmp eq i32 %i.t, 0
  br i1 %.not4.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 3804
  %i.w = load i32, ptr %i.v, align 4, !tbaa !207
  store i32 %i.w, ptr %i.k, align 8, !tbaa !206
  %i.x = load ptr, ptr %i.s, align 8, !tbaa !208
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call noundef zeroext i1 %i.z(ptr noundef nonnull align 8 dereferenceable(8) %i.s), !inline_history !210
  br i1 %i.aa, label %.sink.split.i, label %bb.h

.sink.split.i:                                    ; preds = %bb.g, %bb.d
  store volatile i8 1, ptr %i.h, align 8, !tbaa !184
  br label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit

bb.h:                                             ; preds = %bb.f, %bb.e, %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 3040 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !213
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 4200 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !214
  %i.af = icmp eq i64 %i.ac, %i.ae
  br i1 %i.af, label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 3620 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !215
  %.not.i68 = icmp eq i32 %i.ah, 0
  br i1 %.not.i68, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = tail call noundef double @_ZNK7CaDiCaL8Internal9real_timeEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  br label %_ZN7CaDiCaL8Internal4timeEv.exit

bb.k:                                             ; preds = %bb.i
  %i.aj = tail call noundef double @_ZNK7CaDiCaL8Internal12process_timeEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  br label %_ZN7CaDiCaL8Internal4timeEv.exit

_ZN7CaDiCaL8Internal4timeEv.exit:                 ; preds = %bb.j, %bb.k
  %i.ak = phi double [ %i.ai, %bb.j ], [ %i.aj, %bb.k ] ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 7248 ; 13 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !180 ; 8 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 3608
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !216 ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 8, !tbaa !217, !range !170, !noundef !171
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %bb.s, label %bb.l

bb.l:                                             ; preds = %_ZN7CaDiCaL8Internal4timeEv.exit
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.at = load i8, ptr %i.as, align 1, !tbaa !218, !range !170, !noundef !171
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.s, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.aw = load i8, ptr %i.av, align 4, !tbaa !219, !range !170, !noundef !171
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %bb.n, label %.thread112

bb.n:                                             ; preds = %bb.m
  %i.ay = getelementptr inbounds nuw i8, ptr %i.am, i64 6800
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !220
  %.not44 = icmp sgt i32 %i.az, %i.ao
  br i1 %.not44, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ba = getelementptr inbounds nuw i8, ptr %i.am, i64 6768
  tail call void @_ZN7CaDiCaL8Internal14stop_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288) %i.am, ptr noundef nonnull align 8 dereferenceable(36) %i.ba, double noundef %i.ak)
  %.pre = load i8, ptr %i.av, align 4, !tbaa !219, !range !170
  %.pre96.pre = load ptr, ptr %i.al, align 8, !tbaa !180 ; 2 uses
  %i.bb = trunc nuw i8 %.pre to i1
  br i1 %i.bb, label %.thread, label %.thread112

.thread112:                                       ; preds = %bb.m, %bb.o
  %.pre96114 = phi ptr [ %.pre96.pre, %bb.o ], [ %i.am, %bb.m ] ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.pre96114, i64 7040
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !221
  %.not45 = icmp sgt i32 %i.bd, %i.ao
  br i1 %.not45, label %.thread, label %bb.p

bb.p:                                             ; preds = %.thread112
  %i.be = getelementptr inbounds nuw i8, ptr %.pre96114, i64 7008
  tail call void @_ZN7CaDiCaL8Internal14stop_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288) %.pre96114, ptr noundef nonnull align 8 dereferenceable(36) %i.be, double noundef %i.ak)
  %.pre95 = load ptr, ptr %i.al, align 8, !tbaa !180
  br label %.thread

.thread:                                          ; preds = %bb.n, %bb.p, %.thread112, %bb.o
  %i.bf = phi ptr [ %.pre95, %bb.p ], [ %.pre96114, %.thread112 ], [ %.pre96.pre, %bb.o ], [ %i.am, %bb.n ] ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 6720
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !222
  %.not46 = icmp sgt i32 %i.bh, %i.ao
  br i1 %.not46, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.thread
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 6688
  tail call void @_ZN7CaDiCaL8Internal14stop_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288) %i.bf, ptr noundef nonnull align 8 dereferenceable(36) %i.bi, double noundef %i.ak)
  %.pre97.pre = load ptr, ptr %i.al, align 8, !tbaa !180
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.thread
  %.pre97 = phi ptr [ %.pre97.pre, %bb.q ], [ %i.bf, %.thread ]
  %i.bj = load i32, ptr %0, align 8, !tbaa !223
  %i.bk = and i32 %i.bj, -257
  store i32 %i.bk, ptr %0, align 8, !tbaa !223
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.l, %_ZN7CaDiCaL8Internal4timeEv.exit
  %i.bl = phi ptr [ %.pre97, %bb.r ], [ %i.am, %bb.l ], [ %i.am, %_ZN7CaDiCaL8Internal4timeEv.exit ] ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 6880
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !224
  %.not47 = icmp sgt i32 %i.bn, %i.ao
  br i1 %.not47, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 6848
  tail call void @_ZN7CaDiCaL8Internal15start_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288) %i.bl, ptr noundef nonnull align 8 dereferenceable(36) %i.bo, double noundef %i.ak)
  %.pre98 = load ptr, ptr %i.al, align 8, !tbaa !180
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bp = phi ptr [ %.pre98, %bb.t ], [ %i.bl, %bb.s ] ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 6960
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !225
  %.not48 = icmp sgt i32 %i.br, %i.ao
  br i1 %.not48, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 6928
  tail call void @_ZN7CaDiCaL8Internal15start_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288) %i.bp, ptr noundef nonnull align 8 dereferenceable(36) %i.bs, double noundef %i.ak)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.bt = load i32, ptr %0, align 8, !tbaa !223
  %i.bu = or i32 %i.bt, 2560
  store i32 %i.bu, ptr %0, align 8, !tbaa !223
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 4976 ; 7 uses
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !181
  %i.bx = add nsw i64 %i.bw, 1
  store i64 %i.bx, ptr %i.bv, align 8, !tbaa !181
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !226
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 936
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !226
  %.not79 = icmp eq ptr %i.bz, %i.cb
  br i1 %.not79, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @_ZN7CaDiCaL8Internal13reset_watchesEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 3968
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !227
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 3828
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !228
  %i.cg = sitofp i32 %i.cf to double
  %i.ch = fmul nnan double %i.cg, 1.000000e-03
  %i.ci = sitofp i64 %i.cd to double
  %i.cj = fmul double %i.ch, %i.ci
  %i.ck = fptosi double %i.cj to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 3820
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !229
  %i.cn = sext i32 %i.cm to i64
  %spec.store.select = tail call i64 @llvm.smax.i64(i64 %i.ck, i64 %i.cn)
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 3816
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !230
  %i.cq = sext i32 %i.cp to i64
  %spec.store.select63 = tail call i64 @llvm.smin.i64(i64 %spec.store.select, i64 %i.cq) ; 3 uses
  store i64 %spec.store.select63, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 4216
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !231
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 4224
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !232
  %i.cv = add nsw i64 %i.cu, %i.cs
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 3812
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !233
  %i.cy = sext i32 %i.cx to i64
  %i.cz = mul nsw i64 %i.cv, %i.cy                ; 2 uses
  %i.da = sdiv i64 %i.cz, 100                     ; 2 uses
  store i64 %i.da, ptr %i.b, align 8, !tbaa !166
  %i.db = load ptr, ptr %i.al, align 8, !tbaa !180 ; 2 uses
  %.not49 = icmp eq ptr %i.db, null
  br i1 %.not49, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dc = load i64, ptr %i.bv, align 8, !tbaa !181
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 3832
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !234
  tail call void (ptr, ptr, i64, ptr, ...) @_ZN7CaDiCaL8Internal5phaseEPKclS2_z(ptr noundef nonnull align 8 dereferenceable(7288) %i.db, ptr noundef nonnull @.str, i64 noundef %i.dc, ptr noundef nonnull @.str.4, i32 noundef %i.de, i64 noundef %spec.store.select63, i64 noundef %i.da)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.df = load volatile i8, ptr %i.h, align 8, !tbaa !184, !range !170, !noundef !171
  %i.dg = trunc nuw i8 %i.df to i1
  br i1 %i.dg, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.aa
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 3804 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 3832 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 5000 ; 4 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 5008 ; 4 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 3664 ; 2 uses
  %i.dm = load i32, ptr %i.l, align 4, !tbaa !185 ; 3 uses
  %.not.i69.peel = icmp eq i32 %i.dm, 0
  br i1 %.not.i69.peel, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph
  %i.dn = add nsw i32 %i.dm, -1
  store i32 %i.dn, ptr %i.l, align 4, !tbaa !185
  %i.do = icmp eq i32 %i.dm, 1
  br i1 %i.do, label %.sink.split.i73, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.lr.ph
  %i.dp = load ptr, ptr %i.p, align 8, !tbaa !186
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 360
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !187 ; 3 uses
  %.not3.i70.peel = icmp eq ptr %i.dr, null
  br i1 %.not3.i70.peel, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ds = load i32, ptr %i.k, align 8, !tbaa !206 ; 2 uses
  %i.dt = add nsw i32 %i.ds, -1
  store i32 %i.dt, ptr %i.k, align 8, !tbaa !206
  %.not4.i71.peel = icmp eq i32 %i.ds, 0
  br i1 %.not4.i71.peel, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.du = load i32, ptr %i.dh, align 4, !tbaa !207
  store i32 %i.du, ptr %i.k, align 8, !tbaa !206
  %i.dv = load ptr, ptr %i.dr, align 8, !tbaa !208
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.dx = load ptr, ptr %i.dw, align 8
  %i.dy = tail call noundef zeroext i1 %i.dx(ptr noundef nonnull align 8 dereferenceable(8) %i.dr), !inline_history !210
  br i1 %i.dy, label %.sink.split.i73, label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ac
  %i.dz = load i32, ptr %i.di, align 8, !tbaa !234
  %i.ea = icmp slt i32 %i.dz, 1
  %i.eb = icmp slt i64 %i.cz, -99
  %or.cond65.peel = select i1 %i.ea, i1 true, i1 %i.eb
  %i.ec = icmp slt i64 %spec.store.select63, 0
  %or.cond67.peel = select i1 %or.cond65.peel, i1 true, i1 %i.ec
  br i1 %or.cond67.peel, label %.critedge, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ed = load i64, ptr %i.dj, align 8, !tbaa !177
  %i.ee = load i64, ptr %i.dk, align 8, !tbaa !178
  %i.ef = call noundef zeroext i1 @_ZN7CaDiCaL8Internal13ternary_roundERlS1_(ptr noundef nonnull align 8 dereferenceable(7288) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 3 uses
  %i.eg = load i64, ptr %i.dj, align 8, !tbaa !177
  %i.eh = sub i64 %i.eg, %i.ed
  %i.ei = trunc i64 %i.eh to i32                  ; 2 uses
  %i.ej = load i64, ptr %i.dk, align 8, !tbaa !178
  %i.ek = sub i64 %i.ej, %i.ee
  %i.el = trunc i64 %i.ek to i32                  ; 2 uses
  %i.em = load ptr, ptr %i.al, align 8, !tbaa !180 ; 2 uses
  %.not51.peel = icmp eq ptr %i.em, null
  br i1 %.not51.peel, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.en = load i64, ptr %i.bv, align 8, !tbaa !181
  tail call void (ptr, ptr, i64, ptr, ...) @_ZN7CaDiCaL8Internal5phaseEPKclS2_z(ptr noundef nonnull align 8 dereferenceable(7288) %i.em, ptr noundef nonnull @.str, i64 noundef %i.en, ptr noundef nonnull @.str.5, i32 noundef %i.el, i32 noundef %i.ei)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.eo = load i32, ptr %i.dl, align 8, !tbaa !235
  %.not52.peel = icmp eq i32 %i.eo, 0
  %.not53.peel = icmp eq i32 %i.ei, 0             ; 2 uses
  %narrow.peel = select i1 %.not52.peel, i1 %.not53.peel, i1 false
  %i.ep = zext i1 %narrow.peel to i32
  tail call void @_ZN7CaDiCaL8Internal6reportEci(ptr noundef nonnull align 8 dereferenceable(7288) %0, i8 noundef signext 51, i32 noundef %i.ep)
  %not..not53.peel = xor i1 %.not53.peel, true    ; 3 uses
  %.not55.not.peel = icmp eq i32 %i.el, 0
  br i1 %.not55.not.peel, label %.critedge, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.eq = load volatile i8, ptr %i.h, align 8, !tbaa !184, !range !170, !noundef !171
  %i.er = trunc nuw i8 %i.eq to i1
  br i1 %i.er, label %.critedge, label %.peel.next

bb.ak:                                            ; preds = %bb.as
  %i.es = add nuw nsw i32 %.03584, 1
  %i.et = load volatile i8, ptr %i.h, align 8, !tbaa !184, !range !170, !noundef !171
  %i.eu = trunc nuw i8 %i.et to i1
  br i1 %i.eu, label %.critedge, label %.peel.next, !llvm.loop !236

.peel.next:                                       ; preds = %bb.aj, %bb.ak
  %.03584 = phi i32 [ %i.es, %bb.ak ], [ 1, %bb.aj ] ; 2 uses
  %.03683 = phi i1 [ %i.fs, %bb.ak ], [ %i.ef, %bb.aj ] ; 3 uses
  %.03782 = phi i1 [ %.138, %bb.ak ], [ %not..not53.peel, %bb.aj ] ; 4 uses
  %i.ev = load i32, ptr %i.l, align 4, !tbaa !185 ; 3 uses
  %.not.i69 = icmp eq i32 %i.ev, 0
  br i1 %.not.i69, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.peel.next
  %i.ew = add nsw i32 %i.ev, -1
  store i32 %i.ew, ptr %i.l, align 4, !tbaa !185
  %i.ex = icmp eq i32 %i.ev, 1
  br i1 %i.ex, label %.sink.split.i73, label %bb.am

bb.am:                                            ; preds = %bb.al, %.peel.next
  %i.ey = load ptr, ptr %i.p, align 8, !tbaa !186
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 360
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !187 ; 3 uses
  %.not3.i70 = icmp eq ptr %i.fa, null
  br i1 %.not3.i70, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fb = load i32, ptr %i.k, align 8, !tbaa !206 ; 2 uses
  %i.fc = add nsw i32 %i.fb, -1
  store i32 %i.fc, ptr %i.k, align 8, !tbaa !206
  %.not4.i71 = icmp eq i32 %i.fb, 0
  br i1 %.not4.i71, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.fd = load i32, ptr %i.dh, align 4, !tbaa !207
  store i32 %i.fd, ptr %i.k, align 8, !tbaa !206
  %i.fe = load ptr, ptr %i.fa, align 8, !tbaa !208
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %i.fg = load ptr, ptr %i.ff, align 8
  %i.fh = tail call noundef zeroext i1 %i.fg(ptr noundef nonnull align 8 dereferenceable(8) %i.fa), !inline_history !210
  br i1 %i.fh, label %.sink.split.i73, label %bb.ap

.sink.split.i73:                                  ; preds = %bb.ao, %bb.al, %bb.ae, %bb.ab
  %.03683.lcssa = phi i1 [ false, %bb.ab ], [ false, %bb.ae ], [ %.03683, %bb.al ], [ %.03683, %bb.ao ]
  %.03782.lcssa = phi i1 [ false, %bb.ab ], [ false, %bb.ae ], [ %.03782, %bb.al ], [ %.03782, %bb.ao ]
  store volatile i8 1, ptr %i.h, align 8, !tbaa !184
  br label %.critedge

bb.ap:                                            ; preds = %bb.an, %bb.am, %bb.ao
  %i.fi = load i32, ptr %i.di, align 8, !tbaa !234
  %i.fj = icmp sge i32 %.03584, %i.fi
  %i.fk = load i64, ptr %i.b, align 8
  %i.fl = icmp slt i64 %i.fk, 0
  %or.cond65 = select i1 %i.fj, i1 true, i1 %i.fl
  %i.fm = load i64, ptr %i.a, align 8
  %i.fn = icmp slt i64 %i.fm, 0
  %or.cond67 = select i1 %or.cond65, i1 true, i1 %i.fn
  br i1 %or.cond67, label %.critedge, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fo = load i64, ptr %i.bv, align 8, !tbaa !181
  %i.fp = add nsw i64 %i.fo, 1
  store i64 %i.fp, ptr %i.bv, align 8, !tbaa !181
  %i.fq = load i64, ptr %i.dj, align 8, !tbaa !177
  %i.fr = load i64, ptr %i.dk, align 8, !tbaa !178
  %i.fs = call noundef zeroext i1 @_ZN7CaDiCaL8Internal13ternary_roundERlS1_(ptr noundef nonnull align 8 dereferenceable(7288) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 3 uses
  %i.ft = load i64, ptr %i.dj, align 8, !tbaa !177
  %i.fu = sub i64 %i.ft, %i.fq
  %i.fv = trunc i64 %i.fu to i32                  ; 2 uses
  %i.fw = load i64, ptr %i.dk, align 8, !tbaa !178
  %i.fx = sub i64 %i.fw, %i.fr
  %i.fy = trunc i64 %i.fx to i32                  ; 2 uses
  %i.fz = load ptr, ptr %i.al, align 8, !tbaa !180 ; 2 uses
  %.not51 = icmp eq ptr %i.fz, null
  br i1 %.not51, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ga = load i64, ptr %i.bv, align 8, !tbaa !181
  tail call void (ptr, ptr, i64, ptr, ...) @_ZN7CaDiCaL8Internal5phaseEPKclS2_z(ptr noundef nonnull align 8 dereferenceable(7288) %i.fz, ptr noundef nonnull @.str, i64 noundef %i.ga, ptr noundef nonnull @.str.5, i32 noundef %i.fy, i32 noundef %i.fv)
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.gb = load i32, ptr %i.dl, align 8, !tbaa !235
  %.not52 = icmp eq i32 %i.gb, 0
  %.not53 = icmp eq i32 %i.fv, 0                  ; 2 uses
  %narrow = select i1 %.not52, i1 %.not53, i1 false
  %i.gc = zext i1 %narrow to i32
  tail call void @_ZN7CaDiCaL8Internal6reportEci(ptr noundef nonnull align 8 dereferenceable(7288) %0, i8 noundef signext 51, i32 noundef %i.gc)
  %not..not53 = xor i1 %.not53, true
  %.138 = select i1 %not..not53, i1 true, i1 %.03782 ; 3 uses
  %.not55.not = icmp eq i32 %i.fy, 0
  br i1 %.not55.not, label %.critedge, label %bb.ak

.critedge:                                        ; preds = %bb.as, %bb.ap, %bb.ak, %bb.af, %bb.ai, %bb.aj, %bb.aa, %.sink.split.i73
  %.2 = phi i1 [ %.03782.lcssa, %.sink.split.i73 ], [ false, %bb.aa ], [ false, %bb.af ], [ %not..not53.peel, %bb.ai ], [ %not..not53.peel, %bb.aj ], [ %.138, %bb.ak ], [ %.138, %bb.as ], [ %.03782, %bb.ap ]
  %.1 = phi i1 [ %.03683.lcssa, %.sink.split.i73 ], [ false, %bb.aa ], [ false, %bb.af ], [ %i.ef, %bb.ai ], [ %i.ef, %bb.aj ], [ %i.fs, %bb.ak ], [ %i.fs, %bb.as ], [ %.03683, %bb.ap ]
  tail call void @_ZN7CaDiCaL8Internal12init_watchesEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  tail call void @_ZN7CaDiCaL8Internal15connect_watchesEb(ptr noundef nonnull align 8 dereferenceable(7288) %0, i1 noundef zeroext false)
  %i.gd = tail call noundef zeroext i1 @_ZN7CaDiCaL8Internal9propagateEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  br i1 %i.gd, label %bb.au, label %bb.at

bb.at:                                            ; preds = %.critedge
  tail call void @_ZN7CaDiCaL8Internal18learn_empty_clauseEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %.critedge
  br i1 %.1, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.ge = load i64, ptr %i.ad, align 8, !tbaa !214
  store i64 %i.ge, ptr %i.ab, align 8, !tbaa !213
  br label %bb.aw

bb.aw:                                            ; preds = %bb.au, %bb.av
  %i.gf = load i32, ptr %i.ag, align 4, !tbaa !215
  %.not.i75 = icmp eq i32 %i.gf, 0
  br i1 %.not.i75, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gg = tail call noundef double @_ZNK7CaDiCaL8Internal9real_timeEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  br label %_ZN7CaDiCaL8Internal4timeEv.exit76

bb.ay:                                            ; preds = %bb.aw
  %i.gh = tail call noundef double @_ZNK7CaDiCaL8Internal12process_timeEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  br label %_ZN7CaDiCaL8Internal4timeEv.exit76

_ZN7CaDiCaL8Internal4timeEv.exit76:               ; preds = %bb.ax, %bb.ay
  %i.gi = phi double [ %i.gg, %bb.ax ], [ %i.gh, %bb.ay ] ; 5 uses
  %i.gj = load ptr, ptr %i.al, align 8, !tbaa !180 ; 5 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 3608
  %i.gl = load i32, ptr %i.gk, align 8, !tbaa !216 ; 5 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gj, i64 6960
  %i.gn = load i32, ptr %i.gm, align 8, !tbaa !225
  %.not56 = icmp sgt i32 %i.gn, %i.gl
  br i1 %.not56, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %_ZN7CaDiCaL8Internal4timeEv.exit76
  %i.go = getelementptr inbounds nuw i8, ptr %i.gj, i64 6928
  tail call void @_ZN7CaDiCaL8Internal14stop_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288) %i.gj, ptr noundef nonnull align 8 dereferenceable(36) %i.go, double noundef %i.gi)
  %.pre99 = load ptr, ptr %i.al, align 8, !tbaa !180
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %_ZN7CaDiCaL8Internal4timeEv.exit76
  %i.gp = phi ptr [ %.pre99, %bb.az ], [ %i.gj, %_ZN7CaDiCaL8Internal4timeEv.exit76 ] ; 3 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 6880
  %i.gr = load i32, ptr %i.gq, align 8, !tbaa !224
  %.not57 = icmp sgt i32 %i.gr, %i.gl
  br i1 %.not57, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gp, i64 6848
  tail call void @_ZN7CaDiCaL8Internal14stop_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288) %i.gp, ptr noundef nonnull align 8 dereferenceable(36) %i.gs, double noundef %i.gi)
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.gt = load i32, ptr %0, align 8, !tbaa !223
  %i.gu = and i32 %i.gt, -2561
  store i32 %i.gu, ptr %0, align 8, !tbaa !223
  %i.gv = load i8, ptr %i.ap, align 8, !tbaa !217, !range !170, !noundef !171
  %i.gw = trunc nuw i8 %i.gv to i1
  br i1 %i.gw, label %bb.bk, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !218, !range !170, !noundef !171
  %i.gz = trunc nuw i8 %i.gy to i1
  br i1 %i.gz, label %bb.bk, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ha = load ptr, ptr %i.al, align 8, !tbaa !180 ; 3 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 6720
  %i.hc = load i32, ptr %i.hb, align 8, !tbaa !222
  %.not58 = icmp sgt i32 %i.hc, %i.gl
  br i1 %.not58, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ha, i64 6688
  tail call void @_ZN7CaDiCaL8Internal15start_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288) %i.ha, ptr noundef nonnull align 8 dereferenceable(36) %i.hd, double noundef %i.gi)
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.hf = load i8, ptr %i.he, align 4, !tbaa !219, !range !170, !noundef !171
  %i.hg = trunc nuw i8 %i.hf to i1
  br i1 %i.hg, label %bb.bh, label %.thread116

bb.bh:                                            ; preds = %bb.bg
  %i.hh = load ptr, ptr %i.al, align 8, !tbaa !180 ; 3 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 6800
  %i.hj = load i32, ptr %i.hi, align 8, !tbaa !220
  %.not59 = icmp sgt i32 %i.hj, %i.gl
  br i1 %.not59, label %.thread115, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hh, i64 6768
  tail call void @_ZN7CaDiCaL8Internal15start_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288) %i.hh, ptr noundef nonnull align 8 dereferenceable(36) %i.hk, double noundef %i.gi)
  %.pre100 = load i8, ptr %i.he, align 4, !tbaa !219, !range !170
  %i.hl = trunc nuw i8 %.pre100 to i1
  br i1 %i.hl, label %.thread115, label %.thread116

.thread116:                                       ; preds = %bb.bg, %bb.bi
  %i.hm = load ptr, ptr %i.al, align 8, !tbaa !180 ; 3 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 7040
  %i.ho = load i32, ptr %i.hn, align 8, !tbaa !221
  %.not60 = icmp sgt i32 %i.ho, %i.gl
  br i1 %.not60, label %.thread115, label %bb.bj

bb.bj:                                            ; preds = %.thread116
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hm, i64 7008
  tail call void @_ZN7CaDiCaL8Internal15start_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288) %i.hm, ptr noundef nonnull align 8 dereferenceable(36) %i.hp, double noundef %i.gi)
  br label %.thread115

.thread115:                                       ; preds = %bb.bh, %bb.bj, %.thread116, %bb.bi
  %i.hq = load i32, ptr %0, align 8, !tbaa !223
  %i.hr = or i32 %i.hq, 256
  store i32 %i.hr, ptr %0, align 8, !tbaa !223
  br label %bb.bk

bb.bk:                                            ; preds = %.thread115, %bb.bd, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit

_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit: ; preds = %.sink.split.i, %bb.b, %bb.h, %bb.a, %bb.bk
  %.039 = phi i1 [ false, %bb.a ], [ false, %bb.h ], [ %.2, %bb.bk ], [ false, %bb.b ], [ false, %.sink.split.i ]
  ret i1 %.039
}

declare void @_ZN7CaDiCaL8Internal14stop_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288), ptr noundef nonnull align 8 dereferenceable(36), double noundef) local_unnamed_addr #3

declare void @_ZN7CaDiCaL8Internal15start_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288), ptr noundef nonnull align 8 dereferenceable(36), double noundef) local_unnamed_addr #3

declare void @_ZN7CaDiCaL8Internal13reset_watchesEv(ptr noundef nonnull align 8 dereferenceable(7288)) local_unnamed_addr #3

declare void @_ZN7CaDiCaL8Internal6reportEci(ptr noundef nonnull align 8 dereferenceable(7288), i8 noundef signext, i32 noundef) local_unnamed_addr #3

declare void @_ZN7CaDiCaL8Internal12init_watchesEv(ptr noundef nonnull align 8 dereferenceable(7288)) local_unnamed_addr #3

declare void @_ZN7CaDiCaL8Internal15connect_watchesEb(ptr noundef nonnull align 8 dereferenceable(7288), i1 noundef zeroext) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN7CaDiCaL8Internal9propagateEv(ptr noundef nonnull align 8 dereferenceable(7288)) local_unnamed_addr #3

declare void @_ZN7CaDiCaL8Internal18learn_empty_clauseEv(ptr noundef nonnull align 8 dereferenceable(7288)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #4

declare noundef double @_ZNK7CaDiCaL8Internal9real_timeEv(ptr noundef nonnull align 8 dereferenceable(7288)) local_unnamed_addr #3

declare noundef double @_ZNK7CaDiCaL8Internal12process_timeEv(ptr noundef nonnull align 8 dereferenceable(7288)) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #5

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { noreturn }
attributes #11 = { builtin allocsize(0) }
attributes #12 = { builtin nounwind }
attributes #13 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !10, i64 0}
!9 = !{!"_ZTSNSt12_Vector_baseISt6vectorIPN7CaDiCaL6ClauseESaIS3_EESaIS5_EE17_Vector_impl_dataE", !10, i64 0, !10, i64 8, !10, i64 16}
!10 = !{!"p1 _ZTSSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!13, !14, i64 8}
!13 = !{!"_ZTSNSt12_Vector_baseIPN7CaDiCaL6ClauseESaIS2_EE17_Vector_impl_dataE", !14, i64 0, !14, i64 8, !14, i64 16}
!14 = !{!"p2 _ZTSN7CaDiCaL6ClauseE", !15, i64 0}
!15 = !{!"any p2 pointer", !11, i64 0}
!16 = !{!13, !14, i64 0}
!17 = !{!18, !5, i64 3824}
!18 = !{!"_ZTSN7CaDiCaL8InternalE", !5, i64 0, !19, i64 4, !19, i64 5, !19, i64 6, !19, i64 7, !19, i64 8, !19, i64 9, !19, i64 10, !19, i64 11, !19, i64 12, !19, i64 13, !19, i64 14, !19, i64 15, !19, i64 16, !19, i64 17, !19, i64 18, !6, i64 19, !20, i64 24, !21, i64 72, !5, i64 80, !21, i64 88, !21, i64 96, !21, i64 104, !21, i64 112, !19, i64 120, !22, i64 128, !22, i64 152, !22, i64 176, !22, i64 200, !22, i64 224, !22, i64 248, !27, i64 272, !30, i64 296, !19, i64 320, !19, i64 321, !5, i64 324, !35, i64 328, !40, i64 472, !36, i64 480, !41, i64 504, !46, i64 528, !41, i64 552, !50, i64 576, !51, i64 600, !56, i64 624, !57, i64 632, !60, i64 688, !65, i64 712, !46, i64 736, !70, i64 760, !75, i64 784, !75, i64 808, !79, i64 832, !46, i64 856, !75, i64 880, !82, i64 904, !87, i64 928, !92, i64 952, !92, i64 960, !92, i64 968, !92, i64 976, !92, i64 984, !19, i64 992, !19, i64 993, !19, i64 994, !5, i64 996, !21, i64 1000, !92, i64 1008, !21, i64 1016, !21, i64 1024, !21, i64 1032, !21, i64 1040, !21, i64 1048, !21, i64 1056, !46, i64 1064, !46, i64 1088, !46, i64 1112, !46, i64 1136, !19, i64 1160, !19, i64 1161, !46, i64 1168, !46, i64 1192, !46, i64 1216, !46, i64 1240, !46, i64 1264, !46, i64 1288, !46, i64 1312, !93, i64 1336, !21, i64 2152, !46, i64 2160, !94, i64 2184, !27, i64 2208, !99, i64 2232, !104, i64 2800, !106, i64 2968, !113, i64 3056, !114, i64 3104, !115, i64 3112, !116, i64 3120, !121, i64 3144, !126, i64 3168, !131, i64 3192, !132, i64 3912, !149, i64 5560, !19, i64 7128, !151, i64 7136, !153, i64 7192, !154, i64 7216, !59, i64 7248, !156, i64 7256, !19, i64 7264, !157, i64 7272, !158, i64 7280}
!19 = !{!"bool", !6, i64 0}
!20 = !{!"_ZTSN7CaDiCaL9ReluctantE", !21, i64 0, !21, i64 8, !21, i64 16, !21, i64 24, !21, i64 32, !19, i64 40, !19, i64 41}
!21 = !{!"long", !6, i64 0}
!22 = !{!"_ZTSSt6vectorImSaImEE", !23, i64 0}
!23 = !{!"_ZTSSt12_Vector_baseImSaImEE", !24, i64 0}
!24 = !{!"_ZTSNSt12_Vector_baseImSaImEE12_Vector_implE", !25, i64 0}
!25 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !26, i64 0, !26, i64 8, !26, i64 16}
!26 = !{!"p1 long", !11, i64 0}
!27 = !{!"_ZTSSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE", !28, i64 0}
!28 = !{!"_ZTSSt12_Vector_baseIPN7CaDiCaL6ClauseESaIS2_EE", !29, i64 0}
!29 = !{!"_ZTSNSt12_Vector_baseIPN7CaDiCaL6ClauseESaIS2_EE12_Vector_implE", !13, i64 0}
!30 = !{!"_ZTSSt6vectorIS_IS_ImSaImEESaIS1_EESaIS3_EE", !31, i64 0}
!31 = !{!"_ZTSSt12_Vector_baseISt6vectorIS0_ImSaImEESaIS2_EESaIS4_EE", !32, i64 0}
!32 = !{!"_ZTSNSt12_Vector_baseISt6vectorIS0_ImSaImEESaIS2_EESaIS4_EE12_Vector_implE", !33, i64 0}
!33 = !{!"_ZTSNSt12_Vector_baseISt6vectorIS0_ImSaImEESaIS2_EESaIS4_EE17_Vector_impl_dataE", !34, i64 0, !34, i64 8, !34, i64 16}
!34 = !{!"p1 _ZTSSt6vectorIS_ImSaImEESaIS1_EE", !11, i64 0}
!35 = !{!"_ZTSN7CaDiCaL6PhasesE", !36, i64 0, !36, i64 24, !36, i64 48, !36, i64 72, !36, i64 96, !36, i64 120}
!36 = !{!"_ZTSSt6vectorIaSaIaEE", !37, i64 0}
!37 = !{!"_ZTSSt12_Vector_baseIaSaIaEE", !38, i64 0}
!38 = !{!"_ZTSNSt12_Vector_baseIaSaIaEE12_Vector_implE", !39, i64 0}
!39 = !{!"_ZTSNSt12_Vector_baseIaSaIaEE17_Vector_impl_dataE", !40, i64 0, !40, i64 8, !40, i64 16}
!40 = !{!"p1 omnipotent char", !11, i64 0}
!41 = !{!"_ZTSSt6vectorIjSaIjEE", !42, i64 0}
!42 = !{!"_ZTSSt12_Vector_baseIjSaIjEE", !43, i64 0}
!43 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE12_Vector_implE", !44, i64 0}
!44 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !45, i64 0, !45, i64 8, !45, i64 16}
!45 = !{!"p1 int", !11, i64 0}
!46 = !{!"_ZTSSt6vectorIiSaIiEE", !47, i64 0}
!47 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !48, i64 0}
!48 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !49, i64 0}
!49 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !45, i64 0, !45, i64 8, !45, i64 16}
!50 = !{!"_ZTSN7CaDiCaL5QueueE", !5, i64 0, !5, i64 4, !5, i64 8, !21, i64 16}
!51 = !{!"_ZTSSt6vectorIN7CaDiCaL4LinkESaIS1_EE", !52, i64 0}
!52 = !{!"_ZTSSt12_Vector_baseIN7CaDiCaL4LinkESaIS1_EE", !53, i64 0}
!53 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL4LinkESaIS1_EE12_Vector_implE", !54, i64 0}
!54 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL4LinkESaIS1_EE17_Vector_impl_dataE", !55, i64 0, !55, i64 8, !55, i64 16}
!55 = !{!"p1 _ZTSN7CaDiCaL4LinkE", !11, i64 0}
!56 = !{!"double", !6, i64 0}
!57 = !{!"_ZTSN7CaDiCaL4heapINS_13score_smallerEEE", !41, i64 0, !41, i64 24, !58, i64 48}
!58 = !{!"_ZTSN7CaDiCaL13score_smallerE", !59, i64 0}
!59 = !{!"p1 _ZTSN7CaDiCaL8InternalE", !11, i64 0}
!60 = !{!"_ZTSSt6vectorIdSaIdEE", !61, i64 0}
!61 = !{!"_ZTSSt12_Vector_baseIdSaIdEE", !62, i64 0}
!62 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE12_Vector_implE", !63, i64 0}
!63 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !64, i64 0, !64, i64 8, !64, i64 16}
!64 = !{!"p1 double", !11, i64 0}
!65 = !{!"_ZTSSt6vectorIN7CaDiCaL3VarESaIS1_EE", !66, i64 0}
!66 = !{!"_ZTSSt12_Vector_baseIN7CaDiCaL3VarESaIS1_EE", !67, i64 0}
!67 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL3VarESaIS1_EE12_Vector_implE", !68, i64 0}
!68 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL3VarESaIS1_EE17_Vector_impl_dataE", !69, i64 0, !69, i64 8, !69, i64 16}
!69 = !{!"p1 _ZTSN7CaDiCaL3VarE", !11, i64 0}
!70 = !{!"_ZTSSt6vectorIN7CaDiCaL5FlagsESaIS1_EE", !71, i64 0}
!71 = !{!"_ZTSSt12_Vector_baseIN7CaDiCaL5FlagsESaIS1_EE", !72, i64 0}
!72 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL5FlagsESaIS1_EE12_Vector_implE", !73, i64 0}
!73 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL5FlagsESaIS1_EE17_Vector_impl_dataE", !74, i64 0, !74, i64 8, !74, i64 16}
!74 = !{!"p1 _ZTSN7CaDiCaL5FlagsE", !11, i64 0}
!75 = !{!"_ZTSSt6vectorIlSaIlEE", !76, i64 0}
!76 = !{!"_ZTSSt12_Vector_baseIlSaIlEE", !77, i64 0}
!77 = !{!"_ZTSNSt12_Vector_baseIlSaIlEE12_Vector_implE", !78, i64 0}
!78 = !{!"_ZTSNSt12_Vector_baseIlSaIlEE17_Vector_impl_dataE", !26, i64 0, !26, i64 8, !26, i64 16}
!79 = !{!"_ZTSSt6vectorIS_IPN7CaDiCaL6ClauseESaIS2_EESaIS4_EE", !80, i64 0}
!80 = !{!"_ZTSSt12_Vector_baseISt6vectorIPN7CaDiCaL6ClauseESaIS3_EESaIS5_EE", !81, i64 0}
!81 = !{!"_ZTSNSt12_Vector_baseISt6vectorIPN7CaDiCaL6ClauseESaIS3_EESaIS5_EE12_Vector_implE", !9, i64 0}
!82 = !{!"_ZTSSt6vectorIS_IN7CaDiCaL3BinESaIS1_EESaIS3_EE", !83, i64 0}
!83 = !{!"_ZTSSt12_Vector_baseISt6vectorIN7CaDiCaL3BinESaIS2_EESaIS4_EE", !84, i64 0}
!84 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN7CaDiCaL3BinESaIS2_EESaIS4_EE12_Vector_implE", !85, i64 0}
!85 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN7CaDiCaL3BinESaIS2_EESaIS4_EE17_Vector_impl_dataE", !86, i64 0, !86, i64 8, !86, i64 16}
!86 = !{!"p1 _ZTSSt6vectorIN7CaDiCaL3BinESaIS1_EE", !11, i64 0}
!87 = !{!"_ZTSSt6vectorIS_IN7CaDiCaL5WatchESaIS1_EESaIS3_EE", !88, i64 0}
!88 = !{!"_ZTSSt12_Vector_baseISt6vectorIN7CaDiCaL5WatchESaIS2_EESaIS4_EE", !89, i64 0}
!89 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN7CaDiCaL5WatchESaIS2_EESaIS4_EE12_Vector_implE", !90, i64 0}
!90 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN7CaDiCaL5WatchESaIS2_EESaIS4_EE17_Vector_impl_dataE", !91, i64 0, !91, i64 8, !91, i64 16}
!91 = !{!"p1 _ZTSSt6vectorIN7CaDiCaL5WatchESaIS1_EE", !11, i64 0}
!92 = !{!"p1 _ZTSN7CaDiCaL6ClauseE", !11, i64 0}
!93 = !{!"_ZTS4Reap", !21, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !6, i64 24}
!94 = !{!"_ZTSSt6vectorIN7CaDiCaL5LevelESaIS1_EE", !95, i64 0}
!95 = !{!"_ZTSSt12_Vector_baseIN7CaDiCaL5LevelESaIS1_EE", !96, i64 0}
!96 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL5LevelESaIS1_EE12_Vector_implE", !97, i64 0}
!97 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL5LevelESaIS1_EE17_Vector_impl_dataE", !98, i64 0, !98, i64 8, !98, i64 16}
!98 = !{!"p1 _ZTSN7CaDiCaL5LevelE", !11, i64 0}
!99 = !{!"_ZTSN7CaDiCaL8AveragesE", !21, i64 0, !100, i64 8, !100, i64 288}
!100 = !{!"_ZTSN7CaDiCaL8AveragesUt_E", !101, i64 0, !103, i64 80, !102, i64 160, !102, i64 200, !102, i64 240}
!101 = !{!"_ZTSN7CaDiCaL8AveragesUt_Ut_E", !102, i64 0, !102, i64 40}
!102 = !{!"_ZTSN7CaDiCaL3EMAE", !56, i64 0, !56, i64 8, !56, i64 16, !56, i64 24, !56, i64 32}
!103 = !{!"_ZTSN7CaDiCaL8AveragesUt_Ut0_E", !102, i64 0, !102, i64 40}
!104 = !{!"_ZTSN7CaDiCaL5LimitE", !19, i64 0, !21, i64 8, !21, i64 16, !21, i64 24, !21, i64 32, !21, i64 40, !21, i64 48, !21, i64 56, !21, i64 64, !21, i64 72, !21, i64 80, !21, i64 88, !21, i64 96, !21, i64 104, !21, i64 112, !21, i64 120, !5, i64 128, !5, i64 132, !6, i64 136, !21, i64 152, !105, i64 160}
!105 = !{!"_ZTSN7CaDiCaL5LimitUt_E", !5, i64 0, !5, i64 4}
!106 = !{!"_ZTSN7CaDiCaL4LastE", !107, i64 0, !107, i64 8, !108, i64 16, !109, i64 40, !110, i64 56, !110, i64 64, !111, i64 72, !112, i64 80}
!107 = !{!"_ZTSN7CaDiCaL4LastUt_E", !21, i64 0}
!108 = !{!"_ZTSN7CaDiCaL4LastUt0_E", !21, i64 0, !21, i64 8, !21, i64 16}
!109 = !{!"_ZTSN7CaDiCaL4LastUt1_E", !21, i64 0, !21, i64 8}
!110 = !{!"_ZTSN7CaDiCaL4LastUt2_E", !21, i64 0}
!111 = !{!"_ZTSN7CaDiCaL4LastUt3_E", !21, i64 0}
!112 = !{!"_ZTSN7CaDiCaL4LastUt4_E", !21, i64 0}
!113 = !{!"_ZTSN7CaDiCaL3IncE", !21, i64 0, !21, i64 8, !21, i64 16, !21, i64 24, !21, i64 32, !21, i64 40}
!114 = !{!"p1 _ZTSN7CaDiCaL5ProofE", !11, i64 0}
!115 = !{!"p1 _ZTSN7CaDiCaL11LratBuilderE", !11, i64 0}
!116 = !{!"_ZTSSt6vectorIPN7CaDiCaL6TracerESaIS2_EE", !117, i64 0}
!117 = !{!"_ZTSSt12_Vector_baseIPN7CaDiCaL6TracerESaIS2_EE", !118, i64 0}
!118 = !{!"_ZTSNSt12_Vector_baseIPN7CaDiCaL6TracerESaIS2_EE12_Vector_implE", !119, i64 0}
!119 = !{!"_ZTSNSt12_Vector_baseIPN7CaDiCaL6TracerESaIS2_EE17_Vector_impl_dataE", !120, i64 0, !120, i64 8, !120, i64 16}
!120 = !{!"p2 _ZTSN7CaDiCaL6TracerE", !15, i64 0}
!121 = !{!"_ZTSSt6vectorIPN7CaDiCaL10FileTracerESaIS2_EE", !122, i64 0}
!122 = !{!"_ZTSSt12_Vector_baseIPN7CaDiCaL10FileTracerESaIS2_EE", !123, i64 0}
!123 = !{!"_ZTSNSt12_Vector_baseIPN7CaDiCaL10FileTracerESaIS2_EE12_Vector_implE", !124, i64 0}
!124 = !{!"_ZTSNSt12_Vector_baseIPN7CaDiCaL10FileTracerESaIS2_EE17_Vector_impl_dataE", !125, i64 0, !125, i64 8, !125, i64 16}
!125 = !{!"p2 _ZTSN7CaDiCaL10FileTracerE", !15, i64 0}
!126 = !{!"_ZTSSt6vectorIPN7CaDiCaL10StatTracerESaIS2_EE", !127, i64 0}
!127 = !{!"_ZTSSt12_Vector_baseIPN7CaDiCaL10StatTracerESaIS2_EE", !128, i64 0}
!128 = !{!"_ZTSNSt12_Vector_baseIPN7CaDiCaL10StatTracerESaIS2_EE12_Vector_implE", !129, i64 0}
!129 = !{!"_ZTSNSt12_Vector_baseIPN7CaDiCaL10StatTracerESaIS2_EE17_Vector_impl_dataE", !130, i64 0, !130, i64 8, !130, i64 16}
!130 = !{!"p2 _ZTSN7CaDiCaL10StatTracerE", !15, i64 0}
!131 = !{!"_ZTSN7CaDiCaL7OptionsE", !59, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !5, i64 108, !5, i64 112, !5, i64 116, !5, i64 120, !5, i64 124, !5, i64 128, !5, i64 132, !5, i64 136, !5, i64 140, !5, i64 144, !5, i64 148, !5, i64 152, !5, i64 156, !5, i64 160, !5, i64 164, !5, i64 168, !5, i64 172, !5, i64 176, !5, i64 180, !5, i64 184, !5, i64 188, !5, i64 192, !5, i64 196, !5, i64 200, !5, i64 204, !5, i64 208, !5, i64 212, !5, i64 216, !5, i64 220, !5, i64 224, !5, i64 228, !5, i64 232, !5, i64 236, !5, i64 240, !5, i64 244, !5, i64 248, !5, i64 252, !5, i64 256, !5, i64 260, !5, i64 264, !5, i64 268, !5, i64 272, !5, i64 276, !5, i64 280, !5, i64 284, !5, i64 288, !5, i64 292, !5, i64 296, !5, i64 300, !5, i64 304, !5, i64 308, !5, i64 312, !5, i64 316, !5, i64 320, !5, i64 324, !5, i64 328, !5, i64 332, !5, i64 336, !5, i64 340, !5, i64 344, !5, i64 348, !5, i64 352, !5, i64 356, !5, i64 360, !5, i64 364, !5, i64 368, !5, i64 372, !5, i64 376, !5, i64 380, !5, i64 384, !5, i64 388, !5, i64 392, !5, i64 396, !5, i64 400, !5, i64 404, !5, i64 408, !5, i64 412, !5, i64 416, !5, i64 420, !5, i64 424, !5, i64 428, !5, i64 432, !5, i64 436, !5, i64 440, !5, i64 444, !5, i64 448, !5, i64 452, !5, i64 456, !5, i64 460, !5, i64 464, !5, i64 468, !5, i64 472, !5, i64 476, !5, i64 480, !5, i64 484, !5, i64 488, !5, i64 492, !5, i64 496, !5, i64 500, !5, i64 504, !5, i64 508, !5, i64 512, !5, i64 516, !5, i64 520, !5, i64 524, !5, i64 528, !5, i64 532, !5, i64 536, !5, i64 540, !5, i64 544, !5, i64 548, !5, i64 552, !5, i64 556, !5, i64 560, !5, i64 564, !5, i64 568, !5, i64 572, !5, i64 576, !5, i64 580, !5, i64 584, !5, i64 588, !5, i64 592, !5, i64 596, !5, i64 600, !5, i64 604, !5, i64 608, !5, i64 612, !5, i64 616, !5, i64 620, !5, i64 624, !5, i64 628, !5, i64 632, !5, i64 636, !5, i64 640, !5, i64 644, !5, i64 648, !5, i64 652, !5, i64 656, !5, i64 660, !5, i64 664, !5, i64 668, !5, i64 672, !5, i64 676, !5, i64 680, !5, i64 684, !5, i64 688, !5, i64 692, !5, i64 696, !5, i64 700, !5, i64 704, !5, i64 708, !5, i64 712, !5, i64 716}
!132 = !{!"_ZTSN7CaDiCaL5StatsE", !59, i64 0, !21, i64 8, !21, i64 16, !21, i64 24, !133, i64 32, !134, i64 88, !21, i64 168, !21, i64 176, !21, i64 184, !21, i64 192, !21, i64 200, !21, i64 208, !21, i64 216, !21, i64 224, !21, i64 232, !21, i64 240, !21, i64 248, !21, i64 256, !135, i64 264, !136, i64 296, !136, i64 320, !137, i64 344, !138, i64 360, !139, i64 392, !142, i64 472, !143, i64 528, !144, i64 560, !21, i64 584, !21, i64 592, !21, i64 600, !21, i64 608, !21, i64 616, !21, i64 624, !21, i64 632, !21, i64 640, !21, i64 648, !21, i64 656, !21, i64 664, !21, i64 672, !21, i64 680, !21, i64 688, !21, i64 696, !21, i64 704, !21, i64 712, !21, i64 720, !21, i64 728, !21, i64 736, !21, i64 744, !21, i64 752, !21, i64 760, !21, i64 768, !21, i64 776, !21, i64 784, !21, i64 792, !21, i64 800, !21, i64 808, !21, i64 816, !21, i64 824, !21, i64 832, !21, i64 840, !21, i64 848, !21, i64 856, !21, i64 864, !21, i64 872, !21, i64 880, !21, i64 888, !21, i64 896, !21, i64 904, !21, i64 912, !21, i64 920, !21, i64 928, !21, i64 936, !21, i64 944, !21, i64 952, !21, i64 960, !21, i64 968, !21, i64 976, !21, i64 984, !21, i64 992, !21, i64 1000, !21, i64 1008, !21, i64 1016, !21, i64 1024, !21, i64 1032, !21, i64 1040, !21, i64 1048, !21, i64 1056, !21, i64 1064, !21, i64 1072, !21, i64 1080, !21, i64 1088, !21, i64 1096, !21, i64 1104, !21, i64 1112, !21, i64 1120, !21, i64 1128, !21, i64 1136, !21, i64 1144, !21, i64 1152, !21, i64 1160, !21, i64 1168, !21, i64 1176, !21, i64 1184, !21, i64 1192, !21, i64 1200, !21, i64 1208, !21, i64 1216, !21, i64 1224, !145, i64 1232, !21, i64 1248, !21, i64 1256, !21, i64 1264, !21, i64 1272, !146, i64 1280, !21, i64 1304, !21, i64 1312, !21, i64 1320, !21, i64 1328, !21, i64 1336, !21, i64 1344, !21, i64 1352, !21, i64 1360, !21, i64 1368, !21, i64 1376, !21, i64 1384, !21, i64 1392, !21, i64 1400, !21, i64 1408, !21, i64 1416, !21, i64 1424, !21, i64 1432, !21, i64 1440, !21, i64 1448, !21, i64 1456, !21, i64 1464, !21, i64 1472, !21, i64 1480, !21, i64 1488, !21, i64 1496, !21, i64 1504, !21, i64 1512, !21, i64 1520, !21, i64 1528, !21, i64 1536, !147, i64 1544, !147, i64 1576, !148, i64 1608, !21, i64 1624, !21, i64 1632, !21, i64 1640}
!133 = !{!"_ZTSN7CaDiCaL5StatsUt_E", !21, i64 0, !21, i64 8, !21, i64 16, !21, i64 24, !21, i64 32, !21, i64 40, !21, i64 48}
!134 = !{!"_ZTSN7CaDiCaL5StatsUt0_E", !21, i64 0, !21, i64 8, !21, i64 16, !21, i64 24, !21, i64 32, !21, i64 40, !21, i64 48, !21, i64 56, !21, i64 64, !21, i64 72}
!135 = !{!"_ZTSN7CaDiCaL5StatsUt1_E", !21, i64 0, !21, i64 8, !21, i64 16, !21, i64 24}
!136 = !{!"_ZTSN7CaDiCaL5StatsUt2_E", !21, i64 0, !21, i64 8, !21, i64 16}
!137 = !{!"_ZTSN7CaDiCaL5StatsUt3_E", !56, i64 0, !56, i64 8}
!138 = !{!"_ZTSN7CaDiCaL5StatsUt4_E", !21, i64 0, !21, i64 8, !21, i64 16, !21, i64 24}
!139 = !{!"_ZTSN7CaDiCaL5StatsUt5_E", !21, i64 0, !21, i64 8, !140, i64 16, !140, i64 32, !140, i64 48, !141, i64 64}
!140 = !{!"_ZTSN7CaDiCaL5StatsUt5_Ut_E", !21, i64 0, !21, i64 8}
!141 = !{!"_ZTSN7CaDiCaL5StatsUt5_Ut0_E", !21, i64 0, !21, i64 8}
!142 = !{!"_ZTSN7CaDiCaL5StatsUt6_E", !21, i64 0, !21, i64 8, !21, i64 16, !21, i64 24, !21, i64 32, !21, i64 40, !21, i64 48}
!143 = !{!"_ZTSN7CaDiCaL5StatsUt7_E", !21, i64 0, !21, i64 8, !21, i64 16, !21, i64 24}
!144 = !{!"_ZTSN7CaDiCaL5StatsUt8_E", !21, i64 0, !21, i64 8, !21, i64 16}
!145 = !{!"_ZTSN7CaDiCaL5StatsUt9_E", !21, i64 0, !21, i64 8}
!146 = !{!"_ZTSN7CaDiCaL5StatsUt10_E", !21, i64 0, !21, i64 8, !21, i64 16}
!147 = !{!"_ZTSN7CaDiCaL5StatsUt11_E", !21, i64 0, !21, i64 8, !21, i64 16, !21, i64 24}
!148 = !{!"_ZTSN7CaDiCaL5StatsUt12_E", !21, i64 0, !21, i64 8}
!149 = !{!"_ZTSN7CaDiCaL8ProfilesE", !59, i64 0, !150, i64 8, !150, i64 48, !150, i64 88, !150, i64 128, !150, i64 168, !150, i64 208, !150, i64 248, !150, i64 288, !150, i64 328, !150, i64 368, !150, i64 408, !150, i64 448, !150, i64 488, !150, i64 528, !150, i64 568, !150, i64 608, !150, i64 648, !150, i64 688, !150, i64 728, !150, i64 768, !150, i64 808, !150, i64 848, !150, i64 888, !150, i64 928, !150, i64 968, !150, i64 1008, !150, i64 1048, !150, i64 1088, !150, i64 1128, !150, i64 1168, !150, i64 1208, !150, i64 1248, !150, i64 1288, !150, i64 1328, !150, i64 1368, !150, i64 1408, !150, i64 1448, !150, i64 1488, !150, i64 1528}
!150 = !{!"_ZTSN7CaDiCaL7ProfileE", !19, i64 0, !56, i64 8, !56, i64 16, !40, i64 24, !5, i64 32}
!151 = !{!"_ZTSN7CaDiCaL5ArenaE", !59, i64 0, !152, i64 8, !152, i64 32}
!152 = !{!"_ZTSN7CaDiCaL5ArenaUt_E", !40, i64 0, !40, i64 8, !40, i64 16}
!153 = !{!"_ZTSN7CaDiCaL6FormatE", !40, i64 0, !21, i64 8, !21, i64 16}
!154 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !155, i64 0, !21, i64 8, !6, i64 16}
!155 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !40, i64 0}
!156 = !{!"p1 _ZTSN7CaDiCaL8ExternalE", !11, i64 0}
!157 = !{!"_ZTSN7CaDiCaL5RangeE", !45, i64 0}
!158 = !{!"_ZTSN7CaDiCaL5SangeE", !45, i64 0}
!159 = !{!92, !92, i64 0}
!160 = !{!5, !5, i64 0}
!161 = !{!18, !21, i64 4984}
!162 = !{!49, !45, i64 8}
!163 = !{!49, !45, i64 16}
!164 = !{!49, !45, i64 0}
!165 = !{!14, !14, i64 0}
!166 = !{!21, !21, i64 0}
!167 = !{!18, !40, i64 472}
!168 = !{!6, !6, i64 0}
!169 = !{!18, !19, i64 320}
!170 = !{i8 0, i8 2}
!171 = !{}
!172 = !{!25, !26, i64 8}
!173 = !{!25, !26, i64 16}
!174 = !{!25, !26, i64 0}
!175 = !{!18, !21, i64 4992}
!176 = !{!13, !14, i64 16}
!177 = !{!18, !21, i64 5000}
!178 = !{!18, !21, i64 5008}
!179 = !{!73, !74, i64 0}
!180 = !{!18, !59, i64 7248}
!181 = !{!18, !21, i64 4976}
!182 = !{!157, !45, i64 0}
!183 = !{i64 4}
!184 = !{!18, !19, i64 7264}
!185 = !{!18, !5, i64 2964}
!186 = !{!18, !156, i64 7256}
!187 = !{!188, !195, i64 360}
!188 = !{!"_ZTSN7CaDiCaL8ExternalE", !59, i64 0, !5, i64 8, !21, i64 16, !189, i64 24, !46, i64 64, !46, i64 88, !46, i64 112, !22, i64 136, !189, i64 160, !46, i64 200, !19, i64 224, !19, i64 225, !46, i64 232, !189, i64 256, !189, i64 296, !41, i64 336, !195, i64 360, !196, i64 368, !197, i64 376, !198, i64 384, !189, i64 392, !199, i64 432, !40, i64 488, !46, i64 496, !189, i64 520, !157, i64 560}
!189 = !{!"_ZTSSt6vectorIbSaIbEE", !190, i64 0}
!190 = !{!"_ZTSSt13_Bvector_baseISaIbEE", !191, i64 0}
!191 = !{!"_ZTSNSt13_Bvector_baseISaIbEE13_Bvector_implE", !192, i64 0}
!192 = !{!"_ZTSNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataE", !193, i64 0, !193, i64 16, !26, i64 32}
!193 = !{!"_ZTSSt13_Bit_iterator", !194, i64 0}
!194 = !{!"_ZTSSt18_Bit_iterator_base", !26, i64 0, !5, i64 8}
!195 = !{!"p1 _ZTSN7CaDiCaL10TerminatorE", !11, i64 0}
!196 = !{!"p1 _ZTSN7CaDiCaL7LearnerE", !11, i64 0}
!197 = !{!"p1 _ZTSN7CaDiCaL23FixedAssignmentListenerE", !11, i64 0}
!198 = !{!"p1 _ZTSN7CaDiCaL18ExternalPropagatorE", !11, i64 0}
!199 = !{!"_ZTSSt13unordered_mapImSt6vectorIiSaIiEESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE", !200, i64 0}
!200 = !{!"_ZTSSt10_HashtableImSt4pairIKmSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE", !201, i64 0, !21, i64 8, !202, i64 16, !21, i64 24, !204, i64 32, !203, i64 48}
!201 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !15, i64 0}
!202 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !203, i64 0}
!203 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !11, i64 0}
!204 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !205, i64 0, !21, i64 8}
!205 = !{!"float", !6, i64 0}
!206 = !{!18, !5, i64 2960}
!207 = !{!18, !5, i64 3804}
!208 = !{!209, !209, i64 0}
!209 = !{!"vtable pointer", !7, i64 0}
!210 = distinct !{null}
!211 = !{!18, !5, i64 80}
!212 = !{!18, !5, i64 3808}
!213 = !{!18, !21, i64 3040}
!214 = !{!18, !21, i64 4200}
!215 = !{!18, !5, i64 3620}
!216 = !{!18, !5, i64 3608}
!217 = !{!18, !19, i64 8}
!218 = !{!18, !19, i64 7}
!219 = !{!18, !19, i64 12}
!220 = !{!18, !5, i64 6800}
!221 = !{!18, !5, i64 7040}
!222 = !{!18, !5, i64 6720}
!223 = !{!18, !5, i64 0}
!224 = !{!18, !5, i64 6880}
!225 = !{!18, !5, i64 6960}
!226 = !{!91, !91, i64 0}
!227 = !{!18, !21, i64 3968}
!228 = !{!18, !5, i64 3828}
!229 = !{!18, !5, i64 3820}
!230 = !{!18, !5, i64 3816}
!231 = !{!18, !21, i64 4216}
!232 = !{!18, !21, i64 4224}
!233 = !{!18, !5, i64 3812}
!234 = !{!18, !5, i64 3832}
!235 = !{!18, !5, i64 3664}
!236 = distinct !{!236, !237, !238}
!237 = !{!"llvm.loop.mustprogress"}
!238 = !{!"llvm.loop.peeled.count", i32 1}
end_hunk_0
