Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/fontra2fontir-3e28be3a257663bb.fontra2fontir.f33318b33de94d79-cgu.08?download=true
inline.NumInlined: 122
inline.NumDeleted: 103
begin_hunk_0_@_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift4sortTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCskSxPPlr6ODt_13fontra2fontir6fontra13VariableGlyphENCINvMNtCsgCecv3eZDcN_5alloc5sliceSBW_7sort_byNCINvXs1o_NtNtNtB2J_11collections5btree3mapINtB3v_8BTreeMapBX_B1H_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBW_E9from_iterINtNtB4x_8adapters12GenericShuntINtNtB5r_3map3MapINtB3v_4KeysBX_INtNtB2J_3vec3VecmEENCNvMs0_B1J_NtB1J_4Font4load0EINtNtBa_6result6ResultzNtNtCs3v5ql5U6hxj_6fontir5error9BadSourceEEE0E0EB1L_:bb.a
  %i.de = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.df = load i64, ptr %i.de, align 8, !alias.scope !110, !noalias !111, !noundef !4
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %.sroa.4.0.i.i.i.i11.i = phi i64 [ %i.cu, %bb.ad ], [ %i.db, %bb.ae ], [ %i.df, %bb.af ] ; 2 uses
  %.sroa.0.0.i.i.i.i12.i = phi ptr [ %i.cx, %bb.ad ], [ %i.cz, %bb.ae ], [ %i.dg, %bb.af ]
  %i.dh = load i8, ptr %i.cr, align 8, !range !84, !alias.scope !112, !noalias !113, !noundef !4 ; 2 uses
  %i.di = icmp samesign ugt i8 %i.dh, 23
  %i.dj = zext nneg i8 %i.dh to i64               ; 2 uses
  %i.dk = add nsw i64 %i.dj, -23
  %i.dl = select i1 %i.di, i64 %i.dk, i64 0
  switch i64 %i.dl, label %bb.ac [
    i64 0, label %bb.ah
    i64 1, label %bb.ai
    i64 2, label %bb.aj
  ]

bb.ah:                                            ; preds = %bb.ag
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cr, i64 1
  br label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCskSxPPlr6ODt_13fontra2fontir6fontra13VariableGlyphE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB2v_8BTreeMapBz_B1j_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtB3w_8adapters12GenericShuntINtNtB4G_3map3MapINtB2v_4KeysBz_INtNtB7_3vec3VecmEENCNvMs0_B1l_NtB1l_4Font4load0EINtNtB3y_6result6ResultzNtNtCs3v5ql5U6hxj_6fontir5error9BadSourceEEE0E0B1n_.exit17.i

bb.ai:                                            ; preds = %bb.ag
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.do = load ptr, ptr %i.dn, align 8, !alias.scope !112, !noalias !113, !nonnull !4, !noundef !4
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.dq = load i64, ptr %i.dp, align 8, !alias.scope !112, !noalias !113, !noundef !4
  br label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCskSxPPlr6ODt_13fontra2fontir6fontra13VariableGlyphE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB2v_8BTreeMapBz_B1j_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtB3w_8adapters12GenericShuntINtNtB4G_3map3MapINtB2v_4KeysBz_INtNtB7_3vec3VecmEENCNvMs0_B1l_NtB1l_4Font4load0EINtNtB3y_6result6ResultzNtNtCs3v5ql5U6hxj_6fontir5error9BadSourceEEE0E0B1n_.exit17.i

bb.aj:                                            ; preds = %bb.ag
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8, !alias.scope !112, !noalias !113, !nonnull !4, !noundef !4
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.du = load i64, ptr %i.dt, align 8, !alias.scope !112, !noalias !113, !noundef !4
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  br label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCskSxPPlr6ODt_13fontra2fontir6fontra13VariableGlyphE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB2v_8BTreeMapBz_B1j_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtB3w_8adapters12GenericShuntINtNtB4G_3map3MapINtB2v_4KeysBz_INtNtB7_3vec3VecmEENCNvMs0_B1l_NtB1l_4Font4load0EINtNtB3y_6result6ResultzNtNtCs3v5ql5U6hxj_6fontir5error9BadSourceEEE0E0B1n_.exit17.i

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCskSxPPlr6ODt_13fontra2fontir6fontra13VariableGlyphE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB2v_8BTreeMapBz_B1j_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtB3w_8adapters12GenericShuntINtNtB4G_3map3MapINtB2v_4KeysBz_INtNtB7_3vec3VecmEENCNvMs0_B1l_NtB1l_4Font4load0EINtNtB3y_6result6ResultzNtNtCs3v5ql5U6hxj_6fontir5error9BadSourceEEE0E0B1n_.exit17.i: ; preds = %bb.aj, %bb.ai, %bb.ah
  %.sroa.42.0.i.i.i.i13.i = phi i64 [ %i.dj, %bb.ah ], [ %i.dq, %bb.ai ], [ %i.du, %bb.aj ] ; 2 uses
  %.sroa.01.0.i.i.i.i14.i = phi ptr [ %i.dm, %bb.ah ], [ %i.do, %bb.ai ], [ %i.dv, %bb.aj ]
  %spec.store.select.i.i.i.i15.i = tail call i64 @llvm.umin.i64(i64 %.sroa.4.0.i.i.i.i11.i, i64 %.sroa.42.0.i.i.i.i13.i)
  %i.dw = tail call i32 @memcmp(ptr nonnull %.sroa.0.0.i.i.i.i12.i, ptr nonnull %.sroa.01.0.i.i.i.i14.i, i64 %spec.store.select.i.i.i.i15.i), !noalias !89 ; 2 uses
  %i.dx = sext i32 %i.dw to i64
  %i.dy = icmp eq i32 %i.dw, 0
  %i.dz = sub i64 %.sroa.4.0.i.i.i.i11.i, %.sroa.42.0.i.i.i.i13.i
  %spec.select.i.i.i.i16.i = select i1 %i.dy, i64 %i.dz, i64 %i.dx
  %i.ea = icmp slt i64 %spec.select.i.i.i.i16.i, 0
  br i1 %i.ea, label %bb.ak, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCskSxPPlr6ODt_13fontra2fontir6fontra13VariableGlyphENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2P_11collections5btree3mapINtB3C_8BTreeMapB13_B1N_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtB4F_8adapters12GenericShuntINtNtB5A_3map3MapINtB3C_4KeysB13_INtNtB2P_3vec3VecmEENCNvMs0_B1P_NtB1P_4Font4load0EINtNtB8_6result6ResultzNtNtCs3v5ql5U6hxj_6fontir5error9BadSourceEEE0E0EB1R_.exit.i

bb.ak:                                            ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCskSxPPlr6ODt_13fontra2fontir6fontra13VariableGlyphE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB2v_8BTreeMapBz_B1j_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtB3w_8adapters12GenericShuntINtNtB4G_3map3MapINtB2v_4KeysBz_INtNtB7_3vec3VecmEENCNvMs0_B1l_NtB1l_4Font4load0EINtNtB3y_6result6ResultzNtNtCs3v5ql5U6hxj_6fontir5error9BadSourceEEE0E0B1n_.exit17.i
  %i.eb = add nuw nsw i64 %.sroa.01.1.i32.i, 1    ; 2 uses
  %exitcond41.not.i = icmp eq i64 %i.eb, %i.n
  br i1 %exitcond41.not.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCskSxPPlr6ODt_13fontra2fontir6fontra13VariableGlyphENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2P_11collections5btree3mapINtB3C_8BTreeMapB13_B1N_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtB4F_8adapters12GenericShuntINtNtB5A_3map3MapINtB3C_4KeysB13_INtNtB2P_3vec3VecmEENCNvMs0_B1P_NtB1P_4Font4load0EINtNtB8_6result6ResultzNtNtCs3v5ql5U6hxj_6fontir5error9BadSourceEEE0E0EB1R_.exit.i, label %.lr.ph33.i

_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCskSxPPlr6ODt_13fontra2fontir6fontra13VariableGlyphENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2P_11collections5btree3mapINtB3C_8BTreeMapB13_B1N_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtB4F_8adapters12GenericShuntINtNtB5A_3map3MapINtB3C_4KeysB13_INtNtB2P_3vec3VecmEENCNvMs0_B1P_NtB1P_4Font4load0EINtNtB8_6result6ResultzNtNtCs3v5ql5U6hxj_6fontir5error9BadSourceEEE0E0EB1R_.exit.i: ; preds = %bb.ak, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCskSxPPlr6ODt_13fontra2fontir6fontra13VariableGlyphE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB2v_8BTreeMapBz_B1j_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtB3w_8adapters12GenericShuntINtNtB4G_3map3MapINtB2v_4KeysBz_INtNtB7_3vec3VecmEENCNvMs0_B1l_NtB1l_4Font4load0EINtNtB3y_6result6ResultzNtNtCs3v5ql5U6hxj_6fontir5error9BadSourceEEE0E0B1n_.exit17.i, %bb.ab, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCskSxPPlr6ODt_13fontra2fontir6fontra13VariableGlyphE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB2v_8BTreeMapBz_B1j_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtB3w_8adapters12GenericShuntINtNtB4G_3map3MapINtB2v_4KeysBz_INtNtB7_3vec3VecmEENCNvMs0_B1l_NtB1l_4Font4load0EINtNtB3y_6result6ResultzNtNtCs3v5ql5U6hxj_6fontir5error9BadSourceEEE0E0B1n_.exit10.i
  %.sroa.0.0.i.i = phi i64 [ %i.n, %bb.ab ], [ %.sroa.01.0.i30.i, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCskSxPPlr6ODt_13fontra2fontir6fontra13VariableGlyphE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB2v_8BTreeMapBz_B1j_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtB3w_8adapters12GenericShuntINtNtB4G_3map3MapINtB2v_4KeysBz_INtNtB7_3vec3VecmEENCNvMs0_B1l_NtB1l_4Font4load0EINtNtB3y_6result6ResultzNtNtCs3v5ql5U6hxj_6fontir5error9BadSourceEEE0E0B1n_.exit10.i ], [ %.sroa.01.1.i32.i, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCskSxPPlr6ODt_13fontra2fontir6fontra13VariableGlyphE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB2v_8BTreeMapBz_B1j_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtB3w_8adapters12GenericShuntINtNtB4G_3map3MapINtB2v_4KeysBz_INtNtB7_3vec3VecmEENCNvMs0_B1l_NtB1l_4Font4load0EINtNtB3y_6result6ResultzNtNtCs3v5ql5U6hxj_6fontir5error9BadSourceEEE0E0B1n_.exit17.i ], [ %i.n, %bb.ak ] ; 5 uses
  %i.ec = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.ec)
  %.not3.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not3.i, label %bb.i, label %bb.al

bb.al:                                            ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCskSxPPlr6ODt_13fontra2fontir6fontra13VariableGlyphENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2P_11collections5btree3mapINtB3C_8BTreeMapB13_B1N_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtB4F_8adapters12GenericShuntINtNtB5A_3map3MapINtB3C_4KeysB13_INtNtB2P_3vec3VecmEENCNvMs0_B1P_NtB1P_4Font4load0EINtNtB8_6result6ResultzNtNtCs3v5ql5U6hxj_6fontir5error9BadSourceEEE0E0EB1R_.exit.i
  %i.ed = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.ed, 0
  %or.cond.i = or i1 %i.az, %.not.i.i.i
  br i1 %or.cond.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCskSxPPlr6ODt_13fontra2fontir6fontra13VariableGlyphE7reverseB1j_.exit.i, label %.lr.ph.preheader.i.i.i

bb.am:                                            ; preds = %bb.i
  %i.ee = tail call i64 @llvm.umin.i64(i64 %.sroa.01.0, i64 range(i64 0, 76861433640456466) %i.n)
  %i.ef = shl nuw nsw i64 %i.ee, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCskSxPPlr6ODt_13fontra2fontir6fontra13VariableGlyphENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB2Q_11collections5btree3mapINtB3D_8BTreeMapB14_B1O_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtB4G_8adapters12GenericShuntINtNtB5B_3map3MapINtB3D_4KeysB14_INtNtB2Q_3vec3VecmEENCNvMs0_B1Q_NtB1Q_4Font4load0EINtNtBa_6result6ResultzNtNtCs3v5ql5U6hxj_6fontir5error9BadSourceEEE0E0EB1S_.exit

bb.an:                                            ; preds = %bb.i
  %i.eg = tail call i64 @llvm.umin.i64(i64 range(i64 0, 76861433640456466) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCskSxPPlr6ODt_13fontra2fontir6fontra13VariableGlyphENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB2S_11collections5btree3mapINtB3F_8BTreeMapB16_B1Q_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtB4I_8adapters12GenericShuntINtNtB5D_3map3MapINtB3F_4KeysB16_INtNtB2S_3vec3VecmEENCNvMs0_B1S_NtB1S_4Font4load0EINtNtBa_6result6ResultzNtNtCs3v5ql5U6hxj_6fontir5error9BadSourceEEE0E0EB1U_(ptr noalias nofree noundef nonnull align 8 %i.o, i64 noundef %i.eg, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 76861433640456466) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(120) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #15
  %i.eh = shl nuw nsw i64 %i.eg, 1
  %i.ei = or disjoint i64 %i.eh, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCskSxPPlr6ODt_13fontra2fontir6fontra13VariableGlyphENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB2Q_11collections5btree3mapINtB3D_8BTreeMapB14_B1O_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtB4G_8adapters12GenericShuntINtNtB5B_3map3MapINtB3D_4KeysB14_INtNtB2Q_3vec3VecmEENCNvMs0_B1Q_NtB1Q_4Font4load0EINtNtBa_6result6ResultzNtNtCs3v5ql5U6hxj_6fontir5error9BadSourceEEE0E0EB1S_.exit

_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCskSxPPlr6ODt_13fontra2fontir6fontra13VariableGlyphE7reverseB1j_.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCskSxPPlr6ODt_13fontra2fontir6fontra13VariableGlyphEEB1P_.exit.i.i.i, %.preheader26.i, %bb.al, %bb.j
  %.sroa.0.0.i23.i = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.al ], [ 2, %.preheader26.i ], [ %.sroa.0.0.i505761.i, %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCskSxPPlr6ODt_13fontra2fontir6fontra13VariableGlyphEEB1P_.exit.i.i.i ]
  %i.ej = shl nuw nsw i64 %.sroa.0.0.i23.i, 1
  %i.ek = or disjoint i64 %i.ej, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCskSxPPlr6ODt_13fontra2fontir6fontra13VariableGlyphENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB2Q_11collections5btree3mapINtB3D_8BTreeMapB14_B1O_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtB4G_8adapters12GenericShuntINtNtB5B_3map3MapINtB3D_4KeysB14_INtNtB2Q_3vec3VecmEENCNvMs0_B1Q_NtB1Q_4Font4load0EINtNtBa_6result6ResultzNtNtCs3v5ql5U6hxj_6fontir5error9BadSourceEEE0E0EB1S_.exit

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader.i, %bb.al
  %i.el = phi i64 [ %i.ed, %bb.al ], [ 1, %.preheader.i ]
  %.sroa.0.0.i505761.i = phi i64 [ %.sroa.0.0.i.i, %bb.al ], [ 2, %.preheader.i ] ; 2 uses
  %i.em = getelementptr inbounds nuw [120 x i8], ptr %i.o, i64 %.sroa.0.0.i505761.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCskSxPPlr6ODt_13fontra2fontir6fontra13VariableGlyphEEB1P_.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.0.017.i.i.i = phi i64 [ %i.er, %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCskSxPPlr6ODt_13fontra2fontir6fontra13VariableGlyphEEB1P_.exit.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.en = xor i64 %.sroa.0.017.i.i.i, -1
  %i.eo = getelementptr inbounds nuw [120 x i8], ptr %i.o, i64 %.sroa.0.017.i.i.i
  %i.ep = getelementptr [120 x i8], ptr %i.em, i64 %i.en
  invoke void @_RINvNvNtCsf3Ta7LF998c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskSxPPlr6ODt_13fontra2fontir(ptr noundef nonnull %i.eo, ptr noundef nonnull %i.ep, i64 noundef 15)
          to label %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCskSxPPlr6ODt_13fontra2fontir6fontra13VariableGlyphEEB1P_.exit.i.i.i unwind label %bb.ao, !noalias !89

bb.ao:                                            ; preds = %.lr.ph.i.i.i
  %i.eq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #14, !noalias !89
  unreachable

_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCskSxPPlr6ODt_13fontra2fontir6fontra13VariableGlyphEEB1P_.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.er = add nuw nsw i64 %.sroa.0.017.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.er, %i.el
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCskSxPPlr6ODt_13fontra2fontir6fontra13VariableGlyphE7reverseB1j_.exit.i, label %.lr.ph.i.i.i

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCskSxPPlr6ODt_13fontra2fontir6fontra13VariableGlyphENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB2Q_11collections5btree3mapINtB3D_8BTreeMapB14_B1O_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtB4G_8adapters12GenericShuntINtNtB5B_3map3MapINtB3D_4KeysB14_INtNtB2Q_3vec3VecmEENCNvMs0_B1Q_NtB1Q_4Font4load0EINtNtBa_6result6ResultzNtNtCs3v5ql5U6hxj_6fontir5error9BadSourceEEE0E0EB1S_.exit: ; preds = %bb.am, %bb.an, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCskSxPPlr6ODt_13fontra2fontir6fontra13VariableGlyphE7reverseB1j_.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.ek, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCskSxPPlr6ODt_13fontra2fontir6fontra13VariableGlyphE7reverseB1j_.exit.i ], [ %i.ei, %bb.an ], [ %i.ef, %bb.am ] ; 2 uses
  %i.es = lshr i64 %.sroa.023.0, 1
  %i.et = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.eu = sub nsw i64 %factor, %i.es
  %i.ev = add nuw i64 %i.et, %factor
  %i.ew = mul i64 %i.eu, %.sroa.0.0
  %i.ex = mul i64 %i.ev, %.sroa.0.0
  %i.ey = xor i64 %i.ex, %i.ew
  %i.ez = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ey, i1 false)
  %i.fa = trunc nuw nsw i64 %i.ez to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCskSxPPlr6ODt_13fontra2fontir6fontra13VariableGlyphENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB2T_11collections5btree3mapINtB3G_8BTreeMapB17_B1R_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtB4J_8adapters12GenericShuntINtNtB5E_3map3MapINtB3G_4KeysB17_INtNtB2T_3vec3VecmEENCNvMs0_B1T_NtB1T_4Font4load0EINtNtBa_6result6ResultzNtNtCs3v5ql5U6hxj_6fontir5error9BadSourceEEE0E0EB1V_.exit
  %.sroa.02.136 = phi i64 [ %i.fb, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCskSxPPlr6ODt_13fontra2fontir6fontra13VariableGlyphENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB2T_11collections5btree3mapINtB3G_8BTreeMapB17_B1R_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtB4J_8adapters12GenericShuntINtNtB5E_3map3MapINtB3G_4KeysB17_INtNtB2T_3vec3VecmEENCNvMs0_B1T_NtB1T_4Font4load0EINtNtBa_6result6ResultzNtNtCs3v5ql5U6hxj_6fontir5error9BadSourceEEE0E0EB1V_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCskSxPPlr6ODt_13fontra2fontir6fontra13VariableGlyphENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB2T_11collections5btree3mapINtB3G_8BTreeMapB17_B1R_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtB4J_8adapters12GenericShuntINtNtB5E_3map3MapINtB3G_4KeysB17_INtNtB2T_3vec3VecmEENCNvMs0_B1T_NtB1T_4Font4load0EINtNtBa_6result6ResultzNtNtCs3v5ql5U6hxj_6fontir5error9BadSourceEEE0E0EB1V_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.fb = add i64 %.sroa.02.136, -1               ; 4 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.fb
  %i.fd = load i8, ptr %i.fc, align 1, !noundef !4
  %.not28 = icmp ult i8 %i.fd, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.ap

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCskSxPPlr6ODt_13fontra2fontir6fontra13VariableGlyphENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB2T_11collections5btree3mapINtB3G_8BTreeMapB17_B1R_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtB4J_8adapters12GenericShuntINtNtB5E_3map3MapINtB3G_4KeysB17_INtNtB2T_3vec3VecmEENCNvMs0_B1T_NtB1T_4Font4load0EINtNtBa_6result6ResultzNtNtCs3v5ql5U6hxj_6fontir5error9BadSourceEEE0E0EB1V_.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCskSxPPlr6ODt_13fontra2fontir6fontra13VariableGlyphENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB2T_11collections5btree3mapINtB3G_8BTreeMapB17_B1R_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtB4J_8adapters12GenericShuntINtNtB5E_3map3MapINtB3G_4KeysB17_INtNtB2T_3vec3VecmEENCNvMs0_B1T_NtB1T_4Font4load0EINtNtBa_6result6ResultzNtNtCs3v5ql5U6hxj_6fontir5error9BadSourceEEE0E0EB1V_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCskSxPPlr6ODt_13fontra2fontir6fontra13VariableGlyphENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB2T_11collections5btree3mapINtB3G_8BTreeMapB17_B1R_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtB4J_8adapters12GenericShuntINtNtB5E_3map3MapINtB3G_4KeysB17_INtNtB2T_3vec3VecmEENCNvMs0_B1T_NtB1T_4Font4load0EINtNtBa_6result6ResultzNtNtCs3v5ql5U6hxj_6fontir5error9BadSourceEEE0E0EB1V_.exit ] ; 3 uses
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.fe, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.ff, align 1
  br i1 %i.l, label %bb.aw, label %bb.ax

bb.ap:                                            ; preds = %.lr.ph
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.fb
  %i.fh = load i64, ptr %i.fg, align 8, !noundef !4 ; 3 uses
  %i.fi = lshr i64 %i.fh, 1                       ; 5 uses
  %i.fj = lshr i64 %.sroa.023.135, 1              ; 3 uses
  %i.fk = add nuw i64 %i.fi, %i.fj                ; 5 uses
  %i.fl = sub i64 %.sroa.09.0, %i.fk
  %i.fm = getelementptr inbounds nuw [120 x i8], ptr %0, i64 %i.fl ; 3 uses
  %i.fn = icmp samesign ugt i64 %i.fk, %3
  %i.fo = trunc i64 %.sroa.023.135 to i1
  %i.fp = or i64 %i.fh, %.sroa.023.135
  %i.fq = trunc i64 %i.fp to i1
  %or.cond3.i = or i1 %i.fn, %i.fq
  br i1 %or.cond3.i, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.fr = trunc i64 %i.fh to i1
  br i1 %i.fr, label %bb.as, label %bb.at

bb.ar:                                            ; preds = %bb.ap
  %i.fs = shl nuw nsw i64 %i.fk, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCskSxPPlr6ODt_13fontra2fontir6fontra13VariableGlyphENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB2T_11collections5btree3mapINtB3G_8BTreeMapB17_B1R_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtB4J_8adapters12GenericShuntINtNtB5E_3map3MapINtB3G_4KeysB17_INtNtB2T_3vec3VecmEENCNvMs0_B1T_NtB1T_4Font4load0EINtNtBa_6result6ResultzNtNtCs3v5ql5U6hxj_6fontir5error9BadSourceEEE0E0EB1V_.exit

bb.as:                                            ; preds = %bb.at, %bb.aq
  br i1 %i.fo, label %bb.av, label %bb.au

bb.at:                                            ; preds = %bb.aq
  %i.ft = or i64 %i.fi, 1
  %i.fu = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.ft, i1 true)
  %i.fv = trunc nuw nsw i64 %i.fu to i32
  %i.fw = shl nuw nsw i32 %i.fv, 1
  %i.fx = xor i32 %i.fw, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCskSxPPlr6ODt_13fontra2fontir6fontra13VariableGlyphENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB2S_11collections5btree3mapINtB3F_8BTreeMapB16_B1Q_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtB4I_8adapters12GenericShuntINtNtB5D_3map3MapINtB3F_4KeysB16_INtNtB2S_3vec3VecmEENCNvMs0_B1S_NtB1S_4Font4load0EINtNtBa_6result6ResultzNtNtCs3v5ql5U6hxj_6fontir5error9BadSourceEEE0E0EB1U_(ptr noalias nofree noundef nonnull align 8 %i.fm, i64 noundef range(i64 0, 76861433640456466) %i.fi, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 76861433640456466) %3, i32 noundef %i.fx, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(120) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #15
  br label %bb.as

bb.au:                                            ; preds = %bb.as
  %i.fy = getelementptr inbounds nuw [120 x i8], ptr %i.fm, i64 %i.fi
  %i.fz = or i64 %i.fj, 1
  %i.ga = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.fz, i1 true)
  %i.gb = trunc nuw nsw i64 %i.ga to i32
  %i.gc = shl nuw nsw i32 %i.gb, 1
  %i.gd = xor i32 %i.gc, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCskSxPPlr6ODt_13fontra2fontir6fontra13VariableGlyphENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB2S_11collections5btree3mapINtB3F_8BTreeMapB16_B1Q_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtB4I_8adapters12GenericShuntINtNtB5D_3map3MapINtB3F_4KeysB16_INtNtB2S_3vec3VecmEENCNvMs0_B1S_NtB1S_4Font4load0EINtNtBa_6result6ResultzNtNtCs3v5ql5U6hxj_6fontir5error9BadSourceEEE0E0EB1U_(ptr noalias nofree noundef nonnull align 8 %i.fy, i64 noundef range(i64 0, 76861433640456466) %i.fj, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 76861433640456466) %3, i32 noundef %i.gd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(120) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #15
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.as
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCskSxPPlr6ODt_13fontra2fontir6fontra13VariableGlyphENCINvMNtCsgCecv3eZDcN_5alloc5sliceSBX_7sort_byNCINvXs1o_NtNtNtB2K_11collections5btree3mapINtB3w_8BTreeMapBY_B1I_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtB4y_8adapters12GenericShuntINtNtB5s_3map3MapINtB3w_4KeysBY_INtNtB2K_3vec3VecmEENCNvMs0_B1K_NtB1K_4Font4load0EINtNtBa_6result6ResultzNtNtCs3v5ql5U6hxj_6fontir5error9BadSourceEEE0E0EB1M_(ptr noalias nofree noundef nonnull align 8 %i.fm, i64 noundef range(i64 0, 76861433640456466) %i.fk, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 76861433640456466) %3, i64 noundef %i.fi, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5)
  %i.ge = shl nuw nsw i64 %i.fk, 1
  %i.gf = or disjoint i64 %i.ge, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCskSxPPlr6ODt_13fontra2fontir6fontra13VariableGlyphENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB2T_11collections5btree3mapINtB3G_8BTreeMapB17_B1R_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtB4J_8adapters12GenericShuntINtNtB5E_3map3MapINtB3G_4KeysB17_INtNtB2T_3vec3VecmEENCNvMs0_B1T_NtB1T_4Font4load0EINtNtBa_6result6ResultzNtNtCs3v5ql5U6hxj_6fontir5error9BadSourceEEE0E0EB1V_.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCskSxPPlr6ODt_13fontra2fontir6fontra13VariableGlyphENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB2T_11collections5btree3mapINtB3G_8BTreeMapB17_B1R_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtB4J_8adapters12GenericShuntINtNtB5E_3map3MapINtB3G_4KeysB17_INtNtB2T_3vec3VecmEENCNvMs0_B1T_NtB1T_4Font4load0EINtNtBa_6result6ResultzNtNtCs3v5ql5U6hxj_6fontir5error9BadSourceEEE0E0EB1V_.exit: ; preds = %bb.ar, %bb.av
  %.sroa.0.0.i = phi i64 [ %i.gf, %bb.av ], [ %i.fs, %bb.ar ] ; 2 uses
  %i.gg = icmp ugt i64 %i.fb, 1
  br i1 %i.gg, label %.lr.ph, label %._crit_edge

bb.aw:                                            ; preds = %._crit_edge
  %i.gh = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.gi = lshr i64 %.sroa.018.0, 1
  %i.gj = add nuw nsw i64 %i.gi, %.sroa.09.0
  br label %bb.f

bb.ax:                                            ; preds = %._crit_edge
  %i.gk = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.gk, 0
  br i1 %.not30, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.gl = or i64 %1, 1
  %i.gm = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.gl, i1 true)
  %i.gn = trunc nuw nsw i64 %i.gm to i32
  %i.go = shl nuw nsw i32 %i.gn, 1
  %i.gp = xor i32 %i.go, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCskSxPPlr6ODt_13fontra2fontir6fontra13VariableGlyphENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB2S_11collections5btree3mapINtB3F_8BTreeMapB16_B1Q_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtB4I_8adapters12GenericShuntINtNtB5D_3map3MapINtB3F_4KeysB16_INtNtB2S_3vec3VecmEENCNvMs0_B1S_NtB1S_4Font4load0EINtNtBa_6result6ResultzNtNtCs3v5ql5U6hxj_6fontir5error9BadSourceEEE0E0EB1U_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 76861433640456466) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 76861433640456466) %3, i32 noundef %i.gp, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(120) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #15
  br label %bb.az

bb.az:                                            ; preds = %bb.ax, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ba

bb.ba:                                            ; preds = %bb.a, %bb.az
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXs1_NtNtCsf3Ta7LF998c_4core3mem10drop_guardINtB5_9DropGuardTjQINtNtCsgCecv3eZDcN_5alloc3vec3VechEENCINvNtNtB16_2io4read16append_to_stringNCNvYINtNtNtB1I_8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileENtNtB1I_8buf_read7BufRead9read_line0E0ENtNtNtB9_3ops4drop4Drop4dropCskSxPPlr6ODt_13fontra2fontir(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !align !116, !noundef !4
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.a, ptr %i.d, align 8, !alias.scope !117
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvXs2_NtNtCsf3Ta7LF998c_4core5slice3cmpNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gasp9GaspRangeINtB5_14SlicePartialEqBC_E17equal_same_lengthCskSxPPlr6ODt_13fontra2fontir(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #3 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.01.08 = phi i64 [ %i.i, %.lr.ph ], [ 0, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.08
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.sroa.01.08
  %i.d = load <2 x i16>, ptr %i.b, align 2
  %i.e = load <2 x i16>, ptr %i.c, align 2
  %i.f = icmp eq <2 x i16> %i.d, %i.e             ; 2 uses
  %i.g = extractelement <2 x i1> %i.f, i64 0
  %i.h = extractelement <2 x i1> %i.f, i64 1
  %.sroa.0.0.i.not.i.not = select i1 %i.g, i1 %i.h, i1 false ; 2 uses
  %i.i = add nuw i64 %.sroa.01.08, 1              ; 2 uses
  %exitcond.not = icmp ne i64 %i.i, %2
  %or.cond.not = select i1 %.sroa.0.0.i.not.i.not, i1 %exitcond.not, i1 false
  br i1 %or.cond.not, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ %.sroa.0.0.i.not.i.not, %.lr.ph ]
  ret i1 %.lcssa
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs8_NtNtCsgCecv3eZDcN_5alloc2io4utilINtB5_5LinesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCskSxPPlr6ODt_13fontra2fontir(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(48) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.46.0..sroa_idx, align 8
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 6 uses
  store i64 0, ptr %.sroa.57.0..sroa_idx, align 8
  %i.d = invoke { i64, ptr } @_RNvYINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileENtNtB9_8buf_read7BufRead9read_lineCskSxPPlr6ODt_13fontra2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.c unwind label %bb.b       ; 2 uses

bb.b:                                             ; preds = %bb.s, %bb.j, %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECskSxPPlr6ODt_13fontra2fontir(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #13
          to label %common.resume unwind label %bb.ac

bb.c:                                             ; preds = %bb.a
  %i.f = extractvalue { i64, ptr } %i.d, 0
  %i.g = extractvalue { i64, ptr } %i.d, 1        ; 2 uses
  %i.h = trunc nuw i64 %i.f to i1
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i64 -1, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.g, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.i = icmp eq ptr %i.g, null
  br i1 %i.i, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  store i64 -2, ptr %0, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskSxPPlr6ODt_13fontra2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECskSxPPlr6ODt_13fontra2fontir.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskSxPPlr6ODt_13fontra2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #14
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.h ], [ %i.e, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECskSxPPlr6ODt_13fontra2fontir.exit: ; preds = %bb.g
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskSxPPlr6ODt_13fontra2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
  br label %bb.ab

bb.j:                                             ; preds = %bb.e
  %i.l = load ptr, ptr %.sroa.46.0..sroa_idx, align 8, !nonnull !4, !noundef !4
  %i.m = load i64, ptr %.sroa.57.0..sroa_idx, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 10, ptr %i.b, align 4
  %i.n = invoke noundef zeroext i1 @_RNvMNtCsf3Ta7LF998c_4core5sliceSh9ends_withCskSxPPlr6ODt_13fontra2fontir(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef %i.m, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 1)
          to label %bb.k unwind label %bb.b

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.n, label %bb.l, label %_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String3pop.exit20

bb.l:                                             ; preds = %bb.k
  call void @llvm.experimental.noalias.scope.decl(metadata !126)
  %i.o = load ptr, ptr %.sroa.46.0..sroa_idx, align 8, !alias.scope !126, !nonnull !4, !noundef !4 ; 2 uses
  %i.p = load i64, ptr %.sroa.57.0..sroa_idx, align 8, !alias.scope !126, !noundef !4 ; 8 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.p ; 4 uses
  %i.r = icmp samesign eq i64 %i.p, 0
  br i1 %i.r, label %bb.s, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.s = getelementptr inbounds i8, ptr %i.q, i64 -1
  %i.t = load i8, ptr %i.s, align 1, !noalias !127, !noundef !4
  %i.u = icmp sgt i8 %i.t, -1
  br i1 %i.u, label %.thread.i, label %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskSxPPlr6ODt_13fontra2fontir.exit17.i.i

_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskSxPPlr6ODt_13fontra2fontir.exit17.i.i: ; preds = %bb.m
  %i.v = icmp ne i64 %i.p, 1
  call void @llvm.assume(i1 %i.v)
  %i.w = getelementptr inbounds i8, ptr %i.q, i64 -2
  %i.x = load i8, ptr %i.w, align 1, !noalias !127, !noundef !4 ; 3 uses
  %i.y = and i8 %i.x, 31
  %i.z = zext nneg i8 %i.y to i32
  %i.aa = icmp slt i8 %i.x, -64
  br i1 %i.aa, label %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskSxPPlr6ODt_13fontra2fontir.exit19.i.i, label %bb.o

.thread.i:                                        ; preds = %bb.m
  %i.ab = icmp sgt i64 %i.p, -1
  call void @llvm.assume(i1 %i.ab)
  br label %bb.r

_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskSxPPlr6ODt_13fontra2fontir.exit19.i.i: ; preds = %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskSxPPlr6ODt_13fontra2fontir.exit17.i.i
  %i.ac = icmp ne i64 %i.p, 2
  call void @llvm.assume(i1 %i.ac)
  %i.ad = getelementptr inbounds i8, ptr %i.q, i64 -3
  %i.ae = load i8, ptr %i.ad, align 1, !noalias !127, !noundef !4 ; 3 uses
  %i.af = and i8 %i.ae, 15
  %i.ag = zext nneg i8 %i.af to i32
  %i.ah = icmp slt i8 %i.ae, -64
  br i1 %i.ah, label %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskSxPPlr6ODt_13fontra2fontir.exit21.i.i, label %bb.n

_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskSxPPlr6ODt_13fontra2fontir.exit21.i.i: ; preds = %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskSxPPlr6ODt_13fontra2fontir.exit19.i.i
  %i.ai = icmp ne i64 %i.p, 3
  call void @llvm.assume(i1 %i.ai)
  %i.aj = getelementptr inbounds i8, ptr %i.q, i64 -4
  %i.ak = load i8, ptr %i.aj, align 1, !noalias !127, !noundef !4
  %i.al = and i8 %i.ak, 7
  %i.am = zext nneg i8 %i.al to i32
  %i.an = shl nuw nsw i32 %i.am, 6
  %i.ao = and i8 %i.ae, 63
  %i.ap = zext nneg i8 %i.ao to i32
  %i.aq = or disjoint i32 %i.an, %i.ap
  br label %bb.n

bb.n:                                             ; preds = %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskSxPPlr6ODt_13fontra2fontir.exit21.i.i, %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskSxPPlr6ODt_13fontra2fontir.exit19.i.i
  %.sroa.010.1.i.i = phi i32 [ %i.aq, %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskSxPPlr6ODt_13fontra2fontir.exit21.i.i ], [ %i.ag, %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskSxPPlr6ODt_13fontra2fontir.exit19.i.i ]
  %i.ar = shl nuw nsw i32 %.sroa.010.1.i.i, 6
  %i.as = and i8 %i.x, 63
  %i.at = zext nneg i8 %i.as to i32
  %i.au = or disjoint i32 %i.ar, %i.at
  br label %bb.o
end_hunk_0
