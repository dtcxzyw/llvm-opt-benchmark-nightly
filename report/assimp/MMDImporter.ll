inline.NumInlined: 1132
inline.NumDeleted: 755
begin_hunk_0_@_ZN6Assimp11MMDImporter10CreateMeshEPKN3pmx8PmxModelEii:bb.a
  %i.db = shl nsw i64 %i.cz, 3
  %i.dc = select i1 %i.da, i64 -1, i64 %i.db
  %i.dd = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.dc) #25
          to label %bb.cn unwind label %bb.cp     ; 2 uses

bb.c:                                             ; preds = %.lr.ph653, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRifEEERS0_DpOT_.exit
  %indvars.iv705 = phi i64 [ 0, %.lr.ph653 ], [ %indvars.iv.next706, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRifEEERS0_DpOT_.exit ] ; 32 uses
  %i.de = load ptr, ptr %i.cs, align 8
  %i.df = getelementptr [4 x i8], ptr %i.de, i64 %indvars.iv705
  %i.dg = getelementptr [4 x i8], ptr %i.df, i64 %i.ct
  %i.dh = load i32, ptr %i.dg, align 4
  %i.di = sext i32 %i.dh to i64
  %i.dj = load ptr, ptr %i.cr, align 8
  %i.dk = getelementptr inbounds nuw [120 x i8], ptr %i.dj, i64 %i.di ; 9 uses
  %i.dl = load ptr, ptr %i.d, align 8
  %i.dm = getelementptr inbounds nuw [12 x i8], ptr %i.dl, i64 %indvars.iv705 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.do = load float, ptr %i.dn, align 4
  %i.dp = load <2 x float>, ptr %i.dk, align 4
  store <2 x float> %i.dp, ptr %i.dm, align 4
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  store float %i.do, ptr %i.dq, align 4
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dk, i64 12
  %i.ds = load ptr, ptr %i.bw, align 8
  %i.dt = getelementptr inbounds nuw [12 x i8], ptr %i.ds, i64 %indvars.iv705 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dk, i64 20
  %i.dv = load float, ptr %i.du, align 4
  %i.dw = load <2 x float>, ptr %i.dr, align 4
  store <2 x float> %i.dw, ptr %i.dt, align 4
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  store float %i.dv, ptr %i.dx, align 4
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %i.dz = load float, ptr %i.dy, align 8
  %i.ea = load ptr, ptr %i.bx, align 8
  %i.eb = getelementptr inbounds nuw [12 x i8], ptr %i.ea, i64 %indvars.iv705 ; 2 uses
  store float %i.dz, ptr %i.eb, align 4
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dk, i64 28
  %i.ed = load float, ptr %i.ec, align 4
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 4
  store float %i.ed, ptr %i.ee, align 4
  %i.ef = load i8, ptr %i.bz, align 1
  %.not146646 = icmp eq i8 %i.ef, 0
  br i1 %.not146646, label %._crit_edge650, label %.lr.ph649

.lr.ph649:                                        ; preds = %bb.c
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dk, i64 32
  br label %bb.d

._crit_edge650:                                   ; preds = %bb.d, %bb.c
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dk, i64 104
  %i.ei = load ptr, ptr %i.eh, align 8            ; 7 uses
  %.not574 = icmp eq ptr %i.ei, null
  br i1 %.not574, label %.thread571, label %bb.e

bb.d:                                             ; preds = %.lr.ph649, %bb.d
  %indvars.iv702 = phi i64 [ 1, %.lr.ph649 ], [ %indvars.iv.next703, %bb.d ] ; 4 uses
  %i.ej = getelementptr inbounds nuw [16 x i8], ptr %i.eg, i64 %indvars.iv702 ; 2 uses
  %i.ek = load float, ptr %i.ej, align 8
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %indvars.iv702
  %i.em = load ptr, ptr %i.el, align 8
  %i.en = getelementptr inbounds nuw [12 x i8], ptr %i.em, i64 %indvars.iv705 ; 2 uses
  store float %i.ek, ptr %i.en, align 4
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ej, i64 4
  %i.ep = load float, ptr %i.eo, align 4
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  store float %i.ep, ptr %i.eq, align 4
  %indvars.iv.next703 = add nuw nsw i64 %indvars.iv702, 1
  %i.er = load i8, ptr %i.bz, align 1
  %i.es = zext i8 %i.er to i64
  %.not146.not = icmp samesign ult i64 %indvars.iv702, %i.es
  br i1 %.not146.not, label %bb.d, label %._crit_edge650, !llvm.loop !28

bb.e:                                             ; preds = %._crit_edge650
  %i.et = call ptr @__dynamic_cast(ptr nonnull %i.ei, ptr nonnull @_ZTIN3pmx17PmxVertexSkinningE, ptr nonnull @_ZTIN3pmx22PmxVertexSkinningBDEF1E, i64 0) #22
  %i.eu = call ptr @__dynamic_cast(ptr nonnull %i.ei, ptr nonnull @_ZTIN3pmx17PmxVertexSkinningE, ptr nonnull @_ZTIN3pmx22PmxVertexSkinningBDEF2E, i64 0) #22
  %i.ev = call ptr @__dynamic_cast(ptr nonnull %i.ei, ptr nonnull @_ZTIN3pmx17PmxVertexSkinningE, ptr nonnull @_ZTIN3pmx22PmxVertexSkinningBDEF4E, i64 0) #22
  %i.ew = call ptr @__dynamic_cast(ptr nonnull %i.ei, ptr nonnull @_ZTIN3pmx17PmxVertexSkinningE, ptr nonnull @_ZTIN3pmx21PmxVertexSkinningSDEFE, i64 0) #22
  br label %.thread571

.thread571:                                       ; preds = %._crit_edge650, %bb.e
  %i.ex = phi ptr [ %i.ev, %bb.e ], [ null, %._crit_edge650 ] ; 8 uses
  %i.ey = phi ptr [ %i.et, %bb.e ], [ null, %._crit_edge650 ]
  %i.ez = phi ptr [ %i.eu, %bb.e ], [ null, %._crit_edge650 ] ; 3 uses
  %i.fa = phi ptr [ %i.ew, %bb.e ], [ null, %._crit_edge650 ] ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.dk, i64 96
  %i.fc = load i8, ptr %i.fb, align 8
  switch i8 %i.fc, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRifEEERS0_DpOT_.exit [
    i8 0, label %bb.f
    i8 1, label %bb.n
    i8 2, label %bb.ab
    i8 3, label %bb.ba
    i8 4, label %bb.bo
  ]

bb.f:                                             ; preds = %.thread571
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ey, i64 8 ; 2 uses
  %i.fe = load ptr, ptr %i.cm, align 8            ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.fe, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.f
  %i.ff = load i32, ptr %i.fd, align 4            ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.fe, %.lr.ph.i.i.i.i ], [ %.1.i.i.i.i, %bb.g ] ; 4 uses
  %.0811.i.i.i.i = phi ptr [ %i.cl, %.lr.ph.i.i.i.i ], [ %.19.i.i.i.i, %bb.g ] ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.fh = load i32, ptr %i.fg, align 4
  %i.fi = icmp slt i32 %i.fh, %i.ff               ; 3 uses
  %.19.i.i.i.i = select i1 %i.fi, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.fi, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i, label %bb.g, !llvm.loop !29

_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i: ; preds = %bb.g
  %i.fj = icmp eq ptr %.19.i.i.i.i, %i.cl
  br i1 %i.fj, label %.critedge.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i
  %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.fi, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i
  %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.fk = load i32, ptr %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 4
  %i.fl = icmp slt i32 %i.ff, %i.fk
  br i1 %i.fl, label %.critedge.i, label %bb.i

.critedge.i:                                      ; preds = %bb.h, %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i, %bb.f
  %.08.lcssa.i.i.i11.i = phi ptr [ %.19.i.i.i.i, %bb.h ], [ %.19.i.i.i.i, %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i ], [ %i.cl, %bb.f ]
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #22
  store ptr %i.fd, ptr %28, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #22
  %i.fm = invoke ptr @_ZNSt8_Rb_treeIiSt4pairIKiSt6vectorI14aiVertexWeightSaIS3_EEESt10_Select1stIS6_ESt4lessIiESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %30, ptr %.08.lcssa.i.i.i11.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull align 1 dereferenceable(1) %29)
          to label %.noexc unwind label %.loopexit576

.noexc:                                           ; preds = %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #22
  br label %bb.i

bb.i:                                             ; preds = %.noexc, %bb.h
  %.sroa.06.0.i = phi ptr [ %i.fm, %.noexc ], [ %.19.i.i.i.i, %bb.h ] ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 40 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 48 ; 4 uses
  %i.fp = load ptr, ptr %i.fo, align 8            ; 6 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 56 ; 2 uses
  %i.fr = load ptr, ptr %i.fq, align 8
  %.not.i = icmp eq ptr %i.fp, %i.fr
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.fs = trunc nuw nsw i64 %indvars.iv705 to i32
  store i32 %i.fs, ptr %i.fp, align 4
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fp, i64 4
  store float 1.000000e+00, ptr %i.ft, align 4
  %i.fu = load ptr, ptr %i.fo, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  store ptr %i.fv, ptr %i.fo, align 8
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRifEEERS0_DpOT_.exit

bb.k:                                             ; preds = %bb.i
  %i.fw = load ptr, ptr %i.fn, align 8            ; 7 uses
  %i.fx = ptrtoint ptr %i.fp to i64               ; 2 uses
  %i.fy = ptrtoint ptr %i.fw to i64               ; 3 uses
  %i.fz = sub i64 %i.fx, %i.fy                    ; 4 uses
  %i.ga = icmp eq i64 %i.fz, 9223372036854775800
  br i1 %i.ga, label %bb.l, label %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #24
          to label %.noexc150 unwind label %.loopexit.split-lp592

.noexc150:                                        ; preds = %bb.l
  unreachable

_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.k
  %i.gb = ashr exact i64 %i.fz, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.gb, i64 1)
  %i.gc = add nsw i64 %.sroa.speculated.i.i.i, %i.gb ; 2 uses
  %i.gd = icmp ult i64 %i.gc, %i.gb
  %i.ge = call i64 @llvm.umin.i64(i64 %i.gc, i64 1152921504606846975)
  %i.gf = select i1 %i.gd, i64 1152921504606846975, i64 %i.ge ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.gf, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.gg = shl nuw nsw i64 %i.gf, 3
  %i.gh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gg) #25
          to label %.noexc151 unwind label %.loopexit591 ; 8 uses

.noexc151:                                        ; preds = %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 %i.fz ; 2 uses
  %i.gj = trunc nuw nsw i64 %indvars.iv705 to i32
  store i32 %i.gj, ptr %i.gi, align 4
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gi, i64 4
  store float 1.000000e+00, ptr %i.gk, align 4
  %.not10.i.i.i.i.i = icmp eq ptr %i.fw, %i.fp
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc151
  %i.gl = ptrtoaddr ptr %i.gh to i64
  %31 = add i64 %i.fx, -8
  %32 = sub i64 %31, %i.fy                        ; 2 uses
  %i.gm = lshr i64 %32, 3
  %i.gn = add nuw nsw i64 %i.gm, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %32, 24
  %i.go = sub i64 %i.gl, %i.fy
  %diff.check = icmp ult i64 %i.go, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader1096, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.gn, 4611686018427387900     ; 3 uses
  %i.gp = shl i64 %n.vec, 3                       ; 2 uses
  %i.gq = getelementptr i8, ptr %i.gh, i64 %i.gp  ; 2 uses
  %i.gr = getelementptr i8, ptr %i.fw, i64 %i.gp
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gs = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.gh, i64 %i.gs ; 2 uses
  %next.gep865 = getelementptr i8, ptr %i.fw, i64 %i.gs ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !30)
  call void @llvm.experimental.noalias.scope.decl(metadata !33)
  %i.gt = getelementptr i8, ptr %next.gep865, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep865, align 4, !alias.scope !33, !noalias !30
  %wide.load866 = load <2 x i64>, ptr %i.gt, align 4, !alias.scope !33, !noalias !30
  %i.gu = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !30, !noalias !33
  store <2 x i64> %wide.load866, ptr %i.gu, align 4, !alias.scope !30, !noalias !33
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gv = icmp eq i64 %index.next, %n.vec
  br i1 %i.gv, label %middle.block, label %vector.body, !llvm.loop !35

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gn, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i, label %.lr.ph.i.i.i.i.i.preheader1096

.lr.ph.i.i.i.i.i.preheader1096:                   ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.gh, %.lr.ph.i.i.i.i.i.preheader ], [ %i.gq, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.fw, %.lr.ph.i.i.i.i.i.preheader ], [ %i.gr, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader1096, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.gy, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader1096 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.gx, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader1096 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !30)
  call void @llvm.experimental.noalias.scope.decl(metadata !33)
  %i.gw = load i64, ptr %.0911.i.i.i.i.i, align 4, !alias.scope !33, !noalias !30
  store i64 %i.gw, ptr %.012.i.i.i.i.i, align 4, !alias.scope !30, !noalias !33
  %i.gx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.gx, %i.fp
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !36

_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %.noexc151
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.gh, %.noexc151 ], [ %i.gq, %middle.block ], [ %i.gy, %.lr.ph.i.i.i.i.i ]
  %i.gz = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i34.i.i = icmp eq ptr %i.fw, null
  br i1 %.not.i34.i.i, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRifEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.fw, i64 noundef %i.fz) #23
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRifEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i

_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRifEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i: ; preds = %bb.m, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i
  store ptr %i.gh, ptr %i.fn, align 8
  store ptr %i.gz, ptr %i.fo, align 8
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %i.gf
  store ptr %i.ha, ptr %i.fq, align 8
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRifEEERS0_DpOT_.exit

.loopexit576:                                     ; preds = %.critedge.i, %.critedge.i163, %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i168, %.critedge.i192, %.critedge.i223, %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i228, %.critedge.i254, %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i259, %.critedge.i285, %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i290, %.critedge.i316, %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i321, %.critedge.i347, %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i352, %.critedge.i378
  %lpad.loopexit578 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

.loopexit.split-lp577:                            ; preds = %.invoke
  %lpad.loopexit.split-lp579 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

.loopexit591:                                     ; preds = %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit593 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

.loopexit.split-lp592:                            ; preds = %bb.l
  %lpad.loopexit.split-lp594 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

bb.n:                                             ; preds = %.thread571
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ez, i64 8 ; 2 uses
  %i.hc = load ptr, ptr %i.cm, align 8            ; 2 uses
  %.not10.i.i.i.i152 = icmp eq ptr %i.hc, null
  br i1 %.not10.i.i.i.i152, label %.critedge.i163, label %.lr.ph.i.i.i.i153

.lr.ph.i.i.i.i153:                                ; preds = %bb.n
  %i.hd = load i32, ptr %i.hb, align 4            ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.lr.ph.i.i.i.i153
  %.012.i.i.i.i154 = phi ptr [ %i.hc, %.lr.ph.i.i.i.i153 ], [ %.1.i.i.i.i159, %bb.o ] ; 4 uses
  %.0811.i.i.i.i155 = phi ptr [ %i.cl, %.lr.ph.i.i.i.i153 ], [ %.19.i.i.i.i156, %bb.o ] ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i154, i64 32
  %i.hf = load i32, ptr %i.he, align 4
  %i.hg = icmp slt i32 %i.hf, %i.hd               ; 3 uses
  %.19.i.i.i.i156 = select i1 %i.hg, ptr %.0811.i.i.i.i155, ptr %.012.i.i.i.i154 ; 5 uses
  %.1.in.v.i.i.i.i157 = select i1 %i.hg, i64 24, i64 16
  %.1.in.i.i.i.i158 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i154, i64 %.1.in.v.i.i.i.i157
  %.1.i.i.i.i159 = load ptr, ptr %.1.in.i.i.i.i158, align 8 ; 2 uses
  %.not.i.i.i.i160 = icmp eq ptr %.1.i.i.i.i159, null
  br i1 %.not.i.i.i.i160, label %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i161, label %bb.o, !llvm.loop !29

_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i161: ; preds = %bb.o
  %i.hh = icmp eq ptr %.19.i.i.i.i156, %i.cl
  br i1 %i.hh, label %.critedge.i163, label %bb.p

bb.p:                                             ; preds = %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i161
  %.19.i.i.i.i156.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.hg, ptr %.0811.i.i.i.i155, ptr %.012.i.i.i.i154
  %.19.i.i.i.i156.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i156.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.hi = load i32, ptr %.19.i.i.i.i156.sroa.sel.v.sroa.sel.v.sroa.sel, align 4
  %i.hj = icmp slt i32 %i.hd, %i.hi
  br i1 %i.hj, label %.critedge.i163, label %bb.q

.critedge.i163:                                   ; preds = %bb.p, %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i161, %bb.n
  %.08.lcssa.i.i.i11.i164 = phi ptr [ %.19.i.i.i.i156, %bb.p ], [ %.19.i.i.i.i156, %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i161 ], [ %i.cl, %bb.n ]
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #22
  store ptr %i.hb, ptr %26, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #22
  %i.hk = invoke ptr @_ZNSt8_Rb_treeIiSt4pairIKiSt6vectorI14aiVertexWeightSaIS3_EEESt10_Select1stIS6_ESt4lessIiESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %30, ptr %.08.lcssa.i.i.i11.i164, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef nonnull align 1 dereferenceable(1) %27)
          to label %.noexc165 unwind label %.loopexit576

.noexc165:                                        ; preds = %.critedge.i163
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #22
  br label %bb.q

bb.q:                                             ; preds = %.noexc165, %bb.p
  %.sroa.06.0.i162 = phi ptr [ %i.hk, %.noexc165 ], [ %.19.i.i.i.i156, %bb.p ] ; 3 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i162, i64 40 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.ez, i64 16 ; 3 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i162, i64 48 ; 4 uses
  %i.ho = load ptr, ptr %i.hn, align 8            ; 6 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i162, i64 56 ; 2 uses
  %i.hq = load ptr, ptr %i.hp, align 8
  %.not.i167 = icmp eq ptr %i.ho, %i.hq
  br i1 %.not.i167, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.hr = load float, ptr %i.hm, align 4
  %i.hs = trunc nuw nsw i64 %indvars.iv705 to i32
  store i32 %i.hs, ptr %i.ho, align 4
  %i.ht = getelementptr inbounds nuw i8, ptr %i.ho, i64 4
  store float %i.hr, ptr %i.ht, align 4
  %i.hu = load ptr, ptr %i.hn, align 8
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  store ptr %i.hv, ptr %i.hn, align 8
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRiRfEEERS0_DpOT_.exit

bb.s:                                             ; preds = %bb.q
  %i.hw = load ptr, ptr %i.hl, align 8            ; 7 uses
  %i.hx = ptrtoint ptr %i.ho to i64               ; 2 uses
  %i.hy = ptrtoint ptr %i.hw to i64               ; 3 uses
  %i.hz = sub i64 %i.hx, %i.hy                    ; 4 uses
  %i.ia = icmp eq i64 %i.hz, 9223372036854775800
  br i1 %i.ia, label %.invoke, label %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i168

.invoke:                                          ; preds = %bb.bf, %bb.ay, %bb.as, %bb.am, %bb.ag, %bb.s
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #24
          to label %.cont unwind label %.loopexit.split-lp577

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i168: ; preds = %bb.s
  %i.ib = ashr exact i64 %i.hz, 3                 ; 3 uses
  %.sroa.speculated.i.i.i169 = call i64 @llvm.umax.i64(i64 %i.ib, i64 1)
  %i.ic = add nsw i64 %.sroa.speculated.i.i.i169, %i.ib ; 2 uses
  %i.id = icmp ult i64 %i.ic, %i.ib
  %i.ie = call i64 @llvm.umin.i64(i64 %i.ic, i64 1152921504606846975)
  %i.if = select i1 %i.id, i64 1152921504606846975, i64 %i.ie ; 3 uses
  %.not.i.i.i170 = icmp ne i64 %i.if, 0
  call void @llvm.assume(i1 %.not.i.i.i170)
  %i.ig = shl nuw nsw i64 %i.if, 3
  %i.ih = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ig) #25
          to label %.noexc180 unwind label %.loopexit576 ; 8 uses

.noexc180:                                        ; preds = %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i168
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 %i.hz ; 2 uses
  %i.ij = load float, ptr %i.hm, align 4
  %i.ik = trunc nuw nsw i64 %indvars.iv705 to i32
  store i32 %i.ik, ptr %i.ii, align 4
  %i.il = getelementptr inbounds nuw i8, ptr %i.ii, i64 4
  store float %i.ij, ptr %i.il, align 4
  %.not10.i.i.i.i.i171 = icmp eq ptr %i.hw, %i.ho
  br i1 %.not10.i.i.i.i.i171, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i176, label %.lr.ph.i.i.i.i.i172.preheader

.lr.ph.i.i.i.i.i172.preheader:                    ; preds = %.noexc180
  %i.im = ptrtoaddr ptr %i.ih to i64
  %33 = add i64 %i.hx, -8
  %34 = sub i64 %33, %i.hy                        ; 2 uses
  %i.in = lshr i64 %34, 3
  %i.io = add nuw nsw i64 %i.in, 1                ; 2 uses
  %min.iters.check889 = icmp ult i64 %34, 24
  %i.ip = sub i64 %i.im, %i.hy
  %diff.check887 = icmp ult i64 %i.ip, 32
  %or.cond1084 = or i1 %min.iters.check889, %diff.check887
  br i1 %or.cond1084, label %.lr.ph.i.i.i.i.i172.preheader1098, label %vector.ph890

vector.ph890:                                     ; preds = %.lr.ph.i.i.i.i.i172.preheader
  %n.vec892 = and i64 %i.io, 4611686018427387900  ; 3 uses
  %i.iq = shl i64 %n.vec892, 3                    ; 2 uses
  %i.ir = getelementptr i8, ptr %i.ih, i64 %i.iq  ; 2 uses
  %i.is = getelementptr i8, ptr %i.hw, i64 %i.iq
  br label %vector.body893

vector.body893:                                   ; preds = %vector.body893, %vector.ph890
  %index894 = phi i64 [ 0, %vector.ph890 ], [ %index.next899, %vector.body893 ] ; 2 uses
  %i.it = shl i64 %index894, 3                    ; 2 uses
  %next.gep895 = getelementptr i8, ptr %i.ih, i64 %i.it ; 2 uses
  %next.gep896 = getelementptr i8, ptr %i.hw, i64 %i.it ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !37)
  call void @llvm.experimental.noalias.scope.decl(metadata !40)
  %i.iu = getelementptr i8, ptr %next.gep896, i64 16
  %wide.load897 = load <2 x i64>, ptr %next.gep896, align 4, !alias.scope !40, !noalias !37
  %wide.load898 = load <2 x i64>, ptr %i.iu, align 4, !alias.scope !40, !noalias !37
  %i.iv = getelementptr i8, ptr %next.gep895, i64 16
  store <2 x i64> %wide.load897, ptr %next.gep895, align 4, !alias.scope !37, !noalias !40
  store <2 x i64> %wide.load898, ptr %i.iv, align 4, !alias.scope !37, !noalias !40
  %index.next899 = add nuw i64 %index894, 4       ; 2 uses
  %i.iw = icmp eq i64 %index.next899, %n.vec892
  br i1 %i.iw, label %middle.block900, label %vector.body893, !llvm.loop !42

middle.block900:                                  ; preds = %vector.body893
  %cmp.n901 = icmp eq i64 %i.io, %n.vec892
  br i1 %cmp.n901, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i176, label %.lr.ph.i.i.i.i.i172.preheader1098

.lr.ph.i.i.i.i.i172.preheader1098:                ; preds = %.lr.ph.i.i.i.i.i172.preheader, %middle.block900
  %.012.i.i.i.i.i173.ph = phi ptr [ %i.ih, %.lr.ph.i.i.i.i.i172.preheader ], [ %i.ir, %middle.block900 ]
  %.0911.i.i.i.i.i174.ph = phi ptr [ %i.hw, %.lr.ph.i.i.i.i.i172.preheader ], [ %i.is, %middle.block900 ]
  br label %.lr.ph.i.i.i.i.i172

.lr.ph.i.i.i.i.i172:                              ; preds = %.lr.ph.i.i.i.i.i172.preheader1098, %.lr.ph.i.i.i.i.i172
  %.012.i.i.i.i.i173 = phi ptr [ %i.iz, %.lr.ph.i.i.i.i.i172 ], [ %.012.i.i.i.i.i173.ph, %.lr.ph.i.i.i.i.i172.preheader1098 ] ; 2 uses
  %.0911.i.i.i.i.i174 = phi ptr [ %i.iy, %.lr.ph.i.i.i.i.i172 ], [ %.0911.i.i.i.i.i174.ph, %.lr.ph.i.i.i.i.i172.preheader1098 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !37)
  call void @llvm.experimental.noalias.scope.decl(metadata !40)
  %i.ix = load i64, ptr %.0911.i.i.i.i.i174, align 4, !alias.scope !40, !noalias !37
  store i64 %i.ix, ptr %.012.i.i.i.i.i173, align 4, !alias.scope !37, !noalias !40
  %i.iy = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i174, i64 8 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i173, i64 8 ; 2 uses
  %.not.i.i.i.i.i175 = icmp eq ptr %i.iy, %i.ho
  br i1 %.not.i.i.i.i.i175, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i176, label %.lr.ph.i.i.i.i.i172, !llvm.loop !43

_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i176: ; preds = %.lr.ph.i.i.i.i.i172, %middle.block900, %.noexc180
  %.0.lcssa.i.i.i.i.i177 = phi ptr [ %i.ih, %.noexc180 ], [ %i.ir, %middle.block900 ], [ %i.iz, %.lr.ph.i.i.i.i.i172 ]
  %i.ja = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i177, i64 8
  %.not.i34.i.i178 = icmp eq ptr %i.hw, null
  br i1 %.not.i34.i.i178, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRiRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i176
  call void @_ZdlPvm(ptr noundef nonnull %i.hw, i64 noundef %i.hz) #23
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRiRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i

_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRiRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i: ; preds = %bb.t, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i176
  store ptr %i.ih, ptr %i.hl, align 8
  store ptr %i.ja, ptr %i.hn, align 8
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %i.if
  store ptr %i.jb, ptr %i.hp, align 8
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRiRfEEERS0_DpOT_.exit

_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRiRfEEERS0_DpOT_.exit: ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRiRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, %bb.r
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ez, i64 12 ; 2 uses
  %i.jd = load ptr, ptr %i.cm, align 8            ; 2 uses
  %.not10.i.i.i.i181 = icmp eq ptr %i.jd, null
  br i1 %.not10.i.i.i.i181, label %.critedge.i192, label %.lr.ph.i.i.i.i182

.lr.ph.i.i.i.i182:                                ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRiRfEEERS0_DpOT_.exit
  %i.je = load i32, ptr %i.jc, align 4            ; 2 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.lr.ph.i.i.i.i182
  %.012.i.i.i.i183 = phi ptr [ %i.jd, %.lr.ph.i.i.i.i182 ], [ %.1.i.i.i.i188, %bb.u ] ; 4 uses
  %.0811.i.i.i.i184 = phi ptr [ %i.cl, %.lr.ph.i.i.i.i182 ], [ %.19.i.i.i.i185, %bb.u ] ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i183, i64 32
  %i.jg = load i32, ptr %i.jf, align 4
  %i.jh = icmp slt i32 %i.jg, %i.je               ; 3 uses
  %.19.i.i.i.i185 = select i1 %i.jh, ptr %.0811.i.i.i.i184, ptr %.012.i.i.i.i183 ; 5 uses
  %.1.in.v.i.i.i.i186 = select i1 %i.jh, i64 24, i64 16
  %.1.in.i.i.i.i187 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i183, i64 %.1.in.v.i.i.i.i186
  %.1.i.i.i.i188 = load ptr, ptr %.1.in.i.i.i.i187, align 8 ; 2 uses
  %.not.i.i.i.i189 = icmp eq ptr %.1.i.i.i.i188, null
  br i1 %.not.i.i.i.i189, label %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i190, label %bb.u, !llvm.loop !29

_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i190: ; preds = %bb.u
  %i.ji = icmp eq ptr %.19.i.i.i.i185, %i.cl
  br i1 %i.ji, label %.critedge.i192, label %bb.v

bb.v:                                             ; preds = %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i190
  %.19.i.i.i.i185.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.jh, ptr %.0811.i.i.i.i184, ptr %.012.i.i.i.i183
  %.19.i.i.i.i185.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i185.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.jj = load i32, ptr %.19.i.i.i.i185.sroa.sel.v.sroa.sel.v.sroa.sel, align 4
  %i.jk = icmp slt i32 %i.je, %i.jj
  br i1 %i.jk, label %.critedge.i192, label %bb.w

.critedge.i192:                                   ; preds = %bb.v, %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i190, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRiRfEEERS0_DpOT_.exit
  %.08.lcssa.i.i.i11.i193 = phi ptr [ %.19.i.i.i.i185, %bb.v ], [ %.19.i.i.i.i185, %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i190 ], [ %i.cl, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRiRfEEERS0_DpOT_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #22
  store ptr %i.jc, ptr %24, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #22
  %i.jl = invoke ptr @_ZNSt8_Rb_treeIiSt4pairIKiSt6vectorI14aiVertexWeightSaIS3_EEESt10_Select1stIS6_ESt4lessIiESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %30, ptr %.08.lcssa.i.i.i11.i193, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef nonnull align 1 dereferenceable(1) %25)
          to label %.noexc194 unwind label %.loopexit576

.noexc194:                                        ; preds = %.critedge.i192
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #22
  br label %bb.w

bb.w:                                             ; preds = %.noexc194, %bb.v
  %.sroa.06.0.i191 = phi ptr [ %i.jl, %.noexc194 ], [ %.19.i.i.i.i185, %bb.v ] ; 3 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i191, i64 40 ; 2 uses
  %i.jn = load float, ptr %i.hm, align 8
  %i.jo = fsub float 1.000000e+00, %i.jn          ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i191, i64 48 ; 4 uses
  %i.jq = load ptr, ptr %i.jp, align 8            ; 6 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i191, i64 56 ; 2 uses
  %i.js = load ptr, ptr %i.jr, align 8
  %.not.i196 = icmp eq ptr %i.jq, %i.js
  br i1 %.not.i196, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.jt = trunc nuw nsw i64 %indvars.iv705 to i32
  store i32 %i.jt, ptr %i.jq, align 4
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jq, i64 4
  store float %i.jo, ptr %i.ju, align 4
  %i.jv = load ptr, ptr %i.jp, align 8
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 8
  store ptr %i.jw, ptr %i.jp, align 8
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRifEEERS0_DpOT_.exit

bb.y:                                             ; preds = %bb.w
  %i.jx = load ptr, ptr %i.jm, align 8            ; 7 uses
  %i.jy = ptrtoint ptr %i.jq to i64               ; 2 uses
  %i.jz = ptrtoint ptr %i.jx to i64               ; 3 uses
  %i.ka = sub i64 %i.jy, %i.jz                    ; 4 uses
  %i.kb = icmp eq i64 %i.ka, 9223372036854775800
  br i1 %i.kb, label %bb.z, label %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i197

bb.z:                                             ; preds = %bb.y
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #24
          to label %.noexc209 unwind label %.loopexit.split-lp587

.noexc209:                                        ; preds = %bb.z
  unreachable

_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i197: ; preds = %bb.y
  %i.kc = ashr exact i64 %i.ka, 3                 ; 3 uses
  %.sroa.speculated.i.i.i198 = call i64 @llvm.umax.i64(i64 %i.kc, i64 1)
  %i.kd = add nsw i64 %.sroa.speculated.i.i.i198, %i.kc ; 2 uses
  %i.ke = icmp ult i64 %i.kd, %i.kc
  %i.kf = call i64 @llvm.umin.i64(i64 %i.kd, i64 1152921504606846975)
  %i.kg = select i1 %i.ke, i64 1152921504606846975, i64 %i.kf ; 3 uses
  %.not.i.i.i199 = icmp ne i64 %i.kg, 0
  call void @llvm.assume(i1 %.not.i.i.i199)
  %i.kh = shl nuw nsw i64 %i.kg, 3
  %i.ki = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kh) #25
          to label %.noexc210 unwind label %.loopexit586 ; 8 uses

.noexc210:                                        ; preds = %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i197
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 %i.ka ; 2 uses
  %i.kk = trunc nuw nsw i64 %indvars.iv705 to i32
  store i32 %i.kk, ptr %i.kj, align 4
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kj, i64 4
  store float %i.jo, ptr %i.kl, align 4
  %.not10.i.i.i.i.i200 = icmp eq ptr %i.jx, %i.jq
  br i1 %.not10.i.i.i.i.i200, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i205, label %.lr.ph.i.i.i.i.i201.preheader

.lr.ph.i.i.i.i.i201.preheader:                    ; preds = %.noexc210
  %i.km = ptrtoaddr ptr %i.ki to i64
  %35 = add i64 %i.jy, -8
  %36 = sub i64 %35, %i.jz                        ; 2 uses
  %i.kn = lshr i64 %36, 3
  %i.ko = add nuw nsw i64 %i.kn, 1                ; 2 uses
  %min.iters.check871 = icmp ult i64 %36, 24
  %i.kp = sub i64 %i.km, %i.jz
  %diff.check869 = icmp ult i64 %i.kp, 32
  %or.cond1085 = or i1 %min.iters.check871, %diff.check869
  br i1 %or.cond1085, label %.lr.ph.i.i.i.i.i201.preheader1097, label %vector.ph872

vector.ph872:                                     ; preds = %.lr.ph.i.i.i.i.i201.preheader
  %n.vec874 = and i64 %i.ko, 4611686018427387900  ; 3 uses
  %i.kq = shl i64 %n.vec874, 3                    ; 2 uses
  %i.kr = getelementptr i8, ptr %i.ki, i64 %i.kq  ; 2 uses
  %i.ks = getelementptr i8, ptr %i.jx, i64 %i.kq
  br label %vector.body875

vector.body875:                                   ; preds = %vector.body875, %vector.ph872
  %index876 = phi i64 [ 0, %vector.ph872 ], [ %index.next881, %vector.body875 ] ; 2 uses
  %i.kt = shl i64 %index876, 3                    ; 2 uses
  %next.gep877 = getelementptr i8, ptr %i.ki, i64 %i.kt ; 2 uses
  %next.gep878 = getelementptr i8, ptr %i.jx, i64 %i.kt ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !44)
  call void @llvm.experimental.noalias.scope.decl(metadata !47)
  %i.ku = getelementptr i8, ptr %next.gep878, i64 16
  %wide.load879 = load <2 x i64>, ptr %next.gep878, align 4, !alias.scope !47, !noalias !44
  %wide.load880 = load <2 x i64>, ptr %i.ku, align 4, !alias.scope !47, !noalias !44
  %i.kv = getelementptr i8, ptr %next.gep877, i64 16
  store <2 x i64> %wide.load879, ptr %next.gep877, align 4, !alias.scope !44, !noalias !47
  store <2 x i64> %wide.load880, ptr %i.kv, align 4, !alias.scope !44, !noalias !47
  %index.next881 = add nuw i64 %index876, 4       ; 2 uses
  %i.kw = icmp eq i64 %index.next881, %n.vec874
  br i1 %i.kw, label %middle.block882, label %vector.body875, !llvm.loop !49

middle.block882:                                  ; preds = %vector.body875
  %cmp.n883 = icmp eq i64 %i.ko, %n.vec874
  br i1 %cmp.n883, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i205, label %.lr.ph.i.i.i.i.i201.preheader1097

.lr.ph.i.i.i.i.i201.preheader1097:                ; preds = %.lr.ph.i.i.i.i.i201.preheader, %middle.block882
  %.012.i.i.i.i.i202.ph = phi ptr [ %i.ki, %.lr.ph.i.i.i.i.i201.preheader ], [ %i.kr, %middle.block882 ]
  %.0911.i.i.i.i.i203.ph = phi ptr [ %i.jx, %.lr.ph.i.i.i.i.i201.preheader ], [ %i.ks, %middle.block882 ]
  br label %.lr.ph.i.i.i.i.i201

.lr.ph.i.i.i.i.i201:                              ; preds = %.lr.ph.i.i.i.i.i201.preheader1097, %.lr.ph.i.i.i.i.i201
  %.012.i.i.i.i.i202 = phi ptr [ %i.kz, %.lr.ph.i.i.i.i.i201 ], [ %.012.i.i.i.i.i202.ph, %.lr.ph.i.i.i.i.i201.preheader1097 ] ; 2 uses
  %.0911.i.i.i.i.i203 = phi ptr [ %i.ky, %.lr.ph.i.i.i.i.i201 ], [ %.0911.i.i.i.i.i203.ph, %.lr.ph.i.i.i.i.i201.preheader1097 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !44)
  call void @llvm.experimental.noalias.scope.decl(metadata !47)
  %i.kx = load i64, ptr %.0911.i.i.i.i.i203, align 4, !alias.scope !47, !noalias !44
  store i64 %i.kx, ptr %.012.i.i.i.i.i202, align 4, !alias.scope !44, !noalias !47
  %i.ky = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i203, i64 8 ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i202, i64 8 ; 2 uses
  %.not.i.i.i.i.i204 = icmp eq ptr %i.ky, %i.jq
  br i1 %.not.i.i.i.i.i204, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i205, label %.lr.ph.i.i.i.i.i201, !llvm.loop !50

_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i205: ; preds = %.lr.ph.i.i.i.i.i201, %middle.block882, %.noexc210
  %.0.lcssa.i.i.i.i.i206 = phi ptr [ %i.ki, %.noexc210 ], [ %i.kr, %middle.block882 ], [ %i.kz, %.lr.ph.i.i.i.i.i201 ]
  %i.la = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i206, i64 8
  %.not.i34.i.i207 = icmp eq ptr %i.jx, null
  br i1 %.not.i34.i.i207, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRifEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i208, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i205
  call void @_ZdlPvm(ptr noundef nonnull %i.jx, i64 noundef %i.ka) #23
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRifEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i208

_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRifEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i208: ; preds = %bb.aa, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i205
  store ptr %i.ki, ptr %i.jm, align 8
  store ptr %i.la, ptr %i.jp, align 8
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %i.ki, i64 %i.kg
  store ptr %i.lb, ptr %i.jr, align 8
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRifEEERS0_DpOT_.exit

.loopexit586:                                     ; preds = %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i197
  %lpad.loopexit588 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

.loopexit.split-lp587:                            ; preds = %bb.z
  %lpad.loopexit.split-lp589 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

bb.ab:                                            ; preds = %.thread571
  %i.lc = getelementptr inbounds nuw i8, ptr %i.ex, i64 8 ; 2 uses
  %i.ld = load ptr, ptr %i.cm, align 8            ; 2 uses
  %.not10.i.i.i.i212 = icmp eq ptr %i.ld, null
  br i1 %.not10.i.i.i.i212, label %.critedge.i223, label %.lr.ph.i.i.i.i213

.lr.ph.i.i.i.i213:                                ; preds = %bb.ab
  %i.le = load i32, ptr %i.lc, align 4            ; 2 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %.lr.ph.i.i.i.i213
  %.012.i.i.i.i214 = phi ptr [ %i.ld, %.lr.ph.i.i.i.i213 ], [ %.1.i.i.i.i219, %bb.ac ] ; 4 uses
  %.0811.i.i.i.i215 = phi ptr [ %i.cl, %.lr.ph.i.i.i.i213 ], [ %.19.i.i.i.i216, %bb.ac ] ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i214, i64 32
  %i.lg = load i32, ptr %i.lf, align 4
  %i.lh = icmp slt i32 %i.lg, %i.le               ; 3 uses
  %.19.i.i.i.i216 = select i1 %i.lh, ptr %.0811.i.i.i.i215, ptr %.012.i.i.i.i214 ; 5 uses
  %.1.in.v.i.i.i.i217 = select i1 %i.lh, i64 24, i64 16
  %.1.in.i.i.i.i218 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i214, i64 %.1.in.v.i.i.i.i217
  %.1.i.i.i.i219 = load ptr, ptr %.1.in.i.i.i.i218, align 8 ; 2 uses
  %.not.i.i.i.i220 = icmp eq ptr %.1.i.i.i.i219, null
  br i1 %.not.i.i.i.i220, label %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i221, label %bb.ac, !llvm.loop !29

_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i221: ; preds = %bb.ac
  %i.li = icmp eq ptr %.19.i.i.i.i216, %i.cl
  br i1 %i.li, label %.critedge.i223, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i221
  %.19.i.i.i.i216.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.lh, ptr %.0811.i.i.i.i215, ptr %.012.i.i.i.i214
  %.19.i.i.i.i216.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i216.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.lj = load i32, ptr %.19.i.i.i.i216.sroa.sel.v.sroa.sel.v.sroa.sel, align 4
  %i.lk = icmp slt i32 %i.le, %i.lj
  br i1 %i.lk, label %.critedge.i223, label %bb.ae

.critedge.i223:                                   ; preds = %bb.ad, %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i221, %bb.ab
  %.08.lcssa.i.i.i11.i224 = phi ptr [ %.19.i.i.i.i216, %bb.ad ], [ %.19.i.i.i.i216, %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i221 ], [ %i.cl, %bb.ab ]
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #22
  store ptr %i.lc, ptr %22, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #22
  %i.ll = invoke ptr @_ZNSt8_Rb_treeIiSt4pairIKiSt6vectorI14aiVertexWeightSaIS3_EEESt10_Select1stIS6_ESt4lessIiESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %30, ptr %.08.lcssa.i.i.i11.i224, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef nonnull align 1 dereferenceable(1) %23)
          to label %.noexc225 unwind label %.loopexit576

.noexc225:                                        ; preds = %.critedge.i223
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  br label %bb.ae

bb.ae:                                            ; preds = %.noexc225, %bb.ad
  %.sroa.06.0.i222 = phi ptr [ %i.ll, %.noexc225 ], [ %.19.i.i.i.i216, %bb.ad ] ; 3 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i222, i64 40 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.ex, i64 24 ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i222, i64 48 ; 4 uses
  %i.lp = load ptr, ptr %i.lo, align 8            ; 6 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i222, i64 56 ; 2 uses
  %i.lr = load ptr, ptr %i.lq, align 8
  %.not.i227 = icmp eq ptr %i.lp, %i.lr
  br i1 %.not.i227, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ls = load float, ptr %i.ln, align 4
  %i.lt = trunc nuw nsw i64 %indvars.iv705 to i32
  store i32 %i.lt, ptr %i.lp, align 4
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lp, i64 4
  store float %i.ls, ptr %i.lu, align 4
  %i.lv = load ptr, ptr %i.lo, align 8
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 8
  store ptr %i.lw, ptr %i.lo, align 8
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRiRfEEERS0_DpOT_.exit242

bb.ag:                                            ; preds = %bb.ae
  %i.lx = load ptr, ptr %i.lm, align 8            ; 7 uses
  %i.ly = ptrtoint ptr %i.lp to i64               ; 2 uses
  %i.lz = ptrtoint ptr %i.lx to i64               ; 3 uses
  %i.ma = sub i64 %i.ly, %i.lz                    ; 4 uses
  %i.mb = icmp eq i64 %i.ma, 9223372036854775800
  br i1 %i.mb, label %.invoke, label %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i228

_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i228: ; preds = %bb.ag
  %i.mc = ashr exact i64 %i.ma, 3                 ; 3 uses
  %.sroa.speculated.i.i.i229 = call i64 @llvm.umax.i64(i64 %i.mc, i64 1)
  %i.md = add nsw i64 %.sroa.speculated.i.i.i229, %i.mc ; 2 uses
  %i.me = icmp ult i64 %i.md, %i.mc
  %i.mf = call i64 @llvm.umin.i64(i64 %i.md, i64 1152921504606846975)
  %i.mg = select i1 %i.me, i64 1152921504606846975, i64 %i.mf ; 3 uses
  %.not.i.i.i230 = icmp ne i64 %i.mg, 0
  call void @llvm.assume(i1 %.not.i.i.i230)
  %i.mh = shl nuw nsw i64 %i.mg, 3
  %i.mi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mh) #25
          to label %.noexc241 unwind label %.loopexit576 ; 8 uses

.noexc241:                                        ; preds = %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i228
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 %i.ma ; 2 uses
  %i.mk = load float, ptr %i.ln, align 4
  %i.ml = trunc nuw nsw i64 %indvars.iv705 to i32
  store i32 %i.ml, ptr %i.mj, align 4
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mj, i64 4
  store float %i.mk, ptr %i.mm, align 4
  %.not10.i.i.i.i.i231 = icmp eq ptr %i.lx, %i.lp
  br i1 %.not10.i.i.i.i.i231, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i236, label %.lr.ph.i.i.i.i.i232.preheader

.lr.ph.i.i.i.i.i232.preheader:                    ; preds = %.noexc241
  %i.mn = ptrtoaddr ptr %i.mi to i64
  %37 = add i64 %i.ly, -8
  %38 = sub i64 %37, %i.lz                        ; 2 uses
  %i.mo = lshr i64 %38, 3
  %i.mp = add nuw nsw i64 %i.mo, 1                ; 2 uses
  %min.iters.check961 = icmp ult i64 %38, 24
  %i.mq = sub i64 %i.mn, %i.lz
  %diff.check959 = icmp ult i64 %i.mq, 32
  %or.cond1086 = or i1 %min.iters.check961, %diff.check959
  br i1 %or.cond1086, label %.lr.ph.i.i.i.i.i232.preheader1102, label %vector.ph962

vector.ph962:                                     ; preds = %.lr.ph.i.i.i.i.i232.preheader
  %n.vec964 = and i64 %i.mp, 4611686018427387900  ; 3 uses
  %i.mr = shl i64 %n.vec964, 3                    ; 2 uses
  %i.ms = getelementptr i8, ptr %i.mi, i64 %i.mr  ; 2 uses
  %i.mt = getelementptr i8, ptr %i.lx, i64 %i.mr
  br label %vector.body965

vector.body965:                                   ; preds = %vector.body965, %vector.ph962
  %index966 = phi i64 [ 0, %vector.ph962 ], [ %index.next971, %vector.body965 ] ; 2 uses
  %i.mu = shl i64 %index966, 3                    ; 2 uses
  %next.gep967 = getelementptr i8, ptr %i.mi, i64 %i.mu ; 2 uses
  %next.gep968 = getelementptr i8, ptr %i.lx, i64 %i.mu ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !51)
  call void @llvm.experimental.noalias.scope.decl(metadata !54)
  %i.mv = getelementptr i8, ptr %next.gep968, i64 16
  %wide.load969 = load <2 x i64>, ptr %next.gep968, align 4, !alias.scope !54, !noalias !51
  %wide.load970 = load <2 x i64>, ptr %i.mv, align 4, !alias.scope !54, !noalias !51
  %i.mw = getelementptr i8, ptr %next.gep967, i64 16
  store <2 x i64> %wide.load969, ptr %next.gep967, align 4, !alias.scope !51, !noalias !54
  store <2 x i64> %wide.load970, ptr %i.mw, align 4, !alias.scope !51, !noalias !54
  %index.next971 = add nuw i64 %index966, 4       ; 2 uses
  %i.mx = icmp eq i64 %index.next971, %n.vec964
  br i1 %i.mx, label %middle.block972, label %vector.body965, !llvm.loop !56

middle.block972:                                  ; preds = %vector.body965
  %cmp.n973 = icmp eq i64 %i.mp, %n.vec964
  br i1 %cmp.n973, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i236, label %.lr.ph.i.i.i.i.i232.preheader1102

.lr.ph.i.i.i.i.i232.preheader1102:                ; preds = %.lr.ph.i.i.i.i.i232.preheader, %middle.block972
  %.012.i.i.i.i.i233.ph = phi ptr [ %i.mi, %.lr.ph.i.i.i.i.i232.preheader ], [ %i.ms, %middle.block972 ]
  %.0911.i.i.i.i.i234.ph = phi ptr [ %i.lx, %.lr.ph.i.i.i.i.i232.preheader ], [ %i.mt, %middle.block972 ]
  br label %.lr.ph.i.i.i.i.i232

.lr.ph.i.i.i.i.i232:                              ; preds = %.lr.ph.i.i.i.i.i232.preheader1102, %.lr.ph.i.i.i.i.i232
  %.012.i.i.i.i.i233 = phi ptr [ %i.na, %.lr.ph.i.i.i.i.i232 ], [ %.012.i.i.i.i.i233.ph, %.lr.ph.i.i.i.i.i232.preheader1102 ] ; 2 uses
  %.0911.i.i.i.i.i234 = phi ptr [ %i.mz, %.lr.ph.i.i.i.i.i232 ], [ %.0911.i.i.i.i.i234.ph, %.lr.ph.i.i.i.i.i232.preheader1102 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !51)
  call void @llvm.experimental.noalias.scope.decl(metadata !54)
  %i.my = load i64, ptr %.0911.i.i.i.i.i234, align 4, !alias.scope !54, !noalias !51
  store i64 %i.my, ptr %.012.i.i.i.i.i233, align 4, !alias.scope !51, !noalias !54
  %i.mz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i234, i64 8 ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i233, i64 8 ; 2 uses
  %.not.i.i.i.i.i235 = icmp eq ptr %i.mz, %i.lp
  br i1 %.not.i.i.i.i.i235, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i236, label %.lr.ph.i.i.i.i.i232, !llvm.loop !57

_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i236: ; preds = %.lr.ph.i.i.i.i.i232, %middle.block972, %.noexc241
  %.0.lcssa.i.i.i.i.i237 = phi ptr [ %i.mi, %.noexc241 ], [ %i.ms, %middle.block972 ], [ %i.na, %.lr.ph.i.i.i.i.i232 ]
  %i.nb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i237, i64 8
  %.not.i34.i.i238 = icmp eq ptr %i.lx, null
  br i1 %.not.i34.i.i238, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRiRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i239, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i236
  call void @_ZdlPvm(ptr noundef nonnull %i.lx, i64 noundef %i.ma) #23
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRiRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i239

_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRiRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i239: ; preds = %bb.ah, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i236
  store ptr %i.mi, ptr %i.lm, align 8
  store ptr %i.nb, ptr %i.lo, align 8
  %i.nc = getelementptr inbounds nuw [8 x i8], ptr %i.mi, i64 %i.mg
  store ptr %i.nc, ptr %i.lq, align 8
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRiRfEEERS0_DpOT_.exit242

_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRiRfEEERS0_DpOT_.exit242: ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRiRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i239, %bb.af
  %i.nd = getelementptr inbounds nuw i8, ptr %i.ex, i64 12 ; 2 uses
  %i.ne = load ptr, ptr %i.cm, align 8            ; 2 uses
  %.not10.i.i.i.i243 = icmp eq ptr %i.ne, null
  br i1 %.not10.i.i.i.i243, label %.critedge.i254, label %.lr.ph.i.i.i.i244

.lr.ph.i.i.i.i244:                                ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRiRfEEERS0_DpOT_.exit242
  %i.nf = load i32, ptr %i.nd, align 4            ; 2 uses
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ai, %.lr.ph.i.i.i.i244
  %.012.i.i.i.i245 = phi ptr [ %i.ne, %.lr.ph.i.i.i.i244 ], [ %.1.i.i.i.i250, %bb.ai ] ; 4 uses
  %.0811.i.i.i.i246 = phi ptr [ %i.cl, %.lr.ph.i.i.i.i244 ], [ %.19.i.i.i.i247, %bb.ai ] ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i245, i64 32
  %i.nh = load i32, ptr %i.ng, align 4
  %i.ni = icmp slt i32 %i.nh, %i.nf               ; 3 uses
  %.19.i.i.i.i247 = select i1 %i.ni, ptr %.0811.i.i.i.i246, ptr %.012.i.i.i.i245 ; 5 uses
  %.1.in.v.i.i.i.i248 = select i1 %i.ni, i64 24, i64 16
  %.1.in.i.i.i.i249 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i245, i64 %.1.in.v.i.i.i.i248
  %.1.i.i.i.i250 = load ptr, ptr %.1.in.i.i.i.i249, align 8 ; 2 uses
  %.not.i.i.i.i251 = icmp eq ptr %.1.i.i.i.i250, null
  br i1 %.not.i.i.i.i251, label %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i252, label %bb.ai, !llvm.loop !29

_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i252: ; preds = %bb.ai
  %i.nj = icmp eq ptr %.19.i.i.i.i247, %i.cl
  br i1 %i.nj, label %.critedge.i254, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i252
  %.19.i.i.i.i247.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.ni, ptr %.0811.i.i.i.i246, ptr %.012.i.i.i.i245
  %.19.i.i.i.i247.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i247.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.nk = load i32, ptr %.19.i.i.i.i247.sroa.sel.v.sroa.sel.v.sroa.sel, align 4
  %i.nl = icmp slt i32 %i.nf, %i.nk
  br i1 %i.nl, label %.critedge.i254, label %bb.ak

.critedge.i254:                                   ; preds = %bb.aj, %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i252, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRiRfEEERS0_DpOT_.exit242
  %.08.lcssa.i.i.i11.i255 = phi ptr [ %.19.i.i.i.i247, %bb.aj ], [ %.19.i.i.i.i247, %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i252 ], [ %i.cl, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRiRfEEERS0_DpOT_.exit242 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #22
  store ptr %i.nd, ptr %20, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #22
  %i.nm = invoke ptr @_ZNSt8_Rb_treeIiSt4pairIKiSt6vectorI14aiVertexWeightSaIS3_EEESt10_Select1stIS6_ESt4lessIiESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %30, ptr %.08.lcssa.i.i.i11.i255, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull align 1 dereferenceable(1) %21)
          to label %.noexc256 unwind label %.loopexit576

.noexc256:                                        ; preds = %.critedge.i254
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  br label %bb.ak

bb.ak:                                            ; preds = %.noexc256, %bb.aj
  %.sroa.06.0.i253 = phi ptr [ %i.nm, %.noexc256 ], [ %.19.i.i.i.i247, %bb.aj ] ; 3 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i253, i64 40 ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.ex, i64 28 ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i253, i64 48 ; 4 uses
  %i.nq = load ptr, ptr %i.np, align 8            ; 6 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i253, i64 56 ; 2 uses
  %i.ns = load ptr, ptr %i.nr, align 8
  %.not.i258 = icmp eq ptr %i.nq, %i.ns
  br i1 %.not.i258, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.nt = load float, ptr %i.no, align 4
  %i.nu = trunc nuw nsw i64 %indvars.iv705 to i32
  store i32 %i.nu, ptr %i.nq, align 4
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nq, i64 4
  store float %i.nt, ptr %i.nv, align 4
  %i.nw = load ptr, ptr %i.np, align 8
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 8
  store ptr %i.nx, ptr %i.np, align 8
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRiRfEEERS0_DpOT_.exit273

bb.am:                                            ; preds = %bb.ak
  %i.ny = load ptr, ptr %i.nn, align 8            ; 7 uses
  %i.nz = ptrtoint ptr %i.nq to i64               ; 2 uses
  %i.oa = ptrtoint ptr %i.ny to i64               ; 3 uses
  %i.ob = sub i64 %i.nz, %i.oa                    ; 4 uses
  %i.oc = icmp eq i64 %i.ob, 9223372036854775800
  br i1 %i.oc, label %.invoke, label %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i259

_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i259: ; preds = %bb.am
  %i.od = ashr exact i64 %i.ob, 3                 ; 3 uses
  %.sroa.speculated.i.i.i260 = call i64 @llvm.umax.i64(i64 %i.od, i64 1)
  %i.oe = add nsw i64 %.sroa.speculated.i.i.i260, %i.od ; 2 uses
  %i.of = icmp ult i64 %i.oe, %i.od
  %i.og = call i64 @llvm.umin.i64(i64 %i.oe, i64 1152921504606846975)
  %i.oh = select i1 %i.of, i64 1152921504606846975, i64 %i.og ; 3 uses
  %.not.i.i.i261 = icmp ne i64 %i.oh, 0
  call void @llvm.assume(i1 %.not.i.i.i261)
  %i.oi = shl nuw nsw i64 %i.oh, 3
  %i.oj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.oi) #25
          to label %.noexc272 unwind label %.loopexit576 ; 8 uses

.noexc272:                                        ; preds = %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i259
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 %i.ob ; 2 uses
  %i.ol = load float, ptr %i.no, align 4
  %i.om = trunc nuw nsw i64 %indvars.iv705 to i32
  store i32 %i.om, ptr %i.ok, align 4
  %i.on = getelementptr inbounds nuw i8, ptr %i.ok, i64 4
  store float %i.ol, ptr %i.on, align 4
  %.not10.i.i.i.i.i262 = icmp eq ptr %i.ny, %i.nq
  br i1 %.not10.i.i.i.i.i262, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i267, label %.lr.ph.i.i.i.i.i263.preheader

.lr.ph.i.i.i.i.i263.preheader:                    ; preds = %.noexc272
  %i.oo = ptrtoaddr ptr %i.oj to i64
  %39 = add i64 %i.nz, -8
  %40 = sub i64 %39, %i.oa                        ; 2 uses
  %i.op = lshr i64 %40, 3
  %i.oq = add nuw nsw i64 %i.op, 1                ; 2 uses
  %min.iters.check943 = icmp ult i64 %40, 24
  %i.or = sub i64 %i.oo, %i.oa
  %diff.check941 = icmp ult i64 %i.or, 32
  %or.cond1087 = or i1 %min.iters.check943, %diff.check941
  br i1 %or.cond1087, label %.lr.ph.i.i.i.i.i263.preheader1101, label %vector.ph944

vector.ph944:                                     ; preds = %.lr.ph.i.i.i.i.i263.preheader
  %n.vec946 = and i64 %i.oq, 4611686018427387900  ; 3 uses
  %i.os = shl i64 %n.vec946, 3                    ; 2 uses
  %i.ot = getelementptr i8, ptr %i.oj, i64 %i.os  ; 2 uses
  %i.ou = getelementptr i8, ptr %i.ny, i64 %i.os
  br label %vector.body947

vector.body947:                                   ; preds = %vector.body947, %vector.ph944
  %index948 = phi i64 [ 0, %vector.ph944 ], [ %index.next953, %vector.body947 ] ; 2 uses
  %i.ov = shl i64 %index948, 3                    ; 2 uses
  %next.gep949 = getelementptr i8, ptr %i.oj, i64 %i.ov ; 2 uses
  %next.gep950 = getelementptr i8, ptr %i.ny, i64 %i.ov ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !58)
  call void @llvm.experimental.noalias.scope.decl(metadata !61)
  %i.ow = getelementptr i8, ptr %next.gep950, i64 16
  %wide.load951 = load <2 x i64>, ptr %next.gep950, align 4, !alias.scope !61, !noalias !58
  %wide.load952 = load <2 x i64>, ptr %i.ow, align 4, !alias.scope !61, !noalias !58
  %i.ox = getelementptr i8, ptr %next.gep949, i64 16
  store <2 x i64> %wide.load951, ptr %next.gep949, align 4, !alias.scope !58, !noalias !61
  store <2 x i64> %wide.load952, ptr %i.ox, align 4, !alias.scope !58, !noalias !61
  %index.next953 = add nuw i64 %index948, 4       ; 2 uses
  %i.oy = icmp eq i64 %index.next953, %n.vec946
  br i1 %i.oy, label %middle.block954, label %vector.body947, !llvm.loop !63

middle.block954:                                  ; preds = %vector.body947
  %cmp.n955 = icmp eq i64 %i.oq, %n.vec946
  br i1 %cmp.n955, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i267, label %.lr.ph.i.i.i.i.i263.preheader1101

.lr.ph.i.i.i.i.i263.preheader1101:                ; preds = %.lr.ph.i.i.i.i.i263.preheader, %middle.block954
  %.012.i.i.i.i.i264.ph = phi ptr [ %i.oj, %.lr.ph.i.i.i.i.i263.preheader ], [ %i.ot, %middle.block954 ]
  %.0911.i.i.i.i.i265.ph = phi ptr [ %i.ny, %.lr.ph.i.i.i.i.i263.preheader ], [ %i.ou, %middle.block954 ]
  br label %.lr.ph.i.i.i.i.i263

.lr.ph.i.i.i.i.i263:                              ; preds = %.lr.ph.i.i.i.i.i263.preheader1101, %.lr.ph.i.i.i.i.i263
  %.012.i.i.i.i.i264 = phi ptr [ %i.pb, %.lr.ph.i.i.i.i.i263 ], [ %.012.i.i.i.i.i264.ph, %.lr.ph.i.i.i.i.i263.preheader1101 ] ; 2 uses
  %.0911.i.i.i.i.i265 = phi ptr [ %i.pa, %.lr.ph.i.i.i.i.i263 ], [ %.0911.i.i.i.i.i265.ph, %.lr.ph.i.i.i.i.i263.preheader1101 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !58)
  call void @llvm.experimental.noalias.scope.decl(metadata !61)
  %i.oz = load i64, ptr %.0911.i.i.i.i.i265, align 4, !alias.scope !61, !noalias !58
  store i64 %i.oz, ptr %.012.i.i.i.i.i264, align 4, !alias.scope !58, !noalias !61
  %i.pa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i265, i64 8 ; 2 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i264, i64 8 ; 2 uses
  %.not.i.i.i.i.i266 = icmp eq ptr %i.pa, %i.nq
  br i1 %.not.i.i.i.i.i266, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i267, label %.lr.ph.i.i.i.i.i263, !llvm.loop !64

_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i267: ; preds = %.lr.ph.i.i.i.i.i263, %middle.block954, %.noexc272
  %.0.lcssa.i.i.i.i.i268 = phi ptr [ %i.oj, %.noexc272 ], [ %i.ot, %middle.block954 ], [ %i.pb, %.lr.ph.i.i.i.i.i263 ]
  %i.pc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i268, i64 8
  %.not.i34.i.i269 = icmp eq ptr %i.ny, null
  br i1 %.not.i34.i.i269, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRiRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i270, label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i267
  call void @_ZdlPvm(ptr noundef nonnull %i.ny, i64 noundef %i.ob) #23
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRiRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i270

_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRiRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i270: ; preds = %bb.an, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i267
  store ptr %i.oj, ptr %i.nn, align 8
  store ptr %i.pc, ptr %i.np, align 8
  %i.pd = getelementptr inbounds nuw [8 x i8], ptr %i.oj, i64 %i.oh
  store ptr %i.pd, ptr %i.nr, align 8
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRiRfEEERS0_DpOT_.exit273

_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRiRfEEERS0_DpOT_.exit273: ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRiRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i270, %bb.al
  %i.pe = getelementptr inbounds nuw i8, ptr %i.ex, i64 16 ; 2 uses
  %i.pf = load ptr, ptr %i.cm, align 8            ; 2 uses
  %.not10.i.i.i.i274 = icmp eq ptr %i.pf, null
  br i1 %.not10.i.i.i.i274, label %.critedge.i285, label %.lr.ph.i.i.i.i275

.lr.ph.i.i.i.i275:                                ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRiRfEEERS0_DpOT_.exit273
  %i.pg = load i32, ptr %i.pe, align 4            ; 2 uses
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ao, %.lr.ph.i.i.i.i275
  %.012.i.i.i.i276 = phi ptr [ %i.pf, %.lr.ph.i.i.i.i275 ], [ %.1.i.i.i.i281, %bb.ao ] ; 4 uses
  %.0811.i.i.i.i277 = phi ptr [ %i.cl, %.lr.ph.i.i.i.i275 ], [ %.19.i.i.i.i278, %bb.ao ] ; 2 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i276, i64 32
  %i.pi = load i32, ptr %i.ph, align 4
  %i.pj = icmp slt i32 %i.pi, %i.pg               ; 3 uses
  %.19.i.i.i.i278 = select i1 %i.pj, ptr %.0811.i.i.i.i277, ptr %.012.i.i.i.i276 ; 5 uses
  %.1.in.v.i.i.i.i279 = select i1 %i.pj, i64 24, i64 16
  %.1.in.i.i.i.i280 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i276, i64 %.1.in.v.i.i.i.i279
  %.1.i.i.i.i281 = load ptr, ptr %.1.in.i.i.i.i280, align 8 ; 2 uses
  %.not.i.i.i.i282 = icmp eq ptr %.1.i.i.i.i281, null
  br i1 %.not.i.i.i.i282, label %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i283, label %bb.ao, !llvm.loop !29

_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i283: ; preds = %bb.ao
  %i.pk = icmp eq ptr %.19.i.i.i.i278, %i.cl
  br i1 %i.pk, label %.critedge.i285, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i283
  %.19.i.i.i.i278.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.pj, ptr %.0811.i.i.i.i277, ptr %.012.i.i.i.i276
  %.19.i.i.i.i278.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i278.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.pl = load i32, ptr %.19.i.i.i.i278.sroa.sel.v.sroa.sel.v.sroa.sel, align 4
  %i.pm = icmp slt i32 %i.pg, %i.pl
  br i1 %i.pm, label %.critedge.i285, label %bb.aq

.critedge.i285:                                   ; preds = %bb.ap, %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i283, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRiRfEEERS0_DpOT_.exit273
  %.08.lcssa.i.i.i11.i286 = phi ptr [ %.19.i.i.i.i278, %bb.ap ], [ %.19.i.i.i.i278, %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i283 ], [ %i.cl, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRiRfEEERS0_DpOT_.exit273 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  store ptr %i.pe, ptr %18, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  %i.pn = invoke ptr @_ZNSt8_Rb_treeIiSt4pairIKiSt6vectorI14aiVertexWeightSaIS3_EEESt10_Select1stIS6_ESt4lessIiESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %30, ptr %.08.lcssa.i.i.i11.i286, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 1 dereferenceable(1) %19)
          to label %.noexc287 unwind label %.loopexit576

.noexc287:                                        ; preds = %.critedge.i285
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  br label %bb.aq

bb.aq:                                            ; preds = %.noexc287, %bb.ap
  %.sroa.06.0.i284 = phi ptr [ %i.pn, %.noexc287 ], [ %.19.i.i.i.i278, %bb.ap ] ; 3 uses
  %i.po = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i284, i64 40 ; 2 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %i.ex, i64 32 ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i284, i64 48 ; 4 uses
  %i.pr = load ptr, ptr %i.pq, align 8            ; 6 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i284, i64 56 ; 2 uses
  %i.pt = load ptr, ptr %i.ps, align 8
  %.not.i289 = icmp eq ptr %i.pr, %i.pt
  br i1 %.not.i289, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.pu = load float, ptr %i.pp, align 4
  %i.pv = trunc nuw nsw i64 %indvars.iv705 to i32
  store i32 %i.pv, ptr %i.pr, align 4
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pr, i64 4
  store float %i.pu, ptr %i.pw, align 4
  %i.px = load ptr, ptr %i.pq, align 8
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 8
  store ptr %i.py, ptr %i.pq, align 8
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRiRfEEERS0_DpOT_.exit304

bb.as:                                            ; preds = %bb.aq
  %i.pz = load ptr, ptr %i.po, align 8            ; 7 uses
  %i.qa = ptrtoint ptr %i.pr to i64               ; 2 uses
  %i.qb = ptrtoint ptr %i.pz to i64               ; 3 uses
  %i.qc = sub i64 %i.qa, %i.qb                    ; 4 uses
  %i.qd = icmp eq i64 %i.qc, 9223372036854775800
  br i1 %i.qd, label %.invoke, label %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i290

_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i290: ; preds = %bb.as
  %i.qe = ashr exact i64 %i.qc, 3                 ; 3 uses
  %.sroa.speculated.i.i.i291 = call i64 @llvm.umax.i64(i64 %i.qe, i64 1)
  %i.qf = add nsw i64 %.sroa.speculated.i.i.i291, %i.qe ; 2 uses
  %i.qg = icmp ult i64 %i.qf, %i.qe
  %i.qh = call i64 @llvm.umin.i64(i64 %i.qf, i64 1152921504606846975)
  %i.qi = select i1 %i.qg, i64 1152921504606846975, i64 %i.qh ; 3 uses
  %.not.i.i.i292 = icmp ne i64 %i.qi, 0
  call void @llvm.assume(i1 %.not.i.i.i292)
  %i.qj = shl nuw nsw i64 %i.qi, 3
  %i.qk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qj) #25
          to label %.noexc303 unwind label %.loopexit576 ; 8 uses

.noexc303:                                        ; preds = %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i290
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 %i.qc ; 2 uses
  %i.qm = load float, ptr %i.pp, align 4
  %i.qn = trunc nuw nsw i64 %indvars.iv705 to i32
  store i32 %i.qn, ptr %i.ql, align 4
  %i.qo = getelementptr inbounds nuw i8, ptr %i.ql, i64 4
  store float %i.qm, ptr %i.qo, align 4
  %.not10.i.i.i.i.i293 = icmp eq ptr %i.pz, %i.pr
  br i1 %.not10.i.i.i.i.i293, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i298, label %.lr.ph.i.i.i.i.i294.preheader

.lr.ph.i.i.i.i.i294.preheader:                    ; preds = %.noexc303
  %i.qp = ptrtoaddr ptr %i.qk to i64
  %41 = add i64 %i.qa, -8
  %42 = sub i64 %41, %i.qb                        ; 2 uses
  %i.qq = lshr i64 %42, 3
  %i.qr = add nuw nsw i64 %i.qq, 1                ; 2 uses
  %min.iters.check925 = icmp ult i64 %42, 24
  %i.qs = sub i64 %i.qp, %i.qb
  %diff.check923 = icmp ult i64 %i.qs, 32
  %or.cond1088 = or i1 %min.iters.check925, %diff.check923
  br i1 %or.cond1088, label %.lr.ph.i.i.i.i.i294.preheader1100, label %vector.ph926

vector.ph926:                                     ; preds = %.lr.ph.i.i.i.i.i294.preheader
  %n.vec928 = and i64 %i.qr, 4611686018427387900  ; 3 uses
  %i.qt = shl i64 %n.vec928, 3                    ; 2 uses
  %i.qu = getelementptr i8, ptr %i.qk, i64 %i.qt  ; 2 uses
  %i.qv = getelementptr i8, ptr %i.pz, i64 %i.qt
  br label %vector.body929

vector.body929:                                   ; preds = %vector.body929, %vector.ph926
  %index930 = phi i64 [ 0, %vector.ph926 ], [ %index.next935, %vector.body929 ] ; 2 uses
  %i.qw = shl i64 %index930, 3                    ; 2 uses
  %next.gep931 = getelementptr i8, ptr %i.qk, i64 %i.qw ; 2 uses
  %next.gep932 = getelementptr i8, ptr %i.pz, i64 %i.qw ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !65)
  call void @llvm.experimental.noalias.scope.decl(metadata !68)
  %i.qx = getelementptr i8, ptr %next.gep932, i64 16
  %wide.load933 = load <2 x i64>, ptr %next.gep932, align 4, !alias.scope !68, !noalias !65
  %wide.load934 = load <2 x i64>, ptr %i.qx, align 4, !alias.scope !68, !noalias !65
  %i.qy = getelementptr i8, ptr %next.gep931, i64 16
  store <2 x i64> %wide.load933, ptr %next.gep931, align 4, !alias.scope !65, !noalias !68
  store <2 x i64> %wide.load934, ptr %i.qy, align 4, !alias.scope !65, !noalias !68
  %index.next935 = add nuw i64 %index930, 4       ; 2 uses
  %i.qz = icmp eq i64 %index.next935, %n.vec928
  br i1 %i.qz, label %middle.block936, label %vector.body929, !llvm.loop !70

middle.block936:                                  ; preds = %vector.body929
  %cmp.n937 = icmp eq i64 %i.qr, %n.vec928
  br i1 %cmp.n937, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i298, label %.lr.ph.i.i.i.i.i294.preheader1100

.lr.ph.i.i.i.i.i294.preheader1100:                ; preds = %.lr.ph.i.i.i.i.i294.preheader, %middle.block936
  %.012.i.i.i.i.i295.ph = phi ptr [ %i.qk, %.lr.ph.i.i.i.i.i294.preheader ], [ %i.qu, %middle.block936 ]
  %.0911.i.i.i.i.i296.ph = phi ptr [ %i.pz, %.lr.ph.i.i.i.i.i294.preheader ], [ %i.qv, %middle.block936 ]
  br label %.lr.ph.i.i.i.i.i294

.lr.ph.i.i.i.i.i294:                              ; preds = %.lr.ph.i.i.i.i.i294.preheader1100, %.lr.ph.i.i.i.i.i294
  %.012.i.i.i.i.i295 = phi ptr [ %i.rc, %.lr.ph.i.i.i.i.i294 ], [ %.012.i.i.i.i.i295.ph, %.lr.ph.i.i.i.i.i294.preheader1100 ] ; 2 uses
  %.0911.i.i.i.i.i296 = phi ptr [ %i.rb, %.lr.ph.i.i.i.i.i294 ], [ %.0911.i.i.i.i.i296.ph, %.lr.ph.i.i.i.i.i294.preheader1100 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !65)
  call void @llvm.experimental.noalias.scope.decl(metadata !68)
  %i.ra = load i64, ptr %.0911.i.i.i.i.i296, align 4, !alias.scope !68, !noalias !65
  store i64 %i.ra, ptr %.012.i.i.i.i.i295, align 4, !alias.scope !65, !noalias !68
  %i.rb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i296, i64 8 ; 2 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i295, i64 8 ; 2 uses
  %.not.i.i.i.i.i297 = icmp eq ptr %i.rb, %i.pr
  br i1 %.not.i.i.i.i.i297, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i298, label %.lr.ph.i.i.i.i.i294, !llvm.loop !71

_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i298: ; preds = %.lr.ph.i.i.i.i.i294, %middle.block936, %.noexc303
  %.0.lcssa.i.i.i.i.i299 = phi ptr [ %i.qk, %.noexc303 ], [ %i.qu, %middle.block936 ], [ %i.rc, %.lr.ph.i.i.i.i.i294 ]
  %i.rd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i299, i64 8
  %.not.i34.i.i300 = icmp eq ptr %i.pz, null
  br i1 %.not.i34.i.i300, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRiRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i301, label %bb.at

bb.at:                                            ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i298
  call void @_ZdlPvm(ptr noundef nonnull %i.pz, i64 noundef %i.qc) #23
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRiRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i301

_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRiRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i301: ; preds = %bb.at, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i298
  store ptr %i.qk, ptr %i.po, align 8
  store ptr %i.rd, ptr %i.pq, align 8
  %i.re = getelementptr inbounds nuw [8 x i8], ptr %i.qk, i64 %i.qi
  store ptr %i.re, ptr %i.ps, align 8
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRiRfEEERS0_DpOT_.exit304

_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRiRfEEERS0_DpOT_.exit304: ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRiRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i301, %bb.ar
  %i.rf = getelementptr inbounds nuw i8, ptr %i.ex, i64 20 ; 2 uses
  %i.rg = load ptr, ptr %i.cm, align 8            ; 2 uses
  %.not10.i.i.i.i305 = icmp eq ptr %i.rg, null
  br i1 %.not10.i.i.i.i305, label %.critedge.i316, label %.lr.ph.i.i.i.i306

.lr.ph.i.i.i.i306:                                ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRiRfEEERS0_DpOT_.exit304
  %i.rh = load i32, ptr %i.rf, align 4            ; 2 uses
  br label %bb.au

bb.au:                                            ; preds = %bb.au, %.lr.ph.i.i.i.i306
  %.012.i.i.i.i307 = phi ptr [ %i.rg, %.lr.ph.i.i.i.i306 ], [ %.1.i.i.i.i312, %bb.au ] ; 4 uses
  %.0811.i.i.i.i308 = phi ptr [ %i.cl, %.lr.ph.i.i.i.i306 ], [ %.19.i.i.i.i309, %bb.au ] ; 2 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i307, i64 32
  %i.rj = load i32, ptr %i.ri, align 4
  %i.rk = icmp slt i32 %i.rj, %i.rh               ; 3 uses
  %.19.i.i.i.i309 = select i1 %i.rk, ptr %.0811.i.i.i.i308, ptr %.012.i.i.i.i307 ; 5 uses
  %.1.in.v.i.i.i.i310 = select i1 %i.rk, i64 24, i64 16
  %.1.in.i.i.i.i311 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i307, i64 %.1.in.v.i.i.i.i310
  %.1.i.i.i.i312 = load ptr, ptr %.1.in.i.i.i.i311, align 8 ; 2 uses
  %.not.i.i.i.i313 = icmp eq ptr %.1.i.i.i.i312, null
  br i1 %.not.i.i.i.i313, label %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i314, label %bb.au, !llvm.loop !29

_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i314: ; preds = %bb.au
  %i.rl = icmp eq ptr %.19.i.i.i.i309, %i.cl
  br i1 %i.rl, label %.critedge.i316, label %bb.av

bb.av:                                            ; preds = %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i314
  %.19.i.i.i.i309.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.rk, ptr %.0811.i.i.i.i308, ptr %.012.i.i.i.i307
  %.19.i.i.i.i309.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i309.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.rm = load i32, ptr %.19.i.i.i.i309.sroa.sel.v.sroa.sel.v.sroa.sel, align 4
  %i.rn = icmp slt i32 %i.rh, %i.rm
  br i1 %i.rn, label %.critedge.i316, label %bb.aw

.critedge.i316:                                   ; preds = %bb.av, %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i314, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRiRfEEERS0_DpOT_.exit304
  %.08.lcssa.i.i.i11.i317 = phi ptr [ %.19.i.i.i.i309, %bb.av ], [ %.19.i.i.i.i309, %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i314 ], [ %i.cl, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRiRfEEERS0_DpOT_.exit304 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  store ptr %i.rf, ptr %16, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  %i.ro = invoke ptr @_ZNSt8_Rb_treeIiSt4pairIKiSt6vectorI14aiVertexWeightSaIS3_EEESt10_Select1stIS6_ESt4lessIiESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %30, ptr %.08.lcssa.i.i.i11.i317, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull align 1 dereferenceable(1) %17)
          to label %.noexc318 unwind label %.loopexit576

.noexc318:                                        ; preds = %.critedge.i316
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  br label %bb.aw

bb.aw:                                            ; preds = %.noexc318, %bb.av
  %.sroa.06.0.i315 = phi ptr [ %i.ro, %.noexc318 ], [ %.19.i.i.i.i309, %bb.av ] ; 3 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i315, i64 40 ; 2 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %i.ex, i64 36 ; 2 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i315, i64 48 ; 4 uses
  %i.rs = load ptr, ptr %i.rr, align 8            ; 6 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i315, i64 56 ; 2 uses
  %i.ru = load ptr, ptr %i.rt, align 8
  %.not.i320 = icmp eq ptr %i.rs, %i.ru
  br i1 %.not.i320, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.rv = load float, ptr %i.rq, align 4
  %i.rw = trunc nuw nsw i64 %indvars.iv705 to i32
  store i32 %i.rw, ptr %i.rs, align 4
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rs, i64 4
  store float %i.rv, ptr %i.rx, align 4
  %i.ry = load ptr, ptr %i.rr, align 8
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ry, i64 8
  store ptr %i.rz, ptr %i.rr, align 8
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRifEEERS0_DpOT_.exit

bb.ay:                                            ; preds = %bb.aw
  %i.sa = load ptr, ptr %i.rp, align 8            ; 7 uses
  %i.sb = ptrtoint ptr %i.rs to i64               ; 2 uses
  %i.sc = ptrtoint ptr %i.sa to i64               ; 3 uses
  %i.sd = sub i64 %i.sb, %i.sc                    ; 4 uses
  %i.se = icmp eq i64 %i.sd, 9223372036854775800
  br i1 %i.se, label %.invoke, label %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i321

_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i321: ; preds = %bb.ay
  %i.sf = ashr exact i64 %i.sd, 3                 ; 3 uses
  %.sroa.speculated.i.i.i322 = call i64 @llvm.umax.i64(i64 %i.sf, i64 1)
  %i.sg = add nsw i64 %.sroa.speculated.i.i.i322, %i.sf ; 2 uses
  %i.sh = icmp ult i64 %i.sg, %i.sf
  %i.si = call i64 @llvm.umin.i64(i64 %i.sg, i64 1152921504606846975)
  %i.sj = select i1 %i.sh, i64 1152921504606846975, i64 %i.si ; 3 uses
  %.not.i.i.i323 = icmp ne i64 %i.sj, 0
  call void @llvm.assume(i1 %.not.i.i.i323)
  %i.sk = shl nuw nsw i64 %i.sj, 3
  %i.sl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.sk) #25
          to label %.noexc334 unwind label %.loopexit576 ; 8 uses

.noexc334:                                        ; preds = %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i321
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 %i.sd ; 2 uses
  %i.sn = load float, ptr %i.rq, align 4
  %i.so = trunc nuw nsw i64 %indvars.iv705 to i32
  store i32 %i.so, ptr %i.sm, align 4
  %i.sp = getelementptr inbounds nuw i8, ptr %i.sm, i64 4
  store float %i.sn, ptr %i.sp, align 4
  %.not10.i.i.i.i.i324 = icmp eq ptr %i.sa, %i.rs
  br i1 %.not10.i.i.i.i.i324, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i329, label %.lr.ph.i.i.i.i.i325.preheader

.lr.ph.i.i.i.i.i325.preheader:                    ; preds = %.noexc334
  %i.sq = ptrtoaddr ptr %i.sl to i64
  %43 = add i64 %i.sb, -8
  %44 = sub i64 %43, %i.sc                        ; 2 uses
  %i.sr = lshr i64 %44, 3
  %i.ss = add nuw nsw i64 %i.sr, 1                ; 2 uses
  %min.iters.check907 = icmp ult i64 %44, 24
  %i.st = sub i64 %i.sq, %i.sc
  %diff.check905 = icmp ult i64 %i.st, 32
  %or.cond1089 = or i1 %min.iters.check907, %diff.check905
  br i1 %or.cond1089, label %.lr.ph.i.i.i.i.i325.preheader1099, label %vector.ph908

vector.ph908:                                     ; preds = %.lr.ph.i.i.i.i.i325.preheader
  %n.vec910 = and i64 %i.ss, 4611686018427387900  ; 3 uses
  %i.su = shl i64 %n.vec910, 3                    ; 2 uses
  %i.sv = getelementptr i8, ptr %i.sl, i64 %i.su  ; 2 uses
  %i.sw = getelementptr i8, ptr %i.sa, i64 %i.su
  br label %vector.body911

vector.body911:                                   ; preds = %vector.body911, %vector.ph908
  %index912 = phi i64 [ 0, %vector.ph908 ], [ %index.next917, %vector.body911 ] ; 2 uses
  %i.sx = shl i64 %index912, 3                    ; 2 uses
  %next.gep913 = getelementptr i8, ptr %i.sl, i64 %i.sx ; 2 uses
  %next.gep914 = getelementptr i8, ptr %i.sa, i64 %i.sx ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !72)
  call void @llvm.experimental.noalias.scope.decl(metadata !75)
  %i.sy = getelementptr i8, ptr %next.gep914, i64 16
  %wide.load915 = load <2 x i64>, ptr %next.gep914, align 4, !alias.scope !75, !noalias !72
  %wide.load916 = load <2 x i64>, ptr %i.sy, align 4, !alias.scope !75, !noalias !72
  %i.sz = getelementptr i8, ptr %next.gep913, i64 16
  store <2 x i64> %wide.load915, ptr %next.gep913, align 4, !alias.scope !72, !noalias !75
  store <2 x i64> %wide.load916, ptr %i.sz, align 4, !alias.scope !72, !noalias !75
  %index.next917 = add nuw i64 %index912, 4       ; 2 uses
  %i.ta = icmp eq i64 %index.next917, %n.vec910
  br i1 %i.ta, label %middle.block918, label %vector.body911, !llvm.loop !77

middle.block918:                                  ; preds = %vector.body911
  %cmp.n919 = icmp eq i64 %i.ss, %n.vec910
  br i1 %cmp.n919, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i329, label %.lr.ph.i.i.i.i.i325.preheader1099

.lr.ph.i.i.i.i.i325.preheader1099:                ; preds = %.lr.ph.i.i.i.i.i325.preheader, %middle.block918
  %.012.i.i.i.i.i326.ph = phi ptr [ %i.sl, %.lr.ph.i.i.i.i.i325.preheader ], [ %i.sv, %middle.block918 ]
  %.0911.i.i.i.i.i327.ph = phi ptr [ %i.sa, %.lr.ph.i.i.i.i.i325.preheader ], [ %i.sw, %middle.block918 ]
  br label %.lr.ph.i.i.i.i.i325

.lr.ph.i.i.i.i.i325:                              ; preds = %.lr.ph.i.i.i.i.i325.preheader1099, %.lr.ph.i.i.i.i.i325
  %.012.i.i.i.i.i326 = phi ptr [ %i.td, %.lr.ph.i.i.i.i.i325 ], [ %.012.i.i.i.i.i326.ph, %.lr.ph.i.i.i.i.i325.preheader1099 ] ; 2 uses
  %.0911.i.i.i.i.i327 = phi ptr [ %i.tc, %.lr.ph.i.i.i.i.i325 ], [ %.0911.i.i.i.i.i327.ph, %.lr.ph.i.i.i.i.i325.preheader1099 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !72)
  call void @llvm.experimental.noalias.scope.decl(metadata !75)
  %i.tb = load i64, ptr %.0911.i.i.i.i.i327, align 4, !alias.scope !75, !noalias !72
  store i64 %i.tb, ptr %.012.i.i.i.i.i326, align 4, !alias.scope !72, !noalias !75
  %i.tc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i327, i64 8 ; 2 uses
  %i.td = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i326, i64 8 ; 2 uses
  %.not.i.i.i.i.i328 = icmp eq ptr %i.tc, %i.rs
  br i1 %.not.i.i.i.i.i328, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i329, label %.lr.ph.i.i.i.i.i325, !llvm.loop !78

_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i329: ; preds = %.lr.ph.i.i.i.i.i325, %middle.block918, %.noexc334
  %.0.lcssa.i.i.i.i.i330 = phi ptr [ %i.sl, %.noexc334 ], [ %i.sv, %middle.block918 ], [ %i.td, %.lr.ph.i.i.i.i.i325 ]
  %i.te = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i330, i64 8
  %.not.i34.i.i331 = icmp eq ptr %i.sa, null
  br i1 %.not.i34.i.i331, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRiRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i332, label %bb.az

bb.az:                                            ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i329
  call void @_ZdlPvm(ptr noundef nonnull %i.sa, i64 noundef %i.sd) #23
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRiRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i332

_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRiRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i332: ; preds = %bb.az, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i329
  store ptr %i.sl, ptr %i.rp, align 8
  store ptr %i.te, ptr %i.rr, align 8
  %i.tf = getelementptr inbounds nuw [8 x i8], ptr %i.sl, i64 %i.sj
  store ptr %i.tf, ptr %i.rt, align 8
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRifEEERS0_DpOT_.exit

bb.ba:                                            ; preds = %.thread571
  %i.tg = getelementptr inbounds nuw i8, ptr %i.fa, i64 8 ; 2 uses
  %i.th = load ptr, ptr %i.cm, align 8            ; 2 uses
  %.not10.i.i.i.i336 = icmp eq ptr %i.th, null
  br i1 %.not10.i.i.i.i336, label %.critedge.i347, label %.lr.ph.i.i.i.i337

.lr.ph.i.i.i.i337:                                ; preds = %bb.ba
  %i.ti = load i32, ptr %i.tg, align 4            ; 2 uses
  br label %bb.bb

bb.bb:                                            ; preds = %bb.bb, %.lr.ph.i.i.i.i337
  %.012.i.i.i.i338 = phi ptr [ %i.th, %.lr.ph.i.i.i.i337 ], [ %.1.i.i.i.i343, %bb.bb ] ; 4 uses
  %.0811.i.i.i.i339 = phi ptr [ %i.cl, %.lr.ph.i.i.i.i337 ], [ %.19.i.i.i.i340, %bb.bb ] ; 2 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i338, i64 32
  %i.tk = load i32, ptr %i.tj, align 4
  %i.tl = icmp slt i32 %i.tk, %i.ti               ; 3 uses
  %.19.i.i.i.i340 = select i1 %i.tl, ptr %.0811.i.i.i.i339, ptr %.012.i.i.i.i338 ; 5 uses
  %.1.in.v.i.i.i.i341 = select i1 %i.tl, i64 24, i64 16
  %.1.in.i.i.i.i342 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i338, i64 %.1.in.v.i.i.i.i341
  %.1.i.i.i.i343 = load ptr, ptr %.1.in.i.i.i.i342, align 8 ; 2 uses
  %.not.i.i.i.i344 = icmp eq ptr %.1.i.i.i.i343, null
  br i1 %.not.i.i.i.i344, label %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i345, label %bb.bb, !llvm.loop !29

_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i345: ; preds = %bb.bb
  %i.tm = icmp eq ptr %.19.i.i.i.i340, %i.cl
  br i1 %i.tm, label %.critedge.i347, label %bb.bc

bb.bc:                                            ; preds = %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i345
  %.19.i.i.i.i340.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.tl, ptr %.0811.i.i.i.i339, ptr %.012.i.i.i.i338
  %.19.i.i.i.i340.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i340.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.tn = load i32, ptr %.19.i.i.i.i340.sroa.sel.v.sroa.sel.v.sroa.sel, align 4
  %i.to = icmp slt i32 %i.ti, %i.tn
  br i1 %i.to, label %.critedge.i347, label %bb.bd

.critedge.i347:                                   ; preds = %bb.bc, %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i345, %bb.ba
  %.08.lcssa.i.i.i11.i348 = phi ptr [ %.19.i.i.i.i340, %bb.bc ], [ %.19.i.i.i.i340, %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i345 ], [ %i.cl, %bb.ba ]
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  store ptr %i.tg, ptr %14, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  %i.tp = invoke ptr @_ZNSt8_Rb_treeIiSt4pairIKiSt6vectorI14aiVertexWeightSaIS3_EEESt10_Select1stIS6_ESt4lessIiESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %30, ptr %.08.lcssa.i.i.i11.i348, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %.noexc349 unwind label %.loopexit576

.noexc349:                                        ; preds = %.critedge.i347
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br label %bb.bd

bb.bd:                                            ; preds = %.noexc349, %bb.bc
  %.sroa.06.0.i346 = phi ptr [ %i.tp, %.noexc349 ], [ %.19.i.i.i.i340, %bb.bc ] ; 3 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i346, i64 40 ; 2 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %i.fa, i64 16 ; 3 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i346, i64 48 ; 4 uses
  %i.tt = load ptr, ptr %i.ts, align 8            ; 6 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i346, i64 56 ; 2 uses
  %i.tv = load ptr, ptr %i.tu, align 8
  %.not.i351 = icmp eq ptr %i.tt, %i.tv
  br i1 %.not.i351, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.tw = load float, ptr %i.tr, align 4
  %i.tx = trunc nuw nsw i64 %indvars.iv705 to i32
  store i32 %i.tx, ptr %i.tt, align 4
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tt, i64 4
  store float %i.tw, ptr %i.ty, align 4
  %i.tz = load ptr, ptr %i.ts, align 8
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tz, i64 8
  store ptr %i.ua, ptr %i.ts, align 8
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRiRfEEERS0_DpOT_.exit366

bb.bf:                                            ; preds = %bb.bd
  %i.ub = load ptr, ptr %i.tq, align 8            ; 7 uses
  %i.uc = ptrtoint ptr %i.tt to i64               ; 2 uses
  %i.ud = ptrtoint ptr %i.ub to i64               ; 3 uses
  %i.ue = sub i64 %i.uc, %i.ud                    ; 4 uses
  %i.uf = icmp eq i64 %i.ue, 9223372036854775800
  br i1 %i.uf, label %.invoke, label %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i352

_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i352: ; preds = %bb.bf
  %i.ug = ashr exact i64 %i.ue, 3                 ; 3 uses
  %.sroa.speculated.i.i.i353 = call i64 @llvm.umax.i64(i64 %i.ug, i64 1)
  %i.uh = add nsw i64 %.sroa.speculated.i.i.i353, %i.ug ; 2 uses
  %i.ui = icmp ult i64 %i.uh, %i.ug
  %i.uj = call i64 @llvm.umin.i64(i64 %i.uh, i64 1152921504606846975)
  %i.uk = select i1 %i.ui, i64 1152921504606846975, i64 %i.uj ; 3 uses
  %.not.i.i.i354 = icmp ne i64 %i.uk, 0
  call void @llvm.assume(i1 %.not.i.i.i354)
  %i.ul = shl nuw nsw i64 %i.uk, 3
  %i.um = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ul) #25
          to label %.noexc365 unwind label %.loopexit576 ; 8 uses

.noexc365:                                        ; preds = %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i352
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 %i.ue ; 2 uses
  %i.uo = load float, ptr %i.tr, align 4
  %i.up = trunc nuw nsw i64 %indvars.iv705 to i32
  store i32 %i.up, ptr %i.un, align 4
  %i.uq = getelementptr inbounds nuw i8, ptr %i.un, i64 4
  store float %i.uo, ptr %i.uq, align 4
  %.not10.i.i.i.i.i355 = icmp eq ptr %i.ub, %i.tt
  br i1 %.not10.i.i.i.i.i355, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i360, label %.lr.ph.i.i.i.i.i356.preheader

.lr.ph.i.i.i.i.i356.preheader:                    ; preds = %.noexc365
  %i.ur = ptrtoaddr ptr %i.um to i64
  %45 = add i64 %i.uc, -8
  %46 = sub i64 %45, %i.ud                        ; 2 uses
  %i.us = lshr i64 %46, 3
  %i.ut = add nuw nsw i64 %i.us, 1                ; 2 uses
  %min.iters.check997 = icmp ult i64 %46, 24
  %i.uu = sub i64 %i.ur, %i.ud
  %diff.check995 = icmp ult i64 %i.uu, 32
  %or.cond1090 = or i1 %min.iters.check997, %diff.check995
  br i1 %or.cond1090, label %.lr.ph.i.i.i.i.i356.preheader1104, label %vector.ph998

vector.ph998:                                     ; preds = %.lr.ph.i.i.i.i.i356.preheader
  %n.vec1000 = and i64 %i.ut, 4611686018427387900 ; 3 uses
  %i.uv = shl i64 %n.vec1000, 3                   ; 2 uses
  %i.uw = getelementptr i8, ptr %i.um, i64 %i.uv  ; 2 uses
  %i.ux = getelementptr i8, ptr %i.ub, i64 %i.uv
  br label %vector.body1001

vector.body1001:                                  ; preds = %vector.body1001, %vector.ph998
  %index1002 = phi i64 [ 0, %vector.ph998 ], [ %index.next1007, %vector.body1001 ] ; 2 uses
  %i.uy = shl i64 %index1002, 3                   ; 2 uses
  %next.gep1003 = getelementptr i8, ptr %i.um, i64 %i.uy ; 2 uses
  %next.gep1004 = getelementptr i8, ptr %i.ub, i64 %i.uy ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !79)
  call void @llvm.experimental.noalias.scope.decl(metadata !82)
  %i.uz = getelementptr i8, ptr %next.gep1004, i64 16
  %wide.load1005 = load <2 x i64>, ptr %next.gep1004, align 4, !alias.scope !82, !noalias !79
  %wide.load1006 = load <2 x i64>, ptr %i.uz, align 4, !alias.scope !82, !noalias !79
  %i.va = getelementptr i8, ptr %next.gep1003, i64 16
  store <2 x i64> %wide.load1005, ptr %next.gep1003, align 4, !alias.scope !79, !noalias !82
  store <2 x i64> %wide.load1006, ptr %i.va, align 4, !alias.scope !79, !noalias !82
  %index.next1007 = add nuw i64 %index1002, 4     ; 2 uses
  %i.vb = icmp eq i64 %index.next1007, %n.vec1000
  br i1 %i.vb, label %middle.block1008, label %vector.body1001, !llvm.loop !84

middle.block1008:                                 ; preds = %vector.body1001
  %cmp.n1009 = icmp eq i64 %i.ut, %n.vec1000
  br i1 %cmp.n1009, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i360, label %.lr.ph.i.i.i.i.i356.preheader1104

.lr.ph.i.i.i.i.i356.preheader1104:                ; preds = %.lr.ph.i.i.i.i.i356.preheader, %middle.block1008
  %.012.i.i.i.i.i357.ph = phi ptr [ %i.um, %.lr.ph.i.i.i.i.i356.preheader ], [ %i.uw, %middle.block1008 ]
  %.0911.i.i.i.i.i358.ph = phi ptr [ %i.ub, %.lr.ph.i.i.i.i.i356.preheader ], [ %i.ux, %middle.block1008 ]
  br label %.lr.ph.i.i.i.i.i356

.lr.ph.i.i.i.i.i356:                              ; preds = %.lr.ph.i.i.i.i.i356.preheader1104, %.lr.ph.i.i.i.i.i356
  %.012.i.i.i.i.i357 = phi ptr [ %i.ve, %.lr.ph.i.i.i.i.i356 ], [ %.012.i.i.i.i.i357.ph, %.lr.ph.i.i.i.i.i356.preheader1104 ] ; 2 uses
  %.0911.i.i.i.i.i358 = phi ptr [ %i.vd, %.lr.ph.i.i.i.i.i356 ], [ %.0911.i.i.i.i.i358.ph, %.lr.ph.i.i.i.i.i356.preheader1104 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !79)
  call void @llvm.experimental.noalias.scope.decl(metadata !82)
  %i.vc = load i64, ptr %.0911.i.i.i.i.i358, align 4, !alias.scope !82, !noalias !79
  store i64 %i.vc, ptr %.012.i.i.i.i.i357, align 4, !alias.scope !79, !noalias !82
  %i.vd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i358, i64 8 ; 2 uses
  %i.ve = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i357, i64 8 ; 2 uses
  %.not.i.i.i.i.i359 = icmp eq ptr %i.vd, %i.tt
  br i1 %.not.i.i.i.i.i359, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i360, label %.lr.ph.i.i.i.i.i356, !llvm.loop !85

_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i360: ; preds = %.lr.ph.i.i.i.i.i356, %middle.block1008, %.noexc365
  %.0.lcssa.i.i.i.i.i361 = phi ptr [ %i.um, %.noexc365 ], [ %i.uw, %middle.block1008 ], [ %i.ve, %.lr.ph.i.i.i.i.i356 ]
  %i.vf = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i361, i64 8
  %.not.i34.i.i362 = icmp eq ptr %i.ub, null
  br i1 %.not.i34.i.i362, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRiRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i363, label %bb.bg

bb.bg:                                            ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i360
  call void @_ZdlPvm(ptr noundef nonnull %i.ub, i64 noundef %i.ue) #23
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRiRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i363

_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRiRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i363: ; preds = %bb.bg, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i360
  store ptr %i.um, ptr %i.tq, align 8
  store ptr %i.vf, ptr %i.ts, align 8
  %i.vg = getelementptr inbounds nuw [8 x i8], ptr %i.um, i64 %i.uk
  store ptr %i.vg, ptr %i.tu, align 8
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRiRfEEERS0_DpOT_.exit366

_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRiRfEEERS0_DpOT_.exit366: ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRiRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i363, %bb.be
  %i.vh = getelementptr inbounds nuw i8, ptr %i.fa, i64 12 ; 2 uses
  %i.vi = load ptr, ptr %i.cm, align 8            ; 2 uses
  %.not10.i.i.i.i367 = icmp eq ptr %i.vi, null
  br i1 %.not10.i.i.i.i367, label %.critedge.i378, label %.lr.ph.i.i.i.i368

.lr.ph.i.i.i.i368:                                ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRiRfEEERS0_DpOT_.exit366
  %i.vj = load i32, ptr %i.vh, align 4            ; 2 uses
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bh, %.lr.ph.i.i.i.i368
  %.012.i.i.i.i369 = phi ptr [ %i.vi, %.lr.ph.i.i.i.i368 ], [ %.1.i.i.i.i374, %bb.bh ] ; 4 uses
  %.0811.i.i.i.i370 = phi ptr [ %i.cl, %.lr.ph.i.i.i.i368 ], [ %.19.i.i.i.i371, %bb.bh ] ; 2 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i369, i64 32
  %i.vl = load i32, ptr %i.vk, align 4
  %i.vm = icmp slt i32 %i.vl, %i.vj               ; 3 uses
  %.19.i.i.i.i371 = select i1 %i.vm, ptr %.0811.i.i.i.i370, ptr %.012.i.i.i.i369 ; 5 uses
  %.1.in.v.i.i.i.i372 = select i1 %i.vm, i64 24, i64 16
  %.1.in.i.i.i.i373 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i369, i64 %.1.in.v.i.i.i.i372
  %.1.i.i.i.i374 = load ptr, ptr %.1.in.i.i.i.i373, align 8 ; 2 uses
  %.not.i.i.i.i375 = icmp eq ptr %.1.i.i.i.i374, null
  br i1 %.not.i.i.i.i375, label %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i376, label %bb.bh, !llvm.loop !29

_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i376: ; preds = %bb.bh
  %i.vn = icmp eq ptr %.19.i.i.i.i371, %i.cl
  br i1 %i.vn, label %.critedge.i378, label %bb.bi

bb.bi:                                            ; preds = %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i376
  %.19.i.i.i.i371.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.vm, ptr %.0811.i.i.i.i370, ptr %.012.i.i.i.i369
  %.19.i.i.i.i371.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i371.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.vo = load i32, ptr %.19.i.i.i.i371.sroa.sel.v.sroa.sel.v.sroa.sel, align 4
  %i.vp = icmp slt i32 %i.vj, %i.vo
  br i1 %i.vp, label %.critedge.i378, label %bb.bj

.critedge.i378:                                   ; preds = %bb.bi, %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i376, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRiRfEEERS0_DpOT_.exit366
  %.08.lcssa.i.i.i11.i379 = phi ptr [ %.19.i.i.i.i371, %bb.bi ], [ %.19.i.i.i.i371, %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i376 ], [ %i.cl, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRiRfEEERS0_DpOT_.exit366 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  store ptr %i.vh, ptr %12, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  %i.vq = invoke ptr @_ZNSt8_Rb_treeIiSt4pairIKiSt6vectorI14aiVertexWeightSaIS3_EEESt10_Select1stIS6_ESt4lessIiESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %30, ptr %.08.lcssa.i.i.i11.i379, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %.noexc380 unwind label %.loopexit576

.noexc380:                                        ; preds = %.critedge.i378
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br label %bb.bj

bb.bj:                                            ; preds = %.noexc380, %bb.bi
  %.sroa.06.0.i377 = phi ptr [ %i.vq, %.noexc380 ], [ %.19.i.i.i.i371, %bb.bi ] ; 3 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i377, i64 40 ; 2 uses
  %i.vs = load float, ptr %i.tr, align 8
  %i.vt = fsub float 1.000000e+00, %i.vs          ; 2 uses
  %i.vu = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i377, i64 48 ; 4 uses
  %i.vv = load ptr, ptr %i.vu, align 8            ; 6 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i377, i64 56 ; 2 uses
  %i.vx = load ptr, ptr %i.vw, align 8
  %.not.i382 = icmp eq ptr %i.vv, %i.vx
  br i1 %.not.i382, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.vy = trunc nuw nsw i64 %indvars.iv705 to i32
  store i32 %i.vy, ptr %i.vv, align 4
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vv, i64 4
  store float %i.vt, ptr %i.vz, align 4
  %i.wa = load ptr, ptr %i.vu, align 8
  %i.wb = getelementptr inbounds nuw i8, ptr %i.wa, i64 8
  store ptr %i.wb, ptr %i.vu, align 8
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRifEEERS0_DpOT_.exit

bb.bl:                                            ; preds = %bb.bj
  %i.wc = load ptr, ptr %i.vr, align 8            ; 7 uses
  %i.wd = ptrtoint ptr %i.vv to i64               ; 2 uses
  %i.we = ptrtoint ptr %i.wc to i64               ; 3 uses
  %i.wf = sub i64 %i.wd, %i.we                    ; 4 uses
  %i.wg = icmp eq i64 %i.wf, 9223372036854775800
  br i1 %i.wg, label %bb.bm, label %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i383

bb.bm:                                            ; preds = %bb.bl
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #24
          to label %.noexc395 unwind label %.loopexit.split-lp582

.noexc395:                                        ; preds = %bb.bm
  unreachable

_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i383: ; preds = %bb.bl
  %i.wh = ashr exact i64 %i.wf, 3                 ; 3 uses
  %.sroa.speculated.i.i.i384 = call i64 @llvm.umax.i64(i64 %i.wh, i64 1)
  %i.wi = add nsw i64 %.sroa.speculated.i.i.i384, %i.wh ; 2 uses
  %i.wj = icmp ult i64 %i.wi, %i.wh
  %i.wk = call i64 @llvm.umin.i64(i64 %i.wi, i64 1152921504606846975)
  %i.wl = select i1 %i.wj, i64 1152921504606846975, i64 %i.wk ; 3 uses
  %.not.i.i.i385 = icmp ne i64 %i.wl, 0
  call void @llvm.assume(i1 %.not.i.i.i385)
  %i.wm = shl nuw nsw i64 %i.wl, 3
  %i.wn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.wm) #25
          to label %.noexc396 unwind label %.loopexit581 ; 8 uses

.noexc396:                                        ; preds = %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i383
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wn, i64 %i.wf ; 2 uses
  %i.wp = trunc nuw nsw i64 %indvars.iv705 to i32
  store i32 %i.wp, ptr %i.wo, align 4
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wo, i64 4
  store float %i.vt, ptr %i.wq, align 4
  %.not10.i.i.i.i.i386 = icmp eq ptr %i.wc, %i.vv
  br i1 %.not10.i.i.i.i.i386, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i391, label %.lr.ph.i.i.i.i.i387.preheader

.lr.ph.i.i.i.i.i387.preheader:                    ; preds = %.noexc396
  %i.wr = ptrtoaddr ptr %i.wn to i64
  %47 = add i64 %i.wd, -8
  %48 = sub i64 %47, %i.we                        ; 2 uses
  %i.ws = lshr i64 %48, 3
  %i.wt = add nuw nsw i64 %i.ws, 1                ; 2 uses
  %min.iters.check979 = icmp ult i64 %48, 24
  %i.wu = sub i64 %i.wr, %i.we
  %diff.check977 = icmp ult i64 %i.wu, 32
  %or.cond1091 = or i1 %min.iters.check979, %diff.check977
  br i1 %or.cond1091, label %.lr.ph.i.i.i.i.i387.preheader1103, label %vector.ph980

vector.ph980:                                     ; preds = %.lr.ph.i.i.i.i.i387.preheader
  %n.vec982 = and i64 %i.wt, 4611686018427387900  ; 3 uses
  %i.wv = shl i64 %n.vec982, 3                    ; 2 uses
  %i.ww = getelementptr i8, ptr %i.wn, i64 %i.wv  ; 2 uses
  %i.wx = getelementptr i8, ptr %i.wc, i64 %i.wv
  br label %vector.body983

vector.body983:                                   ; preds = %vector.body983, %vector.ph980
  %index984 = phi i64 [ 0, %vector.ph980 ], [ %index.next989, %vector.body983 ] ; 2 uses
  %i.wy = shl i64 %index984, 3                    ; 2 uses
  %next.gep985 = getelementptr i8, ptr %i.wn, i64 %i.wy ; 2 uses
  %next.gep986 = getelementptr i8, ptr %i.wc, i64 %i.wy ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !86)
  call void @llvm.experimental.noalias.scope.decl(metadata !89)
  %i.wz = getelementptr i8, ptr %next.gep986, i64 16
  %wide.load987 = load <2 x i64>, ptr %next.gep986, align 4, !alias.scope !89, !noalias !86
  %wide.load988 = load <2 x i64>, ptr %i.wz, align 4, !alias.scope !89, !noalias !86
  %i.xa = getelementptr i8, ptr %next.gep985, i64 16
  store <2 x i64> %wide.load987, ptr %next.gep985, align 4, !alias.scope !86, !noalias !89
  store <2 x i64> %wide.load988, ptr %i.xa, align 4, !alias.scope !86, !noalias !89
  %index.next989 = add nuw i64 %index984, 4       ; 2 uses
  %i.xb = icmp eq i64 %index.next989, %n.vec982
  br i1 %i.xb, label %middle.block990, label %vector.body983, !llvm.loop !91

middle.block990:                                  ; preds = %vector.body983
  %cmp.n991 = icmp eq i64 %i.wt, %n.vec982
  br i1 %cmp.n991, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i391, label %.lr.ph.i.i.i.i.i387.preheader1103

.lr.ph.i.i.i.i.i387.preheader1103:                ; preds = %.lr.ph.i.i.i.i.i387.preheader, %middle.block990
  %.012.i.i.i.i.i388.ph = phi ptr [ %i.wn, %.lr.ph.i.i.i.i.i387.preheader ], [ %i.ww, %middle.block990 ]
  %.0911.i.i.i.i.i389.ph = phi ptr [ %i.wc, %.lr.ph.i.i.i.i.i387.preheader ], [ %i.wx, %middle.block990 ]
  br label %.lr.ph.i.i.i.i.i387

.lr.ph.i.i.i.i.i387:                              ; preds = %.lr.ph.i.i.i.i.i387.preheader1103, %.lr.ph.i.i.i.i.i387
  %.012.i.i.i.i.i388 = phi ptr [ %i.xe, %.lr.ph.i.i.i.i.i387 ], [ %.012.i.i.i.i.i388.ph, %.lr.ph.i.i.i.i.i387.preheader1103 ] ; 2 uses
  %.0911.i.i.i.i.i389 = phi ptr [ %i.xd, %.lr.ph.i.i.i.i.i387 ], [ %.0911.i.i.i.i.i389.ph, %.lr.ph.i.i.i.i.i387.preheader1103 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !86)
  call void @llvm.experimental.noalias.scope.decl(metadata !89)
  %i.xc = load i64, ptr %.0911.i.i.i.i.i389, align 4, !alias.scope !89, !noalias !86
  store i64 %i.xc, ptr %.012.i.i.i.i.i388, align 4, !alias.scope !86, !noalias !89
  %i.xd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i389, i64 8 ; 2 uses
  %i.xe = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i388, i64 8 ; 2 uses
  %.not.i.i.i.i.i390 = icmp eq ptr %i.xd, %i.vv
  br i1 %.not.i.i.i.i.i390, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i391, label %.lr.ph.i.i.i.i.i387, !llvm.loop !92

_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i391: ; preds = %.lr.ph.i.i.i.i.i387, %middle.block990, %.noexc396
  %.0.lcssa.i.i.i.i.i392 = phi ptr [ %i.wn, %.noexc396 ], [ %i.ww, %middle.block990 ], [ %i.xe, %.lr.ph.i.i.i.i.i387 ]
  %i.xf = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i392, i64 8
  %.not.i34.i.i393 = icmp eq ptr %i.wc, null
  br i1 %.not.i34.i.i393, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRifEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i394, label %bb.bn

bb.bn:                                            ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i391
  call void @_ZdlPvm(ptr noundef nonnull %i.wc, i64 noundef %i.wf) #23
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRifEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i394

_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRifEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i394: ; preds = %bb.bn, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i391
  store ptr %i.wn, ptr %i.vr, align 8
  store ptr %i.xf, ptr %i.vu, align 8
  %i.xg = getelementptr inbounds nuw [8 x i8], ptr %i.wn, i64 %i.wl
  store ptr %i.xg, ptr %i.vw, align 8
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRifEEERS0_DpOT_.exit

.loopexit581:                                     ; preds = %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i383
  %lpad.loopexit583 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

.loopexit.split-lp582:                            ; preds = %bb.bm
  %lpad.loopexit.split-lp584 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

bb.bo:                                            ; preds = %.thread571
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ei) ]
  %i.xh = call ptr @__dynamic_cast(ptr nonnull %i.ei, ptr nonnull @_ZTIN3pmx17PmxVertexSkinningE, ptr nonnull @_ZTIN3pmx21PmxVertexSkinningQDEFE, i64 0) #22 ; 8 uses
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xh, i64 8 ; 2 uses
  %i.xj = load ptr, ptr %i.cm, align 8            ; 2 uses
  %.not10.i.i.i.i398 = icmp eq ptr %i.xj, null
  br i1 %.not10.i.i.i.i398, label %.critedge.i409, label %.lr.ph.i.i.i.i399

.lr.ph.i.i.i.i399:                                ; preds = %bb.bo
  %i.xk = load i32, ptr %i.xi, align 4            ; 2 uses
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bp, %.lr.ph.i.i.i.i399
  %.012.i.i.i.i400 = phi ptr [ %i.xj, %.lr.ph.i.i.i.i399 ], [ %.1.i.i.i.i405, %bb.bp ] ; 4 uses
  %.0811.i.i.i.i401 = phi ptr [ %i.cl, %.lr.ph.i.i.i.i399 ], [ %.19.i.i.i.i402, %bb.bp ] ; 2 uses
  %i.xl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i400, i64 32
  %i.xm = load i32, ptr %i.xl, align 4
  %i.xn = icmp slt i32 %i.xm, %i.xk               ; 3 uses
  %.19.i.i.i.i402 = select i1 %i.xn, ptr %.0811.i.i.i.i401, ptr %.012.i.i.i.i400 ; 5 uses
  %.1.in.v.i.i.i.i403 = select i1 %i.xn, i64 24, i64 16
  %.1.in.i.i.i.i404 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i400, i64 %.1.in.v.i.i.i.i403
  %.1.i.i.i.i405 = load ptr, ptr %.1.in.i.i.i.i404, align 8 ; 2 uses
  %.not.i.i.i.i406 = icmp eq ptr %.1.i.i.i.i405, null
  br i1 %.not.i.i.i.i406, label %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i407, label %bb.bp, !llvm.loop !29

_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i407: ; preds = %bb.bp
  %i.xo = icmp eq ptr %.19.i.i.i.i402, %i.cl
  br i1 %i.xo, label %.critedge.i409, label %bb.bq

bb.bq:                                            ; preds = %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i407
  %.19.i.i.i.i402.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.xn, ptr %.0811.i.i.i.i401, ptr %.012.i.i.i.i400
  %.19.i.i.i.i402.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i402.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.xp = load i32, ptr %.19.i.i.i.i402.sroa.sel.v.sroa.sel.v.sroa.sel, align 4
  %i.xq = icmp slt i32 %i.xk, %i.xp
  br i1 %i.xq, label %.critedge.i409, label %bb.br

.critedge.i409:                                   ; preds = %bb.bq, %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i407, %bb.bo
  %.08.lcssa.i.i.i11.i410 = phi ptr [ %.19.i.i.i.i402, %bb.bq ], [ %.19.i.i.i.i402, %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i407 ], [ %i.cl, %bb.bo ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  store ptr %i.xi, ptr %10, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  %i.xr = invoke ptr @_ZNSt8_Rb_treeIiSt4pairIKiSt6vectorI14aiVertexWeightSaIS3_EEESt10_Select1stIS6_ESt4lessIiESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %30, ptr %.08.lcssa.i.i.i11.i410, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %.noexc411 unwind label %.loopexit575

.noexc411:                                        ; preds = %.critedge.i409
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %bb.br

bb.br:                                            ; preds = %.noexc411, %bb.bq
  %.sroa.06.0.i408 = phi ptr [ %i.xr, %.noexc411 ], [ %.19.i.i.i.i402, %bb.bq ] ; 3 uses
  %i.xs = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i408, i64 40 ; 2 uses
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xh, i64 24 ; 2 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i408, i64 48 ; 4 uses
  %i.xv = load ptr, ptr %i.xu, align 8            ; 6 uses
  %i.xw = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i408, i64 56 ; 2 uses
  %i.xx = load ptr, ptr %i.xw, align 8
  %.not.i413 = icmp eq ptr %i.xv, %i.xx
  br i1 %.not.i413, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.xy = load float, ptr %i.xt, align 4
  %i.xz = trunc nuw nsw i64 %indvars.iv705 to i32
  store i32 %i.xz, ptr %i.xv, align 4
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xv, i64 4
  store float %i.xy, ptr %i.ya, align 4
  %i.yb = load ptr, ptr %i.xu, align 8
  %i.yc = getelementptr inbounds nuw i8, ptr %i.yb, i64 8
  store ptr %i.yc, ptr %i.xu, align 8
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRiRfEEERS0_DpOT_.exit428

bb.bt:                                            ; preds = %bb.br
  %i.yd = load ptr, ptr %i.xs, align 8            ; 7 uses
  %i.ye = ptrtoint ptr %i.xv to i64               ; 2 uses
  %i.yf = ptrtoint ptr %i.yd to i64               ; 3 uses
  %i.yg = sub i64 %i.ye, %i.yf                    ; 4 uses
  %i.yh = icmp eq i64 %i.yg, 9223372036854775800
  br i1 %i.yh, label %.invoke836, label %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i414

.invoke836:                                       ; preds = %bb.cl, %bb.cf, %bb.bz, %bb.bt
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #24
          to label %.cont837 unwind label %.loopexit.split-lp

.cont837:                                         ; preds = %.invoke836
  unreachable

_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i414: ; preds = %bb.bt
  %i.yi = ashr exact i64 %i.yg, 3                 ; 3 uses
  %.sroa.speculated.i.i.i415 = call i64 @llvm.umax.i64(i64 %i.yi, i64 1)
  %i.yj = add nsw i64 %.sroa.speculated.i.i.i415, %i.yi ; 2 uses
  %i.yk = icmp ult i64 %i.yj, %i.yi
  %i.yl = call i64 @llvm.umin.i64(i64 %i.yj, i64 1152921504606846975)
  %i.ym = select i1 %i.yk, i64 1152921504606846975, i64 %i.yl ; 3 uses
  %.not.i.i.i416 = icmp ne i64 %i.ym, 0
  call void @llvm.assume(i1 %.not.i.i.i416)
  %i.yn = shl nuw nsw i64 %i.ym, 3
  %i.yo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.yn) #25
          to label %.noexc427 unwind label %.loopexit575 ; 8 uses

.noexc427:                                        ; preds = %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i414
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yo, i64 %i.yg ; 2 uses
  %i.yq = load float, ptr %i.xt, align 4
  %i.yr = trunc nuw nsw i64 %indvars.iv705 to i32
  store i32 %i.yr, ptr %i.yp, align 4
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yp, i64 4
  store float %i.yq, ptr %i.ys, align 4
  %.not10.i.i.i.i.i417 = icmp eq ptr %i.yd, %i.xv
  br i1 %.not10.i.i.i.i.i417, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i422, label %.lr.ph.i.i.i.i.i418.preheader

.lr.ph.i.i.i.i.i418.preheader:                    ; preds = %.noexc427
  %i.yt = ptrtoaddr ptr %i.yo to i64
  %49 = add i64 %i.ye, -8
  %50 = sub i64 %49, %i.yf                        ; 2 uses
  %i.yu = lshr i64 %50, 3
  %i.yv = add nuw nsw i64 %i.yu, 1                ; 2 uses
  %min.iters.check1069 = icmp ult i64 %50, 24
  %i.yw = sub i64 %i.yt, %i.yf
  %diff.check1067 = icmp ult i64 %i.yw, 32
  %or.cond1092 = or i1 %min.iters.check1069, %diff.check1067
  br i1 %or.cond1092, label %.lr.ph.i.i.i.i.i418.preheader1108, label %vector.ph1070

vector.ph1070:                                    ; preds = %.lr.ph.i.i.i.i.i418.preheader
  %n.vec1072 = and i64 %i.yv, 4611686018427387900 ; 3 uses
  %i.yx = shl i64 %n.vec1072, 3                   ; 2 uses
  %i.yy = getelementptr i8, ptr %i.yo, i64 %i.yx  ; 2 uses
  %i.yz = getelementptr i8, ptr %i.yd, i64 %i.yx
  br label %vector.body1073

vector.body1073:                                  ; preds = %vector.body1073, %vector.ph1070
  %index1074 = phi i64 [ 0, %vector.ph1070 ], [ %index.next1079, %vector.body1073 ] ; 2 uses
  %i.za = shl i64 %index1074, 3                   ; 2 uses
  %next.gep1075 = getelementptr i8, ptr %i.yo, i64 %i.za ; 2 uses
  %next.gep1076 = getelementptr i8, ptr %i.yd, i64 %i.za ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !93)
  call void @llvm.experimental.noalias.scope.decl(metadata !96)
  %i.zb = getelementptr i8, ptr %next.gep1076, i64 16
  %wide.load1077 = load <2 x i64>, ptr %next.gep1076, align 4, !alias.scope !96, !noalias !93
  %wide.load1078 = load <2 x i64>, ptr %i.zb, align 4, !alias.scope !96, !noalias !93
  %i.zc = getelementptr i8, ptr %next.gep1075, i64 16
  store <2 x i64> %wide.load1077, ptr %next.gep1075, align 4, !alias.scope !93, !noalias !96
  store <2 x i64> %wide.load1078, ptr %i.zc, align 4, !alias.scope !93, !noalias !96
  %index.next1079 = add nuw i64 %index1074, 4     ; 2 uses
  %i.zd = icmp eq i64 %index.next1079, %n.vec1072
  br i1 %i.zd, label %middle.block1080, label %vector.body1073, !llvm.loop !98

middle.block1080:                                 ; preds = %vector.body1073
  %cmp.n1081 = icmp eq i64 %i.yv, %n.vec1072
  br i1 %cmp.n1081, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i422, label %.lr.ph.i.i.i.i.i418.preheader1108

.lr.ph.i.i.i.i.i418.preheader1108:                ; preds = %.lr.ph.i.i.i.i.i418.preheader, %middle.block1080
  %.012.i.i.i.i.i419.ph = phi ptr [ %i.yo, %.lr.ph.i.i.i.i.i418.preheader ], [ %i.yy, %middle.block1080 ]
  %.0911.i.i.i.i.i420.ph = phi ptr [ %i.yd, %.lr.ph.i.i.i.i.i418.preheader ], [ %i.yz, %middle.block1080 ]
  br label %.lr.ph.i.i.i.i.i418

.lr.ph.i.i.i.i.i418:                              ; preds = %.lr.ph.i.i.i.i.i418.preheader1108, %.lr.ph.i.i.i.i.i418
  %.012.i.i.i.i.i419 = phi ptr [ %i.zg, %.lr.ph.i.i.i.i.i418 ], [ %.012.i.i.i.i.i419.ph, %.lr.ph.i.i.i.i.i418.preheader1108 ] ; 2 uses
  %.0911.i.i.i.i.i420 = phi ptr [ %i.zf, %.lr.ph.i.i.i.i.i418 ], [ %.0911.i.i.i.i.i420.ph, %.lr.ph.i.i.i.i.i418.preheader1108 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !93)
  call void @llvm.experimental.noalias.scope.decl(metadata !96)
  %i.ze = load i64, ptr %.0911.i.i.i.i.i420, align 4, !alias.scope !96, !noalias !93
  store i64 %i.ze, ptr %.012.i.i.i.i.i419, align 4, !alias.scope !93, !noalias !96
  %i.zf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i420, i64 8 ; 2 uses
  %i.zg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i419, i64 8 ; 2 uses
  %.not.i.i.i.i.i421 = icmp eq ptr %i.zf, %i.xv
  br i1 %.not.i.i.i.i.i421, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i422, label %.lr.ph.i.i.i.i.i418, !llvm.loop !99

_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i422: ; preds = %.lr.ph.i.i.i.i.i418, %middle.block1080, %.noexc427
  %.0.lcssa.i.i.i.i.i423 = phi ptr [ %i.yo, %.noexc427 ], [ %i.yy, %middle.block1080 ], [ %i.zg, %.lr.ph.i.i.i.i.i418 ]
  %i.zh = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i423, i64 8
  %.not.i34.i.i424 = icmp eq ptr %i.yd, null
  br i1 %.not.i34.i.i424, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRiRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i425, label %bb.bu

bb.bu:                                            ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i422
  call void @_ZdlPvm(ptr noundef nonnull %i.yd, i64 noundef %i.yg) #23
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRiRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i425

_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRiRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i425: ; preds = %bb.bu, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i422
  store ptr %i.yo, ptr %i.xs, align 8
  store ptr %i.zh, ptr %i.xu, align 8
  %i.zi = getelementptr inbounds nuw [8 x i8], ptr %i.yo, i64 %i.ym
  store ptr %i.zi, ptr %i.xw, align 8
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRiRfEEERS0_DpOT_.exit428

_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRiRfEEERS0_DpOT_.exit428: ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRiRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i425, %bb.bs
  %i.zj = getelementptr inbounds nuw i8, ptr %i.xh, i64 12 ; 2 uses
  %i.zk = load ptr, ptr %i.cm, align 8            ; 2 uses
  %.not10.i.i.i.i429 = icmp eq ptr %i.zk, null
  br i1 %.not10.i.i.i.i429, label %.critedge.i440, label %.lr.ph.i.i.i.i430

.lr.ph.i.i.i.i430:                                ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRiRfEEERS0_DpOT_.exit428
  %i.zl = load i32, ptr %i.zj, align 4            ; 2 uses
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bv, %.lr.ph.i.i.i.i430
  %.012.i.i.i.i431 = phi ptr [ %i.zk, %.lr.ph.i.i.i.i430 ], [ %.1.i.i.i.i436, %bb.bv ] ; 4 uses
  %.0811.i.i.i.i432 = phi ptr [ %i.cl, %.lr.ph.i.i.i.i430 ], [ %.19.i.i.i.i433, %bb.bv ] ; 2 uses
  %i.zm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i431, i64 32
  %i.zn = load i32, ptr %i.zm, align 4
  %i.zo = icmp slt i32 %i.zn, %i.zl               ; 3 uses
  %.19.i.i.i.i433 = select i1 %i.zo, ptr %.0811.i.i.i.i432, ptr %.012.i.i.i.i431 ; 5 uses
  %.1.in.v.i.i.i.i434 = select i1 %i.zo, i64 24, i64 16
  %.1.in.i.i.i.i435 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i431, i64 %.1.in.v.i.i.i.i434
  %.1.i.i.i.i436 = load ptr, ptr %.1.in.i.i.i.i435, align 8 ; 2 uses
  %.not.i.i.i.i437 = icmp eq ptr %.1.i.i.i.i436, null
  br i1 %.not.i.i.i.i437, label %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i438, label %bb.bv, !llvm.loop !29

_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i438: ; preds = %bb.bv
  %i.zp = icmp eq ptr %.19.i.i.i.i433, %i.cl
  br i1 %i.zp, label %.critedge.i440, label %bb.bw

bb.bw:                                            ; preds = %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i438
  %.19.i.i.i.i433.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.zo, ptr %.0811.i.i.i.i432, ptr %.012.i.i.i.i431
  %.19.i.i.i.i433.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i433.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.zq = load i32, ptr %.19.i.i.i.i433.sroa.sel.v.sroa.sel.v.sroa.sel, align 4
  %i.zr = icmp slt i32 %i.zl, %i.zq
  br i1 %i.zr, label %.critedge.i440, label %bb.bx

.critedge.i440:                                   ; preds = %bb.bw, %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i438, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRiRfEEERS0_DpOT_.exit428
  %.08.lcssa.i.i.i11.i441 = phi ptr [ %.19.i.i.i.i433, %bb.bw ], [ %.19.i.i.i.i433, %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i438 ], [ %i.cl, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRiRfEEERS0_DpOT_.exit428 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  store ptr %i.zj, ptr %8, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.zs = invoke ptr @_ZNSt8_Rb_treeIiSt4pairIKiSt6vectorI14aiVertexWeightSaIS3_EEESt10_Select1stIS6_ESt4lessIiESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %30, ptr %.08.lcssa.i.i.i11.i441, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %.noexc442 unwind label %.loopexit575

.noexc442:                                        ; preds = %.critedge.i440
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.bx

bb.bx:                                            ; preds = %.noexc442, %bb.bw
  %.sroa.06.0.i439 = phi ptr [ %i.zs, %.noexc442 ], [ %.19.i.i.i.i433, %bb.bw ] ; 3 uses
  %i.zt = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i439, i64 40 ; 2 uses
  %i.zu = getelementptr inbounds nuw i8, ptr %i.xh, i64 28 ; 2 uses
  %i.zv = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i439, i64 48 ; 4 uses
  %i.zw = load ptr, ptr %i.zv, align 8            ; 6 uses
  %i.zx = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i439, i64 56 ; 2 uses
  %i.zy = load ptr, ptr %i.zx, align 8
  %.not.i444 = icmp eq ptr %i.zw, %i.zy
  br i1 %.not.i444, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.zz = load float, ptr %i.zu, align 4
  %i.aaa = trunc nuw nsw i64 %indvars.iv705 to i32
  store i32 %i.aaa, ptr %i.zw, align 4
  %i.aab = getelementptr inbounds nuw i8, ptr %i.zw, i64 4
  store float %i.zz, ptr %i.aab, align 4
  %i.aac = load ptr, ptr %i.zv, align 8
  %i.aad = getelementptr inbounds nuw i8, ptr %i.aac, i64 8
  store ptr %i.aad, ptr %i.zv, align 8
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRiRfEEERS0_DpOT_.exit459

bb.bz:                                            ; preds = %bb.bx
  %i.aae = load ptr, ptr %i.zt, align 8           ; 7 uses
  %i.aaf = ptrtoint ptr %i.zw to i64              ; 2 uses
  %i.aag = ptrtoint ptr %i.aae to i64             ; 3 uses
  %i.aah = sub i64 %i.aaf, %i.aag                 ; 4 uses
  %i.aai = icmp eq i64 %i.aah, 9223372036854775800
  br i1 %i.aai, label %.invoke836, label %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i445

_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i445: ; preds = %bb.bz
  %i.aaj = ashr exact i64 %i.aah, 3               ; 3 uses
  %.sroa.speculated.i.i.i446 = call i64 @llvm.umax.i64(i64 %i.aaj, i64 1)
  %i.aak = add nsw i64 %.sroa.speculated.i.i.i446, %i.aaj ; 2 uses
  %i.aal = icmp ult i64 %i.aak, %i.aaj
  %i.aam = call i64 @llvm.umin.i64(i64 %i.aak, i64 1152921504606846975)
  %i.aan = select i1 %i.aal, i64 1152921504606846975, i64 %i.aam ; 3 uses
  %.not.i.i.i447 = icmp ne i64 %i.aan, 0
  call void @llvm.assume(i1 %.not.i.i.i447)
  %i.aao = shl nuw nsw i64 %i.aan, 3
  %i.aap = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aao) #25
          to label %.noexc458 unwind label %.loopexit575 ; 8 uses

.noexc458:                                        ; preds = %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i445
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aap, i64 %i.aah ; 2 uses
  %i.aar = load float, ptr %i.zu, align 4
  %i.aas = trunc nuw nsw i64 %indvars.iv705 to i32
  store i32 %i.aas, ptr %i.aaq, align 4
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aaq, i64 4
  store float %i.aar, ptr %i.aat, align 4
  %.not10.i.i.i.i.i448 = icmp eq ptr %i.aae, %i.zw
  br i1 %.not10.i.i.i.i.i448, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i453, label %.lr.ph.i.i.i.i.i449.preheader

.lr.ph.i.i.i.i.i449.preheader:                    ; preds = %.noexc458
  %i.aau = ptrtoaddr ptr %i.aap to i64
  %51 = add i64 %i.aaf, -8
  %52 = sub i64 %51, %i.aag                       ; 2 uses
  %i.aav = lshr i64 %52, 3
  %i.aaw = add nuw nsw i64 %i.aav, 1              ; 2 uses
  %min.iters.check1051 = icmp ult i64 %52, 24
  %i.aax = sub i64 %i.aau, %i.aag
  %diff.check1049 = icmp ult i64 %i.aax, 32
  %or.cond1093 = or i1 %min.iters.check1051, %diff.check1049
  br i1 %or.cond1093, label %.lr.ph.i.i.i.i.i449.preheader1107, label %vector.ph1052

vector.ph1052:                                    ; preds = %.lr.ph.i.i.i.i.i449.preheader
  %n.vec1054 = and i64 %i.aaw, 4611686018427387900 ; 3 uses
  %i.aay = shl i64 %n.vec1054, 3                  ; 2 uses
  %i.aaz = getelementptr i8, ptr %i.aap, i64 %i.aay ; 2 uses
  %i.aba = getelementptr i8, ptr %i.aae, i64 %i.aay
  br label %vector.body1055

vector.body1055:                                  ; preds = %vector.body1055, %vector.ph1052
  %index1056 = phi i64 [ 0, %vector.ph1052 ], [ %index.next1061, %vector.body1055 ] ; 2 uses
  %i.abb = shl i64 %index1056, 3                  ; 2 uses
  %next.gep1057 = getelementptr i8, ptr %i.aap, i64 %i.abb ; 2 uses
  %next.gep1058 = getelementptr i8, ptr %i.aae, i64 %i.abb ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !100)
  call void @llvm.experimental.noalias.scope.decl(metadata !103)
  %i.abc = getelementptr i8, ptr %next.gep1058, i64 16
  %wide.load1059 = load <2 x i64>, ptr %next.gep1058, align 4, !alias.scope !103, !noalias !100
  %wide.load1060 = load <2 x i64>, ptr %i.abc, align 4, !alias.scope !103, !noalias !100
  %i.abd = getelementptr i8, ptr %next.gep1057, i64 16
  store <2 x i64> %wide.load1059, ptr %next.gep1057, align 4, !alias.scope !100, !noalias !103
  store <2 x i64> %wide.load1060, ptr %i.abd, align 4, !alias.scope !100, !noalias !103
  %index.next1061 = add nuw i64 %index1056, 4     ; 2 uses
  %i.abe = icmp eq i64 %index.next1061, %n.vec1054
  br i1 %i.abe, label %middle.block1062, label %vector.body1055, !llvm.loop !105

middle.block1062:                                 ; preds = %vector.body1055
  %cmp.n1063 = icmp eq i64 %i.aaw, %n.vec1054
  br i1 %cmp.n1063, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i453, label %.lr.ph.i.i.i.i.i449.preheader1107

.lr.ph.i.i.i.i.i449.preheader1107:                ; preds = %.lr.ph.i.i.i.i.i449.preheader, %middle.block1062
  %.012.i.i.i.i.i450.ph = phi ptr [ %i.aap, %.lr.ph.i.i.i.i.i449.preheader ], [ %i.aaz, %middle.block1062 ]
  %.0911.i.i.i.i.i451.ph = phi ptr [ %i.aae, %.lr.ph.i.i.i.i.i449.preheader ], [ %i.aba, %middle.block1062 ]
  br label %.lr.ph.i.i.i.i.i449

.lr.ph.i.i.i.i.i449:                              ; preds = %.lr.ph.i.i.i.i.i449.preheader1107, %.lr.ph.i.i.i.i.i449
  %.012.i.i.i.i.i450 = phi ptr [ %i.abh, %.lr.ph.i.i.i.i.i449 ], [ %.012.i.i.i.i.i450.ph, %.lr.ph.i.i.i.i.i449.preheader1107 ] ; 2 uses
  %.0911.i.i.i.i.i451 = phi ptr [ %i.abg, %.lr.ph.i.i.i.i.i449 ], [ %.0911.i.i.i.i.i451.ph, %.lr.ph.i.i.i.i.i449.preheader1107 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !100)
  call void @llvm.experimental.noalias.scope.decl(metadata !103)
  %i.abf = load i64, ptr %.0911.i.i.i.i.i451, align 4, !alias.scope !103, !noalias !100
  store i64 %i.abf, ptr %.012.i.i.i.i.i450, align 4, !alias.scope !100, !noalias !103
  %i.abg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i451, i64 8 ; 2 uses
  %i.abh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i450, i64 8 ; 2 uses
  %.not.i.i.i.i.i452 = icmp eq ptr %i.abg, %i.zw
  br i1 %.not.i.i.i.i.i452, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i453, label %.lr.ph.i.i.i.i.i449, !llvm.loop !106

_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i453: ; preds = %.lr.ph.i.i.i.i.i449, %middle.block1062, %.noexc458
  %.0.lcssa.i.i.i.i.i454 = phi ptr [ %i.aap, %.noexc458 ], [ %i.aaz, %middle.block1062 ], [ %i.abh, %.lr.ph.i.i.i.i.i449 ]
  %i.abi = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i454, i64 8
  %.not.i34.i.i455 = icmp eq ptr %i.aae, null
  br i1 %.not.i34.i.i455, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRiRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i456, label %bb.ca

bb.ca:                                            ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i453
  call void @_ZdlPvm(ptr noundef nonnull %i.aae, i64 noundef %i.aah) #23
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRiRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i456

_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRiRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i456: ; preds = %bb.ca, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i453
  store ptr %i.aap, ptr %i.zt, align 8
  store ptr %i.abi, ptr %i.zv, align 8
  %i.abj = getelementptr inbounds nuw [8 x i8], ptr %i.aap, i64 %i.aan
  store ptr %i.abj, ptr %i.zx, align 8
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRiRfEEERS0_DpOT_.exit459

_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRiRfEEERS0_DpOT_.exit459: ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRiRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i456, %bb.by
  %i.abk = getelementptr inbounds nuw i8, ptr %i.xh, i64 16 ; 2 uses
  %i.abl = load ptr, ptr %i.cm, align 8           ; 2 uses
  %.not10.i.i.i.i460 = icmp eq ptr %i.abl, null
  br i1 %.not10.i.i.i.i460, label %.critedge.i471, label %.lr.ph.i.i.i.i461

.lr.ph.i.i.i.i461:                                ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRiRfEEERS0_DpOT_.exit459
  %i.abm = load i32, ptr %i.abk, align 4          ; 2 uses
  br label %bb.cb

bb.cb:                                            ; preds = %bb.cb, %.lr.ph.i.i.i.i461
  %.012.i.i.i.i462 = phi ptr [ %i.abl, %.lr.ph.i.i.i.i461 ], [ %.1.i.i.i.i467, %bb.cb ] ; 4 uses
  %.0811.i.i.i.i463 = phi ptr [ %i.cl, %.lr.ph.i.i.i.i461 ], [ %.19.i.i.i.i464, %bb.cb ] ; 2 uses
  %i.abn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i462, i64 32
  %i.abo = load i32, ptr %i.abn, align 4
  %i.abp = icmp slt i32 %i.abo, %i.abm            ; 3 uses
  %.19.i.i.i.i464 = select i1 %i.abp, ptr %.0811.i.i.i.i463, ptr %.012.i.i.i.i462 ; 5 uses
  %.1.in.v.i.i.i.i465 = select i1 %i.abp, i64 24, i64 16
  %.1.in.i.i.i.i466 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i462, i64 %.1.in.v.i.i.i.i465
  %.1.i.i.i.i467 = load ptr, ptr %.1.in.i.i.i.i466, align 8 ; 2 uses
  %.not.i.i.i.i468 = icmp eq ptr %.1.i.i.i.i467, null
  br i1 %.not.i.i.i.i468, label %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i469, label %bb.cb, !llvm.loop !29

_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i469: ; preds = %bb.cb
  %i.abq = icmp eq ptr %.19.i.i.i.i464, %i.cl
  br i1 %i.abq, label %.critedge.i471, label %bb.cc

bb.cc:                                            ; preds = %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i469
  %.19.i.i.i.i464.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.abp, ptr %.0811.i.i.i.i463, ptr %.012.i.i.i.i462
  %.19.i.i.i.i464.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i464.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.abr = load i32, ptr %.19.i.i.i.i464.sroa.sel.v.sroa.sel.v.sroa.sel, align 4
  %i.abs = icmp slt i32 %i.abm, %i.abr
  br i1 %i.abs, label %.critedge.i471, label %bb.cd

.critedge.i471:                                   ; preds = %bb.cc, %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i469, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRiRfEEERS0_DpOT_.exit459
  %.08.lcssa.i.i.i11.i472 = phi ptr [ %.19.i.i.i.i464, %bb.cc ], [ %.19.i.i.i.i464, %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i469 ], [ %i.cl, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRiRfEEERS0_DpOT_.exit459 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  store ptr %i.abk, ptr %6, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.abt = invoke ptr @_ZNSt8_Rb_treeIiSt4pairIKiSt6vectorI14aiVertexWeightSaIS3_EEESt10_Select1stIS6_ESt4lessIiESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %30, ptr %.08.lcssa.i.i.i11.i472, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %.noexc473 unwind label %.loopexit575

.noexc473:                                        ; preds = %.critedge.i471
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.cd

bb.cd:                                            ; preds = %.noexc473, %bb.cc
  %.sroa.06.0.i470 = phi ptr [ %i.abt, %.noexc473 ], [ %.19.i.i.i.i464, %bb.cc ] ; 3 uses
  %i.abu = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i470, i64 40 ; 2 uses
  %i.abv = getelementptr inbounds nuw i8, ptr %i.xh, i64 32 ; 2 uses
  %i.abw = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i470, i64 48 ; 4 uses
  %i.abx = load ptr, ptr %i.abw, align 8          ; 6 uses
  %i.aby = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i470, i64 56 ; 2 uses
  %i.abz = load ptr, ptr %i.aby, align 8
  %.not.i475 = icmp eq ptr %i.abx, %i.abz
  br i1 %.not.i475, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.aca = load float, ptr %i.abv, align 4
  %i.acb = trunc nuw nsw i64 %indvars.iv705 to i32
  store i32 %i.acb, ptr %i.abx, align 4
  %i.acc = getelementptr inbounds nuw i8, ptr %i.abx, i64 4
  store float %i.aca, ptr %i.acc, align 4
  %i.acd = load ptr, ptr %i.abw, align 8
  %i.ace = getelementptr inbounds nuw i8, ptr %i.acd, i64 8
  store ptr %i.ace, ptr %i.abw, align 8
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRiRfEEERS0_DpOT_.exit490

bb.cf:                                            ; preds = %bb.cd
  %i.acf = load ptr, ptr %i.abu, align 8          ; 7 uses
  %i.acg = ptrtoint ptr %i.abx to i64             ; 2 uses
  %i.ach = ptrtoint ptr %i.acf to i64             ; 3 uses
  %i.aci = sub i64 %i.acg, %i.ach                 ; 4 uses
  %i.acj = icmp eq i64 %i.aci, 9223372036854775800
  br i1 %i.acj, label %.invoke836, label %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i476

_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i476: ; preds = %bb.cf
  %i.ack = ashr exact i64 %i.aci, 3               ; 3 uses
  %.sroa.speculated.i.i.i477 = call i64 @llvm.umax.i64(i64 %i.ack, i64 1)
  %i.acl = add nsw i64 %.sroa.speculated.i.i.i477, %i.ack ; 2 uses
  %i.acm = icmp ult i64 %i.acl, %i.ack
  %i.acn = call i64 @llvm.umin.i64(i64 %i.acl, i64 1152921504606846975)
  %i.aco = select i1 %i.acm, i64 1152921504606846975, i64 %i.acn ; 3 uses
  %.not.i.i.i478 = icmp ne i64 %i.aco, 0
  call void @llvm.assume(i1 %.not.i.i.i478)
  %i.acp = shl nuw nsw i64 %i.aco, 3
  %i.acq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.acp) #25
          to label %.noexc489 unwind label %.loopexit575 ; 8 uses

.noexc489:                                        ; preds = %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i476
  %i.acr = getelementptr inbounds nuw i8, ptr %i.acq, i64 %i.aci ; 2 uses
  %i.acs = load float, ptr %i.abv, align 4
  %i.act = trunc nuw nsw i64 %indvars.iv705 to i32
  store i32 %i.act, ptr %i.acr, align 4
  %i.acu = getelementptr inbounds nuw i8, ptr %i.acr, i64 4
  store float %i.acs, ptr %i.acu, align 4
  %.not10.i.i.i.i.i479 = icmp eq ptr %i.acf, %i.abx
  br i1 %.not10.i.i.i.i.i479, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i484, label %.lr.ph.i.i.i.i.i480.preheader

.lr.ph.i.i.i.i.i480.preheader:                    ; preds = %.noexc489
  %i.acv = ptrtoaddr ptr %i.acq to i64
  %53 = add i64 %i.acg, -8
  %54 = sub i64 %53, %i.ach                       ; 2 uses
  %i.acw = lshr i64 %54, 3
  %i.acx = add nuw nsw i64 %i.acw, 1              ; 2 uses
  %min.iters.check1033 = icmp ult i64 %54, 24
  %i.acy = sub i64 %i.acv, %i.ach
  %diff.check1031 = icmp ult i64 %i.acy, 32
  %or.cond1094 = or i1 %min.iters.check1033, %diff.check1031
  br i1 %or.cond1094, label %.lr.ph.i.i.i.i.i480.preheader1106, label %vector.ph1034

vector.ph1034:                                    ; preds = %.lr.ph.i.i.i.i.i480.preheader
  %n.vec1036 = and i64 %i.acx, 4611686018427387900 ; 3 uses
  %i.acz = shl i64 %n.vec1036, 3                  ; 2 uses
  %i.ada = getelementptr i8, ptr %i.acq, i64 %i.acz ; 2 uses
  %i.adb = getelementptr i8, ptr %i.acf, i64 %i.acz
  br label %vector.body1037

vector.body1037:                                  ; preds = %vector.body1037, %vector.ph1034
  %index1038 = phi i64 [ 0, %vector.ph1034 ], [ %index.next1043, %vector.body1037 ] ; 2 uses
  %i.adc = shl i64 %index1038, 3                  ; 2 uses
  %next.gep1039 = getelementptr i8, ptr %i.acq, i64 %i.adc ; 2 uses
  %next.gep1040 = getelementptr i8, ptr %i.acf, i64 %i.adc ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !107)
  call void @llvm.experimental.noalias.scope.decl(metadata !110)
  %i.add = getelementptr i8, ptr %next.gep1040, i64 16
  %wide.load1041 = load <2 x i64>, ptr %next.gep1040, align 4, !alias.scope !110, !noalias !107
  %wide.load1042 = load <2 x i64>, ptr %i.add, align 4, !alias.scope !110, !noalias !107
  %i.ade = getelementptr i8, ptr %next.gep1039, i64 16
  store <2 x i64> %wide.load1041, ptr %next.gep1039, align 4, !alias.scope !107, !noalias !110
  store <2 x i64> %wide.load1042, ptr %i.ade, align 4, !alias.scope !107, !noalias !110
  %index.next1043 = add nuw i64 %index1038, 4     ; 2 uses
  %i.adf = icmp eq i64 %index.next1043, %n.vec1036
  br i1 %i.adf, label %middle.block1044, label %vector.body1037, !llvm.loop !112

middle.block1044:                                 ; preds = %vector.body1037
  %cmp.n1045 = icmp eq i64 %i.acx, %n.vec1036
  br i1 %cmp.n1045, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i484, label %.lr.ph.i.i.i.i.i480.preheader1106

.lr.ph.i.i.i.i.i480.preheader1106:                ; preds = %.lr.ph.i.i.i.i.i480.preheader, %middle.block1044
  %.012.i.i.i.i.i481.ph = phi ptr [ %i.acq, %.lr.ph.i.i.i.i.i480.preheader ], [ %i.ada, %middle.block1044 ]
  %.0911.i.i.i.i.i482.ph = phi ptr [ %i.acf, %.lr.ph.i.i.i.i.i480.preheader ], [ %i.adb, %middle.block1044 ]
  br label %.lr.ph.i.i.i.i.i480

.lr.ph.i.i.i.i.i480:                              ; preds = %.lr.ph.i.i.i.i.i480.preheader1106, %.lr.ph.i.i.i.i.i480
  %.012.i.i.i.i.i481 = phi ptr [ %i.adi, %.lr.ph.i.i.i.i.i480 ], [ %.012.i.i.i.i.i481.ph, %.lr.ph.i.i.i.i.i480.preheader1106 ] ; 2 uses
  %.0911.i.i.i.i.i482 = phi ptr [ %i.adh, %.lr.ph.i.i.i.i.i480 ], [ %.0911.i.i.i.i.i482.ph, %.lr.ph.i.i.i.i.i480.preheader1106 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !107)
  call void @llvm.experimental.noalias.scope.decl(metadata !110)
  %i.adg = load i64, ptr %.0911.i.i.i.i.i482, align 4, !alias.scope !110, !noalias !107
  store i64 %i.adg, ptr %.012.i.i.i.i.i481, align 4, !alias.scope !107, !noalias !110
  %i.adh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i482, i64 8 ; 2 uses
  %i.adi = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i481, i64 8 ; 2 uses
  %.not.i.i.i.i.i483 = icmp eq ptr %i.adh, %i.abx
  br i1 %.not.i.i.i.i.i483, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i484, label %.lr.ph.i.i.i.i.i480, !llvm.loop !113

_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i484: ; preds = %.lr.ph.i.i.i.i.i480, %middle.block1044, %.noexc489
  %.0.lcssa.i.i.i.i.i485 = phi ptr [ %i.acq, %.noexc489 ], [ %i.ada, %middle.block1044 ], [ %i.adi, %.lr.ph.i.i.i.i.i480 ]
  %i.adj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i485, i64 8
  %.not.i34.i.i486 = icmp eq ptr %i.acf, null
  br i1 %.not.i34.i.i486, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRiRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i487, label %bb.cg

bb.cg:                                            ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i484
  call void @_ZdlPvm(ptr noundef nonnull %i.acf, i64 noundef %i.aci) #23
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRiRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i487

_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRiRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i487: ; preds = %bb.cg, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i484
  store ptr %i.acq, ptr %i.abu, align 8
  store ptr %i.adj, ptr %i.abw, align 8
  %i.adk = getelementptr inbounds nuw [8 x i8], ptr %i.acq, i64 %i.aco
  store ptr %i.adk, ptr %i.aby, align 8
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRiRfEEERS0_DpOT_.exit490

_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRiRfEEERS0_DpOT_.exit490: ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRiRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i487, %bb.ce
  %i.adl = getelementptr inbounds nuw i8, ptr %i.xh, i64 20 ; 2 uses
  %i.adm = load ptr, ptr %i.cm, align 8           ; 2 uses
  %.not10.i.i.i.i491 = icmp eq ptr %i.adm, null
  br i1 %.not10.i.i.i.i491, label %.critedge.i502, label %.lr.ph.i.i.i.i492

.lr.ph.i.i.i.i492:                                ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRiRfEEERS0_DpOT_.exit490
  %i.adn = load i32, ptr %i.adl, align 4          ; 2 uses
  br label %bb.ch

bb.ch:                                            ; preds = %bb.ch, %.lr.ph.i.i.i.i492
  %.012.i.i.i.i493 = phi ptr [ %i.adm, %.lr.ph.i.i.i.i492 ], [ %.1.i.i.i.i498, %bb.ch ] ; 4 uses
  %.0811.i.i.i.i494 = phi ptr [ %i.cl, %.lr.ph.i.i.i.i492 ], [ %.19.i.i.i.i495, %bb.ch ] ; 2 uses
  %i.ado = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i493, i64 32
  %i.adp = load i32, ptr %i.ado, align 4
  %i.adq = icmp slt i32 %i.adp, %i.adn            ; 3 uses
  %.19.i.i.i.i495 = select i1 %i.adq, ptr %.0811.i.i.i.i494, ptr %.012.i.i.i.i493 ; 5 uses
  %.1.in.v.i.i.i.i496 = select i1 %i.adq, i64 24, i64 16
  %.1.in.i.i.i.i497 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i493, i64 %.1.in.v.i.i.i.i496
  %.1.i.i.i.i498 = load ptr, ptr %.1.in.i.i.i.i497, align 8 ; 2 uses
  %.not.i.i.i.i499 = icmp eq ptr %.1.i.i.i.i498, null
  br i1 %.not.i.i.i.i499, label %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i500, label %bb.ch, !llvm.loop !29

_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i500: ; preds = %bb.ch
  %i.adr = icmp eq ptr %.19.i.i.i.i495, %i.cl
  br i1 %i.adr, label %.critedge.i502, label %bb.ci

bb.ci:                                            ; preds = %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i500
  %.19.i.i.i.i495.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.adq, ptr %.0811.i.i.i.i494, ptr %.012.i.i.i.i493
  %.19.i.i.i.i495.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i495.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.ads = load i32, ptr %.19.i.i.i.i495.sroa.sel.v.sroa.sel.v.sroa.sel, align 4
  %i.adt = icmp slt i32 %i.adn, %i.ads
  br i1 %i.adt, label %.critedge.i502, label %bb.cj

.critedge.i502:                                   ; preds = %bb.ci, %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i500, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRiRfEEERS0_DpOT_.exit490
  %.08.lcssa.i.i.i11.i503 = phi ptr [ %.19.i.i.i.i495, %bb.ci ], [ %.19.i.i.i.i495, %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i500 ], [ %i.cl, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRiRfEEERS0_DpOT_.exit490 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr %i.adl, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.adu = invoke ptr @_ZNSt8_Rb_treeIiSt4pairIKiSt6vectorI14aiVertexWeightSaIS3_EEESt10_Select1stIS6_ESt4lessIiESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %30, ptr %.08.lcssa.i.i.i11.i503, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %.noexc504 unwind label %.loopexit575

.noexc504:                                        ; preds = %.critedge.i502
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.cj

bb.cj:                                            ; preds = %.noexc504, %bb.ci
  %.sroa.06.0.i501 = phi ptr [ %i.adu, %.noexc504 ], [ %.19.i.i.i.i495, %bb.ci ] ; 3 uses
  %i.adv = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i501, i64 40 ; 2 uses
  %i.adw = getelementptr inbounds nuw i8, ptr %i.xh, i64 36 ; 2 uses
  %i.adx = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i501, i64 48 ; 4 uses
  %i.ady = load ptr, ptr %i.adx, align 8          ; 6 uses
  %i.adz = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i501, i64 56 ; 2 uses
  %i.aea = load ptr, ptr %i.adz, align 8
  %.not.i506 = icmp eq ptr %i.ady, %i.aea
  br i1 %.not.i506, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.aeb = load float, ptr %i.adw, align 4
  %i.aec = trunc nuw nsw i64 %indvars.iv705 to i32
  store i32 %i.aec, ptr %i.ady, align 4
  %i.aed = getelementptr inbounds nuw i8, ptr %i.ady, i64 4
  store float %i.aeb, ptr %i.aed, align 4
  %i.aee = load ptr, ptr %i.adx, align 8
  %i.aef = getelementptr inbounds nuw i8, ptr %i.aee, i64 8
  store ptr %i.aef, ptr %i.adx, align 8
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRifEEERS0_DpOT_.exit

bb.cl:                                            ; preds = %bb.cj
  %i.aeg = load ptr, ptr %i.adv, align 8          ; 7 uses
  %i.aeh = ptrtoint ptr %i.ady to i64             ; 2 uses
  %i.aei = ptrtoint ptr %i.aeg to i64             ; 3 uses
  %i.aej = sub i64 %i.aeh, %i.aei                 ; 4 uses
  %i.aek = icmp eq i64 %i.aej, 9223372036854775800
  br i1 %i.aek, label %.invoke836, label %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i507

_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i507: ; preds = %bb.cl
  %i.ael = ashr exact i64 %i.aej, 3               ; 3 uses
  %.sroa.speculated.i.i.i508 = call i64 @llvm.umax.i64(i64 %i.ael, i64 1)
  %i.aem = add nsw i64 %.sroa.speculated.i.i.i508, %i.ael ; 2 uses
  %i.aen = icmp ult i64 %i.aem, %i.ael
  %i.aeo = call i64 @llvm.umin.i64(i64 %i.aem, i64 1152921504606846975)
  %i.aep = select i1 %i.aen, i64 1152921504606846975, i64 %i.aeo ; 3 uses
  %.not.i.i.i509 = icmp ne i64 %i.aep, 0
  call void @llvm.assume(i1 %.not.i.i.i509)
  %i.aeq = shl nuw nsw i64 %i.aep, 3
  %i.aer = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aeq) #25
          to label %.noexc520 unwind label %.loopexit575 ; 8 uses

.noexc520:                                        ; preds = %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i507
  %i.aes = getelementptr inbounds nuw i8, ptr %i.aer, i64 %i.aej ; 2 uses
  %i.aet = load float, ptr %i.adw, align 4
  %i.aeu = trunc nuw nsw i64 %indvars.iv705 to i32
  store i32 %i.aeu, ptr %i.aes, align 4
  %i.aev = getelementptr inbounds nuw i8, ptr %i.aes, i64 4
  store float %i.aet, ptr %i.aev, align 4
  %.not10.i.i.i.i.i510 = icmp eq ptr %i.aeg, %i.ady
  br i1 %.not10.i.i.i.i.i510, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i515, label %.lr.ph.i.i.i.i.i511.preheader

.lr.ph.i.i.i.i.i511.preheader:                    ; preds = %.noexc520
  %i.aew = ptrtoaddr ptr %i.aer to i64
  %55 = add i64 %i.aeh, -8
  %56 = sub i64 %55, %i.aei                       ; 2 uses
  %i.aex = lshr i64 %56, 3
  %i.aey = add nuw nsw i64 %i.aex, 1              ; 2 uses
  %min.iters.check1015 = icmp ult i64 %56, 24
  %i.aez = sub i64 %i.aew, %i.aei
  %diff.check1013 = icmp ult i64 %i.aez, 32
  %or.cond1095 = or i1 %min.iters.check1015, %diff.check1013
  br i1 %or.cond1095, label %.lr.ph.i.i.i.i.i511.preheader1105, label %vector.ph1016

vector.ph1016:                                    ; preds = %.lr.ph.i.i.i.i.i511.preheader
  %n.vec1018 = and i64 %i.aey, 4611686018427387900 ; 3 uses
  %i.afa = shl i64 %n.vec1018, 3                  ; 2 uses
  %i.afb = getelementptr i8, ptr %i.aer, i64 %i.afa ; 2 uses
  %i.afc = getelementptr i8, ptr %i.aeg, i64 %i.afa
  br label %vector.body1019

vector.body1019:                                  ; preds = %vector.body1019, %vector.ph1016
  %index1020 = phi i64 [ 0, %vector.ph1016 ], [ %index.next1025, %vector.body1019 ] ; 2 uses
  %i.afd = shl i64 %index1020, 3                  ; 2 uses
  %next.gep1021 = getelementptr i8, ptr %i.aer, i64 %i.afd ; 2 uses
  %next.gep1022 = getelementptr i8, ptr %i.aeg, i64 %i.afd ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !114)
  call void @llvm.experimental.noalias.scope.decl(metadata !117)
  %i.afe = getelementptr i8, ptr %next.gep1022, i64 16
  %wide.load1023 = load <2 x i64>, ptr %next.gep1022, align 4, !alias.scope !117, !noalias !114
  %wide.load1024 = load <2 x i64>, ptr %i.afe, align 4, !alias.scope !117, !noalias !114
  %i.aff = getelementptr i8, ptr %next.gep1021, i64 16
  store <2 x i64> %wide.load1023, ptr %next.gep1021, align 4, !alias.scope !114, !noalias !117
  store <2 x i64> %wide.load1024, ptr %i.aff, align 4, !alias.scope !114, !noalias !117
  %index.next1025 = add nuw i64 %index1020, 4     ; 2 uses
  %i.afg = icmp eq i64 %index.next1025, %n.vec1018
  br i1 %i.afg, label %middle.block1026, label %vector.body1019, !llvm.loop !119

middle.block1026:                                 ; preds = %vector.body1019
  %cmp.n1027 = icmp eq i64 %i.aey, %n.vec1018
  br i1 %cmp.n1027, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i515, label %.lr.ph.i.i.i.i.i511.preheader1105

.lr.ph.i.i.i.i.i511.preheader1105:                ; preds = %.lr.ph.i.i.i.i.i511.preheader, %middle.block1026
  %.012.i.i.i.i.i512.ph = phi ptr [ %i.aer, %.lr.ph.i.i.i.i.i511.preheader ], [ %i.afb, %middle.block1026 ]
  %.0911.i.i.i.i.i513.ph = phi ptr [ %i.aeg, %.lr.ph.i.i.i.i.i511.preheader ], [ %i.afc, %middle.block1026 ]
  br label %.lr.ph.i.i.i.i.i511

.lr.ph.i.i.i.i.i511:                              ; preds = %.lr.ph.i.i.i.i.i511.preheader1105, %.lr.ph.i.i.i.i.i511
  %.012.i.i.i.i.i512 = phi ptr [ %i.afj, %.lr.ph.i.i.i.i.i511 ], [ %.012.i.i.i.i.i512.ph, %.lr.ph.i.i.i.i.i511.preheader1105 ] ; 2 uses
  %.0911.i.i.i.i.i513 = phi ptr [ %i.afi, %.lr.ph.i.i.i.i.i511 ], [ %.0911.i.i.i.i.i513.ph, %.lr.ph.i.i.i.i.i511.preheader1105 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !114)
  call void @llvm.experimental.noalias.scope.decl(metadata !117)
  %i.afh = load i64, ptr %.0911.i.i.i.i.i513, align 4, !alias.scope !117, !noalias !114
  store i64 %i.afh, ptr %.012.i.i.i.i.i512, align 4, !alias.scope !114, !noalias !117
  %i.afi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i513, i64 8 ; 2 uses
  %i.afj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i512, i64 8 ; 2 uses
  %.not.i.i.i.i.i514 = icmp eq ptr %i.afi, %i.ady
  br i1 %.not.i.i.i.i.i514, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i515, label %.lr.ph.i.i.i.i.i511, !llvm.loop !120

_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i515: ; preds = %.lr.ph.i.i.i.i.i511, %middle.block1026, %.noexc520
  %.0.lcssa.i.i.i.i.i516 = phi ptr [ %i.aer, %.noexc520 ], [ %i.afb, %middle.block1026 ], [ %i.afj, %.lr.ph.i.i.i.i.i511 ]
  %i.afk = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i516, i64 8
  %.not.i34.i.i517 = icmp eq ptr %i.aeg, null
  br i1 %.not.i34.i.i517, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRiRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i518, label %bb.cm

bb.cm:                                            ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i515
  call void @_ZdlPvm(ptr noundef nonnull %i.aeg, i64 noundef %i.aej) #23
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRiRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i518

_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRiRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i518: ; preds = %bb.cm, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i515
  store ptr %i.aer, ptr %i.adv, align 8
  store ptr %i.afk, ptr %i.adx, align 8
  %i.afl = getelementptr inbounds nuw [8 x i8], ptr %i.aer, i64 %i.aep
  store ptr %i.afl, ptr %i.adz, align 8
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRifEEERS0_DpOT_.exit

.loopexit575:                                     ; preds = %.critedge.i409, %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i414, %.critedge.i440, %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i445, %.critedge.i471, %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i476, %.critedge.i502, %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i507
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

.loopexit.split-lp:                               ; preds = %.invoke836
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRifEEERS0_DpOT_.exit: ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRiRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i518, %bb.ck, %bb.bk, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRifEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i394, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRiRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i332, %bb.ax, %bb.x, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRifEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i208, %bb.j, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRifEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, %.thread571
  %indvars.iv.next706 = add nuw nsw i64 %indvars.iv705, 1 ; 2 uses
  %exitcond709.not = icmp eq i64 %indvars.iv.next706, %i.bu
  br i1 %exitcond709.not, label %._crit_edge654, label %bb.c, !llvm.loop !121

bb.cn:                                            ; preds = %._crit_edge654
  %i.afm = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  store i32 %i.cy, ptr %i.afm, align 8
  store ptr %i.dd, ptr %i.e, align 8
  %i.afn = icmp sgt i32 %i.cy, 0
  br i1 %i.afn, label %.lr.ph660, label %._crit_edge661

.lr.ph660:                                        ; preds = %bb.cn
  %i.afo = getelementptr inbounds nuw i8, ptr %1, i64 216
  br label %bb.cq

._crit_edge661:                                   ; preds = %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE4findERS7_.exit.thread, %bb.cn
  %i.afp = load ptr, ptr %i.cm, align 8
  invoke void @_ZNSt8_Rb_treeIiSt4pairIKiSt6vectorI14aiVertexWeightSaIS3_EEESt10_Select1stIS6_ESt4lessIiESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %30, ptr noundef %i.afp)
          to label %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEED2Ev.exit unwind label %bb.co

bb.co:                                            ; preds = %._crit_edge661
  %i.afq = landingpad { ptr, i32 }
          catch ptr null
  %i.afr = extractvalue { ptr, i32 } %i.afq, 0
  call void @__clang_call_terminate(ptr %i.afr) #26
  unreachable

_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEED2Ev.exit: ; preds = %._crit_edge661
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #22
  ret ptr %i.a

bb.cp:                                            ; preds = %._crit_edge654
  %i.afs = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

bb.cq:                                            ; preds = %.lr.ph660, %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE4findERS7_.exit.thread
  %i.aft = phi i32 [ %i.cy, %.lr.ph660 ], [ %i.aif, %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE4findERS7_.exit.thread ] ; 4 uses
  %indvars.iv713 = phi i64 [ 0, %.lr.ph660 ], [ %indvars.iv.next714, %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE4findERS7_.exit.thread ] ; 5 uses
  %i.afu = invoke noalias noundef nonnull dereferenceable(1120) ptr @_Znwm(i64 noundef 1120) #25
          to label %bb.cr unwind label %bb.cw     ; 16 uses

bb.cr:                                            ; preds = %bb.cq
  %i.afv = getelementptr inbounds nuw i8, ptr %i.afu, i64 1056 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1120) %i.afu, i8 0, i64 1056, i1 false)
  store float 1.000000e+00, ptr %i.afv, align 4
  %i.afw = getelementptr inbounds nuw i8, ptr %i.afu, i64 1060 ; 2 uses
  %i.afx = getelementptr inbounds nuw i8, ptr %i.afu, i64 1076 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.afw, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.afx, align 4
  %i.afy = getelementptr inbounds nuw i8, ptr %i.afu, i64 1080 ; 2 uses
  %i.afz = getelementptr inbounds nuw i8, ptr %i.afu, i64 1096 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.afy, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.afz, align 4
  %i.aga = getelementptr inbounds nuw i8, ptr %i.afu, i64 1100 ; 2 uses
  %i.agb = getelementptr inbounds nuw i8, ptr %i.afu, i64 1116 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.aga, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.agb, align 4
  %i.agc = load ptr, ptr %i.afo, align 8
  %i.agd = getelementptr inbounds nuw [176 x i8], ptr %i.agc, i64 %indvars.iv713 ; 5 uses
  %i.age = getelementptr inbounds nuw i8, ptr %i.agd, i64 8
  %i.agf = load i64, ptr %i.age, align 8          ; 4 uses
  %i.agg = icmp ugt i64 %i.agf, 1023
  br i1 %i.agg, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.agh = trunc nuw nsw i64 %i.agf to i32
  store i32 %i.agh, ptr %i.afu, align 4
  %i.agi = getelementptr inbounds nuw i8, ptr %i.afu, i64 4 ; 2 uses
  %i.agj = load ptr, ptr %i.agd, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.agi, ptr align 1 %i.agj, i64 %i.agf, i1 false)
  %i.agk = getelementptr inbounds nuw i8, ptr %i.agi, i64 %i.agf
  store i8 0, ptr %i.agk, align 1
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %i.agl = getelementptr inbounds nuw i8, ptr %i.agd, i64 64
  %i.agm = load float, ptr %i.agl, align 8
  %i.agn = getelementptr inbounds nuw i8, ptr %i.agd, i64 68
  %i.ago = load float, ptr %i.agn, align 4
  %i.agp = getelementptr inbounds nuw i8, ptr %i.agd, i64 72
  %i.agq = load float, ptr %i.agp, align 8
  %i.agr = fneg float %i.agm
  %i.ags = fneg float %i.ago
  %i.agt = fneg float %i.agq
  store float 1.000000e+00, ptr %i.afv, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.afw, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.afx, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.afy, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.afz, align 4
  %i.agu = getelementptr inbounds nuw i8, ptr %i.afu, i64 1104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.agu, i8 0, i64 12, i1 false)
  store float 1.000000e+00, ptr %i.agb, align 4
  %i.agv = getelementptr inbounds nuw i8, ptr %i.afu, i64 1068
  store float %i.agr, ptr %i.agv, align 4
  %i.agw = getelementptr inbounds nuw i8, ptr %i.afu, i64 1084
  store float %i.ags, ptr %i.agw, align 4
  store float %i.agt, ptr %i.aga, align 4
  %i.agx = load ptr, ptr %i.cm, align 8           ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.agx, null
  br i1 %.not10.i.i.i, label %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE4findERS7_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ct, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.agx, %bb.ct ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.cl, %bb.ct ] ; 2 uses
  %i.agy = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.agz = load i32, ptr %i.agy, align 4
  %i.aha = sext i32 %i.agz to i64
  %i.ahb = icmp sgt i64 %indvars.iv713, %i.aha    ; 3 uses
  %.19.i.i.i = select i1 %i.ahb, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.ahb, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8 ; 2 uses
  %.not.i.i.i522 = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i522, label %_ZNSt8_Rb_treeIiSt4pairIKiSt6vectorI14aiVertexWeightSaIS3_EEESt10_Select1stIS6_ESt4lessIiESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !29

_ZNSt8_Rb_treeIiSt4pairIKiSt6vectorI14aiVertexWeightSaIS3_EEESt10_Select1stIS6_ESt4lessIiESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.ahc = icmp eq ptr %.19.i.i.i, %i.cl
  br i1 %i.ahc, label %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE4findERS7_.exit.thread, label %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE4findERS7_.exit
end_hunk_0
