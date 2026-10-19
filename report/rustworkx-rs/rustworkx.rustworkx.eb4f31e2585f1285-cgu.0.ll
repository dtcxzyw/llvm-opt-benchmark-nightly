Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustworkx-rs/original/rustworkx.rustworkx.eb4f31e2585f1285-cgu.0?download=true
inline.NumInlined: 67643
inline.NumDeleted: 27589
loop-unroll.NumCompletelyUnrolled: 143
loop-unroll.NumRuntimeUnrolled: 258
loop-unroll.NumUnrolled: 402
begin_hunk_0_@_RINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedEB6_:bb.a
._crit_edge.i.i.i:                                ; preds = %bb.ac, %bb.ab
  %i.dk = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i, splat (i8 -1)
  %i.dl = bitcast <16 x i1> %i.dk to i16
  %i.dm = icmp eq i16 %i.dl, 0
  br i1 %i.dm, label %bb.ad, label %select.unfold38.i.invoke, !prof !60

bb.ac:                                            ; preds = %.lr.ph.i.i.i
  %i.dn = add i16 %.sroa.05.0.i31.i.i.i, -1
  %i.do = and i16 %i.dn, %.sroa.05.0.i31.i.i.i    ; 2 uses
  %.not.i.not.i.i.i = icmp eq i16 %i.do, 0
  br i1 %.not.i.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.ad:                                            ; preds = %._crit_edge.i.i.i
  %i.dp = add i64 %.sroa.011.0.i.i.i.i, 16        ; 2 uses
  %i.dq = add i64 %.sroa.01.0.i.i.i.i, %i.dp
  br label %bb.ab

bb.ae:                                            ; preds = %bb.y
  %i.dr = and i64 %.sroa.02.0.copyload.i.i, 4294967295
  %.sroa.4405.12.extract.shift407 = lshr i64 %.sroa.02.0.copyload.i.i, 32
  br label %bb.af

bb.af:                                            ; preds = %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit34.i, %bb.ae
  %.sroa.02.0.i = phi i64 [ %i.ey, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit34.i ], [ %.sroa.4405.12.extract.shift407, %bb.ae ] ; 4 uses
  %.sroa.0.0.i = phi i64 [ %i.du, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit34.i ], [ %i.dr, %bb.ae ] ; 4 uses
  %.val.i18.i = load i64, ptr %i.by, align 8, !noalias !34135, !noundef !56
  %i.ds = icmp sgt i64 %.val.i18.i, 0
  br i1 %i.ds, label %bb.br, label %bb.aj, !prof !109

_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %.lr.ph.i.i.i
  %i.dt = getelementptr inbounds i8, ptr %i.dh, i64 -8
  %i.du = load i64, ptr %i.dt, align 8, !noalias !34135, !noundef !56
  %i.dv = xor i64 %.sroa.4405.12.extract.shift, %.sroa.7.i.sroa.5.0
  %i.dw = zext i64 %i.dv to i128
  %i.dx = mul nuw i128 %i.cq, %i.dw               ; 2 uses
  %i.dy = lshr i128 %i.dx, 64
  %i.dz = xor i128 %i.dy, %i.dx
  %i.ea = trunc i128 %i.dz to i64                 ; 2 uses
  %i.eb = lshr i64 %i.ea, 57
  %i.ec = trunc nuw nsw i64 %i.eb to i8
  %i.ed = insertelement <16 x i8> poison, i8 %i.ec, i64 0
  %i.ee = shufflevector <16 x i8> %i.ed, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ai, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.i
  %.sroa.011.0.i.i.i20.i = phi i64 [ 0, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.i ], [ %i.ev, %bb.ai ]
  %.pn.i.i21.i = phi i64 [ %i.ea, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.i ], [ %i.ew, %bb.ai ]
  %.sroa.01.0.i.i.i22.i = and i64 %.pn.i.i21.i, %.sroa.6.0.i ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.018.0.i, i64 %.sroa.01.0.i.i.i22.i
  %.sroa.0.0.copyload.i24.i.i23.i = load <16 x i8>, ptr %i.ef, align 1, !noalias !34136 ; 2 uses
  %i.eg = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i23.i, %i.ee
  %i.eh = bitcast <16 x i1> %i.eg to i16          ; 2 uses
  %.not.i.not30.i.i24.i = icmp eq i16 %i.eh, 0
  br i1 %.not.i.not30.i.i24.i, label %._crit_edge.i.i29.i, label %.lr.ph.i.i25.i

.lr.ph.i.i25.i:                                   ; preds = %bb.ag, %bb.ah
  %.sroa.05.0.i31.i.i26.i = phi i16 [ %i.eu, %bb.ah ], [ %i.eh, %bb.ag ] ; 3 uses
  %i.ei = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i31.i.i26.i, i1 true)
  %i.ej = zext nneg i16 %i.ei to i64
  %i.ek = add i64 %.sroa.01.0.i.i.i22.i, %i.ej
  %i.el = and i64 %i.ek, %.sroa.6.0.i
  %i.em = sub nsw i64 0, %i.el
  %i.en = getelementptr inbounds [16 x i8], ptr %.sroa.018.0.i, i64 %i.em ; 2 uses
  %i.eo = getelementptr inbounds i8, ptr %i.en, i64 -16
  %.val2.i.i.i27.i = load i32, ptr %i.eo, align 4, !noalias !34137, !noundef !56
  %i.ep = icmp eq i32 %.val2.i.i.i27.i, %.sroa.4405.12.extract.trunc
  br i1 %i.ep, label %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit34.i, label %bb.ah, !prof !66

._crit_edge.i.i29.i:                              ; preds = %bb.ah, %bb.ag
  %i.eq = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i23.i, splat (i8 -1)
  %i.er = bitcast <16 x i1> %i.eq to i16
  %i.es = icmp eq i16 %i.er, 0
  br i1 %i.es, label %bb.ai, label %select.unfold38.i.invoke, !prof !60

bb.ah:                                            ; preds = %.lr.ph.i.i25.i
  %i.et = add i16 %.sroa.05.0.i31.i.i26.i, -1
  %i.eu = and i16 %i.et, %.sroa.05.0.i31.i.i26.i  ; 2 uses
  %.not.i.not.i.i28.i = icmp eq i16 %i.eu, 0
  br i1 %.not.i.not.i.i28.i, label %._crit_edge.i.i29.i, label %.lr.ph.i.i25.i

bb.ai:                                            ; preds = %._crit_edge.i.i29.i
  %i.ev = add i64 %.sroa.011.0.i.i.i20.i, 16      ; 2 uses
  %i.ew = add i64 %.sroa.01.0.i.i.i22.i, %i.ev
  br label %bb.ag

_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit34.i: ; preds = %.lr.ph.i.i25.i
  %i.ex = getelementptr inbounds i8, ptr %i.en, i64 -8
  %i.ey = load i64, ptr %i.ex, align 8, !noalias !34135, !noundef !56
  br label %bb.af

select.unfold38.i.invoke:                         ; preds = %bb.z, %._crit_edge.i.i.i, %._crit_edge.i.i29.i
  %i.ez = phi ptr [ @1163, %._crit_edge.i.i.i ], [ @1164, %._crit_edge.i.i29.i ], [ @1163, %bb.z ]
  invoke void @_RNvNtCslwFuT2d6ECx_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ez) #60
          to label %select.unfold38.i.cont unwind label %.loopexit.split-lp485.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

select.unfold38.i.cont:                           ; preds = %select.unfold38.i.invoke
  unreachable

bb.aj:                                            ; preds = %bb.af
  invoke void @_RNvNvXsA_NtCsi0YPOvDEjiZ_4pyo38instanceINtB7_2PypENtNtCslwFuT2d6ECx_4core5clone5Clone5clone13incref_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1165) #61
          to label %.noexc110 unwind label %.loopexit.split-lp485.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc110:                                        ; preds = %bb.aj
  unreachable

bb.ak:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx.exit235
  %i.fa = icmp eq i64 %.sroa.6.0.i, 0
  %or.cond.i.i.i = select i1 %.not.i105, i1 true, i1 %i.fa
  br i1 %or.cond.i.i.i, label %_RNvMs7_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EE3newCskcxRuJ53GpR_9rustworkx.exit, label %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i

_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i: ; preds = %bb.ak
  %i.fb = shl i64 %.sroa.6.0.i, 4                 ; 2 uses
  %i.fc = add i64 %i.fb, 16                       ; 2 uses
  %i.fd = add i64 %.sroa.6.0.i, 17
  %i.fe = add i64 %i.fd, %i.fc                    ; 4 uses
  %i.ff = icmp uge i64 %i.fe, %i.fc
  %i.fg = icmp ult i64 %i.fe, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ff)
  tail call void @llvm.assume(i1 %i.fg)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.018.0.i) ]
  %i.fh = icmp eq i64 %i.fe, 0
  br i1 %i.fh, label %_RNvMs7_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EE3newCskcxRuJ53GpR_9rustworkx.exit, label %bb.al

bb.al:                                            ; preds = %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i
  %i.fi = sub nuw nsw i64 -16, %i.fb
  %i.fj = getelementptr inbounds i8, ptr %.sroa.018.0.i, i64 %i.fi
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fj, i64 noundef %i.fe, i64 noundef range(i64 1, -9223372036854775807) 16) #59
  br label %_RNvMs7_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EE3newCskcxRuJ53GpR_9rustworkx.exit

_RNvMs7_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EE3newCskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.al, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i, %bb.ak
  %i.fk = add i64 %.val6.i202, %.val5.i203        ; 2 uses
  %i.fl = tail call noundef i64 @llvm.umin.i64(i64 %.val3.i199, i64 %.val4.i200) ; 3 uses
  %i.fm = icmp eq i64 %i.fk, 1
  %i.fn = icmp ult i64 %i.fl, 2
  %spec.select.i.i.i = or i1 %i.fn, %i.fm         ; 3 uses
  %.sroa.6.0.i116.idx = select i1 %spec.select.i.i.i, i64 %i.fl, i64 0
  %.sroa.6.0.i116 = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %.sroa.6.0.i116.idx ; 2 uses
  %i.fo = ptrtoint ptr %i.cg to i64
  %spec.select = select i1 %spec.select.i.i.i, i64 %i.fo, i64 0
  %spec.select745 = select i1 %spec.select.i.i.i, i64 2, i64 1
  br label %bb.am

bb.am:                                            ; preds = %_RNvMs7_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EE3newCskcxRuJ53GpR_9rustworkx.exit, %bb.ao
  %.sroa.5325.0 = phi i64 [ %.sroa.5325.1708, %bb.ao ], [ %spec.select, %_RNvMs7_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EE3newCskcxRuJ53GpR_9rustworkx.exit ] ; 4 uses
  %.sroa.0324.0 = phi i64 [ %.sroa.0324.1709, %bb.ao ], [ %spec.select745, %_RNvMs7_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EE3newCskcxRuJ53GpR_9rustworkx.exit ]
  switch i64 %.sroa.0324.0, label %_RNvXsg_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread703 [
    i64 2, label %bb.an
    i64 0, label %_RNvXsg_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread
  ]

_RNvXsg_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread703: ; preds = %bb.am
  %i.fp = mul i64 %.sroa.5325.0, %i.fk
  %i.fq = add i64 %.sroa.5325.0, 1                ; 2 uses
  %i.fr = icmp ult i64 %i.fq, %i.fl
  %spec.select.i.i120 = zext i1 %i.fr to i64
  %i.fs = getelementptr inbounds [8 x i8], ptr %.sroa.6.0.i116, i64 %i.fp
  br label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.ft = inttoptr i64 %.sroa.5325.0 to ptr       ; 3 uses
  %i.fu = icmp eq ptr %.sroa.6.0.i116, %i.ft
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.fw = ptrtoint ptr %i.fv to i64
  %.not65 = icmp eq i64 %.sroa.5325.0, 0
  %or.cond747 = or i1 %i.fu, %.not65
  br i1 %or.cond747, label %_RNvXsg_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread, label %bb.ao

bb.ao:                                            ; preds = %bb.an, %_RNvXsg_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread703
  %.sroa.0.0.i118710 = phi ptr [ %i.fs, %_RNvXsg_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread703 ], [ %i.ft, %bb.an ]
  %.sroa.0324.1709 = phi i64 [ %spec.select.i.i120, %_RNvXsg_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread703 ], [ 2, %bb.an ]
  %.sroa.5325.1708 = phi i64 [ %i.fq, %_RNvXsg_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread703 ], [ %i.fw, %bb.an ]
  store double 0.000000e+00, ptr %.sroa.0.0.i118710, align 8
  br label %bb.am

_RNvXsg_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread: ; preds = %bb.am, %bb.an
  %i.fx = icmp ult i64 %i.r, %5
  br i1 %i.fx, label %.preheader, label %bb.ap

.preheader:                                       ; preds = %_RNvXsg_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread
  %.not608 = icmp eq i64 %i.r, 0
  br i1 %.not608, label %.loopexit470, label %.lr.ph605

.lr.ph605:                                        ; preds = %.preheader
  %.not67 = icmp eq ptr %.sroa.0258.0, null
  %i.fy = add i64 %i.r, -1                        ; 2 uses
  %i.fz = mul i64 %.val5.i203, %i.fy
  %i.ga = shl i64 %i.fz, 3                        ; 2 uses
  %umin = tail call i64 @llvm.umin.i64(i64 %.val4.i200, i64 %i.fy)
  %i.gb = shl i64 %umin, 3                        ; 2 uses
  %i.gc = getelementptr i8, ptr %i.cg, i64 %i.ga
  %i.gd = getelementptr i8, ptr %i.gc, i64 %i.gb
  %scevgep = getelementptr i8, ptr %i.gd, i64 8   ; 2 uses
  %i.ge = shl i64 %.val5.i203, 3
  %i.gf = getelementptr i8, ptr %i.cg, i64 %i.ga
  %i.gg = getelementptr i8, ptr %i.gf, i64 8
  %i.gh = getelementptr i8, ptr %i.cg, i64 %i.gb
  %i.gi = getelementptr i8, ptr %i.gh, i64 8
  %i.gj = add i64 %i.r, -1
  %i.gk = tail call i64 @llvm.umin.i64(i64 %.val4.i200, i64 %i.gj)
  %i.gl = add i64 %i.gk, 1                        ; 3 uses
  %min.iters.check58 = icmp ugt i64 %i.gl, 8
  %ident.check.not = icmp eq i64 %.val6.i202, 1
  %or.cond75 = select i1 %min.iters.check58, i1 %ident.check.not, i1 false
  %i.gm = insertelement <2 x ptr> poison, ptr %i.cg, i64 0
  %i.gn = shufflevector <2 x ptr> %i.gm, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.go = insertelement <2 x ptr> poison, ptr %scevgep, i64 0
  %i.gp = shufflevector <2 x ptr> %i.go, <2 x ptr> poison, <2 x i32> zeroinitializer
  %.mask = and i64 %.val5.i203, 1152921504606846976
  %stride.check51 = icmp ne i64 %.mask, 0
  %bound052 = icmp ult ptr %i.cg, %scevgep
  %invariant.op = or i1 %bound052, %stride.check51
  %i.gq = and i64 %i.gl, 3                        ; 2 uses
  %i.gr = icmp eq i64 %i.gq, 0
  %i.gs = select i1 %i.gr, i64 4, i64 %i.gq
  %n.vec60 = sub i64 %i.gl, %i.gs                 ; 2 uses
  br label %bb.be

bb.ap:                                            ; preds = %_RNvXsg_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread
  %.not66 = icmp eq ptr %.sroa.0258.0, null
  %.not607 = icmp eq i64 %i.r, 0                  ; 2 uses
  br i1 %.not66, label %.preheader471, label %.preheader474

.preheader474:                                    ; preds = %bb.ap
  br i1 %.not607, label %.loopexit470, label %.lr.ph541

.lr.ph541:                                        ; preds = %.preheader474
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %.sroa.425.sroa.3.0..sroa.425.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %.sroa.425.sroa.4.0..sroa.425.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.gt = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.gu = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %.sroa.10349.56..sroa_idx350 = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %.sroa.11352.sroa.4.0..sroa.11352.56..sroa_idx353.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %.sroa.11352.sroa.5.0..sroa.11352.56..sroa_idx353.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %.sroa.11352.sroa.6.0..sroa.11352.56..sroa_idx353.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %.sroa.5341.0..sroa_idx342 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.6344.0..sroa_idx345 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.6344.sroa.4.0..sroa.6344.0..sroa_idx345.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.6344.sroa.5.0..sroa.6344.0..sroa_idx345.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.6344.sroa.6.0..sroa.6344.0..sroa_idx345.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.gv = tail call i64 @llvm.umin.i64(i64 %.val3.i199, i64 %i.r) ; 2 uses
  %i.gw = icmp eq i64 %i.gv, -1
  %i.gx = zext i1 %i.gw to i64
  %i.gy = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.ha = insertelement <2 x i64> poison, i64 %i.r, i64 0
  %i.hb = shufflevector <2 x i64> %i.ha, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %bb.az

.preheader471:                                    ; preds = %bb.ap
  br i1 %.not607, label %.loopexit470, label %.lr.ph543

.lr.ph543:                                        ; preds = %.preheader471
  %.sroa.236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.sroa.438.sroa.3.0..sroa.438.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %.sroa.438.sroa.4.0..sroa.438.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.hc = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.5367.0..sroa_idx368 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.6370.0..sroa_idx371 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.6370.sroa.4.0..sroa.6370.0..sroa_idx371.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.6370.sroa.5.0..sroa.6370.0..sroa_idx371.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.6370.sroa.6.0..sroa.6370.0..sroa_idx371.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.hd = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.he = icmp eq i64 %.val3.i199, -1
  %i.hf = zext i1 %i.he to i64
  %i.hg = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  br label %bb.aq

bb.aq:                                            ; preds = %.lr.ph543, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj1_EdEECskcxRuJ53GpR_9rustworkx.exit132
  %.sroa.061.0542 = phi i64 [ 0, %.lr.ph543 ], [ %i.hi, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj1_EdEECskcxRuJ53GpR_9rustworkx.exit132 ] ; 3 uses
  %i.hi = add nuw i64 %.sroa.061.0542, 1          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i64 %.sroa.061.0542, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 2, ptr %i.g, align 8
  store i64 %.sroa.061.0542, ptr %.sroa.236.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.438.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.438.sroa.3.0..sroa.438.0..sroa_idx.sroa_idx, align 8
  store i64 1, ptr %.sroa.438.sroa.4.0..sroa.438.0..sroa_idx.sroa_idx, align 8
  invoke fastcc void @_RINvMs1_NtCshByAT0BfsDP_7ndarray12impl_methodsINtB8_8ArrayRefdINtNtNtB8_9dimension3dim3DimAjj2_EE5sliceINtNtB8_5slice9SliceInfoANtB1G_13SliceInfoElemB1s_BY_IBZ_Ajj1_EEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.cd, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(64) %i.g)
          to label %bb.au unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit470:                                     ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj1_EdEECskcxRuJ53GpR_9rustworkx.exit153, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj1_EdEECskcxRuJ53GpR_9rustworkx.exit132, %.loopexit469.split.us, %.preheader474, %.preheader471, %.preheader
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 64, i1 false)
  %.sroa.4385.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %.sroa.0258.0, ptr %.sroa.4385.0..sroa_idx, align 8
  %.sroa.5386.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %.sroa.10.0, ptr %.sroa.5386.0..sroa_idx, align 8
  %.sroa.6387.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %.sroa.12.0, ptr %.sroa.6387.0..sroa_idx, align 8
  %.sroa.7388.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %.sroa.14.0, ptr %.sroa.7388.0..sroa_idx, align 8
  %.sroa.8389.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %i.r, ptr %.sroa.8389.0..sroa_idx, align 8
  %.sroa.9390.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %i.r, ptr %.sroa.9390.0..sroa_idx, align 8
  %.sroa.10391.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %i.r, ptr %.sroa.10391.0..sroa_idx, align 8
  %.sroa.11392.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %.sroa.25.0, ptr %.sroa.11392.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br i1 %.not.i192, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit122, label %bb.ar

bb.ar:                                            ; preds = %.loopexit470
  %.val.i.i.i.i.i121 = load i64, ptr %i.by, align 8, !noundef !56
  %i.hj = icmp sgt i64 %.val.i.i.i.i.i121, 0
  br i1 %i.hj, label %bb.at, label %bb.as, !prof !109

bb.as:                                            ; preds = %bb.ar
  call void @_RNvNvXsB_NtCsi0YPOvDEjiZ_4pyo38instanceINtB7_2PypENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %2)
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit122

bb.at:                                            ; preds = %bb.ar
  call void @_Py_DecRef(ptr noundef nonnull %2) #59
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit122

bb.au:                                            ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  invoke fastcc void @_RNvMs_NtCshByAT0BfsDP_7ndarray12impl_methodsINtB6_8ArrayRefdINtNtNtB6_9dimension3dim3DimAjj1_EE8to_ownedCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h)
          to label %bb.aw unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.av:                                            ; preds = %.noexc128, %bb.aw
  %i.hk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34138)
  call void @llvm.experimental.noalias.scope.decl(metadata !34139)
  call void @llvm.experimental.noalias.scope.decl(metadata !34140)
  %i.hl = load i64, ptr %i.hg, align 8, !alias.scope !34141, !noundef !56 ; 2 uses
  %.not.i.i.i125 = icmp eq i64 %i.hl, 0
  br i1 %.not.i.i.i125, label %.body, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i126

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i126: ; preds = %bb.av
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hh, i8 0, i64 16, i1 false), !alias.scope !34141
  %i.hm = load ptr, ptr %i.i, align 8, !alias.scope !34141, !nonnull !56, !noundef !56
  %i.hn = shl nuw i64 %i.hl, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hm, i64 noundef %i.hn, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !34141
  br label %.body

bb.aw:                                            ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.j, ptr %i.e, align 8, !noalias !34142
  store ptr %i.i, ptr %i.hc, align 8, !noalias !34142
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !34143
  store i64 0, ptr %i.d, align 8, !noalias !34144
  store i64 %.val3.i199, ptr %.sroa.5367.0..sroa_idx368, align 8, !noalias !34144
  store i64 %.val5.i203, ptr %.sroa.6370.0..sroa_idx371, align 8, !noalias !34144
  store i64 %.val4.i200, ptr %.sroa.6370.sroa.4.0..sroa.6370.0..sroa_idx371.sroa_idx, align 8, !noalias !34144
  store i64 %.val6.i202, ptr %.sroa.6370.sroa.5.0..sroa.6370.0..sroa_idx371.sroa_idx, align 8, !noalias !34144
  store ptr %i.cg, ptr %.sroa.6370.sroa.6.0..sroa.6370.0..sroa_idx371.sroa_idx, align 8, !noalias !34144
  store i64 1, ptr %i.hd, align 8, !noalias !34143
  %i.ho = invoke noundef i64 @_RNvCslLviULm4Laq_10rayon_core19current_num_threads()
          to label %.noexc128 unwind label %bb.av

.noexc128:                                        ; preds = %bb.aw
  %spec.store.select.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ho, i64 %i.hf)
  invoke fastcc void @_RINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB1k_9iterators11AxisIterMutdINtNtNtB1k_9dimension3dim3DimAjj1_EEEINtNtB6_8for_each15ForEachConsumerNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedEs_0EEB40_(i64 noundef %.val3.i199, i1 noundef zeroext false, i64 noundef %spec.store.select.i.i.i.i.i.i, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e)
          to label %bb.ax unwind label %bb.av

bb.ax:                                            ; preds = %.noexc128
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !34143
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !34145)
  call void @llvm.experimental.noalias.scope.decl(metadata !34146)
  call void @llvm.experimental.noalias.scope.decl(metadata !34147)
  %i.hp = load i64, ptr %i.hg, align 8, !alias.scope !34148, !noundef !56 ; 2 uses
  %.not.i.i.i130 = icmp eq i64 %i.hp, 0
  br i1 %.not.i.i.i130, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj1_EdEECskcxRuJ53GpR_9rustworkx.exit132, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i131

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i131: ; preds = %bb.ax
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hh, i8 0, i64 16, i1 false), !alias.scope !34148
  %i.hq = load ptr, ptr %i.i, align 8, !alias.scope !34148, !nonnull !56, !noundef !56
  %i.hr = shl nuw i64 %i.hp, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hq, i64 noundef %i.hr, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !34148
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj1_EdEECskcxRuJ53GpR_9rustworkx.exit132

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj1_EdEECskcxRuJ53GpR_9rustworkx.exit132: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i131, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %exitcond653.not = icmp eq i64 %i.hi, %i.r
  br i1 %exitcond653.not, label %.loopexit470, label %bb.aq

bb.ay:                                            ; preds = %bb.c, %.body195
  %i.hs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58
  unreachable

bb.az:                                            ; preds = %.lr.ph541, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj1_EdEECskcxRuJ53GpR_9rustworkx.exit153
  %.sroa.059.0540 = phi i64 [ 0, %.lr.ph541 ], [ %i.ht, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj1_EdEECskcxRuJ53GpR_9rustworkx.exit153 ] ; 3 uses
  %i.ht = add nuw i64 %.sroa.059.0540, 1          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store i64 %.sroa.059.0540, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i64 2, ptr %i.k, align 8
  store i64 %.sroa.059.0540, ptr %.sroa.2.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.425.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.425.sroa.3.0..sroa.425.0..sroa_idx.sroa_idx, align 8
  store i64 1, ptr %.sroa.425.sroa.4.0..sroa.425.0..sroa_idx.sroa_idx, align 8
  invoke fastcc void @_RINvMs1_NtCshByAT0BfsDP_7ndarray12impl_methodsINtB8_8ArrayRefdINtNtNtB8_9dimension3dim3DimAjj2_EE5sliceINtNtB8_5slice9SliceInfoANtB1G_13SliceInfoElemB1s_BY_IBZ_Ajj1_EEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.cd, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(64) %i.k)
          to label %bb.ba unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  invoke fastcc void @_RNvMs_NtCshByAT0BfsDP_7ndarray12impl_methodsINtB6_8ArrayRefdINtNtNtB6_9dimension3dim3DimAjj1_EE8to_ownedCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.l)
          to label %bb.bc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bb:                                            ; preds = %.noexc149, %bb.bc
  %i.hu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34149)
  call void @llvm.experimental.noalias.scope.decl(metadata !34150)
  call void @llvm.experimental.noalias.scope.decl(metadata !34151)
  %i.hv = load i64, ptr %i.gy, align 8, !alias.scope !34152, !noundef !56 ; 2 uses
  %.not.i.i.i135 = icmp eq i64 %i.hv, 0
  br i1 %.not.i.i.i135, label %.body, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i136

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i136: ; preds = %bb.bb
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gz, i8 0, i64 16, i1 false), !alias.scope !34152
  %i.hw = load ptr, ptr %i.m, align 8, !alias.scope !34152, !nonnull !56, !noundef !56
  %i.hx = shl nuw i64 %i.hv, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hw, i64 noundef %i.hx, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !34152
  br label %.body

bb.bc:                                            ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.14.0) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.n, ptr %i.c, align 8, !noalias !34153
  store ptr %i.m, ptr %i.gt, align 8, !noalias !34153
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !34154
  store i64 0, ptr %i.gu, align 8, !noalias !34155
  store <2 x i64> %i.hb, ptr %.sroa.10349.56..sroa_idx350, align 8, !noalias !34155
  store i64 %i.r, ptr %.sroa.11352.sroa.4.0..sroa.11352.56..sroa_idx353.sroa_idx, align 8, !noalias !34155
  store i64 %.sroa.25.0, ptr %.sroa.11352.sroa.5.0..sroa.11352.56..sroa_idx353.sroa_idx, align 8, !noalias !34155
  store ptr %.sroa.14.0, ptr %.sroa.11352.sroa.6.0..sroa.11352.56..sroa_idx353.sroa_idx, align 8, !noalias !34155
  store i64 0, ptr %i.b, align 8, !noalias !34156
  store i64 %.val3.i199, ptr %.sroa.5341.0..sroa_idx342, align 8, !noalias !34156
  store i64 %.val5.i203, ptr %.sroa.6344.0..sroa_idx345, align 8, !noalias !34156
  store i64 %.val4.i200, ptr %.sroa.6344.sroa.4.0..sroa.6344.0..sroa_idx345.sroa_idx, align 8, !noalias !34156
  store i64 %.val6.i202, ptr %.sroa.6344.sroa.5.0..sroa.6344.0..sroa_idx345.sroa_idx, align 8, !noalias !34156
  store ptr %i.cg, ptr %.sroa.6344.sroa.6.0..sroa.6344.0..sroa_idx345.sroa_idx, align 8, !noalias !34156
  store i64 1, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !34157
  store i64 1, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !34158
  %i.hy = invoke noundef i64 @_RNvCslLviULm4Laq_10rayon_core19current_num_threads()
          to label %.noexc149 unwind label %bb.bb

.noexc149:                                        ; preds = %bb.bc
  %spec.store.select.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.hy, i64 %i.gx)
  invoke fastcc void @_RINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB6_3zip11ZipProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB1J_9iterators11AxisIterMutdINtNtNtB1J_9dimension3dim3DimAjj1_EEEIB1D_IB2B_jB37_EEEINtNtB6_8for_each15ForEachConsumerNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedE0EEB4H_(i64 noundef %i.gv, i1 noundef zeroext false, i64 noundef %spec.store.select.i.i.i.i.i.i.i.i.i.i, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c)
          to label %bb.bd unwind label %bb.bb

bb.bd:                                            ; preds = %.noexc149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !34154
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !34159)
  call void @llvm.experimental.noalias.scope.decl(metadata !34160)
  call void @llvm.experimental.noalias.scope.decl(metadata !34161)
  %i.hz = load i64, ptr %i.gy, align 8, !alias.scope !34162, !noundef !56 ; 2 uses
  %.not.i.i.i151 = icmp eq i64 %i.hz, 0
  br i1 %.not.i.i.i151, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj1_EdEECskcxRuJ53GpR_9rustworkx.exit153, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i152

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i152: ; preds = %bb.bd
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gz, i8 0, i64 16, i1 false), !alias.scope !34162
  %i.ia = load ptr, ptr %i.m, align 8, !alias.scope !34162, !nonnull !56, !noundef !56
  %i.ib = shl nuw i64 %i.hz, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ia, i64 noundef %i.ib, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !34162
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj1_EdEECskcxRuJ53GpR_9rustworkx.exit153

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj1_EdEECskcxRuJ53GpR_9rustworkx.exit153: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i152, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %exitcond652.not = icmp eq i64 %i.ht, %i.r
  br i1 %exitcond652.not, label %.loopexit470, label %bb.az

bb.be:                                            ; preds = %.lr.ph605, %.loopexit469.split.us
  %.sroa.053.0604 = phi i64 [ 0, %.lr.ph605 ], [ %i.ie, %.loopexit469.split.us ] ; 8 uses
  %i.ic = shl i64 %.sroa.053.0604, 3              ; 2 uses
  %scevgep43 = getelementptr i8, ptr %i.cg, i64 %i.ic
  %scevgep44 = getelementptr i8, ptr %i.gg, i64 %i.ic
  %i.id = mul i64 %i.ge, %.sroa.053.0604          ; 2 uses
  %scevgep45 = getelementptr i8, ptr %i.cg, i64 %i.id
  %scevgep46 = getelementptr i8, ptr %i.gi, i64 %i.id
  %i.ie = add nuw i64 %.sroa.053.0604, 1          ; 2 uses
  %i.if = mul i64 %.val6.i202, %.sroa.053.0604
  %i.ig = getelementptr [8 x i8], ptr %i.cg, i64 %i.if ; 2 uses
  %i.ih = mul i64 %.sroa.053.0604, %.val5.i203    ; 5 uses
  %i.ii = mul i64 %.sroa.053.0604, %.sroa.25.0
  %i.ij = getelementptr [8 x i8], ptr %.sroa.14.0, i64 %i.ii
  %exitcond666.not = icmp eq i64 %.sroa.053.0604, %.val4.i200
  br i1 %exitcond666.not, label %.split553.us.invoke, label %.split557

.split557:                                        ; preds = %bb.be
  %i.ik = icmp ult i64 %.sroa.053.0604, %.val3.i199
  %.fr = freeze i1 %i.ik
  br i1 %.fr, label %.split557.split.us, label %.split553.us.invoke

.split557.split.us:                               ; preds = %.split557
  br i1 %.not67, label %.split557.split.us.split.us.preheader, label %.split557.split.us.split

.split557.split.us.split.us.preheader:            ; preds = %.split557.split.us
  %i.il = insertelement <2 x ptr> poison, ptr %scevgep44, i64 0
  %i.im = insertelement <2 x ptr> %i.il, ptr %scevgep46, i64 1
  %i.in = icmp ult <2 x ptr> %i.gn, %i.im
  %i.io = insertelement <2 x ptr> poison, ptr %scevgep43, i64 0
  %i.ip = insertelement <2 x ptr> %i.io, ptr %scevgep45, i64 1
  %i.iq = icmp ult <2 x ptr> %i.ip, %i.gp
  %i.ir = and <2 x i1> %i.in, %i.iq
  %i.is = bitcast <2 x i1> %i.ir to i2
  %i.it = icmp ne i2 %i.is, 0
  %op.rdx76.reass = or i1 %i.it, %invariant.op
  br label %.split557.split.us.split.us

.split557.split.us.split.us:                      ; preds = %.split557.split.us.split.us.preheader, %.loopexit.us.us
  %.sroa.055.0556.us.us = phi i64 [ %i.iu, %.loopexit.us.us ], [ 0, %.split557.split.us.split.us.preheader ] ; 4 uses
  %i.iu = add nuw i64 %.sroa.055.0556.us.us, 1    ; 2 uses
  %i.iv = mul i64 %.sroa.055.0556.us.us, %.val5.i203 ; 5 uses
  %i.iw = getelementptr [8 x i8], ptr %i.ig, i64 %i.iv ; 3 uses
  %invariant.gep545.us.us = getelementptr [8 x i8], ptr %i.cg, i64 %i.iv ; 5 uses
  %exitcond664.not = icmp eq i64 %.sroa.055.0556.us.us, %.val3.i199
  br i1 %exitcond664.not, label %.split553.us.invoke, label %.split.us.us

.split.us.us:                                     ; preds = %.split557.split.us.split.us
  %i.ix = icmp ult i64 %.sroa.055.0556.us.us, %.val3.i199
  %.fr554.us.us = freeze i1 %i.ix
  br i1 %.fr554.us.us, label %.split.split.split.us560.us.preheader, label %.split.split.split.us.us.us

.split.split.split.us560.us.preheader:            ; preds = %.split.us.us
  %or.cond75.not = xor i1 %or.cond75, true
  %brmerge = select i1 %or.cond75.not, i1 true, i1 %op.rdx76.reass
  br i1 %brmerge, label %.split.split.split.us560.us.preheader77, label %vector.ph59

.split.split.split.us560.us.preheader77:          ; preds = %.split.split.split.us560.us.preheader, %pred.store.continue71
  %.sroa.057.0544.us555.us.us.ph = phi i64 [ %n.vec60, %pred.store.continue71 ], [ 0, %.split.split.split.us560.us.preheader ]
  br label %.split.split.split.us560.us

vector.ph59:                                      ; preds = %.split.split.split.us560.us.preheader
  %i.iy = load double, ptr %i.iw, align 8, !alias.scope !34163, !noundef !56
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.iy, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body61

vector.body61:                                    ; preds = %pred.store.continue71, %vector.ph59
  %index62 = phi i64 [ 0, %vector.ph59 ], [ %index.next72, %pred.store.continue71 ] ; 6 uses
  %i.iz = getelementptr [8 x i8], ptr %i.cg, i64 %index62 ; 2 uses
  %i.ja = getelementptr [8 x i8], ptr %i.iz, i64 %i.ih ; 2 uses
  %i.jb = getelementptr i8, ptr %i.ja, i64 16
  %wide.load = load <2 x double>, ptr %i.ja, align 8, !alias.scope !34164
  %wide.load63 = load <2 x double>, ptr %i.jb, align 8, !alias.scope !34164
  %i.jc = fadd <2 x double> %broadcast.splat, %wide.load ; 3 uses
  %i.jd = fadd <2 x double> %broadcast.splat, %wide.load63 ; 3 uses
  %i.je = getelementptr [8 x i8], ptr %i.iz, i64 %i.iv ; 2 uses
  %i.jf = getelementptr i8, ptr %i.je, i64 16
  %wide.load64 = load <2 x double>, ptr %i.je, align 8, !alias.scope !34165
  %wide.load65 = load <2 x double>, ptr %i.jf, align 8, !alias.scope !34165
  %i.jg = fcmp olt <2 x double> %i.jc, %wide.load64 ; 2 uses
  %i.jh = fcmp olt <2 x double> %i.jd, %wide.load65 ; 2 uses
  %i.ji = extractelement <2 x i1> %i.jg, i64 0
  br i1 %i.ji, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body61
  %i.jj = getelementptr [8 x i8], ptr %invariant.gep545.us.us, i64 %index62
  %i.jk = extractelement <2 x double> %i.jc, i64 0
  store double %i.jk, ptr %i.jj, align 8, !alias.scope !34166, !noalias !34167
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body61
  %i.jl = extractelement <2 x i1> %i.jg, i64 1
  br i1 %i.jl, label %pred.store.if66.a, label %pred.store.continue67.a

pred.store.if66.a:                                ; preds = %pred.store.continue
  %i.jm = getelementptr [8 x i8], ptr %invariant.gep545.us.us, i64 %index62
  %i.jn = getelementptr i8, ptr %i.jm, i64 8
  %i.jo = extractelement <2 x double> %i.jc, i64 1
  store double %i.jo, ptr %i.jn, align 8, !alias.scope !34166, !noalias !34167
  br label %pred.store.continue67.a

pred.store.continue67.a:                          ; preds = %pred.store.if66.a, %pred.store.continue
  %i.jp = extractelement <2 x i1> %i.jh, i64 0
  br i1 %i.jp, label %pred.store.if68, label %pred.store.continue69

pred.store.if68:                                  ; preds = %pred.store.continue67.a
  %i.jq = getelementptr [8 x i8], ptr %invariant.gep545.us.us, i64 %index62
  %i.jr = getelementptr i8, ptr %i.jq, i64 16
  %i.js = extractelement <2 x double> %i.jd, i64 0
  store double %i.js, ptr %i.jr, align 8, !alias.scope !34166, !noalias !34167
  br label %pred.store.continue69

pred.store.continue69:                            ; preds = %pred.store.if68, %pred.store.continue67.a
  %i.jt = extractelement <2 x i1> %i.jh, i64 1
  br i1 %i.jt, label %pred.store.if70, label %pred.store.continue71

pred.store.if70:                                  ; preds = %pred.store.continue69
  %i.ju = getelementptr [8 x i8], ptr %invariant.gep545.us.us, i64 %index62
  %i.jv = getelementptr i8, ptr %i.ju, i64 24
  %i.jw = extractelement <2 x double> %i.jd, i64 1
  store double %i.jw, ptr %i.jv, align 8, !alias.scope !34166, !noalias !34167
  br label %pred.store.continue71

pred.store.continue71:                            ; preds = %pred.store.if70, %pred.store.continue69
  %index.next72 = add nuw i64 %index62, 4         ; 2 uses
  %i.jx = icmp eq i64 %index.next72, %n.vec60
  br i1 %i.jx, label %.split.split.split.us560.us.preheader77, label %vector.body61, !llvm.loop !34096

.split.split.split.us.us.us:                      ; preds = %.split.us.us
  %i.jy = load double, ptr %i.iw, align 8, !noundef !56
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bh, %.split.split.split.us.us.us
  %.sroa.057.0544.us.us.us = phi i64 [ 0, %.split.split.split.us.us.us ], [ %i.jz, %bb.bh ] ; 3 uses
  %i.jz = add nuw i64 %.sroa.057.0544.us.us.us, 1 ; 2 uses
  %exitcond660.not = icmp eq i64 %.sroa.057.0544.us.us.us, %.val4.i200
  br i1 %exitcond660.not, label %.split553.us.invoke, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ka = mul i64 %.val6.i202, %.sroa.057.0544.us.us.us
  %i.kb = getelementptr [8 x i8], ptr %i.cg, i64 %i.ka ; 2 uses
  %i.kc = getelementptr [8 x i8], ptr %i.kb, i64 %i.ih
  %i.kd = load double, ptr %i.kc, align 8, !noundef !56
  %i.ke = fadd double %i.jy, %i.kd
  %i.kf = getelementptr [8 x i8], ptr %i.kb, i64 %i.iv
  %i.kg = load double, ptr %i.kf, align 8, !noundef !56
  %i.kh = fcmp olt double %i.ke, %i.kg
  br i1 %i.kh, label %.split553.us.invoke, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %exitcond661.not = icmp eq i64 %i.jz, %i.r
  br i1 %exitcond661.not, label %.loopexit.us.us, label %bb.bf

.split.split.split.us560.us:                      ; preds = %.split.split.split.us560.us.preheader77, %bb.bk
  %.sroa.057.0544.us555.us.us = phi i64 [ %i.ki, %bb.bk ], [ %.sroa.057.0544.us555.us.us.ph, %.split.split.split.us560.us.preheader77 ] ; 3 uses
  %i.ki = add nuw i64 %.sroa.057.0544.us555.us.us, 1 ; 2 uses
  %exitcond662.not = icmp eq i64 %.sroa.057.0544.us555.us.us, %.val4.i200
  br i1 %exitcond662.not, label %.split553.us.invoke, label %bb.bi

bb.bi:                                            ; preds = %.split.split.split.us560.us
  %i.kj = load double, ptr %i.iw, align 8, !noundef !56
  %i.kk = mul i64 %.val6.i202, %.sroa.057.0544.us555.us.us ; 2 uses
  %i.kl = getelementptr [8 x i8], ptr %i.cg, i64 %i.kk ; 2 uses
  %i.km = getelementptr [8 x i8], ptr %i.kl, i64 %i.ih
  %i.kn = load double, ptr %i.km, align 8, !noundef !56
  %i.ko = fadd double %i.kj, %i.kn                ; 2 uses
  %i.kp = getelementptr [8 x i8], ptr %i.kl, i64 %i.iv
  %i.kq = load double, ptr %i.kp, align 8, !noundef !56
  %i.kr = fcmp olt double %i.ko, %i.kq
  br i1 %i.kr, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %gep546.us.us.us = getelementptr [8 x i8], ptr %invariant.gep545.us.us, i64 %i.kk
  store double %i.ko, ptr %gep546.us.us.us, align 8
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %exitcond663.not = icmp eq i64 %i.ki, %i.r
  br i1 %exitcond663.not, label %.loopexit.us.us, label %.split.split.split.us560.us, !llvm.loop !34097

.loopexit.us.us:                                  ; preds = %bb.bh, %bb.bk
  %exitcond665.not = icmp eq i64 %i.iu, %i.r
  br i1 %exitcond665.not, label %.loopexit469.split.us, label %.split557.split.us.split.us

.split557.split.us.split:                         ; preds = %.split557.split.us, %.loopexit.us
  %.sroa.055.0556.us = phi i64 [ %i.ks, %.loopexit.us ], [ 0, %.split557.split.us ] ; 5 uses
  %i.ks = add nuw i64 %.sroa.055.0556.us, 1       ; 2 uses
  %i.kt = mul i64 %.sroa.055.0556.us, %.val5.i203 ; 4 uses
  %i.ku = getelementptr [8 x i8], ptr %i.ig, i64 %i.kt ; 2 uses
  %invariant.gep545.us = getelementptr [8 x i8], ptr %i.cg, i64 %i.kt
  %i.kv = mul i64 %.sroa.055.0556.us, %i.r        ; 2 uses
  %i.kw = getelementptr [8 x i8], ptr %i.ij, i64 %i.kv
  %invariant.gep547.us = getelementptr [8 x i8], ptr %.sroa.14.0, i64 %i.kv
  %exitcond658.not = icmp eq i64 %.sroa.055.0556.us, %.val3.i199
  br i1 %exitcond658.not, label %.split553.us.invoke, label %.split.us

.split.us:                                        ; preds = %.split557.split.us.split
  %i.kx = icmp ult i64 %.sroa.055.0556.us, %.val3.i199
  %.fr554.us = freeze i1 %i.kx
  br i1 %.fr554.us, label %.split.split.split.us560, label %.split.split.split.us.us

.split.split.split.us.us:                         ; preds = %.split.us
  %i.ky = load double, ptr %i.ku, align 8, !noundef !56
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bn, %.split.split.split.us.us
  %.sroa.057.0544.us.us = phi i64 [ 0, %.split.split.split.us.us ], [ %i.kz, %bb.bn ] ; 3 uses
  %i.kz = add nuw i64 %.sroa.057.0544.us.us, 1    ; 2 uses
  %exitcond654.not = icmp eq i64 %.sroa.057.0544.us.us, %.val4.i200
  br i1 %exitcond654.not, label %.split553.us.invoke, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.la = mul i64 %.val6.i202, %.sroa.057.0544.us.us
  %i.lb = getelementptr [8 x i8], ptr %i.cg, i64 %i.la ; 2 uses
  %i.lc = getelementptr [8 x i8], ptr %i.lb, i64 %i.ih
  %i.ld = load double, ptr %i.lc, align 8, !noundef !56
  %i.le = fadd double %i.ky, %i.ld
  %i.lf = getelementptr [8 x i8], ptr %i.lb, i64 %i.kt
  %i.lg = load double, ptr %i.lf, align 8, !noundef !56
  %i.lh = fcmp olt double %i.le, %i.lg
  br i1 %i.lh, label %.split553.us.invoke, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %exitcond655.not = icmp eq i64 %i.kz, %i.r
  br i1 %exitcond655.not, label %.loopexit.us, label %bb.bl

.split.split.split.us560:                         ; preds = %.split.us, %bb.bq
  %.sroa.057.0544.us562 = phi i64 [ %i.li, %bb.bq ], [ 0, %.split.us ] ; 4 uses
  %i.li = add nuw i64 %.sroa.057.0544.us562, 1    ; 2 uses
  %exitcond656.not = icmp eq i64 %.sroa.057.0544.us562, %.val4.i200
end_hunk_0
begin_hunk_1_@_RINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph8DirectedEB6_:bb.a
._crit_edge.i.i.i:                                ; preds = %bb.ac, %bb.ab
  %i.dk = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i, splat (i8 -1)
  %i.dl = bitcast <16 x i1> %i.dk to i16
  %i.dm = icmp eq i16 %i.dl, 0
  br i1 %i.dm, label %bb.ad, label %select.unfold38.i.invoke, !prof !60

bb.ac:                                            ; preds = %.lr.ph.i.i.i
  %i.dn = add i16 %.sroa.05.0.i31.i.i.i, -1
  %i.do = and i16 %i.dn, %.sroa.05.0.i31.i.i.i    ; 2 uses
  %.not.i.not.i.i.i = icmp eq i16 %i.do, 0
  br i1 %.not.i.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.ad:                                            ; preds = %._crit_edge.i.i.i
  %i.dp = add i64 %.sroa.011.0.i.i.i.i, 16        ; 2 uses
  %i.dq = add i64 %.sroa.01.0.i.i.i.i, %i.dp
  br label %bb.ab

bb.ae:                                            ; preds = %bb.y
  %i.dr = and i64 %.sroa.02.0.copyload.i.i, 4294967295
  %.sroa.4403.12.extract.shift405 = lshr i64 %.sroa.02.0.copyload.i.i, 32
  br label %bb.af

bb.af:                                            ; preds = %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit34.i, %bb.ae
  %.sroa.02.0.i = phi i64 [ %i.ey, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit34.i ], [ %.sroa.4403.12.extract.shift405, %bb.ae ] ; 4 uses
  %.sroa.0.0.i = phi i64 [ %i.du, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit34.i ], [ %i.dr, %bb.ae ] ; 4 uses
  %.val.i18.i = load i64, ptr %i.by, align 8, !noalias !34349, !noundef !56
  %i.ds = icmp sgt i64 %.val.i18.i, 0
  br i1 %i.ds, label %bb.br, label %bb.aj, !prof !109

_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %.lr.ph.i.i.i
  %i.dt = getelementptr inbounds i8, ptr %i.dh, i64 -8
  %i.du = load i64, ptr %i.dt, align 8, !noalias !34349, !noundef !56
  %i.dv = xor i64 %.sroa.4403.12.extract.shift, %.sroa.7.i.sroa.5.0
  %i.dw = zext i64 %i.dv to i128
  %i.dx = mul nuw i128 %i.cq, %i.dw               ; 2 uses
  %i.dy = lshr i128 %i.dx, 64
  %i.dz = xor i128 %i.dy, %i.dx
  %i.ea = trunc i128 %i.dz to i64                 ; 2 uses
  %i.eb = lshr i64 %i.ea, 57
  %i.ec = trunc nuw nsw i64 %i.eb to i8
  %i.ed = insertelement <16 x i8> poison, i8 %i.ec, i64 0
  %i.ee = shufflevector <16 x i8> %i.ed, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ai, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.i
  %.sroa.011.0.i.i.i20.i = phi i64 [ 0, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.i ], [ %i.ev, %bb.ai ]
  %.pn.i.i21.i = phi i64 [ %i.ea, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.i ], [ %i.ew, %bb.ai ]
  %.sroa.01.0.i.i.i22.i = and i64 %.pn.i.i21.i, %.sroa.6.0.i ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.018.0.i, i64 %.sroa.01.0.i.i.i22.i
  %.sroa.0.0.copyload.i24.i.i23.i = load <16 x i8>, ptr %i.ef, align 1, !noalias !34350 ; 2 uses
  %i.eg = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i23.i, %i.ee
  %i.eh = bitcast <16 x i1> %i.eg to i16          ; 2 uses
  %.not.i.not30.i.i24.i = icmp eq i16 %i.eh, 0
  br i1 %.not.i.not30.i.i24.i, label %._crit_edge.i.i29.i, label %.lr.ph.i.i25.i

.lr.ph.i.i25.i:                                   ; preds = %bb.ag, %bb.ah
  %.sroa.05.0.i31.i.i26.i = phi i16 [ %i.eu, %bb.ah ], [ %i.eh, %bb.ag ] ; 3 uses
  %i.ei = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i31.i.i26.i, i1 true)
  %i.ej = zext nneg i16 %i.ei to i64
  %i.ek = add i64 %.sroa.01.0.i.i.i22.i, %i.ej
  %i.el = and i64 %i.ek, %.sroa.6.0.i
  %i.em = sub nsw i64 0, %i.el
  %i.en = getelementptr inbounds [16 x i8], ptr %.sroa.018.0.i, i64 %i.em ; 2 uses
  %i.eo = getelementptr inbounds i8, ptr %i.en, i64 -16
  %.val2.i.i.i27.i = load i32, ptr %i.eo, align 4, !noalias !34351, !noundef !56
  %i.ep = icmp eq i32 %.val2.i.i.i27.i, %.sroa.4403.12.extract.trunc
  br i1 %i.ep, label %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit34.i, label %bb.ah, !prof !66

._crit_edge.i.i29.i:                              ; preds = %bb.ah, %bb.ag
  %i.eq = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i23.i, splat (i8 -1)
  %i.er = bitcast <16 x i1> %i.eq to i16
  %i.es = icmp eq i16 %i.er, 0
  br i1 %i.es, label %bb.ai, label %select.unfold38.i.invoke, !prof !60

bb.ah:                                            ; preds = %.lr.ph.i.i25.i
  %i.et = add i16 %.sroa.05.0.i31.i.i26.i, -1
  %i.eu = and i16 %i.et, %.sroa.05.0.i31.i.i26.i  ; 2 uses
  %.not.i.not.i.i28.i = icmp eq i16 %i.eu, 0
  br i1 %.not.i.not.i.i28.i, label %._crit_edge.i.i29.i, label %.lr.ph.i.i25.i

bb.ai:                                            ; preds = %._crit_edge.i.i29.i
  %i.ev = add i64 %.sroa.011.0.i.i.i20.i, 16      ; 2 uses
  %i.ew = add i64 %.sroa.01.0.i.i.i22.i, %i.ev
  br label %bb.ag

_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit34.i: ; preds = %.lr.ph.i.i25.i
  %i.ex = getelementptr inbounds i8, ptr %i.en, i64 -8
  %i.ey = load i64, ptr %i.ex, align 8, !noalias !34349, !noundef !56
  br label %bb.af

select.unfold38.i.invoke:                         ; preds = %bb.z, %._crit_edge.i.i.i, %._crit_edge.i.i29.i
  %i.ez = phi ptr [ @1163, %._crit_edge.i.i.i ], [ @1164, %._crit_edge.i.i29.i ], [ @1163, %bb.z ]
  invoke void @_RNvNtCslwFuT2d6ECx_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ez) #60
          to label %select.unfold38.i.cont unwind label %.loopexit.split-lp483.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

select.unfold38.i.cont:                           ; preds = %select.unfold38.i.invoke
  unreachable

bb.aj:                                            ; preds = %bb.af
  invoke void @_RNvNvXsA_NtCsi0YPOvDEjiZ_4pyo38instanceINtB7_2PypENtNtCslwFuT2d6ECx_4core5clone5Clone5clone13incref_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1165) #61
          to label %.noexc110 unwind label %.loopexit.split-lp483.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc110:                                        ; preds = %bb.aj
  unreachable

bb.ak:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx.exit216
  %i.fa = icmp eq i64 %.sroa.6.0.i, 0
  %or.cond.i.i.i = select i1 %.not.i105, i1 true, i1 %i.fa
  br i1 %or.cond.i.i.i, label %_RNvMs7_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EE3newCskcxRuJ53GpR_9rustworkx.exit, label %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i

_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i: ; preds = %bb.ak
  %i.fb = shl i64 %.sroa.6.0.i, 4                 ; 2 uses
  %i.fc = add i64 %i.fb, 16                       ; 2 uses
  %i.fd = add i64 %.sroa.6.0.i, 17
  %i.fe = add i64 %i.fd, %i.fc                    ; 4 uses
  %i.ff = icmp uge i64 %i.fe, %i.fc
  %i.fg = icmp ult i64 %i.fe, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ff)
  tail call void @llvm.assume(i1 %i.fg)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.018.0.i) ]
  %i.fh = icmp eq i64 %i.fe, 0
  br i1 %i.fh, label %_RNvMs7_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EE3newCskcxRuJ53GpR_9rustworkx.exit, label %bb.al

bb.al:                                            ; preds = %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i
  %i.fi = sub nuw nsw i64 -16, %i.fb
  %i.fj = getelementptr inbounds i8, ptr %.sroa.018.0.i, i64 %i.fi
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fj, i64 noundef %i.fe, i64 noundef range(i64 1, -9223372036854775807) 16) #59
  br label %_RNvMs7_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EE3newCskcxRuJ53GpR_9rustworkx.exit

_RNvMs7_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EE3newCskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.al, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i, %bb.ak
  %i.fk = add i64 %.val6.i200, %.val5.i201        ; 2 uses
  %i.fl = tail call noundef i64 @llvm.umin.i64(i64 %.val3.i197, i64 %.val4.i198) ; 3 uses
  %i.fm = icmp eq i64 %i.fk, 1
  %i.fn = icmp ult i64 %i.fl, 2
  %spec.select.i.i.i = or i1 %i.fn, %i.fm         ; 3 uses
  %.sroa.6.0.i116.idx = select i1 %spec.select.i.i.i, i64 %i.fl, i64 0
  %.sroa.6.0.i116 = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %.sroa.6.0.i116.idx ; 2 uses
  %i.fo = ptrtoint ptr %i.cg to i64
  %spec.select = select i1 %spec.select.i.i.i, i64 %i.fo, i64 0
  %spec.select743 = select i1 %spec.select.i.i.i, i64 2, i64 1
  br label %bb.am

bb.am:                                            ; preds = %_RNvMs7_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EE3newCskcxRuJ53GpR_9rustworkx.exit, %bb.ao
  %.sroa.5323.0 = phi i64 [ %.sroa.5323.1706, %bb.ao ], [ %spec.select, %_RNvMs7_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EE3newCskcxRuJ53GpR_9rustworkx.exit ] ; 4 uses
  %.sroa.0322.0 = phi i64 [ %.sroa.0322.1707, %bb.ao ], [ %spec.select743, %_RNvMs7_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EE3newCskcxRuJ53GpR_9rustworkx.exit ]
  switch i64 %.sroa.0322.0, label %_RNvXsg_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread701 [
    i64 2, label %bb.an
    i64 0, label %_RNvXsg_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread
  ]

_RNvXsg_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread701: ; preds = %bb.am
  %i.fp = mul i64 %.sroa.5323.0, %i.fk
  %i.fq = add i64 %.sroa.5323.0, 1                ; 2 uses
  %i.fr = icmp ult i64 %i.fq, %i.fl
  %spec.select.i.i120 = zext i1 %i.fr to i64
  %i.fs = getelementptr inbounds [8 x i8], ptr %.sroa.6.0.i116, i64 %i.fp
  br label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.ft = inttoptr i64 %.sroa.5323.0 to ptr       ; 3 uses
  %i.fu = icmp eq ptr %.sroa.6.0.i116, %i.ft
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.fw = ptrtoint ptr %i.fv to i64
  %.not65 = icmp eq i64 %.sroa.5323.0, 0
  %or.cond745 = or i1 %i.fu, %.not65
  br i1 %or.cond745, label %_RNvXsg_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread, label %bb.ao

bb.ao:                                            ; preds = %bb.an, %_RNvXsg_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread701
  %.sroa.0.0.i118708 = phi ptr [ %i.fs, %_RNvXsg_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread701 ], [ %i.ft, %bb.an ]
  %.sroa.0322.1707 = phi i64 [ %spec.select.i.i120, %_RNvXsg_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread701 ], [ 2, %bb.an ]
  %.sroa.5323.1706 = phi i64 [ %i.fq, %_RNvXsg_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread701 ], [ %i.fw, %bb.an ]
  store double 0.000000e+00, ptr %.sroa.0.0.i118708, align 8
  br label %bb.am

_RNvXsg_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread: ; preds = %bb.am, %bb.an
  %i.fx = icmp ult i64 %i.r, %6
  br i1 %i.fx, label %.preheader, label %bb.ap

.preheader:                                       ; preds = %_RNvXsg_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread
  %.not606 = icmp eq i64 %i.r, 0
  br i1 %.not606, label %.loopexit468, label %.lr.ph603

.lr.ph603:                                        ; preds = %.preheader
  %.not67 = icmp eq ptr %.sroa.0256.0, null
  %i.fy = add i64 %i.r, -1                        ; 2 uses
  %i.fz = mul i64 %.val5.i201, %i.fy
  %i.ga = shl i64 %i.fz, 3                        ; 2 uses
  %umin = tail call i64 @llvm.umin.i64(i64 %.val4.i198, i64 %i.fy)
  %i.gb = shl i64 %umin, 3                        ; 2 uses
  %i.gc = getelementptr i8, ptr %i.cg, i64 %i.ga
  %i.gd = getelementptr i8, ptr %i.gc, i64 %i.gb
  %scevgep = getelementptr i8, ptr %i.gd, i64 8   ; 2 uses
  %i.ge = shl i64 %.val5.i201, 3
  %i.gf = getelementptr i8, ptr %i.cg, i64 %i.ga
  %i.gg = getelementptr i8, ptr %i.gf, i64 8
  %i.gh = getelementptr i8, ptr %i.cg, i64 %i.gb
  %i.gi = getelementptr i8, ptr %i.gh, i64 8
  %i.gj = add i64 %i.r, -1
  %i.gk = tail call i64 @llvm.umin.i64(i64 %.val4.i198, i64 %i.gj)
  %i.gl = add i64 %i.gk, 1                        ; 3 uses
  %min.iters.check803 = icmp ugt i64 %i.gl, 8
  %ident.check.not = icmp eq i64 %.val6.i200, 1
  %or.cond820 = select i1 %min.iters.check803, i1 %ident.check.not, i1 false
  %i.gm = insertelement <2 x ptr> poison, ptr %i.cg, i64 0
  %i.gn = shufflevector <2 x ptr> %i.gm, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.go = insertelement <2 x ptr> poison, ptr %scevgep, i64 0
  %i.gp = shufflevector <2 x ptr> %i.go, <2 x ptr> poison, <2 x i32> zeroinitializer
  %.mask = and i64 %.val5.i201, 1152921504606846976
  %stride.check796 = icmp ne i64 %.mask, 0
  %bound0797 = icmp ult ptr %i.cg, %scevgep
  %invariant.op = or i1 %bound0797, %stride.check796
  %i.gq = and i64 %i.gl, 3                        ; 2 uses
  %i.gr = icmp eq i64 %i.gq, 0
  %i.gs = select i1 %i.gr, i64 4, i64 %i.gq
  %n.vec805 = sub i64 %i.gl, %i.gs                ; 2 uses
  br label %bb.be

bb.ap:                                            ; preds = %_RNvXsg_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread
  %.not66 = icmp eq ptr %.sroa.0256.0, null
  %.not605 = icmp eq i64 %i.r, 0                  ; 2 uses
  br i1 %.not66, label %.preheader469, label %.preheader472

.preheader472:                                    ; preds = %bb.ap
  br i1 %.not605, label %.loopexit468, label %.lr.ph539

.lr.ph539:                                        ; preds = %.preheader472
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %.sroa.425.sroa.3.0..sroa.425.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %.sroa.425.sroa.4.0..sroa.425.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.gt = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.gu = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %.sroa.10347.56..sroa_idx348 = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %.sroa.11350.sroa.4.0..sroa.11350.56..sroa_idx351.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %.sroa.11350.sroa.5.0..sroa.11350.56..sroa_idx351.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %.sroa.11350.sroa.6.0..sroa.11350.56..sroa_idx351.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %.sroa.5339.0..sroa_idx340 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.6342.0..sroa_idx343 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.6342.sroa.4.0..sroa.6342.0..sroa_idx343.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.6342.sroa.5.0..sroa.6342.0..sroa_idx343.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.6342.sroa.6.0..sroa.6342.0..sroa_idx343.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.gv = tail call i64 @llvm.umin.i64(i64 %.val3.i197, i64 %i.r) ; 2 uses
  %i.gw = icmp eq i64 %i.gv, -1
  %i.gx = zext i1 %i.gw to i64
  %i.gy = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.ha = insertelement <2 x i64> poison, i64 %i.r, i64 0
  %i.hb = shufflevector <2 x i64> %i.ha, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %bb.az

.preheader469:                                    ; preds = %bb.ap
  br i1 %.not605, label %.loopexit468, label %.lr.ph541

.lr.ph541:                                        ; preds = %.preheader469
  %.sroa.236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.sroa.438.sroa.3.0..sroa.438.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %.sroa.438.sroa.4.0..sroa.438.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.hc = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.5365.0..sroa_idx366 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.6368.0..sroa_idx369 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.6368.sroa.4.0..sroa.6368.0..sroa_idx369.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.6368.sroa.5.0..sroa.6368.0..sroa_idx369.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.6368.sroa.6.0..sroa.6368.0..sroa_idx369.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.hd = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.he = icmp eq i64 %.val3.i197, -1
  %i.hf = zext i1 %i.he to i64
  %i.hg = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  br label %bb.aq

bb.aq:                                            ; preds = %.lr.ph541, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj1_EdEECskcxRuJ53GpR_9rustworkx.exit132
  %.sroa.061.0540 = phi i64 [ 0, %.lr.ph541 ], [ %i.hi, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj1_EdEECskcxRuJ53GpR_9rustworkx.exit132 ] ; 3 uses
  %i.hi = add nuw i64 %.sroa.061.0540, 1          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i64 %.sroa.061.0540, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 2, ptr %i.g, align 8
  store i64 %.sroa.061.0540, ptr %.sroa.236.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.438.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.438.sroa.3.0..sroa.438.0..sroa_idx.sroa_idx, align 8
  store i64 1, ptr %.sroa.438.sroa.4.0..sroa.438.0..sroa_idx.sroa_idx, align 8
  invoke fastcc void @_RINvMs1_NtCshByAT0BfsDP_7ndarray12impl_methodsINtB8_8ArrayRefdINtNtNtB8_9dimension3dim3DimAjj2_EE5sliceINtNtB8_5slice9SliceInfoANtB1G_13SliceInfoElemB1s_BY_IBZ_Ajj1_EEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.cd, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(64) %i.g)
          to label %bb.au unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit468:                                     ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj1_EdEECskcxRuJ53GpR_9rustworkx.exit153, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj1_EdEECskcxRuJ53GpR_9rustworkx.exit132, %.loopexit467.split.us, %.preheader472, %.preheader469, %.preheader
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 64, i1 false)
  %.sroa.4383.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %.sroa.0256.0, ptr %.sroa.4383.0..sroa_idx, align 8
  %.sroa.5384.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %.sroa.10.0, ptr %.sroa.5384.0..sroa_idx, align 8
  %.sroa.6385.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %.sroa.12.0, ptr %.sroa.6385.0..sroa_idx, align 8
  %.sroa.7386.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %.sroa.14.0, ptr %.sroa.7386.0..sroa_idx, align 8
  %.sroa.8387.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %i.r, ptr %.sroa.8387.0..sroa_idx, align 8
  %.sroa.9388.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %i.r, ptr %.sroa.9388.0..sroa_idx, align 8
  %.sroa.10389.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %i.r, ptr %.sroa.10389.0..sroa_idx, align 8
  %.sroa.11390.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %.sroa.25.0, ptr %.sroa.11390.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br i1 %.not.i190, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit122, label %bb.ar

bb.ar:                                            ; preds = %.loopexit468
  %.val.i.i.i.i.i121 = load i64, ptr %i.by, align 8, !noundef !56
  %i.hj = icmp sgt i64 %.val.i.i.i.i.i121, 0
  br i1 %i.hj, label %bb.at, label %bb.as, !prof !109

bb.as:                                            ; preds = %bb.ar
  call void @_RNvNvXsB_NtCsi0YPOvDEjiZ_4pyo38instanceINtB7_2PypENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %2)
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit122

bb.at:                                            ; preds = %bb.ar
  call void @_Py_DecRef(ptr noundef nonnull %2) #59
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit122

bb.au:                                            ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  invoke fastcc void @_RNvMs_NtCshByAT0BfsDP_7ndarray12impl_methodsINtB6_8ArrayRefdINtNtNtB6_9dimension3dim3DimAjj1_EE8to_ownedCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h)
          to label %bb.aw unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.av:                                            ; preds = %.noexc128, %bb.aw
  %i.hk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34352)
  call void @llvm.experimental.noalias.scope.decl(metadata !34353)
  call void @llvm.experimental.noalias.scope.decl(metadata !34354)
  %i.hl = load i64, ptr %i.hg, align 8, !alias.scope !34355, !noundef !56 ; 2 uses
  %.not.i.i.i125 = icmp eq i64 %i.hl, 0
  br i1 %.not.i.i.i125, label %.body, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i126

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i126: ; preds = %bb.av
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hh, i8 0, i64 16, i1 false), !alias.scope !34355
  %i.hm = load ptr, ptr %i.i, align 8, !alias.scope !34355, !nonnull !56, !noundef !56
  %i.hn = shl nuw i64 %i.hl, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hm, i64 noundef %i.hn, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !34355
  br label %.body

bb.aw:                                            ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.j, ptr %i.e, align 8, !noalias !34356
  store ptr %i.i, ptr %i.hc, align 8, !noalias !34356
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !34357
  store i64 0, ptr %i.d, align 8, !noalias !34358
  store i64 %.val3.i197, ptr %.sroa.5365.0..sroa_idx366, align 8, !noalias !34358
  store i64 %.val5.i201, ptr %.sroa.6368.0..sroa_idx369, align 8, !noalias !34358
  store i64 %.val4.i198, ptr %.sroa.6368.sroa.4.0..sroa.6368.0..sroa_idx369.sroa_idx, align 8, !noalias !34358
  store i64 %.val6.i200, ptr %.sroa.6368.sroa.5.0..sroa.6368.0..sroa_idx369.sroa_idx, align 8, !noalias !34358
  store ptr %i.cg, ptr %.sroa.6368.sroa.6.0..sroa.6368.0..sroa_idx369.sroa_idx, align 8, !noalias !34358
  store i64 1, ptr %i.hd, align 8, !noalias !34357
  %i.ho = invoke noundef i64 @_RNvCslLviULm4Laq_10rayon_core19current_num_threads()
          to label %.noexc128 unwind label %bb.av

.noexc128:                                        ; preds = %bb.aw
  %spec.store.select.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ho, i64 %i.hf)
  invoke fastcc void @_RINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB1k_9iterators11AxisIterMutdINtNtNtB1k_9dimension3dim3DimAjj1_EEEINtNtB6_8for_each15ForEachConsumerNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph8DirectedEs_0EEB40_(i64 noundef %.val3.i197, i1 noundef zeroext false, i64 noundef %spec.store.select.i.i.i.i.i.i, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e)
          to label %bb.ax unwind label %bb.av

bb.ax:                                            ; preds = %.noexc128
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !34357
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !34359)
  call void @llvm.experimental.noalias.scope.decl(metadata !34360)
  call void @llvm.experimental.noalias.scope.decl(metadata !34361)
  %i.hp = load i64, ptr %i.hg, align 8, !alias.scope !34362, !noundef !56 ; 2 uses
  %.not.i.i.i130 = icmp eq i64 %i.hp, 0
  br i1 %.not.i.i.i130, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj1_EdEECskcxRuJ53GpR_9rustworkx.exit132, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i131

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i131: ; preds = %bb.ax
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hh, i8 0, i64 16, i1 false), !alias.scope !34362
  %i.hq = load ptr, ptr %i.i, align 8, !alias.scope !34362, !nonnull !56, !noundef !56
  %i.hr = shl nuw i64 %i.hp, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hq, i64 noundef %i.hr, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !34362
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj1_EdEECskcxRuJ53GpR_9rustworkx.exit132

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj1_EdEECskcxRuJ53GpR_9rustworkx.exit132: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i131, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %exitcond651.not = icmp eq i64 %i.hi, %i.r
  br i1 %exitcond651.not, label %.loopexit468, label %bb.aq

bb.ay:                                            ; preds = %bb.c, %.body193
  %i.hs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58
  unreachable

bb.az:                                            ; preds = %.lr.ph539, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj1_EdEECskcxRuJ53GpR_9rustworkx.exit153
  %.sroa.059.0538 = phi i64 [ 0, %.lr.ph539 ], [ %i.ht, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj1_EdEECskcxRuJ53GpR_9rustworkx.exit153 ] ; 3 uses
  %i.ht = add nuw i64 %.sroa.059.0538, 1          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store i64 %.sroa.059.0538, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i64 2, ptr %i.k, align 8
  store i64 %.sroa.059.0538, ptr %.sroa.2.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.425.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.425.sroa.3.0..sroa.425.0..sroa_idx.sroa_idx, align 8
  store i64 1, ptr %.sroa.425.sroa.4.0..sroa.425.0..sroa_idx.sroa_idx, align 8
  invoke fastcc void @_RINvMs1_NtCshByAT0BfsDP_7ndarray12impl_methodsINtB8_8ArrayRefdINtNtNtB8_9dimension3dim3DimAjj2_EE5sliceINtNtB8_5slice9SliceInfoANtB1G_13SliceInfoElemB1s_BY_IBZ_Ajj1_EEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.cd, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(64) %i.k)
          to label %bb.ba unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  invoke fastcc void @_RNvMs_NtCshByAT0BfsDP_7ndarray12impl_methodsINtB6_8ArrayRefdINtNtNtB6_9dimension3dim3DimAjj1_EE8to_ownedCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.l)
          to label %bb.bc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bb:                                            ; preds = %.noexc149, %bb.bc
  %i.hu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34363)
  call void @llvm.experimental.noalias.scope.decl(metadata !34364)
  call void @llvm.experimental.noalias.scope.decl(metadata !34365)
  %i.hv = load i64, ptr %i.gy, align 8, !alias.scope !34366, !noundef !56 ; 2 uses
  %.not.i.i.i135 = icmp eq i64 %i.hv, 0
  br i1 %.not.i.i.i135, label %.body, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i136

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i136: ; preds = %bb.bb
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gz, i8 0, i64 16, i1 false), !alias.scope !34366
  %i.hw = load ptr, ptr %i.m, align 8, !alias.scope !34366, !nonnull !56, !noundef !56
  %i.hx = shl nuw i64 %i.hv, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hw, i64 noundef %i.hx, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !34366
  br label %.body

bb.bc:                                            ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.14.0) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.n, ptr %i.c, align 8, !noalias !34367
  store ptr %i.m, ptr %i.gt, align 8, !noalias !34367
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !34368
  store i64 0, ptr %i.gu, align 8, !noalias !34369
  store <2 x i64> %i.hb, ptr %.sroa.10347.56..sroa_idx348, align 8, !noalias !34369
  store i64 %i.r, ptr %.sroa.11350.sroa.4.0..sroa.11350.56..sroa_idx351.sroa_idx, align 8, !noalias !34369
  store i64 %.sroa.25.0, ptr %.sroa.11350.sroa.5.0..sroa.11350.56..sroa_idx351.sroa_idx, align 8, !noalias !34369
  store ptr %.sroa.14.0, ptr %.sroa.11350.sroa.6.0..sroa.11350.56..sroa_idx351.sroa_idx, align 8, !noalias !34369
  store i64 0, ptr %i.b, align 8, !noalias !34370
  store i64 %.val3.i197, ptr %.sroa.5339.0..sroa_idx340, align 8, !noalias !34370
  store i64 %.val5.i201, ptr %.sroa.6342.0..sroa_idx343, align 8, !noalias !34370
  store i64 %.val4.i198, ptr %.sroa.6342.sroa.4.0..sroa.6342.0..sroa_idx343.sroa_idx, align 8, !noalias !34370
  store i64 %.val6.i200, ptr %.sroa.6342.sroa.5.0..sroa.6342.0..sroa_idx343.sroa_idx, align 8, !noalias !34370
  store ptr %i.cg, ptr %.sroa.6342.sroa.6.0..sroa.6342.0..sroa_idx343.sroa_idx, align 8, !noalias !34370
  store i64 1, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !34371
  store i64 1, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !34372
  %i.hy = invoke noundef i64 @_RNvCslLviULm4Laq_10rayon_core19current_num_threads()
          to label %.noexc149 unwind label %bb.bb

.noexc149:                                        ; preds = %bb.bc
  %spec.store.select.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.hy, i64 %i.gx)
  invoke fastcc void @_RINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB6_3zip11ZipProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB1J_9iterators11AxisIterMutdINtNtNtB1J_9dimension3dim3DimAjj1_EEEIB1D_IB2B_jB37_EEEINtNtB6_8for_each15ForEachConsumerNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph8DirectedE0EEB4H_(i64 noundef %i.gv, i1 noundef zeroext false, i64 noundef %spec.store.select.i.i.i.i.i.i.i.i.i.i, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c)
          to label %bb.bd unwind label %bb.bb

bb.bd:                                            ; preds = %.noexc149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !34368
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !34373)
  call void @llvm.experimental.noalias.scope.decl(metadata !34374)
  call void @llvm.experimental.noalias.scope.decl(metadata !34375)
  %i.hz = load i64, ptr %i.gy, align 8, !alias.scope !34376, !noundef !56 ; 2 uses
  %.not.i.i.i151 = icmp eq i64 %i.hz, 0
  br i1 %.not.i.i.i151, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj1_EdEECskcxRuJ53GpR_9rustworkx.exit153, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i152

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i152: ; preds = %bb.bd
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gz, i8 0, i64 16, i1 false), !alias.scope !34376
  %i.ia = load ptr, ptr %i.m, align 8, !alias.scope !34376, !nonnull !56, !noundef !56
  %i.ib = shl nuw i64 %i.hz, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ia, i64 noundef %i.ib, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !34376
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj1_EdEECskcxRuJ53GpR_9rustworkx.exit153

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj1_EdEECskcxRuJ53GpR_9rustworkx.exit153: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i152, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %exitcond650.not = icmp eq i64 %i.ht, %i.r
  br i1 %exitcond650.not, label %.loopexit468, label %bb.az

bb.be:                                            ; preds = %.lr.ph603, %.loopexit467.split.us
  %.sroa.053.0602 = phi i64 [ 0, %.lr.ph603 ], [ %i.ie, %.loopexit467.split.us ] ; 8 uses
  %i.ic = shl i64 %.sroa.053.0602, 3              ; 2 uses
  %scevgep788 = getelementptr i8, ptr %i.cg, i64 %i.ic
  %scevgep789 = getelementptr i8, ptr %i.gg, i64 %i.ic
  %i.id = mul i64 %i.ge, %.sroa.053.0602          ; 2 uses
  %scevgep790 = getelementptr i8, ptr %i.cg, i64 %i.id
  %scevgep791 = getelementptr i8, ptr %i.gi, i64 %i.id
  %i.ie = add nuw i64 %.sroa.053.0602, 1          ; 2 uses
  %i.if = mul i64 %.val6.i200, %.sroa.053.0602
  %i.ig = getelementptr [8 x i8], ptr %i.cg, i64 %i.if ; 2 uses
  %i.ih = mul i64 %.sroa.053.0602, %.val5.i201    ; 5 uses
  %i.ii = mul i64 %.sroa.053.0602, %.sroa.25.0
  %i.ij = getelementptr [8 x i8], ptr %.sroa.14.0, i64 %i.ii
  %exitcond664.not = icmp eq i64 %.sroa.053.0602, %.val4.i198
  br i1 %exitcond664.not, label %.split551.us.invoke, label %.split555

.split555:                                        ; preds = %bb.be
  %i.ik = icmp ult i64 %.sroa.053.0602, %.val3.i197
  %.fr = freeze i1 %i.ik
  br i1 %.fr, label %.split555.split.us, label %.split551.us.invoke

.split555.split.us:                               ; preds = %.split555
  br i1 %.not67, label %.split555.split.us.split.us.preheader, label %.split555.split.us.split

.split555.split.us.split.us.preheader:            ; preds = %.split555.split.us
  %i.il = insertelement <2 x ptr> poison, ptr %scevgep789, i64 0
  %i.im = insertelement <2 x ptr> %i.il, ptr %scevgep791, i64 1
  %i.in = icmp ult <2 x ptr> %i.gn, %i.im
  %i.io = insertelement <2 x ptr> poison, ptr %scevgep788, i64 0
  %i.ip = insertelement <2 x ptr> %i.io, ptr %scevgep790, i64 1
  %i.iq = icmp ult <2 x ptr> %i.ip, %i.gp
  %i.ir = and <2 x i1> %i.in, %i.iq
  %i.is = bitcast <2 x i1> %i.ir to i2
  %i.it = icmp ne i2 %i.is, 0
  %op.rdx821.reass = or i1 %i.it, %invariant.op
  br label %.split555.split.us.split.us

.split555.split.us.split.us:                      ; preds = %.split555.split.us.split.us.preheader, %.loopexit.us.us
  %.sroa.055.0554.us.us = phi i64 [ %i.iu, %.loopexit.us.us ], [ 0, %.split555.split.us.split.us.preheader ] ; 4 uses
  %i.iu = add nuw i64 %.sroa.055.0554.us.us, 1    ; 2 uses
  %i.iv = mul i64 %.sroa.055.0554.us.us, %.val5.i201 ; 5 uses
  %i.iw = getelementptr [8 x i8], ptr %i.ig, i64 %i.iv ; 3 uses
  %invariant.gep543.us.us = getelementptr [8 x i8], ptr %i.cg, i64 %i.iv ; 5 uses
  %exitcond662.not = icmp eq i64 %.sroa.055.0554.us.us, %.val3.i197
  br i1 %exitcond662.not, label %.split551.us.invoke, label %.split.us.us

.split.us.us:                                     ; preds = %.split555.split.us.split.us
  %i.ix = icmp ult i64 %.sroa.055.0554.us.us, %.val3.i197
  %.fr552.us.us = freeze i1 %i.ix
  br i1 %.fr552.us.us, label %.split.split.split.us558.us.preheader, label %.split.split.split.us.us.us

.split.split.split.us558.us.preheader:            ; preds = %.split.us.us
  %or.cond820.not = xor i1 %or.cond820, true
  %brmerge = select i1 %or.cond820.not, i1 true, i1 %op.rdx821.reass
  br i1 %brmerge, label %.split.split.split.us558.us.preheader822, label %vector.ph804

.split.split.split.us558.us.preheader822:         ; preds = %.split.split.split.us558.us.preheader, %pred.store.continue816
  %.sroa.057.0542.us553.us.us.ph = phi i64 [ %n.vec805, %pred.store.continue816 ], [ 0, %.split.split.split.us558.us.preheader ]
  br label %.split.split.split.us558.us

vector.ph804:                                     ; preds = %.split.split.split.us558.us.preheader
  %i.iy = load double, ptr %i.iw, align 8, !alias.scope !34377, !noundef !56
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.iy, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body806

vector.body806:                                   ; preds = %pred.store.continue816, %vector.ph804
  %index807 = phi i64 [ 0, %vector.ph804 ], [ %index.next817, %pred.store.continue816 ] ; 6 uses
  %i.iz = getelementptr [8 x i8], ptr %i.cg, i64 %index807 ; 2 uses
  %i.ja = getelementptr [8 x i8], ptr %i.iz, i64 %i.ih ; 2 uses
  %i.jb = getelementptr i8, ptr %i.ja, i64 16
  %wide.load = load <2 x double>, ptr %i.ja, align 8, !alias.scope !34378
  %wide.load808 = load <2 x double>, ptr %i.jb, align 8, !alias.scope !34378
  %i.jc = fadd <2 x double> %broadcast.splat, %wide.load ; 3 uses
  %i.jd = fadd <2 x double> %broadcast.splat, %wide.load808 ; 3 uses
  %i.je = getelementptr [8 x i8], ptr %i.iz, i64 %i.iv ; 2 uses
  %i.jf = getelementptr i8, ptr %i.je, i64 16
  %wide.load809 = load <2 x double>, ptr %i.je, align 8, !alias.scope !34379
  %wide.load810 = load <2 x double>, ptr %i.jf, align 8, !alias.scope !34379
  %i.jg = fcmp olt <2 x double> %i.jc, %wide.load809 ; 2 uses
  %i.jh = fcmp olt <2 x double> %i.jd, %wide.load810 ; 2 uses
  %i.ji = extractelement <2 x i1> %i.jg, i64 0
  br i1 %i.ji, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body806
  %i.jj = getelementptr [8 x i8], ptr %invariant.gep543.us.us, i64 %index807
  %i.jk = extractelement <2 x double> %i.jc, i64 0
  store double %i.jk, ptr %i.jj, align 8, !alias.scope !34380, !noalias !34381
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body806
  %i.jl = extractelement <2 x i1> %i.jg, i64 1
  br i1 %i.jl, label %pred.store.if811.a, label %pred.store.continue812.a

pred.store.if811.a:                               ; preds = %pred.store.continue
  %i.jm = getelementptr [8 x i8], ptr %invariant.gep543.us.us, i64 %index807
  %i.jn = getelementptr i8, ptr %i.jm, i64 8
  %i.jo = extractelement <2 x double> %i.jc, i64 1
  store double %i.jo, ptr %i.jn, align 8, !alias.scope !34380, !noalias !34381
  br label %pred.store.continue812.a

pred.store.continue812.a:                         ; preds = %pred.store.if811.a, %pred.store.continue
  %i.jp = extractelement <2 x i1> %i.jh, i64 0
  br i1 %i.jp, label %pred.store.if813, label %pred.store.continue814

pred.store.if813:                                 ; preds = %pred.store.continue812.a
  %i.jq = getelementptr [8 x i8], ptr %invariant.gep543.us.us, i64 %index807
  %i.jr = getelementptr i8, ptr %i.jq, i64 16
  %i.js = extractelement <2 x double> %i.jd, i64 0
  store double %i.js, ptr %i.jr, align 8, !alias.scope !34380, !noalias !34381
  br label %pred.store.continue814

pred.store.continue814:                           ; preds = %pred.store.if813, %pred.store.continue812.a
  %i.jt = extractelement <2 x i1> %i.jh, i64 1
  br i1 %i.jt, label %pred.store.if815, label %pred.store.continue816

pred.store.if815:                                 ; preds = %pred.store.continue814
  %i.ju = getelementptr [8 x i8], ptr %invariant.gep543.us.us, i64 %index807
  %i.jv = getelementptr i8, ptr %i.ju, i64 24
  %i.jw = extractelement <2 x double> %i.jd, i64 1
  store double %i.jw, ptr %i.jv, align 8, !alias.scope !34380, !noalias !34381
  br label %pred.store.continue816

pred.store.continue816:                           ; preds = %pred.store.if815, %pred.store.continue814
  %index.next817 = add nuw i64 %index807, 4       ; 2 uses
  %i.jx = icmp eq i64 %index.next817, %n.vec805
  br i1 %i.jx, label %.split.split.split.us558.us.preheader822, label %vector.body806, !llvm.loop !34310

.split.split.split.us.us.us:                      ; preds = %.split.us.us
  %i.jy = load double, ptr %i.iw, align 8, !noundef !56
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bh, %.split.split.split.us.us.us
  %.sroa.057.0542.us.us.us = phi i64 [ 0, %.split.split.split.us.us.us ], [ %i.jz, %bb.bh ] ; 3 uses
  %i.jz = add nuw i64 %.sroa.057.0542.us.us.us, 1 ; 2 uses
  %exitcond658.not = icmp eq i64 %.sroa.057.0542.us.us.us, %.val4.i198
  br i1 %exitcond658.not, label %.split551.us.invoke, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ka = mul i64 %.val6.i200, %.sroa.057.0542.us.us.us
  %i.kb = getelementptr [8 x i8], ptr %i.cg, i64 %i.ka ; 2 uses
  %i.kc = getelementptr [8 x i8], ptr %i.kb, i64 %i.ih
  %i.kd = load double, ptr %i.kc, align 8, !noundef !56
  %i.ke = fadd double %i.jy, %i.kd
  %i.kf = getelementptr [8 x i8], ptr %i.kb, i64 %i.iv
  %i.kg = load double, ptr %i.kf, align 8, !noundef !56
  %i.kh = fcmp olt double %i.ke, %i.kg
  br i1 %i.kh, label %.split551.us.invoke, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %exitcond659.not = icmp eq i64 %i.jz, %i.r
  br i1 %exitcond659.not, label %.loopexit.us.us, label %bb.bf

.split.split.split.us558.us:                      ; preds = %.split.split.split.us558.us.preheader822, %bb.bk
  %.sroa.057.0542.us553.us.us = phi i64 [ %i.ki, %bb.bk ], [ %.sroa.057.0542.us553.us.us.ph, %.split.split.split.us558.us.preheader822 ] ; 3 uses
  %i.ki = add nuw i64 %.sroa.057.0542.us553.us.us, 1 ; 2 uses
  %exitcond660.not = icmp eq i64 %.sroa.057.0542.us553.us.us, %.val4.i198
  br i1 %exitcond660.not, label %.split551.us.invoke, label %bb.bi

bb.bi:                                            ; preds = %.split.split.split.us558.us
  %i.kj = load double, ptr %i.iw, align 8, !noundef !56
  %i.kk = mul i64 %.val6.i200, %.sroa.057.0542.us553.us.us ; 2 uses
  %i.kl = getelementptr [8 x i8], ptr %i.cg, i64 %i.kk ; 2 uses
  %i.km = getelementptr [8 x i8], ptr %i.kl, i64 %i.ih
  %i.kn = load double, ptr %i.km, align 8, !noundef !56
  %i.ko = fadd double %i.kj, %i.kn                ; 2 uses
  %i.kp = getelementptr [8 x i8], ptr %i.kl, i64 %i.iv
  %i.kq = load double, ptr %i.kp, align 8, !noundef !56
  %i.kr = fcmp olt double %i.ko, %i.kq
  br i1 %i.kr, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %gep544.us.us.us = getelementptr [8 x i8], ptr %invariant.gep543.us.us, i64 %i.kk
  store double %i.ko, ptr %gep544.us.us.us, align 8
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %exitcond661.not = icmp eq i64 %i.ki, %i.r
  br i1 %exitcond661.not, label %.loopexit.us.us, label %.split.split.split.us558.us, !llvm.loop !34311

.loopexit.us.us:                                  ; preds = %bb.bh, %bb.bk
  %exitcond663.not = icmp eq i64 %i.iu, %i.r
  br i1 %exitcond663.not, label %.loopexit467.split.us, label %.split555.split.us.split.us

.split555.split.us.split:                         ; preds = %.split555.split.us, %.loopexit.us
  %.sroa.055.0554.us = phi i64 [ %i.ks, %.loopexit.us ], [ 0, %.split555.split.us ] ; 5 uses
  %i.ks = add nuw i64 %.sroa.055.0554.us, 1       ; 2 uses
  %i.kt = mul i64 %.sroa.055.0554.us, %.val5.i201 ; 4 uses
  %i.ku = getelementptr [8 x i8], ptr %i.ig, i64 %i.kt ; 2 uses
  %invariant.gep543.us = getelementptr [8 x i8], ptr %i.cg, i64 %i.kt
  %i.kv = mul i64 %.sroa.055.0554.us, %i.r        ; 2 uses
  %i.kw = getelementptr [8 x i8], ptr %i.ij, i64 %i.kv
  %invariant.gep545.us = getelementptr [8 x i8], ptr %.sroa.14.0, i64 %i.kv
  %exitcond656.not = icmp eq i64 %.sroa.055.0554.us, %.val3.i197
  br i1 %exitcond656.not, label %.split551.us.invoke, label %.split.us

.split.us:                                        ; preds = %.split555.split.us.split
  %i.kx = icmp ult i64 %.sroa.055.0554.us, %.val3.i197
  %.fr552.us = freeze i1 %i.kx
  br i1 %.fr552.us, label %.split.split.split.us558, label %.split.split.split.us.us

.split.split.split.us.us:                         ; preds = %.split.us
  %i.ky = load double, ptr %i.ku, align 8, !noundef !56
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bn, %.split.split.split.us.us
  %.sroa.057.0542.us.us = phi i64 [ 0, %.split.split.split.us.us ], [ %i.kz, %bb.bn ] ; 3 uses
  %i.kz = add nuw i64 %.sroa.057.0542.us.us, 1    ; 2 uses
  %exitcond652.not = icmp eq i64 %.sroa.057.0542.us.us, %.val4.i198
  br i1 %exitcond652.not, label %.split551.us.invoke, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.la = mul i64 %.val6.i200, %.sroa.057.0542.us.us
  %i.lb = getelementptr [8 x i8], ptr %i.cg, i64 %i.la ; 2 uses
  %i.lc = getelementptr [8 x i8], ptr %i.lb, i64 %i.ih
  %i.ld = load double, ptr %i.lc, align 8, !noundef !56
  %i.le = fadd double %i.ky, %i.ld
  %i.lf = getelementptr [8 x i8], ptr %i.lb, i64 %i.kt
  %i.lg = load double, ptr %i.lf, align 8, !noundef !56
  %i.lh = fcmp olt double %i.le, %i.lg
  br i1 %i.lh, label %.split551.us.invoke, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %exitcond653.not = icmp eq i64 %i.kz, %i.r
  br i1 %exitcond653.not, label %.loopexit.us, label %bb.bl

.split.split.split.us558:                         ; preds = %.split.us, %bb.bq
  %.sroa.057.0542.us560 = phi i64 [ %i.li, %bb.bq ], [ 0, %.split.us ] ; 4 uses
  %i.li = add nuw i64 %.sroa.057.0542.us560, 1    ; 2 uses
  %exitcond654.not = icmp eq i64 %.sroa.057.0542.us560, %.val4.i198
end_hunk_1
