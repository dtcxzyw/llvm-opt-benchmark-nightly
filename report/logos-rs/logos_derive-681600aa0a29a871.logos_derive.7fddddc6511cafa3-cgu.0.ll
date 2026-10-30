Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/logos-rs/original/logos_derive-681600aa0a29a871.logos_derive.7fddddc6511cafa3-cgu.0?download=true
inline.NumInlined: 61
inline.NumDeleted: 41
begin_hunk_0_@_RINvNvNtNtCseSCJ3UB48O9_10proc_macro6bridge14selfless_reify31reify_to_extern_c_fn_hrt_bridge7wrapperNtNtB6_6buffer6BufferNCINvMsg_NtB6_6clientNtB24_6Client7expand1NvCsaYD8yEaBVbr_12logos_derive5logosE0EB2D_:bb.a

_RNvXsf_NtNtCseSCJ3UB48O9_10proc_macro6bridge3rpcmINtB5_6DecodeuE6decodeCsaYD8yEaBVbr_12logos_derive.exit.i.i.i.i.i.i.i.i.i: ; preds = %.noexc24.i.i
  invoke void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECshTL54jFqpHF_11miniz_oxide(ptr nonnull %i.i, i64 4, ptr %i.as, i64 4, ptr nonnull align 8 @4)
          to label %.noexc26.i.i unwind label %bb.e, !noalias !28

.noexc26.i.i:                                     ; preds = %_RNvXsf_NtNtCseSCJ3UB48O9_10proc_macro6bridge3rpcmINtB5_6DecodeuE6decodeCsaYD8yEaBVbr_12logos_derive.exit.i.i.i.i.i.i.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.i, align 4, !noalias !29 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !29
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.invoke.i.i, label %_RNvXs9_NtNtCseSCJ3UB48O9_10proc_macro6bridge6clientNtB5_4SpanINtNtB7_3rpc6DecodeuE6decodeCsaYD8yEaBVbr_12logos_derive.exit.i.i.i.i.i.i.i

_RNvXs9_NtNtCseSCJ3UB48O9_10proc_macro6bridge6clientNtB5_4SpanINtNtB7_3rpc6DecodeuE6decodeCsaYD8yEaBVbr_12logos_derive.exit.i.i.i.i.i.i.i: ; preds = %.noexc26.i.i
  %i.ax = add i64 %i.au, -4                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !29
  store i32 0, ptr %i.h, align 4, !noalias !29
  %i.ay = icmp ugt i64 %i.ax, 3
  br i1 %i.ay, label %_RNvXsf_NtNtCseSCJ3UB48O9_10proc_macro6bridge3rpcmINtB5_6DecodeuE6decodeCsaYD8yEaBVbr_12logos_derive.exit.i.i1.i.i.i.i.i.i.i, label %.invoke77.i.i

_RNvXsf_NtNtCseSCJ3UB48O9_10proc_macro6bridge3rpcmINtB5_6DecodeuE6decodeCsaYD8yEaBVbr_12logos_derive.exit.i.i1.i.i.i.i.i.i.i: ; preds = %_RNvXs9_NtNtCseSCJ3UB48O9_10proc_macro6bridge6clientNtB5_4SpanINtNtB7_3rpc6DecodeuE6decodeCsaYD8yEaBVbr_12logos_derive.exit.i.i.i.i.i.i.i
  invoke void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECshTL54jFqpHF_11miniz_oxide(ptr nonnull %i.h, i64 4, ptr nonnull %i.aw, i64 4, ptr nonnull align 8 @4)
          to label %.noexc29.i.i unwind label %bb.e, !noalias !28

.noexc29.i.i:                                     ; preds = %_RNvXsf_NtNtCseSCJ3UB48O9_10proc_macro6bridge3rpcmINtB5_6DecodeuE6decodeCsaYD8yEaBVbr_12logos_derive.exit.i.i1.i.i.i.i.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i = load i32, ptr %i.h, align 4, !noalias !29 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !29
  %.not.i.i3.i.i.i.i.i.i.i = icmp eq i32 %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i3.i.i.i.i.i.i.i, label %.invoke.i.i, label %_RNvXs9_NtNtCseSCJ3UB48O9_10proc_macro6bridge6clientNtB5_4SpanINtNtB7_3rpc6DecodeuE6decodeCsaYD8yEaBVbr_12logos_derive.exit4.i.i.i.i.i.i.i

_RNvXs9_NtNtCseSCJ3UB48O9_10proc_macro6bridge6clientNtB5_4SpanINtNtB7_3rpc6DecodeuE6decodeCsaYD8yEaBVbr_12logos_derive.exit4.i.i.i.i.i.i.i: ; preds = %.noexc29.i.i
  %i.ba = add i64 %i.au, -8                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !29
  store i32 0, ptr %i.g, align 4, !noalias !29
  %i.bb = icmp ugt i64 %i.ba, 3
  br i1 %i.bb, label %_RNvXsf_NtNtCseSCJ3UB48O9_10proc_macro6bridge3rpcmINtB5_6DecodeuE6decodeCsaYD8yEaBVbr_12logos_derive.exit.i.i5.i.i.i.i.i.i.i, label %.invoke77.i.i

_RNvXsf_NtNtCseSCJ3UB48O9_10proc_macro6bridge3rpcmINtB5_6DecodeuE6decodeCsaYD8yEaBVbr_12logos_derive.exit.i.i5.i.i.i.i.i.i.i: ; preds = %_RNvXs9_NtNtCseSCJ3UB48O9_10proc_macro6bridge6clientNtB5_4SpanINtNtB7_3rpc6DecodeuE6decodeCsaYD8yEaBVbr_12logos_derive.exit4.i.i.i.i.i.i.i
  invoke void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECshTL54jFqpHF_11miniz_oxide(ptr nonnull %i.g, i64 4, ptr nonnull %i.az, i64 4, ptr nonnull align 8 @4)
          to label %.noexc32.i.i unwind label %bb.e, !noalias !28

.noexc32.i.i:                                     ; preds = %_RNvXsf_NtNtCseSCJ3UB48O9_10proc_macro6bridge3rpcmINtB5_6DecodeuE6decodeCsaYD8yEaBVbr_12logos_derive.exit.i.i5.i.i.i.i.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  %.sroa.0.0.copyload.i.i.i6.i.i.i.i.i.i.i = load i32, ptr %i.g, align 4, !noalias !29 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !29
  %.not.i.i7.i.i.i.i.i.i.i = icmp eq i32 %.sroa.0.0.copyload.i.i.i6.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i7.i.i.i.i.i.i.i, label %.invoke.i.i, label %_RNvXs15_NtCseSCJ3UB48O9_10proc_macro6bridgeINtB6_11ExpnGlobalsNtNtB6_6client4SpanEINtNtB6_3rpc6DecodeuE6decodeCsaYD8yEaBVbr_12logos_derive.exit.i.i.i.i.i.i

_RNvXs15_NtCseSCJ3UB48O9_10proc_macro6bridgeINtB6_11ExpnGlobalsNtNtB6_6client4SpanEINtNtB6_3rpc6DecodeuE6decodeCsaYD8yEaBVbr_12logos_derive.exit.i.i.i.i.i.i: ; preds = %.noexc32.i.i
  %i.bd = add i64 %i.au, -12                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !30
  store i32 0, ptr %i.f, align 4, !noalias !30
  %i.be = icmp ugt i64 %i.bd, 3
  br i1 %i.be, label %_RNvXsf_NtNtCseSCJ3UB48O9_10proc_macro6bridge3rpcmINtB5_6DecodeuE6decodeCsaYD8yEaBVbr_12logos_derive.exit.i.i.i.i.i.i.i.i, label %.invoke77.i.i

.invoke77.i.i:                                    ; preds = %_RNvXs15_NtCseSCJ3UB48O9_10proc_macro6bridgeINtB6_11ExpnGlobalsNtNtB6_6client4SpanEINtNtB6_3rpc6DecodeuE6decodeCsaYD8yEaBVbr_12logos_derive.exit.i.i.i.i.i.i, %_RNvXs9_NtNtCseSCJ3UB48O9_10proc_macro6bridge6clientNtB5_4SpanINtNtB7_3rpc6DecodeuE6decodeCsaYD8yEaBVbr_12logos_derive.exit4.i.i.i.i.i.i.i, %_RNvXs9_NtNtCseSCJ3UB48O9_10proc_macro6bridge6clientNtB5_4SpanINtNtB7_3rpc6DecodeuE6decodeCsaYD8yEaBVbr_12logos_derive.exit.i.i.i.i.i.i.i, %.noexc24.i.i
  %i.bf = phi i64 [ %i.ba, %_RNvXs9_NtNtCseSCJ3UB48O9_10proc_macro6bridge6clientNtB5_4SpanINtNtB7_3rpc6DecodeuE6decodeCsaYD8yEaBVbr_12logos_derive.exit4.i.i.i.i.i.i.i ], [ %i.ax, %_RNvXs9_NtNtCseSCJ3UB48O9_10proc_macro6bridge6clientNtB5_4SpanINtNtB7_3rpc6DecodeuE6decodeCsaYD8yEaBVbr_12logos_derive.exit.i.i.i.i.i.i.i ], [ %i.au, %.noexc24.i.i ], [ %i.bd, %_RNvXs15_NtCseSCJ3UB48O9_10proc_macro6bridgeINtB6_11ExpnGlobalsNtNtB6_6client4SpanEINtNtB6_3rpc6DecodeuE6decodeCsaYD8yEaBVbr_12logos_derive.exit.i.i.i.i.i.i ]
  invoke void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 0, i64 4, i64 %i.bf, ptr nonnull align 8 @4) #9
          to label %.cont78.i.i unwind label %bb.e, !noalias !28

.cont78.i.i:                                      ; preds = %.invoke77.i.i
  unreachable

_RNvXsf_NtNtCseSCJ3UB48O9_10proc_macro6bridge3rpcmINtB5_6DecodeuE6decodeCsaYD8yEaBVbr_12logos_derive.exit.i.i.i.i.i.i.i.i: ; preds = %_RNvXs15_NtCseSCJ3UB48O9_10proc_macro6bridgeINtB6_11ExpnGlobalsNtNtB6_6client4SpanEINtNtB6_3rpc6DecodeuE6decodeCsaYD8yEaBVbr_12logos_derive.exit.i.i.i.i.i.i
  invoke void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECshTL54jFqpHF_11miniz_oxide(ptr nonnull %i.f, i64 4, ptr nonnull %i.bc, i64 4, ptr nonnull align 8 @4)
          to label %.noexc35.i.i unwind label %bb.e, !noalias !28

.noexc35.i.i:                                     ; preds = %_RNvXsf_NtNtCseSCJ3UB48O9_10proc_macro6bridge3rpcmINtB5_6DecodeuE6decodeCsaYD8yEaBVbr_12logos_derive.exit.i.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load i32, ptr %i.f, align 4, !noalias !30 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !30
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %.invoke.i.i, label %_RNvXs7_NtNtCseSCJ3UB48O9_10proc_macro6bridge3rpcTINtB7_11ExpnGlobalsNtNtB7_6client4SpanENtB9_11TokenStreamEINtB5_6DecodeuE6decodeCsaYD8yEaBVbr_12logos_derive.exit.i.i.i.i.i

.invoke.i.i:                                      ; preds = %.noexc35.i.i, %.noexc32.i.i, %.noexc29.i.i, %.noexc26.i.i
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr nonnull align 8 @3) #9
          to label %.cont.i.i unwind label %bb.e, !noalias !28

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_RNvXs7_NtNtCseSCJ3UB48O9_10proc_macro6bridge3rpcTINtB7_11ExpnGlobalsNtNtB7_6client4SpanENtB9_11TokenStreamEINtB5_6DecodeuE6decodeCsaYD8yEaBVbr_12logos_derive.exit.i.i.i.i.i: ; preds = %.noexc35.i.i
  %.sroa.310.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.310.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.ap, i64 40, i1 false), !noalias !28
  store ptr inttoptr (i64 1 to ptr), ptr %i.ap, align 8, !noalias !28
  %.sroa.46.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, i8 0, i64 16, i1 false), !noalias !28
  store ptr @_RNvNvXs4_NtNtCseSCJ3UB48O9_10proc_macro6bridge6bufferNtB7_6BufferINtNtCskKLDkoKarTP_4core7convert4FromINtNtCsexYYUdYSQU6_5alloc3vec3VechEE4from7reserve, ptr %.sroa.46.0..sroa_idx.i.i.i.i.i, align 8, !noalias !28
  %.sroa.57.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 32 ; 2 uses
  store ptr @_RNvNvXs4_NtNtCseSCJ3UB48O9_10proc_macro6bridge6bufferNtB7_6BufferINtNtCskKLDkoKarTP_4core7convert4FromINtNtCsexYYUdYSQU6_5alloc3vec3VechEE4from4drop, ptr %.sroa.57.0..sroa_idx.i.i.i.i.i, align 8, !noalias !28
  store i64 0, ptr %i.k, align 8, !noalias !28
  %i.bg = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store <2 x ptr> %i.aq, ptr %i.bg, align 8, !noalias !28
  %.sroa.411.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  store i32 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.411.0..sroa_idx.i.i.i.i.i, align 8, !noalias !28
  %.sroa.411.sroa.2.0..sroa.411.0..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 68
  store i32 %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i, ptr %.sroa.411.sroa.2.0..sroa.411.0..sroa_idx.sroa_idx.i.i.i.i.i, align 4, !noalias !28
  %.sroa.411.sroa.3.0..sroa.411.0..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  store i32 %.sroa.0.0.copyload.i.i.i6.i.i.i.i.i.i.i, ptr %.sroa.411.sroa.3.0..sroa.411.0..sroa_idx.sroa_idx.i.i.i.i.i, align 8, !noalias !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !28
  %i.bh = call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtNtCseSCJ3UB48O9_10proc_macro6bridge6client5state12BRIDGE_STATE0s_023___RUST_STD_INTERNAL_VAL) ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !noalias !28
  store ptr %i.k, ptr %i.bh, align 8, !noalias !28
  store ptr %i.bi, ptr %i.e, align 8, !noalias !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !28
  invoke void @_RNvXs1_NtCskKLDkoKarTP_4core7convertNtCseSCJ3UB48O9_10proc_macro11TokenStreamINtB5_4IntoNtCsgSMwPvzVUxY_11proc_macro211TokenStreamE4intoCshx33xqnyVJN_3syn(ptr nonnull sret([32 x i8]) align 8 %i.c, i32 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, ptr nonnull align 8 @1) #10
          to label %.noexc.i.i.i.i.i.i unwind label %bb.b, !noalias !28

.noexc.i.i.i.i.i.i:                               ; preds = %_RNvXs7_NtNtCseSCJ3UB48O9_10proc_macro6bridge3rpcTINtB7_11ExpnGlobalsNtNtB7_6client4SpanENtB9_11TokenStreamEINtB5_6DecodeuE6decodeCsaYD8yEaBVbr_12logos_derive.exit.i.i.i.i.i
  invoke void @_RNvCs2SM5xCHwwDm_13logos_codegen8generate(ptr nonnull sret([32 x i8]) align 8 %i.d, ptr nonnull align 8 %i.c)
          to label %.noexc3.i.i.i.i.i.i unwind label %bb.b, !noalias !28

.noexc3.i.i.i.i.i.i:                              ; preds = %.noexc.i.i.i.i.i.i
  %i.bj = invoke i32 @_RNvXs2_CsgSMwPvzVUxY_11proc_macro2NtCseSCJ3UB48O9_10proc_macro11TokenStreamINtNtCskKLDkoKarTP_4core7convert4FromNtB5_11TokenStreamE4from(ptr nonnull align 8 %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNvNtNtNtCseSCJ3UB48O9_10proc_macro6bridge6client5state3set13RestoreOnDropECsaYD8yEaBVbr_12logos_derive.exit7.i.i.i.i.i.i unwind label %bb.b, !noalias !28

bb.b:                                             ; preds = %.noexc3.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i, %_RNvXs7_NtNtCseSCJ3UB48O9_10proc_macro6bridge3rpcTINtB7_11ExpnGlobalsNtNtB7_6client4SpanENtB9_11TokenStreamEINtB5_6DecodeuE6decodeCsaYD8yEaBVbr_12logos_derive.exit.i.i.i.i.i
  %i.bk = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke void @_RNvXNvNtNtNtCseSCJ3UB48O9_10proc_macro6bridge6client5state3setNtB2_13RestoreOnDropNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr nonnull align 8 %i.e)
          to label %.thread.i.i.i.i.i unwind label %bb.c, !noalias !28

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNvNtNtNtCseSCJ3UB48O9_10proc_macro6bridge6client5state3set13RestoreOnDropECsaYD8yEaBVbr_12logos_derive.exit7.i.i.i.i.i.i: ; preds = %.noexc3.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !28
  invoke void @_RNvXNvNtNtNtCseSCJ3UB48O9_10proc_macro6bridge6client5state3setNtB2_13RestoreOnDropNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr nonnull align 8 %i.e)
          to label %.thread60.i.i unwind label %bb.d, !noalias !28

bb.c:                                             ; preds = %bb.b
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #11, !noalias !28
  unreachable

bb.d:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNvNtNtNtCseSCJ3UB48O9_10proc_macro6bridge6client5state3set13RestoreOnDropECsaYD8yEaBVbr_12logos_derive.exit7.i.i.i.i.i.i
  %i.bm = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.thread.i.i.i.i.i

.thread.i.i.i.i.i:                                ; preds = %bb.d, %bb.b
  %eh.lpad-body.i.i.i.i.i = phi { ptr, i32 } [ %i.bm, %bb.d ], [ %i.bk, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.310.0..sroa_idx.i.i.i.i.i, i64 40, i1 false), !noalias !28
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.310.0..sroa_idx.i.i.i.i.i, align 8, !noalias !28
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, i8 0, i64 16, i1 false), !noalias !28
  store ptr @_RNvNvXs4_NtNtCseSCJ3UB48O9_10proc_macro6bridge6bufferNtB7_6BufferINtNtCskKLDkoKarTP_4core7convert4FromINtNtCsexYYUdYSQU6_5alloc3vec3VechEE4from7reserve, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !28
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  store ptr @_RNvNvXs4_NtNtCseSCJ3UB48O9_10proc_macro6bridge6bufferNtB7_6BufferINtNtCskKLDkoKarTP_4core7convert4FromINtNtCsexYYUdYSQU6_5alloc3vec3VechEE4from4drop, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !28
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.bo = load ptr, ptr %i.bn, align 8, !noalias !28
  call void %i.bo(ptr nonnull byval([40 x i8]) align 8 %i.a) #12, !noalias !28, !inline_history !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !28
  br label %.body.i.i

bb.e:                                             ; preds = %.invoke.i.i, %_RNvXsf_NtNtCseSCJ3UB48O9_10proc_macro6bridge3rpcmINtB5_6DecodeuE6decodeCsaYD8yEaBVbr_12logos_derive.exit.i.i.i.i.i.i.i.i, %.invoke77.i.i, %_RNvXsf_NtNtCseSCJ3UB48O9_10proc_macro6bridge3rpcmINtB5_6DecodeuE6decodeCsaYD8yEaBVbr_12logos_derive.exit.i.i5.i.i.i.i.i.i.i, %_RNvXsf_NtNtCseSCJ3UB48O9_10proc_macro6bridge3rpcmINtB5_6DecodeuE6decodeCsaYD8yEaBVbr_12logos_derive.exit.i.i1.i.i.i.i.i.i.i, %_RNvXsf_NtNtCseSCJ3UB48O9_10proc_macro6bridge3rpcmINtB5_6DecodeuE6decodeCsaYD8yEaBVbr_12logos_derive.exit.i.i.i.i.i.i.i.i.i, %.noexc23.i.i, %bb.a
  %i.bp = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.e, %.thread.i.i.i.i.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.bp, %bb.e ], [ %eh.lpad-body.i.i.i.i.i, %.thread.i.i.i.i.i ]
  %i.bq = extractvalue { ptr, i32 } %eh.lpad-body.i.i, 0
  %i.br = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr %i.bq)
          to label %bb.g unwind label %bb.f, !noalias !28 ; 2 uses

bb.f:                                             ; preds = %.body.i.i
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !noalias !28
  unreachable

.thread60.i.i:                                    ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNvNtNtNtCseSCJ3UB48O9_10proc_macro6bridge6client5state3set13RestoreOnDropECsaYD8yEaBVbr_12logos_derive.exit7.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.310.0..sroa_idx.i.i.i.i.i, i64 40, i1 false), !noalias !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %i.ap, i64 40, i1 false), !noalias !28
  store ptr inttoptr (i64 1 to ptr), ptr %i.ap, align 8, !noalias !28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, i8 0, i64 16, i1 false), !noalias !28
  store ptr @_RNvNvXs4_NtNtCseSCJ3UB48O9_10proc_macro6bridge6bufferNtB7_6BufferINtNtCskKLDkoKarTP_4core7convert4FromINtNtCsexYYUdYSQU6_5alloc3vec3VechEE4from7reserve, ptr %.sroa.46.0..sroa_idx.i.i.i.i.i, align 8, !noalias !28
  store ptr @_RNvNvXs4_NtNtCseSCJ3UB48O9_10proc_macro6bridge6bufferNtB7_6BufferINtNtCskKLDkoKarTP_4core7convert4FromINtNtCsexYYUdYSQU6_5alloc3vec3VechEE4from4drop, ptr %.sroa.57.0..sroa_idx.i.i.i.i.i, align 8, !noalias !28
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.bu = load ptr, ptr %i.bt, align 8, !noalias !28
  call void %i.bu(ptr nonnull byval([40 x i8]) align 8 %i.b) #12, !noalias !28, !inline_history !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ap, ptr noundef nonnull align 8 dereferenceable(40) %i.j, i64 40, i1 false), !noalias !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !28
  %.sroa.4.8.insert.ext.i.i = zext i32 %i.bj to i64
  %i.bv = inttoptr i64 %.sroa.4.8.insert.ext.i.i to ptr
  store i64 0, ptr %i.at, align 8, !noalias !28
  br label %.thread62.i.i

bb.g:                                             ; preds = %.body.i.i
  %i.bw = extractvalue { ptr, ptr } %i.br, 0      ; 2 uses
  %i.bx = extractvalue { ptr, ptr } %i.br, 1      ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 33 uses
  store i64 0, ptr %i.by, align 8, !noalias !28
  %.not.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i.i, label %.thread62.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvXNtNtCseSCJ3UB48O9_10proc_macro6bridge13panic_messageNtB2_12PanicMessageINtNtCskKLDkoKarTP_4core7convert4FromINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB1g_3any3AnyNtNtB1g_6marker4SendEL_EE4from(ptr nonnull sret([24 x i8]) align 8 %i.ao, ptr nonnull %i.bw, ptr align 8 %i.bx)
          to label %bb.i unwind label %.critedge.body, !noalias !28

.thread62.i.i:                                    ; preds = %bb.g, %.thread60.i.i
  %i.bz = phi ptr [ %i.at, %.thread60.i.i ], [ %i.by, %bb.g ]
  %i.ca = phi ptr [ %i.bv, %.thread60.i.i ], [ %i.bx, %bb.g ]
  %i.cb = ptrtoint ptr %i.ca to i64
  %.sroa.4.8.extract.trunc.i.i = trunc i64 %i.cb to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !28
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  br label %bb.l

bb.i:                                             ; preds = %bb.h
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.ao, align 8, !noalias !28 ; 5 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.sroa.4.0.copyload.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !28 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !28
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  %.not.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i, -1
  br i1 %.not.i.i.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.6.0..sroa_idx.i.i, i64 12, i1 false), !noalias !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !28
  %i.cc = load i64, ptr %i.by, align 8, !noalias !28 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 5 uses
  %i.ce = load i64, ptr %i.cd, align 8, !noalias !28
  %i.cf = icmp eq i64 %i.cc, %i.ce
  br i1 %i.cf, label %bb.k, label %bb.u

bb.k:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.am, ptr noundef nonnull align 8 dereferenceable(40) %i.ap, i64 40, i1 false), !noalias !28
  store ptr inttoptr (i64 1 to ptr), ptr %i.ap, align 8, !noalias !28
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.by, i8 0, i64 16, i1 false), !noalias !28
  store ptr @_RNvNvXs4_NtNtCseSCJ3UB48O9_10proc_macro6bridge6bufferNtB7_6BufferINtNtCskKLDkoKarTP_4core7convert4FromINtNtCsexYYUdYSQU6_5alloc3vec3VechEE4from7reserve, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !28
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 32 ; 2 uses
  store ptr @_RNvNvXs4_NtNtCseSCJ3UB48O9_10proc_macro6bridge6bufferNtB7_6BufferINtNtCskKLDkoKarTP_4core7convert4FromINtNtCsexYYUdYSQU6_5alloc3vec3VechEE4from4drop, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !28
  %i.cg = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8, !noalias !28
  call void %i.ch(ptr nonnull sret([40 x i8]) align 8 %i.al, ptr nonnull byval([40 x i8]) align 8 %i.am, i64 1) #12, !noalias !28, !inline_history !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ak, ptr noundef nonnull align 8 dereferenceable(40) %i.ap, i64 40, i1 false), !noalias !28
  store ptr inttoptr (i64 1 to ptr), ptr %i.ap, align 8, !noalias !28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.by, i8 0, i64 16, i1 false), !noalias !28
  store ptr @_RNvNvXs4_NtNtCseSCJ3UB48O9_10proc_macro6bridge6bufferNtB7_6BufferINtNtCskKLDkoKarTP_4core7convert4FromINtNtCsexYYUdYSQU6_5alloc3vec3VechEE4from7reserve, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !28
  store ptr @_RNvNvXs4_NtNtCseSCJ3UB48O9_10proc_macro6bridge6bufferNtB7_6BufferINtNtCskKLDkoKarTP_4core7convert4FromINtNtCsexYYUdYSQU6_5alloc3vec3VechEE4from4drop, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !28
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.cj = load ptr, ptr %i.ci, align 8, !noalias !28
  call void %i.cj(ptr nonnull byval([40 x i8]) align 8 %i.ak) #12, !noalias !28, !inline_history !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ap, ptr noundef nonnull align 8 dereferenceable(40) %i.al, i64 40, i1 false), !noalias !28
  %.pre.i.i.i.i = load i64, ptr %i.by, align 8, !noalias !28
  br label %bb.u

bb.l:                                             ; preds = %bb.i, %.thread62.i.i
  %.sroa.4.04666.i.i = phi i32 [ %.sroa.4.8.extract.trunc.i.i, %.thread62.i.i ], [ %.sroa.4.0.copyload.i.i, %bb.i ] ; 2 uses
  %i.ck = phi ptr [ %i.bz, %.thread62.i.i ], [ %i.by, %bb.i ] ; 23 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !28
  %2 = load i64, ptr %i.ck, align 8, !noalias !28 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 4 uses
  %i.cm = load i64, ptr %i.cl, align 8, !noalias !28
  %i.cn = icmp eq i64 %2, %i.cm
  br i1 %i.cn, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.aj, ptr noundef nonnull align 8 dereferenceable(40) %i.ap, i64 40, i1 false), !noalias !28
  store ptr inttoptr (i64 1 to ptr), ptr %i.ap, align 8, !noalias !28
  %.sroa.4.0..sroa_idx.i4.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ck, i8 0, i64 16, i1 false), !noalias !28
  store ptr @_RNvNvXs4_NtNtCseSCJ3UB48O9_10proc_macro6bridge6bufferNtB7_6BufferINtNtCskKLDkoKarTP_4core7convert4FromINtNtCsexYYUdYSQU6_5alloc3vec3VechEE4from7reserve, ptr %.sroa.4.0..sroa_idx.i4.i.i.i, align 8, !noalias !28
  %.sroa.5.0..sroa_idx.i5.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 32 ; 2 uses
  store ptr @_RNvNvXs4_NtNtCseSCJ3UB48O9_10proc_macro6bridge6bufferNtB7_6BufferINtNtCskKLDkoKarTP_4core7convert4FromINtNtCsexYYUdYSQU6_5alloc3vec3VechEE4from4drop, ptr %.sroa.5.0..sroa_idx.i5.i.i.i, align 8, !noalias !28
  %i.co = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.cp = load ptr, ptr %i.co, align 8, !noalias !28
  call void %i.cp(ptr nonnull sret([40 x i8]) align 8 %i.ai, ptr nonnull byval([40 x i8]) align 8 %i.aj, i64 1) #12, !noalias !28, !inline_history !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ah, ptr noundef nonnull align 8 dereferenceable(40) %i.ap, i64 40, i1 false), !noalias !28
  store ptr inttoptr (i64 1 to ptr), ptr %i.ap, align 8, !noalias !28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ck, i8 0, i64 16, i1 false), !noalias !28
  store ptr @_RNvNvXs4_NtNtCseSCJ3UB48O9_10proc_macro6bridge6bufferNtB7_6BufferINtNtCskKLDkoKarTP_4core7convert4FromINtNtCsexYYUdYSQU6_5alloc3vec3VechEE4from7reserve, ptr %.sroa.4.0..sroa_idx.i4.i.i.i, align 8, !noalias !28
  store ptr @_RNvNvXs4_NtNtCseSCJ3UB48O9_10proc_macro6bridge6bufferNtB7_6BufferINtNtCskKLDkoKarTP_4core7convert4FromINtNtCsexYYUdYSQU6_5alloc3vec3VechEE4from4drop, ptr %.sroa.5.0..sroa_idx.i5.i.i.i, align 8, !noalias !28
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.cr = load ptr, ptr %i.cq, align 8, !noalias !28
  call void %i.cr(ptr nonnull byval([40 x i8]) align 8 %i.ah) #12, !noalias !28, !inline_history !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ap, ptr noundef nonnull align 8 dereferenceable(40) %i.ai, i64 40, i1 false), !noalias !28
  %.pre.i6.i.i.i = load i64, ptr %i.ck, align 8, !noalias !28
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.cs = phi i64 [ %2, %bb.l ], [ %.pre.i6.i.i.i, %bb.m ]
  %i.ct = load ptr, ptr %i.ap, align 8, !noalias !28
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cs
  store i8 0, ptr %i.cu, align 1, !noalias !28
  %i.cv = load i64, ptr %i.ck, align 8, !noalias !28
  %i.cw = add i64 %i.cv, 1                        ; 5 uses
  store i64 %i.cw, ptr %i.ck, align 8, !noalias !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !28
  %.not.i.i.i.i.i = icmp eq i32 %.sroa.4.04666.i.i, 0
  br i1 %.not.i.i.i.i.i, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !28
  %i.cx = load i64, ptr %i.cl, align 8, !noalias !28
  %i.cy = icmp eq i64 %i.cw, %i.cx
  br i1 %i.cy, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ag, ptr noundef nonnull align 8 dereferenceable(40) %i.ap, i64 40, i1 false), !noalias !28
  store ptr inttoptr (i64 1 to ptr), ptr %i.ap, align 8, !noalias !28
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ck, i8 0, i64 16, i1 false), !noalias !28
  store ptr @_RNvNvXs4_NtNtCseSCJ3UB48O9_10proc_macro6bridge6bufferNtB7_6BufferINtNtCskKLDkoKarTP_4core7convert4FromINtNtCsexYYUdYSQU6_5alloc3vec3VechEE4from7reserve, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !28
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 32 ; 2 uses
  store ptr @_RNvNvXs4_NtNtCseSCJ3UB48O9_10proc_macro6bridge6bufferNtB7_6BufferINtNtCskKLDkoKarTP_4core7convert4FromINtNtCsexYYUdYSQU6_5alloc3vec3VechEE4from4drop, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !28
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.da = load ptr, ptr %i.cz, align 8, !noalias !28
  call void %i.da(ptr nonnull sret([40 x i8]) align 8 %i.af, ptr nonnull byval([40 x i8]) align 8 %i.ag, i64 1) #12, !noalias !28, !inline_history !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ae, ptr noundef nonnull align 8 dereferenceable(40) %i.ap, i64 40, i1 false), !noalias !28
  store ptr inttoptr (i64 1 to ptr), ptr %i.ap, align 8, !noalias !28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ck, i8 0, i64 16, i1 false), !noalias !28
  store ptr @_RNvNvXs4_NtNtCseSCJ3UB48O9_10proc_macro6bridge6bufferNtB7_6BufferINtNtCskKLDkoKarTP_4core7convert4FromINtNtCsexYYUdYSQU6_5alloc3vec3VechEE4from7reserve, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !28
  store ptr @_RNvNvXs4_NtNtCseSCJ3UB48O9_10proc_macro6bridge6bufferNtB7_6BufferINtNtCskKLDkoKarTP_4core7convert4FromINtNtCsexYYUdYSQU6_5alloc3vec3VechEE4from4drop, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !28
  %i.db = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.dc = load ptr, ptr %i.db, align 8, !noalias !28
  call void %i.dc(ptr nonnull byval([40 x i8]) align 8 %i.ae) #12, !noalias !28, !inline_history !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ap, ptr noundef nonnull align 8 dereferenceable(40) %i.af, i64 40, i1 false), !noalias !28
  %.pre.i.i.i.i.i.i = load i64, ptr %i.ck, align 8, !noalias !28
  br label %bb.s

bb.q:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !28
  %i.dd = load i64, ptr %i.cl, align 8, !noalias !28
  %i.de = icmp eq i64 %i.cw, %i.dd
  br i1 %i.de, label %bb.r, label %_RNvMs2_NtNtCseSCJ3UB48O9_10proc_macro6bridge6bufferNtB5_6Buffer4pushCsaYD8yEaBVbr_12logos_derive.exit7.i.i.i.i.i

bb.r:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ad, ptr noundef nonnull align 8 dereferenceable(40) %i.ap, i64 40, i1 false), !noalias !28
  store ptr inttoptr (i64 1 to ptr), ptr %i.ap, align 8, !noalias !28
  %.sroa.4.0..sroa_idx.i4.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ck, i8 0, i64 16, i1 false), !noalias !28
  store ptr @_RNvNvXs4_NtNtCseSCJ3UB48O9_10proc_macro6bridge6bufferNtB7_6BufferINtNtCskKLDkoKarTP_4core7convert4FromINtNtCsexYYUdYSQU6_5alloc3vec3VechEE4from7reserve, ptr %.sroa.4.0..sroa_idx.i4.i.i.i.i.i, align 8, !noalias !28
  %.sroa.5.0..sroa_idx.i5.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 32 ; 2 uses
  store ptr @_RNvNvXs4_NtNtCseSCJ3UB48O9_10proc_macro6bridge6bufferNtB7_6BufferINtNtCskKLDkoKarTP_4core7convert4FromINtNtCsexYYUdYSQU6_5alloc3vec3VechEE4from4drop, ptr %.sroa.5.0..sroa_idx.i5.i.i.i.i.i, align 8, !noalias !28
  %i.df = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.dg = load ptr, ptr %i.df, align 8, !noalias !28
  call void %i.dg(ptr nonnull sret([40 x i8]) align 8 %i.ac, ptr nonnull byval([40 x i8]) align 8 %i.ad, i64 1) #12, !noalias !28, !inline_history !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ab, ptr noundef nonnull align 8 dereferenceable(40) %i.ap, i64 40, i1 false), !noalias !28
  store ptr inttoptr (i64 1 to ptr), ptr %i.ap, align 8, !noalias !28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ck, i8 0, i64 16, i1 false), !noalias !28
  store ptr @_RNvNvXs4_NtNtCseSCJ3UB48O9_10proc_macro6bridge6bufferNtB7_6BufferINtNtCskKLDkoKarTP_4core7convert4FromINtNtCsexYYUdYSQU6_5alloc3vec3VechEE4from7reserve, ptr %.sroa.4.0..sroa_idx.i4.i.i.i.i.i, align 8, !noalias !28
  store ptr @_RNvNvXs4_NtNtCseSCJ3UB48O9_10proc_macro6bridge6bufferNtB7_6BufferINtNtCskKLDkoKarTP_4core7convert4FromINtNtCsexYYUdYSQU6_5alloc3vec3VechEE4from4drop, ptr %.sroa.5.0..sroa_idx.i5.i.i.i.i.i, align 8, !noalias !28
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.di = load ptr, ptr %i.dh, align 8, !noalias !28
  call void %i.di(ptr nonnull byval([40 x i8]) align 8 %i.ab) #12, !noalias !28, !inline_history !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ap, ptr noundef nonnull align 8 dereferenceable(40) %i.ac, i64 40, i1 false), !noalias !28
  %.pre.i6.i.i.i.i.i = load i64, ptr %i.ck, align 8, !noalias !28
  br label %_RNvMs2_NtNtCseSCJ3UB48O9_10proc_macro6bridge6bufferNtB5_6Buffer4pushCsaYD8yEaBVbr_12logos_derive.exit7.i.i.i.i.i

_RNvMs2_NtNtCseSCJ3UB48O9_10proc_macro6bridge6bufferNtB5_6Buffer4pushCsaYD8yEaBVbr_12logos_derive.exit7.i.i.i.i.i: ; preds = %bb.r, %bb.q
  %i.dj = phi i64 [ %i.cw, %bb.q ], [ %.pre.i6.i.i.i.i.i, %bb.r ]
  %i.dk = load ptr, ptr %i.ap, align 8, !noalias !28
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.dj
  store i8 1, ptr %i.dl, align 1, !noalias !28
  %i.dm = load i64, ptr %i.ck, align 8, !noalias !28
  %i.dn = add i64 %i.dm, 1
  store i64 %i.dn, ptr %i.ck, align 8, !noalias !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !28
  br label %bb.ac

bb.s:                                             ; preds = %bb.p, %bb.o
  %i.do = phi i64 [ %i.cw, %bb.o ], [ %.pre.i.i.i.i.i.i, %bb.p ]
  %i.dp = load ptr, ptr %i.ap, align 8, !noalias !28
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.do
  store i8 0, ptr %i.dq, align 1, !noalias !28
  %i.dr = load i64, ptr %i.ck, align 8, !noalias !28
  %i.ds = add i64 %i.dr, 1                        ; 3 uses
  store i64 %i.ds, ptr %i.ck, align 8, !noalias !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !28
  %i.dt = load i64, ptr %i.cl, align 8, !noalias !28
  %i.du = sub i64 %i.dt, %i.ds
  %i.dv = icmp ult i64 %i.du, 4
  br i1 %i.dv, label %bb.t, label %_RNvXs1_NtNtCseSCJ3UB48O9_10proc_macro6bridge6clientNtB5_11TokenStreamINtNtB7_3rpc6EncodeuE6encodeCsaYD8yEaBVbr_12logos_derive.exit.i.i.i.i.i

bb.t:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.aa, ptr noundef nonnull align 8 dereferenceable(40) %i.ap, i64 40, i1 false), !noalias !28
  store ptr inttoptr (i64 1 to ptr), ptr %i.ap, align 8, !noalias !28
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ck, i8 0, i64 16, i1 false), !noalias !28
  store ptr @_RNvNvXs4_NtNtCseSCJ3UB48O9_10proc_macro6bridge6bufferNtB7_6BufferINtNtCskKLDkoKarTP_4core7convert4FromINtNtCsexYYUdYSQU6_5alloc3vec3VechEE4from7reserve, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !28
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 32 ; 2 uses
  store ptr @_RNvNvXs4_NtNtCseSCJ3UB48O9_10proc_macro6bridge6bufferNtB7_6BufferINtNtCskKLDkoKarTP_4core7convert4FromINtNtCsexYYUdYSQU6_5alloc3vec3VechEE4from4drop, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !28
  %i.dw = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.dx = load ptr, ptr %i.dw, align 8, !noalias !28
  call void %i.dx(ptr nonnull sret([40 x i8]) align 8 %i.z, ptr nonnull byval([40 x i8]) align 8 %i.aa, i64 4) #12, !noalias !28, !inline_history !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.y, ptr noundef nonnull align 8 dereferenceable(40) %i.ap, i64 40, i1 false), !noalias !28
  store ptr inttoptr (i64 1 to ptr), ptr %i.ap, align 8, !noalias !28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ck, i8 0, i64 16, i1 false), !noalias !28
  store ptr @_RNvNvXs4_NtNtCseSCJ3UB48O9_10proc_macro6bridge6bufferNtB7_6BufferINtNtCskKLDkoKarTP_4core7convert4FromINtNtCsexYYUdYSQU6_5alloc3vec3VechEE4from7reserve, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !28
  store ptr @_RNvNvXs4_NtNtCseSCJ3UB48O9_10proc_macro6bridge6bufferNtB7_6BufferINtNtCskKLDkoKarTP_4core7convert4FromINtNtCsexYYUdYSQU6_5alloc3vec3VechEE4from4drop, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !28
  %i.dy = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.dz = load ptr, ptr %i.dy, align 8, !noalias !28
  call void %i.dz(ptr nonnull byval([40 x i8]) align 8 %i.y) #12, !noalias !28, !inline_history !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ap, ptr noundef nonnull align 8 dereferenceable(40) %i.z, i64 40, i1 false), !noalias !28
  %.pre.i.i.i.i.i.i.i = load i64, ptr %i.ck, align 8, !noalias !28
  br label %_RNvXs1_NtNtCseSCJ3UB48O9_10proc_macro6bridge6clientNtB5_11TokenStreamINtNtB7_3rpc6EncodeuE6encodeCsaYD8yEaBVbr_12logos_derive.exit.i.i.i.i.i

_RNvXs1_NtNtCseSCJ3UB48O9_10proc_macro6bridge6clientNtB5_11TokenStreamINtNtB7_3rpc6EncodeuE6encodeCsaYD8yEaBVbr_12logos_derive.exit.i.i.i.i.i: ; preds = %bb.t, %bb.s
  %i.ea = phi i64 [ %i.ds, %bb.s ], [ %.pre.i.i.i.i.i.i.i, %bb.t ]
  %i.eb = load ptr, ptr %i.ap, align 8, !noalias !28
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.ea
  store i32 %.sroa.4.04666.i.i, ptr %i.ec, align 1, !noalias !28
  %i.ed = load i64, ptr %i.ck, align 8, !noalias !28
  %i.ee = add i64 %i.ed, 4
  store i64 %i.ee, ptr %i.ck, align 8, !noalias !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !28
  br label %bb.ac

bb.u:                                             ; preds = %bb.k, %bb.j
  %i.ef = phi i64 [ %i.cc, %bb.j ], [ %.pre.i.i.i.i, %bb.k ]
  %i.eg = load ptr, ptr %i.ap, align 8, !noalias !28
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.ef
  store i8 1, ptr %i.eh, align 1, !noalias !28
  %i.ei = load i64, ptr %i.by, align 8, !noalias !28
  %i.ej = add i64 %i.ei, 1                        ; 5 uses
  store i64 %i.ej, ptr %i.by, align 8, !noalias !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !28
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.an, align 8, !noalias !28
  %.sroa.444.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  store i32 %.sroa.4.0.copyload.i.i, ptr %.sroa.444.0..sroa_idx.i.i, align 8, !noalias !28
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.i.i, i64 12, i1 false), !noalias !28
  %i.ek = icmp eq i64 %.sroa.0.0.copyload.i.i, -9223372036854775806
  br i1 %i.ek, label %.thread.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.sroa.0.0.i.i.i.i = load ptr, ptr %.sroa.444.0..sroa_idx.i.i, align 8, !noalias !28 ; 2 uses
  %.sroa.4.0.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %.sroa.4.0.i.i.i.i = load i64, ptr %.sroa.4.0.in.i.i.i.i, align 8, !noalias !28 ; 5 uses
  %.not.i.i8.i.i.i = icmp eq ptr %.sroa.0.0.i.i.i.i, null
  br i1 %.not.i.i8.i.i.i, label %.thread.i.i.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !28
end_hunk_0
