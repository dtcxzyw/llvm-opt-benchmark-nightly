Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_svg-9252d00a33f6f6d4.typst_svg.f56e30c74974af6c-cgu.0?download=true
inline.NumInlined: 2859
inline.NumDeleted: 1255
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_RNvMs2_NtNtCsbMQOdixSu6G_5image6codecs3pngINtB5_10PngEncoderQINtNtCs1xwejQucwHj_5alloc3vec3VechEE12encode_innerCsl4q486LaARA_9typst_svg:bb.a
  %.sroa.12310.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %.sroa.12310.0.copyload = load i64, ptr %.sroa.12310.0..sroa_idx, align 8, !alias.scope !6725, !noalias !6726 ; 2 uses
  %.sroa.18311.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %.sroa.18311.0.copyload = load i8, ptr %.sroa.18311.0..sroa_idx, align 8, !alias.scope !6725, !noalias !6726 ; 2 uses
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 33
  %.sroa.23.0.copyload = load i8, ptr %.sroa.23.0..sroa_idx, align 1, !alias.scope !6725, !noalias !6726 ; 2 uses
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 34
  %.sroa.24.0.copyload = load i8, ptr %.sroa.24.0..sroa_idx, align 2, !alias.scope !6725, !noalias !6726 ; 2 uses
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(45) %.sroa.25, ptr noundef nonnull align 1 dereferenceable(45) %.sroa.25.0..sroa_idx, i64 45, i1 false), !alias.scope !6725, !noalias !6726
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.21.i.i.sroa.23)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !6473
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs75Nu06PSjCb_3png6common4InfoECsl4q486LaARA_9typst_svg(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(448) %i.be), !noalias !6475
  %i.mn = icmp eq i32 %.sroa.7.0.copyload309, 2
  br i1 %i.mn, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs75Nu06PSjCb_3png7encoder13EncodingErrorEECsl4q486LaARA_9typst_svg.exit.i.i.i.i, %.loopexit496
  %.sroa.12310.2481 = phi i64 [ %.sroa.12310.0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs75Nu06PSjCb_3png7encoder13EncodingErrorEECsl4q486LaARA_9typst_svg.exit.i.i.i.i ], [ %.sroa.12310.0.copyload, %.loopexit496 ]
  %.sroa.18311.2480 = phi i8 [ %.sroa.18311.0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs75Nu06PSjCb_3png7encoder13EncodingErrorEECsl4q486LaARA_9typst_svg.exit.i.i.i.i ], [ %.sroa.18311.0.copyload, %.loopexit496 ]
  %.sroa.23.2479 = phi i8 [ %.sroa.23.0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs75Nu06PSjCb_3png7encoder13EncodingErrorEECsl4q486LaARA_9typst_svg.exit.i.i.i.i ], [ %.sroa.23.0.copyload, %.loopexit496 ]
  %.sroa.24.2478 = phi i8 [ %.sroa.24.0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs75Nu06PSjCb_3png7encoder13EncodingErrorEECsl4q486LaARA_9typst_svg.exit.i.i.i.i ], [ %.sroa.24.0.copyload, %.loopexit496 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  store i64 %.sroa.12310.2481, ptr %i.bc, align 8
  %.sroa.18311.24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store i8 %.sroa.18311.2480, ptr %.sroa.18311.24..sroa_idx, align 8
  %.sroa.23.24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 9
  store i8 %.sroa.23.2479, ptr %.sroa.23.24..sroa_idx, align 1
  %.sroa.24.24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 10
  store i8 %.sroa.24.2478, ptr %.sroa.24.24..sroa_idx, align 2
  %.sroa.25.24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %.sroa.25.24..sroa_idx, ptr noundef nonnull align 1 dereferenceable(13) %.sroa.25, i64 13, i1 false)
  %i.mo = invoke noundef nonnull ptr @_RNvXs2_NtCs75Nu06PSjCb_3png7encoderNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorINtNtBD_7convert4FromNtB5_13EncodingErrorE4from(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.bc)
          to label %bb.ly unwind label %bb.h

bb.ec:                                            ; preds = %.loopexit496
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.555.sroa.7, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5, i64 7, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(29) %.sroa.555.sroa.9.sroa.11, ptr noundef nonnull align 1 dereferenceable(29) %.sroa.25, i64 29, i1 false)
  %.sroa.25.64..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.25, i64 29
  %.sroa.7196.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 64 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7196.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.25.64..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.25)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.553.sroa.7, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.555.sroa.7, i64 7, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(29) %.sroa.553.sroa.9.sroa.12, ptr noundef nonnull align 1 dereferenceable(29) %.sroa.555.sroa.9.sroa.11, i64 29, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.555.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.555.sroa.9.sroa.11)
  %.sroa.4193.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4193.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.553.sroa.7, i64 7, i1 false)
  %.sroa.6195.sroa.9.0..sroa.6195.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(29) %.sroa.6195.sroa.9.0..sroa.6195.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(29) %.sroa.553.sroa.9.sroa.12, i64 29, i1 false)
  store i8 %i.ct, ptr %i.bd, align 8
  %.sroa.5194.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 4 uses
  store ptr null, ptr %.sroa.5194.0..sroa_idx, align 8
  %.sroa.6195.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 16 ; 4 uses
  %.sroa.6195.sroa.4.0..sroa.6195.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 20
  store <2 x i32> %i.mm, ptr %.sroa.6195.0..sroa_idx, align 8
  %.sroa.6195.sroa.5.0..sroa.6195.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  store i64 %.sroa.12310.0.copyload, ptr %.sroa.6195.sroa.5.0..sroa.6195.0..sroa_idx.sroa_idx, align 8
  %.sroa.6195.sroa.6.0..sroa.6195.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 32 ; 2 uses
  store i8 %.sroa.18311.0.copyload, ptr %.sroa.6195.sroa.6.0..sroa.6195.0..sroa_idx.sroa_idx, align 8
  %.sroa.6195.sroa.7.0..sroa.6195.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 33
  store i8 %.sroa.23.0.copyload, ptr %.sroa.6195.sroa.7.0..sroa.6195.0..sroa_idx.sroa_idx, align 1
  %.sroa.6195.sroa.8.0..sroa.6195.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 34
  store i8 %.sroa.24.0.copyload, ptr %.sroa.6195.sroa.8.0..sroa.6195.0..sroa_idx.sroa_idx, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.553.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.553.sroa.9.sroa.12)
  call void @llvm.experimental.noalias.scope.decl(metadata !6727)
  %i.mp = getelementptr inbounds nuw i8, ptr %i.bd, i64 65
  %i.mq = load i8, ptr %i.mp, align 1, !range !6730, !alias.scope !6727, !noalias !6731, !noundef !10
  %i.mr = icmp ne i8 %i.mq, 3
  %i.ms = load i8, ptr %.sroa.7196.0..sroa_idx, align 8, !range !358, !alias.scope !6727, !noalias !6731
  %i.mt = trunc nuw i8 %i.ms to i1
  %or.cond.i251 = select i1 %i.mr, i1 true, i1 %i.mt
  %.sink26.i.sroa.gep489.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  br i1 %or.cond.i251, label %bb.ed, label %bb.lo

bb.ed:                                            ; preds = %bb.ec
  %i.mu = getelementptr inbounds nuw i8, ptr %i.bd, i64 72
  %i.mv = getelementptr inbounds nuw i8, ptr %i.bd, i64 73
  %i.mw = load i8, ptr %i.mv, align 1, !range !358, !alias.scope !6727, !noalias !6731, !noundef !10
  %i.mx = trunc nuw i8 %i.mw to i1
  %i.my = trunc nuw i32 %.sroa.7.0.copyload309 to i1
  %or.cond = select i1 %i.mx, i1 %i.my, i1 false
  %i.mz = getelementptr inbounds nuw i8, ptr %i.bd, i64 53
  %i.na = load i8, ptr %i.mz, align 1, !range !357
  %.not.i = icmp eq i8 %i.na, 2
  %or.cond1081 = select i1 %or.cond, i1 %.not.i, i1 false
  br i1 %or.cond1081, label %bb.lo, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.nb = getelementptr inbounds nuw i8, ptr %i.bd, i64 28 ; 5 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.bd, i64 53 ; 3 uses
  %i.nd = load i8, ptr %i.nc, align 1, !range !357, !alias.scope !6727, !noalias !6731, !noundef !10
  %.not291.i = icmp eq i8 %i.nd, 2                ; 2 uses
  %.sroa.014.0.in.in.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.not291.i, i64 60, i64 36
  %.sroa.014.0.in.in.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.sroa.014.0.in.in.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v
  %.sroa.gep650 = getelementptr inbounds nuw i8, ptr %i.bd, i64 56
  %.sroa.gep650.val = load i32, ptr %.sroa.gep650, align 8
  %.sroa.6195.sroa.6.0..sroa.6195.0..sroa_idx.sroa_idx.val = load i32, ptr %.sroa.6195.sroa.6.0..sroa.6195.0..sroa_idx.sroa_idx, align 8
  %.sroa.013.0.in.i = select i1 %.not291.i, i32 %.sroa.gep650.val, i32 %.sroa.6195.sroa.6.0..sroa.6195.0..sroa_idx.sroa_idx.val
  %.sroa.014.0.in.i = load i32, ptr %.sroa.014.0.in.in.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !alias.scope !6727, !noalias !6731, !noundef !10
  %.sroa.014.0.i = zext i32 %.sroa.014.0.in.i to i64 ; 2 uses
  %i.ne = invoke noundef i64 @_RNvMs6_NtCs75Nu06PSjCb_3png7encoderNtB5_11PartialInfo25raw_row_length_from_width(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(52) %.sroa.6195.0..sroa_idx, i32 noundef %.sroa.013.0.in.i)
          to label %.noexc unwind label %bb.ln    ; 14 uses

.noexc:                                           ; preds = %bb.ee
  %i.nf = add i64 %i.ne, -1                       ; 23 uses
  %i.ng = mul i64 %i.nf, %.sroa.014.0.i           ; 3 uses
  %.not292.i = icmp eq i64 %i.ng, %3
  br i1 %.not292.i, label %bb.ef, label %bb.ek

bb.ef:                                            ; preds = %.noexc
  %.not.i.i.i252 = icmp slt i64 %i.nf, 0
  br i1 %.not.i.i.i252, label %bb.ej, label %bb.eg, !prof !20

bb.eg:                                            ; preds = %bb.ef
  %i.nh = icmp eq i64 %i.nf, 0                    ; 9 uses
  br i1 %i.nh, label %_RINvXs1_NtNtCs1xwejQucwHj_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsl4q486LaARA_9typst_svg.exit.i, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !6734
  %i.ni = call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.nf, i64 noundef range(i64 1, 17) 1) #31, !noalias !6734 ; 2 uses
  %i.nj = icmp eq ptr %i.ni, null
  br i1 %i.nj, label %bb.ej, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.nk = ptrtoint ptr %i.ni to i64
  br label %_RINvXs1_NtNtCs1xwejQucwHj_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsl4q486LaARA_9typst_svg.exit.i

bb.ej:                                            ; preds = %bb.eh, %bb.ef
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %bb.eh ], [ 0, %bb.ef ]
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.nf) #36
          to label %.noexc257 unwind label %bb.ln

.noexc257:                                        ; preds = %bb.ej
  unreachable

_RINvXs1_NtNtCs1xwejQucwHj_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsl4q486LaARA_9typst_svg.exit.i: ; preds = %bb.ei, %bb.eg
  %.sroa.10.0.i.i = phi i64 [ %i.nk, %bb.ei ], [ 1, %bb.eg ]
  %i.nl = inttoptr i64 %.sroa.10.0.i.i to ptr     ; 5 uses
  %i.nm = invoke noundef i8 @_RNvMs6_NtCs75Nu06PSjCb_3png7encoderNtB5_11PartialInfo17bpp_in_prediction(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(52) %.sroa.6195.0..sroa_idx)
          to label %bb.en unwind label %bb.em, !noalias !6739 ; 2 uses

bb.ek:                                            ; preds = %.noexc
  %.sroa.24324.sroa.22.0.extract.shift391 = lshr i64 %i.ng, 8
  br label %bb.lo

.body.i253:                                       ; preds = %bb.jy, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg.exit458.i, %bb.jg, %bb.jf, %.thread595.i, %bb.fv, %bb.fu, %bb.fg, %bb.ex, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_2io6cursor6CursorINtNtCs1xwejQucwHj_5alloc3vec3VechEEECsl4q486LaARA_9typst_svg.exit.sink.split.i.i, %bb.ew, %bb.em
  %.pn322.i = phi { ptr, i32 } [ %i.oz, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_2io6cursor6CursorINtNtCs1xwejQucwHj_5alloc3vec3VechEEECsl4q486LaARA_9typst_svg.exit.sink.split.i.i ], [ %lpad.thr_comm.split-lp.i, %bb.fg ], [ %.pn304.pn548.i, %bb.jg ], [ %.pn316.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg.exit458.i ], [ %lpad.phi602.i, %bb.fv ], [ %.pn304.ph.i, %.thread595.i ], [ %i.nn, %bb.em ], [ %i.oz, %bb.ew ], [ %i.pb, %bb.ex ], [ %lpad.phi602.i, %bb.fu ], [ %.pn304.pn548.i, %bb.jf ], [ %.pn316.i, %bb.jy ] ; 2 uses
  br i1 %i.nh, label %.body258, label %bb.el

bb.el:                                            ; preds = %.body.thread591.i, %.body.i253
  %.pn322593.i = phi { ptr, i32 } [ %.pn.i, %.body.thread591.i ], [ %.pn322.i, %.body.i253 ]
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.nl, i64 noundef %i.nf, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !6740
  br label %.body258

bb.em:                                            ; preds = %bb.fb, %bb.eo, %_RINvXs1_NtNtCs1xwejQucwHj_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsl4q486LaARA_9typst_svg.exit.i
  %i.nn = landingpad { ptr, i32 }
          cleanup
  br label %.body.i253

bb.en:                                            ; preds = %_RINvXs1_NtNtCs1xwejQucwHj_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsl4q486LaARA_9typst_svg.exit.i
  %i.no = getelementptr inbounds nuw i8, ptr %i.bd, i64 76
  %i.np = load i8, ptr %i.no, align 4, !range !6730, !alias.scope !6727, !noalias !6731, !noundef !10 ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.bd, i64 74
  %i.nr = load i8, ptr %i.nq, align 2, !range !357, !alias.scope !6727, !noalias !6731, !noundef !10
  switch i8 %i.nr, label %default.unreachable815 [
    i8 0, label %bb.eo
    i8 1, label %bb.ep
    i8 2, label %bb.ey
  ]

bb.eo:                                            ; preds = %bb.en
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !6743
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !6743
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !6743
  store i64 0, ptr %i.x, align 8, !noalias !6743
  %.sroa.434.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.434.0..sroa_idx.i, align 8, !noalias !6743
  %.sroa.535.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.535.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !6743
  invoke fastcc void @_RNvMs_NtCsidRW4tbWwi3_8fdeflate8compressINtB4_20StoredOnlyCompressorINtNtNtCs3oUPovFnLWP_4core2io6cursor6CursorINtNtCs1xwejQucwHj_5alloc3vec3VechEEE3newCsl4q486LaARA_9typst_svg(ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %i.y, ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.x)
          to label %bb.fc unwind label %bb.em, !noalias !6739

bb.ep:                                            ; preds = %bb.en
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !6743
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8488.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !6744
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6744
  invoke void @_RNvMCsfKc8T7pWkLT_12simd_adler32NtB2_7Adler323new(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c)
          to label %bb.eq unwind label %bb.ex, !noalias !6748

bb.eq:                                            ; preds = %bb.ep
  %i.ns = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ns, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false), !noalias !6744
  %i.nt = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 4 uses
  store i64 0, ptr %i.nt, align 8, !noalias !6744
  %i.nu = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 5 uses
  store i8 0, ptr %i.nu, align 8, !noalias !6744
  store i64 0, ptr %i.d, align 8, !noalias !6749
  store ptr inttoptr (i64 1 to ptr), ptr %.sink26.i.sroa.gep489.i, align 8, !noalias !6749
  %.sroa.7491.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 6 uses
  %.sroa.8492.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7491.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !6743
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6744
  call void @llvm.experimental.noalias.scope.decl(metadata !6750)
  call void @llvm.experimental.noalias.scope.decl(metadata !6753)
  call void @llvm.experimental.noalias.scope.decl(metadata !6756)
  call void @llvm.experimental.noalias.scope.decl(metadata !6759)
  call void @llvm.experimental.noalias.scope.decl(metadata !6762)
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsl4q486LaARA_9typst_svg(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.d, i64 noundef 0, i64 noundef 53, i64 noundef 1, i64 noundef 1)
          to label %_RINvNtNtCs1xwejQucwHj_5alloc2io6cursor15reserve_and_padNtNtB6_5alloc6GlobalECsl4q486LaARA_9typst_svg.exit.i.i.i.i.i.i unwind label %bb.ew, !noalias !6748

_RINvNtNtCs1xwejQucwHj_5alloc2io6cursor15reserve_and_padNtNtB6_5alloc6GlobalECsl4q486LaARA_9typst_svg.exit.i.i.i.i.i.i: ; preds = %bb.eq
  %i.nv = load i64, ptr %.sroa.7491.0..sroa_idx.i, align 8, !alias.scope !6764, !noalias !6767, !noundef !10 ; 3 uses
  %i.nw = icmp sgt i64 %i.nv, -1
  call void @llvm.assume(i1 %i.nw)
  %.val8.pre.i.i.i.i.i.i = load ptr, ptr %.sink26.i.sroa.gep489.i, align 8, !alias.scope !6771, !noalias !6767 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(53) %.val8.pre.i.i.i.i.i.i, ptr noundef nonnull readonly align 1 dereferenceable(53) @121, i64 range(i64 0, -9223372036854775808) 53, i1 false), !noalias !6772
  %i.nx = icmp samesign ult i64 %i.nv, 53
  br i1 %i.nx, label %bb.er, label %_RNvXs5_NtNtCs3oUPovFnLWP_4core2io6cursorINtB5_6CursorINtNtCs1xwejQucwHj_5alloc3vec3VechEENtNtB7_5write5Write9write_allCsl4q486LaARA_9typst_svg.exit.i.i.i

bb.er:                                            ; preds = %_RINvNtNtCs1xwejQucwHj_5alloc2io6cursor15reserve_and_padNtNtB6_5alloc6GlobalECsl4q486LaARA_9typst_svg.exit.i.i.i.i.i.i
  store i64 53, ptr %.sroa.7491.0..sroa_idx.i, align 8, !alias.scope !6771, !noalias !6767
  br label %_RNvXs5_NtNtCs3oUPovFnLWP_4core2io6cursorINtB5_6CursorINtNtCs1xwejQucwHj_5alloc3vec3VechEENtNtB7_5write5Write9write_allCsl4q486LaARA_9typst_svg.exit.i.i.i

_RNvXs5_NtNtCs3oUPovFnLWP_4core2io6cursorINtB5_6CursorINtNtCs1xwejQucwHj_5alloc3vec3VechEENtNtB7_5write5Write9write_allCsl4q486LaARA_9typst_svg.exit.i.i.i: ; preds = %bb.er, %_RINvNtNtCs1xwejQucwHj_5alloc2io6cursor15reserve_and_padNtNtB6_5alloc6GlobalECsl4q486LaARA_9typst_svg.exit.i.i.i.i.i.i
  %i.ny = phi i64 [ %i.nv, %_RINvNtNtCs1xwejQucwHj_5alloc2io6cursor15reserve_and_padNtNtB6_5alloc6GlobalECsl4q486LaARA_9typst_svg.exit.i.i.i.i.i.i ], [ 53, %bb.er ] ; 5 uses
  store i64 53, ptr %.sroa.8492.0..sroa_idx.i, align 8, !alias.scope !6773, !noalias !6774
  call void @llvm.experimental.noalias.scope.decl(metadata !6775)
  %i.nz = load i8, ptr %i.nu, align 8, !alias.scope !6778, !noalias !6744, !noundef !10 ; 2 uses
  %i.oa = and i8 %i.nz, 63
  %i.ob = zext nneg i8 %i.oa to i64
  %i.oc = shl i64 15, %i.ob
  %i.od = load i64, ptr %i.nt, align 8, !alias.scope !6778, !noalias !6744, !noundef !10
  %i.oe = or i64 %i.oc, %i.od                     ; 3 uses
  store i64 %i.oe, ptr %i.nt, align 8, !alias.scope !6778, !noalias !6744
  %i.of = add i8 %i.nz, 5                         ; 2 uses
  store i8 %i.of, ptr %i.nu, align 8, !alias.scope !6778, !noalias !6744
  %i.og = icmp ugt i8 %i.of, 63
  %.sroa.0486.0.copyload.pre689.i = load i64, ptr %i.d, align 8, !noalias !6779 ; 3 uses
  br i1 %i.og, label %bb.es, label %bb.fx

bb.es:                                            ; preds = %_RNvXs5_NtNtCs3oUPovFnLWP_4core2io6cursorINtB5_6CursorINtNtCs1xwejQucwHj_5alloc3vec3VechEENtNtB7_5write5Write9write_allCsl4q486LaARA_9typst_svg.exit.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !6780)
  call void @llvm.experimental.noalias.scope.decl(metadata !6783)
  call void @llvm.experimental.noalias.scope.decl(metadata !6786)
  call void @llvm.experimental.noalias.scope.decl(metadata !6789)
  call void @llvm.experimental.noalias.scope.decl(metadata !6791)
  %i.oh = icmp samesign ult i64 %.sroa.0486.0.copyload.pre689.i, 61
  br i1 %i.oh, label %bb.et, label %_RINvNtNtCs1xwejQucwHj_5alloc2io6cursor15reserve_and_padNtNtB6_5alloc6GlobalECsl4q486LaARA_9typst_svg.exit.i.i.i.i.i.i.i

bb.et:                                            ; preds = %bb.es
  %i.oi = sub nsw i64 61, %i.ny                   ; 2 uses
  %i.oj = sub nsw i64 %.sroa.0486.0.copyload.pre689.i, %i.ny
  %i.ok = icmp ugt i64 %i.oi, %i.oj
  br i1 %i.ok, label %bb.eu, label %_RINvNtNtCs1xwejQucwHj_5alloc2io6cursor15reserve_and_padNtNtB6_5alloc6GlobalECsl4q486LaARA_9typst_svg.exit.i.i.i.i.i.i.i, !prof !11

bb.eu:                                            ; preds = %bb.et
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsl4q486LaARA_9typst_svg(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.d, i64 noundef %i.ny, i64 noundef %i.oi, i64 noundef 1, i64 noundef 1)
          to label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsl4q486LaARA_9typst_svg.exit.i.i.i.i.i.i.i.i unwind label %bb.ew, !noalias !6748

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsl4q486LaARA_9typst_svg.exit.i.i.i.i.i.i.i.i: ; preds = %bb.eu
  %.pre.i.i.i = load i64, ptr %.sroa.7491.0..sroa_idx.i, align 8, !alias.scope !6794, !noalias !6795 ; 5 uses
  %i.ol = icmp sgt i64 %.pre.i.i.i, -1
  call void @llvm.assume(i1 %i.ol)
  %i.om = icmp samesign ult i64 %.pre.i.i.i, 53
  %.val8.pre.i.i.i.i.i.i.i.pre = load ptr, ptr %.sink26.i.sroa.gep489.i, align 8, !alias.scope !6799, !noalias !6795 ; 4 uses
  br i1 %i.om, label %_RINvNtNtCs1xwejQucwHj_5alloc2io6cursor15reserve_and_padNtNtB6_5alloc6GlobalECsl4q486LaARA_9typst_svg.exit.i.i.i.i.i.i.thread.i, label %_RINvNtNtCs1xwejQucwHj_5alloc2io6cursor15reserve_and_padNtNtB6_5alloc6GlobalECsl4q486LaARA_9typst_svg.exit.i.i.i.i.i.i.i

_RINvNtNtCs1xwejQucwHj_5alloc2io6cursor15reserve_and_padNtNtB6_5alloc6GlobalECsl4q486LaARA_9typst_svg.exit.i.i.i.i.i.i.thread.i: ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsl4q486LaARA_9typst_svg.exit.i.i.i.i.i.i.i.i
  %i.on = sub nuw nsw i64 53, %.pre.i.i.i
  %i.oo = getelementptr inbounds nuw i8, ptr %.val8.pre.i.i.i.i.i.i.i.pre, i64 %.pre.i.i.i
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.oo, i8 0, i64 range(i64 0, -9223372036854775808) %i.on, i1 false), !alias.scope !6800, !noalias !6803
  %i.op = getelementptr inbounds nuw i8, ptr %.val8.pre.i.i.i.i.i.i.i.pre, i64 53
  store i64 %i.oe, ptr %i.op, align 1, !noalias !6804
  br label %bb.ev

_RINvNtNtCs1xwejQucwHj_5alloc2io6cursor15reserve_and_padNtNtB6_5alloc6GlobalECsl4q486LaARA_9typst_svg.exit.i.i.i.i.i.i.i: ; preds = %bb.es, %bb.et, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsl4q486LaARA_9typst_svg.exit.i.i.i.i.i.i.i.i
  %.val8.pre.i.i.i.i.i.i.i = phi ptr [ %.val8.pre.i.i.i.i.i.i.i.pre, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsl4q486LaARA_9typst_svg.exit.i.i.i.i.i.i.i.i ], [ %.val8.pre.i.i.i.i.i.i, %bb.et ], [ %.val8.pre.i.i.i.i.i.i, %bb.es ] ; 3 uses
  %i.oq = phi i64 [ %.pre.i.i.i, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsl4q486LaARA_9typst_svg.exit.i.i.i.i.i.i.i.i ], [ %i.ny, %bb.et ], [ %i.ny, %bb.es ]
  %i.or = getelementptr inbounds nuw i8, ptr %.val8.pre.i.i.i.i.i.i.i, i64 53
  store i64 %i.oe, ptr %i.or, align 1, !noalias !6804
  %i.os = icmp samesign ult i64 %i.oq, 61
  br i1 %i.os, label %bb.ev, label %_RNvXs5_NtNtCs3oUPovFnLWP_4core2io6cursorINtB5_6CursorINtNtCs1xwejQucwHj_5alloc3vec3VechEENtNtB7_5write5Write9write_allCsl4q486LaARA_9typst_svg.exit.i.i.i.i

bb.ev:                                            ; preds = %_RINvNtNtCs1xwejQucwHj_5alloc2io6cursor15reserve_and_padNtNtB6_5alloc6GlobalECsl4q486LaARA_9typst_svg.exit.i.i.i.i.i.i.i, %_RINvNtNtCs1xwejQucwHj_5alloc2io6cursor15reserve_and_padNtNtB6_5alloc6GlobalECsl4q486LaARA_9typst_svg.exit.i.i.i.i.i.i.thread.i
  %.sroa.6487.0.copyload693.i = phi ptr [ %.val8.pre.i.i.i.i.i.i.i.pre, %_RINvNtNtCs1xwejQucwHj_5alloc2io6cursor15reserve_and_padNtNtB6_5alloc6GlobalECsl4q486LaARA_9typst_svg.exit.i.i.i.i.i.i.thread.i ], [ %.val8.pre.i.i.i.i.i.i.i, %_RINvNtNtCs1xwejQucwHj_5alloc2io6cursor15reserve_and_padNtNtB6_5alloc6GlobalECsl4q486LaARA_9typst_svg.exit.i.i.i.i.i.i.i ]
  store i64 61, ptr %.sroa.7491.0..sroa_idx.i, align 8, !alias.scope !6799, !noalias !6795
  br label %_RNvXs5_NtNtCs3oUPovFnLWP_4core2io6cursorINtB5_6CursorINtNtCs1xwejQucwHj_5alloc3vec3VechEENtNtB7_5write5Write9write_allCsl4q486LaARA_9typst_svg.exit.i.i.i.i

_RNvXs5_NtNtCs3oUPovFnLWP_4core2io6cursorINtB5_6CursorINtNtCs1xwejQucwHj_5alloc3vec3VechEENtNtB7_5write5Write9write_allCsl4q486LaARA_9typst_svg.exit.i.i.i.i: ; preds = %bb.ev, %_RINvNtNtCs1xwejQucwHj_5alloc2io6cursor15reserve_and_padNtNtB6_5alloc6GlobalECsl4q486LaARA_9typst_svg.exit.i.i.i.i.i.i.i
  %.sroa.6487.0.copyload692.i = phi ptr [ %.sroa.6487.0.copyload693.i, %bb.ev ], [ %.val8.pre.i.i.i.i.i.i.i, %_RINvNtNtCs1xwejQucwHj_5alloc2io6cursor15reserve_and_padNtNtB6_5alloc6GlobalECsl4q486LaARA_9typst_svg.exit.i.i.i.i.i.i.i ]
  store i64 61, ptr %.sroa.8492.0..sroa_idx.i, align 8, !alias.scope !6805, !noalias !6806
  %i.ot = load i8, ptr %i.nu, align 8, !alias.scope !6778, !noalias !6744, !noundef !10 ; 2 uses
  %i.ou = add i8 %i.ot, -64
  store i8 %i.ou, ptr %i.nu, align 8, !alias.scope !6778, !noalias !6744
  %i.ov = sub i8 69, %i.ot                        ; 2 uses
  %i.ow = icmp ult i8 %i.ov, 64
  %i.ox = zext nneg i8 %i.ov to i64
  %i.oy = lshr i64 15, %i.ox
  %.sroa.04.0.i.i.i.i = select i1 %i.ow, i64 %i.oy, i64 0
  store i64 %.sroa.04.0.i.i.i.i, ptr %i.nt, align 8, !alias.scope !6778, !noalias !6744
  %.sroa.0486.0.copyload.pre.i = load i64, ptr %i.d, align 8, !noalias !6779
  br label %bb.fx

bb.ew:                                            ; preds = %bb.eu, %bb.eq
  %i.oz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val7.i.i = load i64, ptr %i.d, align 8, !alias.scope !6807, !noalias !6744 ; 2 uses
  %i.pa = icmp eq i64 %.val7.i.i, 0
  br i1 %i.pa, label %.body.i253, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_2io6cursor6CursorINtNtCs1xwejQucwHj_5alloc3vec3VechEEECsl4q486LaARA_9typst_svg.exit.sink.split.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_2io6cursor6CursorINtNtCs1xwejQucwHj_5alloc3vec3VechEEECsl4q486LaARA_9typst_svg.exit.sink.split.i.i: ; preds = %bb.ew
  %.sink26.i.sroa.phi.sroa.speculate.load.493.i = load ptr, ptr %.sink26.i.sroa.gep489.i, align 8, !noalias !6749
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink26.i.sroa.phi.sroa.speculate.load.493.i, i64 noundef %.val7.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !6748
  br label %.body.i253

bb.ex:                                            ; preds = %bb.ep
  %i.pb = landingpad { ptr, i32 }
          cleanup
  br label %.body.i253

bb.ey:                                            ; preds = %bb.en
  %i.pc = getelementptr inbounds nuw i8, ptr %i.bd, i64 75
  %i.pd = load i8, ptr %i.pc, align 1, !alias.scope !6727, !noalias !6731, !noundef !10
  br i1 %i.nh, label %bb.jh, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !6810
  %i.pe = call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.nf, i64 noundef range(i64 1, 17) 1) #31, !noalias !6810 ; 2 uses
  %i.pf = icmp eq ptr %i.pe, null
  br i1 %i.pf, label %bb.fb, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.pg = ptrtoint ptr %i.pe to i64
  br label %bb.jh

bb.fb:                                            ; preds = %bb.ez
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 1, i64 %i.nf) #36
          to label %.noexc.i254 unwind label %bb.em, !noalias !6739

.noexc.i254:                                      ; preds = %bb.fb
  unreachable

bb.fc:                                            ; preds = %bb.eo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !6743
  %i.ph = load i64, ptr %i.y, align 8, !range !1515, !noalias !6743, !noundef !10 ; 2 uses
  %i.pi = icmp eq i64 %i.ph, -1
  %i.pj = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.pk = load ptr, ptr %i.pj, align 8, !noalias !6743 ; 2 uses
  br i1 %i.pi, label %bb.fd, label %bb.fe

bb.fd:                                            ; preds = %bb.fc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !6743
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsidRW4tbWwi3_8fdeflate8compress20StoredOnlyCompressorINtNtNtB4_2io6cursor6CursorINtNtCs1xwejQucwHj_5alloc3vec3VechEEEECsl4q486LaARA_9typst_svg.exit.i

bb.fe:                                            ; preds = %bb.fc
  %.sroa.5198.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.sroa.538.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.538.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5198.0..sroa_idx.i, i64 40, i1 false), !noalias !6743
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !6743
  store i64 %i.ph, ptr %i.z, align 8, !noalias !6743
  %.sroa.437.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 3 uses
  store ptr %i.pk, ptr %.sroa.437.0..sroa_idx.i, align 8, !noalias !6743
  br i1 %i.nh, label %bb.ff, label %.preheader.i, !prof !11

bb.ff:                                            ; preds = %bb.fe
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @10, ptr noundef nonnull inttoptr (i64 55 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @214) #36
          to label %bb.fh unwind label %.loopexit.split-lp599.i, !noalias !6739

bb.fg:                                            ; preds = %bb.fj
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i253

bb.fh:                                            ; preds = %bb.jk, %bb.gd, %bb.ff
  unreachable

.preheader.i:                                     ; preds = %bb.fe, %bb.fr
  %.sroa.6.0.i = phi i64 [ %i.pn, %bb.fr ], [ %3, %bb.fe ] ; 3 uses
  %.sroa.0485.0.i = phi ptr [ %i.pm, %bb.fr ], [ %2, %bb.fe ] ; 2 uses
  %i.pl = icmp eq i64 %.sroa.6.0.i, 0
  br i1 %i.pl, label %bb.fj, label %bb.fi

bb.fi:                                            ; preds = %.preheader.i
  %..i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.nf, i64 %.sroa.6.0.i) ; 3 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %.sroa.0485.0.i, i64 %..i.i.i
  %i.pn = sub nuw nsw i64 %.sroa.6.0.i, %..i.i.i
  %i.po = invoke fastcc noundef ptr @_RNvMs_NtCsidRW4tbWwi3_8fdeflate8compressINtB4_20StoredOnlyCompressorINtNtNtCs3oUPovFnLWP_4core2io6cursor6CursorINtNtCs1xwejQucwHj_5alloc3vec3VechEEE10write_dataCsl4q486LaARA_9typst_svg(ptr noalias nofree noundef align 8 dereferenceable(56) %i.z, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 1)
          to label %bb.fp unwind label %.loopexit598.i, !noalias !6739 ; 2 uses

bb.fj:                                            ; preds = %.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !6743
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !6743
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.v, ptr noundef nonnull align 8 dereferenceable(56) %i.z, i64 56, i1 false), !noalias !6743
  invoke fastcc void @_RNvMs_NtCsidRW4tbWwi3_8fdeflate8compressINtB4_20StoredOnlyCompressorINtNtNtCs3oUPovFnLWP_4core2io6cursor6CursorINtNtCs1xwejQucwHj_5alloc3vec3VechEEE6finishCsl4q486LaARA_9typst_svg(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.w, ptr noalias nofree noundef align 8 captures(address) dereferenceable(56) %i.v)
          to label %bb.fk unwind label %bb.fg, !noalias !6739

bb.fk:                                            ; preds = %bb.fj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !6743
end_hunk_0
