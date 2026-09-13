Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_wasm_example_whisper-601b0015d81a4374.candle_wasm_example_whisper.b1eff805deae52af-cgu.12?download=true
inline.NumInlined: 730
inline.NumDeleted: 376
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapIBO_IBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterReEENCNvXNtCsfh9HxMbthk9_27candle_wasm_example_whisper3appNtB26_3AppNtNtNtCs9OLX912zl7o_3yew4html9component9Component4view0ENCINvXs8_NtNtB39_11virtual_dom5vnodeNtB46_5VNodeINtNtNtBa_6traits7collect12FromIteratorB4x_E9from_iterB11_E0ENCINvXs2_NtB48_5vlistNtB5R_5VListIB4K_B4x_E9from_iterBX_E0ENtNtB4O_8iterator8Iterator4folduNCINvNvB6F_8for_each4callB4x_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB7N_3VecB4x_E14extend_trustedBN_E0E0EB28_:bb.a
bb.di:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9OLX912zl7o_3yew11virtual_dom3key3KeyEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit212.i.i.i.i.i.i.i
  invoke void @_RNvMs6_NtCsgCecv3eZDcN_5alloc2rcINtB5_2RcINtNtCsf3Ta7LF998c_4core4cell7RefCellNtNtCs9OLX912zl7o_3yew4html12NodeRefInnerEE9drop_slowB1i_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ab) #32
          to label %.body108.i.i.i.i.i.i.i unwind label %bb.dd, !noalias !657

.loopexit.i.i.i.i:                                ; preds = %_RNvXsB_NtCsgCecv3eZDcN_5alloc6stringReNtB5_8ToString9to_stringCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i.i.i.i.i.i.i.i, %bb.i
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.dj

.loopexit.split-lp.i.i.i.i:                       ; preds = %bb.j
  %lpad.loopexit.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.dj

bb.dj:                                            ; preds = %.loopexit.split-lp.i.i.i.i, %.loopexit.i.i.i.i
  %lpad.phi.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i, %.loopexit.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i, %.loopexit.split-lp.i.i.i.i ] ; 2 uses
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew11virtual_dom10AttributesECsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef align 8 dereferenceable(40) %i.ad) #27
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9OLX912zl7o_3yew11virtual_dom3key3KeyEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit216.i.i.i.i.i.i.i unwind label %bb.dd, !noalias !657

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9OLX912zl7o_3yew11virtual_dom3key3KeyEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit216.i.i.i.i.i.i.i: ; preds = %bb.dj
  %i.io = load i64, ptr %i.cz, align 8, !noalias !703, !noundef !5
  %i.ip = add i64 %i.io, -1                       ; 2 uses
  store i64 %i.ip, ptr %i.cz, align 8, !noalias !703
  %i.iq = icmp eq i64 %i.ip, 0
  br i1 %i.iq, label %bb.dk, label %.body108.i.i.i.i.i.i.i

bb.dk:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9OLX912zl7o_3yew11virtual_dom3key3KeyEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit216.i.i.i.i.i.i.i
  invoke void @_RNvMs6_NtCsgCecv3eZDcN_5alloc2rcINtB5_2RcINtNtCsf3Ta7LF998c_4core4cell7RefCellNtNtCs9OLX912zl7o_3yew4html12NodeRefInnerEE9drop_slowB1i_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ae) #32
          to label %.body108.i.i.i.i.i.i.i unwind label %bb.dd, !noalias !657

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9OLX912zl7o_3yew11virtual_dom3key3KeyEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit220.i.i.i.i.i.i.i: ; preds = %bb.cx, %bb.ct, %bb.q
  %.pn103.i.i.i642.i.i.i.i = phi { ptr, i32 } [ %i.hr, %bb.ct ], [ %i.hu, %bb.cx ], [ %.pn101.i.i.i.i.i.i.i, %bb.q ] ; 2 uses
  %i.ir = load i64, ptr %i.cw, align 8, !noalias !704, !noundef !5
  %i.is = add i64 %i.ir, -1                       ; 2 uses
  store i64 %i.is, ptr %i.cw, align 8, !noalias !704
  %i.it = icmp eq i64 %i.is, 0
  br i1 %i.it, label %bb.dl, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew4html7NodeRefECsfh9HxMbthk9_27candle_wasm_example_whisper.exit222.i.i.i.i.i.i.i

bb.dl:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9OLX912zl7o_3yew11virtual_dom3key3KeyEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit220.i.i.i.i.i.i.i
  invoke void @_RNvMs6_NtCsgCecv3eZDcN_5alloc2rcINtB5_2RcINtNtCsf3Ta7LF998c_4core4cell7RefCellNtNtCs9OLX912zl7o_3yew4html12NodeRefInnerEE9drop_slowB1i_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ai) #32
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew4html7NodeRefECsfh9HxMbthk9_27candle_wasm_example_whisper.exit222.i.i.i.i.i.i.i unwind label %bb.dd, !noalias !657

bb.dm:                                            ; preds = %bb.cz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.hw, ptr noundef nonnull align 8 dereferenceable(152) %i.f, i64 152, i1 false), !noalias !657
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !656
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !655
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !655
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !655
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !655
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !655
  %i.iu = getelementptr inbounds nuw [32 x i8], ptr %.sroa.5.0.copyload.i.i, i64 %.sroa.6.0.i.i.i ; 2 uses
  store i32 0, ptr %i.iu, align 8, !noalias !705
  %.sroa.55.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.iu, i64 8
  store ptr %i.hw, ptr %.sroa.55.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !705
  %i.iv = add i64 %.sroa.6.0.i.i.i, 1             ; 2 uses
  %i.iw = add i64 %i.cu, 1
  %i.ix = add nuw i64 %.sroa.01.0.i.i.i.i, 1      ; 2 uses
  %i.iy = icmp eq i64 %i.ix, %i.ax
  br i1 %i.iy, label %_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapIBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterReEENCNvXNtCsfh9HxMbthk9_27candle_wasm_example_whisper3appNtB22_3AppNtNtNtCs9OLX912zl7o_3yew4html9component9Component4view0ENCINvXs8_NtNtB35_11virtual_dom5vnodeNtB42_5VNodeINtNtNtBa_6traits7collect12FromIteratorB4t_E9from_iterBX_E0ENtNtB4K_8iterator8Iterator4folduNCINvB6_8map_foldB4t_B4t_uNCINvXs2_NtB44_5vlistNtB6I_5VListIB4G_B4t_E9from_iterBN_E0NCINvNvB5D_8for_each4callB4t_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB87_3VecB4t_E14extend_trustedIBO_BN_B6z_EE0E0E0EB24_.exit, label %bb.c

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew4html7NodeRefECsfh9HxMbthk9_27candle_wasm_example_whisper.exit222.i.i.i.i.i.i.i: ; preds = %bb.dl, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9OLX912zl7o_3yew11virtual_dom3key3KeyEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit220.i.i.i.i.i.i.i, %bb.db, %bb.e
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.hy, %bb.db ], [ %i.cy, %bb.e ], [ %.pn103.i.i.i642.i.i.i.i, %bb.dl ], [ %.pn103.i.i.i642.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9OLX912zl7o_3yew11virtual_dom3key3KeyEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit220.i.i.i.i.i.i.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i) ]
  store i64 %.sroa.6.0.i.i.i, ptr %.sroa.0.0.copyload.i.i, align 8, !noalias !666
  resume { ptr, i32 } %eh.lpad-body.i.i.i.i

_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapIBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterReEENCNvXNtCsfh9HxMbthk9_27candle_wasm_example_whisper3appNtB22_3AppNtNtNtCs9OLX912zl7o_3yew4html9component9Component4view0ENCINvXs8_NtNtB35_11virtual_dom5vnodeNtB42_5VNodeINtNtNtBa_6traits7collect12FromIteratorB4t_E9from_iterBX_E0ENtNtB4K_8iterator8Iterator4folduNCINvB6_8map_foldB4t_B4t_uNCINvXs2_NtB44_5vlistNtB6I_5VListIB4G_B4t_E9from_iterBN_E0NCINvNvB5D_8for_each4callB4t_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB87_3VecB4t_E14extend_trustedIBO_BN_B6z_EE0E0E0EB24_.exit: ; preds = %bb.dm, %bb.a
  %storemerge.i.i.i = phi i64 [ %.sroa.4.0.copyload.i.i, %bb.a ], [ %i.iv, %bb.dm ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i) ]
  store i64 %storemerge.i.i.i, ptr %.sroa.0.0.copyload.i.i, align 8, !noalias !666
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapIBO_IBO_INtNtNtBc_5slice4iter4IterNtNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker7SegmentENCNvXNtB1z_3appNtB2B_3AppNtNtNtCs9OLX912zl7o_3yew4html9component9Component4views_0ENCINvXs8_NtNtB31_11virtual_dom5vnodeNtB40_5VNodeINtNtNtBa_6traits7collect12FromIteratorB4r_E9from_iterB11_E0ENCINvXs2_NtB42_5vlistNtB5L_5VListIB4E_B4r_E9from_iterBX_E0ENtNtB4I_8iterator8Iterator4folduNCINvNvB6z_8for_each4callB4r_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB7H_3VecB4r_E14extend_trustedBN_E0E0EB1z_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [48 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 5 uses
  %i.g = alloca [48 x i8], align 8                ; 7 uses
  %i.h = alloca [152 x i8], align 8               ; 10 uses
  %i.i = alloca [56 x i8], align 8                ; 5 uses
  %i.j = alloca [40 x i8], align 8                ; 8 uses
  %i.k = alloca [152 x i8], align 8               ; 10 uses
  %i.l = alloca [56 x i8], align 8                ; 5 uses
  %i.m = alloca [152 x i8], align 8               ; 12 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [32 x i8], align 8                ; 4 uses
  %i.q = alloca [40 x i8], align 8                ; 7 uses
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  %i.s = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.08.i.i.i.i.i = alloca [96 x i8], align 8 ; 5 uses
  %i.t = alloca [32 x i8], align 8                ; 6 uses
  %i.u = alloca [32 x i8], align 8                ; 4 uses
  %i.v = alloca [40 x i8], align 8                ; 7 uses
  %i.w = alloca [8 x i8], align 8                 ; 4 uses
  %i.x = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.02.i.i.i.i.i = alloca [96 x i8], align 8 ; 5 uses
  %i.y = alloca [32 x i8], align 8                ; 6 uses
  %i.z = alloca [64 x i8], align 8                ; 11 uses
  %i.aa = alloca [8 x i8], align 8                ; 4 uses
  %i.ab = alloca [24 x i8], align 8               ; 4 uses
  %.sroa.4.i.i.i.i.i = alloca [28 x i8], align 4  ; 4 uses
  %i.ac = alloca [40 x i8], align 8               ; 7 uses
  %i.ad = alloca [8 x i8], align 8                ; 4 uses
  %i.ae = alloca [24 x i8], align 8               ; 7 uses
  %.sroa.0.sroa.0.i.i.i.i.i = alloca [64 x i8], align 8 ; 5 uses
  %i.af = alloca [32 x i8], align 8               ; 6 uses
  %i.ag = alloca [24 x i8], align 8               ; 16 uses
  %i.ah = alloca [24 x i8], align 8               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !784)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !785)
  %.sroa.0.0.copyload.i.i = load ptr, ptr %2, align 8, !alias.scope !786 ; 4 uses
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !786 ; 2 uses
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.9.0.copyload.i.i = load ptr, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !alias.scope !786
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.ai = icmp eq ptr %0, %1
  br i1 %i.ai, label %_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapIBO_INtNtNtBc_5slice4iter4IterNtNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker7SegmentENCNvXNtB1v_3appNtB2x_3AppNtNtNtCs9OLX912zl7o_3yew4html9component9Component4views_0ENCINvXs8_NtNtB2X_11virtual_dom5vnodeNtB3W_5VNodeINtNtNtBa_6traits7collect12FromIteratorB4n_E9from_iterBX_E0ENtNtB4E_8iterator8Iterator4folduNCINvB6_8map_foldB4n_B4n_uNCINvXs2_NtB3Y_5vlistNtB6C_5VListIB4A_B4n_E9from_iterBN_E0NCINvNvB5x_8for_each4callB4n_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB81_3VecB4n_E14extend_trustedIBO_BN_B6t_EE0E0E0EB1v_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.aj = ptrtoint ptr %1 to i64
  %i.ak = ptrtoint ptr %0 to i64
  %i.al = sub nuw i64 %i.aj, %i.ak
  %i.am = udiv exact i64 %i.al, 96
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 7 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %.sroa.417.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.sroa.421.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.au = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %.sroa.425.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.av = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %.sroa.429.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  %.sroa.4.8..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i.i.i, i64 4
  %.sroa.0.sroa.0.40..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.0.i.i.i.i.i, i64 40
  %.sroa.0.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 84
  %i.aw = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.0.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 112
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 120
  %.sroa.8.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 136
  %i.ay = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.sroa.02.40..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.02.i.i.i.i.i, i64 40
  %i.be = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.53.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 112
  %.sroa.64.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 120
  %.sroa.86.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 136
  %i.bg = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %.sroa.536.0..sroa_idx37.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.740.0..sroa_idx41.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.bn = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.bo = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.bq = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.bs = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.sroa.08.40..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.i.i.i.i.i, i64 40
  %i.bt = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.59.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %.sroa.610.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  %.sroa.812.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 136
  %i.bv = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.bx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  br label %bb.d

bb.c:                                             ; preds = %bb.az
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.d:                                             ; preds = %bb.bk, %bb.b
  %.val10.i.i.i = phi i64 [ %.sroa.6.0.copyload.i.i, %bb.b ], [ %i.ez, %bb.bk ] ; 3 uses
  %.sroa.01.0.i.i.i = phi i64 [ 0, %bb.b ], [ %i.fa, %bb.bk ] ; 2 uses
  %i.bz = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %.sroa.01.0.i.i.i ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !787)
  call void @llvm.experimental.noalias.scope.decl(metadata !788)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !789
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !789
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !789
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !789
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !790
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !790
  store i64 0, ptr %i.ag, align 8, !noalias !790
  store ptr inttoptr (i64 8 to ptr), ptr %i.an, align 8, !noalias !790
  store i64 0, ptr %i.ao, align 8, !noalias !790
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.sroa.0.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !790
  store ptr @90, ptr %i.ap, align 8, !noalias !790
  store i64 1, ptr %i.aq, align 8, !noalias !790
  store i64 0, ptr %i.ae, align 8, !noalias !790
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !790
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !790
  %i.ca = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 4, 153) 32, i64 noundef range(i64 4, 9) 8) #31, !noalias !790 ; 9 uses
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %bb.e, label %bb.g, !prof !8

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #30
          to label %.noexc.i.i.i.i.i unwind label %bb.f, !noalias !791

.noexc.i.i.i.i.i:                                 ; preds = %bb.e
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew4html7NodeRefECsfh9HxMbthk9_27candle_wasm_example_whisper.exit106.i.i.i.i.i: ; preds = %bb.bj, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9OLX912zl7o_3yew11virtual_dom3key3KeyEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit104.i.i.i.i.i, %bb.f
  %.pn.i.i.i.i.i = phi { ptr, i32 } [ %i.cc, %bb.f ], [ %i.eu, %bb.bj ], [ %i.eu, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9OLX912zl7o_3yew11virtual_dom3key3KeyEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit104.i.i.i.i.i ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsjlHezul7jxg_14implicit_clone6unsync6string7IStringECsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ae) #27
          to label %.body.i.i.i.i.i unwind label %bb.bd, !noalias !791

bb.f:                                             ; preds = %bb.e
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew4html7NodeRefECsfh9HxMbthk9_27candle_wasm_example_whisper.exit106.i.i.i.i.i

bb.g:                                             ; preds = %bb.d
  store i64 1, ptr %i.ca, align 8, !noalias !791
  %.sroa.45.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store i64 1, ptr %.sroa.45.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !791
  %.sroa.56.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  store i64 0, ptr %.sroa.56.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !791
  %.sroa.56.sroa.4.0..sroa.56.0..sroa_idx.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  store i32 0, ptr %.sroa.56.sroa.4.0..sroa.56.0..sroa_idx.sroa_idx.i.i.i.i.i.i, align 8, !noalias !791
  store ptr %i.ca, ptr %i.ad, align 8, !noalias !790
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !790
  store ptr inttoptr (i64 8 to ptr), ptr %i.ar, align 8, !noalias !790
  store i64 0, ptr %i.as, align 8, !noalias !790
  store i64 0, ptr %i.ac, align 8, !noalias !790
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i.i)
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 80 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !790
  %3 = load <2 x double>, ptr %i.cd, align 8, !alias.scope !792, !noalias !791
  %4 = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %3)
  store double %4, ptr %i.aa, align 8, !noalias !790
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bz, i64 48
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bz, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !790
  store ptr %i.cd, ptr %i.z, align 8, !noalias !790
  store ptr @_RNvXs7_NtNtCsf3Ta7LF998c_4core3fmt5floatdNtB7_7Display3fmt, ptr %.sroa.417.0..sroa_idx.i.i.i.i.i, align 8, !noalias !790
  store ptr %i.aa, ptr %i.at, align 8, !noalias !790
  store ptr @_RNvXs7_NtNtCsf3Ta7LF998c_4core3fmt5floatdNtB7_7Display3fmt, ptr %.sroa.421.0..sroa_idx.i.i.i.i.i, align 8, !noalias !790
  store ptr %i.ce, ptr %i.au, align 8, !noalias !790
  store ptr @_RNvXs7_NtNtCsf3Ta7LF998c_4core3fmt5floatdNtB7_7Display3fmt, ptr %.sroa.425.0..sroa_idx.i.i.i.i.i, align 8, !noalias !790
  store ptr %i.cf, ptr %i.av, align 8, !noalias !790
  store ptr @_RNvXs7_NtNtCsf3Ta7LF998c_4core3fmt5floatdNtB7_7Display3fmt, ptr %.sroa.429.0..sroa_idx.i.i.i.i.i, align 8, !noalias !790
  invoke void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ab, ptr noundef nonnull @91, ptr noundef nonnull %i.z)
          to label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i.i.i.i.i unwind label %bb.bi, !noalias !791

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i.i.i.i.i: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !790
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !790
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !790
  invoke void @_RNvXs3_NtNtCsjlHezul7jxg_14implicit_clone6unsync6stringNtB5_7IStringINtNtCsf3Ta7LF998c_4core7convert4FromNtNtCsgCecv3eZDcN_5alloc6string6StringE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.ab)
          to label %bb.h unwind label %bb.bi, !noalias !791

bb.h:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !noalias !790
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !790
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.4.8..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false), !noalias !790
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.sroa.0.40..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false), !noalias !790
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !790
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.0.sroa.6.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.4.i.i.i.i.i, i64 28, i1 false), !noalias !790
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.sroa.0.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.ac, i64 40, i1 false), !noalias !790
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !790
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !790
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !790
  store i64 1, ptr %i.m, align 8, !noalias !790
  store i64 1, ptr %i.aw, align 8, !noalias !790
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ax, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0.sroa.0.i.i.i.i.i, i64 64, i1 false), !noalias !790
  store i32 1, ptr %.sroa.0.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !790
  store ptr %i.ca, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !790
  store ptr null, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !noalias !790
  store ptr null, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i, align 8, !noalias !790
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !793
  %i.cg = call noundef align 8 dereferenceable_or_null(152) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 4, 153) 152, i64 noundef range(i64 4, 9) 8) #31, !noalias !793 ; 3 uses
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %bb.i, label %bb.p, !prof !8

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 152) #30
          to label %.noexc69.i.i.i.i.i unwind label %bb.j, !noalias !791

.noexc69.i.i.i.i.i:                               ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.ci = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc2rc7RcInnerNtNtNtCs9OLX912zl7o_3yew11virtual_dom4vtag4VTagEECsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %i.m) #27
          to label %.body.i.i.i.i.i unwind label %bb.k, !noalias !791

bb.k:                                             ; preds = %bb.j
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29, !noalias !791
  unreachable

.body.i.i.i.i.i:                                  ; preds = %bb.ax, %bb.at, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew4html7NodeRefECsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i.i.i.i.i, %bb.ak, %bb.ag, %bb.ad, %bb.z, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew4html7NodeRefECsfh9HxMbthk9_27candle_wasm_example_whisper.exit102.i.i.i.i.i, %bb.r, %bb.o, %bb.j, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew4html7NodeRefECsfh9HxMbthk9_27candle_wasm_example_whisper.exit106.i.i.i.i.i
  %.pn51.i.i.i.i.i = phi { ptr, i32 } [ %.pn.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew4html7NodeRefECsfh9HxMbthk9_27candle_wasm_example_whisper.exit106.i.i.i.i.i ], [ %.pn49.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew4html7NodeRefECsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i.i.i.i.i ], [ %.pn47.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew4html7NodeRefECsfh9HxMbthk9_27candle_wasm_example_whisper.exit102.i.i.i.i.i ], [ %i.dq, %bb.ak ], [ %i.cq, %bb.r ], [ %i.ci, %bb.j ], [ %i.dx, %bb.at ], [ %i.da, %bb.z ], [ %i.df, %bb.ad ], [ %i.cm, %bb.o ], [ %lpad.phi.i.i.i, %bb.ag ], [ %i.ec, %bb.ax ]
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs9OLX912zl7o_3yew11virtual_dom5vnode5VNodeENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %bb.m unwind label %bb.l, !noalias !791

bb.l:                                             ; preds = %.body.i.i.i.i.i
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9OLX912zl7o_3yew11virtual_dom5vnode5VNodeENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %.body16.i.i.i unwind label %bb.n, !noalias !791

bb.m:                                             ; preds = %.body.i.i.i.i.i
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9OLX912zl7o_3yew11virtual_dom5vnode5VNodeENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %bb.bl unwind label %bb.bd, !noalias !794

bb.n:                                             ; preds = %bb.l
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29, !noalias !791
  unreachable

bb.o:                                             ; preds = %bb.am, %_RNvXs1_NtCsf3Ta7LF998c_4core7convertRNtNtCsgCecv3eZDcN_5alloc6string6StringINtB5_4IntoNtNtNtCs9OLX912zl7o_3yew11virtual_dom5vnode5VNodeE4intoCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i.i.i.i.i.i
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

bb.p:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.cg, ptr noundef nonnull align 8 dereferenceable(152) %i.m, i64 152, i1 false), !noalias !791
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !790
  store ptr %i.cg, ptr %i.ay, align 8, !noalias !790
  store i32 0, ptr %i.af, align 8, !noalias !790
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.sroa.0.i.i.i.i.i)
  %i.cn = load i64, ptr %i.ao, align 8, !alias.scope !795, !noalias !796, !noundef !5 ; 3 uses
  %i.co = load i64, ptr %i.ag, align 8, !range !17, !alias.scope !795, !noalias !796, !noundef !5
  %i.cp = icmp eq i64 %i.cn, %i.co
  br i1 %i.cp, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9OLX912zl7o_3yew11virtual_dom5vnode5VNodeE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %bb.t unwind label %bb.r, !noalias !797

bb.r:                                             ; preds = %bb.q
  %i.cq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs9OLX912zl7o_3yew11virtual_dom5vnode5VNodeECsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.af) #27
          to label %.body.i.i.i.i.i unwind label %bb.s, !noalias !791

bb.s:                                             ; preds = %bb.r
  %i.cr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29, !noalias !791
  unreachable

bb.t:                                             ; preds = %bb.q, %bb.p
  %i.cs = load ptr, ptr %i.an, align 8, !alias.scope !795, !noalias !796, !nonnull !5, !noundef !5
  %i.ct = getelementptr inbounds nuw [32 x i8], ptr %i.cs, i64 %i.cn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ct, ptr noundef nonnull align 8 dereferenceable(32) %i.af, i64 32, i1 false), !noalias !791
  %i.cu = add i64 %i.cn, 1
  store i64 %i.cu, ptr %i.ao, align 8, !alias.scope !795, !noalias !796
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.02.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !790
  store ptr @92, ptr %i.az, align 8, !noalias !790
  store i64 2, ptr %i.ba, align 8, !noalias !790
  store i64 0, ptr %i.x, align 8, !noalias !790
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !790
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !791
  %i.cv = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 4, 153) 32, i64 noundef range(i64 4, 9) 8) #31, !noalias !791 ; 9 uses
  %i.cw = icmp eq ptr %i.cv, null
  br i1 %i.cw, label %bb.u, label %bb.w, !prof !8

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #30
          to label %.noexc75.i.i.i.i.i unwind label %bb.v, !noalias !791

.noexc75.i.i.i.i.i:                               ; preds = %bb.u
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew4html7NodeRefECsfh9HxMbthk9_27candle_wasm_example_whisper.exit102.i.i.i.i.i: ; preds = %bb.bh, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9OLX912zl7o_3yew11virtual_dom3key3KeyEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit100.i.i.i.i.i, %bb.v
  %.pn47.i.i.i.i.i = phi { ptr, i32 } [ %i.cx, %bb.v ], [ %i.eq, %bb.bh ], [ %i.eq, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9OLX912zl7o_3yew11virtual_dom3key3KeyEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit100.i.i.i.i.i ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsjlHezul7jxg_14implicit_clone6unsync6string7IStringECsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef align 8 dereferenceable(24) %i.x) #27
          to label %.body.i.i.i.i.i unwind label %bb.bd, !noalias !791

bb.v:                                             ; preds = %bb.u
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew4html7NodeRefECsfh9HxMbthk9_27candle_wasm_example_whisper.exit102.i.i.i.i.i

bb.w:                                             ; preds = %bb.t
  store i64 1, ptr %i.cv, align 8, !noalias !791
  %.sroa.45.0..sroa_idx.i72.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store i64 1, ptr %.sroa.45.0..sroa_idx.i72.i.i.i.i.i, align 8, !noalias !791
  %.sroa.56.0..sroa_idx.i73.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  store i64 0, ptr %.sroa.56.0..sroa_idx.i73.i.i.i.i.i, align 8, !noalias !791
  %.sroa.56.sroa.4.0..sroa.56.0..sroa_idx.sroa_idx.i74.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  store i32 0, ptr %.sroa.56.sroa.4.0..sroa.56.0..sroa_idx.sroa_idx.i74.i.i.i.i.i, align 8, !noalias !791
  store ptr %i.cv, ptr %i.w, align 8, !noalias !790
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !790
  store ptr inttoptr (i64 8 to ptr), ptr %i.bb, align 8, !noalias !790
  store i64 0, ptr %i.bc, align 8, !noalias !790
  store i64 0, ptr %i.v, align 8, !noalias !790
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !790
  invoke void @_RNvXs_NtNtCs9OLX912zl7o_3yew11virtual_dom5vnodeNtB4_5VNodeNtNtCsf3Ta7LF998c_4core7default7Default7default(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.u)
          to label %bb.x unwind label %bb.bg, !noalias !791

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false), !noalias !790
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bd, ptr noundef nonnull align 8 dereferenceable(32) %i.u, i64 32, i1 false), !noalias !790
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.02.40..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %i.l, i64 56, i1 false), !noalias !790
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.02.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.v, i64 40, i1 false), !noalias !790
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !790
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !790
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !790
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !790
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !790
  store i64 1, ptr %i.k, align 8, !noalias !790
  store i64 1, ptr %i.be, align 8, !noalias !790
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.bf, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.02.i.i.i.i.i, i64 96, i1 false), !noalias !790
  store ptr %i.cv, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i, align 8, !noalias !790
  store ptr null, ptr %.sroa.64.0..sroa_idx.i.i.i.i.i, align 8, !noalias !790
  store ptr null, ptr %.sroa.86.0..sroa_idx.i.i.i.i.i, align 8, !noalias !790
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !798
  %i.cy = call noundef align 8 dereferenceable_or_null(152) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 4, 153) 152, i64 noundef range(i64 4, 9) 8) #31, !noalias !798 ; 3 uses
  %i.cz = icmp eq ptr %i.cy, null
  br i1 %i.cz, label %bb.y, label %bb.ab, !prof !8

bb.y:                                             ; preds = %bb.x
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 152) #30
          to label %.noexc77.i.i.i.i.i unwind label %bb.z, !noalias !791

.noexc77.i.i.i.i.i:                               ; preds = %bb.y
  unreachable

end_hunk_0
begin_hunk_1_@_RNvMsh9_Cs3OdvwEu12o7_6js_sysNtB6_4Date5new_0

; Function Attrs: nonlazybind uwtable
declare noundef i32 @_RNvMshL_Cs3OdvwEu12o7_6js_sysNtB6_4Date9to_string(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs1N_Cs3OdvwEu12o7_6js_sysNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtCsf3Ta7LF998c_4core7convert4FromNtB6_8JsStringE4from(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell7RefCellINtCsjJ6wem5K4Ki_7anymap23MapDNtNtB1y_3any3AnyEL_EEE4withNCNvXNtNtCscNeReUgPDN9_11gloo_worker6worker6publicINtB2v_6PublicNtNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker6WorkerENtB2z_10Discoverer13spawn_or_join0INtB2v_12PublicBridgeB3s_EEB3w_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noundef, ptr) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs2_NtNtCscNeReUgPDN9_11gloo_worker6worker6publicINtB5_12PublicBridgeNtNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker6WorkerEINtB9_6BridgeB18_E4sendB1c_(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(152)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtReNtB6_7Display3fmtCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker3log(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.cos.f32(float) #22

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs2_NtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB7_3VecmEINtB5_10SpecExtendRmINtNtNtCsf3Ta7LF998c_4core5slice4iter4ItermEE11spec_extendCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #23

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtCsf3Ta7LF998c_4core2io5errorNtB2_5ErrorNtNtB6_3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMNtNtNtCsdIJosCPXwkf_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtNtNtCsdIJosCPXwkf_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtCshVf899juJFK_6base646decodeNtB2_11DecodeErrorNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtNtCsf3Ta7LF998c_4core4sync6atomic6AtomicjEE9drop_slowCshKUX2qKI1Vd_6tokise(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #21

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsej0D7ZFyXq_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef) unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvMsm_NtCsgCecv3eZDcN_5alloc2rcINtB5_2RcShE15copy_from_sliceCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvMsg_NtCsgCecv3eZDcN_5alloc2rcINtB5_2RceE11from_raw_inCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsm_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core5error5ErrorNtNtBM_6marker4SendNtB1j_4SyncEL_ENtNtBM_3fmt7Display3fmtCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs5_NtCsltEA4u8Pgfu_11candle_core5errorNtB5_5ErrorNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NtNtNtCshBhMCGs0DAb_10tokenizers6models9wordlevel13serializationNtB5_16WordLevelVisitorNtNtCseZbltJ5Yqe_10serde_core2de7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNvMNvNtNtCshBhMCGs0DAb_10tokenizers14pre_tokenizers6digitss0_1__NtB7_9DigitsDef11deserializeNtB2_14___FieldVisitorNtNtCseZbltJ5Yqe_10serde_core2de7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNvXNvCslUjavNzuXCV_15spm_precompileds0_1__NtB7_23PrecompiledDeserializerNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB1e_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NvXNvCslUjavNzuXCV_15spm_precompileds0_1__NtBa_23PrecompiledDeserializerNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1h_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NvXNvNtNtCs1dZk1kIfPhr_19candle_transformers6models7whisper1__NtBa_6ConfigNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1j_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNvXNvNtNtCshBhMCGs0DAb_10tokenizers10processors8templates1_1__NtB7_5PieceNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB1f_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNvXNvNtNtCshBhMCGs0DAb_10tokenizers10processors8templates3_1__NtB7_12SpecialTokenNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB1n_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NvXNvNtNtCshBhMCGs0DAb_10tokenizers10processors8templates3_1__NtBa_12SpecialTokenNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1q_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNvXNvNtNtCshBhMCGs0DAb_10tokenizers10processors8templates_1__NtB7_8SequenceNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB1h_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNvXNvNtNtCshBhMCGs0DAb_10tokenizers10processors8templatesa_1__NtB7_30TemplateProcessingDeserializerNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB1F_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NvXNvNtNtCshBhMCGs0DAb_10tokenizers10processors8templatesa_1__NtBa_30TemplateProcessingDeserializerNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1I_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNvXNvNtNtCshBhMCGs0DAb_10tokenizers14pre_tokenizers6digitss1_1__NtB7_10DigitsTypeNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB1n_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNvXNvNtNtCshBhMCGs0DAb_10tokenizers14pre_tokenizers6digitss2_1__NtB7_18DigitsDeserializerNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB1v_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NvXNvNtNtCshBhMCGs0DAb_10tokenizers14pre_tokenizers6digitss2_1__NtBa_18DigitsDeserializerNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1y_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNvXNvNtNtCshBhMCGs0DAb_10tokenizers8decoders9wordpiece1__NtB7_9WordPieceNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB1e_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NvXNvNtNtCshBhMCGs0DAb_10tokenizers8decoders9wordpiece1__NtBa_9WordPieceNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1h_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNvXNvNtNtNtCshBhMCGs0DAb_10tokenizers14pre_tokenizers15unicode_scripts13pre_tokenizers1_1__NtB7_20UnicodeScriptsHelperNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB1Y_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NvXNvNtNtNtCshBhMCGs0DAb_10tokenizers14pre_tokenizers15unicode_scripts13pre_tokenizers1_1__NtBa_20UnicodeScriptsHelperNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB21_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNvXNvNtNtNtCshBhMCGs0DAb_10tokenizers14pre_tokenizers15unicode_scripts13pre_tokenizers_1__NtB7_18UnicodeScriptsTypeNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB1V_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNvXs0_NvXNvNtNtCshBhMCGs0DAb_10tokenizers10processors8templates1_1__NtBd_5PieceNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserializeNtB8_9___VisitorNtB1l_7Visitor10visit_enumNtB2_14___FieldVisitorB2v_9expecting(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs1_NvXs0_NvXNvNtNtCshBhMCGs0DAb_10tokenizers10processors8templates1_1__NtBg_5PieceNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserializeNtBb_9___VisitorNtB1o_7Visitor10visit_enumNtB5_s_14___FieldVisitorB2y_9expecting(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCsf3Ta7LF998c_4core3fmt5write(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @_RNvCsej0D7ZFyXq_12wasm_bindgen27___wbindgen_object_clone_ref(i32 noundef) unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtCsf3Ta7LF998c_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsh_NtCsf3Ta7LF998c_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i32 @_RINvNtCsej0D7ZFyXq_12wasm_bindgen4___rt8wbg_castReNtB4_7JsValueECsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs6_NtCsgCecv3eZDcN_5alloc2rcINtB5_2RcDINtNtNtCsf3Ta7LF998c_4core3ops8function2FnTINtNtBL_6result6ResultNtNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker12WorkerOutputNtNtB7_6string6StringEEEp6OutputuEL_E9drop_slowB1L_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #21

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs6_NtCsgCecv3eZDcN_5alloc2rcINtB5_2RcDINtNtNtCsf3Ta7LF998c_4core3ops8function2FnTNtNtNtCsey8dOKI5XLb_7web_sys8features14gen_MouseEvent10MouseEventEEp6OutputuEL_E9drop_slowCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #21

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs6_NtCsgCecv3eZDcN_5alloc2rcINtB5_2RcDNtNtNtCs9OLX912zl7o_3yew11virtual_dom9listeners8ListenerEL_E9drop_slowBK_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #21

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs6_NtCsgCecv3eZDcN_5alloc2rcINtB5_2RcINtNtB7_3vec3VecNtNtNtCs9OLX912zl7o_3yew11virtual_dom5vnode5VNodeEE9drop_slowBZ_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #21

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs6_NtCsgCecv3eZDcN_5alloc2rcINtB5_2RcINtNtCs2upMkKV4wAv_8indexmap3map8IndexMapNtNtNtCsjlHezul7jxg_14implicit_clone6unsync6string7IStringNtNtCs9OLX912zl7o_3yew11virtual_dom19AttributeOrPropertyEE9drop_slowB2i_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #21

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs6_NtCsgCecv3eZDcN_5alloc2rcINtB5_2RcINtNtCsf3Ta7LF998c_4core4cell7RefCellINtNtB7_3vec3VecNtNtCsfh9HxMbthk9_27candle_wasm_example_whisper3app3MsgEEE9drop_slowB1y_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #21

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs6_NtCsgCecv3eZDcN_5alloc2rcINtB5_2RcINtNtCsf3Ta7LF998c_4core4cell7RefCellINtNtBI_6option6OptionNtNtNtNtCs9OLX912zl7o_3yew4html9component9lifecycle14ComponentStateEEE9drop_slowB1I_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #21

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs6_NtCsgCecv3eZDcN_5alloc2rcINtB5_2RcINtNtCsf3Ta7LF998c_4core4cell7RefCellNtNtCs3OdvwEu12o7_6js_sys7futures5InnerEE9drop_slowCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #21

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs6_NtCsgCecv3eZDcN_5alloc2rcINtB5_2RcINtNtCsf3Ta7LF998c_4core4cell7RefCellNtNtCs9OLX912zl7o_3yew4html12NodeRefInnerEE9drop_slowB1i_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #21

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs6_NtCsgCecv3eZDcN_5alloc2rcINtB5_2RcNtNtNtCs9OLX912zl7o_3yew11virtual_dom4vtag4VTagE9drop_slowBJ_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #21

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs6_NtCsgCecv3eZDcN_5alloc2rcINtB5_2RcNtNtNtCs9OLX912zl7o_3yew11virtual_dom5vcomp5VCompE9drop_slowBJ_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #21

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs6_NtCsgCecv3eZDcN_5alloc2rcINtB5_2RcNtNtNtCs9OLX912zl7o_3yew11virtual_dom5vlist5VListE9drop_slowBJ_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #21

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs6_NtCsgCecv3eZDcN_5alloc2rcINtB5_2RcNtNtNtCs9OLX912zl7o_3yew11virtual_dom7vportal7VPortalE9drop_slowBJ_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #21

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs6_NtCsgCecv3eZDcN_5alloc2rcINtB5_2RcNtNtNtCs9OLX912zl7o_3yew11virtual_dom9vsuspense9VSuspenseE9drop_slowBJ_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #21

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs6_NtCsgCecv3eZDcN_5alloc2rcINtB5_2RcNtNtNtNtCs9OLX912zl7o_3yew4html9component5scope8AnyScopeE9drop_slowBL_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #21

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs6_NtCsgCecv3eZDcN_5alloc2rcINtB5_2RceE9drop_slowCs6w5S7JBAafr_3yew(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #21

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fadd.v2f64(double, <2 x double>) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.cos.v4f32(<4 x float>) #22

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { inlinehint nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #17 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsh0WfaQiVYm0_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #24 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #27 = { cold }
attributes #28 = { noinline noreturn }
attributes #29 = { cold noreturn nounwind }
attributes #30 = { noreturn }
attributes #31 = { nounwind }
attributes #32 = { noinline }
attributes #33 = { inlinehint }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}

!0 = distinct !{null}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 2, !"RtLibUseGOT", i32 1}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"rustc version 1.100.0-nightly (809936eac 2026-09-12)"}
!5 = !{}
!6 = !{i64 8}
!7 = !{i64 -1, i64 -9223372036854775808}
!8 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!9 = !{i64 0, i64 2}
!10 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!11 = !{i64 1, i64 536870913}
!12 = !{i64 -1, i64 3}
!13 = !{i64 0, i64 -9223372036854775807}
!14 = !{i8 0, i8 4}
!15 = !{i64 -1, i64 5}
!16 = !{i64 0, i64 3}
!17 = !{i64 0, i64 -9223372036854775808}
!18 = !{i8 0, i8 6}
!19 = !{i32 0, i32 8}
!20 = !{i8 0, i8 2}
!21 = !{!"branch_weights", i32 1, i32 2000, i32 2000}
!22 = !{i8 -2, i8 6}
!23 = !{!"branch_weights", i32 1, i32 2001, i32 2000}
!24 = !{!"address", !"read_provenance"}
!25 = !{i64 -2, i64 -9223372036854775808}
!26 = !{i8 0, i8 3}
!27 = distinct !{!27, !"_RNvXsC_NtCsgCecv3eZDcN_5alloc6stringNtNtCshVf899juJFK_6base646decode11DecodeErrorNtB5_12SpecToString14spec_to_stringCsfh9HxMbthk9_27candle_wasm_example_whisper"}
!28 = distinct !{!28, !27, !"_RNvXsC_NtCsgCecv3eZDcN_5alloc6stringNtNtCshVf899juJFK_6base646decode11DecodeErrorNtB5_12SpecToString14spec_to_stringCsfh9HxMbthk9_27candle_wasm_example_whisper: argument 1"}
!29 = distinct !{!29, !27, !"_RNvXsC_NtCsgCecv3eZDcN_5alloc6stringNtNtCshVf899juJFK_6base646decode11DecodeErrorNtB5_12SpecToString14spec_to_stringCsfh9HxMbthk9_27candle_wasm_example_whisper: argument 0"}
!30 = !{!29, !28}
!31 = !{!29}
!32 = !{!28}
!33 = distinct !{!33, !"_RNvXsC_NtCsgCecv3eZDcN_5alloc6stringNtNtCshVf899juJFK_6base646decode11DecodeErrorNtB5_12SpecToString14spec_to_stringCsfh9HxMbthk9_27candle_wasm_example_whisper"}
!34 = distinct !{!34, !33, !"_RNvXsC_NtCsgCecv3eZDcN_5alloc6stringNtNtCshVf899juJFK_6base646decode11DecodeErrorNtB5_12SpecToString14spec_to_stringCsfh9HxMbthk9_27candle_wasm_example_whisper: argument 1"}
!35 = distinct !{!35, !33, !"_RNvXsC_NtCsgCecv3eZDcN_5alloc6stringNtNtCshVf899juJFK_6base646decode11DecodeErrorNtB5_12SpecToString14spec_to_stringCsfh9HxMbthk9_27candle_wasm_example_whisper: argument 0"}
!36 = !{!35, !34}
!37 = !{!35}
!38 = !{!34}
!39 = distinct !{!39, !"_RINvMNtCsf3Ta7LF998c_4core5sliceSf16binary_search_byNCINvB2_15partition_pointNCINvXs3_NtNtNtCsVG4f6i5f9f_4rand5distr8weighted14weighted_indexINtB1m_13WeightedIndexfEINtNtB1q_12distribution12DistributionjE6sampleNtNtNtB1s_4rngs3std6StdRngE0E0ECsfh9HxMbthk9_27candle_wasm_example_whisper"}
!40 = distinct !{!40, !39, !"_RINvMNtCsf3Ta7LF998c_4core5sliceSf16binary_search_byNCINvB2_15partition_pointNCINvXs3_NtNtNtCsVG4f6i5f9f_4rand5distr8weighted14weighted_indexINtB1m_13WeightedIndexfEINtNtB1q_12distribution12DistributionjE6sampleNtNtNtB1s_4rngs3std6StdRngE0E0ECsfh9HxMbthk9_27candle_wasm_example_whisper: argument 0"}
!41 = distinct !{!41, !"_RNvXsP_NtNtCsf3Ta7LF998c_4core3cmp5implsfNtB7_10PartialOrd2le"}
!42 = distinct !{!42, !41, !"_RNvXsP_NtNtCsf3Ta7LF998c_4core3cmp5implsfNtB7_10PartialOrd2le: argument 0"}
!43 = distinct !{!43, !41, !"_RNvXsP_NtNtCsf3Ta7LF998c_4core3cmp5implsfNtB7_10PartialOrd2le: argument 1"}
!44 = !{!40}
!45 = !{!42, !40}
!46 = !{!43}
!47 = distinct !{!47, !"_RNvXs1_NtCsf3Ta7LF998c_4core7convertNtNtCsfh9HxMbthk9_27candle_wasm_example_whisper3app3MsgINtB5_4IntoBy_E4intoBC_"}
!48 = distinct !{!48, !47, !"_RNvXs1_NtCsf3Ta7LF998c_4core7convertNtNtCsfh9HxMbthk9_27candle_wasm_example_whisper3app3MsgINtB5_4IntoBy_E4intoBC_: argument 1"}
!49 = distinct !{!49, !47, !"_RNvXs1_NtCsf3Ta7LF998c_4core7convertNtNtCsfh9HxMbthk9_27candle_wasm_example_whisper3app3MsgINtB5_4IntoBy_E4intoBC_: argument 0"}
!50 = distinct !{!50, !"_RNvXs2_NtCsf3Ta7LF998c_4core7convertNtNtCsfh9HxMbthk9_27candle_wasm_example_whisper3app3MsgINtB5_4FromBy_E4fromBC_"}
!51 = distinct !{!51, !50, !"_RNvXs2_NtCsf3Ta7LF998c_4core7convertNtNtCsfh9HxMbthk9_27candle_wasm_example_whisper3app3MsgINtB5_4FromBy_E4fromBC_: argument 1"}
!52 = distinct !{!52, !50, !"_RNvXs2_NtCsf3Ta7LF998c_4core7convertNtNtCsfh9HxMbthk9_27candle_wasm_example_whisper3app3MsgINtB5_4FromBy_E4fromBC_: argument 0"}
!53 = distinct !{!53, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs9OLX912zl7o_3yew4html9component9lifecycle12UpdateRunnerECsfh9HxMbthk9_27candle_wasm_example_whisper"}
!54 = distinct !{!54, !53, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs9OLX912zl7o_3yew4html9component9lifecycle12UpdateRunnerECsfh9HxMbthk9_27candle_wasm_example_whisper: argument 0"}
!55 = distinct !{!55, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc2rc2RcINtNtB4_4cell7RefCellINtNtB4_6option6OptionNtNtNtNtCs9OLX912zl7o_3yew4html9component9lifecycle14ComponentStateEEEECsfh9HxMbthk9_27candle_wasm_example_whisper"}
!56 = distinct !{!56, !55, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc2rc2RcINtNtB4_4cell7RefCellINtNtB4_6option6OptionNtNtNtNtCs9OLX912zl7o_3yew4html9component9lifecycle14ComponentStateEEEECsfh9HxMbthk9_27candle_wasm_example_whisper: argument 0"}
!57 = distinct !{!57, !"_RNvXsw_NtCsgCecv3eZDcN_5alloc2rcINtB5_2RcINtNtCsf3Ta7LF998c_4core4cell7RefCellINtNtBI_6option6OptionNtNtNtNtCs9OLX912zl7o_3yew4html9component9lifecycle14ComponentStateEEENtNtNtBI_3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper"}
!58 = distinct !{!58, !57, !"_RNvXsw_NtCsgCecv3eZDcN_5alloc2rcINtB5_2RcINtNtCsf3Ta7LF998c_4core4cell7RefCellINtNtBI_6option6OptionNtNtNtNtCs9OLX912zl7o_3yew4html9component9lifecycle14ComponentStateEEENtNtNtBI_3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper: argument 0"}
!59 = !{!52, !51, !49, !48}
!60 = !{!58, !56, !54}
!61 = distinct !{!61, !"_RNvXss_Csej0D7ZFyXq_12wasm_bindgenNtB5_7JsValueINtNtCsf3Ta7LF998c_4core7convert4FromNtNtCsgCecv3eZDcN_5alloc6string6StringE4from"}
!62 = distinct !{!62, !61, !"_RNvXss_Csej0D7ZFyXq_12wasm_bindgenNtB5_7JsValueINtNtCsf3Ta7LF998c_4core7convert4FromNtNtCsgCecv3eZDcN_5alloc6string6StringE4from: argument 0"}
!63 = distinct !{!63, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc2rc2RcDINtNtNtB4_3ops8function2FnTINtNtB4_6result6ResultNtNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker12WorkerOutputNtNtBG_6string6StringEEEp6OutputuEL_EEB1Y_"}
!64 = distinct !{!64, !63, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc2rc2RcDINtNtNtB4_3ops8function2FnTINtNtB4_6result6ResultNtNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker12WorkerOutputNtNtBG_6string6StringEEEp6OutputuEL_EEB1Y_: argument 0"}
!65 = distinct !{!65, !"_RNvXsw_NtCsgCecv3eZDcN_5alloc2rcINtB5_2RcDINtNtNtCsf3Ta7LF998c_4core3ops8function2FnTINtNtBL_6result6ResultNtNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker12WorkerOutputNtNtB7_6string6StringEEEp6OutputuEL_ENtNtBJ_4drop4Drop4dropB1L_"}
!66 = distinct !{!66, !65, !"_RNvXsw_NtCsgCecv3eZDcN_5alloc2rcINtB5_2RcDINtNtNtCsf3Ta7LF998c_4core3ops8function2FnTINtNtBL_6result6ResultNtNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker12WorkerOutputNtNtB7_6string6StringEEEp6OutputuEL_ENtNtBJ_4drop4Drop4dropB1L_: argument 0"}
!67 = distinct !{!67, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc2rc2RcDINtNtNtB4_3ops8function2FnTINtNtB4_6result6ResultNtNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker12WorkerOutputNtNtBG_6string6StringEEEp6OutputuEL_EEB1Y_"}
!68 = distinct !{!68, !67, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc2rc2RcDINtNtNtB4_3ops8function2FnTINtNtB4_6result6ResultNtNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker12WorkerOutputNtNtBG_6string6StringEEEp6OutputuEL_EEB1Y_: argument 0"}
!69 = distinct !{!69, !"_RNvXsw_NtCsgCecv3eZDcN_5alloc2rcINtB5_2RcDINtNtNtCsf3Ta7LF998c_4core3ops8function2FnTINtNtBL_6result6ResultNtNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker12WorkerOutputNtNtB7_6string6StringEEEp6OutputuEL_ENtNtBJ_4drop4Drop4dropB1L_"}
!70 = distinct !{!70, !69, !"_RNvXsw_NtCsgCecv3eZDcN_5alloc2rcINtB5_2RcDINtNtNtCsf3Ta7LF998c_4core3ops8function2FnTINtNtBL_6result6ResultNtNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker12WorkerOutputNtNtB7_6string6StringEEEp6OutputuEL_ENtNtBJ_4drop4Drop4dropB1L_: argument 0"}
!71 = distinct !{!71, !"_RNvXss_Csej0D7ZFyXq_12wasm_bindgenNtB5_7JsValueINtNtCsf3Ta7LF998c_4core7convert4FromNtNtCsgCecv3eZDcN_5alloc6string6StringE4from"}
!72 = distinct !{!72, !71, !"_RNvXss_Csej0D7ZFyXq_12wasm_bindgenNtB5_7JsValueINtNtCsf3Ta7LF998c_4core7convert4FromNtNtCsgCecv3eZDcN_5alloc6string6StringE4from: argument 0"}
!73 = !{!62}
!74 = !{!66, !64}
!75 = !{!70, !68}
!76 = !{!72}
!77 = distinct !{!77, !"_RINvNtCsca3zzRxL8hD_7bincode8internal15serialized_sizeRINtNtCscNeReUgPDN9_11gloo_worker6worker8ToWorkerNtNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker11WorkerInputEQINtNtB4_6config17WithOtherTrailingINtB2N_20WithOtherIntEncodingNtB2N_14DefaultOptionsNtNtB2N_3int14FixintEncodingENtNtB2N_8trailing13AllowTrailingEEB1H_"}
!78 = distinct !{!78, !77, !"_RINvNtCsca3zzRxL8hD_7bincode8internal15serialized_sizeRINtNtCscNeReUgPDN9_11gloo_worker6worker8ToWorkerNtNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker11WorkerInputEQINtNtB4_6config17WithOtherTrailingINtB2N_20WithOtherIntEncodingNtB2N_14DefaultOptionsNtNtB2N_3int14FixintEncodingENtNtB2N_8trailing13AllowTrailingEEB1H_: argument 0"}
!79 = distinct !{!79, !"_RINvNtCsca3zzRxL8hD_7bincode8internal14serialize_intoQINtNtCsgCecv3eZDcN_5alloc3vec3VechERINtNtCscNeReUgPDN9_11gloo_worker6worker8ToWorkerNtNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker11WorkerInputEINtNtB4_6config14WithOtherLimitINtB3l_17WithOtherTrailingINtB3l_20WithOtherIntEncodingNtB3l_14DefaultOptionsNtNtB3l_3int14FixintEncodingENtNtB3l_8trailing13AllowTrailingENtNtB3l_5limit8InfiniteEEB2g_"}
!80 = distinct !{!80, !79, !"_RINvNtCsca3zzRxL8hD_7bincode8internal14serialize_intoQINtNtCsgCecv3eZDcN_5alloc3vec3VechERINtNtCscNeReUgPDN9_11gloo_worker6worker8ToWorkerNtNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker11WorkerInputEINtNtB4_6config14WithOtherLimitINtB3l_17WithOtherTrailingINtB3l_20WithOtherIntEncodingNtB3l_14DefaultOptionsNtNtB3l_3int14FixintEncodingENtNtB3l_8trailing13AllowTrailingENtNtB3l_5limit8InfiniteEEB2g_: argument 0"}
!81 = !{!78}
!82 = !{!80}
!83 = distinct !{!83, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc2rc2RcDINtNtNtB4_3ops8function2FnTINtNtB4_6result6ResultNtNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker12WorkerOutputNtNtB12_6string6StringEEEp6OutputuEL_EEEB2k_"}
!84 = distinct !{!84, !83, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc2rc2RcDINtNtNtB4_3ops8function2FnTINtNtB4_6result6ResultNtNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker12WorkerOutputNtNtB12_6string6StringEEEp6OutputuEL_EEEB2k_: argument 0"}
!85 = distinct !{!85, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc2rc2RcDINtNtNtB4_3ops8function2FnTINtNtB4_6result6ResultNtNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker12WorkerOutputNtNtBG_6string6StringEEEp6OutputuEL_EEB1Y_"}
!86 = distinct !{!86, !85, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc2rc2RcDINtNtNtB4_3ops8function2FnTINtNtB4_6result6ResultNtNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker12WorkerOutputNtNtBG_6string6StringEEEp6OutputuEL_EEB1Y_: argument 0"}
!87 = distinct !{!87, !"_RNvXsw_NtCsgCecv3eZDcN_5alloc2rcINtB5_2RcDINtNtNtCsf3Ta7LF998c_4core3ops8function2FnTINtNtBL_6result6ResultNtNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker12WorkerOutputNtNtB7_6string6StringEEEp6OutputuEL_ENtNtBJ_4drop4Drop4dropB1L_"}
!88 = distinct !{!88, !87, !"_RNvXsw_NtCsgCecv3eZDcN_5alloc2rcINtB5_2RcDINtNtNtCsf3Ta7LF998c_4core3ops8function2FnTINtNtBL_6result6ResultNtNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker12WorkerOutputNtNtB7_6string6StringEEEp6OutputuEL_ENtNtBJ_4drop4Drop4dropB1L_: argument 0"}
!89 = !{!84}
!90 = !{!88, !86, !84}
!91 = distinct !{!91, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew11virtual_dom19AttributeOrPropertyECsfh9HxMbthk9_27candle_wasm_example_whisper"}
!92 = distinct !{!92, !91, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew11virtual_dom19AttributeOrPropertyECsfh9HxMbthk9_27candle_wasm_example_whisper: argument 0"}
!93 = distinct !{!93, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsjlHezul7jxg_14implicit_clone6unsync6string7IStringECsfh9HxMbthk9_27candle_wasm_example_whisper"}
!94 = distinct !{!94, !93, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsjlHezul7jxg_14implicit_clone6unsync6string7IStringECsfh9HxMbthk9_27candle_wasm_example_whisper: argument 0"}
!95 = distinct !{!95, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc2rc2RceEECsfh9HxMbthk9_27candle_wasm_example_whisper"}
!96 = distinct !{!96, !95, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc2rc2RceEECsfh9HxMbthk9_27candle_wasm_example_whisper: argument 0"}
!97 = distinct !{!97, !"_RNvXsw_NtCsgCecv3eZDcN_5alloc2rcINtB5_2RceENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper"}
!98 = distinct !{!98, !97, !"_RNvXsw_NtCsgCecv3eZDcN_5alloc2rcINtB5_2RceENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper: argument 0"}
!99 = !{!92}
!100 = !{!94}
!101 = !{!96}
!102 = !{!98}
!103 = !{!98, !96, !94, !92}
!104 = distinct !{!104, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsjlHezul7jxg_14implicit_clone6unsync6string7IStringECsfh9HxMbthk9_27candle_wasm_example_whisper"}
!105 = distinct !{!105, !104, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsjlHezul7jxg_14implicit_clone6unsync6string7IStringECsfh9HxMbthk9_27candle_wasm_example_whisper: argument 0"}
!106 = distinct !{!106, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc2rc2RceEECsfh9HxMbthk9_27candle_wasm_example_whisper"}
!107 = distinct !{!107, !106, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc2rc2RceEECsfh9HxMbthk9_27candle_wasm_example_whisper: argument 0"}
!108 = distinct !{!108, !"_RNvXsw_NtCsgCecv3eZDcN_5alloc2rcINtB5_2RceENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper"}
!109 = distinct !{!109, !108, !"_RNvXsw_NtCsgCecv3eZDcN_5alloc2rcINtB5_2RceENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper: argument 0"}
!110 = !{!105}
!111 = !{!107}
!112 = !{!109}
!113 = !{!109, !107, !105}
!114 = distinct !{!114, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker12WorkerOutputEBF_"}
!115 = distinct !{!115, !114, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker12WorkerOutputEBF_: argument 0"}
!116 = !{!115}
!117 = distinct !{!117, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs9OLX912zl7o_3yew11virtual_dom4vtag9VTagInnerECsfh9HxMbthk9_27candle_wasm_example_whisper"}
!118 = distinct !{!118, !117, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs9OLX912zl7o_3yew11virtual_dom4vtag9VTagInnerECsfh9HxMbthk9_27candle_wasm_example_whisper: argument 0"}
!119 = distinct !{!119, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs9OLX912zl7o_3yew11virtual_dom4vtag4VTagECsfh9HxMbthk9_27candle_wasm_example_whisper"}
!120 = distinct !{!120, !119, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs9OLX912zl7o_3yew11virtual_dom4vtag4VTagECsfh9HxMbthk9_27candle_wasm_example_whisper: argument 0"}
!121 = distinct !{!121, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsjlHezul7jxg_14implicit_clone6unsync6string7IStringECsfh9HxMbthk9_27candle_wasm_example_whisper"}
!122 = distinct !{!122, !121, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsjlHezul7jxg_14implicit_clone6unsync6string7IStringECsfh9HxMbthk9_27candle_wasm_example_whisper: argument 0"}
!123 = distinct !{!123, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc2rc2RceEECsfh9HxMbthk9_27candle_wasm_example_whisper"}
!124 = distinct !{!124, !123, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc2rc2RceEECsfh9HxMbthk9_27candle_wasm_example_whisper: argument 0"}
!125 = distinct !{!125, !"_RNvXsw_NtCsgCecv3eZDcN_5alloc2rcINtB5_2RceENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper"}
!126 = distinct !{!126, !125, !"_RNvXsw_NtCsgCecv3eZDcN_5alloc2rcINtB5_2RceENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper: argument 0"}
!127 = distinct !{!127, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs9OLX912zl7o_3yew11virtual_dom4vtag11InputFieldsECsfh9HxMbthk9_27candle_wasm_example_whisper"}
!128 = distinct !{!128, !127, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs9OLX912zl7o_3yew11virtual_dom4vtag11InputFieldsECsfh9HxMbthk9_27candle_wasm_example_whisper: argument 0"}
!129 = distinct !{!129, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCs9OLX912zl7o_3yew11virtual_dom4vtag5ValueNtNtNtCsey8dOKI5XLb_7web_sys8features20gen_HtmlInputElement16HtmlInputElementEECsfh9HxMbthk9_27candle_wasm_example_whisper"}
!130 = distinct !{!130, !129, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCs9OLX912zl7o_3yew11virtual_dom4vtag5ValueNtNtNtCsey8dOKI5XLb_7web_sys8features20gen_HtmlInputElement16HtmlInputElementEECsfh9HxMbthk9_27candle_wasm_example_whisper: argument 0"}
!131 = distinct !{!131, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsjlHezul7jxg_14implicit_clone6unsync6string7IStringEECsfh9HxMbthk9_27candle_wasm_example_whisper"}
!132 = distinct !{!132, !131, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsjlHezul7jxg_14implicit_clone6unsync6string7IStringEECsfh9HxMbthk9_27candle_wasm_example_whisper: argument 0"}
!133 = distinct !{!133, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsjlHezul7jxg_14implicit_clone6unsync6string7IStringECsfh9HxMbthk9_27candle_wasm_example_whisper"}
!134 = distinct !{!134, !133, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsjlHezul7jxg_14implicit_clone6unsync6string7IStringECsfh9HxMbthk9_27candle_wasm_example_whisper: argument 0"}
!135 = distinct !{!135, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc2rc2RceEECsfh9HxMbthk9_27candle_wasm_example_whisper"}
!136 = distinct !{!136, !135, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc2rc2RceEECsfh9HxMbthk9_27candle_wasm_example_whisper: argument 0"}
!137 = distinct !{!137, !"_RNvXsw_NtCsgCecv3eZDcN_5alloc2rcINtB5_2RceENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper"}
!138 = distinct !{!138, !137, !"_RNvXsw_NtCsgCecv3eZDcN_5alloc2rcINtB5_2RceENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper: argument 0"}
!139 = distinct !{!139, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs9OLX912zl7o_3yew11virtual_dom4vtag14TextareaFieldsECsfh9HxMbthk9_27candle_wasm_example_whisper"}
!140 = distinct !{!140, !139, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs9OLX912zl7o_3yew11virtual_dom4vtag14TextareaFieldsECsfh9HxMbthk9_27candle_wasm_example_whisper: argument 0"}
!141 = distinct !{!141, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCs9OLX912zl7o_3yew11virtual_dom4vtag5ValueNtNtNtCsey8dOKI5XLb_7web_sys8features23gen_HtmlTextAreaElement19HtmlTextAreaElementEECsfh9HxMbthk9_27candle_wasm_example_whisper"}
!142 = distinct !{!142, !141, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCs9OLX912zl7o_3yew11virtual_dom4vtag5ValueNtNtNtCsey8dOKI5XLb_7web_sys8features23gen_HtmlTextAreaElement19HtmlTextAreaElementEECsfh9HxMbthk9_27candle_wasm_example_whisper: argument 0"}
!143 = distinct !{!143, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsjlHezul7jxg_14implicit_clone6unsync6string7IStringEECsfh9HxMbthk9_27candle_wasm_example_whisper"}
!144 = distinct !{!144, !143, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsjlHezul7jxg_14implicit_clone6unsync6string7IStringEECsfh9HxMbthk9_27candle_wasm_example_whisper: argument 0"}
!145 = distinct !{!145, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsjlHezul7jxg_14implicit_clone6unsync6string7IStringECsfh9HxMbthk9_27candle_wasm_example_whisper"}
!146 = distinct !{!146, !145, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsjlHezul7jxg_14implicit_clone6unsync6string7IStringECsfh9HxMbthk9_27candle_wasm_example_whisper: argument 0"}
!147 = distinct !{!147, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc2rc2RceEECsfh9HxMbthk9_27candle_wasm_example_whisper"}
!148 = distinct !{!148, !147, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc2rc2RceEECsfh9HxMbthk9_27candle_wasm_example_whisper: argument 0"}
!149 = distinct !{!149, !"_RNvXsw_NtCsgCecv3eZDcN_5alloc2rcINtB5_2RceENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper"}
!150 = distinct !{!150, !149, !"_RNvXsw_NtCsgCecv3eZDcN_5alloc2rcINtB5_2RceENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper: argument 0"}
!151 = distinct !{!151, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsjlHezul7jxg_14implicit_clone6unsync6string7IStringEECsfh9HxMbthk9_27candle_wasm_example_whisper"}
!152 = distinct !{!152, !151, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsjlHezul7jxg_14implicit_clone6unsync6string7IStringEECsfh9HxMbthk9_27candle_wasm_example_whisper: argument 0"}
!153 = distinct !{!153, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsjlHezul7jxg_14implicit_clone6unsync6string7IStringECsfh9HxMbthk9_27candle_wasm_example_whisper"}
!154 = distinct !{!154, !153, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsjlHezul7jxg_14implicit_clone6unsync6string7IStringECsfh9HxMbthk9_27candle_wasm_example_whisper: argument 0"}
!155 = distinct !{!155, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc2rc2RceEECsfh9HxMbthk9_27candle_wasm_example_whisper"}
!156 = distinct !{!156, !155, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc2rc2RceEECsfh9HxMbthk9_27candle_wasm_example_whisper: argument 0"}
!157 = distinct !{!157, !"_RNvXsw_NtCsgCecv3eZDcN_5alloc2rcINtB5_2RceENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper"}
!158 = distinct !{!158, !157, !"_RNvXsw_NtCsgCecv3eZDcN_5alloc2rcINtB5_2RceENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper: argument 0"}
!159 = distinct !{!159, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew4html7NodeRefECsfh9HxMbthk9_27candle_wasm_example_whisper"}
end_hunk_1
