Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/xet_client-75c402fe18a1f54a.xet_client.d88642a81e22a8c9-cgu.04?download=true
inline.NumInlined: 1023
inline.NumDeleted: 449
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumUnrolled: 12
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RINvXs5_NtCsiWcPrHiWZDL_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCsiAynQAjgDuT_10xet_client9cas_typessr_1__NtB2v_23FileChunkHashesResponseNtB1l_11Deserialize11deserialize9___VisitorEB2x_:bb.a
  %.sroa.18.0 = phi i64 [ undef, %bb.i ], [ undef, %bb.k ], [ undef, %bb.m ], [ undef, %bb.o ], [ undef, %bb.ar ], [ %i.cb, %bb.ai ], [ undef, %_RINvYINtNtCsiWcPrHiWZDL_10serde_json2de9SeqAccessNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de9SeqAccess12next_elementyECsiAynQAjgDuT_10xet_client.exit65.i ], [ undef, %_RINvYINtNtCsiWcPrHiWZDL_10serde_json2de9SeqAccessNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de9SeqAccess12next_elementyECsiAynQAjgDuT_10xet_client.exit.i ]
  %.sroa.17.0 = phi i64 [ undef, %bb.i ], [ undef, %bb.k ], [ undef, %bb.m ], [ undef, %bb.o ], [ undef, %bb.ar ], [ %.sroa.1279.0.copyload.i, %bb.ai ], [ undef, %_RINvYINtNtCsiWcPrHiWZDL_10serde_json2de9SeqAccessNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de9SeqAccess12next_elementyECsiAynQAjgDuT_10xet_client.exit65.i ], [ undef, %_RINvYINtNtCsiWcPrHiWZDL_10serde_json2de9SeqAccessNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de9SeqAccess12next_elementyECsiAynQAjgDuT_10xet_client.exit.i ]
  %.sroa.16.0 = phi ptr [ undef, %bb.i ], [ undef, %bb.k ], [ undef, %bb.m ], [ undef, %bb.o ], [ undef, %bb.ar ], [ %i.ec, %bb.ai ], [ undef, %_RINvYINtNtCsiWcPrHiWZDL_10serde_json2de9SeqAccessNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de9SeqAccess12next_elementyECsiAynQAjgDuT_10xet_client.exit65.i ], [ undef, %_RINvYINtNtCsiWcPrHiWZDL_10serde_json2de9SeqAccessNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de9SeqAccess12next_elementyECsiAynQAjgDuT_10xet_client.exit.i ]
  %.sroa.1555.0 = phi i64 [ undef, %bb.i ], [ undef, %bb.k ], [ undef, %bb.m ], [ undef, %bb.o ], [ undef, %bb.ar ], [ %i.dz, %bb.ai ], [ undef, %_RINvYINtNtCsiWcPrHiWZDL_10serde_json2de9SeqAccessNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de9SeqAccess12next_elementyECsiAynQAjgDuT_10xet_client.exit65.i ], [ undef, %_RINvYINtNtCsiWcPrHiWZDL_10serde_json2de9SeqAccessNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de9SeqAccess12next_elementyECsiAynQAjgDuT_10xet_client.exit.i ]
  %.sroa.10.262 = phi ptr [ %i.bs, %bb.i ], [ %i.bz, %bb.k ], [ %i.cf, %bb.m ], [ %i.cm, %bb.o ], [ %.sroa.10.060, %bb.ar ], [ %.sroa.046.i.sroa.4.0.copyload, %bb.ai ], [ %i.dc, %_RINvYINtNtCsiWcPrHiWZDL_10serde_json2de9SeqAccessNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de9SeqAccess12next_elementyECsiAynQAjgDuT_10xet_client.exit65.i ], [ %i.co, %_RINvYINtNtCsiWcPrHiWZDL_10serde_json2de9SeqAccessNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de9SeqAccess12next_elementyECsiAynQAjgDuT_10xet_client.exit.i ]
  %.sroa.052.2 = phi i64 [ -1, %bb.i ], [ -1, %bb.k ], [ -1, %bb.m ], [ -1, %bb.o ], [ -1, %bb.ar ], [ %.sroa.046.i.sroa.0.0.copyload, %bb.ai ], [ -1, %_RINvYINtNtCsiWcPrHiWZDL_10serde_json2de9SeqAccessNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de9SeqAccess12next_elementyECsiAynQAjgDuT_10xet_client.exit65.i ], [ -1, %_RINvYINtNtCsiWcPrHiWZDL_10serde_json2de9SeqAccessNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de9SeqAccess12next_elementyECsiAynQAjgDuT_10xet_client.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  %i.em = load i8, ptr %i.be, align 8, !noundef !5
  %i.en = add i8 %i.em, 1
  store i8 %i.en, ptr %i.be, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  store i64 %.sroa.052.2, ptr %i.an, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %.sroa.10.262, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store i64 %.sroa.15.sroa.0.0, ptr %.sroa.15.0..sroa_idx, align 8
  %.sroa.15.sroa.6.0..sroa.15.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.15.sroa.6.0..sroa.15.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.15.sroa.6, i64 24, i1 false)
  %.sroa.1555.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  store i64 %.sroa.1555.0, ptr %.sroa.1555.0..sroa_idx, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 56
  store ptr %.sroa.16.0, ptr %.sroa.16.0..sroa_idx, align 8
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  store i64 %.sroa.17.0, ptr %.sroa.17.0..sroa_idx, align 8
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 72
  store i64 %.sroa.18.0, ptr %.sroa.18.0..sroa_idx, align 8
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 80
  store i64 %.sroa.19.0, ptr %.sroa.19.0..sroa_idx, align 8
  %i.eo = invoke noundef align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE7end_seqCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1)
          to label %bb.au unwind label %bb.at     ; 5 uses

bb.as:                                            ; preds = %bb.bb, %bb.g
  %.sink = phi ptr [ %i.ey, %bb.bb ], [ %i.bm, %bb.g ]
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.ep, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  br label %bb.fu

bb.at:                                            ; preds = %_RINvXs0_NvXNvNtCsiAynQAjgDuT_10xet_client9cas_typessr_1__NtBb_23FileChunkHashesResponseNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1p_7Visitor9visit_seqINtNtCsiWcPrHiWZDL_10serde_json2de9SeqAccessNtNtB33_4read9SliceReadEEBd_.exit
  %i.eq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsiAynQAjgDuT_10xet_client9cas_types23FileChunkHashesResponseNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorEEB11_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.an) #14
          to label %common.resume unwind label %bb.ay

bb.au:                                            ; preds = %_RINvXs0_NvXNvNtCsiAynQAjgDuT_10xet_client9cas_typessr_1__NtBb_23FileChunkHashesResponseNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1p_7Visitor9visit_seqINtNtCsiWcPrHiWZDL_10serde_json2de9SeqAccessNtNtB33_4read9SliceReadEEBd_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ao, ptr noundef nonnull align 8 dereferenceable(88) %i.an, i64 88, i1 false)
  %i.er = getelementptr inbounds nuw i8, ptr %i.ao, i64 88
  store ptr %i.eo, ptr %i.er, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  %i.es = load i64, ptr %i.ao, align 8, !range !8, !noundef !5 ; 2 uses
  %i.et = icmp eq i64 %i.es, -1
  br i1 %i.et, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %.not37 = icmp eq ptr %i.eo, null
  br i1 %.not37, label %.thread499, label %bb.ax

.thread499:                                       ; preds = %bb.av
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5.0..sroa_idx, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15.sroa.6)
  br label %.thread70

bb.aw:                                            ; preds = %bb.au
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.ev = load ptr, ptr %i.eu, align 8, !nonnull !5, !align !12, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15.sroa.6)
  %.not85 = icmp eq ptr %i.eo, null
  br i1 %.not85, label %.thread70, label %bb.az

bb.ax:                                            ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15.sroa.6)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsiAynQAjgDuT_10xet_client9cas_types23FileChunkHashesResponseEBF_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.ao)
  br label %.thread70

bb.ay:                                            ; preds = %bb.fl, %bb.at
  %i.ew = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15
  unreachable

.thread70:                                        ; preds = %.thread499, %bb.ax, %bb.az, %bb.aw
  %.sroa.09.076 = phi i64 [ -1, %bb.aw ], [ -1, %bb.az ], [ -1, %bb.ax ], [ %i.es, %.thread499 ]
  %.sroa.10.075 = phi ptr [ %i.ev, %bb.aw ], [ %i.ev, %bb.az ], [ %i.eo, %bb.ax ], [ %.sroa.4.0.copyload, %.thread499 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  br label %bb.ba

bb.az:                                            ; preds = %bb.aw
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorECsiAynQAjgDuT_10xet_client(ptr nonnull %i.eo)
  br label %.thread70

bb.ba:                                            ; preds = %.thread77, %.thread70
  %.sroa.10.1 = phi ptr [ %.sroa.10.075, %.thread70 ], [ %.sroa.10.282, %.thread77 ] ; 2 uses
  %.sroa.09.1 = phi i64 [ %.sroa.09.076, %.thread70 ], [ %.sroa.09.283, %.thread77 ] ; 2 uses
  %i.ex = icmp eq i64 %.sroa.09.1, -1
  br i1 %i.ex, label %bb.fr, label %bb.fs, !prof !18

bb.bb:                                            ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  store i64 24, ptr %i.am, align 8
  %i.ey = call noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  br label %bb.as

bb.bc:                                            ; preds = %bb.f
  %i.ez = add i64 %i.ax, 1
  store i64 %i.ez, ptr %i.ar, align 8, !alias.scope !3014
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.39.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  store ptr %1, ptr %i.y, align 8, !noalias !3015
  %i.fa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i8 1, ptr %i.fa, align 8, !noalias !3015
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !3015
  store i64 -1, ptr %i.x, align 8, !noalias !3015
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !3015
  store i64 -1, ptr %i.w, align 8, !noalias !3015
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !3015
  store i64 -1, ptr %i.v, align 8, !noalias !3015
  %i.fb = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.fc = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.4158.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.5159.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.681.0..sroa_idx82.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 3 uses
  %.sroa.784.0..sroa_idx85.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 3 uses
  %.sroa.4155.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.5156.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.662.0..sroa_idx63.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %.sroa.765.0..sroa_idx66.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %.sroa.4152.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.5153.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.sroa.644.0..sroa_idx45.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %.sroa.7.0..sroa_idx47.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  br label %.outer

.outer:                                           ; preds = %bb.cj, %bb.bc
  %.sroa.425.0.i.ph = phi i64 [ %i.it, %bb.cj ], [ undef, %bb.bc ]
  %.not895 = phi i1 [ false, %bb.cj ], [ true, %bb.bc ]
  %.sroa.023.0.i.ph = phi i1 [ true, %bb.cj ], [ false, %bb.bc ]
  %.sroa.4.0.i.ph = phi i64 [ %.sroa.4.0.i.ph901, %bb.cj ], [ undef, %bb.bc ]
  %.sroa.015.0.i.ph = phi i64 [ %.sroa.015.0.i.ph902, %bb.cj ], [ 0, %bb.bc ]
  br label %.outer900

.outer900:                                        ; preds = %.outer, %bb.cc
  %.sroa.4.0.i.ph901 = phi i64 [ %.sroa.4.0.i.ph, %.outer ], [ %i.ic, %bb.cc ] ; 2 uses
  %.sroa.015.0.i.ph902 = phi i64 [ %.sroa.015.0.i.ph, %.outer ], [ 1, %bb.cc ] ; 3 uses
  br label %bb.bd

bb.bd:                                            ; preds = %.backedge, %.outer900
  call void @llvm.experimental.noalias.scope.decl(metadata !3016)
  call void @llvm.experimental.noalias.scope.decl(metadata !3017)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !3018
  invoke fastcc void @_RINvNvXs9_NtCsiWcPrHiWZDL_10serde_json2deINtB8_9MapAccesspENtNtCs6SYjS1KFWza_10serde_core2de9MapAccess13next_key_seed12has_next_keyNtNtBa_4read9SliceReadECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.m, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.y)
          to label %.noexc.i45 unwind label %.loopexit.i42.loopexit.loopexit.split-lp, !noalias !3019

.noexc.i45:                                       ; preds = %bb.bd
  %i.fd = load i8, ptr %i.m, align 8, !range !7, !noalias !3018, !noundef !5
  %i.fe = trunc nuw i8 %i.fd to i1
  br i1 %i.fe, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %.noexc.i45
  %i.ff = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.fg = load ptr, ptr %i.ff, align 8, !noalias !3018, !nonnull !5, !align !12, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !3018
  br label %.loopexit

bb.bf:                                            ; preds = %.noexc.i45
  %i.fh = load i8, ptr %i.fb, align 1, !range !7, !noalias !3018, !noundef !5
  %i.fi = trunc nuw i8 %i.fh to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !3018
  br i1 %i.fi, label %bb.bg, label %bb.bp

bb.bg:                                            ; preds = %bb.bf
  %i.fj = load ptr, ptr %i.y, align 8, !alias.scope !3020, !noalias !3015, !nonnull !5, !align !12, !noundef !5 ; 25 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3021)
  call void @llvm.experimental.noalias.scope.decl(metadata !3022)
  call void @llvm.experimental.noalias.scope.decl(metadata !3023)
  call void @llvm.experimental.noalias.scope.decl(metadata !3024)
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 24 ; 6 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fj, i64 40 ; 17 uses
  %i.fm = load i64, ptr %i.fl, align 8, !alias.scope !3025, !noalias !3026, !noundef !5
  %i.fn = add i64 %i.fm, 1
  store i64 %i.fn, ptr %i.fl, align 8, !alias.scope !3025, !noalias !3026
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  store i64 0, ptr %i.fo, align 8, !alias.scope !3027, !noalias !3026
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !3028
  invoke void @_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read9parse_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fk, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.fj)
          to label %.noexc191.i unwind label %.loopexit.i42.loopexit.loopexit.split-lp, !noalias !3019

.noexc191.i:                                      ; preds = %bb.bg
  %i.fp = load i64, ptr %i.l, align 8, !range !4, !noalias !3028, !noundef !5
  %i.fq = icmp eq i64 %i.fp, 2
  %i.fr = load ptr, ptr %i.fc, align 8, !noalias !3028, !nonnull !5, !noundef !5 ; 10 uses
  br i1 %i.fq, label %bb.bn, label %bb.bh

bb.bh:                                            ; preds = %.noexc191.i
  %.sroa.4.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !3028 ; 4 uses
  switch i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, label %bb.bv [
    i64 11, label %bb.bi
    i64 8, label %bb.bj
    i64 7, label %bb.bk
    i64 10, label %bb.bl
    i64 15, label %bb.bm
  ]

bb.bi:                                            ; preds = %bb.bh
  %i.fs = load i64, ptr %i.fr, align 1
  %i.ft = xor i64 %i.fs, 8460086032786026356
  %i.fu = getelementptr i8, ptr %i.fr, i64 3
  %i.fv = load i64, ptr %i.fu, align 1
  %i.fw = xor i64 %i.fv, 8316862587409230945
  %i.fx = or i64 %i.ft, %i.fw
  %i.fy = icmp ne i64 %i.fx, 0
  %i.fz = zext i1 %i.fy to i32
  %i.ga = icmp eq i32 %i.fz, 0
  br i1 %i.ga, label %bb.bq, label %bb.bv

bb.bj:                                            ; preds = %bb.bh
  %i.gb = load i64, ptr %i.fr, align 1
  %i.gc = icmp ne i64 %i.gb, 7312272751894227302
  %i.gd = zext i1 %i.gc to i32
  %i.ge = icmp eq i32 %i.gd, 0
  br i1 %i.ge, label %bb.br, label %bb.bv

bb.bk:                                            ; preds = %bb.bh
  %i.gf = load i32, ptr %i.fr, align 1
  %i.gg = xor i32 %i.gf, 1684957559
  %i.gh = getelementptr i8, ptr %i.fr, i64 3
  %i.gi = load i32, ptr %i.gh, align 1
  %i.gj = xor i32 %i.gi, 1937207140
  %i.gk = or i32 %i.gg, %i.gj
  %i.gl = icmp ne i32 %i.gk, 0
  %i.gm = zext i1 %i.gl to i32
  %i.gn = icmp eq i32 %i.gm, 0
  br i1 %i.gn, label %bb.bs, label %bb.bv

bb.bl:                                            ; preds = %bb.bh
  %i.go = load i64, ptr %i.fr, align 1
  %i.gp = xor i64 %i.go, 7453001439912354152
  %i.gq = getelementptr i8, ptr %i.fr, i64 8
  %i.gr = load i16, ptr %i.gq, align 1
  %i.gs = zext i16 %i.gr to i64
  %i.gt = xor i64 %i.gs, 29541
  %i.gu = or i64 %i.gp, %i.gt
  %i.gv = icmp ne i64 %i.gu, 0
  %i.gw = zext i1 %i.gv to i32
  %i.gx = icmp eq i32 %i.gw, 0
  br i1 %i.gx, label %bb.bt, label %bb.bv

bb.bm:                                            ; preds = %bb.bh
  %i.gy = load i64, ptr %i.fr, align 1
  %i.gz = xor i64 %i.gy, 7379555243990737255
  %i.ha = getelementptr i8, ptr %i.fr, i64 7
  %i.hb = load i64, ptr %i.ha, align 1
  %i.hc = xor i64 %i.hb, 7957695015157983590
  %i.hd = or i64 %i.gz, %i.hc
  %i.he = icmp ne i64 %i.hd, 0
  %i.hf = zext i1 %i.he to i32
  %i.hg = icmp eq i32 %i.hf, 0
  br i1 %i.hg, label %bb.bu, label %bb.bv

bb.bn:                                            ; preds = %.noexc191.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !3028
  br label %.loopexit

bb.bo:                                            ; preds = %bb.eg, %.body222.i, %.body.i50, %.loopexit.split-lp.i, %.loopexit.i42.loopexit.loopexit.split-lp
  %.sroa.0147.1.ph.i = phi i8 [ %.sroa.0147.5.i, %bb.eg ], [ 1, %.body222.i ], [ 1, %.body.i50 ], [ 1, %.loopexit.i42.loopexit.loopexit.split-lp ], [ %.sroa.0147.2.ph.i, %.loopexit.split-lp.i ] ; 2 uses
  %.sroa.0149.1.ph.i = phi i8 [ %.sroa.0149.4.i, %bb.eg ], [ 1, %.body222.i ], [ 1, %.body.i50 ], [ 1, %.loopexit.i42.loopexit.loopexit.split-lp ], [ %.sroa.0149.2.ph.i, %.loopexit.split-lp.i ] ; 2 uses
  %.pn178.ph.i = phi { ptr, i32 } [ %.pn.i47, %bb.eg ], [ %eh.lpad-body223.i, %.body222.i ], [ %eh.lpad-body.i, %.body.i50 ], [ %lpad.loopexit.split-lp904, %.loopexit.i42.loopexit.loopexit.split-lp ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  %.pr.i = load i64, ptr %i.v, align 8, !noalias !3015
  %.not180.i = icmp eq i64 %.pr.i, -1
  br i1 %.not180.i, label %.body237.i, label %bb.fi

.loopexit.i42.loopexit.loopexit.split-lp:         ; preds = %bb.ci, %bb.cg, %.loopexit.i.i.i196.i, %bb.bd, %bb.bg, %bb.bv, %bb.co, %bb.cy, %bb.di, %bb.cb, %bb.bz, %.loopexit.i.i.i.i
  %lpad.loopexit.split-lp904 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

.loopexit.split-lp.i:                             ; preds = %.invoke, %bb.em, %bb.dy, %bb.dt, %bb.dp, %bb.dh, %.loopexit.i.i.i226.i, %bb.cx, %.loopexit.i.i.i215.i, %bb.cn, %.loopexit.i.i.i206.i
  %.sroa.0147.2.ph.i = phi i8 [ 1, %bb.dp ], [ 1, %bb.dt ], [ 1, %bb.dy ], [ %.sroa.0147.8.i, %bb.em ], [ 1, %bb.dh ], [ 1, %.loopexit.i.i.i226.i ], [ 1, %.invoke ], [ 1, %bb.cx ], [ 1, %bb.cn ], [ 1, %.loopexit.i.i.i215.i ], [ 1, %.loopexit.i.i.i206.i ]
  %.sroa.0149.2.ph.i = phi i8 [ 1, %bb.dp ], [ 1, %bb.dt ], [ 1, %bb.dy ], [ %.sroa.0149.4.i, %bb.em ], [ 1, %bb.dh ], [ 1, %.loopexit.i.i.i226.i ], [ 1, %.invoke ], [ 1, %bb.cx ], [ 1, %bb.cn ], [ 1, %.loopexit.i.i.i215.i ], [ 1, %.loopexit.i.i.i206.i ]
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.bp:                                            ; preds = %bb.bf
  %i.hh = trunc nuw i64 %.sroa.015.0.i.ph902 to i1
  br i1 %i.hh, label %bb.ds, label %bb.dp

bb.bq:                                            ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !3028
  %.not896 = icmp eq i64 %.sroa.015.0.i.ph902, 0
  br i1 %.not896, label %bb.bw, label %.invoke, !prof !13

bb.br:                                            ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !3028
  br i1 %.not895, label %bb.cd, label %.invoke, !prof !13

bb.bs:                                            ; preds = %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !3028
  %i.hi = load i64, ptr %i.x, align 8, !range !8, !noalias !3015, !noundef !5
  %.not177.i = icmp eq i64 %i.hi, -1
  br i1 %.not177.i, label %bb.ck, label %.invoke, !prof !13

bb.bt:                                            ; preds = %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !3028
  %i.hj = load i64, ptr %i.w, align 8, !range !8, !noalias !3015, !noundef !5
  %.not176.i = icmp eq i64 %i.hj, -1
  br i1 %.not176.i, label %bb.cu, label %.invoke, !prof !13

bb.bu:                                            ; preds = %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !3028
  %i.hk = load i64, ptr %i.v, align 8, !range !8, !noalias !3015, !noundef !5
  %.not175.i = icmp eq i64 %i.hk, -1
  br i1 %.not175.i, label %bb.de, label %.invoke, !prof !13

bb.bv:                                            ; preds = %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !3028
  %i.hl = invoke fastcc noundef align 8 ptr @_RINvYINtNtCsiWcPrHiWZDL_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de9MapAccess10next_valueNtNtB1a_11ignored_any10IgnoredAnyECsiAynQAjgDuT_10xet_client(ptr nonnull %i.fj)
          to label %bb.do unwind label %.loopexit.i42.loopexit.loopexit.split-lp, !noalias !3019 ; 2 uses

bb.bw:                                            ; preds = %bb.bq
  call void @llvm.experimental.noalias.scope.decl(metadata !3029)
  call void @llvm.experimental.noalias.scope.decl(metadata !3030)
  %i.hm = getelementptr inbounds nuw i8, ptr %i.fj, i64 32
  %i.hn = load i64, ptr %i.hm, align 8, !alias.scope !3031, !noalias !3019, !noundef !5 ; 2 uses
  %.promoted.i.i.i.i.i = load i64, ptr %i.fl, align 8, !alias.scope !3032, !noalias !3019 ; 2 uses
  %i.ho = icmp ult i64 %.promoted.i.i.i.i.i, %i.hn
  br i1 %i.ho, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.bw
  %i.hp = load ptr, ptr %i.fk, align 8, !alias.scope !3031, !noalias !3019, !nonnull !5, !noundef !5
  br label %bb.bx

bb.bx:                                            ; preds = %bb.by, %.lr.ph.i.i.i.i.i
  %i.hq = phi i64 [ %.promoted.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.ht, %bb.by ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3033)
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hp, i64 %i.hq
  %i.hs = load i8, ptr %i.hr, align 1, !noalias !3034, !noundef !5
  switch i8 %i.hs, label %bb.bz [
    i8 32, label %bb.by
    i8 10, label %bb.by
    i8 9, label %bb.by
    i8 13, label %bb.by
    i8 58, label %bb.cb
  ], !prof !15

bb.by:                                            ; preds = %bb.bx, %bb.bx, %bb.bx, %bb.bx
  %i.ht = add i64 %i.hq, 1                        ; 3 uses
  store i64 %i.ht, ptr %i.fl, align 8, !alias.scope !3035, !noalias !3019
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.ht, %i.hn
  br i1 %exitcond.not.i.i.i.i.i, label %.loopexit.i.i.i.i, label %bb.bx

.loopexit.i.i.i.i:                                ; preds = %bb.by, %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !3036
  store i64 3, ptr %i.j, align 8, !noalias !3036
  %i.hu = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.fj, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.j)
          to label %.noexc192.i unwind label %.loopexit.i42.loopexit.loopexit.split-lp, !noalias !3019

.noexc192.i:                                      ; preds = %.loopexit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !3036
  br label %bb.ca

bb.bz:                                            ; preds = %bb.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !3036
  store i64 6, ptr %i.k, align 8, !noalias !3036
  %i.hv = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.fj, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.k)
          to label %.noexc193.i unwind label %.loopexit.i42.loopexit.loopexit.split-lp, !noalias !3019

.noexc193.i:                                      ; preds = %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !3036
  br label %bb.ca

bb.ca:                                            ; preds = %.noexc193.i, %.noexc192.i
  %.sroa.0.0.i.ph.i.i.i = phi ptr [ %i.hu, %.noexc192.i ], [ %i.hv, %.noexc193.i ]
  %i.hw = insertvalue { i64, ptr } { i64 1, ptr poison }, ptr %.sroa.0.0.i.ph.i.i.i, 1
  br label %_RINvYINtNtCsiWcPrHiWZDL_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de9MapAccess10next_valueyECsiAynQAjgDuT_10xet_client.exit.i

bb.cb:                                            ; preds = %bb.bx
  %i.hx = add i64 %i.hq, 1
  store i64 %i.hx, ptr %i.fl, align 8, !alias.scope !3037, !noalias !3019
  %i.hy = invoke fastcc { i64, ptr } @_RINvXs3_NtCs6SYjS1KFWza_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDatayENtB6_15DeserializeSeed11deserializeQINtNtCsiWcPrHiWZDL_10serde_json2de12DeserializerNtNtB20_4read9SliceReadEECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef align 8 dereferenceable(56) %i.fj) #17
          to label %_RINvYINtNtCsiWcPrHiWZDL_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de9MapAccess10next_valueyECsiAynQAjgDuT_10xet_client.exit.i unwind label %.loopexit.i42.loopexit.loopexit.split-lp, !noalias !3019

_RINvYINtNtCsiWcPrHiWZDL_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de9MapAccess10next_valueyECsiAynQAjgDuT_10xet_client.exit.i: ; preds = %bb.cb, %bb.ca
  %.merged.i.i.i = phi { i64, ptr } [ %i.hw, %bb.ca ], [ %i.hy, %bb.cb ] ; 2 uses
  %i.hz = extractvalue { i64, ptr } %.merged.i.i.i, 0
  %i.ia = extractvalue { i64, ptr } %.merged.i.i.i, 1 ; 2 uses
  %i.ib = trunc nuw i64 %i.hz to i1
  br i1 %i.ib, label %.loopexit, label %bb.cc

bb.cc:                                            ; preds = %_RINvYINtNtCsiWcPrHiWZDL_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de9MapAccess10next_valueyECsiAynQAjgDuT_10xet_client.exit.i
  %i.ic = ptrtoint ptr %i.ia to i64
  br label %.outer900

bb.cd:                                            ; preds = %bb.br
  call void @llvm.experimental.noalias.scope.decl(metadata !3038)
end_hunk_0
begin_hunk_1_@_RINvXs5_NtCsiWcPrHiWZDL_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCsiAynQAjgDuT_10xet_client9cas_typessr_1__NtB2v_23FileChunkHashesResponseNtB1l_11Deserialize11deserialize9___VisitorEB2x_:bb.a
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !noalias !3019
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsiAynQAjgDuT_10xet_client9cas_types11ChunkWindowEEB1c_.exit.i.i: ; preds = %bb.cq
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsiAynQAjgDuT_10xet_client9cas_types11ChunkWindowENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsiAynQAjgDuT_10xet_client9cas_types11ChunkWindowEEEB1y_.exit.i unwind label %bb.ct, !noalias !3019

bb.ct:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsiAynQAjgDuT_10xet_client9cas_types11ChunkWindowEEB1c_.exit.i.i
  %i.jl = landingpad { ptr, i32 }
          cleanup
  br label %.body.i50

.body.i50:                                        ; preds = %bb.ct, %bb.cr
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.jl, %bb.ct ], [ %i.jj, %bb.cr ]
  store i64 %.pr268.i, ptr %i.x, align 8, !noalias !3015
  store ptr %.pre669.i, ptr %.sroa.644.0..sroa_idx45.i, align 8, !noalias !3015
  store i64 %.sroa.5153.0.copyload.i, ptr %.sroa.7.0..sroa_idx47.i, align 8, !noalias !3015
  br label %bb.bo

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsiAynQAjgDuT_10xet_client9cas_types11ChunkWindowEEEB1y_.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsiAynQAjgDuT_10xet_client9cas_types11ChunkWindowEEB1c_.exit.i.i, %bb.cp
  store i64 %.pr268.i, ptr %i.x, align 8, !noalias !3015
  store ptr %.pre669.i, ptr %.sroa.644.0..sroa_idx45.i, align 8, !noalias !3015
  store i64 %.sroa.5153.0.copyload.i, ptr %.sroa.7.0..sroa_idx47.i, align 8, !noalias !3015
  br label %.backedge

bb.cu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !3015
  call void @llvm.experimental.noalias.scope.decl(metadata !3058)
  call void @llvm.experimental.noalias.scope.decl(metadata !3059)
  %i.jm = getelementptr inbounds nuw i8, ptr %i.fj, i64 32
  %i.jn = load i64, ptr %i.jm, align 8, !alias.scope !3060, !noalias !3061, !noundef !5 ; 2 uses
  %.promoted.i.i.i.i214.i = load i64, ptr %i.fl, align 8, !alias.scope !3062, !noalias !3061 ; 2 uses
  %i.jo = icmp ult i64 %.promoted.i.i.i.i214.i, %i.jn
  br i1 %i.jo, label %.lr.ph.i.i.i.i217.i, label %.loopexit.i.i.i215.i

.lr.ph.i.i.i.i217.i:                              ; preds = %bb.cu
  %i.jp = load ptr, ptr %i.fk, align 8, !alias.scope !3060, !noalias !3061, !nonnull !5, !noundef !5
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cw, %.lr.ph.i.i.i.i217.i
  %i.jq = phi i64 [ %.promoted.i.i.i.i214.i, %.lr.ph.i.i.i.i217.i ], [ %i.jt, %bb.cw ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3063)
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jp, i64 %i.jq
  %i.js = load i8, ptr %i.jr, align 1, !noalias !3064, !noundef !5
  switch i8 %i.js, label %bb.cx [
    i8 32, label %bb.cw
    i8 10, label %bb.cw
    i8 9, label %bb.cw
    i8 13, label %bb.cw
    i8 58, label %bb.cy
  ], !prof !15

bb.cw:                                            ; preds = %bb.cv, %bb.cv, %bb.cv, %bb.cv
  %i.jt = add i64 %i.jq, 1                        ; 3 uses
  store i64 %i.jt, ptr %i.fl, align 8, !alias.scope !3065, !noalias !3061
  %exitcond.not.i.i.i.i218.i = icmp eq i64 %i.jt, %i.jn
  br i1 %exitcond.not.i.i.i.i218.i, label %.loopexit.i.i.i215.i, label %bb.cv

.loopexit.i.i.i215.i:                             ; preds = %bb.cu, %bb.cw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3066
  store i64 3, ptr %i.d, align 8, !noalias !3066
  %i.ju = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.fj, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
          to label %.noexc219.i unwind label %.loopexit.split-lp.i, !noalias !3019

.noexc219.i:                                      ; preds = %.loopexit.i.i.i215.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3066
  br label %.loopexit274.i

bb.cx:                                            ; preds = %bb.cv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3066
  store i64 6, ptr %i.e, align 8, !noalias !3066
  %i.jv = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.fj, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e)
          to label %.noexc220.i unwind label %.loopexit.split-lp.i, !noalias !3019

.noexc220.i:                                      ; preds = %bb.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3066
  br label %.loopexit274.i

bb.cy:                                            ; preds = %bb.cv
  %i.jw = add i64 %i.jq, 1
  store i64 %i.jw, ptr %i.fl, align 8, !alias.scope !3067, !noalias !3061
  invoke void @_RINvXsh_NtNtCs6SYjS1KFWza_10serde_core2de5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtree17MerkleHashSubtreeEENtB8_11Deserialize11deserializeQINtNtCsiWcPrHiWZDL_10serde_json2de12DeserializerNtNtB40_4read9SliceReadEECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.t, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.fj)
          to label %_RINvYINtNtCsiWcPrHiWZDL_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de9MapAccess10next_valueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtree17MerkleHashSubtreeEEECsiAynQAjgDuT_10xet_client.exit.i unwind label %.loopexit.i42.loopexit.loopexit.split-lp, !noalias !3019

_RINvYINtNtCsiWcPrHiWZDL_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de9MapAccess10next_valueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtree17MerkleHashSubtreeEEECsiAynQAjgDuT_10xet_client.exit.i: ; preds = %bb.cy
  %.pr269.i = load i64, ptr %i.t, align 8, !noalias !3015 ; 3 uses
  %i.jx = icmp eq i64 %.pr269.i, -1
  %.pre668.i = load ptr, ptr %.sroa.4155.0..sroa_idx.i, align 8, !noalias !3015 ; 3 uses
  br i1 %i.jx, label %.loopexit274.i, label %bb.cz

.loopexit274.i:                                   ; preds = %_RINvYINtNtCsiWcPrHiWZDL_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de9MapAccess10next_valueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtree17MerkleHashSubtreeEEECsiAynQAjgDuT_10xet_client.exit.i, %.noexc220.i, %.noexc219.i
  %i.jy = phi ptr [ %i.jv, %.noexc220.i ], [ %i.ju, %.noexc219.i ], [ %.pre668.i, %_RINvYINtNtCsiWcPrHiWZDL_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de9MapAccess10next_valueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtree17MerkleHashSubtreeEEECsiAynQAjgDuT_10xet_client.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !3015
  br label %.loopexit

bb.cz:                                            ; preds = %_RINvYINtNtCsiWcPrHiWZDL_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de9MapAccess10next_valueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtree17MerkleHashSubtreeEEECsiAynQAjgDuT_10xet_client.exit.i
  %.sroa.5156.0.copyload.i = load i64, ptr %.sroa.5156.0..sroa_idx.i, align 8, !noalias !3015 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !3015
  %i.jz = load i64, ptr %i.w, align 8, !range !8, !alias.scope !3068, !noalias !3015, !noundef !5
  %i.ka = icmp eq i64 %i.jz, -1
  br i1 %i.ka, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_NtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtree17MerkleHashSubtreeEEEECsiAynQAjgDuT_10xet_client.exit.i, label %bb.da

bb.da:                                            ; preds = %bb.cz
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtree17MerkleHashSubtreeEENtNtNtBK_3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtree17MerkleHashSubtreeEEECsiAynQAjgDuT_10xet_client.exit.i.i unwind label %bb.db, !noalias !3019

bb.db:                                            ; preds = %bb.da
  %i.kb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtree17MerkleHashSubtreeEENtNtNtBR_3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %.body222.i unwind label %bb.dc, !noalias !3019

bb.dc:                                            ; preds = %bb.db
  %i.kc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !noalias !3019
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtree17MerkleHashSubtreeEEECsiAynQAjgDuT_10xet_client.exit.i.i: ; preds = %bb.da
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtree17MerkleHashSubtreeEENtNtNtBR_3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_NtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtree17MerkleHashSubtreeEEEECsiAynQAjgDuT_10xet_client.exit.i unwind label %bb.dd, !noalias !3019

bb.dd:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtree17MerkleHashSubtreeEEECsiAynQAjgDuT_10xet_client.exit.i.i
  %i.kd = landingpad { ptr, i32 }
          cleanup
  br label %.body222.i

.body222.i:                                       ; preds = %bb.dd, %bb.db
  %eh.lpad-body223.i = phi { ptr, i32 } [ %i.kd, %bb.dd ], [ %i.kb, %bb.db ]
  store i64 %.pr269.i, ptr %i.w, align 8, !noalias !3015
  store ptr %.pre668.i, ptr %.sroa.662.0..sroa_idx63.i, align 8, !noalias !3015
  store i64 %.sroa.5156.0.copyload.i, ptr %.sroa.765.0..sroa_idx66.i, align 8, !noalias !3015
  br label %bb.bo

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_NtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtree17MerkleHashSubtreeEEEECsiAynQAjgDuT_10xet_client.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtree17MerkleHashSubtreeEEECsiAynQAjgDuT_10xet_client.exit.i.i, %bb.cz
  store i64 %.pr269.i, ptr %i.w, align 8, !noalias !3015
  store ptr %.pre668.i, ptr %.sroa.662.0..sroa_idx63.i, align 8, !noalias !3015
  store i64 %.sroa.5156.0.copyload.i, ptr %.sroa.765.0..sroa_idx66.i, align 8, !noalias !3015
  br label %.backedge

bb.de:                                            ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !3015
  call void @llvm.experimental.noalias.scope.decl(metadata !3069)
  call void @llvm.experimental.noalias.scope.decl(metadata !3070)
  %i.ke = getelementptr inbounds nuw i8, ptr %i.fj, i64 32
  %i.kf = load i64, ptr %i.ke, align 8, !alias.scope !3071, !noalias !3072, !noundef !5 ; 2 uses
  %.promoted.i.i.i.i225.i = load i64, ptr %i.fl, align 8, !alias.scope !3073, !noalias !3072 ; 2 uses
  %i.kg = icmp ult i64 %.promoted.i.i.i.i225.i, %i.kf
  br i1 %i.kg, label %.lr.ph.i.i.i.i228.i, label %.loopexit.i.i.i226.i

.lr.ph.i.i.i.i228.i:                              ; preds = %bb.de
  %i.kh = load ptr, ptr %i.fk, align 8, !alias.scope !3071, !noalias !3072, !nonnull !5, !noundef !5
  br label %bb.df

bb.df:                                            ; preds = %bb.dg, %.lr.ph.i.i.i.i228.i
  %i.ki = phi i64 [ %.promoted.i.i.i.i225.i, %.lr.ph.i.i.i.i228.i ], [ %i.kl, %bb.dg ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3074)
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.ki
  %i.kk = load i8, ptr %i.kj, align 1, !noalias !3075, !noundef !5
  switch i8 %i.kk, label %bb.dh [
    i8 32, label %bb.dg
    i8 10, label %bb.dg
    i8 9, label %bb.dg
    i8 13, label %bb.dg
    i8 58, label %bb.di
  ], !prof !15

bb.dg:                                            ; preds = %bb.df, %bb.df, %bb.df, %bb.df
  %i.kl = add i64 %i.ki, 1                        ; 3 uses
  store i64 %i.kl, ptr %i.fl, align 8, !alias.scope !3076, !noalias !3072
  %exitcond.not.i.i.i.i229.i = icmp eq i64 %i.kl, %i.kf
  br i1 %exitcond.not.i.i.i.i229.i, label %.loopexit.i.i.i226.i, label %bb.df

.loopexit.i.i.i226.i:                             ; preds = %bb.de, %bb.dg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3077
  store i64 3, ptr %i.b, align 8, !noalias !3077
  %i.km = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.fj, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %.noexc230.i unwind label %.loopexit.split-lp.i, !noalias !3019

.noexc230.i:                                      ; preds = %.loopexit.i.i.i226.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3077
  br label %.loopexit272.i

bb.dh:                                            ; preds = %bb.df
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3077
  store i64 6, ptr %i.c, align 8, !noalias !3077
  %i.kn = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.fj, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
          to label %.noexc231.i unwind label %.loopexit.split-lp.i, !noalias !3019

.noexc231.i:                                      ; preds = %bb.dh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3077
  br label %.loopexit272.i

bb.di:                                            ; preds = %bb.df
  %i.ko = add i64 %i.ki, 1
  store i64 %i.ko, ptr %i.fl, align 8, !alias.scope !3078, !noalias !3072
  invoke void @_RINvXsh_NtNtCs6SYjS1KFWza_10serde_core2de5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsiAynQAjgDuT_10xet_client9cas_types3key13HexMerkleHashENtB8_11Deserialize11deserializeQINtNtCsiWcPrHiWZDL_10serde_json2de12DeserializerNtNtB2R_4read9SliceReadEEB1m_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.s, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.fj)
          to label %_RINvYINtNtCsiWcPrHiWZDL_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de9MapAccess10next_valueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsiAynQAjgDuT_10xet_client9cas_types3key13HexMerkleHashEEB2E_.exit.i unwind label %.loopexit.i42.loopexit.loopexit.split-lp, !noalias !3019

.invoke:                                          ; preds = %bb.br, %bb.bu, %bb.bt, %bb.bs, %bb.bq
  %.sroa.4.0.copyload.i.i.i.i.i.i.i1052 = phi i64 [ 11, %bb.bq ], [ %.sroa.4.0.copyload.i.i.i.i.i.i.i, %bb.bs ], [ %.sroa.4.0.copyload.i.i.i.i.i.i.i, %bb.bu ], [ %.sroa.4.0.copyload.i.i.i.i.i.i.i, %bb.bt ], [ 8, %bb.br ]
  %i.kp = phi ptr [ @23, %bb.bq ], [ @25, %bb.bs ], [ @27, %bb.bu ], [ @26, %bb.bt ], [ @24, %bb.br ]
  %i.kq = invoke noundef nonnull align 8 ptr @_RNvYNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorNtNtCs6SYjS1KFWza_10serde_core2de5Error15duplicate_fieldCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.kp, i64 noundef %.sroa.4.0.copyload.i.i.i.i.i.i.i1052)
          to label %.loopexit unwind label %.loopexit.split-lp.i, !noalias !3019

_RINvYINtNtCsiWcPrHiWZDL_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de9MapAccess10next_valueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsiAynQAjgDuT_10xet_client9cas_types3key13HexMerkleHashEEB2E_.exit.i: ; preds = %bb.di
  %.pr270.i = load i64, ptr %i.s, align 8, !noalias !3015 ; 3 uses
  %i.kr = icmp eq i64 %.pr270.i, -1
  %.pre.i = load ptr, ptr %.sroa.4158.0..sroa_idx.i, align 8, !noalias !3015 ; 3 uses
  br i1 %i.kr, label %.loopexit272.i, label %bb.dj

.loopexit272.i:                                   ; preds = %_RINvYINtNtCsiWcPrHiWZDL_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de9MapAccess10next_valueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsiAynQAjgDuT_10xet_client9cas_types3key13HexMerkleHashEEB2E_.exit.i, %.noexc231.i, %.noexc230.i
  %i.ks = phi ptr [ %i.kn, %.noexc231.i ], [ %i.km, %.noexc230.i ], [ %.pre.i, %_RINvYINtNtCsiWcPrHiWZDL_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de9MapAccess10next_valueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsiAynQAjgDuT_10xet_client9cas_types3key13HexMerkleHashEEB2E_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !3015
  br label %.loopexit

bb.dj:                                            ; preds = %_RINvYINtNtCsiWcPrHiWZDL_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de9MapAccess10next_valueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsiAynQAjgDuT_10xet_client9cas_types3key13HexMerkleHashEEB2E_.exit.i
  %.sroa.5159.0.copyload.i = load i64, ptr %.sroa.5159.0..sroa_idx.i, align 8, !noalias !3015 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !3015
  %i.kt = load i64, ptr %i.v, align 8, !range !8, !alias.scope !3079, !noalias !3015, !noundef !5
  %i.ku = icmp eq i64 %i.kt, -1
  br i1 %i.ku, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsiAynQAjgDuT_10xet_client9cas_types3key13HexMerkleHashEEEB1A_.exit.i, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsiAynQAjgDuT_10xet_client9cas_types3key13HexMerkleHashENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsiAynQAjgDuT_10xet_client9cas_types3key13HexMerkleHashEEB1e_.exit.i.i unwind label %bb.dl, !noalias !3019

bb.dl:                                            ; preds = %bb.dk
  %i.kv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsiAynQAjgDuT_10xet_client9cas_types3key13HexMerkleHashENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %.thread.i unwind label %bb.dm, !noalias !3019

bb.dm:                                            ; preds = %bb.dl
  %i.kw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !noalias !3019
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsiAynQAjgDuT_10xet_client9cas_types3key13HexMerkleHashEEB1e_.exit.i.i: ; preds = %bb.dk
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsiAynQAjgDuT_10xet_client9cas_types3key13HexMerkleHashENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsiAynQAjgDuT_10xet_client9cas_types3key13HexMerkleHashEEEB1A_.exit.i unwind label %bb.dn, !noalias !3019

bb.dn:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsiAynQAjgDuT_10xet_client9cas_types3key13HexMerkleHashEEB1e_.exit.i.i
  %i.kx = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

.thread.i:                                        ; preds = %bb.dn, %bb.dl
  %eh.lpad-body234.i = phi { ptr, i32 } [ %i.kx, %bb.dn ], [ %i.kv, %bb.dl ]
  store i64 %.pr270.i, ptr %i.v, align 8, !noalias !3015
  store ptr %.pre.i, ptr %.sroa.681.0..sroa_idx82.i, align 8, !noalias !3015
  store i64 %.sroa.5159.0.copyload.i, ptr %.sroa.784.0..sroa_idx85.i, align 8, !noalias !3015
  br label %bb.fi

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsiAynQAjgDuT_10xet_client9cas_types3key13HexMerkleHashEEEB1A_.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsiAynQAjgDuT_10xet_client9cas_types3key13HexMerkleHashEEB1e_.exit.i.i, %bb.dj
  store i64 %.pr270.i, ptr %i.v, align 8, !noalias !3015
  store ptr %.pre.i, ptr %.sroa.681.0..sroa_idx82.i, align 8, !noalias !3015
  store i64 %.sroa.5159.0.copyload.i, ptr %.sroa.784.0..sroa_idx85.i, align 8, !noalias !3015
  br label %.backedge

bb.do:                                            ; preds = %bb.bv
  %.not174.i = icmp eq ptr %i.hl, null
  br i1 %.not174.i, label %.backedge, label %.loopexit

.backedge:                                        ; preds = %bb.do, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsiAynQAjgDuT_10xet_client9cas_types3key13HexMerkleHashEEEB1A_.exit.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_NtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtree17MerkleHashSubtreeEEEECsiAynQAjgDuT_10xet_client.exit.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsiAynQAjgDuT_10xet_client9cas_types11ChunkWindowEEEB1y_.exit.i
  br label %bb.bd

bb.dp:                                            ; preds = %bb.bp
  %i.ky = invoke { i64, ptr } @_RINvXNvNtNtCseHpJhTld930_5serde7private2de13missing_fieldINtB3_24MissingFieldDeserializerNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorENtNtCs6SYjS1KFWza_10serde_core2de12Deserializer15deserialize_anyNtNvXs17_NtB28_5implsyNtB28_11Deserialize11deserialize16PrimitiveVisitorECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 11)
          to label %bb.dq unwind label %.loopexit.split-lp.i, !noalias !3019 ; 2 uses

bb.dq:                                            ; preds = %bb.dp
  %i.kz = extractvalue { i64, ptr } %i.ky, 0
  %i.la = extractvalue { i64, ptr } %i.ky, 1      ; 2 uses
  %i.lb = trunc nuw i64 %i.kz to i1
  br i1 %i.lb, label %.loopexit, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.lc = ptrtoint ptr %i.la to i64
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.bp
  %.sroa.095.0.i = phi i64 [ %i.lc, %bb.dr ], [ %.sroa.4.0.i.ph901, %bb.bp ]
  br i1 %.sroa.023.0.i.ph, label %bb.dw, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.ld = invoke { i64, ptr } @_RINvXNvNtNtCseHpJhTld930_5serde7private2de13missing_fieldINtB3_24MissingFieldDeserializerNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorENtNtCs6SYjS1KFWza_10serde_core2de12Deserializer15deserialize_anyNtNvXs17_NtB28_5implsyNtB28_11Deserialize11deserialize16PrimitiveVisitorECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 8)
          to label %bb.du unwind label %.loopexit.split-lp.i, !noalias !3019 ; 2 uses

bb.du:                                            ; preds = %bb.dt
  %i.le = extractvalue { i64, ptr } %i.ld, 0
  %i.lf = extractvalue { i64, ptr } %i.ld, 1      ; 2 uses
  %i.lg = trunc nuw i64 %i.le to i1
  br i1 %i.lg, label %.loopexit, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.lh = ptrtoint ptr %i.lf to i64
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.ds
  %.sroa.0101.0.i = phi i64 [ %i.lh, %bb.dv ], [ %.sroa.425.0.i.ph, %bb.ds ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !3015
  %i.li = load i64, ptr %i.x, align 8, !range !8, !noalias !3015, !noundef !5
  %.not170.i = icmp eq i64 %i.li, -1
  br i1 %.not170.i, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false), !noalias !3015
  br label %bb.ec

bb.dy:                                            ; preds = %bb.dw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !3015
  invoke void @_RINvXNvNtNtCseHpJhTld930_5serde7private2de13missing_fieldINtB3_24MissingFieldDeserializerNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorENtNtCs6SYjS1KFWza_10serde_core2de12Deserializer15deserialize_anyINtNvXsh_NtB28_5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecpENtB28_11Deserialize11deserialize10VecVisitorNtNtCsiAynQAjgDuT_10xet_client9cas_types11ChunkWindowEEB4O_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 7)
          to label %bb.dz unwind label %.loopexit.split-lp.i, !noalias !3019

bb.dz:                                            ; preds = %bb.dy
  %i.lj = load i64, ptr %i.q, align 8, !range !8, !noalias !3015, !noundef !5 ; 2 uses
  %i.lk = icmp eq i64 %i.lj, -1
  %i.ll = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.lm = load ptr, ptr %i.ll, align 8, !noalias !3015 ; 2 uses
  br i1 %i.lk, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %bb.dz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !3015
  br label %bb.ed

bb.eb:                                            ; preds = %bb.dz
  %.sroa.5162.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.5162.0.copyload.i = load i64, ptr %.sroa.5162.0..sroa_idx.i, align 8, !noalias !3015
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !3015
  store i64 %i.lj, ptr %i.r, align 8, !noalias !3015
  %.sroa.4111.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.lm, ptr %.sroa.4111.0..sroa_idx.i, align 8, !noalias !3015
  %.sroa.5112.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 %.sroa.5162.0.copyload.i, ptr %.sroa.5112.0..sroa_idx.i, align 8, !noalias !3015
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %bb.dx
  %.sroa.0149.4.i = phi i8 [ 0, %bb.dx ], [ 1, %bb.eb ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !3015
  %i.ln = load i64, ptr %i.w, align 8, !range !8, !noalias !3015, !noundef !5
  %.not171.i = icmp eq i64 %i.ln, -1
  br i1 %.not171.i, label %bb.ef, label %bb.ee

bb.ed:                                            ; preds = %bb.em, %bb.ea
  %.sroa.22.1 = phi ptr [ %i.lm, %bb.ea ], [ %.sroa.22.0, %bb.em ]
  %.sroa.0147.4.i = phi i8 [ 1, %bb.ea ], [ %.sroa.0147.8.i, %bb.em ]
  %.sroa.0149.5.i = phi i8 [ 1, %bb.ea ], [ %.sroa.0149.4.i, %bb.em ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !3015
  br label %.loopexit

bb.ee:                                            ; preds = %bb.ec
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false), !noalias !3015
  br label %bb.el

bb.ef:                                            ; preds = %bb.ec
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !3015
  invoke void @_RINvXNvNtNtCseHpJhTld930_5serde7private2de13missing_fieldINtB3_24MissingFieldDeserializerNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorENtNtCs6SYjS1KFWza_10serde_core2de12Deserializer15deserialize_anyINtNvXsh_NtB28_5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecpENtB28_11Deserialize11deserialize10VecVisitorINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtree17MerkleHashSubtreeEEECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 10)
          to label %bb.ei unwind label %bb.eh, !noalias !3019

bb.eg:                                            ; preds = %bb.ep, %bb.eh
  %.sroa.0147.5.i = phi i8 [ %.sroa.0147.6.i, %bb.eh ], [ %.sroa.0147.7.i, %bb.ep ]
  %.pn.i47 = phi { ptr, i32 } [ %i.lo, %bb.eh ], [ %i.lu, %bb.ep ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsiAynQAjgDuT_10xet_client9cas_types11ChunkWindowEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.r) #14
          to label %bb.bo unwind label %bb.eu, !noalias !3019

bb.eh:                                            ; preds = %bb.er, %bb.ef
  %.sroa.0147.6.i = phi i8 [ %.sroa.0147.7.i, %bb.er ], [ 1, %bb.ef ]
  %i.lo = landingpad { ptr, i32 }
          cleanup
  br label %bb.eg

bb.ei:                                            ; preds = %bb.ef
  %i.lp = load i64, ptr %i.o, align 8, !range !8, !noalias !3015, !noundef !5 ; 2 uses
  %i.lq = icmp eq i64 %i.lp, -1
  %i.lr = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ls = load ptr, ptr %i.lr, align 8, !noalias !3015 ; 2 uses
  br i1 %i.lq, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %bb.ei
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !3015
  br label %bb.em

bb.ek:                                            ; preds = %bb.ei
  %.sroa.5165.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.5165.0.copyload.i = load i64, ptr %.sroa.5165.0..sroa_idx.i, align 8, !noalias !3015
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !3015
  store i64 %i.lp, ptr %i.p, align 8, !noalias !3015
  %.sroa.4122.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.ls, ptr %.sroa.4122.0..sroa_idx.i, align 8, !noalias !3015
  %.sroa.5123.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 %.sroa.5165.0.copyload.i, ptr %.sroa.5123.0..sroa_idx.i, align 8, !noalias !3015
  br label %bb.el

bb.el:                                            ; preds = %bb.ek, %bb.ee
  %.sroa.0147.7.i = phi i8 [ 0, %bb.ee ], [ 1, %bb.ek ] ; 3 uses
  %i.lt = load i64, ptr %i.v, align 8, !range !8, !noalias !3015, !noundef !5 ; 2 uses
  %.not172.i = icmp eq i64 %i.lt, -1
  br i1 %.not172.i, label %bb.eo, label %bb.en

bb.em:                                            ; preds = %bb.er, %bb.ej
  %.sroa.22.0 = phi ptr [ %i.ls, %bb.ej ], [ %i.ly, %bb.er ]
end_hunk_1
begin_hunk_2_@_RINvXs5_NtCsiWcPrHiWZDL_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCsiAynQAjgDuT_10xet_client9cas_typessr_1__NtB2v_23FileChunkHashesResponseNtB1l_11Deserialize11deserialize9___VisitorEB2x_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !3015
  br label %bb.et

bb.et:                                            ; preds = %bb.es, %bb.en
  %.sroa.0132.0.i = phi i64 [ %i.lt, %bb.en ], [ %i.lv, %bb.es ]
  %.sroa.3134.0.i = phi ptr [ %.sroa.3134.0.copyload.i, %bb.en ], [ %i.ly, %bb.es ]
  %.sroa.4137.0.i = phi i64 [ %.sroa.4137.0.copyload.i, %bb.en ], [ %.sroa.5168.0.copyload.i, %bb.es ]
  %.sroa.0140.i.sroa.0.0.copyload = load i64, ptr %i.r, align 8, !noalias !3015
  %.sroa.0140.i.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.0140.i.sroa.4.0.copyload = load ptr, ptr %.sroa.0140.i.sroa.4.0..sroa_idx, align 8, !noalias !3015
  %.sroa.0140.i.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.lz = load i64, ptr %.sroa.0140.i.sroa.5.0..sroa_idx, align 8, !noalias !3015
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.39.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !noalias !3080
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !3015
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !3015
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !3015
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !3015
  br label %_RINvXs0_NvXNvNtCsiAynQAjgDuT_10xet_client9cas_typessr_1__NtBb_23FileChunkHashesResponseNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1p_7Visitor9visit_mapINtNtCsiWcPrHiWZDL_10serde_json2de9MapAccessNtNtB33_4read9SliceReadEEBd_.exit

.loopexit:                                        ; preds = %_RINvYINtNtCsiWcPrHiWZDL_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de9MapAccess10next_valueyECsiAynQAjgDuT_10xet_client.exit.i, %bb.do, %_RINvYINtNtCsiWcPrHiWZDL_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de9MapAccess10next_valueyECsiAynQAjgDuT_10xet_client.exit204.i, %.invoke, %bb.du, %bb.dq, %bb.be, %bb.bn, %bb.ed, %.loopexit272.i, %.loopexit274.i, %.loopexit276.i
  %.sroa.22.2 = phi ptr [ %i.la, %bb.dq ], [ %i.kq, %.invoke ], [ %i.fr, %bb.bn ], [ %i.fg, %bb.be ], [ %i.lf, %bb.du ], [ %i.ks, %.loopexit272.i ], [ %i.jg, %.loopexit276.i ], [ %.sroa.22.1, %bb.ed ], [ %i.jy, %.loopexit274.i ], [ %i.ia, %_RINvYINtNtCsiWcPrHiWZDL_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de9MapAccess10next_valueyECsiAynQAjgDuT_10xet_client.exit.i ], [ %i.hl, %bb.do ], [ %i.ir, %_RINvYINtNtCsiWcPrHiWZDL_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de9MapAccess10next_valueyECsiAynQAjgDuT_10xet_client.exit204.i ] ; 2 uses
  %.sroa.0147.9.i = phi i8 [ 1, %bb.dq ], [ 1, %.invoke ], [ 1, %bb.bn ], [ 1, %bb.be ], [ 1, %bb.du ], [ 1, %.loopexit272.i ], [ 1, %.loopexit276.i ], [ %.sroa.0147.4.i, %bb.ed ], [ 1, %.loopexit274.i ], [ 1, %_RINvYINtNtCsiWcPrHiWZDL_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de9MapAccess10next_valueyECsiAynQAjgDuT_10xet_client.exit204.i ], [ 1, %bb.do ], [ 1, %_RINvYINtNtCsiWcPrHiWZDL_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de9MapAccess10next_valueyECsiAynQAjgDuT_10xet_client.exit.i ] ; 3 uses
  %.sroa.0149.6.i = phi i8 [ 1, %bb.dq ], [ 1, %.invoke ], [ 1, %bb.bn ], [ 1, %bb.be ], [ 1, %bb.du ], [ 1, %.loopexit272.i ], [ 1, %.loopexit276.i ], [ %.sroa.0149.5.i, %bb.ed ], [ 1, %.loopexit274.i ], [ 1, %_RINvYINtNtCsiWcPrHiWZDL_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de9MapAccess10next_valueyECsiAynQAjgDuT_10xet_client.exit204.i ], [ 1, %bb.do ], [ 1, %_RINvYINtNtCsiWcPrHiWZDL_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de9MapAccess10next_valueyECsiAynQAjgDuT_10xet_client.exit.i ] ; 5 uses
  %i.ma = load i64, ptr %i.v, align 8, !range !8, !noalias !3015, !noundef !5
  %.not181.i = icmp eq i64 %i.ma, -1
  br i1 %.not181.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsiAynQAjgDuT_10xet_client9cas_types3key13HexMerkleHashEEB1e_.exit.i, label %bb.ev

bb.eu:                                            ; preds = %bb.fk, %bb.fj, %bb.fi, %bb.ep, %bb.eg
  %i.mb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !noalias !3019
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsiAynQAjgDuT_10xet_client9cas_types3key13HexMerkleHashEEB1e_.exit.i: ; preds = %bb.ex, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !3015
  %i.mc = load i64, ptr %i.w, align 8, !range !8, !noalias !3015, !noundef !5
  %i.md = icmp ne i64 %i.mc, -1
  %i.me = trunc nuw i8 %.sroa.0147.9.i to i1
  %or.cond3.i = select i1 %i.md, i1 %i.me, i1 false
  br i1 %or.cond3.i, label %bb.fa, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtree17MerkleHashSubtreeEEECsiAynQAjgDuT_10xet_client.exit.i48

bb.ev:                                            ; preds = %.loopexit
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsiAynQAjgDuT_10xet_client9cas_types3key13HexMerkleHashENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %bb.ex unwind label %bb.ew, !noalias !3019

bb.ew:                                            ; preds = %bb.ev
  %i.mf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsiAynQAjgDuT_10xet_client9cas_types3key13HexMerkleHashENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %.body237.i unwind label %bb.ey, !noalias !3019

bb.ex:                                            ; preds = %bb.ev
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsiAynQAjgDuT_10xet_client9cas_types3key13HexMerkleHashENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsiAynQAjgDuT_10xet_client9cas_types3key13HexMerkleHashEEB1e_.exit.i unwind label %bb.ez, !noalias !3019

bb.ey:                                            ; preds = %bb.ew
  %i.mg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !noalias !3019
  unreachable

.body237.i:                                       ; preds = %bb.fi, %bb.ez, %bb.ew, %bb.bo
  %.sroa.0147.10.i = phi i8 [ %.sroa.0147.1.ph.i, %bb.bo ], [ %.sroa.0147.1247.i, %bb.fi ], [ %.sroa.0147.9.i, %bb.ew ], [ %.sroa.0147.9.i, %bb.ez ]
  %.sroa.0149.7.i = phi i8 [ %.sroa.0149.1.ph.i, %bb.bo ], [ %.sroa.0149.1248.i, %bb.fi ], [ %.sroa.0149.6.i, %bb.ew ], [ %.sroa.0149.6.i, %bb.ez ] ; 2 uses
  %.pn182.i = phi { ptr, i32 } [ %.pn178.ph.i, %bb.bo ], [ %.pn178249.i, %bb.fi ], [ %i.mf, %bb.ew ], [ %i.mk, %bb.ez ] ; 2 uses
  %i.mh = load i64, ptr %i.w, align 8, !range !8, !noalias !3015, !noundef !5
  %i.mi = icmp ne i64 %i.mh, -1
  %i.mj = trunc nuw i8 %.sroa.0147.10.i to i1
  %or.cond9.i = select i1 %i.mi, i1 %i.mj, i1 false
  br i1 %or.cond9.i, label %bb.fj, label %.body240.i

bb.ez:                                            ; preds = %bb.ex
  %i.mk = landingpad { ptr, i32 }
          cleanup
  br label %.body237.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtree17MerkleHashSubtreeEEECsiAynQAjgDuT_10xet_client.exit.i48: ; preds = %bb.fc, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsiAynQAjgDuT_10xet_client9cas_types3key13HexMerkleHashEEB1e_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !3015
  %i.ml = load i64, ptr %i.x, align 8, !range !8, !noalias !3015, !noundef !5
  %i.mm = icmp ne i64 %i.ml, -1
  %i.mn = trunc nuw i8 %.sroa.0149.6.i to i1
  %or.cond5.i = select i1 %i.mm, i1 %i.mn, i1 false
  br i1 %or.cond5.i, label %bb.ff, label %_RINvXs0_NvXNvNtCsiAynQAjgDuT_10xet_client9cas_typessr_1__NtBb_23FileChunkHashesResponseNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1p_7Visitor9visit_mapINtNtCsiWcPrHiWZDL_10serde_json2de9MapAccessNtNtB33_4read9SliceReadEEBd_.exit

bb.fa:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsiAynQAjgDuT_10xet_client9cas_types3key13HexMerkleHashEEB1e_.exit.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtree17MerkleHashSubtreeEENtNtNtBK_3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %bb.fc unwind label %bb.fb, !noalias !3019

bb.fb:                                            ; preds = %bb.fa
  %i.mo = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtree17MerkleHashSubtreeEENtNtNtBR_3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %.body240.i unwind label %bb.fd, !noalias !3019

bb.fc:                                            ; preds = %bb.fa
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtree17MerkleHashSubtreeEENtNtNtBR_3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtree17MerkleHashSubtreeEEECsiAynQAjgDuT_10xet_client.exit.i48 unwind label %bb.fe, !noalias !3019

bb.fd:                                            ; preds = %bb.fb
  %i.mp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !noalias !3019
  unreachable

.body240.i:                                       ; preds = %bb.fj, %bb.fe, %bb.fb, %.body237.i
  %.sroa.0149.8.i = phi i8 [ %.sroa.0149.7.i, %.body237.i ], [ %.sroa.0149.7.i, %bb.fj ], [ %.sroa.0149.6.i, %bb.fb ], [ %.sroa.0149.6.i, %bb.fe ]
  %.pn184.i = phi { ptr, i32 } [ %.pn182.i, %.body237.i ], [ %.pn182.i, %bb.fj ], [ %i.mo, %bb.fb ], [ %i.mt, %bb.fe ] ; 2 uses
  %i.mq = load i64, ptr %i.x, align 8, !range !8, !noalias !3015, !noundef !5
  %i.mr = icmp ne i64 %i.mq, -1
  %i.ms = trunc nuw i8 %.sroa.0149.8.i to i1
  %or.cond11.i = select i1 %i.mr, i1 %i.ms, i1 false
  br i1 %or.cond11.i, label %bb.fk, label %common.resume

bb.fe:                                            ; preds = %bb.fc
  %i.mt = landingpad { ptr, i32 }
          cleanup
  br label %.body240.i

bb.ff:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtree17MerkleHashSubtreeEEECsiAynQAjgDuT_10xet_client.exit.i48
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsiAynQAjgDuT_10xet_client9cas_types11ChunkWindowENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsiAynQAjgDuT_10xet_client9cas_types11ChunkWindowEEB1c_.exit.i49 unwind label %bb.fg, !noalias !3019

bb.fg:                                            ; preds = %bb.ff
  %i.mu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsiAynQAjgDuT_10xet_client9cas_types11ChunkWindowENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %common.resume unwind label %bb.fh, !noalias !3019

bb.fh:                                            ; preds = %bb.fg
  %i.mv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !noalias !3019
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsiAynQAjgDuT_10xet_client9cas_types11ChunkWindowEEB1c_.exit.i49: ; preds = %bb.ff
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsiAynQAjgDuT_10xet_client9cas_types11ChunkWindowENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x), !noalias !3019
  br label %_RINvXs0_NvXNvNtCsiAynQAjgDuT_10xet_client9cas_typessr_1__NtBb_23FileChunkHashesResponseNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1p_7Visitor9visit_mapINtNtCsiWcPrHiWZDL_10serde_json2de9MapAccessNtNtB33_4read9SliceReadEEBd_.exit

bb.fi:                                            ; preds = %.thread.i, %bb.bo
  %.pn178249.i = phi { ptr, i32 } [ %eh.lpad-body234.i, %.thread.i ], [ %.pn178.ph.i, %bb.bo ]
  %.sroa.0149.1248.i = phi i8 [ 1, %.thread.i ], [ %.sroa.0149.1.ph.i, %bb.bo ]
  %.sroa.0147.1247.i = phi i8 [ 1, %.thread.i ], [ %.sroa.0147.1.ph.i, %bb.bo ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsiAynQAjgDuT_10xet_client9cas_types3key13HexMerkleHashEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.v) #14
          to label %.body237.i unwind label %bb.eu, !noalias !3019

bb.fj:                                            ; preds = %.body237.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtree17MerkleHashSubtreeEEECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef align 8 dereferenceable(24) %i.w) #14
          to label %.body240.i unwind label %bb.eu, !noalias !3019

bb.fk:                                            ; preds = %.body240.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsiAynQAjgDuT_10xet_client9cas_types11ChunkWindowEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.x) #14
          to label %common.resume unwind label %bb.eu, !noalias !3019

_RINvXs0_NvXNvNtCsiAynQAjgDuT_10xet_client9cas_typessr_1__NtBb_23FileChunkHashesResponseNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1p_7Visitor9visit_mapINtNtCsiWcPrHiWZDL_10serde_json2de9MapAccessNtNtB33_4read9SliceReadEEBd_.exit: ; preds = %bb.et, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtree17MerkleHashSubtreeEEECsiAynQAjgDuT_10xet_client.exit.i48, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsiAynQAjgDuT_10xet_client9cas_types11ChunkWindowEEB1c_.exit.i49
  %.sroa.39.sroa.0.0 = phi i64 [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsiAynQAjgDuT_10xet_client9cas_types11ChunkWindowEEB1c_.exit.i49 ], [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtree17MerkleHashSubtreeEEECsiAynQAjgDuT_10xet_client.exit.i48 ], [ %i.lz, %bb.et ]
  %.sroa.42.0 = phi i64 [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsiAynQAjgDuT_10xet_client9cas_types11ChunkWindowEEB1c_.exit.i49 ], [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtree17MerkleHashSubtreeEEECsiAynQAjgDuT_10xet_client.exit.i48 ], [ %.sroa.095.0.i, %bb.et ]
  %.sroa.41.0 = phi i64 [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsiAynQAjgDuT_10xet_client9cas_types11ChunkWindowEEB1c_.exit.i49 ], [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtree17MerkleHashSubtreeEEECsiAynQAjgDuT_10xet_client.exit.i48 ], [ %.sroa.4137.0.i, %bb.et ]
  %.sroa.40.0 = phi ptr [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsiAynQAjgDuT_10xet_client9cas_types11ChunkWindowEEB1c_.exit.i49 ], [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtree17MerkleHashSubtreeEEECsiAynQAjgDuT_10xet_client.exit.i48 ], [ %.sroa.3134.0.i, %bb.et ]
  %.sroa.3959.0 = phi i64 [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsiAynQAjgDuT_10xet_client9cas_types11ChunkWindowEEB1c_.exit.i49 ], [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtree17MerkleHashSubtreeEEECsiAynQAjgDuT_10xet_client.exit.i48 ], [ %.sroa.0132.0.i, %bb.et ]
  %.sroa.22.3 = phi ptr [ %.sroa.22.2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsiAynQAjgDuT_10xet_client9cas_types11ChunkWindowEEB1c_.exit.i49 ], [ %.sroa.22.2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtree17MerkleHashSubtreeEEECsiAynQAjgDuT_10xet_client.exit.i48 ], [ %.sroa.0140.i.sroa.4.0.copyload, %bb.et ]
  %.sroa.056.3 = phi i64 [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsiAynQAjgDuT_10xet_client9cas_types11ChunkWindowEEB1c_.exit.i49 ], [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtree17MerkleHashSubtreeEEECsiAynQAjgDuT_10xet_client.exit.i48 ], [ %.sroa.0140.i.sroa.0.0.copyload, %bb.et ]
  %.sroa.43.0 = phi i64 [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsiAynQAjgDuT_10xet_client9cas_types11ChunkWindowEEB1c_.exit.i49 ], [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtree17MerkleHashSubtreeEEECsiAynQAjgDuT_10xet_client.exit.i48 ], [ %.sroa.0101.0.i, %bb.et ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !3015
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  %i.mw = load i8, ptr %i.bi, align 8, !noundef !5
  %i.mx = add i8 %i.mw, 1
  store i8 %i.mx, ptr %i.bi, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  store i64 %.sroa.056.3, ptr %i.ak, align 8
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %.sroa.22.3, ptr %.sroa.22.0..sroa_idx, align 8
  %.sroa.39.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store i64 %.sroa.39.sroa.0.0, ptr %.sroa.39.0..sroa_idx, align 8
  %.sroa.39.sroa.6.0..sroa.39.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.39.sroa.6.0..sroa.39.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.39.sroa.6, i64 24, i1 false)
  %.sroa.3959.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  store i64 %.sroa.3959.0, ptr %.sroa.3959.0..sroa_idx, align 8
  %.sroa.40.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 56
  store ptr %.sroa.40.0, ptr %.sroa.40.0..sroa_idx, align 8
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 64
  store i64 %.sroa.41.0, ptr %.sroa.41.0..sroa_idx, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 72
  store i64 %.sroa.42.0, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 80
  store i64 %.sroa.43.0, ptr %.sroa.43.0..sroa_idx, align 8
  %i.my = invoke noundef align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE7end_mapCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1)
          to label %bb.fm unwind label %bb.fl     ; 5 uses

bb.fl:                                            ; preds = %_RINvXs0_NvXNvNtCsiAynQAjgDuT_10xet_client9cas_typessr_1__NtBb_23FileChunkHashesResponseNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1p_7Visitor9visit_mapINtNtCsiWcPrHiWZDL_10serde_json2de9MapAccessNtNtB33_4read9SliceReadEEBd_.exit
  %i.mz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsiAynQAjgDuT_10xet_client9cas_types23FileChunkHashesResponseNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorEEB11_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.ak) #14
          to label %common.resume unwind label %bb.ay

bb.fm:                                            ; preds = %_RINvXs0_NvXNvNtCsiAynQAjgDuT_10xet_client9cas_typessr_1__NtBb_23FileChunkHashesResponseNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1p_7Visitor9visit_mapINtNtCsiWcPrHiWZDL_10serde_json2de9MapAccessNtNtB33_4read9SliceReadEEBd_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.al, ptr noundef nonnull align 8 dereferenceable(88) %i.ak, i64 88, i1 false)
  %i.na = getelementptr inbounds nuw i8, ptr %i.al, i64 88
  store ptr %i.my, ptr %i.na, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  %i.nb = load i64, ptr %i.al, align 8, !range !8, !noundef !5 ; 2 uses
  %i.nc = icmp eq i64 %i.nb, -1
  br i1 %i.nc, label %bb.fo, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %.not = icmp eq ptr %i.my, null
  br i1 %.not, label %.thread502, label %bb.fp

.thread502:                                       ; preds = %bb.fn
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.sroa.421.0.copyload = load ptr, ptr %.sroa.421.0..sroa_idx, align 8
  %.sroa.522.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.522.0..sroa_idx, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.39.sroa.6)
  br label %.thread77

bb.fo:                                            ; preds = %bb.fm
  %i.nd = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ne = load ptr, ptr %i.nd, align 8, !nonnull !5, !align !12, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.39.sroa.6)
  %.not84 = icmp eq ptr %i.my, null
  br i1 %.not84, label %.thread77, label %bb.fq

bb.fp:                                            ; preds = %bb.fn
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.39.sroa.6)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsiAynQAjgDuT_10xet_client9cas_types23FileChunkHashesResponseEBF_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.al)
  br label %.thread77

.thread77:                                        ; preds = %.thread502, %bb.fp, %bb.fq, %bb.fo
  %.sroa.09.283 = phi i64 [ -1, %bb.fo ], [ -1, %bb.fq ], [ -1, %bb.fp ], [ %i.nb, %.thread502 ]
  %.sroa.10.282 = phi ptr [ %i.ne, %bb.fo ], [ %i.ne, %bb.fq ], [ %i.my, %bb.fp ], [ %.sroa.421.0.copyload, %.thread502 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  br label %bb.ba

bb.fq:                                            ; preds = %bb.fo
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorECsiAynQAjgDuT_10xet_client(ptr nonnull %i.my)
  br label %.thread77

bb.fr:                                            ; preds = %bb.d, %bb.ba
  %.sroa.10.3 = phi ptr [ %i.bd, %bb.d ], [ %.sroa.10.1, %bb.ba ]
  %i.nf = call noundef nonnull align 8 ptr @_RINvMs0_NtCsiWcPrHiWZDL_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read9SliceReadE12fix_position0ECsiAynQAjgDuT_10xet_client(ptr noalias noundef nonnull align 8 %.sroa.10.3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1)
  %i.ng = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.nf, ptr %i.ng, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.ft

bb.fs:                                            ; preds = %bb.ba
  %.sroa.526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.526.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.14, i64 72, i1 false)
  store i64 %.sroa.09.1, ptr %0, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.1, ptr %.sroa.425.0..sroa_idx, align 8
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fr, %bb.fs
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  br label %bb.fu

bb.fu:                                            ; preds = %bb.ft, %.loopexit89, %bb.as
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs5_NtCsiWcPrHiWZDL_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtrees_1__NtB2v_7HexNodeNtB1l_11Deserialize11deserialize9___VisitorECsiAynQAjgDuT_10xet_client(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(none) %4, i64 noundef range(i64 0, 576460752303423488) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 9 uses
  %i.g = alloca [16 x i8], align 8                ; 10 uses
  %.sroa.4.i.sroa.4 = alloca [24 x i8], align 8   ; 4 uses
  %i.h = alloca [40 x i8], align 8                ; 7 uses
  %i.i = alloca [16 x i8], align 8                ; 7 uses
  %i.j = alloca [16 x i8], align 8                ; 7 uses
  %i.k = alloca [40 x i8], align 8                ; 7 uses
  %i.l = alloca [16 x i8], align 8                ; 7 uses
  %.sroa.220.i = alloca [24 x i8], align 8        ; 4 uses
  %i.m = alloca [16 x i8], align 8                ; 8 uses
  %.sroa.16.sroa.0 = alloca [24 x i8], align 8    ; 2 uses
  %.sroa.22 = alloca [24 x i8], align 8           ; 2 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.10 = alloca [24 x i8], align 8           ; 2 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3167)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !3168, !noundef !5 ; 2 uses
  %.promoted.i = load i64, ptr %i.q, align 8, !alias.scope !3167 ; 2 uses
  %i.t = icmp ult i64 %.promoted.i, %i.s
  br i1 %i.t, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !3168, !nonnull !5, !noundef !5
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.w = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.z, %bb.c ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3169)
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !noalias !3170, !noundef !5
  switch i8 %i.y, label %bb.d [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 91, label %bb.e
    i8 123, label %bb.f
  ], !prof !22

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.z = add i64 %i.w, 1                          ; 3 uses
  store i64 %i.z, ptr %i.q, align 8, !alias.scope !3171
  %exitcond.not.i = icmp eq i64 %i.z, %i.s
  br i1 %exitcond.not.i, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i64 5, ptr %i.p, align 8
  %i.aa = call noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aa, ptr %i.ab, align 8
  br label %bb.bo

bb.d:                                             ; preds = %bb.b
  %i.ac = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE17peek_invalid_typeCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @103)
  br label %.split.thread

bb.e:                                             ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.ae = load i8, ptr %i.ad, align 8, !noundef !5
  %i.af = add i8 %i.ae, -1                        ; 2 uses
  store i8 %i.af, ptr %i.ad, align 8
  %i.ag = icmp eq i8 %i.af, 0
  br i1 %i.ag, label %bb.g, label %bb.h, !prof !18

bb.f:                                             ; preds = %bb.b
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.ai = load i8, ptr %i.ah, align 8, !noundef !5
  %i.aj = add i8 %i.ai, -1                        ; 2 uses
  store i8 %i.aj, ptr %i.ah, align 8
  %i.ak = icmp eq i8 %i.aj, 0
  br i1 %i.ak, label %bb.aa, label %bb.ab, !prof !18

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store i64 24, ptr %i.o, align 8
  %i.al = call noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.s

bb.h:                                             ; preds = %bb.e
  %i.am = add i64 %i.w, 1
  store i64 %i.am, ptr %i.q, align 8, !alias.scope !3172
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.220.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr %1, ptr %i.m, align 8, !noalias !3173
  %i.an = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i8 1, ptr %i.an, align 8, !noalias !3173
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3174)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3175)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !3176
  call fastcc void @_RINvNvXs7_NtCsiWcPrHiWZDL_10serde_json2deINtB8_9SeqAccesspENtNtCs6SYjS1KFWza_10serde_core2de9SeqAccess17next_element_seed16has_next_elementNtNtBa_4read9SliceReadECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.m), !noalias !3177
  %i.ao = load i8, ptr %i.l, align 8, !range !7, !noalias !3176, !noundef !5
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !noalias !3176, !nonnull !5, !align !12, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !3176
  br label %_RINvXs0_NvXNvNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtrees_1__NtBb_7HexNodeNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1F_7Visitor9visit_seqINtNtCsiWcPrHiWZDL_10serde_json2de9SeqAccessNtNtB3j_4read9SliceReadEECsiAynQAjgDuT_10xet_client.exit

bb.j:                                             ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.at = load i8, ptr %i.as, align 1, !range !7, !noalias !3176, !noundef !5
  %i.au = trunc nuw i8 %i.at to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !3176
  br i1 %i.au, label %bb.k, label %bb.q

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !3176
  %i.av = load ptr, ptr %i.m, align 8, !alias.scope !3178, !noalias !3173, !nonnull !5, !align !12, !noundef !5
  call void @_RINvXNvXs0_NvXNvNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtrees_1__NtBe_7HexNodeNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserializeNtB9_9___VisitorNtB1I_7Visitor9visit_seqNtB3_17___DeserializeWithB1G_11deserializeQINtNtCsiWcPrHiWZDL_10serde_json2de12DeserializerNtNtB43_4read9SliceReadEECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.av), !noalias !3179
  %i.aw = load i64, ptr %i.k, align 8, !range !21, !noalias !3176, !noundef !5
  %i.ax = trunc nuw i64 %i.aw to i1
  %i.ay = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !noalias !3180 ; 2 uses
  br i1 %i.ax, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !3176
  br label %_RINvXs0_NvXNvNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtrees_1__NtBb_7HexNodeNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1F_7Visitor9visit_seqINtNtCsiWcPrHiWZDL_10serde_json2de9SeqAccessNtNtB3j_4read9SliceReadEECsiAynQAjgDuT_10xet_client.exit

bb.m:                                             ; preds = %bb.k
  %.sroa.14.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.220.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.14.8..sroa_idx.i, i64 24, i1 false), !noalias !3173
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !3176
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3181)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3182)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !3183
  call fastcc void @_RINvNvXs7_NtCsiWcPrHiWZDL_10serde_json2deINtB8_9SeqAccesspENtNtCs6SYjS1KFWza_10serde_core2de9SeqAccess17next_element_seed16has_next_elementNtNtBa_4read9SliceReadECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.m), !noalias !3184
  %i.ba = load i8, ptr %i.j, align 8, !range !7, !noalias !3183, !noundef !5
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bc = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !noalias !3183, !nonnull !5, !align !12, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !3183
  br label %_RINvXs0_NvXNvNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtrees_1__NtBb_7HexNodeNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1F_7Visitor9visit_seqINtNtCsiWcPrHiWZDL_10serde_json2de9SeqAccessNtNtB3j_4read9SliceReadEECsiAynQAjgDuT_10xet_client.exit

bb.o:                                             ; preds = %bb.m
  %i.be = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.bf = load i8, ptr %i.be, align 1, !range !7, !noalias !3183, !noundef !5
  %i.bg = trunc nuw i8 %i.bf to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !3183
  br i1 %i.bg, label %bb.p, label %_RINvYINtNtCsiWcPrHiWZDL_10serde_json2de9SeqAccessNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de9SeqAccess12next_elementyECsiAynQAjgDuT_10xet_client.exit.i

bb.p:                                             ; preds = %bb.o
  %i.bh = load ptr, ptr %i.m, align 8, !alias.scope !3185, !noalias !3173, !nonnull !5, !align !12, !noundef !5
  %i.bi = tail call fastcc { i64, ptr } @_RINvXs3_NtCs6SYjS1KFWza_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDatayENtB6_15DeserializeSeed11deserializeQINtNtCsiWcPrHiWZDL_10serde_json2de12DeserializerNtNtB20_4read9SliceReadEECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef align 8 dereferenceable(56) %i.bh) #17, !noalias !3186 ; 2 uses
  %i.bj = extractvalue { i64, ptr } %i.bi, 0
  %i.bk = extractvalue { i64, ptr } %i.bi, 1      ; 2 uses
  %i.bl = trunc nuw i64 %i.bj to i1
  br i1 %i.bl, label %_RINvXs0_NvXNvNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtrees_1__NtBb_7HexNodeNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1F_7Visitor9visit_seqINtNtCsiWcPrHiWZDL_10serde_json2de9SeqAccessNtNtB3j_4read9SliceReadEECsiAynQAjgDuT_10xet_client.exit, label %bb.r
end_hunk_2
begin_hunk_3_@_RINvXs5_NtCsiWcPrHiWZDL_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de12Deserializer18deserialize_structNtNvXNvNvXs_NtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtreeNtB2A_17MerkleHashSubtreeNtB1l_11Deserialize11deserialize1__NtB2v_6HexRawB49_11deserialize9___VisitorECsiAynQAjgDuT_10xet_client:bb.a
  %i.ll = load i8, ptr %i.m, align 8, !range !7, !noalias !3562, !noundef !5
  %i.lm = trunc nuw i8 %i.ll to i1
  br i1 %i.lm, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt
  %i.ln = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.lo = load ptr, ptr %i.ln, align 8, !noalias !3562, !nonnull !5, !align !12, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !3562
  br label %bb.dx

bb.dv:                                            ; preds = %bb.dt
  %i.lp = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.lq = load i8, ptr %i.lp, align 1, !range !7, !noalias !3562, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !3562
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.dn
  %.sroa.087.0.i = phi i8 [ %i.lq, %bb.dv ], [ %.sroa.046.0.i.ph660, %bb.dn ]
  %.not117.i = icmp eq i8 %.sroa.052.0.i.ph, 2
  br i1 %.not117.i, label %bb.eb, label %bb.ef

bb.dx:                                            ; preds = %bb.ed, %bb.du
  %.sink.i46 = phi ptr [ %i.lw, %bb.ed ], [ %i.lo, %bb.du ]
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTjjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %bb.dz unwind label %bb.dy, !noalias !3566

bb.dy:                                            ; preds = %bb.dx
  %i.lr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTjjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.body169.i unwind label %bb.ea, !noalias !3566

bb.dz:                                            ; preds = %bb.dx
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTjjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTjjEEECsiAynQAjgDuT_10xet_client.exit.i47 unwind label %bb.dj, !noalias !3566

bb.ea:                                            ; preds = %bb.dy
  %i.ls = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !noalias !3566
  unreachable

bb.eb:                                            ; preds = %bb.dw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !3562
  invoke void @_RINvXNvNtNtCseHpJhTld930_5serde7private2de13missing_fieldINtB3_24MissingFieldDeserializerNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorENtNtCs6SYjS1KFWza_10serde_core2de12Deserializer15deserialize_anyNtNtB28_5impls11BoolVisitorECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 6)
          to label %bb.ec unwind label %bb.ds, !noalias !3566

bb.ec:                                            ; preds = %bb.eb
  %i.lt = load i8, ptr %i.l, align 8, !range !7, !noalias !3562, !noundef !5
  %i.lu = trunc nuw i8 %i.lt to i1
  br i1 %i.lu, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  %i.lv = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.lw = load ptr, ptr %i.lv, align 8, !noalias !3562, !nonnull !5, !align !12, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !3562
  br label %bb.dx

bb.ee:                                            ; preds = %bb.ec
  %i.lx = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.ly = load i8, ptr %i.lx, align 1, !range !7, !noalias !3562, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !3562
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %bb.dw
  %.sroa.092.0.i = phi i8 [ %i.ly, %bb.ee ], [ %.sroa.052.0.i.ph, %bb.dw ]
  %.sroa.093.i.sroa.0.0.copyload = load i64, ptr %i.q, align 8, !noalias !3562
  %.sroa.093.i.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.093.i.sroa.4.0.copyload = load ptr, ptr %.sroa.093.i.sroa.4.0..sroa_idx, align 8, !noalias !3562
  %.sroa.093.i.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.lz = load i64, ptr %.sroa.093.i.sroa.5.0..sroa_idx, align 8, !noalias !3562
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.31.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false), !noalias !3618
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !3562
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !3562
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !3562
  br label %_RINvXs0_NvXNvNvXs_NtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtreeNtBg_17MerkleHashSubtreeNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserialize1__NtBb_6HexRawB1O_11deserializeNtB6_9___VisitorNtB1Q_7Visitor9visit_mapINtNtCsiWcPrHiWZDL_10serde_json2de9MapAccessNtNtB40_4read9SliceReadEECsiAynQAjgDuT_10xet_client.exit

.loopexit:                                        ; preds = %bb.da, %.invoke, %bb.az, %bb.bn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtree7HexNodeEECsiAynQAjgDuT_10xet_client.exit.i48, %.loopexit421.i, %.loopexit419.i, %.loopexit201.i, %.loopexit203.i
  %.sroa.18.2 = phi ptr [ %.sroa.18.1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtree7HexNodeEECsiAynQAjgDuT_10xet_client.exit.i48 ], [ %i.kt, %.invoke ], [ %i.iu, %.loopexit203.i ], [ %i.ey, %bb.az ], [ %i.jm, %.loopexit201.i ], [ %i.fj, %bb.bn ], [ %i.kv, %.loopexit421.i ], [ %i.ke, %.loopexit419.i ], [ %i.ih, %bb.da ] ; 2 uses
  %.sroa.097.9.i = phi i1 [ %i.lc, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtree7HexNodeEECsiAynQAjgDuT_10xet_client.exit.i48 ], [ true, %.invoke ], [ true, %.loopexit203.i ], [ true, %bb.az ], [ true, %.loopexit201.i ], [ true, %bb.bn ], [ true, %.loopexit421.i ], [ true, %.loopexit419.i ], [ true, %bb.da ]
  %.sroa.099.6.i = phi i8 [ %.sroa.099.5.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtree7HexNodeEECsiAynQAjgDuT_10xet_client.exit.i48 ], [ 1, %.invoke ], [ 1, %.loopexit203.i ], [ 1, %bb.az ], [ 1, %.loopexit201.i ], [ 1, %bb.bn ], [ 1, %.loopexit421.i ], [ 1, %.loopexit419.i ], [ 1, %bb.da ] ; 3 uses
  %i.ma = load i64, ptr %i.v, align 8, !range !8, !noalias !3562, !noundef !5
  %i.mb = icmp ne i64 %i.ma, -1
  %or.cond.i = select i1 %i.mb, i1 %.sroa.097.9.i, i1 false
  br i1 %or.cond.i, label %bb.eh, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTjjEEECsiAynQAjgDuT_10xet_client.exit175.i

bb.eg:                                            ; preds = %bb.eq, %bb.ep, %bb.ds, %.body169.i
  %i.mc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !noalias !3566
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTjjEEECsiAynQAjgDuT_10xet_client.exit175.i: ; preds = %bb.ej, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !3562
  %i.md = load i64, ptr %i.w, align 8, !range !8, !noalias !3562, !noundef !5
  %i.me = icmp ne i64 %i.md, -1
  %i.mf = trunc nuw i8 %.sroa.099.6.i to i1
  %or.cond3.i = select i1 %i.me, i1 %i.mf, i1 false
  br i1 %or.cond3.i, label %bb.em, label %_RINvXs0_NvXNvNvXs_NtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtreeNtBg_17MerkleHashSubtreeNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserialize1__NtBb_6HexRawB1O_11deserializeNtB6_9___VisitorNtB1Q_7Visitor9visit_mapINtNtCsiWcPrHiWZDL_10serde_json2de9MapAccessNtNtB40_4read9SliceReadEECsiAynQAjgDuT_10xet_client.exit

bb.eh:                                            ; preds = %.loopexit
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTjjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %bb.ej unwind label %bb.ei, !noalias !3566

bb.ei:                                            ; preds = %bb.eh
  %i.mg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTjjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %.body173.i unwind label %bb.ek, !noalias !3566

bb.ej:                                            ; preds = %bb.eh
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTjjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTjjEEECsiAynQAjgDuT_10xet_client.exit175.i unwind label %bb.el, !noalias !3566

bb.ek:                                            ; preds = %bb.ei
  %i.mh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !noalias !3566
  unreachable

.body173.i:                                       ; preds = %bb.ep, %bb.el, %bb.ei, %.body166.i
  %.sroa.099.7.i = phi i8 [ %.sroa.099.1.i, %.body166.i ], [ %.sroa.099.1.i, %bb.ep ], [ %.sroa.099.6.i, %bb.ei ], [ %.sroa.099.6.i, %bb.el ]
  %.pn126.i = phi { ptr, i32 } [ %.pn124.i, %.body166.i ], [ %.pn124.i, %bb.ep ], [ %i.mg, %bb.ei ], [ %i.ml, %bb.el ] ; 2 uses
  %i.mi = load i64, ptr %i.w, align 8, !range !8, !noalias !3562, !noundef !5
  %i.mj = icmp ne i64 %i.mi, -1
  %i.mk = trunc nuw i8 %.sroa.099.7.i to i1
  %or.cond7.i = select i1 %i.mj, i1 %i.mk, i1 false
  br i1 %or.cond7.i, label %bb.eq, label %common.resume

bb.el:                                            ; preds = %bb.ej
  %i.ml = landingpad { ptr, i32 }
          cleanup
  br label %.body173.i

bb.em:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTjjEEECsiAynQAjgDuT_10xet_client.exit175.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtree7HexNodeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtree7HexNodeEECsiAynQAjgDuT_10xet_client.exit177.i unwind label %bb.en, !noalias !3566

bb.en:                                            ; preds = %bb.em
  %i.mm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtree7HexNodeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %common.resume unwind label %bb.eo, !noalias !3566

bb.eo:                                            ; preds = %bb.en
  %i.mn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !noalias !3566
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtree7HexNodeEECsiAynQAjgDuT_10xet_client.exit177.i: ; preds = %bb.em
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtree7HexNodeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w), !noalias !3566
  br label %_RINvXs0_NvXNvNvXs_NtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtreeNtBg_17MerkleHashSubtreeNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserialize1__NtBb_6HexRawB1O_11deserializeNtB6_9___VisitorNtB1Q_7Visitor9visit_mapINtNtCsiWcPrHiWZDL_10serde_json2de9MapAccessNtNtB40_4read9SliceReadEECsiAynQAjgDuT_10xet_client.exit

bb.ep:                                            ; preds = %.body166.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTjjEEECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef align 8 dereferenceable(24) %i.v) #14
          to label %.body173.i unwind label %bb.eg, !noalias !3566

bb.eq:                                            ; preds = %.body173.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtree7HexNodeEECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef align 8 dereferenceable(24) %i.w) #14
          to label %common.resume unwind label %bb.eg, !noalias !3566

_RINvXs0_NvXNvNvXs_NtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtreeNtBg_17MerkleHashSubtreeNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserialize1__NtBb_6HexRawB1O_11deserializeNtB6_9___VisitorNtB1Q_7Visitor9visit_mapINtNtCsiWcPrHiWZDL_10serde_json2de9MapAccessNtNtB40_4read9SliceReadEECsiAynQAjgDuT_10xet_client.exit: ; preds = %bb.ef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTjjEEECsiAynQAjgDuT_10xet_client.exit175.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtree7HexNodeEECsiAynQAjgDuT_10xet_client.exit177.i
  %.sroa.31.sroa.0.0 = phi i64 [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtree7HexNodeEECsiAynQAjgDuT_10xet_client.exit177.i ], [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTjjEEECsiAynQAjgDuT_10xet_client.exit175.i ], [ %i.lz, %bb.ef ]
  %.sroa.3159.0 = phi i8 [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtree7HexNodeEECsiAynQAjgDuT_10xet_client.exit177.i ], [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTjjEEECsiAynQAjgDuT_10xet_client.exit175.i ], [ %.sroa.087.0.i, %bb.ef ]
  %.sroa.18.3 = phi ptr [ %.sroa.18.2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtree7HexNodeEECsiAynQAjgDuT_10xet_client.exit177.i ], [ %.sroa.18.2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTjjEEECsiAynQAjgDuT_10xet_client.exit175.i ], [ %.sroa.093.i.sroa.4.0.copyload, %bb.ef ]
  %.sroa.056.3 = phi i64 [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtree7HexNodeEECsiAynQAjgDuT_10xet_client.exit177.i ], [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTjjEEECsiAynQAjgDuT_10xet_client.exit175.i ], [ %.sroa.093.i.sroa.0.0.copyload, %bb.ef ]
  %.sroa.32.0 = phi i8 [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtree7HexNodeEECsiAynQAjgDuT_10xet_client.exit177.i ], [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTjjEEECsiAynQAjgDuT_10xet_client.exit175.i ], [ %.sroa.092.0.i, %bb.ef ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !3562
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  %i.mo = load i8, ptr %i.bh, align 8, !noundef !5
  %i.mp = add i8 %i.mo, 1
  store i8 %i.mp, ptr %i.bh, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  store i64 %.sroa.056.3, ptr %i.aj, align 8
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %.sroa.18.3, ptr %.sroa.18.0..sroa_idx, align 8
  %.sroa.31.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store i64 %.sroa.31.sroa.0.0, ptr %.sroa.31.0..sroa_idx, align 8
  %.sroa.31.sroa.6.0..sroa.31.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.31.sroa.6.0..sroa.31.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.31.sroa.6, i64 24, i1 false)
  %.sroa.3159.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  store i8 %.sroa.3159.0, ptr %.sroa.3159.0..sroa_idx, align 8
  %.sroa.32.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 49
  store i8 %.sroa.32.0, ptr %.sroa.32.0..sroa_idx, align 1
  %i.mq = invoke noundef align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE7end_mapCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1)
          to label %bb.es unwind label %bb.er     ; 5 uses

bb.er:                                            ; preds = %_RINvXs0_NvXNvNvXs_NtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtreeNtBg_17MerkleHashSubtreeNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserialize1__NtBb_6HexRawB1O_11deserializeNtB6_9___VisitorNtB1Q_7Visitor9visit_mapINtNtCsiWcPrHiWZDL_10serde_json2de9MapAccessNtNtB40_4read9SliceReadEECsiAynQAjgDuT_10xet_client.exit
  %i.mr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNvXs_NtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtreeNtB14_17MerkleHashSubtreeNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserialize6HexRawNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorEECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef align 8 dereferenceable(56) %i.aj) #14
          to label %common.resume unwind label %bb.at

bb.es:                                            ; preds = %_RINvXs0_NvXNvNvXs_NtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtreeNtBg_17MerkleHashSubtreeNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserialize1__NtBb_6HexRawB1O_11deserializeNtB6_9___VisitorNtB1Q_7Visitor9visit_mapINtNtCsiWcPrHiWZDL_10serde_json2de9MapAccessNtNtB40_4read9SliceReadEECsiAynQAjgDuT_10xet_client.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ak, ptr noundef nonnull align 8 dereferenceable(56) %i.aj, i64 56, i1 false)
  %i.ms = getelementptr inbounds nuw i8, ptr %i.ak, i64 56
  store ptr %i.mq, ptr %i.ms, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  %i.mt = load i64, ptr %i.ak, align 8, !range !8, !noundef !5 ; 2 uses
  %i.mu = icmp eq i64 %i.mt, -1
  br i1 %i.mu, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %bb.es
  %.not = icmp eq ptr %i.mq, null
  br i1 %.not, label %.thread381, label %bb.ev

.thread381:                                       ; preds = %bb.et
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.sroa.421.0.copyload = load ptr, ptr %.sroa.421.0..sroa_idx, align 8
  %.sroa.522.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.522.0..sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.31.sroa.6)
  br label %.thread74

bb.eu:                                            ; preds = %bb.es
  %i.mv = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.mw = load ptr, ptr %i.mv, align 8, !nonnull !5, !align !12, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.31.sroa.6)
  %.not81 = icmp eq ptr %i.mq, null
  br i1 %.not81, label %.thread74, label %bb.ew

bb.ev:                                            ; preds = %bb.et
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.31.sroa.6)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNvXs_NtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtreeNtBI_17MerkleHashSubtreeNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserialize6HexRawECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef align 8 dereferenceable(56) %i.ak)
  br label %.thread74

.thread74:                                        ; preds = %.thread381, %bb.ev, %bb.ew, %bb.eu
  %.sroa.09.280 = phi i64 [ -1, %bb.eu ], [ -1, %bb.ew ], [ -1, %bb.ev ], [ %i.mt, %.thread381 ]
  %.sroa.10.279 = phi ptr [ %i.mw, %bb.eu ], [ %i.mw, %bb.ew ], [ %i.mq, %bb.ev ], [ %.sroa.421.0.copyload, %.thread381 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  br label %bb.av

bb.ew:                                            ; preds = %bb.eu
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorECsiAynQAjgDuT_10xet_client(ptr nonnull %i.mq)
  br label %.thread74

bb.ex:                                            ; preds = %bb.d, %bb.av
  %.sroa.10.3 = phi ptr [ %i.bc, %bb.d ], [ %.sroa.10.1, %bb.av ]
  %i.mx = call noundef nonnull align 8 ptr @_RINvMs0_NtCsiWcPrHiWZDL_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read9SliceReadE12fix_position0ECsiAynQAjgDuT_10xet_client(ptr noalias noundef nonnull align 8 %.sroa.10.3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1)
  %i.my = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.mx, ptr %i.my, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.ez

bb.ey:                                            ; preds = %bb.av
  %.sroa.526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.526.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.14, i64 40, i1 false)
  store i64 %.sroa.09.1, ptr %0, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.1, ptr %.sroa.425.0..sroa_idx, align 8
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ex, %bb.ey
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ez, %.loopexit87, %bb.an
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs5_NtCsiWcPrHiWZDL_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de12Deserializer18deserialize_structNtNvXNvNvXs_NtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtreeNtB2A_17MerkleHashSubtreeNtB1l_11Deserialize11deserializes_1__NtB2v_6BinRawB49_11deserialize9___VisitorECsiAynQAjgDuT_10xet_client(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(none) %4, i64 noundef range(i64 0, 576460752303423488) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 11 uses
  %i.k = alloca [16 x i8], align 8                ; 7 uses
  %i.l = alloca [16 x i8], align 8                ; 7 uses
  %i.m = alloca [16 x i8], align 8                ; 7 uses
  %i.n = alloca [24 x i8], align 8                ; 7 uses
  %i.o = alloca [24 x i8], align 8                ; 12 uses
  %i.p = alloca [24 x i8], align 8                ; 7 uses
  %i.q = alloca [24 x i8], align 8                ; 14 uses
  %i.r = alloca [16 x i8], align 8                ; 7 uses
  %i.s = alloca [16 x i8], align 8                ; 7 uses
  %i.t = alloca [24 x i8], align 8                ; 7 uses
  %i.u = alloca [24 x i8], align 8                ; 7 uses
  %i.v = alloca [24 x i8], align 8                ; 21 uses
  %i.w = alloca [24 x i8], align 8                ; 20 uses
  %i.x = alloca [16 x i8], align 8                ; 6 uses
  %i.y = alloca [16 x i8], align 8                ; 7 uses
  %i.z = alloca [16 x i8], align 8                ; 7 uses
  %i.aa = alloca [16 x i8], align 8               ; 7 uses
  %i.ab = alloca [16 x i8], align 8               ; 7 uses
  %i.ac = alloca [24 x i8], align 8               ; 7 uses
  %i.ad = alloca [16 x i8], align 8               ; 7 uses
  %i.ae = alloca [24 x i8], align 8               ; 7 uses
  %i.af = alloca [16 x i8], align 8               ; 7 uses
  %i.ag = alloca [24 x i8], align 8               ; 11 uses
  %i.ah = alloca [24 x i8], align 8               ; 10 uses
  %i.ai = alloca [16 x i8], align 8               ; 12 uses
  %i.aj = alloca [56 x i8], align 8               ; 10 uses
  %i.ak = alloca [64 x i8], align 8               ; 9 uses
  %.sroa.31.sroa.6 = alloca [24 x i8], align 8    ; 6 uses
  %i.al = alloca [24 x i8], align 8               ; 4 uses
  %i.am = alloca [56 x i8], align 8               ; 10 uses
  %i.an = alloca [64 x i8], align 8               ; 9 uses
  %.sroa.11.sroa.6 = alloca [24 x i8], align 8    ; 6 uses
  %i.ao = alloca [24 x i8], align 8               ; 4 uses
  %.sroa.14 = alloca [40 x i8], align 8           ; 6 uses
  %i.ap = alloca [24 x i8], align 8               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3749)
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.as = load i64, ptr %i.ar, align 8, !alias.scope !3750, !noundef !5 ; 2 uses
  %.promoted.i = load i64, ptr %i.aq, align 8, !alias.scope !3749 ; 2 uses
  %i.at = icmp ult i64 %.promoted.i, %i.as
  br i1 %i.at, label %.lr.ph.i, label %.loopexit87

.lr.ph.i:                                         ; preds = %bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !alias.scope !3750, !nonnull !5, !noundef !5
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.aw = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.az, %bb.c ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3751)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !noalias !3752, !noundef !5 ; 2 uses
  switch i8 %i.ay, label %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsiAynQAjgDuT_10xet_client.exit [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.az = add i64 %i.aw, 1                        ; 3 uses
  store i64 %i.az, ptr %i.aq, align 8, !alias.scope !3753
  %exitcond.not.i = icmp eq i64 %i.az, %i.as
  br i1 %exitcond.not.i, label %.loopexit87, label %bb.b

_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsiAynQAjgDuT_10xet_client.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14)
  switch i8 %i.ay, label %bb.d [
    i8 91, label %bb.e
    i8 123, label %bb.f
  ], !prof !28

.loopexit87:                                      ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  store i64 5, ptr %i.ap, align 8
  %i.ba = call noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.ap)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ba, ptr %i.bb, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.fa

bb.d:                                             ; preds = %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsiAynQAjgDuT_10xet_client.exit
  %i.bc = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE17peek_invalid_typeCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @106)
  br label %bb.ex

bb.e:                                             ; preds = %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsiAynQAjgDuT_10xet_client.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.be = load i8, ptr %i.bd, align 8, !noundef !5
  %i.bf = add i8 %i.be, -1                        ; 2 uses
  store i8 %i.bf, ptr %i.bd, align 8
  %i.bg = icmp eq i8 %i.bf, 0
  br i1 %i.bg, label %bb.g, label %bb.h, !prof !18

bb.f:                                             ; preds = %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsiAynQAjgDuT_10xet_client.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.bi = load i8, ptr %i.bh, align 8, !noundef !5
  %i.bj = add i8 %i.bi, -1                        ; 2 uses
  store i8 %i.bj, ptr %i.bh, align 8
  %i.bk = icmp eq i8 %i.bj, 0
  br i1 %i.bk, label %bb.aw, label %bb.ax, !prof !18

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  store i64 24, ptr %i.ao, align 8
  %i.bl = call noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.ao)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  br label %bb.an

bb.h:                                             ; preds = %bb.e
  %i.bm = add i64 %i.aw, 1
  store i64 %i.bm, ptr %i.aq, align 8, !alias.scope !3754
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  store ptr %1, ptr %i.ai, align 8, !noalias !3755
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i8 1, ptr %i.bn, align 8, !noalias !3755
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !3755
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3756)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3757)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !3758
  call fastcc void @_RINvNvXs7_NtCsiWcPrHiWZDL_10serde_json2deINtB8_9SeqAccesspENtNtCs6SYjS1KFWza_10serde_core2de9SeqAccess17next_element_seed16has_next_elementNtNtBa_4read9SliceReadECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.af, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ai), !noalias !3759
  %i.bo = load i8, ptr %i.af, align 8, !range !7, !noalias !3758, !noundef !5
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bq = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !noalias !3758, !nonnull !5, !align !12, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !3758
  br label %_RINvXs0_NvXNvNvXs_NtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtreeNtBg_17MerkleHashSubtreeNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserializes_1__NtBb_6BinRawB1O_11deserializeNtB6_9___VisitorNtB1Q_7Visitor9visit_seqINtNtCsiWcPrHiWZDL_10serde_json2de9SeqAccessNtNtB42_4read9SliceReadEECsiAynQAjgDuT_10xet_client.exit

bb.j:                                             ; preds = %bb.h
  %i.bs = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  %i.bt = load i8, ptr %i.bs, align 1, !range !7, !noalias !3758, !noundef !5
  %i.bu = trunc nuw i8 %i.bt to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !3758
  br i1 %i.bu, label %bb.k, label %bb.r

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !3758
  %i.bv = load ptr, ptr %i.ai, align 8, !alias.scope !3760, !noalias !3755, !nonnull !5, !align !12, !noundef !5
  call void @_RINvXsh_NtNtCs6SYjS1KFWza_10serde_core2de5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashyEENtB8_11Deserialize11deserializeQINtNtCsiWcPrHiWZDL_10serde_json2de12DeserializerNtNtB35_4read9SliceReadEECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ae, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.bv), !noalias !3761
  %i.bw = load i64, ptr %i.ae, align 8, !range !8, !noalias !3758, !noundef !5 ; 2 uses
  %i.bx = icmp eq i64 %i.bw, -1
  %i.by = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !noalias !3762 ; 2 uses
  br i1 %i.bx, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !3758
  br label %_RINvXs0_NvXNvNvXs_NtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtreeNtBg_17MerkleHashSubtreeNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserializes_1__NtBb_6BinRawB1O_11deserializeNtB6_9___VisitorNtB1Q_7Visitor9visit_seqINtNtCsiWcPrHiWZDL_10serde_json2de9SeqAccessNtNtB42_4read9SliceReadEECsiAynQAjgDuT_10xet_client.exit

bb.m:                                             ; preds = %bb.k
end_hunk_3
begin_hunk_4_@_RINvXs5_NtCsiWcPrHiWZDL_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de12Deserializer18deserialize_structNtNvXNvNvXs_NtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtreeNtB2A_17MerkleHashSubtreeNtB1l_11Deserialize11deserializes_1__NtB2v_6BinRawB49_11deserialize9___VisitorECsiAynQAjgDuT_10xet_client:bb.a
  %i.ll = load i8, ptr %i.m, align 8, !range !7, !noalias !3779, !noundef !5
  %i.lm = trunc nuw i8 %i.ll to i1
  br i1 %i.lm, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt
  %i.ln = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.lo = load ptr, ptr %i.ln, align 8, !noalias !3779, !nonnull !5, !align !12, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !3779
  br label %bb.dx

bb.dv:                                            ; preds = %bb.dt
  %i.lp = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.lq = load i8, ptr %i.lp, align 1, !range !7, !noalias !3779, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !3779
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.dn
  %.sroa.087.0.i = phi i8 [ %i.lq, %bb.dv ], [ %.sroa.046.0.i.ph660, %bb.dn ]
  %.not117.i = icmp eq i8 %.sroa.052.0.i.ph, 2
  br i1 %.not117.i, label %bb.eb, label %bb.ef

bb.dx:                                            ; preds = %bb.ed, %bb.du
  %.sink.i46 = phi ptr [ %i.lw, %bb.ed ], [ %i.lo, %bb.du ]
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTjjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %bb.dz unwind label %bb.dy, !noalias !3783

bb.dy:                                            ; preds = %bb.dx
  %i.lr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTjjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.body169.i unwind label %bb.ea, !noalias !3783

bb.dz:                                            ; preds = %bb.dx
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTjjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTjjEEECsiAynQAjgDuT_10xet_client.exit.i47 unwind label %bb.dj, !noalias !3783

bb.ea:                                            ; preds = %bb.dy
  %i.ls = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !noalias !3783
  unreachable

bb.eb:                                            ; preds = %bb.dw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !3779
  invoke void @_RINvXNvNtNtCseHpJhTld930_5serde7private2de13missing_fieldINtB3_24MissingFieldDeserializerNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorENtNtCs6SYjS1KFWza_10serde_core2de12Deserializer15deserialize_anyNtNtB28_5impls11BoolVisitorECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 6)
          to label %bb.ec unwind label %bb.ds, !noalias !3783

bb.ec:                                            ; preds = %bb.eb
  %i.lt = load i8, ptr %i.l, align 8, !range !7, !noalias !3779, !noundef !5
  %i.lu = trunc nuw i8 %i.lt to i1
  br i1 %i.lu, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  %i.lv = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.lw = load ptr, ptr %i.lv, align 8, !noalias !3779, !nonnull !5, !align !12, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !3779
  br label %bb.dx

bb.ee:                                            ; preds = %bb.ec
  %i.lx = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.ly = load i8, ptr %i.lx, align 1, !range !7, !noalias !3779, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !3779
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %bb.dw
  %.sroa.092.0.i = phi i8 [ %i.ly, %bb.ee ], [ %.sroa.052.0.i.ph, %bb.dw ]
  %.sroa.093.i.sroa.0.0.copyload = load i64, ptr %i.q, align 8, !noalias !3779
  %.sroa.093.i.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.093.i.sroa.4.0.copyload = load ptr, ptr %.sroa.093.i.sroa.4.0..sroa_idx, align 8, !noalias !3779
  %.sroa.093.i.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.lz = load i64, ptr %.sroa.093.i.sroa.5.0..sroa_idx, align 8, !noalias !3779
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.31.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false), !noalias !3835
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !3779
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !3779
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !3779
  br label %_RINvXs0_NvXNvNvXs_NtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtreeNtBg_17MerkleHashSubtreeNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserializes_1__NtBb_6BinRawB1O_11deserializeNtB6_9___VisitorNtB1Q_7Visitor9visit_mapINtNtCsiWcPrHiWZDL_10serde_json2de9MapAccessNtNtB42_4read9SliceReadEECsiAynQAjgDuT_10xet_client.exit

.loopexit:                                        ; preds = %bb.da, %.invoke, %bb.az, %bb.bn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashyEEECsiAynQAjgDuT_10xet_client.exit.i48, %.loopexit421.i, %.loopexit419.i, %.loopexit201.i, %.loopexit203.i
  %.sroa.18.2 = phi ptr [ %.sroa.18.1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashyEEECsiAynQAjgDuT_10xet_client.exit.i48 ], [ %i.kt, %.invoke ], [ %i.iu, %.loopexit203.i ], [ %i.ey, %bb.az ], [ %i.jm, %.loopexit201.i ], [ %i.fj, %bb.bn ], [ %i.kv, %.loopexit421.i ], [ %i.ke, %.loopexit419.i ], [ %i.ih, %bb.da ] ; 2 uses
  %.sroa.097.9.i = phi i1 [ %i.lc, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashyEEECsiAynQAjgDuT_10xet_client.exit.i48 ], [ true, %.invoke ], [ true, %.loopexit203.i ], [ true, %bb.az ], [ true, %.loopexit201.i ], [ true, %bb.bn ], [ true, %.loopexit421.i ], [ true, %.loopexit419.i ], [ true, %bb.da ]
  %.sroa.099.6.i = phi i8 [ %.sroa.099.5.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashyEEECsiAynQAjgDuT_10xet_client.exit.i48 ], [ 1, %.invoke ], [ 1, %.loopexit203.i ], [ 1, %bb.az ], [ 1, %.loopexit201.i ], [ 1, %bb.bn ], [ 1, %.loopexit421.i ], [ 1, %.loopexit419.i ], [ 1, %bb.da ] ; 3 uses
  %i.ma = load i64, ptr %i.v, align 8, !range !8, !noalias !3779, !noundef !5
  %i.mb = icmp ne i64 %i.ma, -1
  %or.cond.i = select i1 %i.mb, i1 %.sroa.097.9.i, i1 false
  br i1 %or.cond.i, label %bb.eh, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTjjEEECsiAynQAjgDuT_10xet_client.exit175.i

bb.eg:                                            ; preds = %bb.eq, %bb.ep, %bb.ds, %.body169.i
  %i.mc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !noalias !3783
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTjjEEECsiAynQAjgDuT_10xet_client.exit175.i: ; preds = %bb.ej, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !3779
  %i.md = load i64, ptr %i.w, align 8, !range !8, !noalias !3779, !noundef !5
  %i.me = icmp ne i64 %i.md, -1
  %i.mf = trunc nuw i8 %.sroa.099.6.i to i1
  %or.cond3.i = select i1 %i.me, i1 %i.mf, i1 false
  br i1 %or.cond3.i, label %bb.em, label %_RINvXs0_NvXNvNvXs_NtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtreeNtBg_17MerkleHashSubtreeNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserializes_1__NtBb_6BinRawB1O_11deserializeNtB6_9___VisitorNtB1Q_7Visitor9visit_mapINtNtCsiWcPrHiWZDL_10serde_json2de9MapAccessNtNtB42_4read9SliceReadEECsiAynQAjgDuT_10xet_client.exit

bb.eh:                                            ; preds = %.loopexit
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTjjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %bb.ej unwind label %bb.ei, !noalias !3783

bb.ei:                                            ; preds = %bb.eh
  %i.mg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTjjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %.body173.i unwind label %bb.ek, !noalias !3783

bb.ej:                                            ; preds = %bb.eh
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTjjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTjjEEECsiAynQAjgDuT_10xet_client.exit175.i unwind label %bb.el, !noalias !3783

bb.ek:                                            ; preds = %bb.ei
  %i.mh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !noalias !3783
  unreachable

.body173.i:                                       ; preds = %bb.ep, %bb.el, %bb.ei, %.body166.i
  %.sroa.099.7.i = phi i8 [ %.sroa.099.1.i, %.body166.i ], [ %.sroa.099.1.i, %bb.ep ], [ %.sroa.099.6.i, %bb.ei ], [ %.sroa.099.6.i, %bb.el ]
  %.pn126.i = phi { ptr, i32 } [ %.pn124.i, %.body166.i ], [ %.pn124.i, %bb.ep ], [ %i.mg, %bb.ei ], [ %i.ml, %bb.el ] ; 2 uses
  %i.mi = load i64, ptr %i.w, align 8, !range !8, !noalias !3779, !noundef !5
  %i.mj = icmp ne i64 %i.mi, -1
  %i.mk = trunc nuw i8 %.sroa.099.7.i to i1
  %or.cond7.i = select i1 %i.mj, i1 %i.mk, i1 false
  br i1 %or.cond7.i, label %bb.eq, label %common.resume

bb.el:                                            ; preds = %bb.ej
  %i.ml = landingpad { ptr, i32 }
          cleanup
  br label %.body173.i

bb.em:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTjjEEECsiAynQAjgDuT_10xet_client.exit175.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashyEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashyEEECsiAynQAjgDuT_10xet_client.exit177.i unwind label %bb.en, !noalias !3783

bb.en:                                            ; preds = %bb.em
  %i.mm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashyEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %common.resume unwind label %bb.eo, !noalias !3783

bb.eo:                                            ; preds = %bb.en
  %i.mn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !noalias !3783
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashyEEECsiAynQAjgDuT_10xet_client.exit177.i: ; preds = %bb.em
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashyEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w), !noalias !3783
  br label %_RINvXs0_NvXNvNvXs_NtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtreeNtBg_17MerkleHashSubtreeNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserializes_1__NtBb_6BinRawB1O_11deserializeNtB6_9___VisitorNtB1Q_7Visitor9visit_mapINtNtCsiWcPrHiWZDL_10serde_json2de9MapAccessNtNtB42_4read9SliceReadEECsiAynQAjgDuT_10xet_client.exit

bb.ep:                                            ; preds = %.body166.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTjjEEECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef align 8 dereferenceable(24) %i.v) #14
          to label %.body173.i unwind label %bb.eg, !noalias !3783

bb.eq:                                            ; preds = %.body173.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashyEEECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef align 8 dereferenceable(24) %i.w) #14
          to label %common.resume unwind label %bb.eg, !noalias !3783

_RINvXs0_NvXNvNvXs_NtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtreeNtBg_17MerkleHashSubtreeNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserializes_1__NtBb_6BinRawB1O_11deserializeNtB6_9___VisitorNtB1Q_7Visitor9visit_mapINtNtCsiWcPrHiWZDL_10serde_json2de9MapAccessNtNtB42_4read9SliceReadEECsiAynQAjgDuT_10xet_client.exit: ; preds = %bb.ef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTjjEEECsiAynQAjgDuT_10xet_client.exit175.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashyEEECsiAynQAjgDuT_10xet_client.exit177.i
  %.sroa.31.sroa.0.0 = phi i64 [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashyEEECsiAynQAjgDuT_10xet_client.exit177.i ], [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTjjEEECsiAynQAjgDuT_10xet_client.exit175.i ], [ %i.lz, %bb.ef ]
  %.sroa.3159.0 = phi i8 [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashyEEECsiAynQAjgDuT_10xet_client.exit177.i ], [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTjjEEECsiAynQAjgDuT_10xet_client.exit175.i ], [ %.sroa.087.0.i, %bb.ef ]
  %.sroa.18.3 = phi ptr [ %.sroa.18.2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashyEEECsiAynQAjgDuT_10xet_client.exit177.i ], [ %.sroa.18.2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTjjEEECsiAynQAjgDuT_10xet_client.exit175.i ], [ %.sroa.093.i.sroa.4.0.copyload, %bb.ef ]
  %.sroa.056.3 = phi i64 [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashyEEECsiAynQAjgDuT_10xet_client.exit177.i ], [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTjjEEECsiAynQAjgDuT_10xet_client.exit175.i ], [ %.sroa.093.i.sroa.0.0.copyload, %bb.ef ]
  %.sroa.32.0 = phi i8 [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashyEEECsiAynQAjgDuT_10xet_client.exit177.i ], [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTjjEEECsiAynQAjgDuT_10xet_client.exit175.i ], [ %.sroa.092.0.i, %bb.ef ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !3779
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  %i.mo = load i8, ptr %i.bh, align 8, !noundef !5
  %i.mp = add i8 %i.mo, 1
  store i8 %i.mp, ptr %i.bh, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  store i64 %.sroa.056.3, ptr %i.aj, align 8
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %.sroa.18.3, ptr %.sroa.18.0..sroa_idx, align 8
  %.sroa.31.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store i64 %.sroa.31.sroa.0.0, ptr %.sroa.31.0..sroa_idx, align 8
  %.sroa.31.sroa.6.0..sroa.31.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.31.sroa.6.0..sroa.31.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.31.sroa.6, i64 24, i1 false)
  %.sroa.3159.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  store i8 %.sroa.3159.0, ptr %.sroa.3159.0..sroa_idx, align 8
  %.sroa.32.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 49
  store i8 %.sroa.32.0, ptr %.sroa.32.0..sroa_idx, align 1
  %i.mq = invoke noundef align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE7end_mapCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1)
          to label %bb.es unwind label %bb.er     ; 5 uses

bb.er:                                            ; preds = %_RINvXs0_NvXNvNvXs_NtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtreeNtBg_17MerkleHashSubtreeNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserializes_1__NtBb_6BinRawB1O_11deserializeNtB6_9___VisitorNtB1Q_7Visitor9visit_mapINtNtCsiWcPrHiWZDL_10serde_json2de9MapAccessNtNtB42_4read9SliceReadEECsiAynQAjgDuT_10xet_client.exit
  %i.mr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNvXs_NtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtreeNtB14_17MerkleHashSubtreeNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserialize6BinRawNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorEECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef align 8 dereferenceable(56) %i.aj) #14
          to label %common.resume unwind label %bb.at

bb.es:                                            ; preds = %_RINvXs0_NvXNvNvXs_NtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtreeNtBg_17MerkleHashSubtreeNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserializes_1__NtBb_6BinRawB1O_11deserializeNtB6_9___VisitorNtB1Q_7Visitor9visit_mapINtNtCsiWcPrHiWZDL_10serde_json2de9MapAccessNtNtB42_4read9SliceReadEECsiAynQAjgDuT_10xet_client.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ak, ptr noundef nonnull align 8 dereferenceable(56) %i.aj, i64 56, i1 false)
  %i.ms = getelementptr inbounds nuw i8, ptr %i.ak, i64 56
  store ptr %i.mq, ptr %i.ms, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  %i.mt = load i64, ptr %i.ak, align 8, !range !8, !noundef !5 ; 2 uses
  %i.mu = icmp eq i64 %i.mt, -1
  br i1 %i.mu, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %bb.es
  %.not = icmp eq ptr %i.mq, null
  br i1 %.not, label %.thread381, label %bb.ev

.thread381:                                       ; preds = %bb.et
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.sroa.421.0.copyload = load ptr, ptr %.sroa.421.0..sroa_idx, align 8
  %.sroa.522.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.522.0..sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.31.sroa.6)
  br label %.thread74

bb.eu:                                            ; preds = %bb.es
  %i.mv = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.mw = load ptr, ptr %i.mv, align 8, !nonnull !5, !align !12, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.31.sroa.6)
  %.not81 = icmp eq ptr %i.mq, null
  br i1 %.not81, label %.thread74, label %bb.ew

bb.ev:                                            ; preds = %bb.et
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.31.sroa.6)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNvXs_NtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtreeNtBI_17MerkleHashSubtreeNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserialize6BinRawECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef align 8 dereferenceable(56) %i.ak)
  br label %.thread74

.thread74:                                        ; preds = %.thread381, %bb.ev, %bb.ew, %bb.eu
  %.sroa.09.280 = phi i64 [ -1, %bb.eu ], [ -1, %bb.ew ], [ -1, %bb.ev ], [ %i.mt, %.thread381 ]
  %.sroa.10.279 = phi ptr [ %i.mw, %bb.eu ], [ %i.mw, %bb.ew ], [ %i.mq, %bb.ev ], [ %.sroa.421.0.copyload, %.thread381 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  br label %bb.av

bb.ew:                                            ; preds = %bb.eu
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorECsiAynQAjgDuT_10xet_client(ptr nonnull %i.mq)
  br label %.thread74

bb.ex:                                            ; preds = %bb.d, %bb.av
  %.sroa.10.3 = phi ptr [ %i.bc, %bb.d ], [ %.sroa.10.1, %bb.av ]
  %i.mx = call noundef nonnull align 8 ptr @_RINvMs0_NtCsiWcPrHiWZDL_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read9SliceReadE12fix_position0ECsiAynQAjgDuT_10xet_client(ptr noalias noundef nonnull align 8 %.sroa.10.3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1)
  %i.my = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.mx, ptr %i.my, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.ez

bb.ey:                                            ; preds = %bb.av
  %.sroa.526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.526.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.14, i64 40, i1 false)
  store i64 %.sroa.09.1, ptr %0, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.1, ptr %.sroa.425.0..sroa_idx, align 8
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ex, %bb.ey
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ez, %.loopexit87, %bb.an
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs7_NtCsiWcPrHiWZDL_10serde_json2deINtB6_9SeqAccessNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de9SeqAccess17next_element_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataINtNtB2j_6option6OptionNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtree17MerkleHashSubtreeEEECsiAynQAjgDuT_10xet_client(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call fastcc void @_RINvNvXs7_NtCsiWcPrHiWZDL_10serde_json2deINtB8_9SeqAccesspENtNtCs6SYjS1KFWza_10serde_core2de9SeqAccess17next_element_seed16has_next_elementNtNtBa_4read9SliceReadECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.b, ptr noalias nofree noundef align 8 dereferenceable(16) %1)
  %i.c = load i8, ptr %i.b, align 8, !range !7, !noundef !5
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !5, !align !12, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.g, align 8
  store i64 -3, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.i = load i8, ptr %i.h, align 1, !range !7, !noundef !5
  %i.j = trunc nuw i8 %i.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 -2, ptr %0, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.k = load ptr, ptr %1, align 8, !nonnull !5, !align !12, !noundef !5
  call void @_RINvXse_NtNtCs6SYjS1KFWza_10serde_core2de5implsINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtree17MerkleHashSubtreeENtB8_11Deserialize11deserializeQINtNtCsiWcPrHiWZDL_10serde_json2de12DeserializerNtNtB3s_4read9SliceReadEECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.k)
  %i.l = load i64, ptr %i.a, align 8, !range !3836, !noundef !5
  %i.m = icmp eq i64 %i.l, -2
  br i1 %i.m, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.h, %bb.g, %bb.d, %bb.b
  ret void

bb.g:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !5, !align !12, !noundef !5
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.o, ptr %i.p, align 8
  store i64 -3, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.h:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %i.a, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs7_NtCsiWcPrHiWZDL_10serde_json2deINtB6_9SeqAccessNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de9SeqAccess17next_element_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtCsiAynQAjgDuT_10xet_client9cas_types11ChunkWindowEEB30_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call fastcc void @_RINvNvXs7_NtCsiWcPrHiWZDL_10serde_json2deINtB8_9SeqAccesspENtNtCs6SYjS1KFWza_10serde_core2de9SeqAccess17next_element_seed16has_next_elementNtNtBa_4read9SliceReadECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.b, ptr noalias nofree noundef align 8 dereferenceable(16) %1)
  %i.c = load i8, ptr %i.b, align 8, !range !7, !noundef !5
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !5, !align !12, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.g, align 8
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.i = load i8, ptr %i.h, align 1, !range !7, !noundef !5
  %i.j = trunc nuw i8 %i.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 0, ptr %0, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.k = load ptr, ptr %1, align 8, !nonnull !5, !align !12, !noundef !5
  call void @_RINvXNvNtCsiAynQAjgDuT_10xet_client9cas_typessp_1__NtB5_11ChunkWindowNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserializeQINtNtCsiWcPrHiWZDL_10serde_json2de12DeserializerNtNtB28_4read9SliceReadEEB7_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.k)
  %i.l = load i64, ptr %i.a, align 8, !range !21, !noundef !5
  %i.m = trunc nuw i64 %i.l to i1
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.m, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.h, %bb.g, %bb.d, %bb.b
  ret void

bb.g:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !5, !align !12, !noundef !5
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.o, ptr %i.p, align 8
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.h:                                             ; preds = %bb.e
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.n, i64 16, i1 false)
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs7_NtCsiWcPrHiWZDL_10serde_json2deINtB6_9SeqAccessNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de9SeqAccess17next_element_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtCsiAynQAjgDuT_10xet_client9cas_types19XorbMultiRangeFetchEEB30_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call fastcc void @_RINvNvXs7_NtCsiWcPrHiWZDL_10serde_json2deINtB8_9SeqAccesspENtNtCs6SYjS1KFWza_10serde_core2de9SeqAccess17next_element_seed16has_next_elementNtNtBa_4read9SliceReadECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.b, ptr noalias nofree noundef align 8 dereferenceable(16) %1)
  %i.c = load i8, ptr %i.b, align 8, !range !7, !noundef !5
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !5, !align !12, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.g, align 8
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.i = load i8, ptr %i.h, align 1, !range !7, !noundef !5
  %i.j = trunc nuw i8 %i.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 -1, ptr %0, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.k = load ptr, ptr %1, align 8, !nonnull !5, !align !12, !noundef !5
  call void @_RINvXNvNtCsiAynQAjgDuT_10xet_client9cas_typessb_1__NtB5_19XorbMultiRangeFetchNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserializeQINtNtCsiWcPrHiWZDL_10serde_json2de12DeserializerNtNtB2g_4read9SliceReadEEB7_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.k)
  %i.l = load i64, ptr %i.a, align 8, !range !8, !noundef !5
  %i.m = icmp eq i64 %i.l, -1
  br i1 %i.m, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.h, %bb.g, %bb.d, %bb.b
  ret void

bb.g:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !5, !align !12, !noundef !5
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.o, ptr %i.p, align 8
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.h:                                             ; preds = %bb.e
end_hunk_4
begin_hunk_5_@_RINvYQINtNtCsiWcPrHiWZDL_10serde_json2de12DeserializerNtNtB9_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de12Deserializer24___deserialize_content_v1NtNtNtNtCseHpJhTld930_5serde7private2de7content14ContentVisitorECsiAynQAjgDuT_10xet_client:bb.a
  br i1 %.not.i46.1.i, label %bb.p, label %bb.r, !prof !23

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4357)
  %exitcond.not.i45.2.i = icmp eq i64 %i.ax, %umax.i43.i
  br i1 %exitcond.not.i45.2.i, label %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i49.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ay = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !noalias !4358, !noundef !5
  %i.ba = add i64 %i.y, 4
  store i64 %i.ba, ptr %i.s, align 8, !alias.scope !4359
  %.not.i46.2.i = icmp eq i8 %i.az, 101
  br i1 %.not.i46.2.i, label %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsiAynQAjgDuT_10xet_client.exit50.i, label %bb.r, !prof !23

_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i49.i: ; preds = %bb.p, %bb.n, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4360
  store i64 5, ptr %i.d, align 8, !noalias !4360
  %i.bb = call noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d), !noalias !4361
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4360
  br label %bb.ai

bb.r:                                             ; preds = %bb.q, %bb.o, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4360
  store i64 9, ptr %i.c, align 8, !noalias !4360
  %i.bc = call noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !noalias !4361
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4360
  br label %bb.ai

bb.s:                                             ; preds = %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsiAynQAjgDuT_10xet_client.exit.i
  %i.bd = add i64 %i.y, 1                         ; 4 uses
  store i64 %i.bd, ptr %i.s, align 8, !alias.scope !4362
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4363)
  %umax.i52.i = tail call i64 @llvm.umax.i64(i64 %i.u, i64 %i.bd) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4364)
  %exitcond.not.i54.not.i = icmp ult i64 %i.bd, %i.u
  br i1 %exitcond.not.i54.not.i, label %bb.t, label %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i58.i

bb.t:                                             ; preds = %bb.s
  %i.be = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !noalias !4365, !noundef !5
  %i.bg = add i64 %i.y, 2                         ; 3 uses
  store i64 %i.bg, ptr %i.s, align 8, !alias.scope !4366
  %.not.i55.i = icmp eq i8 %i.bf, 97
  br i1 %.not.i55.i, label %bb.u, label %bb.aa, !prof !23

bb.u:                                             ; preds = %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4367)
  %exitcond.not.i54.1.i = icmp eq i64 %i.bg, %umax.i52.i
  br i1 %exitcond.not.i54.1.i, label %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i58.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bh = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !noalias !4368, !noundef !5
  %i.bj = add i64 %i.y, 3                         ; 3 uses
  store i64 %i.bj, ptr %i.s, align 8, !alias.scope !4369
  %.not.i55.1.i = icmp eq i8 %i.bi, 108
  br i1 %.not.i55.1.i, label %bb.w, label %bb.aa, !prof !23

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4370)
  %exitcond.not.i54.2.i = icmp eq i64 %i.bj, %umax.i52.i
  br i1 %exitcond.not.i54.2.i, label %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i58.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bk = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !noalias !4371, !noundef !5
  %i.bm = add i64 %i.y, 4                         ; 3 uses
  store i64 %i.bm, ptr %i.s, align 8, !alias.scope !4372
  %.not.i55.2.i = icmp eq i8 %i.bl, 115
  br i1 %.not.i55.2.i, label %bb.y, label %bb.aa, !prof !23

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4373)
  %exitcond.not.i54.3.i = icmp eq i64 %i.bm, %umax.i52.i
  br i1 %exitcond.not.i54.3.i, label %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i58.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bn = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !noalias !4374, !noundef !5
  %i.bp = add i64 %i.y, 5
  store i64 %i.bp, ptr %i.s, align 8, !alias.scope !4375
  %.not.i55.3.i = icmp eq i8 %i.bo, 101
  br i1 %.not.i55.3.i, label %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsiAynQAjgDuT_10xet_client.exit59.i, label %bb.aa, !prof !23

_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i58.i: ; preds = %bb.y, %bb.w, %bb.u, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4376
  store i64 5, ptr %i.b, align 8, !noalias !4376
  %i.bq = call noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !4377
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4376
  br label %bb.aj

bb.aa:                                            ; preds = %bb.z, %bb.x, %bb.v, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4376
  store i64 9, ptr %i.a, align 8, !noalias !4376
  %i.br = call noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !4377
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4376
  br label %bb.aj

bb.ab:                                            ; preds = %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsiAynQAjgDuT_10xet_client.exit.i
  %i.bs = add i64 %i.y, 1
  store i64 %i.bs, ptr %i.s, align 8, !alias.scope !4378
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !4335
  call void @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE13parse_integerCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.p, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext false), !noalias !4327
  %i.bt = load i64, ptr %i.p, align 8, !range !16, !noalias !4335, !noundef !5 ; 2 uses
  %i.bu = icmp eq i64 %i.bt, -1
  %i.bv = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  br i1 %i.bu, label %bb.ak, label %switch.lookup

bb.ac:                                            ; preds = %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsiAynQAjgDuT_10xet_client.exit.i
  %i.bw = add i64 %i.y, 1
  store i64 %i.bw, ptr %i.s, align 8, !alias.scope !4379
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.bx, align 8, !alias.scope !4328
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !4335
  call void @_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read9parse_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1), !noalias !4327
  %i.by = load i64, ptr %i.n, align 8, !range !4, !noalias !4335, !noundef !5 ; 2 uses
  %i.bz = icmp eq i64 %i.by, 2
  %i.ca = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !noalias !4335 ; 4 uses
  br i1 %i.bz, label %bb.al, label %bb.am

bb.ad:                                            ; preds = %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsiAynQAjgDuT_10xet_client.exit.i
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.cd = load i8, ptr %i.cc, align 8, !alias.scope !4328, !noundef !5
  %i.ce = add i8 %i.cd, -1                        ; 2 uses
  store i8 %i.ce, ptr %i.cc, align 8, !alias.scope !4328
  %i.cf = icmp eq i8 %i.ce, 0
  br i1 %i.cf, label %bb.aq, label %bb.ar, !prof !18

bb.ae:                                            ; preds = %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsiAynQAjgDuT_10xet_client.exit.i
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.ch = load i8, ptr %i.cg, align 8, !alias.scope !4328, !noundef !5
  %i.ci = add i8 %i.ch, -1                        ; 2 uses
  store i8 %i.ci, ptr %i.cg, align 8, !alias.scope !4328
  %i.cj = icmp eq i8 %i.ci, 0
  br i1 %i.cj, label %bb.az, label %bb.ba, !prof !18

bb.af:                                            ; preds = %bb.k, %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i
  %.sroa.0.1.i.ph.i = phi ptr [ %i.ap, %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i ], [ %i.aq, %bb.k ]
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i.ph.i, ptr %i.ck, align 8, !alias.scope !4327
  store i8 -1, ptr %0, align 8, !alias.scope !4327
  br label %bb.ah

_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsiAynQAjgDuT_10xet_client.exit.i: ; preds = %bb.j
  store i8 18, ptr %i.q, align 8, !alias.scope !4380, !noalias !4335
  br label %.thread.i

bb.ag:                                            ; preds = %.thread90.i, %.thread87.i, %bb.ap
  %.pr.i.pr = load i8, ptr %i.q, align 8, !noalias !4335
  %i.cl = icmp eq i8 %.pr.i.pr, -1
  br i1 %i.cl, label %._crit_edge.i, label %.thread.i, !prof !4381

._crit_edge.i:                                    ; preds = %bb.ag
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !noalias !4335
  br label %bb.bj

bb.ah:                                            ; preds = %bb.bk, %bb.az, %bb.aq, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !4335
  br label %_RINvXs5_NtCsiWcPrHiWZDL_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de12Deserializer15deserialize_anyNtNtNtNtCseHpJhTld930_5serde7private2de7content14ContentVisitorECsiAynQAjgDuT_10xet_client.exit

bb.ai:                                            ; preds = %bb.r, %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i49.i
  %.sroa.0.1.i48.ph.i = phi ptr [ %i.bb, %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i49.i ], [ %i.bc, %bb.r ]
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i48.ph.i, ptr %i.cm, align 8, !alias.scope !4327
  store i8 -1, ptr %0, align 8, !alias.scope !4327
  br label %bb.ah

_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsiAynQAjgDuT_10xet_client.exit50.i: ; preds = %bb.q
  store i8 0, ptr %i.q, align 8, !alias.scope !4382, !noalias !4335
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  store i8 1, ptr %.sroa.4.0..sroa_idx.i.i, align 1, !alias.scope !4382, !noalias !4335
  br label %.thread.i

bb.aj:                                            ; preds = %bb.aa, %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i58.i
  %.sroa.0.1.i57.ph.i = phi ptr [ %i.bq, %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i58.i ], [ %i.br, %bb.aa ]
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i57.ph.i, ptr %i.cn, align 8, !alias.scope !4327
  store i8 -1, ptr %0, align 8, !alias.scope !4327
  br label %bb.ah

_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsiAynQAjgDuT_10xet_client.exit59.i: ; preds = %bb.z
  store i8 0, ptr %i.q, align 8, !alias.scope !4383, !noalias !4335
  %.sroa.4.0..sroa_idx.i60.i = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  store i8 0, ptr %.sroa.4.0..sroa_idx.i60.i, align 1, !alias.scope !4383, !noalias !4335
  br label %.thread.i

bb.ak:                                            ; preds = %bb.ab
  %i.co = load ptr, ptr %i.bv, align 8, !noalias !4335, !nonnull !5, !align !12, !noundef !5
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.co, ptr %i.cp, align 8, !alias.scope !4327
  store i8 -1, ptr %0, align 8, !alias.scope !4327
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !4335
  br label %bb.ah

switch.lookup:                                    ; preds = %bb.ab
  %.sroa.2.0.copyload.i = load i64, ptr %i.bv, align 8, !noalias !4335
  %.sroa.41.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %switch.cast = trunc nuw nsw i64 %i.bt to i24
  %switch.shiftamt = shl nuw nsw i24 %switch.cast, 3
  %switch.downshift = lshr i24 525322, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  store i8 %switch.masked, ptr %i.q, align 8, !alias.scope !4384, !noalias !4335
  store i64 %.sroa.2.0.copyload.i, ptr %.sroa.41.0..sroa_idx.i.i.i, align 8, !alias.scope !4384, !noalias !4335
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !4335
  br label %.thread.i

bb.al:                                            ; preds = %bb.ac
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cb, ptr %i.cq, align 8, !alias.scope !4327
  store i8 -1, ptr %0, align 8, !alias.scope !4327
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !4335
  br label %bb.ah

bb.am:                                            ; preds = %bb.ac
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !4335 ; 2 uses
  %i.cr = trunc nuw i64 %i.by to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cb) ]
  br i1 %i.cr, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  call void @_RINvXsj_NtNtNtCseHpJhTld930_5serde7private2de7contentNtB6_14ContentVisitorNtNtCs6SYjS1KFWza_10serde_core2de7Visitor9visit_strNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.q, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cb, i64 noundef %.sroa.4.0.copyload.i), !noalias !4327
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  store i8 13, ptr %i.q, align 8, !alias.scope !4385, !noalias !4335
  %.sroa.41.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.cb, ptr %.sroa.41.0..sroa_idx.i.i, align 8, !alias.scope !4385, !noalias !4335
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %.sroa.4.0.copyload.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !4385, !noalias !4335
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !4335
  br label %bb.ag

bb.aq:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !4335
  store i64 24, ptr %i.m, align 8, !noalias !4335
  %i.cs = call noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.m), !noalias !4327
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !4335
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cs, ptr %i.ct, align 8, !alias.scope !4327
  store i8 -1, ptr %0, align 8, !alias.scope !4327
  br label %bb.ah

bb.ar:                                            ; preds = %bb.ad
  %i.cu = add i64 %i.y, 1
  store i64 %i.cu, ptr %i.s, align 8, !alias.scope !4386
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !4335
  call void @_RINvXsj_NtNtNtCseHpJhTld930_5serde7private2de7contentNtB6_14ContentVisitorNtNtCs6SYjS1KFWza_10serde_core2de7Visitor9visit_seqINtNtCsiWcPrHiWZDL_10serde_json2de9SeqAccessNtNtB24_4read9SliceReadEECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext true), !noalias !4327
  %i.cv = load i8, ptr %i.cc, align 8, !alias.scope !4328, !noundef !5
  %i.cw = add i8 %i.cv, 1
  store i8 %i.cw, ptr %i.cc, align 8, !alias.scope !4328
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !4335
  %i.cx = invoke noundef align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE7end_seqCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1)
          to label %bb.at unwind label %bb.as, !noalias !4327 ; 5 uses

bb.as:                                            ; preds = %bb.ar
  %i.cy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorEECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef align 8 dereferenceable(32) %i.k) #14
          to label %bb.bm unwind label %bb.ax, !noalias !4327

bb.at:                                            ; preds = %bb.ar
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false), !noalias !4335
  %i.cz = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store ptr %i.cx, ptr %i.cz, align 8, !noalias !4335
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !4335
  %i.da = load i8, ptr %i.l, align 8, !range !9, !noalias !4335, !noundef !5
  %i.db = icmp eq i8 %i.da, -1
  br i1 %i.db, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %.not31.i = icmp eq ptr %i.cx, null
  br i1 %.not31.i, label %.thread114.i, label %bb.aw

.thread114.i:                                     ; preds = %bb.au
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false), !noalias !4335
  br label %.thread87.i

bb.av:                                            ; preds = %bb.at
  %i.dc = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8, !noalias !4335, !nonnull !5, !align !12, !noundef !5
  %i.de = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.dd, ptr %i.de, align 8, !noalias !4335
  store i8 -1, ptr %i.q, align 8, !noalias !4335
  %.not94.i = icmp eq ptr %i.cx, null
  br i1 %.not94.i, label %.thread87.i, label %bb.ay

bb.aw:                                            ; preds = %bb.au
  %i.df = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.cx, ptr %i.df, align 8, !noalias !4335
  store i8 -1, ptr %i.q, align 8, !noalias !4335
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef align 8 dereferenceable(32) %i.l), !noalias !4327
  br label %.thread87.i

bb.ax:                                            ; preds = %bb.bb, %bb.as
  %i.dg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !noalias !4327
  unreachable

.thread87.i:                                      ; preds = %bb.ay, %bb.aw, %bb.av, %.thread114.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !4335
  br label %bb.ag

bb.ay:                                            ; preds = %bb.av
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorECsiAynQAjgDuT_10xet_client(ptr nonnull %i.cx), !noalias !4327
  br label %.thread87.i

bb.az:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !4335
  store i64 24, ptr %i.j, align 8, !noalias !4335
  %i.dh = call noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.j), !noalias !4327
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !4335
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dh, ptr %i.di, align 8, !alias.scope !4327
  store i8 -1, ptr %0, align 8, !alias.scope !4327
  br label %bb.ah

bb.ba:                                            ; preds = %bb.ae
  %i.dj = add i64 %i.y, 1
  store i64 %i.dj, ptr %i.s, align 8, !alias.scope !4387
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !4335
  call void @_RINvXsj_NtNtNtCseHpJhTld930_5serde7private2de7contentNtB6_14ContentVisitorNtNtCs6SYjS1KFWza_10serde_core2de7Visitor9visit_mapINtNtCsiWcPrHiWZDL_10serde_json2de9MapAccessNtNtB24_4read9SliceReadEECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext true), !noalias !4327
  %i.dk = load i8, ptr %i.cg, align 8, !alias.scope !4328, !noundef !5
  %i.dl = add i8 %i.dk, 1
  store i8 %i.dl, ptr %i.cg, align 8, !alias.scope !4328
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !4335
  %i.dm = invoke noundef align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE7end_mapCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1)
          to label %bb.bc unwind label %bb.bb, !noalias !4327 ; 5 uses

bb.bb:                                            ; preds = %bb.ba
  %i.dn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorEECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef align 8 dereferenceable(32) %i.h) #14
          to label %bb.bm unwind label %bb.ax, !noalias !4327

bb.bc:                                            ; preds = %bb.ba
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false), !noalias !4335
  %i.do = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr %i.dm, ptr %i.do, align 8, !noalias !4335
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !4335
  %i.dp = load i8, ptr %i.i, align 8, !range !9, !noalias !4335, !noundef !5
  %i.dq = icmp eq i8 %i.dp, -1
  br i1 %i.dq, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %.not.i = icmp eq ptr %i.dm, null
  br i1 %.not.i, label %.thread116.i, label %bb.bf

.thread116.i:                                     ; preds = %bb.bd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false), !noalias !4335
  br label %.thread90.i

bb.be:                                            ; preds = %bb.bc
  %i.dr = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8, !noalias !4335, !nonnull !5, !align !12, !noundef !5
  %i.dt = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.ds, ptr %i.dt, align 8, !noalias !4335
  store i8 -1, ptr %i.q, align 8, !noalias !4335
  %.not93.i = icmp eq ptr %i.dm, null
  br i1 %.not93.i, label %.thread90.i, label %bb.bg

bb.bf:                                            ; preds = %bb.bd
  %i.du = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.dm, ptr %i.du, align 8, !noalias !4335
  store i8 -1, ptr %i.q, align 8, !noalias !4335
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs6SYjS1KFWza_10serde_core7private7content7ContentECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef align 8 dereferenceable(32) %i.i), !noalias !4327
  br label %.thread90.i

.thread90.i:                                      ; preds = %bb.bg, %bb.bf, %bb.be, %.thread116.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !4335
  br label %bb.ag

bb.bg:                                            ; preds = %bb.be
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorECsiAynQAjgDuT_10xet_client(ptr nonnull %i.dm), !noalias !4327
  br label %.thread90.i

bb.bh:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !4335
  store i64 10, ptr %i.g, align 8, !noalias !4335
  %i.dv = call noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.g), !noalias !4327
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !4335
  br label %bb.bj

bb.bi:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !4335
  call void @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE13parse_integerCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.o, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext true), !noalias !4327
  %i.dw = load i64, ptr %i.o, align 8, !range !16, !noalias !4335, !noundef !5 ; 2 uses
  %i.dx = icmp eq i64 %i.dw, -1
  %i.dy = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  br i1 %i.dx, label %bb.bk, label %switch.lookup31

bb.bj:                                            ; preds = %bb.bh, %._crit_edge.i
  %i.dz = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.dv, %bb.bh ]
  %i.ea = call noundef nonnull align 8 ptr @_RINvMs0_NtCsiWcPrHiWZDL_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read9SliceReadE12fix_position0ECsiAynQAjgDuT_10xet_client(ptr noalias noundef nonnull align 8 %i.dz, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1), !noalias !4327
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ea, ptr %i.eb, align 8, !alias.scope !4327
  store i8 -1, ptr %0, align 8, !alias.scope !4327
  br label %bb.bl

bb.bk:                                            ; preds = %bb.bi
  %i.ec = load ptr, ptr %i.dy, align 8, !noalias !4335, !nonnull !5, !align !12, !noundef !5
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ec, ptr %i.ed, align 8, !alias.scope !4327
  store i8 -1, ptr %0, align 8, !alias.scope !4327
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !4335
  br label %bb.ah

switch.lookup31:                                  ; preds = %bb.bi
  %.sroa.268.0.copyload.i = load i64, ptr %i.dy, align 8, !noalias !4335
  %.sroa.41.0..sroa_idx.i.i61.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %switch.cast32 = trunc nuw nsw i64 %i.dw to i24
  %switch.shiftamt33 = shl nuw nsw i24 %switch.cast32, 3
  %switch.downshift34 = lshr i24 525322, %switch.shiftamt33
  %switch.masked35 = trunc i24 %switch.downshift34 to i8
  store i8 %switch.masked35, ptr %i.q, align 8, !alias.scope !4388, !noalias !4335
  store i64 %.sroa.268.0.copyload.i, ptr %.sroa.41.0..sroa_idx.i.i61.i, align 8, !alias.scope !4388, !noalias !4335
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !4335
  br label %.thread.i

.thread.i:                                        ; preds = %switch.lookup, %switch.lookup31, %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsiAynQAjgDuT_10xet_client.exit59.i, %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsiAynQAjgDuT_10xet_client.exit50.i, %bb.ag, %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsiAynQAjgDuT_10xet_client.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 32, i1 false), !noalias !4328
  br label %bb.bl

bb.bl:                                            ; preds = %.thread.i, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !4335
  br label %_RINvXs5_NtCsiWcPrHiWZDL_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de12Deserializer15deserialize_anyNtNtNtNtCseHpJhTld930_5serde7private2de7content14ContentVisitorECsiAynQAjgDuT_10xet_client.exit

bb.bm:                                            ; preds = %bb.bb, %bb.as
  %.pn.i = phi { ptr, i32 } [ %i.dn, %bb.bb ], [ %i.cy, %bb.as ]
  resume { ptr, i32 } %.pn.i

_RINvXs5_NtCsiWcPrHiWZDL_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs6SYjS1KFWza_10serde_core2de12Deserializer15deserialize_anyNtNtNtNtCseHpJhTld930_5serde7private2de7content14ContentVisitorECsiAynQAjgDuT_10xet_client.exit: ; preds = %.loopexit.i, %bb.ah, %bb.bl
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = invoke { i64, i64 } @_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read13peek_position(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a)
          to label %bb.b unwind label %bb.d       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.c = extractvalue { i64, i64 } %i.b, 0
  %i.d = extractvalue { i64, i64 } %i.b, 1
  %i.e = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCsiWcPrHiWZDL_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %i.d)
  ret ptr %i.e

bb.c:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.f

bb.d:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsiWcPrHiWZDL_10serde_json5error9ErrorCodeECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef align 8 dereferenceable(24) %1) #14
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly captures(address) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !5
  %.promoted = load i64, ptr %i.d, align 8        ; 2 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %i.f, i64 %.promoted)
  %i.i = icmp samesign eq i64 %2, 0
  br i1 %i.i, label %.loopexit, label %.lr.ph

bb.b:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.01.09, i64 1 ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.c
  br i1 %i.k, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.01.09 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %i.l = phi i64 [ %i.o, %bb.b ], [ %.promoted, %bb.a ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4392)
  %exitcond.not = icmp eq i64 %i.l, %umax
  br i1 %exitcond.not, label %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !noalias !4393, !noundef !5
  %i.o = add i64 %i.l, 1                          ; 2 uses
  store i64 %i.o, ptr %i.d, align 8, !alias.scope !4392
  %i.p = load i8, ptr %.sroa.01.09, align 1, !noundef !5
  %.not = icmp eq i8 %i.n, %i.p
  br i1 %.not, label %bb.b, label %bb.d, !prof !13

_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit: ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 5, ptr %i.b, align 8
  %i.q = call noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.loopexit

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 9, ptr %i.a, align 8
  %i.r = call noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.a, %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit, %bb.d
  %.sroa.0.1 = phi ptr [ %i.r, %bb.d ], [ %i.q, %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit ], [ null, %bb.a ], [ null, %bb.b ]
  ret ptr %.sroa.0.1
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE12fix_positionCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef nonnull align 8 %1) unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RINvMs0_NtCsiWcPrHiWZDL_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read9SliceReadE12fix_position0ECsiAynQAjgDuT_10xet_client(ptr noalias noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE13parse_decimalCsiAynQAjgDuT_10xet_client(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 captures(address, read_provenance) dereferenceable(56) %1, i1 noundef zeroext %2, i64 noundef %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !4404, !noundef !5 ; 2 uses
  %i.g = add i64 %i.f, 1                          ; 3 uses
  store i64 %i.g, ptr %i.e, align 8, !alias.scope !4404
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !4405, !noundef !5 ; 3 uses
  %i.j = icmp ult i64 %i.g, %i.i
  br i1 %i.j, label %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.lr.ph, label %.thread.thread

_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.lr.ph: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !4405, !nonnull !5, !noundef !5
  %i.m = trunc i64 %i.f to i32
  %i.n = add i32 %i.m, 1                          ; 2 uses
  %i.o = trunc i64 %i.i to i32                    ; 2 uses
  %i.p = sub i32 %i.n, %i.o
  br label %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit

_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit: ; preds = %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.lr.ph, %bb.o
  %.sroa.0.060 = phi i64 [ %3, %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.lr.ph ], [ %i.be, %bb.o ] ; 6 uses
  %.sroa.07.059 = phi i32 [ 0, %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.lr.ph ], [ %i.bf, %bb.o ] ; 4 uses
  %i.q = phi i64 [ %i.g, %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.lr.ph ], [ %i.bc, %bb.o ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4405)
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !noalias !4406, !noundef !5 ; 2 uses
  %i.t = add i8 %i.s, -48                         ; 3 uses
  %or.cond = icmp ult i8 %i.t, 10
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit
  %i.u = icmp eq i32 %.sroa.07.059, 0
  br i1 %i.u, label %bb.d, label %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28

.thread:                                          ; preds = %bb.o
  %i.v = icmp eq i32 %i.n, %i.o
  br i1 %i.v, label %.thread.thread, label %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28.thread

_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28.thread: ; preds = %.thread
  %i.w = add i32 %i.p, %4
  br label %bb.e

bb.c:                                             ; preds = %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit
  %i.x = zext nneg i8 %i.t to i64
  %i.y = icmp ugt i64 %.sroa.0.060, 1844674407370955160
  br i1 %i.y, label %bb.n, label %bb.o

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 13, ptr %i.d, align 8
  %i.z = call noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.z, ptr %i.aa, align 8
  store i64 1, ptr %0, align 8
  br label %bb.m

.thread.thread:                                   ; preds = %bb.a, %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 5, ptr %i.c, align 8
  %i.ab = call noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ab, ptr %i.ac, align 8
  store i64 1, ptr %0, align 8
  br label %bb.m

_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28: ; preds = %bb.b
  %i.ad = add i32 %.sroa.07.059, %4               ; 2 uses
  switch i8 %i.s, label %bb.e [
    i8 101, label %bb.l
    i8 69, label %bb.l
  ]

bb.e:                                             ; preds = %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28.thread, %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28
  %.sroa.0.056 = phi i64 [ %i.be, %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28.thread ], [ %.sroa.0.060, %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28 ]
  %i.ae = phi i32 [ %i.w, %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28.thread ], [ %i.ad, %_RNvXs5_NtCsiWcPrHiWZDL_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4407)
end_hunk_5
