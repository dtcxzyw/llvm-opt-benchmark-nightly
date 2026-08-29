Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_svg-9252d00a33f6f6d4.typst_svg.f56e30c74974af6c-cgu.0?download=true
inline.NumInlined: 2859
inline.NumDeleted: 1255
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_RNvMs2_NtNtCsbMQOdixSu6G_5image6codecs3pngINtB5_10PngEncoderQINtNtCs1xwejQucwHj_5alloc3vec3VechEE12encode_innerCsl4q486LaARA_9typst_svg:bb.a
  %.val.i157.i.i.i.i = phi i64 [ %.val.i157.pre.i.i.i.i, %bb.cr ], [ %i.jy, %bb.ch ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6693)
  %i.mf = icmp eq i64 %.val.i157.i.i.i.i, 0
  br i1 %i.mf, label %_RINvXs1_NtCs75Nu06PSjCb_3png13text_metadataNtB6_9ZTXtChunkNtB6_18EncodableTextChunk6encodeQINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg.exit.i.i.i, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %.val1.i158.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i70.i.i.i, align 8, !alias.scope !6693, !noalias !6674, !nonnull !10, !noundef !10
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i158.i.i.i.i, i64 noundef %.val.i157.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !6720
  br label %_RINvXs1_NtCs75Nu06PSjCb_3png13text_metadataNtB6_9ZTXtChunkNtB6_18EncodableTextChunk6encodeQINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg.exit.i.i.i

bb.dw:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg.exit150.i.i.i.i, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsl4q486LaARA_9typst_svg.exit.thread.i.i.i.i.i, %bb.cn, %bb.cl, %bb.cj
  %i.mg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6721)
  %.val.i160.i.i.i.i = load i64, ptr %i.ag, align 8, !alias.scope !6721, !noalias !6674 ; 2 uses
  %i.mh = icmp eq i64 %.val.i160.i.i.i.i, 0
  br i1 %i.mh, label %.body.i.i, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %.val1.i161.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i70.i.i.i, align 8, !alias.scope !6721, !noalias !6674, !nonnull !10, !noundef !10
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i161.i.i.i.i, i64 noundef %.val.i160.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !6724
  br label %.body.i.i

_RINvXs1_NtCs75Nu06PSjCb_3png13text_metadataNtB6_9ZTXtChunkNtB6_18EncodableTextChunk6encodeQINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg.exit.i.i.i: ; preds = %bb.dv, %bb.du, %bb.dq, %bb.dp, %bb.dn, %bb.dm
  %.pr118.i.i.i = load i64, ptr %i.aq, align 8, !noalias !6483 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !6674
  %.not55.i.i.i = icmp eq i64 %.pr118.i.i.i, -1
  br i1 %.not55.i.i.i, label %bb.dy, label %.loopexit148.i.i.i.loopexit

.loopexit148.i.i.i.loopexit:                      ; preds = %_RINvXs1_NtCs75Nu06PSjCb_3png13text_metadataNtB6_9ZTXtChunkNtB6_18EncodableTextChunk6encodeQINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg.exit.i.i.i
  %.sroa.21.i.i.sroa.0.0.copyload420.pre = load i8, ptr %.sroa.480.0..sroa_idx.i.i.i.i, align 8, !noalias !6538
  %.sroa.21.i.i.sroa.19.0.copyload434.pre = load i8, ptr %.sroa.581.0..sroa_idx.i.i.i.i, align 1, !noalias !6538
  br label %.loopexit148.i.i.i

.loopexit148.i.i.i:                               ; preds = %.loopexit148.i.i.i.loopexit, %_RINvXs1_NtCs75Nu06PSjCb_3png13text_metadataNtB6_9ZTXtChunkNtB6_18EncodableTextChunk6encodeQINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg.exit.thread.i.i.i
  %.sroa.21.i.i.sroa.19.0.copyload434 = phi i8 [ %i.ka, %_RINvXs1_NtCs75Nu06PSjCb_3png13text_metadataNtB6_9ZTXtChunkNtB6_18EncodableTextChunk6encodeQINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg.exit.thread.i.i.i ], [ %.sroa.21.i.i.sroa.19.0.copyload434.pre, %.loopexit148.i.i.i.loopexit ]
  %.sroa.21.i.i.sroa.0.0.copyload420 = phi i8 [ 12, %_RINvXs1_NtCs75Nu06PSjCb_3png13text_metadataNtB6_9ZTXtChunkNtB6_18EncodableTextChunk6encodeQINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg.exit.thread.i.i.i ], [ %.sroa.21.i.i.sroa.0.0.copyload420.pre, %.loopexit148.i.i.i.loopexit ]
  %.sroa.0.0.copyload56.i.i = phi i64 [ 4, %_RINvXs1_NtCs75Nu06PSjCb_3png13text_metadataNtB6_9ZTXtChunkNtB6_18EncodableTextChunk6encodeQINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg.exit.thread.i.i.i ], [ %.pr118.i.i.i, %.loopexit148.i.i.i.loopexit ]
  %.sroa.21.i.i.sroa.21.0..sroa.480.0..sroa_idx.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 10
  %.sroa.21.i.i.sroa.21.0.copyload448 = load i8, ptr %.sroa.21.i.i.sroa.21.0..sroa.480.0..sroa_idx.i.i.i.i.sroa_idx, align 2, !noalias !6538
  %.sroa.21.i.i.sroa.23.0..sroa.480.0..sroa_idx.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %.sroa.21.i.i.sroa.23, ptr noundef nonnull align 1 dereferenceable(13) %.sroa.21.i.i.sroa.23.0..sroa.480.0..sroa_idx.i.i.i.i.sroa_idx, i64 13, i1 false), !noalias !6538
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !6483
  br label %.thread149.i

bb.dy:                                            ; preds = %_RINvXs1_NtCs75Nu06PSjCb_3png13text_metadataNtB6_9ZTXtChunkNtB6_18EncodableTextChunk6encodeQINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg.exit.i.i.i
  %i.mi = getelementptr inbounds nuw i8, ptr %.sroa.016.0187.i.i.i, i64 56 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !6483
  %i.mj = icmp eq ptr %i.mi, %i.jm
  br i1 %i.mj, label %.loopexit496, label %bb.cf

.loopexit.split-lp.loopexit.i.i:                  ; preds = %bb.cf
  %lpad.loopexit99.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.i.i: ; preds = %bb.br
  %lpad.loopexit102.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i: ; preds = %bb.bn, %_RNvMs7_NtCs75Nu06PSjCb_3png7encoderINtB5_6WriterQINtNtCs1xwejQucwHj_5alloc3vec3VechEE11write_chunkCsl4q486LaARA_9typst_svg.exit.i.i.i, %bb.aw, %bb.av, %bb.an, %bb.al, %bb.aa, %bb.w, %_RNvXs_NtNtCs3oUPovFnLWP_4core2io5implsQINtNtCs1xwejQucwHj_5alloc3vec3VechENtNtB6_5write5Write9write_allCsl4q486LaARA_9typst_svg.exit.i.i.i, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsl4q486LaARA_9typst_svg.exit.thread.i.i.i.i.i.i.i.i
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, %.loopexit.split-lp.loopexit.i.i, %bb.dx, %bb.dw, %bb.ct, %.body.thread.i.i.i.i, %bb.bx, %bb.bw, %bb.be, %.thread26.i.i.i.i, %bb.bd, %bb.ba, %bb.az, %bb.ap
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %lpad.loopexit102.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i ], [ %i.mg, %bb.dx ], [ %i.hr, %bb.bd ], [ %i.iw, %bb.bw ], [ %i.hn, %bb.ba ], [ %i.hn, %bb.az ], [ %i.gw, %bb.be ], [ %i.hf, %bb.ap ], [ %i.gw, %.thread26.i.i.i.i ], [ %i.iw, %bb.bx ], [ %.pn.i.i.i.i, %.body.thread.i.i.i.i ], [ %.pn.i.i.i.i, %bb.ct ], [ %i.mg, %bb.dw ], [ %lpad.loopexit99.i.i, %.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs75Nu06PSjCb_3png7encoder6WriterQINtNtCs1xwejQucwHj_5alloc3vec3VechEEECsl4q486LaARA_9typst_svg(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.ba) #32
          to label %.body.i unwind label %bb.dz, !noalias !6537

bb.dz:                                            ; preds = %.body.i.i
  %i.mk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37, !noalias !6520
  unreachable

bb.ea:                                            ; preds = %bb.t, %.thread.i
  %i.ml = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.ea, %.body.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ml, %bb.ea ], [ %eh.lpad-body.i.i, %.body.i.i ]
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs75Nu06PSjCb_3png6common4InfoECsl4q486LaARA_9typst_svg(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(448) %i.be) #32, !noalias !6475
  br label %.critedge231

.loopexit496:                                     ; preds = %._crit_edge.i.i.i, %bb.dy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !6483
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.0..sroa_idx, i64 7, i1 false), !alias.scope !6725, !noalias !6726
  %i.mm = load <2 x i32>, ptr %i.cn, align 8, !alias.scope !6725, !noalias !6726
  %.sroa.7.0.copyload309 = load i32, ptr %i.cn, align 8, !alias.scope !6725, !noalias !6726 ; 2 uses
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
          to label %bb.lx unwind label %bb.h

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
  br i1 %or.cond.i251, label %bb.ed, label %bb.ln

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
  br i1 %or.cond1081, label %bb.ln, label %bb.ee

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
          to label %.noexc unwind label %bb.lm    ; 14 uses

.noexc:                                           ; preds = %bb.ee
  %i.nf = add i64 %i.ne, -1                       ; 23 uses
  %i.ng = mul i64 %i.nf, %.sroa.014.0.i           ; 2 uses
  %.not292.i = icmp eq i64 %i.ng, %3
  br i1 %.not292.i, label %bb.ef, label %bb.ln

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
          to label %.noexc257 unwind label %bb.lm

.noexc257:                                        ; preds = %bb.ej
  unreachable

_RINvXs1_NtNtCs1xwejQucwHj_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsl4q486LaARA_9typst_svg.exit.i: ; preds = %bb.ei, %bb.eg
  %.sroa.10.0.i.i = phi i64 [ %i.nk, %bb.ei ], [ 1, %bb.eg ]
  %i.nl = inttoptr i64 %.sroa.10.0.i.i to ptr     ; 5 uses
  %i.nm = invoke noundef i8 @_RNvMs6_NtCs75Nu06PSjCb_3png7encoderNtB5_11PartialInfo17bpp_in_prediction(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(52) %.sroa.6195.0..sroa_idx)
          to label %bb.em unwind label %bb.el, !noalias !6739 ; 2 uses

.body.i253:                                       ; preds = %bb.jx, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg.exit458.i, %bb.jf, %bb.je, %.thread595.i, %bb.fu, %bb.ft, %bb.ff, %bb.ew, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_2io6cursor6CursorINtNtCs1xwejQucwHj_5alloc3vec3VechEEECsl4q486LaARA_9typst_svg.exit.sink.split.i.i, %bb.ev, %bb.el
  %.pn322.i = phi { ptr, i32 } [ %i.oz, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_2io6cursor6CursorINtNtCs1xwejQucwHj_5alloc3vec3VechEEECsl4q486LaARA_9typst_svg.exit.sink.split.i.i ], [ %lpad.thr_comm.split-lp.i, %bb.ff ], [ %.pn304.pn548.i, %bb.jf ], [ %.pn316.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg.exit458.i ], [ %lpad.phi602.i, %bb.fu ], [ %.pn304.ph.i, %.thread595.i ], [ %i.nn, %bb.el ], [ %i.oz, %bb.ev ], [ %i.pb, %bb.ew ], [ %lpad.phi602.i, %bb.ft ], [ %.pn304.pn548.i, %bb.je ], [ %.pn316.i, %bb.jx ] ; 2 uses
  br i1 %i.nh, label %.body258, label %bb.ek

bb.ek:                                            ; preds = %.body.thread591.i, %.body.i253
  %.pn322593.i = phi { ptr, i32 } [ %.pn.i, %.body.thread591.i ], [ %.pn322.i, %.body.i253 ]
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.nl, i64 noundef %i.nf, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !6740
  br label %.body258

bb.el:                                            ; preds = %bb.fa, %bb.en, %_RINvXs1_NtNtCs1xwejQucwHj_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsl4q486LaARA_9typst_svg.exit.i
  %i.nn = landingpad { ptr, i32 }
          cleanup
  br label %.body.i253

bb.em:                                            ; preds = %_RINvXs1_NtNtCs1xwejQucwHj_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsl4q486LaARA_9typst_svg.exit.i
  %i.no = getelementptr inbounds nuw i8, ptr %i.bd, i64 76
  %i.np = load i8, ptr %i.no, align 4, !range !6730, !alias.scope !6727, !noalias !6731, !noundef !10 ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.bd, i64 74
  %i.nr = load i8, ptr %i.nq, align 2, !range !357, !alias.scope !6727, !noalias !6731, !noundef !10
  switch i8 %i.nr, label %default.unreachable815 [
    i8 0, label %bb.en
    i8 1, label %bb.eo
    i8 2, label %bb.ex
  ]

bb.en:                                            ; preds = %bb.em
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !6743
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !6743
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !6743
  store i64 0, ptr %i.x, align 8, !noalias !6743
  %.sroa.434.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.434.0..sroa_idx.i, align 8, !noalias !6743
  %.sroa.535.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.535.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !6743
  invoke fastcc void @_RNvMs_NtCsidRW4tbWwi3_8fdeflate8compressINtB4_20StoredOnlyCompressorINtNtNtCs3oUPovFnLWP_4core2io6cursor6CursorINtNtCs1xwejQucwHj_5alloc3vec3VechEEE3newCsl4q486LaARA_9typst_svg(ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %i.y, ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.x)
          to label %bb.fb unwind label %bb.el, !noalias !6739

bb.eo:                                            ; preds = %bb.em
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !6743
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8488.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !6744
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6744
  invoke void @_RNvMCsfKc8T7pWkLT_12simd_adler32NtB2_7Adler323new(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c)
          to label %bb.ep unwind label %bb.ew, !noalias !6748

bb.ep:                                            ; preds = %bb.eo
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
          to label %_RINvNtNtCs1xwejQucwHj_5alloc2io6cursor15reserve_and_padNtNtB6_5alloc6GlobalECsl4q486LaARA_9typst_svg.exit.i.i.i.i.i.i unwind label %bb.ev, !noalias !6748

_RINvNtNtCs1xwejQucwHj_5alloc2io6cursor15reserve_and_padNtNtB6_5alloc6GlobalECsl4q486LaARA_9typst_svg.exit.i.i.i.i.i.i: ; preds = %bb.ep
  %i.nv = load i64, ptr %.sroa.7491.0..sroa_idx.i, align 8, !alias.scope !6764, !noalias !6767, !noundef !10 ; 3 uses
  %i.nw = icmp sgt i64 %i.nv, -1
  call void @llvm.assume(i1 %i.nw)
  %.val8.pre.i.i.i.i.i.i = load ptr, ptr %.sink26.i.sroa.gep489.i, align 8, !alias.scope !6771, !noalias !6767 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(53) %.val8.pre.i.i.i.i.i.i, ptr noundef nonnull readonly align 1 dereferenceable(53) @121, i64 range(i64 0, -9223372036854775808) 53, i1 false), !noalias !6772
  %i.nx = icmp samesign ult i64 %i.nv, 53
  br i1 %i.nx, label %bb.eq, label %_RNvXs5_NtNtCs3oUPovFnLWP_4core2io6cursorINtB5_6CursorINtNtCs1xwejQucwHj_5alloc3vec3VechEENtNtB7_5write5Write9write_allCsl4q486LaARA_9typst_svg.exit.i.i.i

bb.eq:                                            ; preds = %_RINvNtNtCs1xwejQucwHj_5alloc2io6cursor15reserve_and_padNtNtB6_5alloc6GlobalECsl4q486LaARA_9typst_svg.exit.i.i.i.i.i.i
  store i64 53, ptr %.sroa.7491.0..sroa_idx.i, align 8, !alias.scope !6771, !noalias !6767
  br label %_RNvXs5_NtNtCs3oUPovFnLWP_4core2io6cursorINtB5_6CursorINtNtCs1xwejQucwHj_5alloc3vec3VechEENtNtB7_5write5Write9write_allCsl4q486LaARA_9typst_svg.exit.i.i.i

_RNvXs5_NtNtCs3oUPovFnLWP_4core2io6cursorINtB5_6CursorINtNtCs1xwejQucwHj_5alloc3vec3VechEENtNtB7_5write5Write9write_allCsl4q486LaARA_9typst_svg.exit.i.i.i: ; preds = %bb.eq, %_RINvNtNtCs1xwejQucwHj_5alloc2io6cursor15reserve_and_padNtNtB6_5alloc6GlobalECsl4q486LaARA_9typst_svg.exit.i.i.i.i.i.i
  %i.ny = phi i64 [ %i.nv, %_RINvNtNtCs1xwejQucwHj_5alloc2io6cursor15reserve_and_padNtNtB6_5alloc6GlobalECsl4q486LaARA_9typst_svg.exit.i.i.i.i.i.i ], [ 53, %bb.eq ] ; 5 uses
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
  br i1 %i.og, label %bb.er, label %bb.fw

bb.er:                                            ; preds = %_RNvXs5_NtNtCs3oUPovFnLWP_4core2io6cursorINtB5_6CursorINtNtCs1xwejQucwHj_5alloc3vec3VechEENtNtB7_5write5Write9write_allCsl4q486LaARA_9typst_svg.exit.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !6780)
  call void @llvm.experimental.noalias.scope.decl(metadata !6783)
  call void @llvm.experimental.noalias.scope.decl(metadata !6786)
  call void @llvm.experimental.noalias.scope.decl(metadata !6789)
  call void @llvm.experimental.noalias.scope.decl(metadata !6791)
  %i.oh = icmp samesign ult i64 %.sroa.0486.0.copyload.pre689.i, 61
  br i1 %i.oh, label %bb.es, label %_RINvNtNtCs1xwejQucwHj_5alloc2io6cursor15reserve_and_padNtNtB6_5alloc6GlobalECsl4q486LaARA_9typst_svg.exit.i.i.i.i.i.i.i

bb.es:                                            ; preds = %bb.er
  %i.oi = sub nsw i64 61, %i.ny                   ; 2 uses
  %i.oj = sub nsw i64 %.sroa.0486.0.copyload.pre689.i, %i.ny
  %i.ok = icmp ugt i64 %i.oi, %i.oj
  br i1 %i.ok, label %bb.et, label %_RINvNtNtCs1xwejQucwHj_5alloc2io6cursor15reserve_and_padNtNtB6_5alloc6GlobalECsl4q486LaARA_9typst_svg.exit.i.i.i.i.i.i.i, !prof !11

bb.et:                                            ; preds = %bb.es
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsl4q486LaARA_9typst_svg(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.d, i64 noundef %i.ny, i64 noundef %i.oi, i64 noundef 1, i64 noundef 1)
          to label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsl4q486LaARA_9typst_svg.exit.i.i.i.i.i.i.i.i unwind label %bb.ev, !noalias !6748

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsl4q486LaARA_9typst_svg.exit.i.i.i.i.i.i.i.i: ; preds = %bb.et
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
  br label %bb.eu

_RINvNtNtCs1xwejQucwHj_5alloc2io6cursor15reserve_and_padNtNtB6_5alloc6GlobalECsl4q486LaARA_9typst_svg.exit.i.i.i.i.i.i.i: ; preds = %bb.er, %bb.es, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsl4q486LaARA_9typst_svg.exit.i.i.i.i.i.i.i.i
  %.val8.pre.i.i.i.i.i.i.i = phi ptr [ %.val8.pre.i.i.i.i.i.i.i.pre, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsl4q486LaARA_9typst_svg.exit.i.i.i.i.i.i.i.i ], [ %.val8.pre.i.i.i.i.i.i, %bb.es ], [ %.val8.pre.i.i.i.i.i.i, %bb.er ] ; 3 uses
  %i.oq = phi i64 [ %.pre.i.i.i, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsl4q486LaARA_9typst_svg.exit.i.i.i.i.i.i.i.i ], [ %i.ny, %bb.es ], [ %i.ny, %bb.er ]
  %i.or = getelementptr inbounds nuw i8, ptr %.val8.pre.i.i.i.i.i.i.i, i64 53
  store i64 %i.oe, ptr %i.or, align 1, !noalias !6804
  %i.os = icmp samesign ult i64 %i.oq, 61
  br i1 %i.os, label %bb.eu, label %_RNvXs5_NtNtCs3oUPovFnLWP_4core2io6cursorINtB5_6CursorINtNtCs1xwejQucwHj_5alloc3vec3VechEENtNtB7_5write5Write9write_allCsl4q486LaARA_9typst_svg.exit.i.i.i.i

bb.eu:                                            ; preds = %_RINvNtNtCs1xwejQucwHj_5alloc2io6cursor15reserve_and_padNtNtB6_5alloc6GlobalECsl4q486LaARA_9typst_svg.exit.i.i.i.i.i.i.i, %_RINvNtNtCs1xwejQucwHj_5alloc2io6cursor15reserve_and_padNtNtB6_5alloc6GlobalECsl4q486LaARA_9typst_svg.exit.i.i.i.i.i.i.thread.i
  %.sroa.6487.0.copyload693.i = phi ptr [ %.val8.pre.i.i.i.i.i.i.i.pre, %_RINvNtNtCs1xwejQucwHj_5alloc2io6cursor15reserve_and_padNtNtB6_5alloc6GlobalECsl4q486LaARA_9typst_svg.exit.i.i.i.i.i.i.thread.i ], [ %.val8.pre.i.i.i.i.i.i.i, %_RINvNtNtCs1xwejQucwHj_5alloc2io6cursor15reserve_and_padNtNtB6_5alloc6GlobalECsl4q486LaARA_9typst_svg.exit.i.i.i.i.i.i.i ]
  store i64 61, ptr %.sroa.7491.0..sroa_idx.i, align 8, !alias.scope !6799, !noalias !6795
  br label %_RNvXs5_NtNtCs3oUPovFnLWP_4core2io6cursorINtB5_6CursorINtNtCs1xwejQucwHj_5alloc3vec3VechEENtNtB7_5write5Write9write_allCsl4q486LaARA_9typst_svg.exit.i.i.i.i

_RNvXs5_NtNtCs3oUPovFnLWP_4core2io6cursorINtB5_6CursorINtNtCs1xwejQucwHj_5alloc3vec3VechEENtNtB7_5write5Write9write_allCsl4q486LaARA_9typst_svg.exit.i.i.i.i: ; preds = %bb.eu, %_RINvNtNtCs1xwejQucwHj_5alloc2io6cursor15reserve_and_padNtNtB6_5alloc6GlobalECsl4q486LaARA_9typst_svg.exit.i.i.i.i.i.i.i
  %.sroa.6487.0.copyload692.i = phi ptr [ %.sroa.6487.0.copyload693.i, %bb.eu ], [ %.val8.pre.i.i.i.i.i.i.i, %_RINvNtNtCs1xwejQucwHj_5alloc2io6cursor15reserve_and_padNtNtB6_5alloc6GlobalECsl4q486LaARA_9typst_svg.exit.i.i.i.i.i.i.i ]
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
  br label %bb.fw

bb.ev:                                            ; preds = %bb.et, %bb.ep
  %i.oz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val7.i.i = load i64, ptr %i.d, align 8, !alias.scope !6807, !noalias !6744 ; 2 uses
  %i.pa = icmp eq i64 %.val7.i.i, 0
  br i1 %i.pa, label %.body.i253, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_2io6cursor6CursorINtNtCs1xwejQucwHj_5alloc3vec3VechEEECsl4q486LaARA_9typst_svg.exit.sink.split.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_2io6cursor6CursorINtNtCs1xwejQucwHj_5alloc3vec3VechEEECsl4q486LaARA_9typst_svg.exit.sink.split.i.i: ; preds = %bb.ev
  %.sink26.i.sroa.phi.sroa.speculate.load.493.i = load ptr, ptr %.sink26.i.sroa.gep489.i, align 8, !noalias !6749
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink26.i.sroa.phi.sroa.speculate.load.493.i, i64 noundef %.val7.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !6748
  br label %.body.i253

bb.ew:                                            ; preds = %bb.eo
  %i.pb = landingpad { ptr, i32 }
          cleanup
  br label %.body.i253

bb.ex:                                            ; preds = %bb.em
  %i.pc = getelementptr inbounds nuw i8, ptr %i.bd, i64 75
  %i.pd = load i8, ptr %i.pc, align 1, !alias.scope !6727, !noalias !6731, !noundef !10
  br i1 %i.nh, label %bb.jg, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !6810
  %i.pe = call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.nf, i64 noundef range(i64 1, 17) 1) #31, !noalias !6810 ; 2 uses
  %i.pf = icmp eq ptr %i.pe, null
  br i1 %i.pf, label %bb.fa, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.pg = ptrtoint ptr %i.pe to i64
  br label %bb.jg

bb.fa:                                            ; preds = %bb.ey
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 1, i64 %i.nf) #36
          to label %.noexc.i254 unwind label %bb.el, !noalias !6739

.noexc.i254:                                      ; preds = %bb.fa
  unreachable

bb.fb:                                            ; preds = %bb.en
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !6743
  %i.ph = load i64, ptr %i.y, align 8, !range !1515, !noalias !6743, !noundef !10 ; 2 uses
  %i.pi = icmp eq i64 %i.ph, -1
  %i.pj = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.pk = load ptr, ptr %i.pj, align 8, !noalias !6743 ; 2 uses
  br i1 %i.pi, label %bb.fc, label %bb.fd

bb.fc:                                            ; preds = %bb.fb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !6743
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsidRW4tbWwi3_8fdeflate8compress20StoredOnlyCompressorINtNtNtB4_2io6cursor6CursorINtNtCs1xwejQucwHj_5alloc3vec3VechEEEECsl4q486LaARA_9typst_svg.exit.i

bb.fd:                                            ; preds = %bb.fb
  %.sroa.5198.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.sroa.538.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.538.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5198.0..sroa_idx.i, i64 40, i1 false), !noalias !6743
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !6743
  store i64 %i.ph, ptr %i.z, align 8, !noalias !6743
  %.sroa.437.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 3 uses
  store ptr %i.pk, ptr %.sroa.437.0..sroa_idx.i, align 8, !noalias !6743
  br i1 %i.nh, label %bb.fe, label %.preheader.i, !prof !11

bb.fe:                                            ; preds = %bb.fd
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @10, ptr noundef nonnull inttoptr (i64 55 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @214) #36
          to label %bb.fg unwind label %.loopexit.split-lp599.i, !noalias !6739

bb.ff:                                            ; preds = %bb.fi
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i253

bb.fg:                                            ; preds = %bb.jj, %bb.gc, %bb.fe
  unreachable

.preheader.i:                                     ; preds = %bb.fd, %bb.fq
  %.sroa.6.0.i = phi i64 [ %i.pn, %bb.fq ], [ %3, %bb.fd ] ; 3 uses
  %.sroa.0485.0.i = phi ptr [ %i.pm, %bb.fq ], [ %2, %bb.fd ] ; 2 uses
  %i.pl = icmp eq i64 %.sroa.6.0.i, 0
  br i1 %i.pl, label %bb.fi, label %bb.fh

bb.fh:                                            ; preds = %.preheader.i
  %..i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.nf, i64 %.sroa.6.0.i) ; 3 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %.sroa.0485.0.i, i64 %..i.i.i
  %i.pn = sub nuw nsw i64 %.sroa.6.0.i, %..i.i.i
  %i.po = invoke fastcc noundef ptr @_RNvMs_NtCsidRW4tbWwi3_8fdeflate8compressINtB4_20StoredOnlyCompressorINtNtNtCs3oUPovFnLWP_4core2io6cursor6CursorINtNtCs1xwejQucwHj_5alloc3vec3VechEEE10write_dataCsl4q486LaARA_9typst_svg(ptr noalias nofree noundef align 8 dereferenceable(56) %i.z, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 1)
          to label %bb.fo unwind label %.loopexit598.i, !noalias !6739 ; 2 uses

bb.fi:                                            ; preds = %.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !6743
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !6743
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.v, ptr noundef nonnull align 8 dereferenceable(56) %i.z, i64 56, i1 false), !noalias !6743
  invoke fastcc void @_RNvMs_NtCsidRW4tbWwi3_8fdeflate8compressINtB4_20StoredOnlyCompressorINtNtNtCs3oUPovFnLWP_4core2io6cursor6CursorINtNtCs1xwejQucwHj_5alloc3vec3VechEEE6finishCsl4q486LaARA_9typst_svg(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.w, ptr noalias nofree noundef align 8 captures(address) dereferenceable(56) %i.v)
          to label %bb.fj unwind label %bb.ff, !noalias !6739

bb.fj:                                            ; preds = %bb.fi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !6743
  %i.pp = load i64, ptr %i.w, align 8, !range !1515, !noalias !6743, !noundef !10 ; 2 uses
  %i.pq = icmp eq i64 %i.pp, -1
  %i.pr = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ps = load ptr, ptr %i.pr, align 8, !noalias !6743 ; 2 uses
  br i1 %i.pq, label %bb.fk, label %bb.fl

bb.fk:                                            ; preds = %bb.fj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !6743
  %i.pt = ptrtoint ptr %i.ps to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !6743
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg.exit450.i

bb.fl:                                            ; preds = %bb.fj
  %.sroa.5210.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.sroa.5210.0.copyload.i = load i64, ptr %.sroa.5210.0..sroa_idx.i, align 8, !noalias !6743
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !6743
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !6743
  br label %bb.fm

bb.fm:                                            ; preds = %bb.ju, %bb.hl, %bb.fl
  %.sroa.20.0.i = phi i64 [ %.sroa.5210.0.copyload.i, %bb.fl ], [ %.sroa.20.1.i, %bb.hl ], [ %.sroa.9530.0.i, %bb.ju ] ; 7 uses
  %.sroa.10.0.i = phi ptr [ %i.ps, %bb.fl ], [ %.sroa.10.1.i, %bb.hl ], [ %.sroa.5529.0.i, %bb.ju ] ; 14 uses
  %.sroa.0477.0.i = phi i64 [ %i.pp, %bb.fl ], [ %.sroa.0477.1.i, %bb.hl ], [ %storemerge.i.i, %bb.ju ] ; 6 uses
  %i.pu = load i8, ptr %i.nc, align 1, !range !357, !alias.scope !6727, !noalias !6731, !noundef !10
  %.not308.i = icmp eq i8 %i.pu, 2
  br i1 %.not308.i, label %bb.jw, label %bb.jv

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg.exit450.i: ; preds = %bb.lk, %bb.lf, %bb.ke, %bb.kd, %bb.hv, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsidRW4tbWwi3_8fdeflate8compress20StoredOnlyCompressorINtNtNtB4_2io6cursor6CursorINtNtCs1xwejQucwHj_5alloc3vec3VechEEEECsl4q486LaARA_9typst_svg.exit.i, %bb.fk
  %.sroa.24324.sroa.22.sroa.0.1.in.in = phi i64 [ undef, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsidRW4tbWwi3_8fdeflate8compress20StoredOnlyCompressorINtNtNtB4_2io6cursor6CursorINtNtCs1xwejQucwHj_5alloc3vec3VechEEEECsl4q486LaARA_9typst_svg.exit.i ], [ undef, %bb.fk ], [ %i.ajh, %bb.kd ], [ %i.ajh, %bb.ke ], [ undef, %bb.hv ], [ undef, %bb.lf ], [ undef, %bb.lk ] ; 2 uses
  %.sroa.38.0 = phi i64 [ %.sroa.24324.sroa.22.sroa.0.5.in.in, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsidRW4tbWwi3_8fdeflate8compress20StoredOnlyCompressorINtNtNtB4_2io6cursor6CursorINtNtCs1xwejQucwHj_5alloc3vec3VechEEEECsl4q486LaARA_9typst_svg.exit.i ], [ %i.pt, %bb.fk ], [ %i.ajg, %bb.kd ], [ %i.ajg, %bb.ke ], [ %.sroa.24324.sroa.22.sroa.0.4.in.in, %bb.hv ], [ %i.aky, %bb.lf ], [ %.sroa.24324.sroa.22.sroa.0.0.in.in, %bb.lk ] ; 2 uses
  %.sroa.0318.1 = phi i64 [ 3, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsidRW4tbWwi3_8fdeflate8compress20StoredOnlyCompressorINtNtNtB4_2io6cursor6CursorINtNtCs1xwejQucwHj_5alloc3vec3VechEEEECsl4q486LaARA_9typst_svg.exit.i ], [ 3, %bb.fk ], [ %.sroa.0318.2, %bb.kd ], [ %.sroa.0318.2, %bb.ke ], [ 3, %bb.hv ], [ 3, %bb.lf ], [ 3, %bb.lk ] ; 2 uses
  br i1 %i.nh, label %bb.ln, label %bb.fn

bb.fn:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg.exit450.i
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.nl, i64 noundef %i.nf, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !6815
  br label %bb.ln

bb.fo:                                            ; preds = %bb.fh
  %.not320.i = icmp eq ptr %i.po, null
  br i1 %.not320.i, label %bb.fp, label %bb.fr

bb.fp:                                            ; preds = %bb.fo
  %i.pv = invoke fastcc noundef ptr @_RNvMs_NtCsidRW4tbWwi3_8fdeflate8compressINtB4_20StoredOnlyCompressorINtNtNtCs3oUPovFnLWP_4core2io6cursor6CursorINtNtCs1xwejQucwHj_5alloc3vec3VechEEE10write_dataCsl4q486LaARA_9typst_svg(ptr noalias nofree noundef align 8 dereferenceable(56) %i.z, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0485.0.i, i64 noundef %..i.i.i)
          to label %bb.fq unwind label %.loopexit598.i, !noalias !6739 ; 2 uses

bb.fq:                                            ; preds = %bb.fp
  %.not321.i = icmp eq ptr %i.pv, null
  br i1 %.not321.i, label %.preheader.i, label %bb.fr

bb.fr:                                            ; preds = %bb.fq, %bb.fo
  %.lcssa795.sink.i = phi ptr [ %i.po, %bb.fo ], [ %i.pv, %bb.fq ] ; 2 uses
  %.val331.i = load i64, ptr %i.z, align 8, !alias.scope !6818, !noalias !6743 ; 2 uses
  %i.pw = icmp eq i64 %.val331.i, 0
  br i1 %i.pw, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsidRW4tbWwi3_8fdeflate8compress20StoredOnlyCompressorINtNtNtB4_2io6cursor6CursorINtNtCs1xwejQucwHj_5alloc3vec3VechEEEECsl4q486LaARA_9typst_svg.exit.i, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %.val332.i = load ptr, ptr %.sroa.437.0..sroa_idx.i, align 8, !noalias !6743, !nonnull !10, !noundef !10
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val332.i, i64 noundef %.val331.i, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !6821
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsidRW4tbWwi3_8fdeflate8compress20StoredOnlyCompressorINtNtNtB4_2io6cursor6CursorINtNtCs1xwejQucwHj_5alloc3vec3VechEEEECsl4q486LaARA_9typst_svg.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsidRW4tbWwi3_8fdeflate8compress20StoredOnlyCompressorINtNtNtB4_2io6cursor6CursorINtNtCs1xwejQucwHj_5alloc3vec3VechEEEECsl4q486LaARA_9typst_svg.exit.i: ; preds = %bb.fs, %bb.fr, %bb.fc
  %.sroa.24324.sroa.22.sroa.0.5.in.in.in = phi ptr [ %i.pk, %bb.fc ], [ %.lcssa795.sink.i, %bb.fr ], [ %.lcssa795.sink.i, %bb.fs ]
  %.sroa.24324.sroa.22.sroa.0.5.in.in = ptrtoint ptr %.sroa.24324.sroa.22.sroa.0.5.in.in.in to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !6743
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg.exit450.i

.loopexit598.i:                                   ; preds = %bb.fp, %bb.fh
  %lpad.loopexit600.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ft

.loopexit.split-lp599.i:                          ; preds = %bb.fe
  %lpad.loopexit.split-lp601.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ft

bb.ft:                                            ; preds = %.loopexit.split-lp599.i, %.loopexit598.i
  %lpad.phi602.i = phi { ptr, i32 } [ %lpad.loopexit600.i, %.loopexit598.i ], [ %lpad.loopexit.split-lp601.i, %.loopexit.split-lp599.i ] ; 2 uses
  %.val329.i = load i64, ptr %i.z, align 8, !alias.scope !6818, !noalias !6743 ; 2 uses
  %i.px = icmp eq i64 %.val329.i, 0
  br i1 %i.px, label %.body.i253, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %.val330.i = load ptr, ptr %.sroa.437.0..sroa_idx.i, align 8, !noalias !6743, !nonnull !10, !noundef !10
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val330.i, i64 noundef %.val329.i, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !6824
  br label %.body.i253

bb.fv:                                            ; preds = %bb.ll
  %i.py = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37, !noalias !6739
  unreachable

bb.fw:                                            ; preds = %_RNvXs5_NtNtCs3oUPovFnLWP_4core2io6cursorINtB5_6CursorINtNtCs1xwejQucwHj_5alloc3vec3VechEENtNtB7_5write5Write9write_allCsl4q486LaARA_9typst_svg.exit.i.i.i.i, %_RNvXs5_NtNtCs3oUPovFnLWP_4core2io6cursorINtB5_6CursorINtNtCs1xwejQucwHj_5alloc3vec3VechEENtNtB7_5write5Write9write_allCsl4q486LaARA_9typst_svg.exit.i.i.i
  %.sroa.6487.0.copyload.i = phi ptr [ %.sroa.6487.0.copyload692.i, %_RNvXs5_NtNtCs3oUPovFnLWP_4core2io6cursorINtB5_6CursorINtNtCs1xwejQucwHj_5alloc3vec3VechEENtNtB7_5write5Write9write_allCsl4q486LaARA_9typst_svg.exit.i.i.i.i ], [ %.val8.pre.i.i.i.i.i.i, %_RNvXs5_NtNtCs3oUPovFnLWP_4core2io6cursorINtB5_6CursorINtNtCs1xwejQucwHj_5alloc3vec3VechEENtNtB7_5write5Write9write_allCsl4q486LaARA_9typst_svg.exit.i.i.i ] ; 3 uses
  %.sroa.0486.0.copyload.i = phi i64 [ %.sroa.0486.0.copyload.pre.i, %_RNvXs5_NtNtCs3oUPovFnLWP_4core2io6cursorINtB5_6CursorINtNtCs1xwejQucwHj_5alloc3vec3VechEENtNtB7_5write5Write9write_allCsl4q486LaARA_9typst_svg.exit.i.i.i.i ], [ %.sroa.0486.0.copyload.pre689.i, %_RNvXs5_NtNtCs3oUPovFnLWP_4core2io6cursorINtB5_6CursorINtNtCs1xwejQucwHj_5alloc3vec3VechEENtNtB7_5write5Write9write_allCsl4q486LaARA_9typst_svg.exit.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.8488.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7491.0..sroa_idx.i, i64 48, i1 false), !noalias !6779
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !6744
  %i.pz = icmp eq i64 %.sroa.0486.0.copyload.i, -1
  br i1 %i.pz, label %bb.fx, label %bb.fy

bb.fx:                                            ; preds = %bb.fw
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6487.0.copyload.i) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8488.i)
  br label %bb.hv

bb.fy:                                            ; preds = %bb.fw
  %.sroa.570.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 21 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.570.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.8488.i, i64 48, i1 false), !noalias !6743
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8488.i)
  store i64 %.sroa.0486.0.copyload.i, ptr %i.u, align 8, !noalias !6743
  %.sroa.469.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 12 uses
  store ptr %.sroa.6487.0.copyload.i, ptr %.sroa.469.0..sroa_idx.i, align 8, !noalias !6743
  %.not.i.i344.i = icmp slt i64 %i.ne, 0
  br i1 %.not.i.i344.i, label %bb.ga, label %bb.fz, !prof !20

bb.fz:                                            ; preds = %bb.fy
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !6827
  %i.qa = call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.ne, i64 noundef range(i64 1, 17) 1) #31, !noalias !6827 ; 11 uses
  %i.qb = icmp eq ptr %i.qa, null
  br i1 %i.qb, label %bb.ga, label %bb.gb

bb.ga:                                            ; preds = %bb.fz, %bb.fy
  %.sroa.4.0.ph.i346.i = phi i64 [ 1, %bb.fz ], [ 0, %bb.fy ]
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i346.i, i64 %i.ne) #36
          to label %.noexc347.i unwind label %.thread545.i, !noalias !6739

.noexc347.i:                                      ; preds = %bb.ga
  unreachable

.thread595.i:                                     ; preds = %bb.gy, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsidRW4tbWwi3_8fdeflate8compress20StoredOnlyCompressorINtNtNtB4_2io6cursor6CursorINtNtCs1xwejQucwHj_5alloc3vec3VechEEEECsl4q486LaARA_9typst_svg.exit402.i, %bb.gi, %bb.gh
  %.pn304.ph.i = phi { ptr, i32 } [ %.pn301.i, %bb.gy ], [ %.pn301.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsidRW4tbWwi3_8fdeflate8compress20StoredOnlyCompressorINtNtNtB4_2io6cursor6CursorINtNtCs1xwejQucwHj_5alloc3vec3VechEEEECsl4q486LaARA_9typst_svg.exit402.i ], [ %i.sb, %bb.gi ], [ %i.sb, %bb.gh ]
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.qa, i64 noundef %i.ne, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !6832
  br label %.body.i253

.loopexit603.i:                                   ; preds = %bb.iv
  %lpad.loopexit605.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp604.i

.loopexit.split-lp604.loopexit.i:                 ; preds = %bb.jb
  %lpad.loopexit608.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp604.i

.loopexit.split-lp604.loopexit.split-lp.loopexit.i: ; preds = %bb.ic
  %lpad.loopexit612.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp604.i

.loopexit.split-lp604.loopexit.split-lp.loopexit.split-lp.loopexit.i: ; preds = %bb.ig, %bb.ir, %bb.im
  %lpad.loopexit615.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp604.i

.loopexit.split-lp604.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i: ; preds = %bb.hy, %bb.hx, %bb.hw
  %lpad.loopexit619.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp604.i

.loopexit.split-lp604.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i: ; preds = %bb.ix, %bb.gc
  %lpad.loopexit.split-lp620.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp604.i

.loopexit.split-lp604.i:                          ; preds = %.loopexit.split-lp604.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp604.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp604.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp604.loopexit.split-lp.loopexit.i, %.loopexit.split-lp604.loopexit.i, %.loopexit603.i
  %lpad.phi607.i = phi { ptr, i32 } [ %lpad.loopexit605.i, %.loopexit603.i ], [ %lpad.loopexit608.i, %.loopexit.split-lp604.loopexit.i ], [ %lpad.loopexit612.i, %.loopexit.split-lp604.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit615.i, %.loopexit.split-lp604.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit619.i, %.loopexit.split-lp604.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp620.i, %.loopexit.split-lp604.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i ]
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.qa, i64 noundef %i.ne, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !6835
  br label %bb.je

.thread545.i:                                     ; preds = %bb.ga
  %i.qc = landingpad { ptr, i32 }
          cleanup
  br label %bb.je

bb.gb:                                            ; preds = %bb.fz
  br i1 %i.nh, label %bb.gc, label %.preheader618.i, !prof !11

.preheader618.i:                                  ; preds = %bb.gb
  %i.qd = icmp eq i64 %3, 0
  br i1 %i.qd, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader618.i
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qa, i64 1
  %i.qf = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.qg = and i64 %i.ne, 9223372036854775800      ; 2 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qa, i64 %i.qg ; 2 uses
  %i.qi = and i64 %i.ne, 7                        ; 2 uses
  %.not111.i.i = icmp samesign ult i64 %i.ne, 8
  %i.qj = getelementptr inbounds nuw i8, ptr %i.u, i64 56 ; 18 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %i.u, i64 48 ; 13 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 10 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qh, i64 %i.qi
  %i.qn = icmp samesign eq i64 %i.qi, 0
  br label %bb.hw

bb.gc:                                            ; preds = %bb.gb
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @10, ptr noundef nonnull inttoptr (i64 55 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @215) #36
          to label %bb.fg unwind label %.loopexit.split-lp604.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !6739

._crit_edge.i:                                    ; preds = %_RNvMNtCsidRW4tbWwi3_8fdeflate8compressINtB2_10CompressorINtNtNtCs3oUPovFnLWP_4core2io6cursor6CursorINtNtCs1xwejQucwHj_5alloc3vec3VechEEE10write_dataCsl4q486LaARA_9typst_svg.exit.i, %.preheader618.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !6743
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.t, ptr noundef nonnull align 8 dereferenceable(64) %i.u, i64 64, i1 false), !noalias !6743
  call void @llvm.experimental.noalias.scope.decl(metadata !6837)
  call void @llvm.experimental.noalias.scope.decl(metadata !6840)
  call void @llvm.experimental.noalias.scope.decl(metadata !6842)
  %i.qo = getelementptr inbounds nuw i8, ptr %i.t, i64 56 ; 8 uses
  %i.qp = load i8, ptr %i.qo, align 8, !alias.scope !6845, !noalias !6846, !noundef !10 ; 2 uses
  %i.qq = and i8 %i.qp, 63
  %i.qr = zext nneg i8 %i.qq to i64
  %i.qs = shl i64 2303, %i.qr
  %i.qt = getelementptr inbounds nuw i8, ptr %i.t, i64 48 ; 5 uses
  %i.qu = load i64, ptr %i.qt, align 8, !alias.scope !6845, !noalias !6846, !noundef !10
  %i.qv = or i64 %i.qs, %i.qu                     ; 3 uses
  store i64 %i.qv, ptr %i.qt, align 8, !alias.scope !6845, !noalias !6846
  %i.qw = add i8 %i.qp, 12                        ; 3 uses
  store i8 %i.qw, ptr %i.qo, align 8, !alias.scope !6845, !noalias !6846
  %i.qx = icmp ugt i8 %i.qw, 63
  br i1 %i.qx, label %bb.gd, label %_RNvMNtCsidRW4tbWwi3_8fdeflate8compressINtB2_10CompressorINtNtNtCs3oUPovFnLWP_4core2io6cursor6CursorINtNtCs1xwejQucwHj_5alloc3vec3VechEEE10write_bitsCsl4q486LaARA_9typst_svg.exit.i.i

bb.gd:                                            ; preds = %._crit_edge.i
  call void @llvm.experimental.noalias.scope.decl(metadata !6847)
  call void @llvm.experimental.noalias.scope.decl(metadata !6850)
  %i.qy = getelementptr inbounds nuw i8, ptr %i.t, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6853)
  call void @llvm.experimental.noalias.scope.decl(metadata !6856)
  %.val.i.i.i.i.i368.i = load i64, ptr %i.qy, align 8, !alias.scope !6858, !noalias !6859, !noundef !10 ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6863)
  %i.qz = call i64 @llvm.uadd.sat.i64(i64 %.val.i.i.i.i.i368.i, i64 range(i64 0, -9223372036854775808) 8) ; 2 uses
  %i.ra = load i64, ptr %i.t, align 8, !range !366, !alias.scope !6866, !noalias !6867, !noundef !10 ; 2 uses
  %i.rb = icmp ugt i64 %i.qz, %i.ra
end_hunk_0
begin_hunk_1_@_RNvMs2_NtNtCsbMQOdixSu6G_5image6codecs3pngINtB5_10PngEncoderQINtNtCs1xwejQucwHj_5alloc3vec3VechEE12encode_innerCsl4q486LaARA_9typst_svg:bb.a
.loopexit.i:                                      ; preds = %bb.ks
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.kp

.loopexit.split-lp.i:                             ; preds = %.invoke.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.kp

bb.kp:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7186)
  %.val.i456.i = load i64, ptr %i.f, align 8, !alias.scope !7186, !noalias !6743 ; 2 uses
  %i.akb = icmp eq i64 %.val.i456.i, 0
  br i1 %i.akb, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg.exit458.i, label %bb.kq

bb.kq:                                            ; preds = %bb.kp
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ajy, i64 noundef %.val.i456.i, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !7189
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg.exit458.i

.lr.ph671.split.i:                                ; preds = %.lr.ph671.i, %bb.kw
  %i.akc = phi i32 [ %i.akq, %bb.kw ], [ %i.ajl, %.lr.ph671.i ]
  %.sroa.0531.0670.i = phi ptr [ %i.akd, %bb.kw ], [ %.sroa.10.0.i, %.lr.ph671.i ] ; 2 uses
  %.sroa.6532.0669.i = phi i64 [ %i.ake, %bb.kw ], [ %.sroa.20.0.i, %.lr.ph671.i ] ; 2 uses
  %..i.i452.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.6532.0669.i, i64 2147483643) ; 6 uses
  %i.akd = getelementptr inbounds nuw i8, ptr %.sroa.0531.0670.i, i64 %..i.i452.i
  %i.ake = sub nuw nsw i64 %.sroa.6532.0669.i, %..i.i452.i ; 2 uses
  %i.akf = call i32 @llvm.bswap.i32(i32 %i.akc)
  store i32 %i.akf, ptr %i.ajy, align 1, !alias.scope !7190, !noalias !7194
  %.not312.i = icmp ugt i64 %..i.i452.i, %i.ajz
  br i1 %.not312.i, label %.invoke.i, label %bb.ks, !prof !7034

._crit_edge672.i:                                 ; preds = %bb.kw, %.split.i
  call void @llvm.experimental.noalias.scope.decl(metadata !7196)
  %.val.i459.i = load i64, ptr %i.f, align 8, !alias.scope !7196, !noalias !6743 ; 2 uses
  %i.akg = icmp eq i64 %.val.i459.i, 0
  br i1 %i.akg, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg.exit461.i, label %bb.kr

bb.kr:                                            ; preds = %._crit_edge672.i
  %i.akh = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.val1.i460.i = load ptr, ptr %i.akh, align 8, !alias.scope !7196, !noalias !6743, !nonnull !10, !noundef !10
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i460.i, i64 noundef %.val.i459.i, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !7199
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg.exit461.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg.exit461.i: ; preds = %bb.kr, %._crit_edge672.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !6743
  br label %bb.kc

.invoke.i:                                        ; preds = %.lr.ph671.split.i, %.lr.ph671.i
  %i.aki = phi i64 [ 4, %.lr.ph671.i ], [ %..i.i452.i, %.lr.ph671.split.i ]
  %i.akj = phi i64 [ %i.ajw, %.lr.ph671.i ], [ %i.ajz, %.lr.ph671.split.i ]
  %i.akk = phi ptr [ @217, %.lr.ph671.i ], [ @218, %.lr.ph671.split.i ]
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.aki, i64 noundef %i.akj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.akk) #36
          to label %.cont.i unwind label %.loopexit.split-lp.i, !noalias !6739

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.ks:                                            ; preds = %.lr.ph671.split.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aka, ptr nonnull readonly align 1 %.sroa.0531.0670.i, i64 range(i64 0, -9223372036854775808) %..i.i452.i, i1 false), !alias.scope !7200, !noalias !7204
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !6743
  %i.akl = add nuw nsw i64 %..i.i452.i, 4
  invoke fastcc void @_RINvNtCs75Nu06PSjCb_3png7encoder11write_chunkQQINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.bd, i32 noundef 1413571686, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ajy, i64 noundef %i.akl)
          to label %bb.kt unwind label %.loopexit.i, !noalias !6739

bb.kt:                                            ; preds = %bb.ks
  %i.akm = load i64, ptr %i.e, align 8, !range !1582, !noalias !6743, !noundef !10 ; 2 uses
  %.not314.i = icmp eq i64 %i.akm, -1
  br i1 %.not314.i, label %bb.kw, label %bb.ku

bb.ku:                                            ; preds = %bb.kt
  %.sroa.24324.0..sroa_idx327 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.akn = load <2 x i64>, ptr %.sroa.24324.0..sroa_idx327, align 8, !noalias !7182
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !6743
  call void @llvm.experimental.noalias.scope.decl(metadata !7206)
  %.val.i463.i = load i64, ptr %i.f, align 8, !alias.scope !7206, !noalias !6743 ; 2 uses
  %i.ako = icmp eq i64 %.val.i463.i, 0
  br i1 %i.ako, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg.exit465.i, label %bb.kv

bb.kv:                                            ; preds = %bb.ku
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ajy, i64 noundef %.val.i463.i, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !7209
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg.exit465.i

bb.kw:                                            ; preds = %bb.kt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !6743
  %i.akp = load i32, ptr %i.nb, align 4, !alias.scope !6727, !noalias !6731, !noundef !10
  %i.akq = add i32 %i.akp, 1                      ; 2 uses
  store i32 %i.akq, ptr %i.nb, align 4, !alias.scope !6727, !noalias !6731
  %i.akr = icmp eq i64 %i.ake, 0
  br i1 %i.akr, label %._crit_edge672.i, label %.lr.ph671.split.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg.exit465.i: ; preds = %bb.kv, %bb.ku
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !6743
  br label %bb.kd

bb.kx:                                            ; preds = %bb.kg
  %i.aks = load i64, ptr %i.i, align 8, !range !1582, !noalias !6743, !noundef !10 ; 2 uses
  %.not318.i = icmp eq i64 %i.aks, -1
  br i1 %.not318.i, label %bb.kz, label %bb.ky

bb.ky:                                            ; preds = %bb.kx
  %.sroa.24324.0..sroa_idx331 = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.akt = load <2 x i64>, ptr %.sroa.24324.0..sroa_idx331, align 8, !noalias !7182
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !6743
  br label %bb.kd

bb.kz:                                            ; preds = %bb.kx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !6743
  br label %bb.kc

bb.la:                                            ; preds = %bb.kc
  %i.aku = load i32, ptr %.sroa.6195.sroa.4.0..sroa.6195.0..sroa_idx.sroa_idx, align 4, !alias.scope !6727, !noalias !6731, !noundef !10
  %i.akv = getelementptr inbounds nuw i8, ptr %i.bd, i64 68
  %i.akw = load i32, ptr %i.akv, align 4, !alias.scope !6727, !noalias !6731, !noundef !10
  %.not319.i = icmp ugt i32 %i.aku, %i.akw
  br i1 %.not319.i, label %bb.lb, label %bb.ld

bb.lb:                                            ; preds = %bb.ld, %bb.la, %bb.kc
  %i.akx = icmp eq i64 %.sroa.0477.0.i, 0
  br i1 %i.akx, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg.exit468.i, label %bb.lc

bb.lc:                                            ; preds = %bb.lb
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.0.i) ]
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i, i64 noundef %.sroa.0477.0.i, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !7210
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg.exit468.i

bb.ld:                                            ; preds = %bb.la
  store i8 2, ptr %i.nc, align 1, !alias.scope !6727, !noalias !6731
  br label %bb.lb

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg.exit468.i: ; preds = %bb.lc, %bb.lb
  br i1 %i.nh, label %_RNvMs7_NtCs75Nu06PSjCb_3png7encoderINtB5_6WriterQINtNtCs1xwejQucwHj_5alloc3vec3VechEE16write_image_dataCsl4q486LaARA_9typst_svg.exit, label %bb.le

bb.le:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg.exit468.i
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.nl, i64 noundef %i.nf, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !7213
  br label %_RNvMs7_NtCs75Nu06PSjCb_3png7encoderINtB5_6WriterQINtNtCs1xwejQucwHj_5alloc3vec3VechEE16write_image_dataCsl4q486LaARA_9typst_svg.exit

bb.lf:                                            ; preds = %_RNvMNtNtCs2N41nl8cATr_6flate24zlib5writeINtB2_11ZlibEncoderINtNtCs1xwejQucwHj_5alloc3vec3VechEE6finishCsl4q486LaARA_9typst_svg.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5529.0.i) ]
  %i.aky = ptrtoint ptr %.sroa.5529.0.i to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !6743
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aie, i64 noundef %i.nf, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !7216
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg.exit450.i

bb.lg:                                            ; preds = %bb.jk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !6743
  store i8 %i.aim, ptr %i.l, align 1, !noalias !6743
  %i.akz = invoke fastcc noundef ptr @_RNvYINtNtNtCs2N41nl8cATr_6flate24zlib5write11ZlibEncoderINtNtCs1xwejQucwHj_5alloc3vec3VechEENtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_allCsl4q486LaARA_9typst_svg(ptr noalias nofree noundef align 8 dereferenceable(72) %i.n, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef 1)
          to label %bb.lh unwind label %.loopexit623.i, !noalias !6739 ; 2 uses

bb.lh:                                            ; preds = %bb.lg
  %.not294.i = icmp eq ptr %i.akz, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !6743
  br i1 %.not294.i, label %bb.li, label %.loopexit

bb.li:                                            ; preds = %bb.lh
  %i.ala = invoke fastcc noundef ptr @_RNvYINtNtNtCs2N41nl8cATr_6flate24zlib5write11ZlibEncoderINtNtCs1xwejQucwHj_5alloc3vec3VechEENtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_allCsl4q486LaARA_9typst_svg(ptr noalias nofree noundef align 8 dereferenceable(72) %i.n, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aie, i64 noundef %i.nf)
          to label %bb.lj unwind label %.loopexit623.i, !noalias !6739 ; 2 uses

bb.lj:                                            ; preds = %bb.li
  %.not295.i = icmp eq ptr %i.ala, null
  br i1 %.not295.i, label %.preheader622.i, label %.loopexit

.loopexit:                                        ; preds = %bb.lj, %bb.lh
  %.sroa.24324.sroa.22.sroa.0.0.in.in.in = phi ptr [ %i.akz, %bb.lh ], [ %i.ala, %bb.lj ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs2N41nl8cATr_6flate24zlib5write11ZlibEncoderINtNtCs1xwejQucwHj_5alloc3vec3VechEEECsl4q486LaARA_9typst_svg(ptr noalias nofree noundef align 8 dereferenceable(72) %i.n)
          to label %bb.lk unwind label %bb.jh, !noalias !6739

bb.lk:                                            ; preds = %.loopexit
  %.sroa.24324.sroa.22.sroa.0.0.in.in = ptrtoint ptr %.sroa.24324.sroa.22.sroa.0.0.in.in.in to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !6743
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aie, i64 noundef %i.nf, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !7219
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg.exit450.i

.loopexit623.i:                                   ; preds = %bb.li, %bb.lg, %bb.jk
  %lpad.loopexit625.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ll

.loopexit.split-lp624.i:                          ; preds = %bb.jj
  %lpad.loopexit.split-lp626.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ll

bb.ll:                                            ; preds = %.loopexit.split-lp624.i, %.loopexit623.i
  %lpad.phi627.i = phi { ptr, i32 } [ %lpad.loopexit625.i, %.loopexit623.i ], [ %lpad.loopexit.split-lp626.i, %.loopexit.split-lp624.i ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs2N41nl8cATr_6flate24zlib5write11ZlibEncoderINtNtCs1xwejQucwHj_5alloc3vec3VechEEECsl4q486LaARA_9typst_svg(ptr noalias nofree noundef align 8 dereferenceable(72) %i.n) #32
          to label %.body437.thread.i unwind label %bb.fv, !noalias !6739

bb.lm:                                            ; preds = %bb.ej, %bb.ee, %bb.ln
  %i.alb = landingpad { ptr, i32 }
          cleanup
  br label %.body258

.body258:                                         ; preds = %.body.i253, %bb.ek, %.body437.thread.i, %bb.lm
  %eh.lpad-body259 = phi { ptr, i32 } [ %i.alb, %bb.lm ], [ %.pn322.i, %.body.i253 ], [ %.pn322593.i, %bb.ek ], [ %.pn.i, %.body437.thread.i ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs75Nu06PSjCb_3png7encoder6WriterQINtNtCs1xwejQucwHj_5alloc3vec3VechEEECsl4q486LaARA_9typst_svg(ptr noalias nofree noundef align 8 dereferenceable(80) %i.bd) #32
          to label %.critedge231 unwind label %bb.lw

bb.ln:                                            ; preds = %bb.ed, %bb.ec, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg.exit450.i, %bb.fn, %.noexc
  %.sroa.24324.sroa.0.6.ph = phi i64 [ %3, %.noexc ], [ undef, %bb.ec ], [ undef, %bb.ed ], [ %.sroa.24324.sroa.22.sroa.0.1.in.in, %bb.fn ], [ %.sroa.24324.sroa.22.sroa.0.1.in.in, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg.exit450.i ]
  %.sroa.38.2.ph = phi i64 [ %i.ng, %.noexc ], [ 3, %bb.ec ], [ 7, %bb.ed ], [ %.sroa.38.0, %bb.fn ], [ %.sroa.38.0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg.exit450.i ]
  %.sroa.0318.6.ph = phi i64 [ 0, %.noexc ], [ 4, %bb.ec ], [ 4, %bb.ed ], [ %.sroa.0318.1, %bb.fn ], [ %.sroa.0318.1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg.exit450.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  store i64 %.sroa.0318.6.ph, ptr %i.bb, align 8
  %.sroa.24324.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store i64 %.sroa.38.2.ph, ptr %.sroa.24324.0..sroa_idx, align 8
  %.sroa.38.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store i64 %.sroa.24324.sroa.0.6.ph, ptr %.sroa.38.0..sroa_idx, align 8
  %i.alc = invoke noundef nonnull ptr @_RNvXs2_NtCs75Nu06PSjCb_3png7encoderNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorINtNtBD_7convert4FromNtB5_13EncodingErrorE4from(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.bb)
          to label %bb.lu unwind label %bb.lm

_RNvMs7_NtCs75Nu06PSjCb_3png7encoderINtB5_6WriterQINtNtCs1xwejQucwHj_5alloc3vec3VechEE16write_image_dataCsl4q486LaARA_9typst_svg.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg.exit468.i, %bb.le
  store i8 -1, ptr %0, align 8
  br label %bb.lo

bb.lo:                                            ; preds = %bb.lu, %_RNvMs7_NtCs75Nu06PSjCb_3png7encoderINtB5_6WriterQINtNtCs1xwejQucwHj_5alloc3vec3VechEE16write_image_dataCsl4q486LaARA_9typst_svg.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !7222)
  call void @llvm.experimental.noalias.scope.decl(metadata !7225)
  %i.ald = getelementptr inbounds nuw i8, ptr %i.bd, i64 77 ; 2 uses
  %i.ale = load i8, ptr %i.ald, align 1, !range !358, !alias.scope !7228, !noundef !10
  %i.alf = trunc nuw i8 %i.ale to i1
  br i1 %i.alf, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs75Nu06PSjCb_3png7encoder6WriterQINtNtCs1xwejQucwHj_5alloc3vec3VechEEECsl4q486LaARA_9typst_svg.exit, label %bb.lp

bb.lp:                                            ; preds = %bb.lo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7228
  store i8 1, ptr %i.ald, align 1, !alias.scope !7228
  invoke fastcc void @_RINvNtCs75Nu06PSjCb_3png7encoder11write_chunkQQINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(80) %i.bd, i32 noundef 1145980233, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0)
          to label %.noexc261 unwind label %bb.h

.noexc261:                                        ; preds = %bb.lp
  %.val.i.i = load i64, ptr %i.b, align 8, !range !1582, !noalias !7228, !noundef !10 ; 3 uses
  %i.alg = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val1.i.i = load ptr, ptr %i.alg, align 8, !noalias !7228 ; 4 uses
  %i.alh = icmp eq i64 %.val.i.i, -1
  br i1 %i.alh, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs75Nu06PSjCb_3png7encoder13EncodingErrorEECsl4q486LaARA_9typst_svg.exit.i.i, label %bb.lq

bb.lq:                                            ; preds = %.noexc261
  %i.ali = icmp ne i64 %.val.i.i, 5
  call void @llvm.assume(i1 %i.ali)
  %i.alj = icmp eq i64 %.val.i.i, 3
  br i1 %i.alj, label %bb.lr, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs75Nu06PSjCb_3png7encoder13EncodingErrorEECsl4q486LaARA_9typst_svg.exit.i.i

bb.lr:                                            ; preds = %bb.lq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7228
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i) ]
  %i.alk = ptrtoint ptr %.val1.i.i to i64         ; 2 uses
  %i.all = and i64 %i.alk, 3
  switch i64 %i.all, label %default.unreachable815 [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl4q486LaARA_9typst_svg.exit.i.i.i.i
    i64 3, label %bb.ls
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl4q486LaARA_9typst_svg.exit.i.i.i.i
    i64 1, label %bb.lt
  ], !prof !1583

bb.ls:                                            ; preds = %bb.lr
  %i.alm = icmp ult ptr %.val1.i.i, inttoptr (i64 188978561024 to ptr)
  %i.aln = and i64 %i.alk, 1095216660480
  %i.alo = icmp ne i64 %i.aln, 1095216660480
  call void @llvm.assume(i1 %i.alm)
  call void @llvm.assume(i1 %i.alo)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl4q486LaARA_9typst_svg.exit.i.i.i.i

bb.lt:                                            ; preds = %bb.lr
  %i.alp = getelementptr i8, ptr %.val1.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.alp) ]
  %i.alq = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.alp, ptr %i.alq, align 8, !alias.scope !7229, !noalias !7228
  store i8 3, ptr %i.a, align 8, !alias.scope !7229, !noalias !7228
  invoke void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.alq)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl4q486LaARA_9typst_svg.exit.i.i.i.i unwind label %bb.h

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl4q486LaARA_9typst_svg.exit.i.i.i.i: ; preds = %bb.lt, %bb.ls, %bb.lr, %bb.lr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7228
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs75Nu06PSjCb_3png7encoder13EncodingErrorEECsl4q486LaARA_9typst_svg.exit.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs75Nu06PSjCb_3png7encoder13EncodingErrorEECsl4q486LaARA_9typst_svg.exit.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl4q486LaARA_9typst_svg.exit.i.i.i.i, %bb.lq, %.noexc261
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7228
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs75Nu06PSjCb_3png7encoder6WriterQINtNtCs1xwejQucwHj_5alloc3vec3VechEEECsl4q486LaARA_9typst_svg.exit

bb.lu:                                            ; preds = %bb.ln
  store i8 9, ptr %0, align 8
  %.sroa.4211.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.alc, ptr %.sroa.4211.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  br label %bb.lo

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs75Nu06PSjCb_3png7encoder6WriterQINtNtCs1xwejQucwHj_5alloc3vec3VechEEECsl4q486LaARA_9typst_svg.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs75Nu06PSjCb_3png7encoder13EncodingErrorEECsl4q486LaARA_9typst_svg.exit.i.i, %bb.lo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  call void @llvm.experimental.noalias.scope.decl(metadata !7232)
  %.val.i263 = load i64, ptr %1, align 8, !alias.scope !7232 ; 2 uses
  %i.alr = icmp eq i64 %.val.i263, 0
  br i1 %i.alr, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg.exit, label %bb.lv

bb.lv:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs75Nu06PSjCb_3png7encoder6WriterQINtNtCs1xwejQucwHj_5alloc3vec3VechEEECsl4q486LaARA_9typst_svg.exit
  %i.als = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i = load ptr, ptr %i.als, align 8, !alias.scope !7232, !nonnull !10, !noundef !10
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i263, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !7232
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg.exit: ; preds = %bb.lv, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs75Nu06PSjCb_3png7encoder6WriterQINtNtCs1xwejQucwHj_5alloc3vec3VechEEECsl4q486LaARA_9typst_svg.exit
  %.val.i267 = load i64, ptr %i.by, align 8, !alias.scope !7235 ; 2 uses
  %i.alt = icmp eq i64 %.val.i267, 0
  br i1 %i.alt, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg.exit269, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg.exit269.sink.split

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg.exit269.sink.split: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg.exit272
  %.val.i300.sink = phi i64 [ %.val.i300, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg.exit272 ], [ %.val.i267, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg.exit ]
  %i.alu = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val1.i301 = load ptr, ptr %i.alu, align 8, !nonnull !10, !noundef !10
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i301, i64 noundef %.val.i300.sink, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !10
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg.exit269

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg.exit269: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg.exit269.sink.split, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg.exit272, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg.exit
  ret void

bb.lw:                                            ; preds = %.body258
  %i.alv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg.exit296: ; preds = %bb.mb, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg.exit293
  resume { ptr, i32 } %.pn459

bb.lx:                                            ; preds = %bb.eb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.25)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.553.sroa.7, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.555.sroa.7, i64 7, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(29) %.sroa.553.sroa.9.sroa.12, ptr noundef nonnull align 1 dereferenceable(29) %.sroa.555.sroa.9.sroa.11, i64 29, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.555.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.555.sroa.9.sroa.11)
  %.sroa.4206.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4206.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.553.sroa.7, i64 7, i1 false)
  %.sroa.6208.sroa.9.0..sroa.6208.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(29) %.sroa.6208.sroa.9.0..sroa.6208.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(29) %.sroa.553.sroa.9.sroa.12, i64 29, i1 false)
  store i8 9, ptr %0, align 8
  %.sroa.5207.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.mo, ptr %.sroa.5207.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.553.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.553.sroa.9.sroa.12)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  br label %bb.ly

bb.ly:                                            ; preds = %bb.lx, %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !7238)
  %.val.i270 = load i64, ptr %1, align 8, !alias.scope !7238 ; 2 uses
  %i.alw = icmp eq i64 %.val.i270, 0
  br i1 %i.alw, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg.exit272, label %bb.lz

bb.lz:                                            ; preds = %bb.ly
  %i.alx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i271 = load ptr, ptr %i.alx, align 8, !alias.scope !7238, !nonnull !10, !noundef !10
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i271, i64 noundef %.val.i270, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !7238
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg.exit272

.critedge231:                                     ; preds = %bb.h, %.body.i, %.body258
  %.pn459 = phi { ptr, i32 } [ %eh.lpad-body259, %.body258 ], [ %eh.lpad-body.i, %.body.i ], [ %i.cj, %bb.h ]
  call void @llvm.experimental.noalias.scope.decl(metadata !7241)
  %.val.i291 = load i64, ptr %1, align 8, !alias.scope !7241 ; 2 uses
  %i.aly = icmp eq i64 %.val.i291, 0
  br i1 %i.aly, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg.exit293, label %bb.ma

bb.ma:                                            ; preds = %.critedge231
  %i.alz = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i292 = load ptr, ptr %i.alz, align 8, !alias.scope !7241, !nonnull !10, !noundef !10
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i292, i64 noundef %.val.i291, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !7241
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg.exit293

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg.exit293: ; preds = %bb.ma, %.critedge231
  call void @llvm.experimental.noalias.scope.decl(metadata !7244)
  %.val.i294 = load i64, ptr %i.by, align 8, !alias.scope !7244 ; 2 uses
  %i.ama = icmp eq i64 %.val.i294, 0
  br i1 %i.ama, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg.exit296, label %bb.mb

bb.mb:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg.exit293
  %i.amb = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val1.i295 = load ptr, ptr %i.amb, align 8, !alias.scope !7244, !nonnull !10, !noundef !10
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i295, i64 noundef %.val.i294, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !7244
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg.exit296

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg.exit272: ; preds = %bb.lz, %bb.ly
  %i.amc = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val.i300 = load i64, ptr %i.amc, align 8, !alias.scope !7247 ; 2 uses
  %i.amd = icmp eq i64 %.val.i300, 0
  br i1 %i.amd, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg.exit269, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg.exit269.sink.split
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtCsaixNeEcpA3e_4slab5EntryINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtB1j_7memoize10CacheEntryINtNvNtB1j_5inputs_1__9MultiCalluENtNtCsakL8LGkl72C_4ecow6string9EcoStringEEEE8grow_oneCsl4q486LaARA_9typst_svg(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !366, !noundef !10 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7250)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7250
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !7250
  call fastcc void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsl4q486LaARA_9typst_svg(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 64), !noalias !7250
  %i.f = load i64, ptr %i.a, align 8, !range !2221, !noalias !7250, !noundef !10
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !2222, !noalias !7250, !noundef !10
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !7250
end_hunk_1
