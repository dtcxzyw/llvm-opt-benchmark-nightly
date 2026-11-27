Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_wasm_chat_template.candle_wasm_chat_template.41e4d5002cfb9e58-cgu.08?download=true
inline.NumInlined: 184
inline.NumDeleted: 109
begin_hunk_0_@_RNvYNtNtNtCs1fJj97VvEPD_9minijinja5value9serialize12StaticKeyMapNtNtB6_6object6Object6renderCs5EKAXG1naGG_25candle_wasm_chat_template:bb.a
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %bb.aa, label %_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtBN_3ops5range5RangejENCNvYNtNtNtCs1fJj97VvEPD_9minijinja5value9serialize12StaticKeyMapNtNtB23_6object9ObjectExt8try_iter0EE3newCs5EKAXG1naGG_25candle_wasm_chat_template.exit.i.i, !prof !11

bb.aa:                                            ; preds = %bb.z
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #22
          to label %.noexc22.i.i unwind label %bb.ab, !noalias !387

.noexc22.i.i:                                     ; preds = %bb.aa
  unreachable

bb.ab:                                            ; preds = %bb.aa
  %i.cn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.co = atomicrmw add ptr %i.ay, i64 -1 release, align 8, !noalias !388
  %i.cp = icmp eq i64 %i.co, 1
  br i1 %i.cp, label %bb.ac, label %.body.i

bb.ac:                                            ; preds = %bb.ab
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCs1fJj97VvEPD_9minijinja5value9serialize12StaticKeyMapE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g) #21
          to label %.body.i unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #20
  unreachable

_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtBN_3ops5range5RangejENCNvYNtNtNtCs1fJj97VvEPD_9minijinja5value9serialize12StaticKeyMapNtNtB23_6object9ObjectExt8try_iter0EE3newCs5EKAXG1naGG_25candle_wasm_chat_template.exit.i.i: ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cl, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !381
  br label %bb.am

bb.ae:                                            ; preds = %bb.k
  call void @llvm.trap()
  unreachable

bb.af:                                            ; preds = %bb.a
  %i.cr = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !noalias !379, !nonnull !4, !noundef !4
  %i.ct = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8, !noalias !379, !nonnull !4, !align !9, !noundef !4
  br label %bb.ak

bb.ag:                                            ; preds = %bb.a
  %i.cv = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8, !noalias !379, !nonnull !4, !noundef !4 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.cy = load ptr, ptr %i.cx, align 8, !noalias !379, !nonnull !4, !align !9, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !379
  store ptr %i.cw, ptr %i.i, align 8, !noalias !389
  %i.cz = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.cy, ptr %i.cz, align 8, !noalias !389
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18
  %i.da = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 16, 33) 16, i64 noundef 8) #18 ; 4 uses
  %i.db = icmp eq ptr %i.da, null
  br i1 %i.db, label %bb.ah, label %_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxIBv_DNtNtNtNtCsf3Ta7LF998c_4core4iter6traits12double_ended19DoubleEndedIteratorp4ItemTNtNtCs1fJj97VvEPD_9minijinja5value5ValueB22_ENtNtBR_6marker4SendNtB2N_4SyncEL_EE3newCs5EKAXG1naGG_25candle_wasm_chat_template.exit.i, !prof !11

bb.ah:                                            ; preds = %bb.ag
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #22
          to label %.noexc18.i unwind label %bb.ai

.noexc18.i:                                       ; preds = %bb.ah
  unreachable

bb.ai:                                            ; preds = %bb.ah
  %i.dc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits12double_ended19DoubleEndedIteratorp4ItemTNtNtCs1fJj97VvEPD_9minijinja5value5ValueB2e_ENtNtB4_6marker4SendNtB2Z_4SyncEL_EECs5EKAXG1naGG_25candle_wasm_chat_template(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.i) #19
          to label %.body.i unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #20
  unreachable

_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxIBv_DNtNtNtNtCsf3Ta7LF998c_4core4iter6traits12double_ended19DoubleEndedIteratorp4ItemTNtNtCs1fJj97VvEPD_9minijinja5value5ValueB22_ENtNtBR_6marker4SendNtB2N_4SyncEL_EE3newCs5EKAXG1naGG_25candle_wasm_chat_template.exit.i: ; preds = %bb.ag
  store ptr %i.cw, ptr %i.da, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  store ptr %i.cy, ptr %i.de, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !379
  br label %bb.ak

bb.ak:                                            ; preds = %bb.at, %_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxIBv_DNtNtNtNtCsf3Ta7LF998c_4core4iter6traits12double_ended19DoubleEndedIteratorp4ItemTNtNtCs1fJj97VvEPD_9minijinja5value5ValueB22_ENtNtBR_6marker4SendNtB2N_4SyncEL_EE3newCs5EKAXG1naGG_25candle_wasm_chat_template.exit.i, %bb.af
  %.pre-phi.i = phi i64 [ %i.q, %_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxIBv_DNtNtNtNtCsf3Ta7LF998c_4core4iter6traits12double_ended19DoubleEndedIteratorp4ItemTNtNtCs1fJj97VvEPD_9minijinja5value5ValueB22_ENtNtBR_6marker4SendNtB2N_4SyncEL_EE3newCs5EKAXG1naGG_25candle_wasm_chat_template.exit.i ], [ %.pre26.i, %bb.at ], [ %i.q, %bb.af ]
  %i.df = phi i64 [ %i.p, %_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxIBv_DNtNtNtNtCsf3Ta7LF998c_4core4iter6traits12double_ended19DoubleEndedIteratorp4ItemTNtNtCs1fJj97VvEPD_9minijinja5value5ValueB22_ENtNtBR_6marker4SendNtB2N_4SyncEL_EE3newCs5EKAXG1naGG_25candle_wasm_chat_template.exit.i ], [ %.pre.i, %bb.at ], [ %i.p, %bb.af ]
  %.sroa.7.0.i = phi ptr [ @2, %_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxIBv_DNtNtNtNtCsf3Ta7LF998c_4core4iter6traits12double_ended19DoubleEndedIteratorp4ItemTNtNtCs1fJj97VvEPD_9minijinja5value5ValueB22_ENtNtBR_6marker4SendNtB2N_4SyncEL_EE3newCs5EKAXG1naGG_25candle_wasm_chat_template.exit.i ], [ @3, %bb.at ], [ %i.cu, %bb.af ] ; 3 uses
  %.sroa.0.0.i = phi ptr [ %i.da, %_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxIBv_DNtNtNtNtCsf3Ta7LF998c_4core4iter6traits12double_ended19DoubleEndedIteratorp4ItemTNtNtCs1fJj97VvEPD_9minijinja5value5ValueB22_ENtNtBR_6marker4SendNtB2N_4SyncEL_EE3newCs5EKAXG1naGG_25candle_wasm_chat_template.exit.i ], [ %i.dw, %bb.at ], [ %i.cs, %bb.af ] ; 3 uses
  %i.dg = icmp slt i64 %i.df, 0
  %i.dh = select i1 %i.dg, i64 %.pre-phi.i, i64 8
  switch i64 %i.dh, label %.sink.split.i [
    i64 4, label %_RNvYNtNtNtCs1fJj97VvEPD_9minijinja5value9serialize12StaticKeyMapNtNtB6_6object9ObjectExt14try_iter_pairsCs5EKAXG1naGG_25candle_wasm_chat_template.exit
    i64 6, label %_RNvYNtNtNtCs1fJj97VvEPD_9minijinja5value9serialize12StaticKeyMapNtNtB6_6object9ObjectExt14try_iter_pairsCs5EKAXG1naGG_25candle_wasm_chat_template.exit
  ]

bb.al:                                            ; preds = %.invoke.i, %bb.b
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.aq, %bb.al, %bb.ai, %bb.ac, %bb.ab, %bb.w, %bb.r, %bb.n, %bb.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.dc, %bb.ai ], [ %i.cg, %bb.w ], [ %i.di, %bb.al ], [ %i.bw, %bb.r ], [ %i.cn, %bb.ac ], [ %i.at, %bb.i ], [ %i.bn, %bb.n ], [ %i.cn, %bb.ab ], [ %i.dy, %bb.aq ] ; 3 uses
  %i.dj = load i64, ptr %i.k, align 8, !range !10, !noalias !379, !noundef !4 ; 2 uses
  %i.dk = xor i64 %i.dj, -9223372036854775808
  %i.dl = icmp slt i64 %i.dj, 0
  %i.dm = select i1 %i.dl, i64 %i.dk, i64 8
  switch i64 %i.dm, label %bb.au [
    i64 4, label %common.resume
    i64 6, label %common.resume
  ]

bb.am:                                            ; preds = %_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtBN_3ops5range5RangejENCNvYNtNtNtCs1fJj97VvEPD_9minijinja5value9serialize12StaticKeyMapNtNtB23_6object9ObjectExt8try_iter0EE3newCs5EKAXG1naGG_25candle_wasm_chat_template.exit.i.i, %bb.y, %bb.t, %_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxINtNtNtB4_3vec9into_iter8IntoIterNtNtCs1fJj97VvEPD_9minijinja5value5ValueEE3newCs5EKAXG1naGG_25candle_wasm_chat_template.exit.i.i, %_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxIBv_DNtNtNtNtCsf3Ta7LF998c_4core4iter6traits12double_ended19DoubleEndedIteratorp4ItemNtNtCs1fJj97VvEPD_9minijinja5value5ValueNtNtBR_6marker4SendNtB2H_4SyncEL_EE3newCs5EKAXG1naGG_25candle_wasm_chat_template.exit.i.i, %bb.f, %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit12.i.i, %_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxINtNtCsf3Ta7LF998c_4core6option8IntoIterNtNtCs1fJj97VvEPD_9minijinja5value5ValueEE3newCs5EKAXG1naGG_25candle_wasm_chat_template.exit.i.i
  %.sroa.12.0.i.ph.i = phi ptr [ @9, %_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtBN_3ops5range5RangejENCNvYNtNtNtCs1fJj97VvEPD_9minijinja5value9serialize12StaticKeyMapNtNtB23_6object9ObjectExt8try_iter0EE3newCs5EKAXG1naGG_25candle_wasm_chat_template.exit.i.i ], [ @8, %bb.y ], [ @7, %_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxIBv_DNtNtNtNtCsf3Ta7LF998c_4core4iter6traits12double_ended19DoubleEndedIteratorp4ItemNtNtCs1fJj97VvEPD_9minijinja5value5ValueNtNtBR_6marker4SendNtB2H_4SyncEL_EE3newCs5EKAXG1naGG_25candle_wasm_chat_template.exit.i.i ], [ @6, %bb.t ], [ %i.al, %bb.f ], [ @5, %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit12.i.i ], [ @4, %_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxINtNtCsf3Ta7LF998c_4core6option8IntoIterNtNtCs1fJj97VvEPD_9minijinja5value5ValueEE3newCs5EKAXG1naGG_25candle_wasm_chat_template.exit.i.i ], [ @10, %_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxINtNtNtB4_3vec9into_iter8IntoIterNtNtCs1fJj97VvEPD_9minijinja5value5ValueEE3newCs5EKAXG1naGG_25candle_wasm_chat_template.exit.i.i ]
  %.sroa.0.0.i.ph.i = phi ptr [ %i.cl, %_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtBN_3ops5range5RangejENCNvYNtNtNtCs1fJj97VvEPD_9minijinja5value9serialize12StaticKeyMapNtNtB23_6object9ObjectExt8try_iter0EE3newCs5EKAXG1naGG_25candle_wasm_chat_template.exit.i.i ], [ %i.ce, %bb.y ], [ %i.ar, %_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxIBv_DNtNtNtNtCsf3Ta7LF998c_4core4iter6traits12double_ended19DoubleEndedIteratorp4ItemNtNtCs1fJj97VvEPD_9minijinja5value5ValueNtNtBR_6marker4SendNtB2H_4SyncEL_EE3newCs5EKAXG1naGG_25candle_wasm_chat_template.exit.i.i ], [ %i.bu, %bb.t ], [ %i.aj, %bb.f ], [ %i.ad, %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit12.i.i ], [ %i.x, %_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxINtNtCsf3Ta7LF998c_4core6option8IntoIterNtNtCs1fJj97VvEPD_9minijinja5value5ValueEE3newCs5EKAXG1naGG_25candle_wasm_chat_template.exit.i.i ], [ %i.bl, %_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxINtNtNtB4_3vec9into_iter8IntoIterNtNtCs1fJj97VvEPD_9minijinja5value5ValueEE3newCs5EKAXG1naGG_25candle_wasm_chat_template.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !381
  %i.dn = load ptr, ptr %0, align 8, !alias.scope !379, !nonnull !4, !noundef !4 ; 2 uses
  %i.do = atomicrmw add ptr %i.dn, i64 1 monotonic, align 8
  %i.dp = icmp slt i64 %i.do, 0
  br i1 %i.dp, label %bb.as, label %bb.ao

bb.an:                                            ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !381
  %i.dq = load i64, ptr %i.k, align 8, !range !10, !noalias !379, !noundef !4 ; 2 uses
  %i.dr = xor i64 %i.dq, -9223372036854775808
  %i.ds = icmp slt i64 %i.dq, 0
  %i.dt = select i1 %i.ds, i64 %i.dr, i64 8
  switch i64 %i.dt, label %.sink.split.i [
    i64 4, label %_RNvYNtNtNtCs1fJj97VvEPD_9minijinja5value9serialize12StaticKeyMapNtNtB6_6object9ObjectExt14try_iter_pairsCs5EKAXG1naGG_25candle_wasm_chat_template.exit
    i64 6, label %_RNvYNtNtNtCs1fJj97VvEPD_9minijinja5value9serialize12StaticKeyMapNtNtB6_6object9ObjectExt14try_iter_pairsCs5EKAXG1naGG_25candle_wasm_chat_template.exit
  ]

bb.ao:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !379
  store ptr %.sroa.0.0.i.ph.i, ptr %i.j, align 8, !noalias !379
  %i.du = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %.sroa.12.0.i.ph.i, ptr %i.du, align 8, !noalias !379
  %i.dv = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.dn, ptr %i.dv, align 8, !noalias !379
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !390
  %i.dw = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 16, 33) 24, i64 noundef 8) #18, !noalias !390 ; 3 uses
  %i.dx = icmp eq ptr %i.dw, null
  br i1 %i.dx, label %bb.ap, label %bb.at, !prof !11

bb.ap:                                            ; preds = %bb.ao
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #22
          to label %.noexc19.i unwind label %bb.aq, !noalias !390

.noexc19.i:                                       ; preds = %bb.ap
  unreachable

bb.aq:                                            ; preds = %bb.ap
  %i.dy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtNtBI_6traits8iterator8Iteratorp4ItemNtNtCs1fJj97VvEPD_9minijinja5value5ValueNtNtB4_6marker4SendNtB33_4SyncEL_ENCNvYNtNtB2p_9serialize12StaticKeyMapNtNtB2p_6object9ObjectExt14try_iter_pairs0EECs5EKAXG1naGG_25candle_wasm_chat_template(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j) #19
          to label %.body.i unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.as:                                            ; preds = %bb.am
  call void @llvm.trap()
  unreachable

bb.at:                                            ; preds = %bb.ao
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dw, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !379
  %.pre.i = load i64, ptr %i.k, align 8, !range !10, !noalias !379 ; 2 uses
  %.pre26.i = xor i64 %.pre.i, -9223372036854775808
  br label %bb.ak

bb.au:                                            ; preds = %.body.i
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs1fJj97VvEPD_9minijinja5value6object10EnumeratorECs5EKAXG1naGG_25candle_wasm_chat_template(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k) #19
          to label %common.resume unwind label %bb.av

common.resume:                                    ; preds = %.body, %.body.i, %.body.i, %bb.au
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %eh.lpad-body.i, %bb.au ], [ %eh.lpad-body.i, %.body.i ], [ %.pn44, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.av:                                            ; preds = %bb.au
  %i.ea = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #20
  unreachable

.sink.split.i:                                    ; preds = %bb.an, %bb.ak
  %.sroa.7.1.ph.i = phi ptr [ undef, %bb.an ], [ %.sroa.7.0.i, %bb.ak ]
  %.sroa.0.1.ph.i = phi ptr [ null, %bb.an ], [ %.sroa.0.0.i, %bb.ak ]
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs1fJj97VvEPD_9minijinja5value6object10EnumeratorECs5EKAXG1naGG_25candle_wasm_chat_template(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k)
  br label %_RNvYNtNtNtCs1fJj97VvEPD_9minijinja5value9serialize12StaticKeyMapNtNtB6_6object9ObjectExt14try_iter_pairsCs5EKAXG1naGG_25candle_wasm_chat_template.exit

_RNvYNtNtNtCs1fJj97VvEPD_9minijinja5value9serialize12StaticKeyMapNtNtB6_6object9ObjectExt14try_iter_pairsCs5EKAXG1naGG_25candle_wasm_chat_template.exit: ; preds = %bb.ak, %bb.ak, %bb.an, %bb.an, %.sink.split.i
  %.sroa.7.1.i = phi ptr [ undef, %bb.an ], [ %.sroa.7.0.i, %bb.ak ], [ undef, %bb.an ], [ %.sroa.7.0.i, %bb.ak ], [ %.sroa.7.1.ph.i, %.sink.split.i ]
  %.sroa.0.1.i = phi ptr [ null, %bb.an ], [ %.sroa.0.0.i, %bb.ak ], [ null, %bb.an ], [ %.sroa.0.0.i, %bb.ak ], [ %.sroa.0.1.ph.i, %.sink.split.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !379
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store i64 1, ptr %i.n, align 8
  %.sroa.06.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 7 uses
  store ptr %.sroa.0.1.i, ptr %.sroa.06.sroa.2.0..sroa_idx, align 8
  %.sroa.06.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %.sroa.7.1.i, ptr %.sroa.06.sroa.3.0..sroa_idx, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 10 uses
  store ptr null, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 40 ; 6 uses
  store ptr null, ptr %.sroa.47.0..sroa_idx, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.n, i64 32 ; 2 uses
  %.sroa.7.0..sroa_idx28.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %.sroa.8.0..sroa_idx59 = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.ec = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %.sroa.8.0..sroa_idx50 = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %.sroa.8.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.8, i64 23
  br label %.peel.begin

.peel.begin:                                      ; preds = %bb.bz, %_RNvYNtNtNtCs1fJj97VvEPD_9minijinja5value9serialize12StaticKeyMapNtNtB6_6object9ObjectExt14try_iter_pairsCs5EKAXG1naGG_25candle_wasm_chat_template.exit
  %.pre.i46 = phi ptr [ %.pre.i46.pre, %bb.bz ], [ null, %_RNvYNtNtNtCs1fJj97VvEPD_9minijinja5value9serialize12StaticKeyMapNtNtB6_6object9ObjectExt14try_iter_pairsCs5EKAXG1naGG_25candle_wasm_chat_template.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  call void @llvm.experimental.noalias.scope.decl(metadata !391)
  %i.ed = icmp eq ptr %.pre.i46, null
  call void @llvm.experimental.noalias.scope.decl(metadata !392)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !393
  br i1 %i.ed, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCs1fJj97VvEPD_9minijinja5value5ValueBY_EEECs5EKAXG1naGG_25candle_wasm_chat_template.exit.i.peel, label %bb.aw

bb.aw:                                            ; preds = %.peel.begin
  invoke void @_RNvXNtNtCsgCecv3eZDcN_5alloc5boxed4iterINtB4_3BoxDNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iteratorp4ItemTNtNtCs1fJj97VvEPD_9minijinja5value5ValueB1O_ENtNtBU_6marker4SendNtB2z_4SyncEL_EBM_4nextCs5EKAXG1naGG_25candle_wasm_chat_template(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sroa.2.0..sroa_idx)
          to label %.noexc.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !394

.noexc.peel:                                      ; preds = %bb.aw
  %i.ee = load i8, ptr %i.b, align 8, !range !7, !noalias !393, !noundef !4 ; 2 uses
  %.not3.i.i.peel = icmp eq i8 %i.ee, -1
  br i1 %.not3.i.i.peel, label %bb.ax, label %_RNvXsi_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtBb_6option8IntoIterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemTNtNtCs1fJj97VvEPD_9minijinja5value5ValueB2O_ENtNtBb_6marker4SendNtB3z_4SyncEL_EEB1z_EB29_4nextCs5EKAXG1naGG_25candle_wasm_chat_template.exit.thread

bb.ax:                                            ; preds = %.noexc.peel
  %.val.i.i.peel = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !395, !noundef !4 ; 4 uses
  %.val4.i.i.peel = load ptr, ptr %i.eb, align 8, !alias.scope !395 ; 5 uses
  %i.ef = icmp eq ptr %.val.i.i.peel, null
  br i1 %i.ef, label %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtNtB6_6traits8iterator8Iteratorp4ItemTNtNtCs1fJj97VvEPD_9minijinja5value5ValueB2l_ENtNtB8_6marker4SendNtB36_4SyncEL_EB2k_NvYB16_B1G_4nextECs5EKAXG1naGG_25candle_wasm_chat_template.exit.thread39.i.peel, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4.i.i.peel) ]
  %i.eg = load ptr, ptr %.val4.i.i.peel, align 8, !invariant.load !4, !noalias !394 ; 2 uses
  %.not.i.i.i.i.peel = icmp eq ptr %i.eg, null
  br i1 %.not.i.i.i.i.peel, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  invoke void %i.eg(ptr noundef nonnull %.val.i.i.peel)
          to label %bb.ba unwind label %.loopexit.split-lp85, !noalias !394

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.eh = getelementptr inbounds nuw i8, ptr %.val4.i.i.peel, i64 8
  %i.ei = load i64, ptr %i.eh, align 8, !range !5, !invariant.load !4, !noalias !394 ; 2 uses
  %i.ej = icmp eq i64 %i.ei, 0
  br i1 %i.ej, label %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtNtB6_6traits8iterator8Iteratorp4ItemTNtNtCs1fJj97VvEPD_9minijinja5value5ValueB2l_ENtNtB8_6marker4SendNtB36_4SyncEL_EB2k_NvYB16_B1G_4nextECs5EKAXG1naGG_25candle_wasm_chat_template.exit.thread39.i.peel, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ek = getelementptr inbounds nuw i8, ptr %.val4.i.i.peel, i64 16
  %i.el = load i64, ptr %i.ek, align 8, !range !6, !invariant.load !4, !noalias !394
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.peel, i64 noundef range(i64 1, -9223372036854775808) %i.ei, i64 noundef range(i64 1, 536870913) %i.el) #18, !noalias !394
  br label %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtNtB6_6traits8iterator8Iteratorp4ItemTNtNtCs1fJj97VvEPD_9minijinja5value5ValueB2l_ENtNtB8_6marker4SendNtB36_4SyncEL_EB2k_NvYB16_B1G_4nextECs5EKAXG1naGG_25candle_wasm_chat_template.exit.thread39.i.peel

_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtNtB6_6traits8iterator8Iteratorp4ItemTNtNtCs1fJj97VvEPD_9minijinja5value5ValueB2l_ENtNtB8_6marker4SendNtB36_4SyncEL_EB2k_NvYB16_B1G_4nextECs5EKAXG1naGG_25candle_wasm_chat_template.exit.thread39.i.peel: ; preds = %bb.bb, %bb.ba, %bb.ax
  store ptr null, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !395
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCs1fJj97VvEPD_9minijinja5value5ValueBY_EEECs5EKAXG1naGG_25candle_wasm_chat_template.exit.i.peel

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCs1fJj97VvEPD_9minijinja5value5ValueBY_EEECs5EKAXG1naGG_25candle_wasm_chat_template.exit.i.peel: ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtNtB6_6traits8iterator8Iteratorp4ItemTNtNtCs1fJj97VvEPD_9minijinja5value5ValueB2l_ENtNtB8_6marker4SendNtB36_4SyncEL_EB2k_NvYB16_B1G_4nextECs5EKAXG1naGG_25candle_wasm_chat_template.exit.thread39.i.peel, %.peel.begin
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !393
  %i.em = load i64, ptr %i.n, align 8, !range !8, !alias.scope !396, !noundef !4
  %i.en = trunc nuw i64 %i.em to i1
  br i1 %i.en, label %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemTNtNtCs1fJj97VvEPD_9minijinja5value5ValueB2B_ENtNtBb_6marker4SendNtB3m_4SyncEL_EEEINtB5_8FuseImplBY_E4nextCs5EKAXG1naGG_25candle_wasm_chat_template.exit.i.peel, label %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemTNtNtCs1fJj97VvEPD_9minijinja5value5ValueB2B_ENtNtBb_6marker4SendNtB3m_4SyncEL_EEEINtB5_8FuseImplBY_E4nextCs5EKAXG1naGG_25candle_wasm_chat_template.exit.thread.i

_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemTNtNtCs1fJj97VvEPD_9minijinja5value5ValueB2B_ENtNtBb_6marker4SendNtB3m_4SyncEL_EEEINtB5_8FuseImplBY_E4nextCs5EKAXG1naGG_25candle_wasm_chat_template.exit.i.peel: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCs1fJj97VvEPD_9minijinja5value5ValueBY_EEECs5EKAXG1naGG_25candle_wasm_chat_template.exit.i.peel
  %2 = load <2 x ptr>, ptr %.sroa.06.sroa.2.0..sroa_idx, align 8, !alias.scope !397
  %i.eo = load ptr, ptr %.sroa.06.sroa.2.0..sroa_idx, align 8, !alias.scope !397, !noundef !4
  store ptr null, ptr %.sroa.06.sroa.2.0..sroa_idx, align 8, !alias.scope !397
  %.not5.i.peel = icmp eq ptr %i.eo, null
  br i1 %.not5.i.peel, label %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemTNtNtCs1fJj97VvEPD_9minijinja5value5ValueB2B_ENtNtBb_6marker4SendNtB3m_4SyncEL_EEEINtB5_8FuseImplBY_E4nextCs5EKAXG1naGG_25candle_wasm_chat_template.exit.thread.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemTNtNtCs1fJj97VvEPD_9minijinja5value5ValueB2j_ENtNtB4_6marker4SendNtB34_4SyncEL_EEECs5EKAXG1naGG_25candle_wasm_chat_template.exit.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemTNtNtCs1fJj97VvEPD_9minijinja5value5ValueB2j_ENtNtB4_6marker4SendNtB34_4SyncEL_EEECs5EKAXG1naGG_25candle_wasm_chat_template.exit.i: ; preds = %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemTNtNtCs1fJj97VvEPD_9minijinja5value5ValueB2B_ENtNtBb_6marker4SendNtB3m_4SyncEL_EEEINtB5_8FuseImplBY_E4nextCs5EKAXG1naGG_25candle_wasm_chat_template.exit.i.peel, %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemTNtNtCs1fJj97VvEPD_9minijinja5value5ValueB2B_ENtNtBb_6marker4SendNtB3m_4SyncEL_EEEINtB5_8FuseImplBY_E4nextCs5EKAXG1naGG_25candle_wasm_chat_template.exit.i
  %3 = phi <2 x ptr> [ %5, %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemTNtNtCs1fJj97VvEPD_9minijinja5value5ValueB2B_ENtNtBb_6marker4SendNtB3m_4SyncEL_EEEINtB5_8FuseImplBY_E4nextCs5EKAXG1naGG_25candle_wasm_chat_template.exit.i ], [ %2, %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemTNtNtCs1fJj97VvEPD_9minijinja5value5ValueB2B_ENtNtBb_6marker4SendNtB3m_4SyncEL_EEEINtB5_8FuseImplBY_E4nextCs5EKAXG1naGG_25candle_wasm_chat_template.exit.i.peel ] ; 2 uses
  %4 = extractelement <2 x ptr> %3, i64 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %4) ]
  store <2 x ptr> %3, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !391
  call void @llvm.experimental.noalias.scope.decl(metadata !398)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !399
  invoke void @_RNvXNtNtCsgCecv3eZDcN_5alloc5boxed4iterINtB4_3BoxDNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iteratorp4ItemTNtNtCs1fJj97VvEPD_9minijinja5value5ValueB1O_ENtNtBU_6marker4SendNtB2z_4SyncEL_EBM_4nextCs5EKAXG1naGG_25candle_wasm_chat_template(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sroa.2.0..sroa_idx)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !400

.noexc:                                           ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemTNtNtCs1fJj97VvEPD_9minijinja5value5ValueB2j_ENtNtB4_6marker4SendNtB34_4SyncEL_EEECs5EKAXG1naGG_25candle_wasm_chat_template.exit.i
  %i.ep = load i8, ptr %i.b, align 8, !range !7, !noalias !399, !noundef !4 ; 2 uses
  %.not3.i.i = icmp eq i8 %i.ep, -1
  br i1 %.not3.i.i, label %bb.bc, label %_RNvXsi_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtBb_6option8IntoIterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemTNtNtCs1fJj97VvEPD_9minijinja5value5ValueB2O_ENtNtBb_6marker4SendNtB3z_4SyncEL_EEB1z_EB29_4nextCs5EKAXG1naGG_25candle_wasm_chat_template.exit.thread

bb.bc:                                            ; preds = %.noexc
  %.val.i.i = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !401, !noundef !4 ; 4 uses
  %.val4.i.i = load ptr, ptr %i.eb, align 8, !alias.scope !401 ; 5 uses
  %i.eq = icmp eq ptr %.val.i.i, null
  br i1 %i.eq, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCs1fJj97VvEPD_9minijinja5value5ValueBY_EEECs5EKAXG1naGG_25candle_wasm_chat_template.exit.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4.i.i) ]
  %i.er = load ptr, ptr %.val4.i.i, align 8, !invariant.load !4, !noalias !400 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.er, null
  br i1 %.not.i.i.i.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  invoke void %i.er(ptr noundef nonnull %.val.i.i)
          to label %bb.bf unwind label %.loopexit, !noalias !400

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.es = getelementptr inbounds nuw i8, ptr %.val4.i.i, i64 8
  %i.et = load i64, ptr %i.es, align 8, !range !5, !invariant.load !4, !noalias !400 ; 2 uses
  %i.eu = icmp eq i64 %i.et, 0
  br i1 %i.eu, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCs1fJj97VvEPD_9minijinja5value5ValueBY_EEECs5EKAXG1naGG_25candle_wasm_chat_template.exit.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ev = getelementptr inbounds nuw i8, ptr %.val4.i.i, i64 16
  %i.ew = load i64, ptr %i.ev, align 8, !range !6, !invariant.load !4, !noalias !400
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.et, i64 noundef range(i64 1, 536870913) %i.ew) #18, !noalias !400
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCs1fJj97VvEPD_9minijinja5value5ValueBY_EEECs5EKAXG1naGG_25candle_wasm_chat_template.exit.i

.loopexit:                                        ; preds = %bb.be
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

.loopexit.split-lp85:                             ; preds = %bb.az
  %lpad.loopexit.split-lp88 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.bh:                                            ; preds = %.loopexit.split-lp85, %.loopexit
  %.val.i.i.lcssa = phi ptr [ %.val.i.i, %.loopexit ], [ %.val.i.i.peel, %.loopexit.split-lp85 ]
  %.val4.i.i.lcssa = phi ptr [ %.val4.i.i, %.loopexit ], [ %.val4.i.i.peel, %.loopexit.split-lp85 ] ; 2 uses
  %lpad.phi89 = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp88, %.loopexit.split-lp85 ]
  %i.ex = getelementptr inbounds nuw i8, ptr %.val4.i.i.lcssa, i64 8
  %i.ey = load i64, ptr %i.ex, align 8, !range !5, !invariant.load !4, !noalias !400 ; 2 uses
  %i.ez = icmp eq i64 %i.ey, 0
  br i1 %i.ez, label %.body.i.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.fa = getelementptr inbounds nuw i8, ptr %.val4.i.i.lcssa, i64 16
  %i.fb = load i64, ptr %i.fa, align 8, !range !6, !invariant.load !4, !noalias !400
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.lcssa, i64 noundef range(i64 1, -9223372036854775808) %i.ey, i64 noundef range(i64 1, 536870913) %i.fb) #18, !noalias !400
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.bi, %bb.bh
  store ptr null, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !401
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCs1fJj97VvEPD_9minijinja5value5ValueBY_EEECs5EKAXG1naGG_25candle_wasm_chat_template(ptr noalias nofree noundef align 8 dereferenceable(48) %i.b) #19
          to label %.body unwind label %bb.bj, !noalias !400

bb.bj:                                            ; preds = %.body.i.i
  %i.fc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #20, !noalias !400
  unreachable

_RNvXsi_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtBb_6option8IntoIterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemTNtNtCs1fJj97VvEPD_9minijinja5value5ValueB2O_ENtNtBb_6marker4SendNtB3z_4SyncEL_EEB1z_EB29_4nextCs5EKAXG1naGG_25candle_wasm_chat_template.exit.thread: ; preds = %.noexc, %.noexc.peel
  %.lcssa = phi i8 [ %i.ee, %.noexc.peel ], [ %i.ep, %.noexc ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(47) %.sroa.8, ptr noundef nonnull align 1 dereferenceable(47) %.sroa.7.0..sroa_idx28.i, i64 47, i1 false), !noalias !391
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !399
  br label %bb.bt

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCs1fJj97VvEPD_9minijinja5value5ValueBY_EEECs5EKAXG1naGG_25candle_wasm_chat_template.exit.i: ; preds = %bb.bc, %bb.bf, %bb.bg
  store ptr null, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !401
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !399
  %i.fd = load i64, ptr %i.n, align 8, !range !8, !alias.scope !396, !noundef !4
  %i.fe = trunc nuw i64 %i.fd to i1
  br i1 %i.fe, label %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemTNtNtCs1fJj97VvEPD_9minijinja5value5ValueB2B_ENtNtBb_6marker4SendNtB3m_4SyncEL_EEEINtB5_8FuseImplBY_E4nextCs5EKAXG1naGG_25candle_wasm_chat_template.exit.i, label %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemTNtNtCs1fJj97VvEPD_9minijinja5value5ValueB2B_ENtNtBb_6marker4SendNtB3m_4SyncEL_EEEINtB5_8FuseImplBY_E4nextCs5EKAXG1naGG_25candle_wasm_chat_template.exit.thread.i

_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemTNtNtCs1fJj97VvEPD_9minijinja5value5ValueB2B_ENtNtBb_6marker4SendNtB3m_4SyncEL_EEEINtB5_8FuseImplBY_E4nextCs5EKAXG1naGG_25candle_wasm_chat_template.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCs1fJj97VvEPD_9minijinja5value5ValueBY_EEECs5EKAXG1naGG_25candle_wasm_chat_template.exit.i
  %5 = load <2 x ptr>, ptr %.sroa.06.sroa.2.0..sroa_idx, align 8, !alias.scope !397
  %i.ff = load ptr, ptr %.sroa.06.sroa.2.0..sroa_idx, align 8, !alias.scope !397, !noundef !4
  store ptr null, ptr %.sroa.06.sroa.2.0..sroa_idx, align 8, !alias.scope !397
  %.not5.i = icmp eq ptr %i.ff, null
  br i1 %.not5.i, label %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemTNtNtCs1fJj97VvEPD_9minijinja5value5ValueB2B_ENtNtBb_6marker4SendNtB3m_4SyncEL_EEEINtB5_8FuseImplBY_E4nextCs5EKAXG1naGG_25candle_wasm_chat_template.exit.thread.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemTNtNtCs1fJj97VvEPD_9minijinja5value5ValueB2j_ENtNtB4_6marker4SendNtB34_4SyncEL_EEECs5EKAXG1naGG_25candle_wasm_chat_template.exit.i, !llvm.loop !375

_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemTNtNtCs1fJj97VvEPD_9minijinja5value5ValueB2B_ENtNtBb_6marker4SendNtB3m_4SyncEL_EEEINtB5_8FuseImplBY_E4nextCs5EKAXG1naGG_25candle_wasm_chat_template.exit.thread.i: ; preds = %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemTNtNtCs1fJj97VvEPD_9minijinja5value5ValueB2B_ENtNtBb_6marker4SendNtB3m_4SyncEL_EEEINtB5_8FuseImplBY_E4nextCs5EKAXG1naGG_25candle_wasm_chat_template.exit.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCs1fJj97VvEPD_9minijinja5value5ValueBY_EEECs5EKAXG1naGG_25candle_wasm_chat_template.exit.i, %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemTNtNtCs1fJj97VvEPD_9minijinja5value5ValueB2B_ENtNtBb_6marker4SendNtB3m_4SyncEL_EEEINtB5_8FuseImplBY_E4nextCs5EKAXG1naGG_25candle_wasm_chat_template.exit.i.peel, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCs1fJj97VvEPD_9minijinja5value5ValueBY_EEECs5EKAXG1naGG_25candle_wasm_chat_template.exit.i.peel
  call void @llvm.experimental.noalias.scope.decl(metadata !403)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !404
  %i.fg = load ptr, ptr %.sroa.47.0..sroa_idx, align 8, !alias.scope !405, !noundef !4
  %.not.i7.i = icmp eq ptr %i.fg, null
  br i1 %.not.i7.i, label %.loopexit61, label %bb.bk

bb.bk:                                            ; preds = %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemTNtNtCs1fJj97VvEPD_9minijinja5value5ValueB2B_ENtNtBb_6marker4SendNtB3m_4SyncEL_EEEINtB5_8FuseImplBY_E4nextCs5EKAXG1naGG_25candle_wasm_chat_template.exit.thread.i
  invoke void @_RNvXNtNtCsgCecv3eZDcN_5alloc5boxed4iterINtB4_3BoxDNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iteratorp4ItemTNtNtCs1fJj97VvEPD_9minijinja5value5ValueB1O_ENtNtBU_6marker4SendNtB2z_4SyncEL_EBM_4nextCs5EKAXG1naGG_25candle_wasm_chat_template(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sroa.47.0..sroa_idx)
          to label %.noexc48 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !406

.noexc48:                                         ; preds = %bb.bk
  %i.fh = load i8, ptr %i.a, align 8, !noalias !405 ; 2 uses
  %.not3.i8.i = icmp eq i8 %i.fh, -1
  br i1 %.not3.i8.i, label %bb.bl, label %_RNvXsi_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtBb_6option8IntoIterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemTNtNtCs1fJj97VvEPD_9minijinja5value5ValueB2O_ENtNtBb_6marker4SendNtB3z_4SyncEL_EEB1z_EB29_4nextCs5EKAXG1naGG_25candle_wasm_chat_template.exit.thread57

_RNvXsi_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtBb_6option8IntoIterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemTNtNtCs1fJj97VvEPD_9minijinja5value5ValueB2O_ENtNtBb_6marker4SendNtB3z_4SyncEL_EEB1z_EB29_4nextCs5EKAXG1naGG_25candle_wasm_chat_template.exit.thread57: ; preds = %.noexc48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(47) %.sroa.8, ptr noundef nonnull align 1 dereferenceable(47) %.sroa.8.0..sroa_idx59, i64 47, i1 false), !noalias !405
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !404
  br label %bb.bt

bb.bl:                                            ; preds = %.noexc48
  %.val.i9.i = load ptr, ptr %.sroa.47.0..sroa_idx, align 8, !alias.scope !405, !noundef !4 ; 4 uses
  %.val4.i10.i = load ptr, ptr %i.ec, align 8, !alias.scope !405 ; 6 uses
  %i.fi = icmp eq ptr %.val.i9.i, null
  br i1 %i.fi, label %.loopexit61.loopexit, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4.i10.i) ]
  %i.fj = load ptr, ptr %.val4.i10.i, align 8, !invariant.load !4, !noalias !406 ; 2 uses
  %.not.i.i.i11.i = icmp eq ptr %i.fj, null
  br i1 %.not.i.i.i11.i, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  invoke void %i.fj(ptr noundef nonnull %.val.i9.i)
          to label %bb.bo unwind label %bb.bq, !noalias !406

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.fk = getelementptr inbounds nuw i8, ptr %.val4.i10.i, i64 8
  %i.fl = load i64, ptr %i.fk, align 8, !range !5, !invariant.load !4, !noalias !406 ; 2 uses
  %i.fm = icmp eq i64 %i.fl, 0
  br i1 %i.fm, label %.loopexit61.loopexit, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.fn = getelementptr inbounds nuw i8, ptr %.val4.i10.i, i64 16
  %i.fo = load i64, ptr %i.fn, align 8, !range !6, !invariant.load !4, !noalias !406
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i9.i, i64 noundef range(i64 1, -9223372036854775808) %i.fl, i64 noundef range(i64 1, 536870913) %i.fo) #18, !noalias !406
  br label %.loopexit61.loopexit

bb.bq:                                            ; preds = %bb.bn
  %i.fp = landingpad { ptr, i32 }
          cleanup
  %i.fq = getelementptr inbounds nuw i8, ptr %.val4.i10.i, i64 8
  %i.fr = load i64, ptr %i.fq, align 8, !range !5, !invariant.load !4, !noalias !406 ; 2 uses
  %i.fs = icmp eq i64 %i.fr, 0
  br i1 %i.fs, label %.body.i12.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ft = getelementptr inbounds nuw i8, ptr %.val4.i10.i, i64 16
  %i.fu = load i64, ptr %i.ft, align 8, !range !6, !invariant.load !4, !noalias !406
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i9.i, i64 noundef range(i64 1, -9223372036854775808) %i.fr, i64 noundef range(i64 1, 536870913) %i.fu) #18, !noalias !406
  br label %.body.i12.i

.body.i12.i:                                      ; preds = %bb.br, %bb.bq
  store ptr null, ptr %.sroa.47.0..sroa_idx, align 8, !alias.scope !405
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCs1fJj97VvEPD_9minijinja5value5ValueBY_EEECs5EKAXG1naGG_25candle_wasm_chat_template(ptr noalias nofree noundef align 8 dereferenceable(48) %i.a) #19
          to label %.body unwind label %bb.bs, !noalias !406

bb.bs:                                            ; preds = %.body.i12.i
  %i.fv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #20, !noalias !406
  unreachable

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body.i12.i, %.body.i.i, %bb.bw
  %.pn44 = phi { ptr, i32 } [ %.pn, %bb.bw ], [ %lpad.phi89, %.body.i.i ], [ %i.fp, %.body.i12.i ], [ %lpad.loopexit.split-lp147, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtB4_6option8IntoIterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtNtBI_6traits8iterator8Iteratorp4ItemTNtNtCs1fJj97VvEPD_9minijinja5value5ValueB2U_ENtNtB4_6marker4SendNtB3F_4SyncEL_EEEECs5EKAXG1naGG_25candle_wasm_chat_template(ptr noalias nofree noundef align 8 dereferenceable(56) %i.n) #19
          to label %common.resume unwind label %bb.ca

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemTNtNtCs1fJj97VvEPD_9minijinja5value5ValueB2j_ENtNtB4_6marker4SendNtB34_4SyncEL_EEECs5EKAXG1naGG_25candle_wasm_chat_template.exit.i, %bb.aw, %bb.bk, %bb.by
  %lpad.loopexit.split-lp147 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bt:                                            ; preds = %_RNvXsi_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtBb_6option8IntoIterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemTNtNtCs1fJj97VvEPD_9minijinja5value5ValueB2O_ENtNtBb_6marker4SendNtB3z_4SyncEL_EEB1z_EB29_4nextCs5EKAXG1naGG_25candle_wasm_chat_template.exit.thread57, %_RNvXsi_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtBb_6option8IntoIterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemTNtNtCs1fJj97VvEPD_9minijinja5value5ValueB2O_ENtNtBb_6marker4SendNtB3z_4SyncEL_EEB1z_EB29_4nextCs5EKAXG1naGG_25candle_wasm_chat_template.exit.thread
  %.sroa.0.153 = phi i8 [ %.lcssa, %_RNvXsi_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtBb_6option8IntoIterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemTNtNtCs1fJj97VvEPD_9minijinja5value5ValueB2O_ENtNtBb_6marker4SendNtB3z_4SyncEL_EEB1z_EB29_4nextCs5EKAXG1naGG_25candle_wasm_chat_template.exit.thread ], [ %i.fh, %_RNvXsi_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtBb_6option8IntoIterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemTNtNtCs1fJj97VvEPD_9minijinja5value5ValueB2O_ENtNtBb_6marker4SendNtB3z_4SyncEL_EEB1z_EB29_4nextCs5EKAXG1naGG_25candle_wasm_chat_template.exit.thread57 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store i8 %.sroa.0.153, ptr %i.m, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.8.0..sroa_idx50, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.8, i64 23, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 1 dereferenceable(24) %.sroa.8.24..sroa_idx, i64 24, i1 false)
  %i.fw = invoke noundef nonnull align 8 ptr @_RNvMs7_NtNtCsf3Ta7LF998c_4core3fmt8buildersNtB5_8DebugMap5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1, ptr noundef nonnull %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1)
          to label %bb.bv unwind label %bb.bu     ; 0 uses

.loopexit61.loopexit:                             ; preds = %bb.bp, %bb.bo, %bb.bl
  store ptr null, ptr %.sroa.47.0..sroa_idx, align 8, !alias.scope !405
  br label %.loopexit61

.loopexit61:                                      ; preds = %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemTNtNtCs1fJj97VvEPD_9minijinja5value5ValueB2B_ENtNtBb_6marker4SendNtB3m_4SyncEL_EEEINtB5_8FuseImplBY_E4nextCs5EKAXG1naGG_25candle_wasm_chat_template.exit.thread.i, %.loopexit61.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !404
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtB4_6option8IntoIterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtNtBI_6traits8iterator8Iteratorp4ItemTNtNtCs1fJj97VvEPD_9minijinja5value5ValueB2U_ENtNtB4_6marker4SendNtB3F_4SyncEL_EEEECs5EKAXG1naGG_25candle_wasm_chat_template(ptr noalias nofree noundef align 8 dereferenceable(56) %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.fx = call noundef zeroext i1 @_RNvMs7_NtNtCsf3Ta7LF998c_4core3fmt8buildersNtB5_8DebugMap6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  ret i1 %i.fx

bb.bu:                                            ; preds = %bb.bt
  %i.fy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1fJj97VvEPD_9minijinja5value5ValueECs5EKAXG1naGG_25candle_wasm_chat_template(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l) #19
          to label %bb.bw unwind label %bb.ca

bb.bv:                                            ; preds = %bb.bt
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1fJj97VvEPD_9minijinja5value5ValueECs5EKAXG1naGG_25candle_wasm_chat_template(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %bb.by unwind label %bb.bx

bb.bw:                                            ; preds = %bb.bx, %bb.bu
  %.pn = phi { ptr, i32 } [ %i.fz, %bb.bx ], [ %i.fy, %bb.bu ]
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1fJj97VvEPD_9minijinja5value5ValueECs5EKAXG1naGG_25candle_wasm_chat_template(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m) #19
          to label %.body unwind label %bb.ca

bb.bx:                                            ; preds = %bb.bv
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.by:                                            ; preds = %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1fJj97VvEPD_9minijinja5value5ValueECs5EKAXG1naGG_25candle_wasm_chat_template(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %bb.bz unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bz:                                            ; preds = %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  %.pre.i46.pre = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !401
  br label %.peel.begin

bb.ca:                                            ; preds = %bb.bw, %bb.bu, %.body
  %i.ga = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #20
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: write, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvYNtNtNtCs1fJj97VvEPD_9minijinja5value9serialize12StaticKeyMapNtNtB6_6object6Object7is_trueCs5EKAXG1naGG_25candle_wasm_chat_template(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #5 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.c = icmp ult i64 %i.b, 230584300921369396
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp ne i64 %i.b, 0
  ret i1 %i.d
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs1fJj97VvEPD_9minijinja5value5ValueENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5EKAXG1naGG_25candle_wasm_chat_template(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #7

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #7

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5EKAXG1naGG_25candle_wasm_chat_template(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs1fJj97VvEPD_9minijinja5value5ValueENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5EKAXG1naGG_25candle_wasm_chat_template(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5EKAXG1naGG_25candle_wasm_chat_template(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs1fJj97VvEPD_9minijinja5value5ValueENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5EKAXG1naGG_25candle_wasm_chat_template(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs0_NvNtNtCs1fJj97VvEPD_9minijinja5value6object1__NtB7_9DynObjectNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #7

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvNtNtCs1fJj97VvEPD_9minijinja5value9serialize16to_invalid_value(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNvCs5EKAXG1naGG_25candle_wasm_chat_template1__NtB5_7MessageNtNtCseZbltJ5Yqe_10serde_core3ser9Serialize9serializeNtNtNtCs1fJj97VvEPD_9minijinja5value9serialize15ValueSerializerEB5_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #0
end_hunk_0
