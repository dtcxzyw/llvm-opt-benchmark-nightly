Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/pbc?download=true
inline.NumInlined: 412
inline.NumDeleted: 186
loop-unroll.NumCompletelyUnrolled: 90
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 95
begin_hunk_0_@_ZL11low_set_pbcP5t_pbc7PbcTypePKiPA3_Kf:bb.a

.loopexit253.loopexit.unr-lcssa:                  ; preds = %bb.ah
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit253, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit253.loopexit.unr-lcssa, %.lr.ph274
  %.epil.init = phi i32 [ 5, %.lr.ph274 ], [ %i.cg, %.loopexit253.loopexit.unr-lcssa ]
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph274 ], [ %indvars.iv.next.7, %.loopexit253.loopexit.unr-lcssa ]
  %lcmp.mod478 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod478)
  br label %bb.ax

bb.ax:                                            ; preds = %bb.az, %.epil.preheader
  %i.dj = phi i32 [ %.epil.init, %.epil.preheader ], [ %i.dn, %bb.az ]
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.az ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.az ]
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv.epil
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !23
  %i.dm = fcmp une float %i.dl, 0.000000e+00
  br i1 %i.dm, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  store i32 6, ptr %i.ak, align 4, !tbaa !22
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.dn = phi i32 [ %i.dj, %bb.ax ], [ 6, %bb.ay ] ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit253, label %bb.ax, !llvm.loop !72

.loopexit253:                                     ; preds = %.loopexit253.loopexit.unr-lcssa, %bb.az, %.loopexit255.1, %.loopexit255.1.thread, %.split454, %bb.am, %bb.al, %.preheader252, %bb.ar, %bb.aq, %bb.at, %bb.as
  %.sroa.0356.1387 = phi i32 [ %.sroa.0356.1396, %bb.as ], [ %.sroa.0356.1388401409417429451, %bb.al ], [ %spec.select, %.preheader252 ], [ %.sroa.0356.1396, %bb.ar ], [ %.sroa.0356.1396, %bb.aq ], [ %.sroa.0356.1396, %bb.at ], [ %.sroa.0356.1388401409417436, %.split454 ], [ %.sroa.0356.1388401409417436, %.loopexit255.1 ], [ %.sroa.0356.1388401412, %.loopexit255.1.thread ], [ %.sroa.0356.1388401409417429451, %bb.am ], [ %spec.select, %bb.az ], [ %spec.select, %.loopexit253.loopexit.unr-lcssa ]
  %.sroa.11.0386 = phi i1 [ %.sroa.11.0395, %bb.as ], [ %.sroa.11.0385402408419428452, %bb.al ], [ %i.v, %.preheader252 ], [ %.sroa.11.0395, %bb.ar ], [ %.sroa.11.0395, %bb.aq ], [ %.sroa.11.0395, %bb.at ], [ false, %.split454 ], [ false, %.loopexit255.1 ], [ true, %.loopexit255.1.thread ], [ %.sroa.11.0385402408419428452, %bb.am ], [ %i.v, %bb.az ], [ %i.v, %.loopexit253.loopexit.unr-lcssa ]
  %.sroa.20.0384 = phi i1 [ %.sroa.20.0394, %bb.as ], [ false, %bb.al ], [ true, %.preheader252 ], [ %.sroa.20.0394, %bb.ar ], [ %.sroa.20.0394, %bb.aq ], [ %.sroa.20.0394, %bb.at ], [ true, %.split454 ], [ true, %.loopexit255.1 ], [ true, %.loopexit255.1.thread ], [ false, %bb.am ], [ %or.cond285.2, %bb.az ], [ %or.cond285.2, %.loopexit253.loopexit.unr-lcssa ]
  %i.do = phi i32 [ 7, %bb.as ], [ %i.cr, %bb.al ], [ 5, %.preheader252 ], [ 1, %bb.ar ], [ 2, %bb.aq ], [ 10, %bb.at ], [ 4, %.split454 ], [ 3, %.loopexit255.1 ], [ 3, %.loopexit255.1.thread ], [ 4, %bb.am ], [ %i.cg, %.loopexit253.loopexit.unr-lcssa ], [ %i.dn, %bb.az ]
  %i.dp = load float, ptr %3, align 4, !tbaa !23  ; 5 uses
  %i.dq = load float, ptr %.rtmerge460, align 4, !tbaa !23 ; 2 uses
  %i.dr = fmul float %i.dq, %i.dq
  %i.ds = tail call float @llvm.fmuladd.f32(float %i.dp, float %i.dp, float %i.dr)
  %i.dt = load float, ptr %.rtmerge461, align 4, !tbaa !23 ; 2 uses
  %i.du = tail call noundef float @llvm.fmuladd.f32(float %i.dt, float %i.dt, float %i.ds) ; 2 uses
  %i.dv = load float, ptr %.rtmerge462, align 4, !tbaa !23 ; 2 uses
  %i.dw = load float, ptr %.rtmerge463, align 4, !tbaa !23 ; 5 uses
  %i.dx = fmul float %i.dw, %i.dw
  %i.dy = tail call float @llvm.fmuladd.f32(float %i.dv, float %i.dv, float %i.dx)
  %i.dz = load float, ptr %.rtmerge464, align 4, !tbaa !23 ; 2 uses
  %i.ea = tail call noundef float @llvm.fmuladd.f32(float %i.dz, float %i.dz, float %i.dy) ; 2 uses
  %i.eb = fcmp olt float %i.ea, %i.du
  %.sroa.speculated23.i = select i1 %i.eb, float %i.ea, float %i.du
  %i.ec = fmul float %.sroa.speculated23.i, 2.500000e-01 ; 3 uses
  br i1 %i.q, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %.loopexit253
  %i.ed = load float, ptr %.rtmerge465, align 4, !tbaa !23 ; 2 uses
  %i.ee = load float, ptr %.rtmerge466, align 4, !tbaa !23 ; 3 uses
  %i.ef = fmul float %i.ee, %i.ee
  %i.eg = tail call float @llvm.fmuladd.f32(float %i.ed, float %i.ed, float %i.ef)
  %i.eh = load float, ptr %.rtmerge467, align 4, !tbaa !23 ; 4 uses
  %i.ei = tail call noundef float @llvm.fmuladd.f32(float %i.eh, float %i.eh, float %i.eg)
  %i.ej = fmul float %i.ei, 2.500000e-01          ; 2 uses
  %i.ek = fcmp olt float %i.ej, %i.ec
  %.sroa.speculated19.i = select i1 %i.ek, float %i.ej, float %i.ec
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.el = tail call noundef float @llvm.fabs.f32(float %i.ee)
  %i.em = fsub float %i.dw, %i.el                 ; 3 uses
  store float %i.em, ptr %i.c, align 4, !tbaa !23
  %i.en = fcmp olt float %i.eh, %i.em             ; 2 uses
  %..i13.i = select i1 %i.en, ptr %.rtmerge467, ptr %i.c
  %i.eo = select i1 %i.en, float %i.eh, float %i.em
  %i.ep = fcmp olt float %i.eo, %i.dp
  %..i14.i = select i1 %i.ep, ptr %..i13.i, ptr %3
  %i.eq = load float, ptr %..i14.i, align 4, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_Z11max_cutoff27PbcTypePA3_Kf.exit

bb.bb:                                            ; preds = %.loopexit253
  %i.er = fcmp olt float %i.dw, %i.dp
  %i.es = select i1 %i.er, float %i.dw, float %i.dp
  br label %_Z11max_cutoff27PbcTypePA3_Kf.exit

_Z11max_cutoff27PbcTypePA3_Kf.exit:               ; preds = %bb.ba, %bb.bb
  %.028.i = phi float [ %i.ec, %bb.bb ], [ %.sroa.speculated19.i, %bb.ba ] ; 2 uses
  %.0.i236 = phi float [ %i.es, %bb.bb ], [ %i.eq, %bb.ba ] ; 2 uses
  %i.et = fmul float %.0.i236, %.0.i236           ; 2 uses
  %i.eu = fcmp olt float %i.et, %.028.i
  %.sroa.speculated.i = select i1 %i.eu, float %i.et, float %.028.i
  store float %.sroa.speculated.i, ptr %.rtmerge468, align 4, !tbaa !24
  switch i32 %i.do, label %.loopexit251 [
    i32 2, label %bb.bc
    i32 4, label %bb.bc
    i32 8, label %bb.bc
  ]

bb.bc:                                            ; preds = %_Z11max_cutoff27PbcTypePA3_Kf.exit, %_Z11max_cutoff27PbcTypePA3_Kf.exit, %_Z11max_cutoff27PbcTypePA3_Kf.exit
  %i.ev = load ptr, ptr @debug, align 8, !tbaa !27 ; 2 uses
  %.not227 = icmp eq ptr %i.ev, null
  br i1 %.not227, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  tail call void @_Z8pr_rvecsP8_IO_FILEiPKcPA3_Kfi(ptr noundef nonnull %i.ev, i32 noundef 0, ptr noundef nonnull @.str.40, ptr noundef nonnull %3, i32 noundef 3)
  %i.ew = load ptr, ptr @debug, align 8, !tbaa !27
  %i.ex = load float, ptr %.rtmerge468, align 4, !tbaa !24
  %i.ey = tail call noundef float @sqrtf(float noundef %i.ex) #20
  %i.ez = fpext float %i.ey to double
  %i.fa = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ew, ptr noundef nonnull @.str.41, double noundef %i.ez) #20 ; 0 uses
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.fb = icmp ne i32 %.sroa.0356.1387, 0
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.fe = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.ff = getelementptr inbounds nuw i8, ptr %3, i64 20
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %.loopexit250
  %indvars.iv327 = phi i64 [ 0, %bb.be ], [ %indvars.iv.next328, %.loopexit250 ] ; 4 uses
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr @__const._ZL11low_set_pbcP5t_pbc7PbcTypePKiPA3_Kf.order, i64 %indvars.iv327
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !32 ; 3 uses
  %i.fi = trunc i64 %indvars.iv327 to i32
  %i.fj = add i32 %i.fi, -1
  %i.fk = icmp ult i32 %i.fj, 2                   ; 2 uses
  %or.cond5 = and i1 %.sroa.20.0384, %i.fk
  br i1 %or.cond5, label %.loopexit250, label %.preheader249

.preheader249:                                    ; preds = %bb.bf
  %i.fl = sitofp i32 %i.fh to float               ; 4 uses
  %.not229.2 = icmp eq i64 %indvars.iv327, 0
  %i.fm = fneg float %i.fl                        ; 3 uses
  br label %bb.bg

bb.bg:                                            ; preds = %.preheader249, %.loopexit
  %indvars.iv323 = phi i64 [ 0, %.preheader249 ], [ %indvars.iv.next324, %.loopexit ] ; 4 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr @__const._ZL11low_set_pbcP5t_pbc7PbcTypePKiPA3_Kf.order, i64 %indvars.iv323
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !32 ; 3 uses
  %i.fp = trunc i64 %indvars.iv323 to i32
  %i.fq = add i32 %i.fp, -1
  %i.fr = icmp ult i32 %i.fq, 2                   ; 2 uses
  %or.cond7 = and i1 %.sroa.11.0386, %i.fr
  br i1 %or.cond7, label %.loopexit, label %.preheader248

.preheader248:                                    ; preds = %bb.bg
  %or.cond11 = or i1 %i.fr, %i.fk
  %i.fs = sitofp i32 %i.fo to float               ; 4 uses
  %or.cond11.fr = freeze i1 %or.cond11
  br i1 %or.cond11.fr, label %.preheader248.split.preheader, label %.loopexit

.preheader248.split.preheader:                    ; preds = %.preheader248
  %.not229.1 = icmp eq i64 %indvars.iv323, 0
  %i.ft = fneg float %i.fs                        ; 3 uses
  br label %.preheader248.split

.preheader248.split:                              ; preds = %.preheader248.split.preheader, %bb.bz
  %indvars.iv319 = phi i64 [ 0, %.preheader248.split.preheader ], [ %indvars.iv.next320, %bb.bz ] ; 4 uses
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr @__const._ZL11low_set_pbcP5t_pbc7PbcTypePKiPA3_Kf.order, i64 %indvars.iv319
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !32 ; 3 uses
  %i.fw = icmp eq i64 %indvars.iv319, 0
  %or.cond9.not246 = or i1 %i.fb, %i.fw
  br i1 %or.cond9.not246, label %bb.bh, label %bb.bz

bb.bh:                                            ; preds = %.preheader248.split
  %i.fx = sitofp i32 %i.fv to float               ; 4 uses
  %i.fy = load i32, ptr %.rtmerge469, align 4, !tbaa !33 ; 3 uses
  %i.fz = load float, ptr %3, align 4, !tbaa !23  ; 2 uses
  %i.ga = load float, ptr %.rtmerge462, align 4, !tbaa !23 ; 2 uses
  %i.gb = fmul float %i.ga, %i.fs
  %i.gc = tail call float @llvm.fmuladd.f32(float %i.fx, float %i.fz, float %i.gb)
  %i.gd = load float, ptr %.rtmerge465, align 4, !tbaa !23 ; 2 uses
  %i.ge = tail call float @llvm.fmuladd.f32(float %i.fl, float %i.gd, float %i.gc) ; 6 uses
  %i.gf = icmp eq i32 %i.fy, 0
  br i1 %i.gf, label %bb.bl, label %bb.bi

.preheader247.preheader:                          ; preds = %bb.bt
  %.not229 = icmp eq i64 %indvars.iv319, 0
  br i1 %.not229, label %.preheader247.1, label %.preheader

bb.bi:                                            ; preds = %bb.bh
  %i.gg = fcmp olt float %i.ge, 0.000000e+00
  br i1 %i.gg, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.gh = fneg float %i.ge                        ; 2 uses
  %i.gi = load float, ptr %.rtmerge471, align 4, !tbaa !23 ; 2 uses
  %i.gj = fcmp ogt float %i.gi, %i.gh
  %.sroa.speculated239 = select i1 %i.gj, float %i.gh, float %i.gi
  br label %bb.bl

bb.bk:                                            ; preds = %bb.bi
  %i.gk = load float, ptr %.rtmerge471, align 4, !tbaa !23 ; 2 uses
  %i.gl = fcmp ogt float %i.gk, %i.ge
  %.sroa.speculated.v = select i1 %i.gl, float %i.ge, float %i.gk
  %.sroa.speculated = fneg float %.sroa.speculated.v
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bh, %bb.bj, %bb.bk
  %.sroa.0343.0 = phi float [ %i.ge, %bb.bk ], [ %i.ge, %bb.bj ], [ 0.000000e+00, %bb.bh ] ; 3 uses
  %.sroa.0.0 = phi float [ %.sroa.speculated, %bb.bk ], [ %.sroa.speculated239, %bb.bj ], [ 0.000000e+00, %bb.bh ] ; 4 uses
  %i.gm = fmul float %.sroa.0.0, %.sroa.0.0
  %8 = fadd float %i.gm, 0.000000e+00
  %i.gn = fadd float %.sroa.0.0, %.sroa.0343.0    ; 5 uses
  %i.go = fmul float %i.gn, %i.gn
  %9 = fadd float %i.go, 0.000000e+00
  %i.gp = load float, ptr %.rtmerge460, align 4, !tbaa !23 ; 2 uses
  %i.gq = load float, ptr %.rtmerge472, align 4, !tbaa !23 ; 2 uses
  %i.gr = fmul float %i.gq, %i.fs
  %i.gs = tail call float @llvm.fmuladd.f32(float %i.fx, float %i.gp, float %i.gr)
  %i.gt = load float, ptr %i.fe, align 4, !tbaa !23 ; 2 uses
  %i.gu = tail call float @llvm.fmuladd.f32(float %i.fl, float %i.gt, float %i.gs) ; 6 uses
  %i.gv = icmp eq i32 %i.fy, 1
  br i1 %i.gv, label %bb.bp, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.gw = fcmp olt float %i.gu, 0.000000e+00
  br i1 %i.gw, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.gx = load float, ptr %.rtmerge473, align 4, !tbaa !23 ; 2 uses
  %i.gy = fcmp ogt float %i.gx, %i.gu
  %.sroa.speculated.v.1 = select i1 %i.gy, float %i.gu, float %i.gx
  %.sroa.speculated.1 = fneg float %.sroa.speculated.v.1
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bm
  %i.gz = fneg float %i.gu                        ; 2 uses
  %i.ha = load float, ptr %.rtmerge473, align 4, !tbaa !23 ; 2 uses
  %i.hb = fcmp ogt float %i.ha, %i.gz
  %.sroa.speculated239.1 = select i1 %i.hb, float %i.gz, float %i.ha
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bl, %bb.bo, %bb.bn
  %.sroa.9.0 = phi float [ %i.gu, %bb.bn ], [ %i.gu, %bb.bo ], [ 0.000000e+00, %bb.bl ] ; 3 uses
  %.sroa.10.0 = phi float [ %.sroa.speculated.1, %bb.bn ], [ %.sroa.speculated239.1, %bb.bo ], [ 0.000000e+00, %bb.bl ] ; 4 uses
  %i.hc = fmul float %.sroa.10.0, %.sroa.10.0
  %i.hd = fadd float %8, %i.hc
  %i.he = fadd float %.sroa.10.0, %.sroa.9.0      ; 5 uses
  %i.hf = fmul float %i.he, %i.he
  %i.hg = fadd float %9, %i.hf
  %i.hh = load float, ptr %.rtmerge461, align 4, !tbaa !23 ; 2 uses
  %i.hi = load float, ptr %i.ff, align 4, !tbaa !23 ; 2 uses
  %i.hj = fmul float %i.hi, %i.fs
  %i.hk = tail call float @llvm.fmuladd.f32(float %i.fx, float %i.hh, float %i.hj)
  %i.hl = load float, ptr %.rtmerge474, align 4, !tbaa !23 ; 2 uses
  %i.hm = tail call float @llvm.fmuladd.f32(float %i.fl, float %i.hl, float %i.hk) ; 6 uses
  %i.hn = icmp eq i32 %i.fy, 2
  br i1 %i.hn, label %bb.bt, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ho = fcmp olt float %i.hm, 0.000000e+00
  br i1 %i.ho, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.hp = load float, ptr %.rtmerge475, align 4, !tbaa !23 ; 2 uses
  %i.hq = fcmp ogt float %i.hp, %i.hm
  %.sroa.speculated.v.2 = select i1 %i.hq, float %i.hm, float %i.hp
  %.sroa.speculated.2 = fneg float %.sroa.speculated.v.2
  br label %bb.bt

bb.bs:                                            ; preds = %bb.bq
  %i.hr = fneg float %i.hm                        ; 2 uses
  %i.hs = load float, ptr %.rtmerge475, align 4, !tbaa !23 ; 2 uses
  %i.ht = fcmp ogt float %i.hs, %i.hr
  %.sroa.speculated239.2 = select i1 %i.ht, float %i.hr, float %i.hs
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bp, %bb.bs, %bb.br
  %.sroa.16.0 = phi float [ %i.hm, %bb.br ], [ %i.hm, %bb.bs ], [ 0.000000e+00, %bb.bp ] ; 3 uses
  %.sroa.18.0 = phi float [ %.sroa.speculated.2, %bb.br ], [ %.sroa.speculated239.2, %bb.bs ], [ 0.000000e+00, %bb.bp ] ; 4 uses
  %i.hu = fmul float %.sroa.18.0, %.sroa.18.0
  %i.hv = fadd float %i.hd, %i.hu                 ; 2 uses
  %i.hw = fadd float %.sroa.18.0, %.sroa.16.0     ; 5 uses
  %i.hx = fmul float %i.hw, %i.hw
  %i.hy = fadd float %i.hg, %i.hx                 ; 2 uses
  %i.hz = fmul float %i.hy, 1.001000e+00          ; 4 uses
  %i.ia = fcmp olt float %i.hz, %i.hv
  br i1 %i.ia, label %.preheader247.preheader, label %bb.bz

.preheader:                                       ; preds = %.preheader247.preheader
  %i.ib = fneg float %i.fx                        ; 3 uses
  %i.ic = tail call float @llvm.fmuladd.f32(float %i.ib, float %i.fz, float %i.gn) ; 2 uses
  %i.id = fmul float %i.ic, %i.ic
  %10 = fadd float %i.id, 0.000000e+00
  %i.ie = tail call float @llvm.fmuladd.f32(float %i.ib, float %i.gp, float %i.he) ; 2 uses
  %i.if = fmul float %i.ie, %i.ie
  %i.ig = fadd float %10, %i.if
  %i.ih = tail call float @llvm.fmuladd.f32(float %i.ib, float %i.hh, float %i.hw) ; 2 uses
  %i.ii = fmul float %i.ih, %i.ih
  %i.ij = fadd float %i.ig, %i.ii
  %i.ik = fcmp ugt float %i.ij, %i.hz
  br label %.preheader247.1

.preheader247.1:                                  ; preds = %.preheader, %.preheader247.preheader
  %.2 = phi i1 [ %i.ik, %.preheader ], [ true, %.preheader247.preheader ] ; 2 uses
  br i1 %.not229.1, label %.preheader247.2, label %.preheader.1

.preheader.1:                                     ; preds = %.preheader247.1
  %i.il = tail call float @llvm.fmuladd.f32(float %i.ft, float %i.ga, float %i.gn) ; 2 uses
  %i.im = fmul float %i.il, %i.il
  %11 = fadd float %i.im, 0.000000e+00
  %i.in = tail call float @llvm.fmuladd.f32(float %i.ft, float %i.gq, float %i.he) ; 2 uses
  %i.io = fmul float %i.in, %i.in
  %i.ip = fadd float %11, %i.io
  %i.iq = tail call float @llvm.fmuladd.f32(float %i.ft, float %i.hi, float %i.hw) ; 2 uses
  %i.ir = fmul float %i.iq, %i.iq
  %i.is = fadd float %i.ip, %i.ir
  %i.it = fcmp ugt float %i.is, %i.hz
  %spec.select.1 = select i1 %i.it, i1 %.2, i1 false
  br label %.preheader247.2

.preheader247.2:                                  ; preds = %.preheader.1, %.preheader247.1
  %.2.1 = phi i1 [ %spec.select.1, %.preheader.1 ], [ %.2, %.preheader247.1 ] ; 2 uses
  br i1 %.not229.2, label %bb.bu, label %.preheader.2

.preheader.2:                                     ; preds = %.preheader247.2
  %i.iu = tail call float @llvm.fmuladd.f32(float %i.fm, float %i.gd, float %i.gn) ; 2 uses
  %i.iv = fmul float %i.iu, %i.iu
  %12 = fadd float %i.iv, 0.000000e+00
  %i.iw = tail call float @llvm.fmuladd.f32(float %i.fm, float %i.gt, float %i.he) ; 2 uses
  %i.ix = fmul float %i.iw, %i.iw
  %i.iy = fadd float %12, %i.ix
  %i.iz = tail call float @llvm.fmuladd.f32(float %i.fm, float %i.hl, float %i.hw) ; 2 uses
  %i.ja = fmul float %i.iz, %i.iz
  %i.jb = fadd float %i.iy, %i.ja
  %i.jc = fcmp ugt float %i.jb, %i.hz
  %spec.select.2 = select i1 %i.jc, i1 %.2.1, i1 false
  br i1 %spec.select.2, label %bb.bv, label %bb.bz

bb.bu:                                            ; preds = %.preheader247.2
  br i1 %.2.1, label %bb.bv, label %bb.bz

bb.bv:                                            ; preds = %.preheader.2, %bb.bu
  %i.jd = load i32, ptr %.rtmerge470, align 4, !tbaa !25 ; 2 uses
  %i.je = icmp sgt i32 %i.jd, 11
  br i1 %i.je, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.jf = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.jg = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.jf, ptr noundef nonnull @.str.42, i32 noundef 12) #31 ; 0 uses
  %i.jh = load ptr, ptr @stderr, align 8, !tbaa !27
  tail call void @_Z8pr_rvecsP8_IO_FILEiPKcPA3_Kfi(ptr noundef %i.jh, i32 noundef 0, ptr noundef nonnull @.str.34, ptr noundef nonnull %3, i32 noundef 3)
  br label %bb.bz

bb.bx:                                            ; preds = %bb.bv
  %i.ji = sext i32 %i.jd to i64                   ; 2 uses
  %i.jj = getelementptr inbounds [12 x i8], ptr %i.fc, i64 %i.ji ; 3 uses
  store float %.sroa.0343.0, ptr %i.jj, align 4, !tbaa !23
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 4
  store float %.sroa.9.0, ptr %i.jk, align 4, !tbaa !23
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jj, i64 8
  store float %.sroa.16.0, ptr %i.jl, align 4, !tbaa !23
  %i.jm = getelementptr inbounds [12 x i8], ptr %i.fd, i64 %i.ji ; 3 uses
  store i32 %i.fv, ptr %i.jm, align 4, !tbaa !32
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 4
  store i32 %i.fo, ptr %i.jn, align 4, !tbaa !32
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jm, i64 8
  store i32 %i.fh, ptr %i.jo, align 4, !tbaa !32
  %i.jp = load i32, ptr %.rtmerge470, align 4, !tbaa !25
  %i.jq = add nsw i32 %i.jp, 1                    ; 2 uses
  store i32 %i.jq, ptr %.rtmerge470, align 4, !tbaa !25
  %i.jr = load ptr, ptr @debug, align 8, !tbaa !27 ; 2 uses
  %.not228 = icmp eq ptr %i.jr, null
  br i1 %.not228, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.js = tail call noundef float @sqrtf(float noundef %i.hv) #20
  %i.jt = fpext float %i.js to double
  %i.ju = tail call noundef float @sqrtf(float noundef %i.hy) #20
  %i.jv = fpext float %i.ju to double
  %i.jw = fpext float %.sroa.0343.0 to double
  %i.jx = fpext float %.sroa.9.0 to double
  %i.jy = fpext float %.sroa.16.0 to double
  %i.jz = fpext float %.sroa.0.0 to double
  %i.ka = fpext float %.sroa.10.0 to double
  %i.kb = fpext float %.sroa.18.0 to double
  %i.kc = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.jr, ptr noundef nonnull @.str.43, i32 noundef %i.jq, i32 noundef %i.fv, i32 noundef %i.fo, i32 noundef %i.fh, double noundef %i.jt, double noundef %i.jv, double noundef %i.jw, double noundef %i.jx, double noundef %i.jy, double noundef %i.jz, double noundef %i.ka, double noundef %i.kb) #20 ; 0 uses
  br label %bb.bz

bb.bz:                                            ; preds = %bb.bt, %bb.bw, %bb.by, %bb.bx, %bb.bu, %.preheader.2, %.preheader248.split
  %indvars.iv.next320 = add nuw nsw i64 %indvars.iv319, 1 ; 2 uses
  %exitcond322.not = icmp eq i64 %indvars.iv.next320, 3
  br i1 %exitcond322.not, label %.loopexit, label %.preheader248.split, !llvm.loop !73

.loopexit:                                        ; preds = %bb.bz, %.preheader248, %bb.bg
  %indvars.iv.next324 = add nuw nsw i64 %indvars.iv323, 1 ; 2 uses
  %exitcond326.not = icmp eq i64 %indvars.iv.next324, 3
  br i1 %exitcond326.not, label %.loopexit250, label %bb.bg, !llvm.loop !74

.loopexit250:                                     ; preds = %.loopexit, %bb.bf
  %indvars.iv.next328 = add nuw nsw i64 %indvars.iv327, 1 ; 2 uses
  %exitcond330.not = icmp eq i64 %indvars.iv.next328, 3
  br i1 %exitcond330.not, label %.loopexit251, label %bb.bf, !llvm.loop !75

.loopexit251.sink.split:                          ; preds = %_Z16numPbcDimensions7PbcType.exit, %_Z16numPbcDimensions7PbcType.exit.thread, %bb.e
  %.sink = phi i32 [ 10, %bb.e ], [ 9, %_Z16numPbcDimensions7PbcType.exit.thread ], [ 9, %_Z16numPbcDimensions7PbcType.exit ]
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sink, ptr %i.kd, align 4, !tbaa !22
  br label %.loopexit251

.loopexit251:                                     ; preds = %.loopexit250, %.loopexit251.sink.split, %_Z11max_cutoff27PbcTypePA3_Kf.exit
  ret void

bb.ca:                                            ; preds = %bb.aw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.di, %bb.aw ]
  resume { ptr, i32 } %.pn.pn.pn

.rtvec:                                           ; preds = %bb.d
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.kf = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.kg = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.kh = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.ki = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.kj = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.kk = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.kl = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.km = load <8 x float>, ptr %3, align 4, !tbaa !23
  store <8 x float> %i.km, ptr %i.ke, align 4, !tbaa !23
  %i.kn = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.ko = load float, ptr %i.kn, align 4, !tbaa !23
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 48
  store float %i.ko, ptr %i.kp, align 4, !tbaa !23
  %i.kq = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store float 0.000000e+00, ptr %i.kq, align 4, !tbaa !24
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  store i32 -1, ptr %i.kr, align 4, !tbaa !33
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  store i32 0, ptr %i.ks, align 4, !tbaa !25
  %i.kt = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.kw = load float, ptr %3, align 4, !tbaa !23  ; 2 uses
  store float %i.kw, ptr %i.kt, align 4, !tbaa !23
  %i.kx = fmul float %i.kw, 5.000000e-01          ; 2 uses
  store float %i.kx, ptr %i.ku, align 4, !tbaa !23
  %i.ky = fneg float %i.kx
  store float %i.ky, ptr %i.kv, align 4, !tbaa !23
  %i.kz = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.la = load float, ptr %i.kz, align 4, !tbaa !23 ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 56
  store float %i.la, ptr %i.lb, align 4, !tbaa !23
  %i.lc = fmul float %i.la, 5.000000e-01          ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  store float %i.lc, ptr %i.ld, align 4, !tbaa !23
  %i.le = fneg float %i.lc
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 80
  store float %i.le, ptr %i.lf, align 4, !tbaa !23
  %i.lg = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.lh = load float, ptr %i.lg, align 4, !tbaa !23 ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 60
  store float %i.lh, ptr %i.li, align 4, !tbaa !23
  %i.lj = fmul float %i.lh, 5.000000e-01          ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store float %i.lj, ptr %i.lk, align 4, !tbaa !23
  %i.ll = fneg float %i.lj
  %i.lm = getelementptr inbounds nuw i8, ptr %0, i64 84
  store float %i.ll, ptr %i.lm, align 4, !tbaa !23
  %i.ln = tail call noundef ptr @_Z9check_box7PbcTypePA3_Kf(i32 noundef %1, ptr noundef nonnull %3)
  br label %.rtcont

.rtscalar:                                        ; preds = %bb.d
  %i.lo = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.lp = load float, ptr %3, align 4, !tbaa !23
  store float %i.lp, ptr %i.lo, align 4, !tbaa !23
  %i.lq = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.lr = load float, ptr %i.lq, align 4, !tbaa !23
  %i.ls = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.lr, ptr %i.ls, align 4, !tbaa !23
  %i.lt = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.lu = load float, ptr %i.lt, align 4, !tbaa !23
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.lu, ptr %i.lv, align 4, !tbaa !23
  %i.lw = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ly = load float, ptr %i.lw, align 4, !tbaa !23
  store float %i.ly, ptr %i.lx, align 4, !tbaa !23
  %i.lz = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ma = load float, ptr %i.lz, align 4, !tbaa !23
  %i.mb = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %i.ma, ptr %i.mb, align 4, !tbaa !23
  %i.mc = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 2 uses
  %i.md = load float, ptr %i.mc, align 4, !tbaa !23
  %i.me = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float %i.md, ptr %i.me, align 4, !tbaa !23
  %i.mf = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.mh = load float, ptr %i.mf, align 4, !tbaa !23
  store float %i.mh, ptr %i.mg, align 4, !tbaa !23
  %i.mi = getelementptr inbounds nuw i8, ptr %3, i64 28 ; 2 uses
  %i.mj = load float, ptr %i.mi, align 4, !tbaa !23
  %i.mk = getelementptr inbounds nuw i8, ptr %0, i64 44
  store float %i.mj, ptr %i.mk, align 4, !tbaa !23
  %i.ml = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.mm = load float, ptr %i.ml, align 4, !tbaa !23
  %i.mn = getelementptr inbounds nuw i8, ptr %0, i64 48
  store float %i.mm, ptr %i.mn, align 4, !tbaa !23
  %i.mo = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store float 0.000000e+00, ptr %i.mo, align 4, !tbaa !24
  %i.mp = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  store i32 -1, ptr %i.mp, align 4, !tbaa !33
  %i.mq = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  store i32 0, ptr %i.mq, align 4, !tbaa !25
  %i.mr = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ms = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.mu = load float, ptr %3, align 4, !tbaa !23  ; 2 uses
  store float %i.mu, ptr %i.mr, align 4, !tbaa !23
  %i.mv = fmul float %i.mu, 5.000000e-01          ; 2 uses
  store float %i.mv, ptr %i.ms, align 4, !tbaa !23
  %i.mw = fneg float %i.mv
  store float %i.mw, ptr %i.mt, align 4, !tbaa !23
  %i.mx = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.my = load float, ptr %i.mx, align 4, !tbaa !23 ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %0, i64 56
  store float %i.my, ptr %i.mz, align 4, !tbaa !23
  %i.na = fmul float %i.my, 5.000000e-01          ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  store float %i.na, ptr %i.nb, align 4, !tbaa !23
  %i.nc = fneg float %i.na
  %i.nd = getelementptr inbounds nuw i8, ptr %0, i64 80
  store float %i.nc, ptr %i.nd, align 4, !tbaa !23
  %i.ne = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
end_hunk_0
