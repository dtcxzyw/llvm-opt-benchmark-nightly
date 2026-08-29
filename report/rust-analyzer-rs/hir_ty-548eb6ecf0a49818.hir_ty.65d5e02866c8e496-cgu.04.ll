Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir_ty-548eb6ecf0a49818.hir_ty.65d5e02866c8e496-cgu.04?download=true
inline.NumInlined: 5206
inline.NumDeleted: 1999
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_RINvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB6_9Evaluator23exec_looked_up_functionINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtB1r_5slice4iter4IterNtB6_13IntervalAndTyENCNvB2_17exec_fn_with_args0EEBa_:bb.a
  %i.qu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #44
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8K4cjrcxBsw_6hir_ty3mir4eval6LocalsEBH_.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCs8K4cjrcxBsw_6hir_ty3mir4eval8IntervalEEEB1A_.exit.i.i
  %i.qv = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  call void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtCs8K4cjrcxBsw_6hir_ty3mir8PlaceRefuEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.qv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  br label %bb.fo

bb.fn:                                            ; preds = %bb.fh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  %i.qw = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.qx = load ptr, ptr %i.qw, align 8, !nonnull !5, !align !449, !noundef !5
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qx, i64 152
  %.sroa.922.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.922.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(12) %i.qy, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.bo, i64 64, i1 false)
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 1, ptr %.sroa.417.0..sroa_idx, align 8
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 %12, ptr %.sroa.518.0..sroa_idx, align 4
  %.sroa.619.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %.sroa.640.0.copyload, ptr %.sroa.619.0..sroa_idx, align 8
  %.sroa.720.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %8, ptr %.sroa.720.0..sroa_idx, align 8
  %.sroa.821.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 %9, ptr %.sroa.821.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fw, %bb.fy, %bb.fz, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8K4cjrcxBsw_6hir_ty3mir4eval6LocalsEBH_.exit, %bb.fn, %bb.fe
  ret void

bb.fp:                                            ; preds = %bb.fg
  %i.qz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #44
  unreachable

_RINvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB6_9Evaluator13interpret_mirINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtB1h_5slice4iter4IterNtB6_13IntervalAndTyENCNvB2_17exec_fn_with_args0EEBa_.exit.thread: ; preds = %bb.c, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8K4cjrcxBsw_6hir_ty3mir4eval6LocalsEBH_.exit92, %_RINvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB6_9Evaluator13interpret_mirINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtB1h_5slice4iter4IterNtB6_13IntervalAndTyENCNvB2_17exec_fn_with_args0EEBa_.exit
  %.sroa.0.3744 = phi i32 [ %.sroa.0.3, %_RINvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB6_9Evaluator13interpret_mirINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtB1h_5slice4iter4IterNtB6_13IntervalAndTyENCNvB2_17exec_fn_with_args0EEBa_.exit ], [ 12, %bb.c ], [ %i.cd, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8K4cjrcxBsw_6hir_ty3mir4eval6LocalsEBH_.exit92 ]
  %.sroa.11.3743 = phi i32 [ %.sroa.11.3, %_RINvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB6_9Evaluator13interpret_mirINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtB1h_5slice4iter4IterNtB6_13IntervalAndTyENCNvB2_17exec_fn_with_args0EEBa_.exit ], [ undef, %bb.c ], [ %.sroa.4371.0.copyload, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8K4cjrcxBsw_6hir_ty3mir4eval6LocalsEBH_.exit92 ]
  %.sroa.13.3742 = phi ptr [ %.sroa.13.3, %_RINvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB6_9Evaluator13interpret_mirINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtB1h_5slice4iter4IterNtB6_13IntervalAndTyENCNvB2_17exec_fn_with_args0EEBa_.exit ], [ undef, %bb.c ], [ %.sroa.5372.0.copyload, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8K4cjrcxBsw_6hir_ty3mir4eval6LocalsEBH_.exit92 ]
  %.sroa.16.sroa.0.3741 = phi i64 [ %.sroa.16.sroa.0.3, %_RINvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB6_9Evaluator13interpret_mirINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtB1h_5slice4iter4IterNtB6_13IntervalAndTyENCNvB2_17exec_fn_with_args0EEBa_.exit ], [ undef, %bb.c ], [ %.sroa.6373.0.copyload, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8K4cjrcxBsw_6hir_ty3mir4eval6LocalsEBH_.exit92 ]
  %.sroa.16.sroa.9.3740 = phi ptr [ %.sroa.16.sroa.9.3, %_RINvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB6_9Evaluator13interpret_mirINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtB1h_5slice4iter4IterNtB6_13IntervalAndTyENCNvB2_17exec_fn_with_args0EEBa_.exit ], [ undef, %bb.c ], [ %.sroa.7374.0.copyload, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8K4cjrcxBsw_6hir_ty3mir4eval6LocalsEBH_.exit92 ]
  %.sroa.16.sroa.10.3739 = phi i64 [ %.sroa.16.sroa.10.3, %_RINvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB6_9Evaluator13interpret_mirINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtB1h_5slice4iter4IterNtB6_13IntervalAndTyENCNvB2_17exec_fn_with_args0EEBa_.exit ], [ undef, %bb.c ], [ %.sroa.8375.0.copyload, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8K4cjrcxBsw_6hir_ty3mir4eval6LocalsEBH_.exit92 ]
  %.sroa.16.sroa.12.1738 = phi i64 [ %.sroa.16.sroa.12.1, %_RINvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB6_9Evaluator13interpret_mirINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtB1h_5slice4iter4IterNtB6_13IntervalAndTyENCNvB2_17exec_fn_with_args0EEBa_.exit ], [ undef, %bb.c ], [ %.sroa.9376.0.copyload, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8K4cjrcxBsw_6hir_ty3mir4eval6LocalsEBH_.exit92 ]
  %.in = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ra = load ptr, ptr %.in, align 8, !nonnull !5, !align !449, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj)
  store i32 %.sroa.0.3744, ptr %i.bj, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  store i32 %.sroa.11.3743, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.5119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store ptr %.sroa.13.3742, ptr %.sroa.5119.0..sroa_idx, align 8
  %.sroa.6120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  store i64 %.sroa.16.sroa.0.3741, ptr %.sroa.6120.0..sroa_idx, align 8
  %.sroa.6120.sroa.4.0..sroa.6120.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  store ptr %.sroa.16.sroa.9.3740, ptr %.sroa.6120.sroa.4.0..sroa.6120.0..sroa_idx.sroa_idx, align 8
  %.sroa.6120.sroa.5.0..sroa.6120.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  store i64 %.sroa.16.sroa.10.3739, ptr %.sroa.6120.sroa.5.0..sroa.6120.0..sroa_idx.sroa_idx, align 8
  %.sroa.6120.sroa.6.0..sroa.6120.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 40
  store i64 %.sroa.16.sroa.12.1738, ptr %.sroa.6120.sroa.6.0..sroa.6120.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !2801
  call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !2806
  %i.rb = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 1, -9223372036854775808) 48, i64 noundef range(i64 1, 17) 8) #48, !noalias !2806 ; 4 uses
  %i.rc = icmp eq ptr %i.rb, null
  br i1 %i.rc, label %bb.fq, label %_RNvMNtCsbSS6DM8SDEO_5alloc5boxedINtB2_3BoxNtNtNtCs8K4cjrcxBsw_6hir_ty3mir4eval12MirEvalErrorE3newBK_.exit.i62, !prof !7

bb.fq:                                            ; preds = %_RINvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB6_9Evaluator13interpret_mirINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtB1h_5slice4iter4IterNtB6_13IntervalAndTyENCNvB2_17exec_fn_with_args0EEBa_.exit.thread
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #45
          to label %.noexc.i unwind label %bb.fr, !noalias !2801

.noexc.i:                                         ; preds = %bb.fq
  unreachable

bb.fr:                                            ; preds = %bb.fq
  %i.rd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8K4cjrcxBsw_6hir_ty3mir4eval12MirEvalErrorEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.bj) #42
          to label %common.resume unwind label %bb.fs, !noalias !2809

bb.fs:                                            ; preds = %bb.fr
  %i.re = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #44, !noalias !2809
  unreachable

_RNvMNtCsbSS6DM8SDEO_5alloc5boxedINtB2_3BoxNtNtNtCs8K4cjrcxBsw_6hir_ty3mir4eval12MirEvalErrorE3newBK_.exit.i62: ; preds = %_RINvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB6_9Evaluator13interpret_mirINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtB1h_5slice4iter4IterNtB6_13IntervalAndTyENCNvB2_17exec_fn_with_args0EEBa_.exit.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.rb, ptr noundef nonnull align 8 dereferenceable(48) %i.bj, i64 48, i1 false), !noalias !2809
  store ptr %i.rb, ptr %i.ap, align 8, !noalias !2801
  call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !2801
  %i.rf = call noundef align 4 dereferenceable_or_null(32) ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 1, -9223372036854775808) 32, i64 noundef range(i64 1, 17) 4) #48, !noalias !2801 ; 8 uses
  %i.rg = icmp eq ptr %i.rf, null
  br i1 %i.rg, label %bb.ft, label %bb.fw, !prof !7

bb.ft:                                            ; preds = %_RNvMNtCsbSS6DM8SDEO_5alloc5boxedINtB2_3BoxNtNtNtCs8K4cjrcxBsw_6hir_ty3mir4eval12MirEvalErrorE3newBK_.exit.i62
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 4, i64 noundef 32) #45
          to label %.noexc10.i unwind label %bb.fu, !noalias !2801

.noexc10.i:                                       ; preds = %bb.ft
  unreachable

bb.fu:                                            ; preds = %bb.ft
  %i.rh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxNtNtNtCs8K4cjrcxBsw_6hir_ty3mir4eval12MirEvalErrorEEB1g_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ap) #42
          to label %common.resume unwind label %bb.fv, !noalias !2801

bb.fv:                                            ; preds = %bb.fu
  %i.ri = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #44, !noalias !2801
  unreachable

bb.fw:                                            ; preds = %_RNvMNtCsbSS6DM8SDEO_5alloc5boxedINtB2_3BoxNtNtNtCs8K4cjrcxBsw_6hir_ty3mir4eval12MirEvalErrorE3newBK_.exit.i62
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ra, i64 152
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.rf, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(12) %i.rj, i64 12, i1 false), !noalias !2801
  store i32 0, ptr %i.rf, align 4, !noalias !2801
  %.sroa.01.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.rf, i64 4
  store i32 %4, ptr %.sroa.01.sroa.4.0..sroa_idx.i, align 4, !noalias !2801
  %.sroa.01.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.rf, i64 8
  store i32 %5, ptr %.sroa.01.sroa.5.0..sroa_idx.i, align 4, !noalias !2801
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.rf, i64 12
  store i32 %8, ptr %.sroa.42.0..sroa_idx.i, align 4, !noalias !2801
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.rf, i64 16
  store i32 %9, ptr %.sroa.53.0..sroa_idx.i, align 4, !noalias !2801
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !2801
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  %i.rk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 10, ptr %i.rk, align 8
  %.sroa.448.sroa.4.0..sroa.448.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.rb, ptr %.sroa.448.sroa.4.0..sroa.448.0..sroa_idx.sroa_idx, align 8
  %.sroa.448.sroa.5.0..sroa.448.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 1, ptr %.sroa.448.sroa.5.0..sroa.448.0..sroa_idx.sroa_idx, align 8
  %.sroa.448.sroa.6.0..sroa.448.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.rf, ptr %.sroa.448.sroa.6.0..sroa.448.0..sroa_idx.sroa_idx, align 8
  %.sroa.549.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 1, ptr %.sroa.549.0..sroa_idx, align 8
  store i64 -2, ptr %0, align 8
  br label %bb.fo

bb.fx:                                            ; preds = %_RINvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB6_9Evaluator13interpret_mirINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtB1h_5slice4iter4IterNtB6_13IntervalAndTyENCNvB2_17exec_fn_with_args0EEBa_.exit
  store ptr %.sroa.13.3, ptr %i.bl, align 8
  %.sroa.626.sroa.7.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store i64 %.sroa.16.sroa.0.3, ptr %.sroa.626.sroa.7.4..sroa_idx, align 8
  %.sroa.626.sroa.8.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store ptr %.sroa.16.sroa.9.3, ptr %.sroa.626.sroa.8.4..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk)
  %.val = load i64, ptr %10, align 8, !range !438, !noundef !5
  %i.rl = getelementptr inbounds nuw i8, ptr %10, i64 8
  %.val58 = load i64, ptr %i.rl, align 8, !noundef !5
  call fastcc void @_RNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_9Evaluator18copy_from_interval(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(48) %i.bk, ptr noalias nofree noundef nonnull readonly align 16 dereferenceable(1120) %1, i64 noundef %.val, i64 noundef %.val58, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.bl)
  %i.rm = load i32, ptr %i.bk, align 8, !range !430, !noundef !5
  %.not56 = icmp eq i32 %i.rm, -1
  br i1 %.not56, label %bb.fz, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.rn = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.rn, ptr noundef nonnull align 8 dereferenceable(48) %i.bk, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  store i64 -2, ptr %0, align 8
  br label %bb.fo

bb.fz:                                            ; preds = %bb.fx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  store i64 -1, ptr %0, align 8
  br label %bb.fo
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB6_9Evaluator34coerce_unsized_look_through_fieldsNtNtNtBa_11next_solver2ty2TyNvNvMs9_B6_BE_14coerce_unsized7for_ptrEBa_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef nonnull readonly align 16 captures(none) %1, ptr noundef nonnull %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [12 x i8], align 4                ; 6 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.j, %bb.a
  %.tr40 = phi ptr [ %2, %bb.a ], [ %.sroa.715.0.copyload17, %bb.j ] ; 6 uses
  %.sroa.0.0.copyload12 = load i32, ptr %.tr40, align 8 ; 3 uses
  %.sroa.715.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %.tr40, i64 8
  %.sroa.715.0.copyload17 = load ptr, ptr %.sroa.715.0..sroa_idx16, align 8 ; 5 uses
  %i.d = icmp ne i32 %.sroa.0.0.copyload12, 27
  tail call void @llvm.assume(i1 %i.d)
  %i.e = add nsw i32 %.sroa.0.0.copyload12, -2
  %i.f = icmp samesign ugt i32 %.sroa.0.0.copyload12, 1
  %narrow.i.i = select i1 %i.f, i32 %i.e, i32 25
  switch i32 %narrow.i.i, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterINtNtBb_6option6OptionNtNtCs8K4cjrcxBsw_6hir_ty5lower9FieldTypeEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldIBR_TINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def10signatures9FieldDataERB1c_EENCINvNvXs_NtNtB1Z_8adapters9enumerateINtB4g_9EnumeratepEB1T_4fold9enumerateRBQ_B2D_NCINvNtB4i_10filter_map15filter_map_foldTjB5j_EB2H_B2D_NCNvMNtB2L_3mapINtB6p_8ArenaMapB2I_B1c_E4iter0INvNvB1T_4last4someB2H_EE0E0EB1g_.exit.thread [
    i32 11, label %_RNvYNvNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtBa_9Evaluator14coerce_unsized7for_ptrINtNtNtCshzWfHUSfYae_4core3ops8function2FnTINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir7ty_kind6TyKindNtNtNtBe_11next_solver8interner10DbInternerEEE4callBe_.exit
    i32 12, label %bb.b
    i32 5, label %bb.i
    i32 9, label %bb.j
  ]

bb.b:                                             ; preds = %tailrecurse
  %.sroa.9.0..sroa_idx19.le = getelementptr inbounds nuw i8, ptr %.tr40, i64 16
  %.sroa.9.sroa.0.0.copyload.le69 = load ptr, ptr %.sroa.9.0..sroa_idx19.le, align 8
  br label %_RNvYNvNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtBa_9Evaluator14coerce_unsized7for_ptrINtNtNtCshzWfHUSfYae_4core3ops8function2FnTINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir7ty_kind6TyKindNtNtNtBe_11next_solver8interner10DbInternerEEE4callBe_.exit

_RNvYNvNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtBa_9Evaluator14coerce_unsized7for_ptrINtNtNtCshzWfHUSfYae_4core3ops8function2FnTINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir7ty_kind6TyKindNtNtNtBe_11next_solver8interner10DbInternerEEE4callBe_.exit: ; preds = %tailrecurse, %bb.b
  %.sroa.0.0.i.i = phi ptr [ %.sroa.9.sroa.0.0.copyload.le69, %bb.b ], [ %.sroa.715.0.copyload17, %tailrecurse ] ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0.i.i, null
  br i1 %.not, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterINtNtBb_6option6OptionNtNtCs8K4cjrcxBsw_6hir_ty5lower9FieldTypeEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldIBR_TINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def10signatures9FieldDataERB1c_EENCINvNvXs_NtNtB1Z_8adapters9enumerateINtB4g_9EnumeratepEB1T_4fold9enumerateRBQ_B2D_NCINvNtB4i_10filter_map15filter_map_foldTjB5j_EB2H_B2D_NCNvMNtB2L_3mapINtB6p_8ArenaMapB2I_B1c_E4iter0INvNvB1T_4last4someB2H_EE0E0EB1g_.exit.thread, label %bb.c

bb.c:                                             ; preds = %_RNvYNvNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtBa_9Evaluator14coerce_unsized7for_ptrINtNtNtCshzWfHUSfYae_4core3ops8function2FnTINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir7ty_kind6TyKindNtNtNtBe_11next_solver8interner10DbInternerEEE4callBe_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.i.i, ptr %i.g, align 8
  store i32 -1, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.l, %_RNvMsA_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver2tyNtB5_2Ty5store.exit, %bb.c
  ret void

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterINtNtBb_6option6OptionNtNtCs8K4cjrcxBsw_6hir_ty5lower9FieldTypeEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldIBR_TINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def10signatures9FieldDataERB1c_EENCINvNvXs_NtNtB1Z_8adapters9enumerateINtB4g_9EnumeratepEB1T_4fold9enumerateRBQ_B2D_NCINvNtB4i_10filter_map15filter_map_foldTjB5j_EB2H_B2D_NCNvMNtB2L_3mapINtB6p_8ArenaMapB2I_B1c_E4iter0INvNvB1T_4last4someB2H_EE0E0EB1g_.exit.thread: ; preds = %tailrecurse, %_RNvYNvNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtBa_9Evaluator14coerce_unsized7for_ptrINtNtNtCshzWfHUSfYae_4core3ops8function2FnTINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir7ty_kind6TyKindNtNtNtBe_11next_solver8interner10DbInternerEEE4callBe_.exit, %bb.k, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterINtNtBb_6option6OptionNtNtCs8K4cjrcxBsw_6hir_ty5lower9FieldTypeEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldIBR_TINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def10signatures9FieldDataERB1c_EENCINvNvXs_NtNtB1Z_8adapters9enumerateINtB4g_9EnumeratepEB1T_4fold9enumerateRBQ_B2D_NCINvNtB4i_10filter_map15filter_map_foldTjB5j_EB2H_B2D_NCNvMNtB2L_3mapINtB6p_8ArenaMapB2I_B1c_E4iter0INvNvB1T_4last4someB2H_EE0E0EB1g_.exit, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.h = getelementptr inbounds i8, ptr %.tr40, i64 -8 ; 4 uses
  store ptr %i.h, ptr %i.b, align 8
  %i.i = atomicrmw add ptr %i.h, i64 1 monotonic, align 8
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %bb.e, label %_RNvMsA_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver2tyNtB5_2Ty5store.exit, !prof !7

bb.e:                                             ; preds = %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterINtNtBb_6option6OptionNtNtCs8K4cjrcxBsw_6hir_ty5lower9FieldTypeEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldIBR_TINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def10signatures9FieldDataERB1c_EENCINvNvXs_NtNtB1Z_8adapters9enumerateINtB4g_9EnumeratepEB1T_4fold9enumerateRBQ_B2D_NCINvNtB4i_10filter_map15filter_map_foldTjB5j_EB2H_B2D_NCNvMNtB2L_3mapINtB6p_8ArenaMapB2I_B1c_E4iter0INvNvB1T_4last4someB2H_EE0E0EB1g_.exit.thread
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #45
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = atomicrmw sub ptr %i.h, i64 1 release, align 8, !noalias !2810
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.g, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedEEB1h_.exit.i.i

bb.g:                                             ; preds = %bb.f
  fence acquire
  call void @_RNvMs6_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE9drop_slowBO_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.b) #46
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedEEB1h_.exit.i.i

bb.h:                                             ; preds = %bb.e
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedEEB1h_.exit.i.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.k

_RNvMsA_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver2tyNtB5_2Ty5store.exit: ; preds = %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterINtNtBb_6option6OptionNtNtCs8K4cjrcxBsw_6hir_ty5lower9FieldTypeEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldIBR_TINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def10signatures9FieldDataERB1c_EENCINvNvXs_NtNtB1Z_8adapters9enumerateINtB4g_9EnumeratepEB1T_4fold9enumerateRBQ_B2D_NCINvNtB4i_10filter_map15filter_map_foldTjB5j_EB2H_B2D_NCNvMNtB2L_3mapINtB6p_8ArenaMapB2I_B1c_E4iter0INvNvB1T_4last4someB2H_EE0E0EB1g_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i32 14, ptr %0, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %.sroa.48.0..sroa_idx, align 8
  br label %bb.d

bb.i:                                             ; preds = %tailrecurse
  %.sroa.9.0..sroa_idx19.le72 = getelementptr inbounds nuw i8, ptr %.tr40, i64 16
  %.sroa.9.sroa.0.0.copyload.le = load ptr, ptr %.sroa.9.0..sroa_idx19.le72, align 8
  %3 = ptrtoint ptr %.sroa.9.sroa.0.0.copyload.le to i64 ; 2 uses
  %switch.idx.cast.i38 = and i64 %3, 255
  %i.n = icmp eq i64 %switch.idx.cast.i38, 0
  br i1 %i.n, label %bb.k, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterINtNtBb_6option6OptionNtNtCs8K4cjrcxBsw_6hir_ty5lower9FieldTypeEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldIBR_TINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def10signatures9FieldDataERB1c_EENCINvNvXs_NtNtB1Z_8adapters9enumerateINtB4g_9EnumeratepEB1T_4fold9enumerateRBQ_B2D_NCINvNtB4i_10filter_map15filter_map_foldTjB5j_EB2H_B2D_NCNvMNtB2L_3mapINtB6p_8ArenaMapB2I_B1c_E4iter0INvNvB1T_4last4someB2H_EE0E0EB1g_.exit.thread

bb.j:                                             ; preds = %tailrecurse
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.715.0.copyload17) ]
  br label %tailrecurse

bb.k:                                             ; preds = %bb.i
  %.sroa.9.sroa.7.0..sroa.9.0..sroa_idx19.sroa_idx.le = getelementptr inbounds nuw i8, ptr %.tr40, i64 24
  %.sroa.9.sroa.7.0.copyload.le = load i32, ptr %.sroa.9.sroa.7.0..sroa.9.0..sroa_idx19.sroa_idx.le, align 8
  %.sroa.031.4.extract.shift = lshr i64 %3, 32
  %.sroa.031.4.extract.trunc = trunc nuw i64 %.sroa.031.4.extract.shift to i32
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.715.0.copyload17) ]
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 544
  %i.p = load ptr, ptr %i.o, align 16, !nonnull !5, !noundef !5
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 552
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !5, !align !449, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %.sroa.031.4.extract.trunc, ptr %i.s, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 %.sroa.9.sroa.7.0.copyload.le, ptr %i.t, align 4
  store i32 1, ptr %i.c, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 488
  %i.v = load ptr, ptr %i.u, align 8, !invariant.load !5, !nonnull !5
  %i.w = call noundef nonnull align 8 ptr %i.v(ptr noundef nonnull %i.p, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(12) %i.c) #47 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !noundef !5 ; 4 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterINtNtBb_6option6OptionNtNtCs8K4cjrcxBsw_6hir_ty5lower9FieldTypeEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldIBR_TINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def10signatures9FieldDataERB1c_EENCINvNvXs_NtNtB1Z_8adapters9enumerateINtB4g_9EnumeratepEB1T_4fold9enumerateRBQ_B2D_NCINvNtB4i_10filter_map15filter_map_foldTjB5j_EB2H_B2D_NCNvMNtB2L_3mapINtB6p_8ArenaMapB2I_B1c_E4iter0INvNvB1T_4last4someB2H_EE0E0EB1g_.exit.thread, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.k
  %xtraiter = and i64 %i.aa, 3                    ; 3 uses
  %i.ac = icmp ult i64 %i.aa, 4
  br i1 %i.ac, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i64 %i.aa, -4
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %.sroa.06.0.i = phi i64 [ 0, %.preheader.preheader.new ], [ %i.ao, %.preheader ] ; 5 uses
  %.sroa.64.0.i = phi ptr [ null, %.preheader.preheader.new ], [ %.pn1.i.i.i.3, %.preheader ]
  %niter = phi i64 [ 0, %.preheader.preheader.new ], [ %niter.next.3, %.preheader ]
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %.sroa.06.0.i ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !2817, !noalias !2824, !noundef !5
  %.not.i.i.i.i = icmp eq ptr %i.ae, null
  %.pn1.i.i.i = select i1 %.not.i.i.i.i, ptr %.sroa.64.0.i, ptr %i.ad
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %.sroa.06.0.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !2817, !noalias !2824, !noundef !5
  %.not.i.i.i.i.1 = icmp eq ptr %i.ah, null
  %.pn1.i.i.i.1 = select i1 %.not.i.i.i.i.1, ptr %.pn1.i.i.i, ptr %i.ag
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %.sroa.06.0.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !2817, !noalias !2824, !noundef !5
  %.not.i.i.i.i.2 = icmp eq ptr %i.ak, null
  %.pn1.i.i.i.2 = select i1 %.not.i.i.i.i.2, ptr %.pn1.i.i.i.1, ptr %i.aj
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %.sroa.06.0.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 48 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !2817, !noalias !2824, !noundef !5
  %.not.i.i.i.i.3 = icmp eq ptr %i.an, null
  %.pn1.i.i.i.3 = select i1 %.not.i.i.i.i.3, ptr %.pn1.i.i.i.2, ptr %i.am ; 3 uses
  %i.ao = add nuw i64 %.sroa.06.0.i, 4            ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterINtNtBb_6option6OptionNtNtCs8K4cjrcxBsw_6hir_ty5lower9FieldTypeEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldIBR_TINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def10signatures9FieldDataERB1c_EENCINvNvXs_NtNtB1Z_8adapters9enumerateINtB4g_9EnumeratepEB1T_4fold9enumerateRBQ_B2D_NCINvNtB4i_10filter_map15filter_map_foldTjB5j_EB2H_B2D_NCNvMNtB2L_3mapINtB6p_8ArenaMapB2I_B1c_E4iter0INvNvB1T_4last4someB2H_EE0E0EB1g_.exit.unr-lcssa, label %.preheader

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterINtNtBb_6option6OptionNtNtCs8K4cjrcxBsw_6hir_ty5lower9FieldTypeEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldIBR_TINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def10signatures9FieldDataERB1c_EENCINvNvXs_NtNtB1Z_8adapters9enumerateINtB4g_9EnumeratepEB1T_4fold9enumerateRBQ_B2D_NCINvNtB4i_10filter_map15filter_map_foldTjB5j_EB2H_B2D_NCNvMNtB2L_3mapINtB6p_8ArenaMapB2I_B1c_E4iter0INvNvB1T_4last4someB2H_EE0E0EB1g_.exit.unr-lcssa: ; preds = %.preheader
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterINtNtBb_6option6OptionNtNtCs8K4cjrcxBsw_6hir_ty5lower9FieldTypeEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldIBR_TINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def10signatures9FieldDataERB1c_EENCINvNvXs_NtNtB1Z_8adapters9enumerateINtB4g_9EnumeratepEB1T_4fold9enumerateRBQ_B2D_NCINvNtB4i_10filter_map15filter_map_foldTjB5j_EB2H_B2D_NCNvMNtB2L_3mapINtB6p_8ArenaMapB2I_B1c_E4iter0INvNvB1T_4last4someB2H_EE0E0EB1g_.exit, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterINtNtBb_6option6OptionNtNtCs8K4cjrcxBsw_6hir_ty5lower9FieldTypeEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldIBR_TINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def10signatures9FieldDataERB1c_EENCINvNvXs_NtNtB1Z_8adapters9enumerateINtB4g_9EnumeratepEB1T_4fold9enumerateRBQ_B2D_NCINvNtB4i_10filter_map15filter_map_foldTjB5j_EB2H_B2D_NCNvMNtB2L_3mapINtB6p_8ArenaMapB2I_B1c_E4iter0INvNvB1T_4last4someB2H_EE0E0EB1g_.exit.unr-lcssa, %.preheader.preheader
  %.sroa.06.0.i.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %i.ao, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterINtNtBb_6option6OptionNtNtCs8K4cjrcxBsw_6hir_ty5lower9FieldTypeEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldIBR_TINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def10signatures9FieldDataERB1c_EENCINvNvXs_NtNtB1Z_8adapters9enumerateINtB4g_9EnumeratepEB1T_4fold9enumerateRBQ_B2D_NCINvNtB4i_10filter_map15filter_map_foldTjB5j_EB2H_B2D_NCNvMNtB2L_3mapINtB6p_8ArenaMapB2I_B1c_E4iter0INvNvB1T_4last4someB2H_EE0E0EB1g_.exit.unr-lcssa ]
  %.sroa.64.0.i.epil.init = phi ptr [ null, %.preheader.preheader ], [ %.pn1.i.i.i.3, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterINtNtBb_6option6OptionNtNtCs8K4cjrcxBsw_6hir_ty5lower9FieldTypeEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldIBR_TINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def10signatures9FieldDataERB1c_EENCINvNvXs_NtNtB1Z_8adapters9enumerateINtB4g_9EnumeratepEB1T_4fold9enumerateRBQ_B2D_NCINvNtB4i_10filter_map15filter_map_foldTjB5j_EB2H_B2D_NCNvMNtB2L_3mapINtB6p_8ArenaMapB2I_B1c_E4iter0INvNvB1T_4last4someB2H_EE0E0EB1g_.exit.unr-lcssa ]
  %lcmp.mod91 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod91)
  br label %.preheader.epil

.preheader.epil:                                  ; preds = %.preheader.epil, %.preheader.epil.preheader
  %.sroa.06.0.i.epil = phi i64 [ %i.ar, %.preheader.epil ], [ %.sroa.06.0.i.epil.init, %.preheader.epil.preheader ] ; 2 uses
  %.sroa.64.0.i.epil = phi ptr [ %.pn1.i.i.i.epil, %.preheader.epil ], [ %.sroa.64.0.i.epil.init, %.preheader.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.epil ], [ 0, %.preheader.epil.preheader ]
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %.sroa.06.0.i.epil ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !alias.scope !2817, !noalias !2824, !noundef !5
  %.not.i.i.i.i.epil = icmp eq ptr %i.aq, null
  %.pn1.i.i.i.epil = select i1 %.not.i.i.i.i.epil, ptr %.sroa.64.0.i.epil, ptr %i.ap ; 2 uses
  %i.ar = add nuw i64 %.sroa.06.0.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterINtNtBb_6option6OptionNtNtCs8K4cjrcxBsw_6hir_ty5lower9FieldTypeEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldIBR_TINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def10signatures9FieldDataERB1c_EENCINvNvXs_NtNtB1Z_8adapters9enumerateINtB4g_9EnumeratepEB1T_4fold9enumerateRBQ_B2D_NCINvNtB4i_10filter_map15filter_map_foldTjB5j_EB2H_B2D_NCNvMNtB2L_3mapINtB6p_8ArenaMapB2I_B1c_E4iter0INvNvB1T_4last4someB2H_EE0E0EB1g_.exit, label %.preheader.epil, !llvm.loop !2828

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterINtNtBb_6option6OptionNtNtCs8K4cjrcxBsw_6hir_ty5lower9FieldTypeEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldIBR_TINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def10signatures9FieldDataERB1c_EENCINvNvXs_NtNtB1Z_8adapters9enumerateINtB4g_9EnumeratepEB1T_4fold9enumerateRBQ_B2D_NCINvNtB4i_10filter_map15filter_map_foldTjB5j_EB2H_B2D_NCNvMNtB2L_3mapINtB6p_8ArenaMapB2I_B1c_E4iter0INvNvB1T_4last4someB2H_EE0E0EB1g_.exit: ; preds = %.preheader.epil, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterINtNtBb_6option6OptionNtNtCs8K4cjrcxBsw_6hir_ty5lower9FieldTypeEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldIBR_TINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def10signatures9FieldDataERB1c_EENCINvNvXs_NtNtB1Z_8adapters9enumerateINtB4g_9EnumeratepEB1T_4fold9enumerateRBQ_B2D_NCINvNtB4i_10filter_map15filter_map_foldTjB5j_EB2H_B2D_NCNvMNtB2L_3mapINtB6p_8ArenaMapB2I_B1c_E4iter0INvNvB1T_4last4someB2H_EE0E0EB1g_.exit.unr-lcssa
  %.pn1.i.i.i.lcssa = phi ptr [ %.pn1.i.i.i.3, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterINtNtBb_6option6OptionNtNtCs8K4cjrcxBsw_6hir_ty5lower9FieldTypeEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldIBR_TINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def10signatures9FieldDataERB1c_EENCINvNvXs_NtNtB1Z_8adapters9enumerateINtB4g_9EnumeratepEB1T_4fold9enumerateRBQ_B2D_NCINvNtB4i_10filter_map15filter_map_foldTjB5j_EB2H_B2D_NCNvMNtB2L_3mapINtB6p_8ArenaMapB2I_B1c_E4iter0INvNvB1T_4last4someB2H_EE0E0EB1g_.exit.unr-lcssa ], [ %.pn1.i.i.i.epil, %.preheader.epil ] ; 2 uses
  %.not10 = icmp eq ptr %.pn1.i.i.i.lcssa, null
  br i1 %.not10, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterINtNtBb_6option6OptionNtNtCs8K4cjrcxBsw_6hir_ty5lower9FieldTypeEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldIBR_TINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def10signatures9FieldDataERB1c_EENCINvNvXs_NtNtB1Z_8adapters9enumerateINtB4g_9EnumeratepEB1T_4fold9enumerateRBQ_B2D_NCINvNtB4i_10filter_map15filter_map_foldTjB5j_EB2H_B2D_NCNvMNtB2L_3mapINtB6p_8ArenaMapB2I_B1c_E4iter0INvNvB1T_4last4someB2H_EE0E0EB1g_.exit.thread, label %bb.l

bb.l:                                             ; preds = %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterINtNtBb_6option6OptionNtNtCs8K4cjrcxBsw_6hir_ty5lower9FieldTypeEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldIBR_TINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def10signatures9FieldDataERB1c_EENCINvNvXs_NtNtB1Z_8adapters9enumerateINtB4g_9EnumeratepEB1T_4fold9enumerateRBQ_B2D_NCINvNtB4i_10filter_map15filter_map_foldTjB5j_EB2H_B2D_NCNvMNtB2L_3mapINtB6p_8ArenaMapB2I_B1c_E4iter0INvNvB1T_4last4someB2H_EE0E0EB1g_.exit
  %.val11 = load ptr, ptr %.pn1.i.i.i.lcssa, align 8, !nonnull !5, !noundef !5
  %i.as = getelementptr inbounds nuw i8, ptr %.val11, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 16 dereferenceable(32) %i.at, i64 32, i1 false)
  %i.au = call noundef nonnull ptr @_RINvMsq_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB6_11EarlyBinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerNtNtB1b_2ty2TyE11instantiateNtNtB1b_11generic_arg11GenericArgsEB1d_(ptr noundef nonnull %i.as, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.a, ptr noundef nonnull %.sroa.715.0.copyload17)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call fastcc void @_RINvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB6_9Evaluator34coerce_unsized_look_through_fieldsNtNtNtBa_11next_solver2ty2TyNvNvMs9_B6_BE_14coerce_unsized7for_ptrEBa_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %0, ptr noundef nonnull align 16 %1, ptr noundef nonnull %i.au)
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RINvMsc_NtCs8K4cjrcxBsw_6hir_ty3mirNtB6_5BinOp11run_compareINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtBY_5HalfSEEB8_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef nonnull readonly align 16 captures(address) dead_on_return dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 16 captures(address) dead_on_return dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %i.c = load i8, ptr %0, align 1, !range !2829, !noundef !5
  switch i8 %i.c, label %bb.b [
    i8 10, label %bb.c
    i8 11, label %bb.d
    i8 12, label %bb.e
    i8 13, label %bb.f
    i8 14, label %bb.g
    i8 15, label %bb.h
  ], !prof !2830

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8, !captures !557
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtCs8K4cjrcxBsw_6hir_ty3mir5BinOpNtB6_5Debug3fmtBA_, ptr %.sroa.43.0..sroa_idx, align 8
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @89, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @91) #43
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvXs2_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(32) %2)
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  %i.e = tail call noundef i8 @_RNvXs3_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSENtNtCshzWfHUSfYae_4core3cmp10PartialOrd11partial_cmpCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(32) %2) ; 2 uses
  %.not.i = icmp ne i8 %i.e, -2
  %i.f = icmp slt i8 %i.e, 0
  %.sroa.0.0.i = and i1 %.not.i, %i.f
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  %i.g = tail call noundef i8 @_RNvXs3_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSENtNtCshzWfHUSfYae_4core3cmp10PartialOrd11partial_cmpCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(32) %2) ; 2 uses
  %.not.i4 = icmp ne i8 %i.g, -2
  %i.h = icmp slt i8 %i.g, 1
  %.sroa.0.0.i5 = and i1 %.not.i4, %i.h
  br label %bb.i

bb.f:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 @_RNvXs2_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(32) %2)
  %i.j = xor i1 %i.i, true
  br label %bb.i

bb.g:                                             ; preds = %bb.a
  %i.k = tail call noundef i8 @_RNvXs3_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSENtNtCshzWfHUSfYae_4core3cmp10PartialOrd11partial_cmpCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(32) %2)
  %i.l = icmp sgt i8 %i.k, -1
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  %i.m = tail call noundef i8 @_RNvXs3_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSENtNtCshzWfHUSfYae_4core3cmp10PartialOrd11partial_cmpCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(32) %2)
  %i.n = icmp sgt i8 %i.m, 0
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  %.sroa.0.0.in = phi i1 [ %i.d, %bb.c ], [ %.sroa.0.0.i, %bb.d ], [ %.sroa.0.0.i5, %bb.e ], [ %i.j, %bb.f ], [ %i.l, %bb.g ], [ %i.n, %bb.h ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RINvMsc_NtCs8K4cjrcxBsw_6hir_ty3mirNtB6_5BinOp11run_compareINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtBY_5QuadSEEB8_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef nonnull readonly align 16 captures(address) dead_on_return dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 16 captures(address) dead_on_return dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %i.c = load i8, ptr %0, align 1, !range !2829, !noundef !5
  switch i8 %i.c, label %bb.b [
    i8 10, label %bb.c
    i8 11, label %bb.d
    i8 12, label %bb.e
    i8 13, label %bb.f
    i8 14, label %bb.g
    i8 15, label %bb.h
  ], !prof !2830

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8, !captures !557
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtCs8K4cjrcxBsw_6hir_ty3mir5BinOpNtB6_5Debug3fmtBA_, ptr %.sroa.43.0..sroa_idx, align 8
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @89, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @91) #43
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvXs2_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(32) %2)
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  %i.e = tail call noundef i8 @_RNvXs3_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSENtNtCshzWfHUSfYae_4core3cmp10PartialOrd11partial_cmpCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(32) %2) ; 2 uses
  %.not.i = icmp ne i8 %i.e, -2
  %i.f = icmp slt i8 %i.e, 0
  %.sroa.0.0.i = and i1 %.not.i, %i.f
  br label %bb.i

end_hunk_0
