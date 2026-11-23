Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_svg-9252d00a33f6f6d4.typst_svg.f56e30c74974af6c-cgu.0?download=true
inline.NumInlined: 2859
inline.NumDeleted: 1255
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_RNvMNtCsl4q486LaARA_9typst_svg5shapeNtB4_11SVGRenderer12render_shape:bb.a
  %i.nr = icmp eq i64 %i.nq, 0
  br i1 %i.nr, label %.loopexit.i.i, label %bb.t

bb.t:                                             ; preds = %.noexc5.i
  %i.ns = mul i64 %i.na, -1065810590584100411
  %i.nt = add i64 %i.ns, %i.nb
  %i.nu = mul i64 %i.nt, -1065810590584100411     ; 2 uses
  %i.nv = call noundef i64 @llvm.fshl.i64(i64 %i.nu, i64 %i.nu, i64 26) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5295)
  call void @llvm.experimental.noalias.scope.decl(metadata !5296)
  %i.nw = lshr i64 %i.nv, 57
  %i.nx = trunc nuw nsw i64 %i.nw to i8
  %i.ny = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCsl4q486LaARA_9typst_svg5shape24convert_geometry_to_path7___CACHE, i64 96), align 8, !alias.scope !5297, !noalias !5273, !noundef !12 ; 2 uses
  %i.nz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCsl4q486LaARA_9typst_svg5shape24convert_geometry_to_path7___CACHE, i64 88), align 8, !alias.scope !5297, !noalias !5273, !nonnull !12, !noundef !12 ; 2 uses
  %i.oa = insertelement <16 x i8> poison, i8 %i.nx, i64 0
  %i.ob = shufflevector <16 x i8> %i.oa, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.u

bb.u:                                             ; preds = %bb.x, %bb.t
  %.sroa.9.0.i.i.i.i.i.i = phi i64 [ 0, %bb.t ], [ %i.pa, %bb.x ]
  %.pn.i.i.i.i.i = phi i64 [ %i.nv, %bb.t ], [ %i.pb, %bb.x ]
  %.sroa.01.0.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i, %i.ny ; 3 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.nz, i64 %.sroa.01.0.i.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i.i = load <16 x i8>, ptr %i.oc, align 1, !noalias !5298 ; 2 uses
  %i.od = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i, %i.ob
  %i.oe = bitcast <16 x i1> %i.od to i16          ; 2 uses
  %.not.i.not30.i.i.i.i.i = icmp eq i16 %i.oe, 0
  br i1 %.not.i.not30.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.u, %bb.w
  %.sroa.06.0.i31.i.i.i.i.i = phi i16 [ %i.oz, %bb.w ], [ %i.oe, %bb.u ] ; 3 uses
  %i.of = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i.i.i, i1 true)
  %i.og = zext nneg i16 %i.of to i64
  %i.oh = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.og
  %i.oi = and i64 %i.oh, %i.ny
  %i.oj = sub nsw i64 0, %i.oi
  %i.ok = getelementptr inbounds [32 x i8], ptr %i.nz, i64 %i.oj ; 2 uses
  %i.ol = getelementptr inbounds i8, ptr %i.ok, i64 -32
  %.val2.i.i.i.i.i.i = load i128, ptr %i.ol, align 16, !noalias !5299, !noundef !12
  %i.om = icmp eq i128 %i.nf, %.val2.i.i.i.i.i.i
  br i1 %i.om, label %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECsl4q486LaARA_9typst_svg.exit.preheader.i.i.i, label %bb.w, !prof !20

_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECsl4q486LaARA_9typst_svg.exit.preheader.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %.sroa.09.0.in19.i.i.i = getelementptr inbounds i8, ptr %i.ok, i64 -16
  %.sroa.09.020.i.i.i = load i64, ptr %.sroa.09.0.in19.i.i.i, align 8, !noalias !5273, !noundef !12 ; 5 uses
  %i.on = icmp sgt i64 %.sroa.09.020.i.i.i, -1
  br i1 %i.on, label %.lr.ph.i.i.i, label %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECsl4q486LaARA_9typst_svg.exit._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECsl4q486LaARA_9typst_svg.exit.preheader.i.i.i
  %.val13.i.i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCsl4q486LaARA_9typst_svg5shape24convert_geometry_to_path7___CACHE, i64 24), align 8, !noalias !5273, !noundef !12 ; 2 uses
  %.val.i.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCsl4q486LaARA_9typst_svg5shape24convert_geometry_to_path7___CACHE, i64 16), align 8, !noalias !5273, !nonnull !12 ; 2 uses
  %i.oo = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCsl4q486LaARA_9typst_svg5shape24convert_geometry_to_path7___CACHE, i64 144), align 8, !noalias !5273
  %.fr22.i.i.i = freeze i64 %i.oo
  %i.op = icmp eq i64 %.fr22.i.i.i, 0
  %i.oq = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCsl4q486LaARA_9typst_svg5shape24convert_geometry_to_path7___CACHE, i64 128), align 8, !noalias !5273 ; 2 uses
  %i.or = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCsl4q486LaARA_9typst_svg5shape24convert_geometry_to_path7___CACHE, i64 120), align 8, !noalias !5273, !nonnull !12 ; 2 uses
  br i1 %i.op, label %.lr.ph.split.us.i.i.i, label %.lr.ph.split.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %.lr.ph.i.i.i
  %i.os = icmp ult i64 %.sroa.09.020.i.i.i, %.val13.i.i.i
  br i1 %i.os, label %bb.v, label %.split.us.i.invoke.i.i, !prof !20

bb.v:                                             ; preds = %.lr.ph.split.us.i.i.i
  %i.ot = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i, i64 %.sroa.09.020.i.i.i
  %i.ou = load i64, ptr %i.ot, align 8, !range !26, !noalias !5300, !noundef !12
  %.not.i20.us.i.i.i = icmp eq i64 %i.ou, 2
  br i1 %.not.i20.us.i.i.i, label %.split.us.i.invoke.i.i, label %.loopexit.i.i, !prof !13

._crit_edge.i.i.i.i.i:                            ; preds = %bb.w, %bb.u
  %i.ov = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i, splat (i8 -1)
  %i.ow = bitcast <16 x i1> %i.ov to i16
  %i.ox = icmp eq i16 %i.ow, 0
  br i1 %i.ox, label %bb.x, label %.loopexit.i.i, !prof !13

bb.w:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.oy = add i16 %.sroa.06.0.i31.i.i.i.i.i, -1
  %i.oz = and i16 %i.oy, %.sroa.06.0.i31.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i = icmp eq i16 %i.oz, 0
  br i1 %.not.i.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.x:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.pa = add i64 %.sroa.9.0.i.i.i.i.i.i, 16      ; 2 uses
  %i.pb = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.pa
  br label %bb.u

_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECsl4q486LaARA_9typst_svg.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i26.i.i.i
  %.sroa.09.0.in.i.i.i = getelementptr inbounds i8, ptr %i.pz, i64 -16
  %.sroa.09.0.i.i.i = load i64, ptr %.sroa.09.0.in.i.i.i, align 8, !noalias !5273, !noundef !12 ; 3 uses
  %i.pc = icmp sgt i64 %.sroa.09.0.i.i.i, -1
  br i1 %i.pc, label %.lr.ph.split.i.i.i, label %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECsl4q486LaARA_9typst_svg.exit._crit_edge.i.i.i

_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECsl4q486LaARA_9typst_svg.exit._crit_edge.i.i.i: ; preds = %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECsl4q486LaARA_9typst_svg.exit.loopexit.i.i.i, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECsl4q486LaARA_9typst_svg.exit.preheader.i.i.i
  %.sroa.09.0.lcssa.i.i.i = phi i64 [ %.sroa.09.020.i.i.i, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECsl4q486LaARA_9typst_svg.exit.preheader.i.i.i ], [ %.sroa.09.0.i.i.i, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECsl4q486LaARA_9typst_svg.exit.loopexit.i.i.i ]
  %i.pd = xor i64 %.sroa.09.0.lcssa.i.i.i, -1     ; 2 uses
  %.val18.i.i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCsl4q486LaARA_9typst_svg5shape24convert_geometry_to_path7___CACHE, i64 64), align 8, !noalias !5273, !noundef !12
  %i.pe = icmp ugt i64 %.val18.i.i.i, %i.pd
  br i1 %i.pe, label %bb.y, label %.split.us.i.invoke.i.i, !prof !20

bb.y:                                             ; preds = %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECsl4q486LaARA_9typst_svg.exit._crit_edge.i.i.i
  %.val17.i.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCsl4q486LaARA_9typst_svg5shape24convert_geometry_to_path7___CACHE, i64 56), align 8, !noalias !5273, !nonnull !12, !noundef !12
  %i.pf = getelementptr inbounds nuw [64 x i8], ptr %.val17.i.i.i, i64 %i.pd ; 5 uses
  %i.pg = load i64, ptr %i.pf, align 8, !range !26, !noalias !5273, !noundef !12
  %.not.i19.i.i.i = icmp eq i64 %i.pg, 2
  br i1 %.not.i19.i.i.i, label %.split.us.i.invoke.i.i, label %bb.af, !prof !13

.lr.ph.split.i.i.i:                               ; preds = %.lr.ph.i.i.i, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECsl4q486LaARA_9typst_svg.exit.loopexit.i.i.i
  %.sroa.09.021.i.i.i = phi i64 [ %.sroa.09.0.i.i.i, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECsl4q486LaARA_9typst_svg.exit.loopexit.i.i.i ], [ %.sroa.09.020.i.i.i, %.lr.ph.i.i.i ] ; 4 uses
  %i.ph = icmp ult i64 %.sroa.09.021.i.i.i, %.val13.i.i.i
  br i1 %i.ph, label %bb.z, label %.split.us.i.invoke.i.i, !prof !20

bb.z:                                             ; preds = %.lr.ph.split.i.i.i
  %i.pi = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i, i64 %.sroa.09.021.i.i.i
  %i.pj = load i64, ptr %i.pi, align 8, !range !26, !noalias !5300, !noundef !12
  %.not.i20.i.i.i = icmp eq i64 %i.pj, 2
  br i1 %.not.i20.i.i.i, label %.split.us.i.invoke.i.i, label %_RNvXs4_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs_1__9MultiCalluEEEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexjE5indexCsl4q486LaARA_9typst_svg.exit.i.i.i, !prof !13

.split.us.i.invoke.i.i:                           ; preds = %bb.z, %.lr.ph.split.i.i.i, %bb.y, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECsl4q486LaARA_9typst_svg.exit._crit_edge.i.i.i, %bb.v, %.lr.ph.split.us.i.i.i
  %i.pk = phi ptr [ @29, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECsl4q486LaARA_9typst_svg.exit._crit_edge.i.i.i ], [ @29, %bb.y ], [ @30, %bb.v ], [ @30, %.lr.ph.split.us.i.i.i ], [ @30, %.lr.ph.split.i.i.i ], [ @30, %bb.z ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @210, i64 noundef 11, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.pk) #33
          to label %.split.us.i.cont.i.i unwind label %bb.ad, !noalias !5273

.split.us.i.cont.i.i:                             ; preds = %.split.us.i.invoke.i.i
  unreachable

_RNvXs4_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs_1__9MultiCalluEEEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexjE5indexCsl4q486LaARA_9typst_svg.exit.i.i.i: ; preds = %bb.z
  %i.pl = mul i64 %.sroa.09.021.i.i.i, 6292750897829489597 ; 2 uses
  %i.pm = call noundef i64 @llvm.fshl.i64(i64 %i.pl, i64 %i.pl, i64 26) ; 2 uses
  %i.pn = lshr i64 %i.pm, 57
  %i.po = trunc nuw nsw i64 %i.pn to i8
  %i.pp = insertelement <16 x i8> poison, i8 %i.po, i64 0
  %i.pq = shufflevector <16 x i8> %i.pp, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ac, %_RNvXs4_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs_1__9MultiCalluEEEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexjE5indexCsl4q486LaARA_9typst_svg.exit.i.i.i
  %.sroa.9.0.i.i.i21.i.i.i = phi i64 [ 0, %_RNvXs4_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs_1__9MultiCalluEEEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexjE5indexCsl4q486LaARA_9typst_svg.exit.i.i.i ], [ %i.qj, %bb.ac ]
  %.pn.i.i22.i.i.i = phi i64 [ %i.pm, %_RNvXs4_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs_1__9MultiCalluEEEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexjE5indexCsl4q486LaARA_9typst_svg.exit.i.i.i ], [ %i.qk, %bb.ac ]
  %.sroa.01.0.i.i.i23.i.i.i = and i64 %.pn.i.i22.i.i.i, %i.oq ; 3 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %i.or, i64 %.sroa.01.0.i.i.i23.i.i.i
  %.sroa.0.0.copyload.i24.i.i24.i.i.i = load <16 x i8>, ptr %i.pr, align 1, !noalias !5301 ; 2 uses
  %i.ps = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i24.i.i.i, %i.pq
  %i.pt = bitcast <16 x i1> %i.ps to i16          ; 2 uses
  %.not.i.not30.i.i25.i.i.i = icmp eq i16 %i.pt, 0
  br i1 %.not.i.not30.i.i25.i.i.i, label %._crit_edge.i.i30.i.i.i, label %.lr.ph.i.i26.i.i.i

.lr.ph.i.i26.i.i.i:                               ; preds = %bb.aa, %bb.ab
  %.sroa.06.0.i31.i.i27.i.i.i = phi i16 [ %i.qi, %bb.ab ], [ %i.pt, %bb.aa ] ; 3 uses
  %i.pu = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i27.i.i.i, i1 true)
  %i.pv = zext nneg i16 %i.pu to i64
  %i.pw = add i64 %.sroa.01.0.i.i.i23.i.i.i, %i.pv
  %i.px = and i64 %i.pw, %i.oq
  %i.py = sub nsw i64 0, %i.px
  %i.pz = getelementptr inbounds [48 x i8], ptr %i.or, i64 %i.py ; 3 uses
  %i.qa = getelementptr inbounds i8, ptr %i.pz, i64 -48
  %.val2.i.i.i28.i.i.i = load i64, ptr %i.qa, align 8, !noalias !5302, !noundef !12
  %i.qb = getelementptr i8, ptr %i.pz, i64 -32
  %.val3.i.i.i.i.i.i = load i128, ptr %i.qb, align 16, !noalias !5302
  %i.qc = icmp eq i64 %.sroa.09.021.i.i.i, %.val2.i.i.i28.i.i.i
  %i.qd = icmp eq i128 %.val3.i.i.i.i.i.i, 0
  %spec.select.i.i.i.i.i.i.i.i.i = select i1 %i.qc, i1 %i.qd, i1 false
  br i1 %spec.select.i.i.i.i.i.i.i.i.i, label %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECsl4q486LaARA_9typst_svg.exit.loopexit.i.i.i, label %bb.ab, !prof !20

._crit_edge.i.i30.i.i.i:                          ; preds = %bb.ab, %bb.aa
  %i.qe = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i24.i.i.i, splat (i8 -1)
  %i.qf = bitcast <16 x i1> %i.qe to i16
  %i.qg = icmp eq i16 %i.qf, 0
  br i1 %i.qg, label %bb.ac, label %.loopexit.i.i, !prof !13

bb.ab:                                            ; preds = %.lr.ph.i.i26.i.i.i
  %i.qh = add i16 %.sroa.06.0.i31.i.i27.i.i.i, -1
  %i.qi = and i16 %i.qh, %.sroa.06.0.i31.i.i27.i.i.i ; 2 uses
  %.not.i.not.i.i29.i.i.i = icmp eq i16 %i.qi, 0
  br i1 %.not.i.not.i.i29.i.i.i, label %._crit_edge.i.i30.i.i.i, label %.lr.ph.i.i26.i.i.i

bb.ac:                                            ; preds = %._crit_edge.i.i30.i.i.i
  %i.qj = add i64 %.sroa.9.0.i.i.i21.i.i.i, 16    ; 2 uses
  %i.qk = add i64 %.sroa.01.0.i.i.i23.i.i.i, %i.qj
  br label %bb.aa

bb.ad:                                            ; preds = %bb.au, %.split.us.i.invoke.i.i
  %i.ql = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.qm = atomicrmw add ptr @_RNvNvNtCsl4q486LaARA_9typst_svg5shape24convert_geometry_to_path7___CACHE, i64 -16 release, align 8, !noalias !5273
  %i.qn = and i64 %i.qm, -14
  %i.qo = icmp eq i64 %i.qn, 18
  br i1 %i.qo, label %bb.ae, label %.body.i, !prof !13

bb.ae:                                            ; preds = %bb.ad
  invoke void @_RNvMs8_NtCsg5ZWEykmiUC_11parking_lot10raw_rwlockNtB5_9RawRwLock18unlock_shared_slow(ptr noundef nonnull align 8 @_RNvNvNtCsl4q486LaARA_9typst_svg5shape24convert_geometry_to_path7___CACHE)
          to label %.body.i unwind label %bb.bi, !noalias !5273

bb.af:                                            ; preds = %bb.y
  %i.qp = getelementptr inbounds nuw i8, ptr %i.pf, i64 56
  store atomic i64 0, ptr %i.qp seq_cst, align 8, !noalias !5303
  %i.qq = getelementptr inbounds nuw i8, ptr %i.pf, i64 40
  call void @llvm.experimental.noalias.scope.decl(metadata !5304)
  call void @llvm.experimental.noalias.scope.decl(metadata !5305)
  call void @llvm.experimental.noalias.scope.decl(metadata !5306)
  call void @llvm.experimental.noalias.scope.decl(metadata !5307)
  %i.qr = getelementptr inbounds nuw i8, ptr %i.pf, i64 55
  %i.qs = load i8, ptr %i.qr, align 1, !alias.scope !5308, !noalias !5273, !noundef !12
  %.not.i.i.i.i = icmp sgt i8 %i.qs, -1
  %.val.i.i.i.i = load ptr, ptr %i.qq, align 8, !alias.scope !5309, !noalias !5273 ; 5 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %i.pf, i64 48
  %.val10.i.i.i.i = load i64, ptr %i.qt, align 8, !alias.scope !5309, !noalias !5273
  br i1 %.not.i.i.i.i, label %4, label %bb.av

.loopexit.i.i:                                    ; preds = %._crit_edge.i.i.i.i.i, %._crit_edge.i.i30.i.i.i, %bb.v, %.noexc5.i
  %i.qu = atomicrmw add ptr @_RNvNvNtCsl4q486LaARA_9typst_svg5shape24convert_geometry_to_path7___CACHE, i64 -16 release, align 8, !noalias !5273
  %i.qv = and i64 %i.qu, -14
  %i.qw = icmp eq i64 %i.qv, 18
  br i1 %i.qw, label %bb.ag, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api6rwlock15RwLockReadGuardNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB2n_5inputs_1__9MultiCalluENtNtCsakL8LGkl72C_4ecow6string9EcoStringEEECsl4q486LaARA_9typst_svg.exit37.i.i, !prof !13

bb.ag:                                            ; preds = %.loopexit.i.i
  invoke void @_RNvMs8_NtCsg5ZWEykmiUC_11parking_lot10raw_rwlockNtB5_9RawRwLock18unlock_shared_slow(ptr noundef nonnull align 8 @_RNvNvNtCsl4q486LaARA_9typst_svg5shape24convert_geometry_to_path7___CACHE)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api6rwlock15RwLockReadGuardNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB2n_5inputs_1__9MultiCalluENtNtCsakL8LGkl72C_4ecow6string9EcoStringEEECsl4q486LaARA_9typst_svg.exit37.i.i unwind label %bb.bj, !noalias !5269

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api6rwlock15RwLockReadGuardNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB2n_5inputs_1__9MultiCalluENtNtCsakL8LGkl72C_4ecow6string9EcoStringEEECsl4q486LaARA_9typst_svg.exit37.i.i: ; preds = %bb.ag, %.loopexit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !5273
  call void @llvm.experimental.noalias.scope.decl(metadata !5310)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !5311
  call void @llvm.experimental.noalias.scope.decl(metadata !5312)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !5313
  %.sroa.04.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(13) %.sroa.04.sroa.4.0..sroa_idx.i.i.i.i, i8 0, i64 13, i1 false), !noalias !5313
  store i16 8269, ptr %i.g, align 8, !noalias !5313
  %.sroa.45.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 15
  store i8 -126, ptr %.sroa.45.0..sroa_idx.i.i.i.i, align 1, !noalias !5313
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5313
  %i.qx = getelementptr inbounds nuw i8, ptr %i.d, i64 19 ; 2 uses
  store i8 48, ptr %i.qx, align 1, !alias.scope !5314, !noalias !5313
  invoke void @_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString8push_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.qx, i64 noundef 1)
          to label %.noexc.i.i.i.i unwind label %bb.ah, !noalias !5311

.noexc.i.i.i.i:                                   ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api6rwlock15RwLockReadGuardNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB2n_5inputs_1__9MultiCalluENtNtCsakL8LGkl72C_4ecow6string9EcoStringEEECsl4q486LaARA_9typst_svg.exit37.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5313
  invoke void @_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString8push_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 1)
          to label %.noexc1.i.i.i.i unwind label %bb.ah, !noalias !5313

.noexc1.i.i.i.i:                                  ; preds = %.noexc.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !5313
  %i.qy = getelementptr inbounds nuw i8, ptr %i.e, i64 19 ; 2 uses
  store i8 48, ptr %i.qy, align 1, !alias.scope !5315, !noalias !5313
  invoke void @_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString8push_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.qy, i64 noundef 1)
          to label %_RNvMNtCsl4q486LaARA_9typst_svg4pathNtB2_14SvgPathBuilder14with_translate.exit.i.i.i unwind label %bb.ah, !noalias !5311

bb.ah:                                            ; preds = %.noexc1.i.i.i.i, %.noexc.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api6rwlock15RwLockReadGuardNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB2n_5inputs_1__9MultiCalluENtNtCsakL8LGkl72C_4ecow6string9EcoStringEEECsl4q486LaARA_9typst_svg.exit37.i.i
  %i.qz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsl4q486LaARA_9typst_svg(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g) #32
          to label %.body.i unwind label %bb.ai, !noalias !5313

bb.ai:                                            ; preds = %bb.ah
  %i.ra = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37, !noalias !5313
  unreachable

_RNvMNtCsl4q486LaARA_9typst_svg4pathNtB2_14SvgPathBuilder14with_translate.exit.i.i.i: ; preds = %.noexc1.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5313
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false), !noalias !5311
  %i.rb = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store double 1.000000e+00, ptr %i.rb, align 8, !alias.scope !5312, !noalias !5311
  %i.rc = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.rc, i8 0, i64 32, i1 false), !noalias !5311
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !5313
  %i.rd = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  switch i64 %i.au, label %bb.aj [
    i64 0, label %bb.ak
    i64 1, label %bb.al
    i64 2, label %bb.am
  ]

bb.aj:                                            ; preds = %_RNvMNtCsl4q486LaARA_9typst_svg4pathNtB2_14SvgPathBuilder14with_translate.exit.i.i.i
  unreachable

bb.ak:                                            ; preds = %_RNvMNtCsl4q486LaARA_9typst_svg4pathNtB2_14SvgPathBuilder14with_translate.exit.i.i.i
  %i.re = load double, ptr %i.bg, align 8, !alias.scope !5316, !noundef !12
  %i.rf = load double, ptr %i.rd, align 8, !alias.scope !5316, !noundef !12
  invoke fastcc void @_RNvMNtCsl4q486LaARA_9typst_svg4pathNtB2_14SvgPathBuilder7line_to(ptr noalias nofree noundef align 8 dereferenceable(56) %i.h, double noundef %i.re, double noundef %i.rf)
          to label %_RNvMNtCsl4q486LaARA_9typst_svg4pathNtB2_14SvgPathBuilder4rect.exit.i.i.i unwind label %bb.an, !noalias !5311

bb.al:                                            ; preds = %_RNvMNtCsl4q486LaARA_9typst_svg4pathNtB2_14SvgPathBuilder14with_translate.exit.i.i.i
  %i.rg = load double, ptr %i.bg, align 8, !alias.scope !5316, !noundef !12 ; 2 uses
  %i.rh = load double, ptr %i.rd, align 8, !alias.scope !5316, !noundef !12 ; 2 uses
  invoke fastcc void @_RNvMNtCsl4q486LaARA_9typst_svg4pathNtB2_14SvgPathBuilder7move_to(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.h, double noundef 0.000000e+00, double noundef 0.000000e+00)
          to label %.noexc.i.i.i unwind label %bb.an, !noalias !5311

.noexc.i.i.i:                                     ; preds = %bb.al
  invoke fastcc void @_RNvMNtCsl4q486LaARA_9typst_svg4pathNtB2_14SvgPathBuilder7line_to(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.h, double noundef 0.000000e+00, double noundef %i.rh)
          to label %.noexc2.i.i.i unwind label %bb.an, !noalias !5311

.noexc2.i.i.i:                                    ; preds = %.noexc.i.i.i
  invoke fastcc void @_RNvMNtCsl4q486LaARA_9typst_svg4pathNtB2_14SvgPathBuilder7line_to(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.h, double noundef %i.rg, double noundef %i.rh)
          to label %.noexc3.i.i.i unwind label %bb.an, !noalias !5311

.noexc3.i.i.i:                                    ; preds = %.noexc2.i.i.i
  invoke fastcc void @_RNvMNtCsl4q486LaARA_9typst_svg4pathNtB2_14SvgPathBuilder7line_to(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.h, double noundef %i.rg, double noundef 0.000000e+00)
          to label %.noexc4.i.i.i unwind label %bb.an, !noalias !5311

.noexc4.i.i.i:                                    ; preds = %.noexc3.i.i.i
  invoke void @_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString8push_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @128, i64 noundef 2)
          to label %_RNvMNtCsl4q486LaARA_9typst_svg4pathNtB2_14SvgPathBuilder4rect.exit.i.i.i unwind label %bb.an, !noalias !5311

bb.am:                                            ; preds = %_RNvMNtCsl4q486LaARA_9typst_svg4pathNtB2_14SvgPathBuilder14with_translate.exit.i.i.i
  %.val.i38.i.i = load ptr, ptr %i.bg, align 8, !alias.scope !5316
  %.val1.i.i.i = load i64, ptr %i.rd, align 8, !alias.scope !5316
  invoke fastcc void @_RNvNtCsl4q486LaARA_9typst_svg5shape13convert_curve(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %i.l, double noundef 0.000000e+00, double noundef 0.000000e+00, ptr %.val.i38.i.i, i64 %.val1.i.i.i)
          to label %bb.ao unwind label %bb.an, !noalias !5317

bb.an:                                            ; preds = %bb.am, %.noexc4.i.i.i, %.noexc3.i.i.i, %.noexc2.i.i.i, %.noexc.i.i.i, %bb.al, %bb.ak
  %i.ri = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsl4q486LaARA_9typst_svg4path14SvgPathBuilderEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.h) #32
          to label %.body.i unwind label %bb.ar, !noalias !5311

_RNvMNtCsl4q486LaARA_9typst_svg4pathNtB2_14SvgPathBuilder4rect.exit.i.i.i: ; preds = %.noexc4.i.i.i, %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 16, i1 false), !noalias !5317
  br label %_RNCNvNtCsl4q486LaARA_9typst_svg5shape24convert_geometry_to_path0B5_.exit.i.i

bb.ao:                                            ; preds = %bb.am
  call void @llvm.experimental.noalias.scope.decl(metadata !5318)
  call void @llvm.experimental.noalias.scope.decl(metadata !5319)
  %.val.i.i.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !5320, !noalias !5311 ; 4 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %i.h, i64 15
  %.val1.i.i.i.i.i = load i8, ptr %i.rj, align 1, !alias.scope !5320, !noalias !5311, !noundef !12
  %.not.i.i.i.i.i.i.i = icmp sgt i8 %.val1.i.i.i.i.i, -1
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ap, label %_RNCNvNtCsl4q486LaARA_9typst_svg5shape24convert_geometry_to_path0B5_.exit.i.i

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ]
  %.not.i.i.i.i.i.i.i39.i.i = icmp eq ptr %.val.i.i.i.i.i, inttoptr (i64 16 to ptr)
  %i.rk = getelementptr inbounds i8, ptr %.val.i.i.i.i.i, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i39.i.i, label %_RNCNvNtCsl4q486LaARA_9typst_svg5shape24convert_geometry_to_path0B5_.exit.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsl4q486LaARA_9typst_svg.exit.i.i.i.i.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsl4q486LaARA_9typst_svg.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ap
  %i.rl = atomicrmw add ptr %i.rk, i64 -1 release, align 8, !noalias !5321
  %.not.i.i.i.i.i.i40.i.i = icmp eq i64 %i.rl, 1
  br i1 %.not.i.i.i.i.i.i40.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsl4q486LaARA_9typst_svg.exit.i.i.i.i.i.i.i.i, label %_RNCNvNtCsl4q486LaARA_9typst_svg5shape24convert_geometry_to_path0B5_.exit.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsl4q486LaARA_9typst_svg.exit.i.i.i.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsl4q486LaARA_9typst_svg.exit.i.i.i.i.i.i.i.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !5321
  %i.rm = getelementptr i8, ptr %.val.i.i.i.i.i, i64 -8
  %.val.i.i.i.i.i.i.i.i.i = load i64, ptr %i.rm, align 8, !noalias !5321, !noundef !12 ; 2 uses
  %narrow.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %.val.i.i.i.i.i.i.i.i.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsl4q486LaARA_9typst_svg.exit.i.i.i.i.i.i.i.i, label %bb.aq, !prof !20

bb.aq:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsl4q486LaARA_9typst_svg.exit.i.i.i.i.i.i.i.i
  invoke void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #36
          to label %.noexc7.i unwind label %bb.bj, !noalias !5269

.noexc7.i:                                        ; preds = %bb.aq
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsl4q486LaARA_9typst_svg.exit.i.i.i.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsl4q486LaARA_9typst_svg.exit.i.i.i.i.i.i.i.i
  %i.rn = add nuw nsw i64 %.val.i.i.i.i.i.i.i.i.i, 16
  %i.ro = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.rk, ptr %i.ro, align 8, !noalias !5321
  store i64 8, ptr %i.f, align 8, !noalias !5321
  %i.rp = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %i.rn, ptr %i.rp, align 8, !noalias !5321
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.noexc8.i unwind label %bb.bj, !noalias !5269

.noexc8.i:                                        ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsl4q486LaARA_9typst_svg.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !5321
  br label %_RNCNvNtCsl4q486LaARA_9typst_svg5shape24convert_geometry_to_path0B5_.exit.i.i

bb.ar:                                            ; preds = %bb.an
  %i.rq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37, !noalias !5311
  unreachable

_RNCNvNtCsl4q486LaARA_9typst_svg5shape24convert_geometry_to_path0B5_.exit.i.i: ; preds = %.noexc8.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsl4q486LaARA_9typst_svg.exit.i.i.i.i.i.i.i.i, %bb.ap, %bb.ao, %_RNvMNtCsl4q486LaARA_9typst_svg4pathNtB2_14SvgPathBuilder4rect.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !5311
  %i.rr = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCsl4q486LaARA_9typst_svg5shape24convert_geometry_to_path7___CACHE, i64 152) acquire, align 8, !noalias !5273
  %i.rs = icmp eq i32 %i.rr, 0
  br i1 %i.rs, label %bb.ay, label %bb.as, !prof !20

bb.as:                                            ; preds = %_RNCNvNtCsl4q486LaARA_9typst_svg5shape24convert_geometry_to_path0B5_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5273
  store ptr @_RNvNvNtCsl4q486LaARA_9typst_svg5shape24convert_geometry_to_path7___CACHE, ptr %i.c, align 8, !noalias !5273
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5273
  store ptr %i.c, ptr %i.b, align 8, !noalias !5273
  invoke void @_RNvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNvNtCsl4q486LaARA_9typst_svg5shape24convert_geometry_to_path7___CACHE, i64 152), i1 noundef zeroext true, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @15, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17)
          to label %.noexc41.i.i unwind label %bb.ax, !noalias !5273

.noexc41.i.i:                                     ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5273
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5273
  br label %bb.ay

4:                                                ; preds = %bb.af
  %.not.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i.i.i, label %bb.av, label %bb.at

bb.at:                                            ; preds = %4
  %i.rt = getelementptr inbounds i8, ptr %.val.i.i.i.i, i64 -16
  %i.ru = atomicrmw add ptr %i.rt, i64 1 monotonic, align 8, !noalias !5322
  %i.rv = icmp slt i64 %i.ru, 0
  br i1 %i.rv, label %bb.au, label %bb.av, !prof !13

bb.au:                                            ; preds = %bb.at
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowhECsl4q486LaARA_9typst_svg(ptr noundef nonnull %.val.i.i.i.i) #36
          to label %.noexc44.i.i unwind label %bb.ad

.noexc44.i.i:                                     ; preds = %bb.au
  unreachable

bb.av:                                            ; preds = %bb.at, %4, %bb.af
  %.sroa.0.0.i43.i.i = phi ptr [ inttoptr (i64 16 to ptr), %4 ], [ %.val.i.i.i.i, %bb.at ], [ %.val.i.i.i.i, %bb.af ]
  store ptr %.sroa.0.0.i43.i.i, ptr %i.q, align 8, !alias.scope !5323
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %.val10.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !5323
  %i.rw = atomicrmw add ptr @_RNvNvNtCsl4q486LaARA_9typst_svg5shape24convert_geometry_to_path7___CACHE, i64 -16 release, align 8, !noalias !5273
  %i.rx = and i64 %i.rw, -14
  %i.ry = icmp eq i64 %i.rx, 18
  br i1 %i.ry, label %bb.aw, label %_RINvNtCsloFShupyl5J_6comemo7memoize7memoizeINtNtB4_5input5MultiTRNtNtNtCsdaEETE4DqmE_13typst_library9visualize5shape8GeometryEENtNtCsakL8LGkl72C_4ecow6string9EcoStringNCNvNtCsl4q486LaARA_9typst_svg5shape24convert_geometry_to_path0EB2L_.exit.i, !prof !13

bb.aw:                                            ; preds = %bb.av
  invoke void @_RNvMs8_NtCsg5ZWEykmiUC_11parking_lot10raw_rwlockNtB5_9RawRwLock18unlock_shared_slow(ptr noundef nonnull align 8 @_RNvNvNtCsl4q486LaARA_9typst_svg5shape24convert_geometry_to_path7___CACHE)
          to label %_RINvNtCsloFShupyl5J_6comemo7memoize7memoizeINtNtB4_5input5MultiTRNtNtNtCsdaEETE4DqmE_13typst_library9visualize5shape8GeometryEENtNtCsakL8LGkl72C_4ecow6string9EcoStringNCNvNtCsl4q486LaARA_9typst_svg5shape24convert_geometry_to_path0EB2L_.exit.i unwind label %bb.bj, !noalias !5269

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api6rwlock16RwLockWriteGuardNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB2o_5inputs_1__9MultiCalluENtNtCsakL8LGkl72C_4ecow6string9EcoStringEEECsl4q486LaARA_9typst_svg.exit.i.i: ; preds = %bb.be, %bb.bd, %bb.ax
  %.pn.i.i = phi { ptr, i32 } [ %i.rz, %bb.ax ], [ %i.sj, %bb.be ], [ %i.sj, %bb.bd ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsl4q486LaARA_9typst_svg(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.l) #32
          to label %.body.i unwind label %bb.bi, !noalias !5324

bb.ax:                                            ; preds = %bb.bh, %bb.az, %bb.as
  %i.rz = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api6rwlock16RwLockWriteGuardNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB2o_5inputs_1__9MultiCalluENtNtCsakL8LGkl72C_4ecow6string9EcoStringEEECsl4q486LaARA_9typst_svg.exit.i.i

bb.ay:                                            ; preds = %.noexc41.i.i, %_RNCNvNtCsl4q486LaARA_9typst_svg5shape24convert_geometry_to_path0B5_.exit.i.i
  %i.sa = cmpxchg weak ptr @_RNvNvNtCsl4q486LaARA_9typst_svg5shape24convert_geometry_to_path7___CACHE, i64 0, i64 8 acquire monotonic, align 8, !noalias !5273
  %i.sb = extractvalue { i64, i1 } %i.sa, 1
  br i1 %i.sb, label %bb.ba, label %bb.az, !prof !20

bb.az:                                            ; preds = %bb.ay
  %i.sc = invoke noundef zeroext i1 @_RNvMs8_NtCsg5ZWEykmiUC_11parking_lot10raw_rwlockNtB5_9RawRwLock19lock_exclusive_slow(ptr noundef nonnull align 8 @_RNvNvNtCsl4q486LaARA_9typst_svg5shape24convert_geometry_to_path7___CACHE, i64 undef, i32 noundef -1)
          to label %bb.ba unwind label %bb.ax, !noalias !5273 ; 0 uses

bb.ba:                                            ; preds = %bb.az, %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !5273
  call void @llvm.experimental.noalias.scope.decl(metadata !5325)
  call void @llvm.experimental.noalias.scope.decl(metadata !5326)
  call void @llvm.experimental.noalias.scope.decl(metadata !5327)
  call void @llvm.experimental.noalias.scope.decl(metadata !5328)
  %i.sd = getelementptr inbounds nuw i8, ptr %i.l, i64 15
  %i.se = load i8, ptr %i.sd, align 1, !alias.scope !5329, !noalias !5273, !noundef !12
  %.not.i.i48.i.i = icmp sgt i8 %i.se, -1
  %.val.i.i49.i.i = load ptr, ptr %i.l, align 8, !alias.scope !5330, !noalias !5273 ; 5 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.val10.i.i50.i.i = load i64, ptr %i.sf, align 8, !alias.scope !5330, !noalias !5273
  br i1 %.not.i.i48.i.i, label %5, label %bb.bf

5:                                                ; preds = %bb.ba
  %.not.i.i.i.i53.i.i = icmp eq ptr %.val.i.i49.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i53.i.i, label %bb.bf, label %bb.bb

bb.bb:                                            ; preds = %5
  %i.sg = getelementptr inbounds i8, ptr %.val.i.i49.i.i, i64 -16
  %i.sh = atomicrmw add ptr %i.sg, i64 1 monotonic, align 8, !noalias !5331
  %i.si = icmp slt i64 %i.sh, 0
  br i1 %i.si, label %bb.bc, label %bb.bf, !prof !13

bb.bc:                                            ; preds = %bb.bb
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowhECsl4q486LaARA_9typst_svg(ptr noundef nonnull %.val.i.i49.i.i) #36
          to label %.noexc54.i.i unwind label %bb.bd

.noexc54.i.i:                                     ; preds = %bb.bc
  unreachable

bb.bd:                                            ; preds = %bb.bf, %bb.bc
  %i.sj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.sk = cmpxchg ptr @_RNvNvNtCsl4q486LaARA_9typst_svg5shape24convert_geometry_to_path7___CACHE, i64 8, i64 0 release monotonic, align 8, !noalias !5273
  %i.sl = extractvalue { i64, i1 } %i.sk, 1
  br i1 %i.sl, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api6rwlock16RwLockWriteGuardNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB2o_5inputs_1__9MultiCalluENtNtCsakL8LGkl72C_4ecow6string9EcoStringEEECsl4q486LaARA_9typst_svg.exit.i.i, label %bb.be, !prof !20

bb.be:                                            ; preds = %bb.bd
  invoke void @_RNvMs8_NtCsg5ZWEykmiUC_11parking_lot10raw_rwlockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 @_RNvNvNtCsl4q486LaARA_9typst_svg5shape24convert_geometry_to_path7___CACHE, i1 noundef zeroext false)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api6rwlock16RwLockWriteGuardNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB2o_5inputs_1__9MultiCalluENtNtCsakL8LGkl72C_4ecow6string9EcoStringEEECsl4q486LaARA_9typst_svg.exit.i.i unwind label %bb.bi, !noalias !5324

bb.bf:                                            ; preds = %bb.bb, %5, %bb.ba
  %.sroa.0.0.i51.i.i = phi ptr [ inttoptr (i64 16 to ptr), %5 ], [ %.val.i.i49.i.i, %bb.bb ], [ %.val.i.i49.i.i, %bb.ba ]
  store ptr %.sroa.0.0.i51.i.i, ptr %i.k, align 8, !alias.scope !5325, !noalias !5273
  %.sroa.5.0..sroa_idx.i52.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %.val10.i.i50.i.i, ptr %.sroa.5.0..sroa_idx.i52.i.i, align 8, !alias.scope !5325, !noalias !5273
  invoke fastcc void @_RNvMs_NtCsloFShupyl5J_6comemo7memoizeINtB4_9CacheDataINtNvNtB6_5inputs_1__9MultiCalluENtNtCsakL8LGkl72C_4ecow6string9EcoStringE6insertCsl4q486LaARA_9typst_svg(ptr noalias nofree noundef align 8 dereferenceable(144) getelementptr inbounds nuw (i8, ptr @_RNvNvNtCsl4q486LaARA_9typst_svg5shape24convert_geometry_to_path7___CACHE, i64 8), i128 noundef %i.nf, ptr noundef nonnull align 8 dereferenceable(96) %i.n, ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.k)
          to label %bb.bg unwind label %bb.bd

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !5273
  %i.sm = cmpxchg ptr @_RNvNvNtCsl4q486LaARA_9typst_svg5shape24convert_geometry_to_path7___CACHE, i64 8, i64 0 release monotonic, align 8, !noalias !5273
  %i.sn = extractvalue { i64, i1 } %i.sm, 1
  br i1 %i.sn, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api6rwlock16RwLockWriteGuardNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB2o_5inputs_1__9MultiCalluENtNtCsakL8LGkl72C_4ecow6string9EcoStringEEECsl4q486LaARA_9typst_svg.exit58.i.i, label %bb.bh, !prof !20

bb.bh:                                            ; preds = %bb.bg
  invoke void @_RNvMs8_NtCsg5ZWEykmiUC_11parking_lot10raw_rwlockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 @_RNvNvNtCsl4q486LaARA_9typst_svg5shape24convert_geometry_to_path7___CACHE, i1 noundef zeroext false)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api6rwlock16RwLockWriteGuardNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB2o_5inputs_1__9MultiCalluENtNtCsakL8LGkl72C_4ecow6string9EcoStringEEECsl4q486LaARA_9typst_svg.exit58.i.i unwind label %bb.ax, !noalias !5324

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api6rwlock16RwLockWriteGuardNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB2o_5inputs_1__9MultiCalluENtNtCsakL8LGkl72C_4ecow6string9EcoStringEEECsl4q486LaARA_9typst_svg.exit58.i.i: ; preds = %bb.bh, %bb.bg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %i.l, i64 16, i1 false), !noalias !5332
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !5273
  br label %_RINvNtCsloFShupyl5J_6comemo7memoize7memoizeINtNtB4_5input5MultiTRNtNtNtCsdaEETE4DqmE_13typst_library9visualize5shape8GeometryEENtNtCsakL8LGkl72C_4ecow6string9EcoStringNCNvNtCsl4q486LaARA_9typst_svg5shape24convert_geometry_to_path0EB2L_.exit.i

bb.bi:                                            ; preds = %bb.be, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api6rwlock16RwLockWriteGuardNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB2o_5inputs_1__9MultiCalluENtNtCsakL8LGkl72C_4ecow6string9EcoStringEEECsl4q486LaARA_9typst_svg.exit.i.i, %bb.ae
  %i.so = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37, !noalias !5324
  unreachable

bb.bj:                                            ; preds = %bb.aw, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsl4q486LaARA_9typst_svg.exit.i.i.i.i.i.i.i.i, %bb.aq, %bb.ag, %_RNvMs8_NtCsg5ZWEykmiUC_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i, %bb.s
  %i.sp = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.bj, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api6rwlock16RwLockWriteGuardNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB2o_5inputs_1__9MultiCalluENtNtCsakL8LGkl72C_4ecow6string9EcoStringEEECsl4q486LaARA_9typst_svg.exit.i.i, %bb.an, %bb.ah, %bb.ae, %bb.ad
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.sp, %bb.bj ], [ %i.ri, %bb.an ], [ %i.qz, %bb.ah ], [ %.pn.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api6rwlock16RwLockWriteGuardNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB2o_5inputs_1__9MultiCalluENtNtCsakL8LGkl72C_4ecow6string9EcoStringEEECsl4q486LaARA_9typst_svg.exit.i.i ], [ %i.ql, %bb.ae ], [ %i.ql, %bb.ad ]
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTTuEINtNtCsloFShupyl5J_6comemo10constraint10ConstraintINtNvNtBK_5inputs_1__9MultiCalluEEEECsl4q486LaARA_9typst_svg(ptr noalias nofree noundef align 8 dereferenceable(96) %i.n) #32, !noalias !5269
  br label %.body

_RINvNtCsloFShupyl5J_6comemo7memoize7memoizeINtNtB4_5input5MultiTRNtNtNtCsdaEETE4DqmE_13typst_library9visualize5shape8GeometryEENtNtCsakL8LGkl72C_4ecow6string9EcoStringNCNvNtCsl4q486LaARA_9typst_svg5shape24convert_geometry_to_path0EB2L_.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api6rwlock16RwLockWriteGuardNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB2o_5inputs_1__9MultiCalluENtNtCsakL8LGkl72C_4ecow6string9EcoStringEEECsl4q486LaARA_9typst_svg.exit58.i.i, %bb.aw, %bb.av
  call void @llvm.experimental.noalias.scope.decl(metadata !5333)
  call void @llvm.experimental.noalias.scope.decl(metadata !5334)
  call void @llvm.experimental.noalias.scope.decl(metadata !5335)
  %i.sq = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !5336)
  call void @llvm.experimental.noalias.scope.decl(metadata !5337)
  call void @llvm.experimental.noalias.scope.decl(metadata !5338)
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.sq, align 8, !alias.scope !5339, !noalias !5269 ; 2 uses
  %i.sr = icmp eq i64 %.val.i.i.i.i.i.i.i, 0
  br i1 %i.sr, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs_1__9MultiCalluEoEEEECsl4q486LaARA_9typst_svg.exit.i.i.i.i.i.i.i, label %bb.bk

bb.bk:                                            ; preds = %_RINvNtCsloFShupyl5J_6comemo7memoize7memoizeINtNtB4_5input5MultiTRNtNtNtCsdaEETE4DqmE_13typst_library9visualize5shape8GeometryEENtNtCsakL8LGkl72C_4ecow6string9EcoStringNCNvNtCsl4q486LaARA_9typst_svg5shape24convert_geometry_to_path0EB2L_.exit.i
  %.val1.i.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !alias.scope !5339, !noalias !5269, !nonnull !12, !noundef !12
  %i.ss = shl nuw i64 %.val.i.i.i.i.i.i.i, 5
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i, i64 noundef %i.ss, i64 noundef range(i64 1, -9223372036854775807) 16) #31, !noalias !5340
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs_1__9MultiCalluEoEEEECsl4q486LaARA_9typst_svg.exit.i.i.i.i.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs_1__9MultiCalluEoEEEECsl4q486LaARA_9typst_svg.exit.i.i.i.i.i.i.i: ; preds = %bb.bk, %_RINvNtCsloFShupyl5J_6comemo7memoize7memoizeINtNtB4_5input5MultiTRNtNtNtCsdaEETE4DqmE_13typst_library9visualize5shape8GeometryEENtNtCsakL8LGkl72C_4ecow6string9EcoStringNCNvNtCsl4q486LaARA_9typst_svg5shape24convert_geometry_to_path0EB2L_.exit.i
  %.val2.i.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !5339, !noalias !5269 ; 2 uses
  %i.st = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %.val3.i.i.i.i.i.i.i = load i64, ptr %i.st, align 8, !alias.scope !5339, !noalias !5269, !noundef !12 ; 4 uses
  %i.su = icmp eq i64 %.val3.i.i.i.i.i.i.i, 0
  br i1 %i.su, label %bb.bm, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i.i.i

_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs_1__9MultiCalluEoEEEECsl4q486LaARA_9typst_svg.exit.i.i.i.i.i.i.i
  %i.sv = icmp slt i64 %.val3.i.i.i.i.i.i.i, 576460752303423487
  call void @llvm.assume(i1 %i.sv)
  %i.sw = shl i64 %.val3.i.i.i.i.i.i.i, 5         ; 2 uses
  %i.sx = add i64 %i.sw, 32                       ; 2 uses
  %i.sy = add nsw i64 %.val3.i.i.i.i.i.i.i, 17
  %i.sz = add i64 %i.sy, %i.sx                    ; 4 uses
  %i.ta = icmp uge i64 %i.sz, %i.sx
  %i.tb = icmp ult i64 %i.sz, 9223372036854775793
  call void @llvm.assume(i1 %i.ta)
  call void @llvm.assume(i1 %i.tb)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i.i.i.i.i.i) ]
  %i.tc = icmp eq i64 %i.sz, 0
  br i1 %i.tc, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.td = sub nuw nsw i64 -32, %i.sw
  %i.te = getelementptr inbounds i8, ptr %.val2.i.i.i.i.i.i.i, i64 %i.td
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.te, i64 noundef %i.sz, i64 noundef range(i64 1, -9223372036854775807) 16) #31, !noalias !5340
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs_1__9MultiCalluEoEEEECsl4q486LaARA_9typst_svg.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !5269
  call void @llvm.experimental.noalias.scope.decl(metadata !5341)
  invoke void @_RINvMs_CsllPlovBjVoa_9xmlwriterNtB5_9XmlWriter19write_attribute_rawNCINvMNtCsl4q486LaARA_9typst_svg5writeNtB19_7SvgElem9attr_withNCINvB18_4attrNtNtCsakL8LGkl72C_4ecow6string9EcoStringE0E0EB1b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.val11, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @91, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.q)
          to label %bb.bo unwind label %bb.bn, !noalias !5342

bb.bn:                                            ; preds = %bb.bm
  %i.tf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsl4q486LaARA_9typst_svg(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.q) #32
          to label %.body unwind label %bb.br, !noalias !5342

bb.bo:                                            ; preds = %bb.bm
  call void @llvm.experimental.noalias.scope.decl(metadata !5343)
  %.val.i.i = load ptr, ptr %i.q, align 8, !alias.scope !5344 ; 4 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %i.q, i64 15
  %.val1.i.i = load i8, ptr %i.tg, align 1, !alias.scope !5344, !noundef !12
  %.not.i.i.i.i16 = icmp sgt i8 %.val1.i.i, -1
  br i1 %.not.i.i.i.i16, label %bb.bp, label %_RINvMNtCsl4q486LaARA_9typst_svg5writeNtB3_7SvgElem4attrNtNtCsakL8LGkl72C_4ecow6string9EcoStringEB5_.exit

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %.not.i.i.i.i.i.i17 = icmp eq ptr %.val.i.i, inttoptr (i64 16 to ptr)
  %i.th = getelementptr inbounds i8, ptr %.val.i.i, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i.i17, label %_RINvMNtCsl4q486LaARA_9typst_svg5writeNtB3_7SvgElem4attrNtNtCsakL8LGkl72C_4ecow6string9EcoStringEB5_.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsl4q486LaARA_9typst_svg.exit.i.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsl4q486LaARA_9typst_svg.exit.i.i.i.i.i: ; preds = %bb.bp
  %i.ti = atomicrmw add ptr %i.th, i64 -1 release, align 8, !noalias !5345
  %.not.i.i.i.i.i = icmp eq i64 %i.ti, 1
  br i1 %.not.i.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsl4q486LaARA_9typst_svg.exit.i.i.i.i.i, label %_RINvMNtCsl4q486LaARA_9typst_svg5writeNtB3_7SvgElem4attrNtNtCsakL8LGkl72C_4ecow6string9EcoStringEB5_.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsl4q486LaARA_9typst_svg.exit.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsl4q486LaARA_9typst_svg.exit.i.i.i.i.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5346
  %i.tj = getelementptr i8, ptr %.val.i.i, i64 -8
  %.val.i.i.i.i.i.i = load i64, ptr %i.tj, align 8, !noalias !5345, !noundef !12 ; 2 uses
  %narrow.i.i.i.i.i.i.i = icmp ult i64 %.val.i.i.i.i.i.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsl4q486LaARA_9typst_svg.exit.i.i.i.i.i, label %bb.bq, !prof !20

bb.bq:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsl4q486LaARA_9typst_svg.exit.i.i.i.i.i
  invoke void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #36
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.bq
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsl4q486LaARA_9typst_svg.exit.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsl4q486LaARA_9typst_svg.exit.i.i.i.i.i
  %i.tk = add nuw nsw i64 %.val.i.i.i.i.i.i, 16
  %i.tl = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.th, ptr %i.tl, align 8, !noalias !5346
  store i64 8, ptr %i.a, align 8, !noalias !5346
  %i.tm = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.tk, ptr %i.tm, align 8, !noalias !5346
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.noexc18 unwind label %bb.d

.noexc18:                                         ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsl4q486LaARA_9typst_svg.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5346
  br label %_RINvMNtCsl4q486LaARA_9typst_svg5writeNtB3_7SvgElem4attrNtNtCsakL8LGkl72C_4ecow6string9EcoStringEB5_.exit

bb.br:                                            ; preds = %bb.bn
  %i.tn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37, !noalias !5347
  unreachable

_RINvMNtCsl4q486LaARA_9typst_svg5writeNtB3_7SvgElem4attrNtNtCsakL8LGkl72C_4ecow6string9EcoStringEB5_.exit: ; preds = %.noexc18, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsl4q486LaARA_9typst_svg.exit.i.i.i.i.i, %bb.bp, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @_RNvMs_CsllPlovBjVoa_9xmlwriterNtB4_9XmlWriter11end_element(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.val11) #35, !noalias !5348
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  ret void

bb.bs:                                            ; preds = %.body
  %i.to = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsl4q486LaARA_9typst_svg5write7SvgElemEBF_.exit: ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtCsl4q486LaARA_9typst_svg5shapeNtB4_11SVGRenderer12write_stroke(ptr noalias nofree noundef nonnull align 8 dereferenceable(480) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %2, double noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [32 x i8], align 16               ; 5 uses
  %i.g = alloca [32 x i8], align 16               ; 5 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [32 x i8], align 16               ; 5 uses
  %i.j = alloca [32 x i8], align 16               ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !range !39, !noundef !12 ; 2 uses
  %i.m = icmp samesign ugt i32 %i.l, 1
  %i.n = zext nneg i32 %i.l to i64
  %i.o = add nsw i64 %i.n, -1
  %i.p = select i1 %i.m, i64 %i.o, i64 0
  switch i64 %i.p, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5376)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.k, ptr %i.h, align 8, !noalias !5377
  %i.q = load ptr, ptr %1, align 8, !alias.scope !5376, !nonnull !12, !align !23, !noundef !12 ; 2 uses
  call void @_RINvMs_CsllPlovBjVoa_9xmlwriterNtB5_9XmlWriter19write_attribute_rawNCINvMNtCsl4q486LaARA_9typst_svg5writeNtB19_7SvgElem9attr_withNCINvB18_4attrRNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorE0E0EB1b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.q, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @183, i64 noundef 6, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.h) #35, !noalias !5376
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %switch.lookup
end_hunk_0
begin_hunk_1_@_RNvMs0_NtCsl4q486LaARA_9typst_svg5imageNtB5_8WebImage13to_base64_url:bb.a
  %i.ck = icmp eq i64 %i.cj, 0
  br i1 %i.ck, label %.loopexit.i, label %bb.d

bb.d:                                             ; preds = %.noexc9
  %i.cl = mul i64 %i.bt, -1065810590584100411
  %i.cm = add i64 %i.cl, %i.bu
  %i.cn = mul i64 %i.cm, -1065810590584100411     ; 2 uses
  %i.co = call noundef i64 @llvm.fshl.i64(i64 %i.cn, i64 %i.cn, i64 26) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5657)
  call void @llvm.experimental.noalias.scope.decl(metadata !5658)
  %i.cp = lshr i64 %i.co, 57
  %i.cq = trunc nuw nsw i64 %i.cp to i8
  %i.cr = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs0_NtCsl4q486LaARA_9typst_svg5imageNtB7_8WebImage13to_base64_url7___CACHE, i64 96), align 8, !alias.scope !5659, !noalias !5654, !noundef !12 ; 2 uses
  %i.cs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs0_NtCsl4q486LaARA_9typst_svg5imageNtB7_8WebImage13to_base64_url7___CACHE, i64 88), align 8, !alias.scope !5659, !noalias !5654, !nonnull !12, !noundef !12 ; 2 uses
  %i.ct = insertelement <16 x i8> poison, i8 %i.cq, i64 0
  %i.cu = shufflevector <16 x i8> %i.ct, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %bb.d
  %.sroa.9.0.i.i.i.i.i = phi i64 [ 0, %bb.d ], [ %i.dt, %bb.h ]
  %.pn.i.i.i.i = phi i64 [ %i.co, %bb.d ], [ %i.du, %bb.h ]
  %.sroa.01.0.i.i.i.i.i = and i64 %.pn.i.i.i.i, %i.cr ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.sroa.01.0.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i = load <16 x i8>, ptr %i.cv, align 1, !noalias !5660 ; 2 uses
  %i.cw = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i, %i.cu
  %i.cx = bitcast <16 x i1> %i.cw to i16          ; 2 uses
  %.not.i.not30.i.i.i.i = icmp eq i16 %i.cx, 0
  br i1 %.not.i.not30.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %bb.g
  %.sroa.06.0.i31.i.i.i.i = phi i16 [ %i.ds, %bb.g ], [ %i.cx, %bb.e ] ; 3 uses
  %i.cy = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i.i, i1 true)
  %i.cz = zext nneg i16 %i.cy to i64
  %i.da = add i64 %.sroa.01.0.i.i.i.i.i, %i.cz
  %i.db = and i64 %i.da, %i.cr
  %i.dc = sub nsw i64 0, %i.db
  %i.dd = getelementptr inbounds [32 x i8], ptr %i.cs, i64 %i.dc ; 2 uses
  %i.de = getelementptr inbounds i8, ptr %i.dd, i64 -32
  %.val2.i.i.i.i.i = load i128, ptr %i.de, align 16, !noalias !5661, !noundef !12
  %i.df = icmp eq i128 %i.by, %.val2.i.i.i.i.i
  br i1 %i.df, label %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECsl4q486LaARA_9typst_svg.exit.preheader.i.i, label %bb.g, !prof !20

_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECsl4q486LaARA_9typst_svg.exit.preheader.i.i: ; preds = %.lr.ph.i.i.i.i
  %.sroa.09.0.in19.i.i = getelementptr inbounds i8, ptr %i.dd, i64 -16
  %.sroa.09.020.i.i = load i64, ptr %.sroa.09.0.in19.i.i, align 8, !noalias !5662, !noundef !12 ; 5 uses
  %i.dg = icmp sgt i64 %.sroa.09.020.i.i, -1
  br i1 %i.dg, label %.lr.ph.i.i, label %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECsl4q486LaARA_9typst_svg.exit._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECsl4q486LaARA_9typst_svg.exit.preheader.i.i
  %.val13.i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs0_NtCsl4q486LaARA_9typst_svg5imageNtB7_8WebImage13to_base64_url7___CACHE, i64 24), align 8, !noalias !5654, !noundef !12 ; 2 uses
  %.val.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs0_NtCsl4q486LaARA_9typst_svg5imageNtB7_8WebImage13to_base64_url7___CACHE, i64 16), align 8, !noalias !5654, !nonnull !12 ; 2 uses
  %i.dh = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs0_NtCsl4q486LaARA_9typst_svg5imageNtB7_8WebImage13to_base64_url7___CACHE, i64 144), align 8, !noalias !5654
  %.fr22.i.i = freeze i64 %i.dh
  %i.di = icmp eq i64 %.fr22.i.i, 0
  %i.dj = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs0_NtCsl4q486LaARA_9typst_svg5imageNtB7_8WebImage13to_base64_url7___CACHE, i64 128), align 8, !noalias !5654 ; 2 uses
  %i.dk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs0_NtCsl4q486LaARA_9typst_svg5imageNtB7_8WebImage13to_base64_url7___CACHE, i64 120), align 8, !noalias !5654, !nonnull !12 ; 2 uses
  br i1 %i.di, label %.lr.ph.split.us.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i
  %i.dl = icmp ult i64 %.sroa.09.020.i.i, %.val13.i.i
  br i1 %i.dl, label %bb.f, label %.split.us.i.invoke.i, !prof !20

bb.f:                                             ; preds = %.lr.ph.split.us.i.i
  %i.dm = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i, i64 %.sroa.09.020.i.i
  %i.dn = load i64, ptr %i.dm, align 8, !range !26, !noalias !5663, !noundef !12
  %.not.i20.us.i.i = icmp eq i64 %i.dn, 2
  br i1 %.not.i20.us.i.i, label %.split.us.i.invoke.i, label %.loopexit.i, !prof !13

._crit_edge.i.i.i.i:                              ; preds = %bb.g, %bb.e
  %i.do = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i, splat (i8 -1)
  %i.dp = bitcast <16 x i1> %i.do to i16
  %i.dq = icmp eq i16 %i.dp, 0
  br i1 %i.dq, label %bb.h, label %.loopexit.i, !prof !13

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.dr = add i16 %.sroa.06.0.i31.i.i.i.i, -1
  %i.ds = and i16 %i.dr, %.sroa.06.0.i31.i.i.i.i  ; 2 uses
  %.not.i.not.i.i.i.i = icmp eq i16 %i.ds, 0
  br i1 %.not.i.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.dt = add i64 %.sroa.9.0.i.i.i.i.i, 16        ; 2 uses
  %i.du = add i64 %.sroa.01.0.i.i.i.i.i, %i.dt
  br label %bb.e

_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECsl4q486LaARA_9typst_svg.exit.loopexit.i.i: ; preds = %.lr.ph.i.i26.i.i
  %.sroa.09.0.in.i.i = getelementptr inbounds i8, ptr %i.es, i64 -16
  %.sroa.09.0.i.i = load i64, ptr %.sroa.09.0.in.i.i, align 8, !noalias !5662, !noundef !12 ; 3 uses
  %i.dv = icmp sgt i64 %.sroa.09.0.i.i, -1
  br i1 %i.dv, label %.lr.ph.split.i.i, label %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECsl4q486LaARA_9typst_svg.exit._crit_edge.i.i

_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECsl4q486LaARA_9typst_svg.exit._crit_edge.i.i: ; preds = %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECsl4q486LaARA_9typst_svg.exit.loopexit.i.i, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECsl4q486LaARA_9typst_svg.exit.preheader.i.i
  %.sroa.09.0.lcssa.i.i = phi i64 [ %.sroa.09.020.i.i, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECsl4q486LaARA_9typst_svg.exit.preheader.i.i ], [ %.sroa.09.0.i.i, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECsl4q486LaARA_9typst_svg.exit.loopexit.i.i ]
  %i.dw = xor i64 %.sroa.09.0.lcssa.i.i, -1       ; 2 uses
  %.val18.i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs0_NtCsl4q486LaARA_9typst_svg5imageNtB7_8WebImage13to_base64_url7___CACHE, i64 64), align 8, !noalias !5654, !noundef !12
  %i.dx = icmp ugt i64 %.val18.i.i, %i.dw
  br i1 %i.dx, label %bb.i, label %.split.us.i.invoke.i, !prof !20

bb.i:                                             ; preds = %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECsl4q486LaARA_9typst_svg.exit._crit_edge.i.i
  %.val17.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs0_NtCsl4q486LaARA_9typst_svg5imageNtB7_8WebImage13to_base64_url7___CACHE, i64 56), align 8, !noalias !5654, !nonnull !12, !noundef !12
  %i.dy = getelementptr inbounds nuw [64 x i8], ptr %.val17.i.i, i64 %i.dw ; 5 uses
  %i.dz = load i64, ptr %i.dy, align 8, !range !26, !noalias !5662, !noundef !12
  %.not.i19.i.i = icmp eq i64 %i.dz, 2
  br i1 %.not.i19.i.i, label %.split.us.i.invoke.i, label %bb.p, !prof !13

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECsl4q486LaARA_9typst_svg.exit.loopexit.i.i
  %.sroa.09.021.i.i = phi i64 [ %.sroa.09.0.i.i, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECsl4q486LaARA_9typst_svg.exit.loopexit.i.i ], [ %.sroa.09.020.i.i, %.lr.ph.i.i ] ; 4 uses
  %i.ea = icmp ult i64 %.sroa.09.021.i.i, %.val13.i.i
  br i1 %i.ea, label %bb.j, label %.split.us.i.invoke.i, !prof !20

bb.j:                                             ; preds = %.lr.ph.split.i.i
  %i.eb = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i, i64 %.sroa.09.021.i.i
  %i.ec = load i64, ptr %i.eb, align 8, !range !26, !noalias !5663, !noundef !12
  %.not.i20.i.i = icmp eq i64 %i.ec, 2
  br i1 %.not.i20.i.i, label %.split.us.i.invoke.i, label %_RNvXs4_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs_1__9MultiCalluEEEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexjE5indexCsl4q486LaARA_9typst_svg.exit.i.i, !prof !13

.split.us.i.invoke.i:                             ; preds = %bb.j, %.lr.ph.split.i.i, %bb.i, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECsl4q486LaARA_9typst_svg.exit._crit_edge.i.i, %bb.f, %.lr.ph.split.us.i.i
  %i.ed = phi ptr [ @29, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECsl4q486LaARA_9typst_svg.exit._crit_edge.i.i ], [ @29, %bb.i ], [ @30, %bb.f ], [ @30, %.lr.ph.split.us.i.i ], [ @30, %.lr.ph.split.i.i ], [ @30, %bb.j ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @210, i64 noundef 11, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ed) #33
          to label %.split.us.i.cont.i unwind label %bb.n, !noalias !5662

.split.us.i.cont.i:                               ; preds = %.split.us.i.invoke.i
  unreachable

_RNvXs4_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs_1__9MultiCalluEEEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexjE5indexCsl4q486LaARA_9typst_svg.exit.i.i: ; preds = %bb.j
  %i.ee = mul i64 %.sroa.09.021.i.i, 6292750897829489597 ; 2 uses
  %i.ef = call noundef i64 @llvm.fshl.i64(i64 %i.ee, i64 %i.ee, i64 26) ; 2 uses
  %i.eg = lshr i64 %i.ef, 57
  %i.eh = trunc nuw nsw i64 %i.eg to i8
  %i.ei = insertelement <16 x i8> poison, i8 %i.eh, i64 0
  %i.ej = shufflevector <16 x i8> %i.ei, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.k

bb.k:                                             ; preds = %bb.m, %_RNvXs4_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs_1__9MultiCalluEEEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexjE5indexCsl4q486LaARA_9typst_svg.exit.i.i
  %.sroa.9.0.i.i.i21.i.i = phi i64 [ 0, %_RNvXs4_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs_1__9MultiCalluEEEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexjE5indexCsl4q486LaARA_9typst_svg.exit.i.i ], [ %i.fc, %bb.m ]
  %.pn.i.i22.i.i = phi i64 [ %i.ef, %_RNvXs4_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs_1__9MultiCalluEEEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexjE5indexCsl4q486LaARA_9typst_svg.exit.i.i ], [ %i.fd, %bb.m ]
  %.sroa.01.0.i.i.i23.i.i = and i64 %.pn.i.i22.i.i, %i.dj ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dk, i64 %.sroa.01.0.i.i.i23.i.i
  %.sroa.0.0.copyload.i24.i.i24.i.i = load <16 x i8>, ptr %i.ek, align 1, !noalias !5664 ; 2 uses
  %i.el = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i24.i.i, %i.ej
  %i.em = bitcast <16 x i1> %i.el to i16          ; 2 uses
  %.not.i.not30.i.i25.i.i = icmp eq i16 %i.em, 0
  br i1 %.not.i.not30.i.i25.i.i, label %._crit_edge.i.i30.i.i, label %.lr.ph.i.i26.i.i

.lr.ph.i.i26.i.i:                                 ; preds = %bb.k, %bb.l
  %.sroa.06.0.i31.i.i27.i.i = phi i16 [ %i.fb, %bb.l ], [ %i.em, %bb.k ] ; 3 uses
  %i.en = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i27.i.i, i1 true)
  %i.eo = zext nneg i16 %i.en to i64
  %i.ep = add i64 %.sroa.01.0.i.i.i23.i.i, %i.eo
  %i.eq = and i64 %i.ep, %i.dj
  %i.er = sub nsw i64 0, %i.eq
  %i.es = getelementptr inbounds [48 x i8], ptr %i.dk, i64 %i.er ; 3 uses
  %i.et = getelementptr inbounds i8, ptr %i.es, i64 -48
  %.val2.i.i.i28.i.i = load i64, ptr %i.et, align 8, !noalias !5665, !noundef !12
  %i.eu = getelementptr i8, ptr %i.es, i64 -32
  %.val3.i.i.i.i.i = load i128, ptr %i.eu, align 16, !noalias !5665
  %i.ev = icmp eq i64 %.sroa.09.021.i.i, %.val2.i.i.i28.i.i
  %i.ew = icmp eq i128 %.val3.i.i.i.i.i, 0
  %spec.select.i.i.i.i.i.i.i.i = select i1 %i.ev, i1 %i.ew, i1 false
  br i1 %spec.select.i.i.i.i.i.i.i.i, label %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECsl4q486LaARA_9typst_svg.exit.loopexit.i.i, label %bb.l, !prof !20

._crit_edge.i.i30.i.i:                            ; preds = %bb.l, %bb.k
  %i.ex = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i24.i.i, splat (i8 -1)
  %i.ey = bitcast <16 x i1> %i.ex to i16
  %i.ez = icmp eq i16 %i.ey, 0
  br i1 %i.ez, label %bb.m, label %.loopexit.i, !prof !13

bb.l:                                             ; preds = %.lr.ph.i.i26.i.i
  %i.fa = add i16 %.sroa.06.0.i31.i.i27.i.i, -1
  %i.fb = and i16 %i.fa, %.sroa.06.0.i31.i.i27.i.i ; 2 uses
  %.not.i.not.i.i29.i.i = icmp eq i16 %i.fb, 0
  br i1 %.not.i.not.i.i29.i.i, label %._crit_edge.i.i30.i.i, label %.lr.ph.i.i26.i.i

bb.m:                                             ; preds = %._crit_edge.i.i30.i.i
  %i.fc = add i64 %.sroa.9.0.i.i.i21.i.i, 16      ; 2 uses
  %i.fd = add i64 %.sroa.01.0.i.i.i23.i.i, %i.fc
  br label %bb.k

bb.n:                                             ; preds = %bb.ay, %.split.us.i.invoke.i
  %i.fe = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ff = atomicrmw add ptr @_RNvNvMs0_NtCsl4q486LaARA_9typst_svg5imageNtB7_8WebImage13to_base64_url7___CACHE, i64 -16 release, align 8, !noalias !5654
  %i.fg = and i64 %i.ff, -14
  %i.fh = icmp eq i64 %i.fg, 18
  br i1 %i.fh, label %bb.o, label %.body, !prof !13

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvMs8_NtCsg5ZWEykmiUC_11parking_lot10raw_rwlockNtB5_9RawRwLock18unlock_shared_slow(ptr noundef nonnull align 8 @_RNvNvMs0_NtCsl4q486LaARA_9typst_svg5imageNtB7_8WebImage13to_base64_url7___CACHE)
          to label %.body unwind label %bb.bm, !noalias !5662

bb.p:                                             ; preds = %bb.i
  %i.fi = getelementptr inbounds nuw i8, ptr %i.dy, i64 56
  store atomic i64 0, ptr %i.fi seq_cst, align 8, !noalias !5666
  %i.fj = getelementptr inbounds nuw i8, ptr %i.dy, i64 40
  call void @llvm.experimental.noalias.scope.decl(metadata !5667)
  call void @llvm.experimental.noalias.scope.decl(metadata !5668)
  call void @llvm.experimental.noalias.scope.decl(metadata !5669)
  call void @llvm.experimental.noalias.scope.decl(metadata !5670)
  %i.fk = getelementptr inbounds nuw i8, ptr %i.dy, i64 55
  %i.fl = load i8, ptr %i.fk, align 1, !alias.scope !5671, !noalias !5662, !noundef !12
  %.not.i.i.i = icmp sgt i8 %i.fl, -1
  %.val.i.i.i = load ptr, ptr %i.fj, align 8, !alias.scope !5672, !noalias !5662 ; 5 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.dy, i64 48
  %.val10.i.i.i = load i64, ptr %i.fm, align 8, !alias.scope !5672, !noalias !5662
  br i1 %.not.i.i.i, label %2, label %bb.az

.loopexit.i:                                      ; preds = %._crit_edge.i.i.i.i, %._crit_edge.i.i30.i.i, %bb.f, %.noexc9
  %i.fn = atomicrmw add ptr @_RNvNvMs0_NtCsl4q486LaARA_9typst_svg5imageNtB7_8WebImage13to_base64_url7___CACHE, i64 -16 release, align 8, !noalias !5654
  %i.fo = and i64 %i.fn, -14
  %i.fp = icmp eq i64 %i.fo, 18
  br i1 %i.fp, label %bb.q, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api6rwlock15RwLockReadGuardNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB2n_5inputs_1__9MultiCalluENtNtCsakL8LGkl72C_4ecow6string9EcoStringEEECsl4q486LaARA_9typst_svg.exit37.i, !prof !13

bb.q:                                             ; preds = %.loopexit.i
  invoke void @_RNvMs8_NtCsg5ZWEykmiUC_11parking_lot10raw_rwlockNtB5_9RawRwLock18unlock_shared_slow(ptr noundef nonnull align 8 @_RNvNvMs0_NtCsl4q486LaARA_9typst_svg5imageNtB7_8WebImage13to_base64_url7___CACHE)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api6rwlock15RwLockReadGuardNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB2n_5inputs_1__9MultiCalluENtNtCsakL8LGkl72C_4ecow6string9EcoStringEEECsl4q486LaARA_9typst_svg.exit37.i unwind label %bb.bn

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api6rwlock15RwLockReadGuardNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB2n_5inputs_1__9MultiCalluENtNtCsakL8LGkl72C_4ecow6string9EcoStringEEECsl4q486LaARA_9typst_svg.exit37.i: ; preds = %bb.q, %.loopexit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !5654
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !5673
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !5673
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.i, i8 0, i64 15, i1 false), !noalias !5673
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 15
  store i8 -128, ptr %.sroa.46.0..sroa_idx.i.i, align 1, !noalias !5673
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !5673
  %i.fq = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.fr = zext nneg i8 %i.v to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvMs0_NtCsl4q486LaARA_9typst_svg5imageNtB5_8WebImage13to_base64_url, i64 %i.fr
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.fs = zext nneg i8 %i.v to i64
  %switch.gep42 = getelementptr inbounds nuw i8, ptr @switch.table._RNvMs0_NtCsl4q486LaARA_9typst_svg5imageNtB5_8WebImage13to_base64_url.560, i64 %i.fs
  %switch.load43 = load i8, ptr %switch.gep42, align 1
  %switch.ext = zext i8 %switch.load43 to i64
  store ptr %switch.load, ptr %i.h, align 8, !noalias !5673, !captures !49
  store i64 %switch.ext, ptr %i.fq, align 8, !noalias !5673
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !5673
  store ptr %i.h, ptr %i.g, align 8, !noalias !5673
  %.sroa.410.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCsl4q486LaARA_9typst_svg, ptr %.sroa.410.0..sroa_idx.i.i, align 8, !noalias !5673
  %i.ft = invoke noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @14, ptr noundef nonnull @84, ptr noundef nonnull %i.g)
          to label %bb.s unwind label %bb.r, !noalias !5674

bb.r:                                             ; preds = %bb.t, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api6rwlock15RwLockReadGuardNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB2n_5inputs_1__9MultiCalluENtNtCsakL8LGkl72C_4ecow6string9EcoStringEEECsl4q486LaARA_9typst_svg.exit37.i
  %i.fu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsl4q486LaARA_9typst_svg(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.i) #32
          to label %.body unwind label %bb.at, !noalias !5674

bb.s:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api6rwlock15RwLockReadGuardNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB2n_5inputs_1__9MultiCalluENtNtCsakL8LGkl72C_4ecow6string9EcoStringEEECsl4q486LaARA_9typst_svg.exit37.i
  br i1 %i.ft, label %bb.t, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsl4q486LaARA_9typst_svg.exit.i.i, !prof !13

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @111, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @115, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @86) #33
          to label %.noexc.i.i unwind label %bb.r, !noalias !5674

.noexc.i.i:                                       ; preds = %bb.t
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsl4q486LaARA_9typst_svg.exit.i.i: ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !5673
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !5673
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 16, i1 false), !noalias !5673
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !5673
  %i.fv = invoke { ptr, i64 } @_RNvXs5_NtNtCsdaEETE4DqmE_13typst_library11foundations5bytesNtB5_5BytesINtNtCs3oUPovFnLWP_4core7convert5AsRefShE6as_ref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %.noexc29.i.i unwind label %bb.an, !noalias !5674 ; 2 uses

.noexc29.i.i:                                     ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsl4q486LaARA_9typst_svg.exit.i.i
  %i.fw = extractvalue { ptr, i64 } %i.fv, 0
  %i.fx = extractvalue { ptr, i64 } %i.fv, 1      ; 3 uses
  %i.fy = udiv i64 %i.fx, 3
  %i.fz = shl nuw i64 %i.fy, 2                    ; 2 uses
  %i.ga = urem i64 %i.fx, 3
  %.not.i.i.i.i.i = icmp eq i64 %i.ga, 0
  %i.gb = add nuw i64 %i.fz, 4
  %.sroa.7.0.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i64 %i.fz, i64 %i.gb ; 18 uses
  %.not.i.i.i.i.i.i = icmp slt i64 %.sroa.7.0.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.x, label %bb.u, !prof !15

bb.u:                                             ; preds = %.noexc29.i.i
  %i.gc = icmp eq i64 %.sroa.7.0.i.i.i.i.i, 0     ; 5 uses
  br i1 %i.gc, label %_RINvXs1_NtNtCs1xwejQucwHj_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsl4q486LaARA_9typst_svg.exit.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !5675
  %i.gd = call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %.sroa.7.0.i.i.i.i.i, i64 noundef range(i64 1, 17) 1) #31, !noalias !5675 ; 2 uses
  %i.ge = icmp eq ptr %i.gd, null
  br i1 %i.ge, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.gf = ptrtoint ptr %i.gd to i64
  br label %_RINvXs1_NtNtCs1xwejQucwHj_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsl4q486LaARA_9typst_svg.exit.i.i.i.i

bb.x:                                             ; preds = %bb.v, %.noexc29.i.i
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 1, %bb.v ], [ 0, %.noexc29.i.i ]
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %.sroa.7.0.i.i.i.i.i) #36
          to label %.noexc30.i.i unwind label %bb.an, !noalias !5674

.noexc30.i.i:                                     ; preds = %bb.x
  unreachable

_RINvXs1_NtNtCs1xwejQucwHj_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsl4q486LaARA_9typst_svg.exit.i.i.i.i: ; preds = %bb.w, %bb.u
  %.sroa.10.0.i.i.i.i.i = phi i64 [ %i.gf, %bb.w ], [ 1, %bb.u ] ; 2 uses
  %i.gg = inttoptr i64 %.sroa.10.0.i.i.i.i.i to ptr ; 8 uses
  %i.gh = invoke noundef i64 @_RNvXs_NtNtCsctbESz1Rzeb_6base646engine15general_purposeNtB4_14GeneralPurposeNtB6_6Engine15internal_encode(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(323) @87, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fw, i64 noundef range(i64 0, -9223372036854775808) %i.fx, ptr noalias nofree noundef nonnull %i.gg, i64 noundef range(i64 0, -9223372036854775808) %.sroa.7.0.i.i.i.i.i)
          to label %.noexc.i.i.i.i unwind label %bb.al, !noalias !5676 ; 6 uses

.noexc.i.i.i.i:                                   ; preds = %_RINvXs1_NtNtCs1xwejQucwHj_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsl4q486LaARA_9typst_svg.exit.i.i.i.i
  %i.gi = icmp ugt i64 %i.gh, %.sroa.7.0.i.i.i.i.i
  br i1 %i.gi, label %bb.z, label %bb.y, !prof !13

bb.y:                                             ; preds = %.noexc.i.i.i.i
  %i.gj = sub nuw nsw i64 %.sroa.7.0.i.i.i.i.i, %i.gh ; 4 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gg, i64 %i.gh ; 3 uses
  %i.gl = sub nsw i64 0, %i.gh
  %i.gm = and i64 %i.gl, 3                        ; 3 uses
  %.not.i5.i.i.i.i = icmp eq i64 %i.gm, 0
  br i1 %.not.i5.i.i.i.i, label %_RINvNtCsctbESz1Rzeb_6base646encode19encode_with_paddingNtNtNtB4_6engine15general_purpose14GeneralPurposeECsl4q486LaARA_9typst_svg.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.z:                                             ; preds = %.noexc.i.i.i.i
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %i.gh, i64 noundef range(i64 0, -9223372036854775808) %.sroa.7.0.i.i.i.i.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.7.0.i.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #33
          to label %.noexc6.i.i.i.i unwind label %bb.al, !noalias !5676

.noexc6.i.i.i.i:                                  ; preds = %bb.z
  unreachable

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.y
  %exitcond.not.i.i.i.i.i = icmp eq i64 %.sroa.7.0.i.i.i.i.i, %i.gh
  br i1 %exitcond.not.i.i.i.i.i, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i.i.i.i.i
  store i8 61, ptr %i.gk, align 1, !alias.scope !5677, !noalias !5676
  %exitcond4.not.i.i.i.i.i = icmp eq i64 %i.gm, 1
  br i1 %exitcond4.not.i.i.i.i.i, label %_RINvNtCsctbESz1Rzeb_6base646encode19encode_with_paddingNtNtNtB4_6engine15general_purpose14GeneralPurposeECsl4q486LaARA_9typst_svg.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.1

.lr.ph.i.i.i.i.i.1:                               ; preds = %bb.aa
  %exitcond.not.i.i.i.i.i.1 = icmp eq i64 %i.gj, 1
  br i1 %exitcond.not.i.i.i.i.i.1, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i.i.i.i.i.1
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gk, i64 1
  store i8 61, ptr %i.gn, align 1, !alias.scope !5677, !noalias !5676
  %exitcond4.not.i.i.i.i.i.1 = icmp eq i64 %i.gm, 2
  br i1 %exitcond4.not.i.i.i.i.i.1, label %_RINvNtCsctbESz1Rzeb_6base646encode19encode_with_paddingNtNtNtB4_6engine15general_purpose14GeneralPurposeECsl4q486LaARA_9typst_svg.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.2

.lr.ph.i.i.i.i.i.2:                               ; preds = %bb.ab
  %exitcond.not.i.i.i.i.i.2 = icmp eq i64 %i.gj, 2
  br i1 %exitcond.not.i.i.i.i.i.2, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph.i.i.i.i.i.2
  %i.go = getelementptr inbounds nuw i8, ptr %i.gk, i64 2
  store i8 61, ptr %i.go, align 1, !alias.scope !5677, !noalias !5676
  br label %_RINvNtCsctbESz1Rzeb_6base646encode19encode_with_paddingNtNtNtB4_6engine15general_purpose14GeneralPurposeECsl4q486LaARA_9typst_svg.exit.i.i.i.i

bb.ad:                                            ; preds = %.lr.ph.i.i.i.i.i.2, %.lr.ph.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.gj, i64 noundef %i.gj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #33
          to label %.noexc7.i.i.i.i unwind label %bb.al, !noalias !5676

.noexc7.i.i.i.i:                                  ; preds = %bb.ad
  unreachable

_RINvNtCsctbESz1Rzeb_6base646encode19encode_with_paddingNtNtNtB4_6engine15general_purpose14GeneralPurposeECsl4q486LaARA_9typst_svg.exit.i.i.i.i: ; preds = %bb.aa, %bb.ab, %bb.ac, %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !5678
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.gg, i64 noundef %.sroa.7.0.i.i.i.i.i)
          to label %bb.ag unwind label %bb.ae, !noalias !5679

bb.ae:                                            ; preds = %_RINvNtCsctbESz1Rzeb_6base646encode19encode_with_paddingNtNtNtB4_6engine15general_purpose14GeneralPurposeECsl4q486LaARA_9typst_svg.exit.i.i.i.i
  %i.gp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.gc, label %.body.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gg, i64 noundef %.sroa.7.0.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !5680
  br label %.body.i.i

bb.ag:                                            ; preds = %_RINvNtCsctbESz1Rzeb_6base646encode19encode_with_paddingNtNtNtB4_6engine15general_purpose14GeneralPurposeECsl4q486LaARA_9typst_svg.exit.i.i.i.i
  %i.gq = load i64, ptr %i.f, align 8, !range !42, !noalias !5678, !noundef !12
  %i.gr = trunc nuw i64 %i.gq to i1
  br i1 %i.gr, label %bb.ah, label %bb.ao

bb.ah:                                            ; preds = %bb.ag
  %i.gs = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.gt = inttoptr i64 %.sroa.7.0.i.i.i.i.i to ptr
  %.sroa.6.0..sroa_idx3.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx3.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx3.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.gu = load <2 x i64>, ptr %i.gs, align 8, !noalias !5678
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !5678
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !5681
  store i64 %.sroa.7.0.i.i.i.i.i, ptr %i.e, align 8, !noalias !5682
  store i64 %.sroa.10.0.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx3.i.i.i.i, align 8, !noalias !5682
  store ptr %i.gt, ptr %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx3.sroa_idx.i.i.i.i, align 8, !noalias !5682
  store <2 x i64> %i.gu, ptr %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx3.sroa_idx.i.i.i.i, align 8, !noalias !5682
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @44, i64 noundef 12, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @112, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #36
          to label %bb.ak unwind label %bb.ai, !noalias !5683

bb.ai:                                            ; preds = %bb.ah
  %i.gv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5684)
  call void @llvm.experimental.noalias.scope.decl(metadata !5685)
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !5686, !noalias !5681 ; 2 uses
  %i.gw = icmp eq i64 %.val.i.i.i.i.i.i.i, 0
  br i1 %i.gw, label %.body.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %.val1.i.i.i.i.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx3.i.i.i.i, align 8, !alias.scope !5686, !noalias !5681, !nonnull !12, !noundef !12
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !5687
  br label %.body.i.i

bb.ak:                                            ; preds = %bb.ah
  unreachable

bb.al:                                            ; preds = %bb.ad, %bb.z, %_RINvXs1_NtNtCs1xwejQucwHj_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsl4q486LaARA_9typst_svg.exit.i.i.i.i
  %i.gx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.gc, label %.body.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gg, i64 noundef %.sroa.7.0.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !5688
  br label %.body.i.i

bb.an:                                            ; preds = %bb.x, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsl4q486LaARA_9typst_svg.exit.i.i
  %i.gy = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.ao:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !5678
  invoke void @_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString8push_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.gg, i64 noundef %.sroa.7.0.i.i.i.i.i)
          to label %bb.ar unwind label %bb.ap, !noalias !5674

bb.ap:                                            ; preds = %bb.ao
  %i.gz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.gc, label %.body.i.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gg, i64 noundef %.sroa.7.0.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !5689
  br label %.body.i.i

bb.ar:                                            ; preds = %bb.ao
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 16, i1 false), !noalias !5690
  br i1 %i.gc, label %_RNCNvMs0_NtCsl4q486LaARA_9typst_svg5imageNtB7_8WebImage13to_base64_url0B9_.exit.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gg, i64 noundef %.sroa.7.0.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !5691
  br label %_RNCNvMs0_NtCsl4q486LaARA_9typst_svg5imageNtB7_8WebImage13to_base64_url0B9_.exit.i

bb.at:                                            ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsl4q486LaARA_9typst_svg.exit.i.i.i.i.i, %bb.av, %bb.r
  %i.ha = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37, !noalias !5674
  unreachable

.body.i.i:                                        ; preds = %bb.aq, %bb.ap, %bb.an, %bb.am, %bb.al, %bb.aj, %bb.ai, %bb.af, %bb.ae
  %.pn.i.i = phi { ptr, i32 } [ %i.gv, %bb.ai ], [ %i.gy, %bb.an ], [ %i.gx, %bb.am ], [ %i.gx, %bb.al ], [ %i.gp, %bb.ae ], [ %i.gp, %bb.af ], [ %i.gv, %bb.aj ], [ %i.gz, %bb.ap ], [ %i.gz, %bb.aq ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5692)
  %.val.i57.i = load ptr, ptr %i.j, align 8, !alias.scope !5692, !noalias !5693 ; 4 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.j, i64 15
  %.val1.i.i = load i8, ptr %i.hb, align 1, !alias.scope !5692, !noalias !5693, !noundef !12
  %.not.i.i.i.i = icmp sgt i8 %.val1.i.i, -1
  br i1 %.not.i.i.i.i, label %bb.au, label %.body

bb.au:                                            ; preds = %.body.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i57.i) ], !noalias !5694
  %.not.i.i.i.i.i58.i = icmp eq ptr %.val.i57.i, inttoptr (i64 16 to ptr)
  %i.hc = getelementptr inbounds i8, ptr %.val.i57.i, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i58.i, label %.body, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsl4q486LaARA_9typst_svg.exit.i.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsl4q486LaARA_9typst_svg.exit.i.i.i.i.i: ; preds = %bb.au
  %i.hd = atomicrmw add ptr %i.hc, i64 -1 release, align 8, !noalias !5695
  %.not.i.i.i.i59.i = icmp eq i64 %i.hd, 1
  br i1 %.not.i.i.i.i59.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsl4q486LaARA_9typst_svg.exit.i.i.i.i.i, label %.body

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsl4q486LaARA_9typst_svg.exit.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsl4q486LaARA_9typst_svg.exit.i.i.i.i.i
  fence acquire, !noalias !5694
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5696
  %i.he = getelementptr i8, ptr %.val.i57.i, i64 -8
  %.val.i.i.i.i.i.i = load i64, ptr %i.he, align 8, !noalias !5695, !noundef !12 ; 2 uses
  %narrow.i.i.i.i.i.i.i = icmp ult i64 %.val.i.i.i.i.i.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsl4q486LaARA_9typst_svg.exit.i.i.i.i.i, label %bb.av, !prof !20

bb.av:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsl4q486LaARA_9typst_svg.exit.i.i.i.i.i
  invoke void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #36
          to label %.noexc60.i unwind label %bb.at, !noalias !5662

.noexc60.i:                                       ; preds = %bb.av
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsl4q486LaARA_9typst_svg.exit.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsl4q486LaARA_9typst_svg.exit.i.i.i.i.i
  %i.hf = add nuw nsw i64 %.val.i.i.i.i.i.i, 16
  %i.hg = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.hc, ptr %i.hg, align 8, !noalias !5696
  store i64 8, ptr %i.b, align 8, !noalias !5696
  %i.hh = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.hf, ptr %i.hh, align 8, !noalias !5696
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.noexc61.i unwind label %bb.at, !noalias !5662

.noexc61.i:                                       ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsl4q486LaARA_9typst_svg.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5696
  br label %.body

_RNCNvMs0_NtCsl4q486LaARA_9typst_svg5imageNtB7_8WebImage13to_base64_url0B9_.exit.i: ; preds = %bb.as, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !5673
  %i.hi = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs0_NtCsl4q486LaARA_9typst_svg5imageNtB7_8WebImage13to_base64_url7___CACHE, i64 152) acquire, align 8, !noalias !5654
  %i.hj = icmp eq i32 %i.hi, 0
  br i1 %i.hj, label %bb.bc, label %bb.aw, !prof !20

bb.aw:                                            ; preds = %_RNCNvMs0_NtCsl4q486LaARA_9typst_svg5imageNtB7_8WebImage13to_base64_url0B9_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5654
  store ptr @_RNvNvMs0_NtCsl4q486LaARA_9typst_svg5imageNtB7_8WebImage13to_base64_url7___CACHE, ptr %i.d, align 8, !noalias !5654
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5654
  store ptr %i.d, ptr %i.c, align 8, !noalias !5654
  invoke void @_RNvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNvMs0_NtCsl4q486LaARA_9typst_svg5imageNtB7_8WebImage13to_base64_url7___CACHE, i64 152), i1 noundef zeroext true, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @15, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17)
          to label %.noexc38.i unwind label %bb.bb, !noalias !5662

.noexc38.i:                                       ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5654
  br label %bb.bc

2:                                                ; preds = %bb.p
  %.not.i.i.i.i41.i = icmp eq ptr %.val.i.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i41.i, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %2
  %i.hk = getelementptr inbounds i8, ptr %.val.i.i.i, i64 -16
  %i.hl = atomicrmw add ptr %i.hk, i64 1 monotonic, align 8, !noalias !5697
  %i.hm = icmp slt i64 %i.hl, 0
  br i1 %i.hm, label %bb.ay, label %bb.az, !prof !13

bb.ay:                                            ; preds = %bb.ax
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowhECsl4q486LaARA_9typst_svg(ptr noundef nonnull %.val.i.i.i) #36
          to label %.noexc42.i unwind label %bb.n

.noexc42.i:                                       ; preds = %bb.ay
  unreachable

bb.az:                                            ; preds = %bb.ax, %2, %bb.p
  %.sroa.0.0.i40.i = phi ptr [ inttoptr (i64 16 to ptr), %2 ], [ %.val.i.i.i, %bb.ax ], [ %.val.i.i.i, %bb.p ]
  store ptr %.sroa.0.0.i40.i, ptr %0, align 8, !alias.scope !5698
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.val10.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !5698
  %i.hn = atomicrmw add ptr @_RNvNvMs0_NtCsl4q486LaARA_9typst_svg5imageNtB7_8WebImage13to_base64_url7___CACHE, i64 -16 release, align 8, !noalias !5654
  %i.ho = and i64 %i.hn, -14
  %i.hp = icmp eq i64 %i.ho, 18
  br i1 %i.hp, label %bb.ba, label %_RINvNtCsloFShupyl5J_6comemo7memoize7memoizeINtNtB4_5input5MultiToEENtNtCsakL8LGkl72C_4ecow6string9EcoStringNCNvMs0_NtCsl4q486LaARA_9typst_svg5imageNtB1P_8WebImage13to_base64_url0EB1R_.exit, !prof !13

bb.ba:                                            ; preds = %bb.az
  invoke void @_RNvMs8_NtCsg5ZWEykmiUC_11parking_lot10raw_rwlockNtB5_9RawRwLock18unlock_shared_slow(ptr noundef nonnull align 8 @_RNvNvMs0_NtCsl4q486LaARA_9typst_svg5imageNtB7_8WebImage13to_base64_url7___CACHE)
          to label %_RINvNtCsloFShupyl5J_6comemo7memoize7memoizeINtNtB4_5input5MultiToEENtNtCsakL8LGkl72C_4ecow6string9EcoStringNCNvMs0_NtCsl4q486LaARA_9typst_svg5imageNtB1P_8WebImage13to_base64_url0EB1R_.exit unwind label %bb.bn

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api6rwlock16RwLockWriteGuardNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB2o_5inputs_1__9MultiCalluENtNtCsakL8LGkl72C_4ecow6string9EcoStringEEECsl4q486LaARA_9typst_svg.exit.i: ; preds = %bb.bi, %bb.bh, %bb.bb
  %.pn.i = phi { ptr, i32 } [ %i.hq, %bb.bb ], [ %i.ia, %bb.bi ], [ %i.ia, %bb.bh ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsl4q486LaARA_9typst_svg(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.o) #32
          to label %.body unwind label %bb.bm, !noalias !5653

bb.bb:                                            ; preds = %bb.bl, %bb.bd, %bb.aw
  %i.hq = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api6rwlock16RwLockWriteGuardNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB2o_5inputs_1__9MultiCalluENtNtCsakL8LGkl72C_4ecow6string9EcoStringEEECsl4q486LaARA_9typst_svg.exit.i

bb.bc:                                            ; preds = %.noexc38.i, %_RNCNvMs0_NtCsl4q486LaARA_9typst_svg5imageNtB7_8WebImage13to_base64_url0B9_.exit.i
  %i.hr = cmpxchg weak ptr @_RNvNvMs0_NtCsl4q486LaARA_9typst_svg5imageNtB7_8WebImage13to_base64_url7___CACHE, i64 0, i64 8 acquire monotonic, align 8, !noalias !5654
  %i.hs = extractvalue { i64, i1 } %i.hr, 1
  br i1 %i.hs, label %bb.be, label %bb.bd, !prof !20

bb.bd:                                            ; preds = %bb.bc
  %i.ht = invoke noundef zeroext i1 @_RNvMs8_NtCsg5ZWEykmiUC_11parking_lot10raw_rwlockNtB5_9RawRwLock19lock_exclusive_slow(ptr noundef nonnull align 8 @_RNvNvMs0_NtCsl4q486LaARA_9typst_svg5imageNtB7_8WebImage13to_base64_url7___CACHE, i64 undef, i32 noundef -1)
          to label %bb.be unwind label %bb.bb, !noalias !5662 ; 0 uses

bb.be:                                            ; preds = %bb.bd, %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !5654
  call void @llvm.experimental.noalias.scope.decl(metadata !5699)
  call void @llvm.experimental.noalias.scope.decl(metadata !5700)
  call void @llvm.experimental.noalias.scope.decl(metadata !5701)
  call void @llvm.experimental.noalias.scope.decl(metadata !5702)
  %i.hu = getelementptr inbounds nuw i8, ptr %i.o, i64 15
  %i.hv = load i8, ptr %i.hu, align 1, !alias.scope !5703, !noalias !5654, !noundef !12
  %.not.i.i46.i = icmp sgt i8 %i.hv, -1
  %.val.i.i47.i = load ptr, ptr %i.o, align 8, !alias.scope !5704, !noalias !5654 ; 5 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.val10.i.i48.i = load i64, ptr %i.hw, align 8, !alias.scope !5704, !noalias !5654
  br i1 %.not.i.i46.i, label %3, label %bb.bj

3:                                                ; preds = %bb.be
  %.not.i.i.i.i51.i = icmp eq ptr %.val.i.i47.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i51.i, label %bb.bj, label %bb.bf

bb.bf:                                            ; preds = %3
  %i.hx = getelementptr inbounds i8, ptr %.val.i.i47.i, i64 -16
  %i.hy = atomicrmw add ptr %i.hx, i64 1 monotonic, align 8, !noalias !5705
  %i.hz = icmp slt i64 %i.hy, 0
  br i1 %i.hz, label %bb.bg, label %bb.bj, !prof !13

bb.bg:                                            ; preds = %bb.bf
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowhECsl4q486LaARA_9typst_svg(ptr noundef nonnull %.val.i.i47.i) #36
          to label %.noexc52.i unwind label %bb.bh

.noexc52.i:                                       ; preds = %bb.bg
  unreachable

bb.bh:                                            ; preds = %bb.bj, %bb.bg
  %i.ia = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ib = cmpxchg ptr @_RNvNvMs0_NtCsl4q486LaARA_9typst_svg5imageNtB7_8WebImage13to_base64_url7___CACHE, i64 8, i64 0 release monotonic, align 8, !noalias !5654
  %i.ic = extractvalue { i64, i1 } %i.ib, 1
  br i1 %i.ic, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api6rwlock16RwLockWriteGuardNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB2o_5inputs_1__9MultiCalluENtNtCsakL8LGkl72C_4ecow6string9EcoStringEEECsl4q486LaARA_9typst_svg.exit.i, label %bb.bi, !prof !20

bb.bi:                                            ; preds = %bb.bh
  invoke void @_RNvMs8_NtCsg5ZWEykmiUC_11parking_lot10raw_rwlockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 @_RNvNvMs0_NtCsl4q486LaARA_9typst_svg5imageNtB7_8WebImage13to_base64_url7___CACHE, i1 noundef zeroext false)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api6rwlock16RwLockWriteGuardNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB2o_5inputs_1__9MultiCalluENtNtCsakL8LGkl72C_4ecow6string9EcoStringEEECsl4q486LaARA_9typst_svg.exit.i unwind label %bb.bm, !noalias !5653

bb.bj:                                            ; preds = %bb.bf, %3, %bb.be
  %.sroa.0.0.i49.i = phi ptr [ inttoptr (i64 16 to ptr), %3 ], [ %.val.i.i47.i, %bb.bf ], [ %.val.i.i47.i, %bb.be ]
  store ptr %.sroa.0.0.i49.i, ptr %i.n, align 8, !alias.scope !5699, !noalias !5654
  %.sroa.5.0..sroa_idx.i50.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %.val10.i.i48.i, ptr %.sroa.5.0..sroa_idx.i50.i, align 8, !alias.scope !5699, !noalias !5654
  invoke fastcc void @_RNvMs_NtCsloFShupyl5J_6comemo7memoizeINtB4_9CacheDataINtNvNtB6_5inputs_1__9MultiCalluENtNtCsakL8LGkl72C_4ecow6string9EcoStringE6insertCsl4q486LaARA_9typst_svg(ptr noalias nofree noundef align 8 dereferenceable(144) getelementptr inbounds nuw (i8, ptr @_RNvNvMs0_NtCsl4q486LaARA_9typst_svg5imageNtB7_8WebImage13to_base64_url7___CACHE, i64 8), i128 noundef %i.by, ptr noundef nonnull align 8 dereferenceable(96) %i.t, ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.n)
          to label %bb.bk unwind label %bb.bh

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !5654
  %i.id = cmpxchg ptr @_RNvNvMs0_NtCsl4q486LaARA_9typst_svg5imageNtB7_8WebImage13to_base64_url7___CACHE, i64 8, i64 0 release monotonic, align 8, !noalias !5654
  %i.ie = extractvalue { i64, i1 } %i.id, 1
  br i1 %i.ie, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api6rwlock16RwLockWriteGuardNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB2o_5inputs_1__9MultiCalluENtNtCsakL8LGkl72C_4ecow6string9EcoStringEEECsl4q486LaARA_9typst_svg.exit56.i, label %bb.bl, !prof !20

bb.bl:                                            ; preds = %bb.bk
  invoke void @_RNvMs8_NtCsg5ZWEykmiUC_11parking_lot10raw_rwlockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 @_RNvNvMs0_NtCsl4q486LaARA_9typst_svg5imageNtB7_8WebImage13to_base64_url7___CACHE, i1 noundef zeroext false)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api6rwlock16RwLockWriteGuardNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB2o_5inputs_1__9MultiCalluENtNtCsakL8LGkl72C_4ecow6string9EcoStringEEECsl4q486LaARA_9typst_svg.exit56.i unwind label %bb.bb, !noalias !5653

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api6rwlock16RwLockWriteGuardNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB2o_5inputs_1__9MultiCalluENtNtCsakL8LGkl72C_4ecow6string9EcoStringEEECsl4q486LaARA_9typst_svg.exit56.i: ; preds = %bb.bl, %bb.bk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.o, i64 16, i1 false), !noalias !5706
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !5654
  br label %_RINvNtCsloFShupyl5J_6comemo7memoize7memoizeINtNtB4_5input5MultiToEENtNtCsakL8LGkl72C_4ecow6string9EcoStringNCNvMs0_NtCsl4q486LaARA_9typst_svg5imageNtB1P_8WebImage13to_base64_url0EB1R_.exit

bb.bm:                                            ; preds = %bb.bi, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api6rwlock16RwLockWriteGuardNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB2o_5inputs_1__9MultiCalluENtNtCsakL8LGkl72C_4ecow6string9EcoStringEEECsl4q486LaARA_9typst_svg.exit.i, %bb.o
  %i.if = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37, !noalias !5653
  unreachable

bb.bn:                                            ; preds = %bb.ba, %bb.q, %_RNvMs8_NtCsg5ZWEykmiUC_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i, %bb.c
  %i.ig = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.n, %bb.o, %bb.r, %.body.i.i, %bb.au, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsl4q486LaARA_9typst_svg.exit.i.i.i.i.i, %.noexc61.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api6rwlock16RwLockWriteGuardNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB2o_5inputs_1__9MultiCalluENtNtCsakL8LGkl72C_4ecow6string9EcoStringEEECsl4q486LaARA_9typst_svg.exit.i, %bb.bn
  %eh.lpad-body = phi { ptr, i32 } [ %i.ig, %bb.bn ], [ %.pn.i.i, %.noexc61.i ], [ %i.fu, %bb.r ], [ %.pn.i.i, %.body.i.i ], [ %.pn.i.i, %bb.au ], [ %.pn.i.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsl4q486LaARA_9typst_svg.exit.i.i.i.i.i ], [ %.pn.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api6rwlock16RwLockWriteGuardNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB2o_5inputs_1__9MultiCalluENtNtCsakL8LGkl72C_4ecow6string9EcoStringEEECsl4q486LaARA_9typst_svg.exit.i ], [ %i.fe, %bb.o ], [ %i.fe, %bb.n ]
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTTuEINtNtCsloFShupyl5J_6comemo10constraint10ConstraintINtNvNtBK_5inputs_1__9MultiCalluEEEECsl4q486LaARA_9typst_svg(ptr noalias nofree noundef align 8 dereferenceable(96) %i.t) #32
  resume { ptr, i32 } %eh.lpad-body

_RINvNtCsloFShupyl5J_6comemo7memoize7memoizeINtNtB4_5input5MultiToEENtNtCsakL8LGkl72C_4ecow6string9EcoStringNCNvMs0_NtCsl4q486LaARA_9typst_svg5imageNtB1P_8WebImage13to_base64_url0EB1R_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api6rwlock16RwLockWriteGuardNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB2o_5inputs_1__9MultiCalluENtNtCsakL8LGkl72C_4ecow6string9EcoStringEEECsl4q486LaARA_9typst_svg.exit56.i, %bb.az, %bb.ba
  call void @llvm.experimental.noalias.scope.decl(metadata !5707)
  call void @llvm.experimental.noalias.scope.decl(metadata !5708)
  call void @llvm.experimental.noalias.scope.decl(metadata !5709)
  %i.ih = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !5710)
  call void @llvm.experimental.noalias.scope.decl(metadata !5711)
  call void @llvm.experimental.noalias.scope.decl(metadata !5712)
  %.val.i.i.i.i.i.i12 = load i64, ptr %i.ih, align 8, !alias.scope !5713 ; 2 uses
  %i.ii = icmp eq i64 %.val.i.i.i.i.i.i12, 0
  br i1 %i.ii, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs_1__9MultiCalluEoEEEECsl4q486LaARA_9typst_svg.exit.i.i.i.i.i.i, label %bb.bo

bb.bo:                                            ; preds = %_RINvNtCsloFShupyl5J_6comemo7memoize7memoizeINtNtB4_5input5MultiToEENtNtCsakL8LGkl72C_4ecow6string9EcoStringNCNvMs0_NtCsl4q486LaARA_9typst_svg5imageNtB1P_8WebImage13to_base64_url0EB1R_.exit
  %.val1.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !5713, !nonnull !12, !noundef !12
  %i.ij = shl nuw i64 %.val.i.i.i.i.i.i12, 5
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i, i64 noundef %i.ij, i64 noundef range(i64 1, -9223372036854775807) 16) #31, !noalias !5713
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs_1__9MultiCalluEoEEEECsl4q486LaARA_9typst_svg.exit.i.i.i.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs_1__9MultiCalluEoEEEECsl4q486LaARA_9typst_svg.exit.i.i.i.i.i.i: ; preds = %bb.bo, %_RINvNtCsloFShupyl5J_6comemo7memoize7memoizeINtNtB4_5input5MultiToEENtNtCsakL8LGkl72C_4ecow6string9EcoStringNCNvMs0_NtCsl4q486LaARA_9typst_svg5imageNtB1P_8WebImage13to_base64_url0EB1R_.exit
  %.val2.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i3, align 8, !alias.scope !5713 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %.val3.i.i.i.i.i.i = load i64, ptr %i.ik, align 8, !alias.scope !5713, !noundef !12 ; 4 uses
  %i.il = icmp eq i64 %.val3.i.i.i.i.i.i, 0
  br i1 %i.il, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTTuEINtNtCsloFShupyl5J_6comemo10constraint10ConstraintINtNvNtBK_5inputs_1__9MultiCalluEEEECsl4q486LaARA_9typst_svg.exit, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i.i

_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs_1__9MultiCalluEoEEEECsl4q486LaARA_9typst_svg.exit.i.i.i.i.i.i
  %i.im = icmp slt i64 %.val3.i.i.i.i.i.i, 576460752303423487
  call void @llvm.assume(i1 %i.im)
  %i.in = shl i64 %.val3.i.i.i.i.i.i, 5           ; 2 uses
  %i.io = add i64 %i.in, 32                       ; 2 uses
  %i.ip = add nsw i64 %.val3.i.i.i.i.i.i, 17
  %i.iq = add i64 %i.ip, %i.io                    ; 4 uses
  %i.ir = icmp uge i64 %i.iq, %i.io
  %i.is = icmp ult i64 %i.iq, 9223372036854775793
  call void @llvm.assume(i1 %i.ir)
  call void @llvm.assume(i1 %i.is)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i.i.i.i.i) ]
  %i.it = icmp eq i64 %i.iq, 0
  br i1 %i.it, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTTuEINtNtCsloFShupyl5J_6comemo10constraint10ConstraintINtNvNtBK_5inputs_1__9MultiCalluEEEECsl4q486LaARA_9typst_svg.exit, label %bb.bp

bb.bp:                                            ; preds = %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.iu = sub nuw nsw i64 -32, %i.in
  %i.iv = getelementptr inbounds i8, ptr %.val2.i.i.i.i.i.i, i64 %i.iu
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.iv, i64 noundef %i.iq, i64 noundef range(i64 1, -9223372036854775807) 16) #31, !noalias !5713
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTTuEINtNtCsloFShupyl5J_6comemo10constraint10ConstraintINtNvNtBK_5inputs_1__9MultiCalluEEEECsl4q486LaARA_9typst_svg.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTTuEINtNtCsloFShupyl5J_6comemo10constraint10ConstraintINtNvNtBK_5inputs_1__9MultiCalluEEEECsl4q486LaARA_9typst_svg.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs_1__9MultiCalluEoEEEECsl4q486LaARA_9typst_svg.exit.i.i.i.i.i.i, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtCsl4q486LaARA_9typst_svg5imageNtB5_8WebImage3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 5 uses
  %i.b = alloca [72 x i8], align 8                ; 5 uses
  %i.c = alloca [72 x i8], align 8                ; 9 uses
  %i.d = alloca [32 x i8], align 16               ; 6 uses
  %i.e = alloca [56 x i8], align 8                ; 6 uses
  %i.f = alloca [88 x i8], align 8                ; 5 uses
  %i.g = alloca [64 x i8], align 8                ; 13 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [16 x i8], align 8                ; 8 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [16 x i8], align 8                ; 6 uses
  %i.m = alloca [56 x i8], align 8                ; 12 uses
  %i.n = alloca [64 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [64 x i8], align 8                ; 13 uses
  %i.q = alloca [64 x i8], align 8                ; 5 uses
  %i.r = alloca [24 x i8], align 8                ; 8 uses
  %i.s = alloca [8 x i8], align 8                 ; 4 uses
  %i.t = alloca [8 x i8], align 8                 ; 4 uses
  %i.u = alloca [16 x i8], align 16               ; 4 uses
  %i.v = alloca [1 x i8], align 1                 ; 4 uses
  %i.w = alloca [16 x i8], align 16               ; 4 uses
  %i.x = alloca [72 x i8], align 8                ; 10 uses
  %i.y = alloca [16 x i8], align 16               ; 4 uses
  %i.z = alloca [16 x i8], align 16               ; 4 uses
  %i.aa = alloca [72 x i8], align 8               ; 10 uses
  %i.ab = alloca [16 x i8], align 16              ; 4 uses
  %i.ac = alloca [72 x i8], align 8               ; 10 uses
  %i.ad = alloca [4 x i8], align 4                ; 4 uses
  %i.ae = alloca [4 x i8], align 4                ; 4 uses
  %i.af = alloca [16 x i8], align 16              ; 4 uses
  %i.ag = alloca [72 x i8], align 8               ; 10 uses
  %i.ah = alloca [72 x i8], align 8               ; 26 uses
  %i.ai = alloca [24 x i8], align 8               ; 8 uses
  %i.aj = alloca [24 x i8], align 16              ; 9 uses
  %i.ak = alloca [72 x i8], align 8               ; 9 uses
  %i.al = alloca [96 x i8], align 8               ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.al, i8 0, i64 16, i1 false), !alias.scope !6024
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 64 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !6024
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 3 uses
  store ptr inttoptr (i64 16 to ptr), ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !6024
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !6024
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 32 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) @32, i64 32, i1 false)
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 80 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !6024
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 88 ; 2 uses
  store i64 0, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !6024
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6025)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6026)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6027)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !6028
  store i64 8317987319222330741, ptr %i.ak, align 8, !noalias !6028
  %.sroa.3.0..sroa_idx.i1 = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store i64 7816392313619706465, ptr %.sroa.3.0..sroa_idx.i1, align 8, !noalias !6028
  %.sroa.4.0..sroa_idx.i2 = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store i64 7237128888997146499, ptr %.sroa.4.0..sroa_idx.i2, align 8, !noalias !6028
  %.sroa.5.0..sroa_idx.i3 = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  store i64 8387220255154660723, ptr %.sroa.5.0..sroa_idx.i3, align 8, !noalias !6028
  %.sroa.6.0..sroa_idx.i4 = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6029)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx.i4, i8 0, i64 40, i1 false), !noalias !6028
  %i.am = load ptr, ptr %1, align 8, !alias.scope !6030, !noalias !6031, !nonnull !12, !noundef !12 ; 10 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %i.ao = load atomic ptr, ptr @_RNvNvNtNtNtCsiL9kQKV5x1F_15portable_atomic3imp9atomic1286x86_6411atomic_load4FUNC monotonic, align 8, !noalias !6032, !nonnull !12, !noundef !12
  %i.ap = invoke noundef i128 %i.ao(ptr noundef nonnull align 16 %i.an)
          to label %.noexc unwind label %bb.fa, !inline_history !5734 ; 2 uses

.noexc:                                           ; preds = %bb.a
  %i.aq = icmp eq i128 %i.ap, 0
  br i1 %i.aq, label %bb.b, label %_RINvXNvNtCsloFShupyl5J_6comemo5inputs_1__INtB5_5MultiTRNtNtNtCsdaEETE4DqmE_13typst_library9visualize5image5ImageEENtB5_5Input3keyNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsl4q486LaARA_9typst_svg.exit.i

bb.b:                                             ; preds = %.noexc
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6033)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !6034
  store i64 8317987319222330741, ptr %i.ah, align 8, !noalias !6034
  %.sroa.411.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i64 7816392313619706465, ptr %.sroa.411.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !6034
  %.sroa.512.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store i64 7237128888997146499, ptr %.sroa.512.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !6034
  %.sroa.613.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store i64 8387220255154660723, ptr %.sroa.613.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !6034
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6035)
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i, i8 0, i64 40, i1 false), !noalias !6034
  %.val.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.as, align 8, !range !26, !alias.scope !6036, !noalias !6037, !noundef !12 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  %.val1.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.at, align 8, !alias.scope !6036, !noalias !6037 ; 13 uses
  invoke void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher11write_usize(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.ah, i64 noundef range(i64 0, 8) %.val.i.i.i.i.i.i.i.i.i.i)
          to label %.noexc5 unwind label %bb.fa

.noexc5:                                          ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i.i.i.i.i.i.i.i) ]
  switch i64 %.val.i.i.i.i.i.i.i.i.i.i, label %default.unreachable [
    i64 0, label %bb.c
    i64 1, label %bb.i
    i64 2, label %bb.k
  ]

default.unreachable:                              ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api6rwlock15RwLockReadGuardNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB2n_5inputs_1__9MultiCalluENtNtCsl4q486LaARA_9typst_svg5image8WebImageEEEB3C_.exit37.i, %.noexc5
  unreachable

bb.c:                                             ; preds = %.noexc5
  call void @llvm.experimental.noalias.scope.decl(metadata !6038)
end_hunk_1
