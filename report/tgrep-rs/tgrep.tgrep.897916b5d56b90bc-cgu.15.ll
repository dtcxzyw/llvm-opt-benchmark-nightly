Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tgrep-rs/original/tgrep.tgrep.897916b5d56b90bc-cgu.15?download=true
inline.NumInlined: 691
inline.NumDeleted: 235
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_RINvNtCsjYKKaZ3qa7A_6anyhow5error23object_reallocate_boxedNtNtNtCsf3Ta7LF998c_4core2io5error5ErrorECsbNLsQi0JuJ4_5tgrep:bb.a
  store ptr %i.c, ptr %i.d, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !7, !alias.scope !308, !noundef !5
  %i.n = icmp eq i64 %i.m, 2
  br i1 %i.n, label %bb.g, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5Xr050g3D4S_3std9backtrace9BacktraceEECsbNLsQi0JuJ4_5tgrep.exit5

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_RNvXs0_NtNtCs5Xr050g3D4S_3std4sync9lazy_lockINtB5_8LazyLockNtNtB9_9backtrace7CaptureNCNvNtBX_6helper12lazy_resolve0ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.o)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5Xr050g3D4S_3std9backtrace9BacktraceEECsbNLsQi0JuJ4_5tgrep.exit5 unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5Xr050g3D4S_3std9backtrace9BacktraceEECsbNLsQi0JuJ4_5tgrep.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5Xr050g3D4S_3std9backtrace9BacktraceEECsbNLsQi0JuJ4_5tgrep.exit5: ; preds = %bb.f, %bb.g
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 64, i64 noundef 8) #25
  %i.q = insertvalue { ptr, ptr } poison, ptr %i.d, 0
  %i.r = insertvalue { ptr, ptr } %i.q, ptr @21, 1
  ret { ptr, ptr } %i.r

bb.i:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5Xr050g3D4S_3std9backtrace9BacktraceEECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.e, %.body, %bb.h
  %.pn = phi { ptr, i32 } [ %i.p, %bb.h ], [ %i.f, %.body ], [ %i.f, %bb.e ]
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 64, i64 noundef 8) #25
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs2_NtCsjFxWRWgRcyr_5rayon6resultINtNtCsf3Ta7LF998c_4core6result6ResultINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultENtNtB1g_6string6StringEINtNtB8_4iter20FromParallelIteratorIBA_B1I_B2v_EE13from_par_iterINtNtB2V_3map3MapINtNtB8_5slice4IterTB2v_INtNtB1g_4sync3ArcNtB1K_11DecodedFileEEENCNvB1K_13handle_searchs2_0EEB1M_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %.sroa.5 = alloca [16 x i8], align 8            ; 4 uses
  %i.d = alloca [40 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [32 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i32 0, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i8 0, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 -1, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %i.f, ptr %.sroa.4.0..sroa_idx, align 8
  invoke void @_RINvXNtNtCsjFxWRWgRcyr_5rayon4iter13from_par_iterINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultEINtB5_20FromParallelIteratorB1i_E13from_par_iterINtNtB5_10while_some9WhileSomeINtNtB5_3map3MapIB3m_INtNtB7_5slice4IterTNtNtBQ_6string6StringINtNtBQ_4sync3ArcNtB1k_11DecodedFileEEENCNvB1k_13handle_searchs2_0ENCINvNvXs2_NtB7_6resultINtNtCsf3Ta7LF998c_4core6result6ResultppEIB26_IB5O_ppEE13from_par_iter2okB1i_B40_E0EEEB1m_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.d)
          to label %bb.b unwind label %bb.p

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false)
  invoke void @_RNvMs5_NtNtNtCs5Xr050g3D4S_3std4sync6poison5mutexINtB5_5MutexINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEE10into_innerCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.f, %bb.c
  %eh.lpad-body = phi { ptr, i32 } [ %i.i, %bb.c ], [ %i.m, %bb.f ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #31
          to label %common.resume unwind label %bb.o

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.experimental.noalias.scope.decl(metadata !312)
  call void @llvm.experimental.noalias.scope.decl(metadata !313)
  %i.j = load i64, ptr %i.c, align 8, !range !8, !alias.scope !313, !noalias !312, !noundef !5
  %i.k = trunc nuw i64 %i.j to i1
  br i1 %i.k, label %bb.e, label %bb.i, !prof !6

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !314
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !312
  invoke void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @48, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #33
          to label %bb.g unwind label %bb.f, !noalias !314

bb.f:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCs5Xr050g3D4S_3std4sync6poison11PoisonErrorINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #31
          to label %.body unwind label %bb.h, !noalias !314

bb.g:                                             ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30, !noalias !314
  unreachable

bb.i:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.012.0.copyload13 = load i64, ptr %i.o, align 8, !alias.scope !314 ; 2 uses
  %.sroa.5.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx14, i64 16, i1 false), !alias.scope !314
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not = icmp eq i64 %.sroa.012.0.copyload13, -1
  br i1 %.not, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.416.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, i64 16, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.012.0.copyload13, ptr %i.p, align 8
  store i64 1, ptr %0, align 8
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultEEB1c_.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

common.resume:                                    ; preds = %bb.p, %.body, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.q, %bb.k ], [ %i.u, %bb.p ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultEEB1c_.exit: ; preds = %bb.j
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  br label %bb.n

bb.m:                                             ; preds = %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  store i64 0, ptr %0, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultEEB1c_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  ret void

bb.o:                                             ; preds = %bb.p, %.body
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.p:                                             ; preds = %bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(32) %i.f) #31
          to label %common.resume unwind label %bb.o
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvXsb_NtNtCsgCecv3eZDcN_5alloc5boxed4iterINtB8_3BoxSINtNtNtCsf3Ta7LF998c_4core3mem12maybe_uninit11MaybeUninitNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefEEINtNtNtNtBX_4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB2z_8adapters3map3MapINtNtNtBX_3ops5range5RangejENCNvMs_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB4r_6BufferB1L_E5alloc0EECsbNLsQi0JuJ4_5tgrep(i64 noundef %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtCsf3Ta7LF998c_4core3mem12maybe_uninit11MaybeUninitNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefEEINtB2_12SpecFromIterBU_INtNtNtNtB11_4iter8adapters3map3MapINtNtNtB11_3ops5range5RangejENCNvMs_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB42_6BufferB1P_E5alloc0EE9from_iterCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %0, i64 noundef %1)
  %i.b = call { ptr, i64 } @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecINtNtNtCsf3Ta7LF998c_4core3mem12maybe_uninit11MaybeUninitNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefEE16into_boxed_sliceCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { ptr, i64 } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvXsb_NtNtCsgCecv3eZDcN_5alloc5boxed4iterINtB8_3BoxSINtNtNtNtCs5Xr050g3D4S_3std4sync4mpmc5array4SlotNtNtCs6mHKL3HfXZM_12notify_types5event5EventEEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB2t_8adapters3map3MapINtNtNtB2v_3ops5range5RangejENCNvMs_BT_INtBT_7ChannelB1C_E13with_capacity0EECsbNLsQi0JuJ4_5tgrep(i64 noundef %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtNtCs5Xr050g3D4S_3std4sync4mpmc5array4SlotNtNtCs6mHKL3HfXZM_12notify_types5event5EventEEINtB2_12SpecFromIterBU_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB2W_3ops5range5RangejENCNvMs_BX_INtBX_7ChannelB1G_E13with_capacity0EE9from_iterCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %0, i64 noundef %1)
  %i.b = call { ptr, i64 } @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecINtNtNtNtCs5Xr050g3D4S_3std4sync4mpmc5array4SlotNtNtCs6mHKL3HfXZM_12notify_types5event5EventEE16into_boxed_sliceCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { ptr, i64 } %i.b
}

; Function Attrs: cold inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvMNtNtNtCs5Xr050g3D4S_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs1_NtB7_4listINtB1b_7ChannelNtNtCs6mHKL3HfXZM_12notify_types5event5EventE4recvs_0uEs0_0CsbNLsQi0JuJ4_5tgrep(ptr nofree captures(none) %.0.val) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = tail call noundef nonnull ptr @_RNvMNtNtNtCs5Xr050g3D4S_3std4sync4mpmc7contextNtB2_7Context3new() ; 2 uses
  store ptr %i.c, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.sroa.0.0.copyload = load ptr, ptr %.0.val, align 8 ; 2 uses
  store ptr null, ptr %.0.val, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.c, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  store ptr %.sroa.0.0.copyload, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i64 16, i1 false)
  invoke fastcc void @_RNCNvMs1_NtNtNtCs5Xr050g3D4S_3std4sync4mpmc4listINtB7_7ChannelNtNtCs6mHKL3HfXZM_12notify_types5event5EventE4recvs_0CsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a, ptr nonnull %i.c)
          to label %bb.g unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #33
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !327)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !328)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !329)
  %i.e = load ptr, ptr %i.b, align 8, !alias.scope !330, !nonnull !5, !noundef !5
  %i.f = atomicrmw sub ptr %i.e, i64 1 release, align 8, !noalias !330
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.e, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs5Xr050g3D4S_3std4sync4mpmc7context7ContextECsbNLsQi0JuJ4_5tgrep.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtNtCs5Xr050g3D4S_3std4sync4mpmc7context5InnerE9drop_slowCsaNF60lbdjjq_6notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #32
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs5Xr050g3D4S_3std4sync4mpmc7context7ContextECsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.i

bb.f:                                             ; preds = %bb.c
  unreachable

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !331)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !332)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !333)
  %i.h = load ptr, ptr %i.b, align 8, !alias.scope !334, !nonnull !5, !noundef !5
  %i.i = atomicrmw sub ptr %i.h, i64 1 release, align 8, !noalias !334
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.h, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs5Xr050g3D4S_3std4sync4mpmc7context7ContextECsbNLsQi0JuJ4_5tgrep.exit6

bb.h:                                             ; preds = %bb.g
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtNtCs5Xr050g3D4S_3std4sync4mpmc7context5InnerE9drop_slowCsaNF60lbdjjq_6notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #32
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs5Xr050g3D4S_3std4sync4mpmc7context7ContextECsbNLsQi0JuJ4_5tgrep.exit6

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs5Xr050g3D4S_3std4sync4mpmc7context7ContextECsbNLsQi0JuJ4_5tgrep.exit6: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.i:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs5Xr050g3D4S_3std4sync4mpmc7context7ContextECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMs1_NtNtNtCs5Xr050g3D4S_3std4sync4mpmc4listINtB7_7ChannelNtNtCs6mHKL3HfXZM_12notify_types5event5EventE4recvs_0CsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr %.0.val) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.5 = alloca [16 x i8], align 8            ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = load ptr, ptr %0, align 8, !nonnull !5, !align !12, !noundef !5
  %i.i = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !5, !align !371, !noundef !5 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 256 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvMs5_NtNtNtCs5Xr050g3D4S_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc5waker5WakerE4lockCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noundef nonnull align 8 %i.l)
  call void @llvm.experimental.noalias.scope.decl(metadata !372)
  %i.m = load i64, ptr %i.f, align 8, !range !8, !alias.scope !372, !noalias !373, !noundef !5
  %i.n = trunc nuw i64 %i.m to i1
  br i1 %i.n, label %bb.b, label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCsbNLsQi0JuJ4_5tgrep.exit.i, !prof !6

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !374
  %1 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.o = load ptr, ptr %1, align 8, !alias.scope !372, !noalias !373, !nonnull !5, !align !12, !noundef !5
  %2 = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.p = load i8, ptr %2, align 8, !range !9, !alias.scope !372, !noalias !373, !noundef !5
  store ptr %i.o, ptr %i.d, align 8, !noalias !374
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i8 %i.p, ptr %i.q, align 8, !noalias !374
  invoke void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 43, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @50, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #33
          to label %bb.d unwind label %bb.c, !noalias !372

bb.c:                                             ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCs5Xr050g3D4S_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtNtBG_4mpmc5waker5WakerEEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d) #31
          to label %common.resume unwind label %bb.e, !noalias !372

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30, !noalias !372
  unreachable

common.resume:                                    ; preds = %bb.ad, %bb.ai, %bb.c, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %i.af, %.body.i ], [ %i.r, %bb.c ], [ %i.cn, %bb.ad ], [ %i.dh, %bb.ai ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCsbNLsQi0JuJ4_5tgrep.exit.i: ; preds = %bb.a
  %3 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.t = load ptr, ptr %3, align 8, !alias.scope !372, !noalias !373, !nonnull !5, !align !12, !noundef !5 ; 8 uses
  %4 = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.u = load i8, ptr %4, align 8, !range !9, !alias.scope !372, !noalias !373, !noundef !5 ; 2 uses
  %i.v = trunc nuw i8 %i.u to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.w = atomicrmw add ptr %.0.val, i64 1 monotonic, align 8
  %i.x = icmp slt i64 %i.w, 0
  br i1 %i.x, label %bb.k, label %bb.f

bb.f:                                             ; preds = %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCsbNLsQi0JuJ4_5tgrep.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.i, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr null, ptr %i.aa, align 8
  store ptr %.0.val, ptr %i.e, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 24 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !375, !noalias !376, !noundef !5 ; 4 uses
  %i.ad = load i64, ptr %i.y, align 8, !range !18, !alias.scope !375, !noalias !376, !noundef !5
  %i.ae = icmp eq i64 %i.ac, %i.ad
  br i1 %i.ae, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs5Xr050g3D4S_3std4sync4mpmc5waker5EntryE8grow_oneCsaNF60lbdjjq_6notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %bb.l unwind label %bb.h, !noalias !376

bb.h:                                             ; preds = %bb.g
  %i.af = landingpad { ptr, i32 }
          cleanup
  %i.ag = atomicrmw sub ptr %.0.val, i64 1 release, align 8, !noalias !377
  %i.ah = icmp eq i64 %i.ag, 1
  br i1 %i.ah, label %bb.i, label %.body.i

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtNtCs5Xr050g3D4S_3std4sync4mpmc7context5InnerE9drop_slowCsaNF60lbdjjq_6notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #32
          to label %.body.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.k:                                             ; preds = %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCsbNLsQi0JuJ4_5tgrep.exit.i
  call void @llvm.trap()
  unreachable

.body.i:                                          ; preds = %bb.i, %bb.h
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc5waker5WakerEECsbNLsQi0JuJ4_5tgrep(ptr nonnull %i.t, i8 %i.u) #31
          to label %common.resume unwind label %bb.s

bb.l:                                             ; preds = %bb.g, %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !375, !noalias !376, !nonnull !5, !noundef !5
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %i.ak, i64 %i.ac
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.am = add nsw i64 %i.ac, 1                    ; 2 uses
  store i64 %i.am, ptr %i.ab, align 8, !alias.scope !375, !noalias !376
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.an = icmp slt i64 %i.ac, 384307168202282325
  call void @llvm.assume(i1 %i.an)
  %i.ao = icmp eq i64 %i.am, 0
  br i1 %i.ao, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ap = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.aq = load i64, ptr %i.ap, align 8, !noundef !5 ; 2 uses
  %i.ar = icmp ult i64 %i.aq, 384307168202282326
  call void @llvm.assume(i1 %i.ar)
  %i.as = icmp eq i64 %i.aq, 0
  %i.at = zext i1 %i.as to i8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.0.0.i = phi i8 [ %i.at, %bb.m ], [ 0, %bb.l ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.k, i64 312 ; 2 uses
  store atomic i8 %.sroa.0.0.i, ptr %i.au seq_cst, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  br i1 %i.v, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aw = load atomic i64, ptr @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.ax = and i64 %i.aw, 9223372036854775807
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.p, !prof !13

bb.p:                                             ; preds = %bb.o
  %i.az = call noundef zeroext i1 @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count17is_zero_slow_path() #32
  br i1 %i.az, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  store atomic i8 1, ptr %i.av monotonic, align 4
  br label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  %i.ba = atomicrmw xchg ptr %i.t, i32 0 release, align 4
  %i.bb = icmp eq i32 %i.ba, 2
  br i1 %i.bb, label %bb.r, label %_RNvMs0_NtNtNtCs5Xr050g3D4S_3std4sync4mpmc5wakerNtB5_9SyncWaker8register.exit, !prof !6

bb.r:                                             ; preds = %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  call void @_RNvMNtNtNtNtCs5Xr050g3D4S_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.t)
  br label %_RNvMs0_NtNtNtCs5Xr050g3D4S_3std4sync4mpmc5wakerNtB5_9SyncWaker8register.exit

bb.s:                                             ; preds = %.body.i
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

_RNvMs0_NtNtNtCs5Xr050g3D4S_3std4sync4mpmc5wakerNtB5_9SyncWaker8register.exit: ; preds = %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, %bb.r
  %i.bd = load atomic i64, ptr %i.k seq_cst, align 128
  %i.be = getelementptr inbounds nuw i8, ptr %i.k, i64 128 ; 2 uses
  %i.bf = load atomic i64, ptr %i.be seq_cst, align 128
  %.unshifted.i = xor i64 %i.bf, %i.bd
  %i.bg = icmp ult i64 %.unshifted.i, 2
  br i1 %i.bg, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.u, %_RNvMs0_NtNtNtCs5Xr050g3D4S_3std4sync4mpmc5wakerNtB5_9SyncWaker8register.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %i.bi = cmpxchg ptr %i.bh, i64 0, i64 1 acq_rel acquire, align 8 ; 0 uses
  br label %bb.v

bb.u:                                             ; preds = %_RNvMs0_NtNtNtCs5Xr050g3D4S_3std4sync4mpmc5wakerNtB5_9SyncWaker8register.exit
  %i.bj = load atomic i64, ptr %i.be seq_cst, align 128
  %i.bk = and i64 %i.bj, 1
  %.not = icmp eq i64 %i.bk, 0
  br i1 %.not, label %bb.v, label %bb.t

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !nonnull !5, !align !12, !noundef !5 ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8            ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bp = load i32, ptr %i.bo, align 8, !range !19, !noundef !5 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 3 uses
  %.not.i = icmp eq i32 %i.bp, -1
  %i.br = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  br i1 %.not.i, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %bb.v, %bb.w
  %i.bs = load atomic i64, ptr %i.bq acquire, align 8 ; 3 uses
  switch i64 %i.bs, label %_RNvMNtNtNtCs5Xr050g3D4S_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread [
    i64 0, label %bb.w
    i64 1, label %_RNvMNtNtNtCs5Xr050g3D4S_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
    i64 2, label %_RNvMNtNtNtCs5Xr050g3D4S_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  ]

bb.w:                                             ; preds = %.split.us.i
  call void @_RNvMs_NtNtCs5Xr050g3D4S_3std6thread6threadNtB4_6Thread4park(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.br)
  br label %.split.us.i

.split.i:                                         ; preds = %bb.v, %bb.z
  %i.bt = load atomic i64, ptr %i.bq acquire, align 8 ; 3 uses
  switch i64 %i.bt, label %_RNvMNtNtNtCs5Xr050g3D4S_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread [
    i64 0, label %bb.x
    i64 1, label %_RNvMNtNtNtCs5Xr050g3D4S_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
    i64 2, label %_RNvMNtNtNtCs5Xr050g3D4S_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  ]

bb.x:                                             ; preds = %.split.i
  %i.bu = call { i64, i32 } @_RNvMNtCs5Xr050g3D4S_3std4timeNtB2_7Instant3now() ; 2 uses
  %i.bv = extractvalue { i64, i32 } %i.bu, 0      ; 3 uses
  %i.bw = extractvalue { i64, i32 } %i.bu, 1      ; 2 uses
  %i.bx = icmp eq i64 %i.bv, %i.bn
  %i.by = icmp slt i64 %i.bv, %i.bn
  %i.bz = icmp samesign ult i32 %i.bw, %i.bp
  %spec.select.i5 = select i1 %i.bx, i1 %i.bz, i1 %i.by
  br i1 %spec.select.i5, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ca = cmpxchg ptr %i.bq, i64 0, i64 1 acq_rel acquire, align 8 ; 2 uses
  %i.cb = extractvalue { i64, i1 } %i.ca, 1
  %i.cc = extractvalue { i64, i1 } %i.ca, 0
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %i.cc, i64 3)
  br i1 %i.cb, label %_RNvMNtNtNtCs5Xr050g3D4S_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread5, label %_RNvMNtNtNtCs5Xr050g3D4S_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit

bb.z:                                             ; preds = %bb.x
  %i.cd = call { i64, i32 } @_RNvXs3_NtCs5Xr050g3D4S_3std4timeNtB5_7InstantNtNtNtCsf3Ta7LF998c_4core3ops5arith3Sub3sub(i64 noundef %i.bn, i32 noundef range(i32 -1, 1000000000) %i.bp, i64 noundef %i.bv, i32 noundef %i.bw) ; 2 uses
  %i.ce = extractvalue { i64, i32 } %i.cd, 0
  %i.cf = extractvalue { i64, i32 } %i.cd, 1
  call void @_RNvMs_NtNtCs5Xr050g3D4S_3std6thread6threadNtB4_6Thread12park_timeout(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.br, i64 noundef %i.ce, i32 noundef %i.cf)
  br label %.split.i

_RNvMNtNtNtCs5Xr050g3D4S_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit: ; preds = %.split.i, %.split.i, %.split.us.i, %.split.us.i, %bb.y
  %.sroa.03.1.i = phi i64 [ %spec.select.i.i, %bb.y ], [ %i.bs, %.split.us.i ], [ %i.bs, %.split.us.i ], [ %i.bt, %.split.i ], [ %i.bt, %.split.i ]
  switch i64 %.sroa.03.1.i, label %bb.aa [
    i64 0, label %bb.ab
    i64 1, label %_RNvMNtNtNtCs5Xr050g3D4S_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread5
    i64 2, label %_RNvMNtNtNtCs5Xr050g3D4S_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread5
    i64 3, label %_RNvMNtNtNtCs5Xr050g3D4S_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread
  ], !prof !378

bb.aa:                                            ; preds = %_RNvMNtNtNtCs5Xr050g3D4S_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  unreachable

bb.ab:                                            ; preds = %_RNvMNtNtNtCs5Xr050g3D4S_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #34
  unreachable

_RNvMNtNtNtCs5Xr050g3D4S_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread5: ; preds = %bb.y, %_RNvMNtNtNtCs5Xr050g3D4S_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit, %_RNvMNtNtNtCs5Xr050g3D4S_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !379
  call void @_RNvMs5_NtNtNtCs5Xr050g3D4S_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc5waker5WakerE4lockCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull align 8 %i.l), !noalias !379
end_hunk_0
begin_hunk_1_@_RNvMs1_NtNtNtCs5Xr050g3D4S_3std4sync4mpmc4listINtB5_7ChannelNtNtCs6mHKL3HfXZM_12notify_types5event5EventE20disconnect_receiversCsbNLsQi0JuJ4_5tgrep:bb.a
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs5Xr050g3D4S_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_RNvMs1_NtNtNtCs5Xr050g3D4S_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs5Xr050g3D4S_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCs5Xr050g3D4S_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod30 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod30)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs5Xr050g3D4S_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !426

_RNvMs1_NtNtNtCs5Xr050g3D4S_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCs5Xr050g3D4S_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %_RNvMs6_NtCsf3Ta7LF998c_4core3numm15overflowing_pow.exit.i.i, %bb.c
  %i.k = add i32 %.sroa.0.04957.i, 1              ; 2 uses
  %i.l = load atomic i64, ptr %i.a acquire, align 128 ; 2 uses
  %i.m = and i64 %i.l, 62
  %i.n = icmp eq i64 %i.m, 62
  br i1 %i.n, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_RNvMs1_NtNtNtCs5Xr050g3D4S_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, %bb.b
  %.sroa.0.0.lcssa.i = phi i64 [ %i.e, %bb.b ], [ %i.l, %_RNvMs1_NtNtNtCs5Xr050g3D4S_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ]
  %.sroa.0.049.lcssa.i = phi i32 [ 0, %bb.b ], [ %i.k, %_RNvMs1_NtNtNtCs5Xr050g3D4S_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ]
  %i.o = lshr i64 %.sroa.0.0.lcssa.i, 1           ; 3 uses
  %i.p = load atomic i64, ptr %0 acquire, align 128 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.r = atomicrmw xchg ptr %i.q, ptr null acq_rel, align 8 ; 2 uses
  %i.s = lshr i64 %i.p, 1                         ; 3 uses
  %i.t = icmp ne i64 %i.s, %i.o
  %i.u = icmp eq ptr %i.r, null
  %or.cond.i = select i1 %i.t, i1 %i.u, i1 false
  br i1 %or.cond.i, label %.preheader.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %_RNvMs1_NtNtNtCs5Xr050g3D4S_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i, %._crit_edge.i
  %.sroa.011.0.i = phi ptr [ %i.r, %._crit_edge.i ], [ %i.z, %_RNvMs1_NtNtNtCs5Xr050g3D4S_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i ] ; 2 uses
  %.not59.i = icmp eq i64 %i.s, %i.o
  br i1 %.not59.i, label %._crit_edge64.i, label %.lr.ph63.i

.preheader.i:                                     ; preds = %._crit_edge.i, %_RNvMs1_NtNtNtCs5Xr050g3D4S_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i
  %.sroa.0.1.i = phi i32 [ %i.y, %_RNvMs1_NtNtNtCs5Xr050g3D4S_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i ], [ %.sroa.0.049.lcssa.i, %._crit_edge.i ] ; 6 uses
  %i.v = icmp ult i32 %.sroa.0.1.i, 7
  br i1 %i.v, label %_RNvMs6_NtCsf3Ta7LF998c_4core3numm15overflowing_pow.exit.i22.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i
  tail call void @_RNvNtNtCs5Xr050g3D4S_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCs5Xr050g3D4S_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i

_RNvMs6_NtCsf3Ta7LF998c_4core3numm15overflowing_pow.exit.i22.i: ; preds = %.preheader.i
  %.not.i23.i = icmp eq i32 %.sroa.0.1.i, 0
  br i1 %.not.i23.i, label %_RNvMs1_NtNtNtCs5Xr050g3D4S_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i, label %.lr.ph.i26.i.preheader

.lr.ph.i26.i.preheader:                           ; preds = %_RNvMs6_NtCsf3Ta7LF998c_4core3numm15overflowing_pow.exit.i22.i
  %i.w = mul nuw i32 %.sroa.0.1.i, %.sroa.0.1.i   ; 2 uses
  %xtraiter31 = and i32 %i.w, 7                   ; 3 uses
  %i.x = icmp ult i32 %.sroa.0.1.i, 3
  br i1 %i.x, label %.lr.ph.i26.i.epil.preheader, label %.lr.ph.i26.i.preheader.new

.lr.ph.i26.i.preheader.new:                       ; preds = %.lr.ph.i26.i.preheader
  %unroll_iter35 = and i32 %i.w, 56
  br label %.lr.ph.i26.i

.lr.ph.i26.i:                                     ; preds = %.lr.ph.i26.i, %.lr.ph.i26.i.preheader.new
  %niter36 = phi i32 [ 0, %.lr.ph.i26.i.preheader.new ], [ %niter36.next.7, %.lr.ph.i26.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter36.next.7 = add i32 %niter36, 8           ; 2 uses
  %niter36.ncmp.7 = icmp eq i32 %niter36.next.7, %unroll_iter35
  br i1 %niter36.ncmp.7, label %_RNvMs1_NtNtNtCs5Xr050g3D4S_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.loopexit.unr-lcssa, label %.lr.ph.i26.i

_RNvMs1_NtNtNtCs5Xr050g3D4S_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i26.i
  %lcmp.mod33.not = icmp eq i32 %xtraiter31, 0
  br i1 %lcmp.mod33.not, label %_RNvMs1_NtNtNtCs5Xr050g3D4S_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i, label %.lr.ph.i26.i.epil.preheader

.lr.ph.i26.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCs5Xr050g3D4S_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.loopexit.unr-lcssa, %.lr.ph.i26.i.preheader
  %lcmp.mod34 = icmp ne i32 %xtraiter31, 0
  tail call void @llvm.assume(i1 %lcmp.mod34)
  br label %.lr.ph.i26.i.epil

.lr.ph.i26.i.epil:                                ; preds = %.lr.ph.i26.i.epil, %.lr.ph.i26.i.epil.preheader
  %epil.iter32 = phi i32 [ 0, %.lr.ph.i26.i.epil.preheader ], [ %epil.iter32.next, %.lr.ph.i26.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter32.next = add i32 %epil.iter32, 1     ; 2 uses
  %epil.iter32.cmp.not = icmp eq i32 %epil.iter32.next, %xtraiter31
  br i1 %epil.iter32.cmp.not, label %_RNvMs1_NtNtNtCs5Xr050g3D4S_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i, label %.lr.ph.i26.i.epil, !llvm.loop !427

_RNvMs1_NtNtNtCs5Xr050g3D4S_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i: ; preds = %_RNvMs1_NtNtNtCs5Xr050g3D4S_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.loopexit.unr-lcssa, %.lr.ph.i26.i.epil, %_RNvMs6_NtCsf3Ta7LF998c_4core3numm15overflowing_pow.exit.i22.i, %bb.d
  %i.y = add i32 %.sroa.0.1.i, 1
  %i.z = atomicrmw xchg ptr %i.q, ptr null acq_rel, align 8 ; 2 uses
  %.old2.i = icmp eq ptr %i.z, null
  br i1 %.old2.i, label %.preheader.i, label %.loopexit.i

._crit_edge64.i:                                  ; preds = %bb.p, %.loopexit.i
  %.sroa.011.1.lcssa.i = phi ptr [ %.sroa.011.0.i, %.loopexit.i ], [ %.sroa.011.2.i, %bb.p ] ; 2 uses
  %.sroa.05.0.lcssa.i = phi i64 [ %i.p, %.loopexit.i ], [ %i.be, %bb.p ]
  %i.aa = icmp eq ptr %.sroa.011.1.lcssa.i, null
  br i1 %i.aa, label %_RNvMs1_NtNtNtCs5Xr050g3D4S_3std4sync4mpmc4listINtB5_7ChannelNtNtCs6mHKL3HfXZM_12notify_types5event5EventE20discard_all_messagesCsbNLsQi0JuJ4_5tgrep.exit, label %bb.e

.lr.ph63.i:                                       ; preds = %.loopexit.i, %bb.p
  %i.ab = phi i64 [ %i.bf, %bb.p ], [ %i.s, %.loopexit.i ]
  %.sroa.05.061.i = phi i64 [ %i.be, %bb.p ], [ %i.p, %.loopexit.i ]
  %.sroa.011.160.i = phi ptr [ %.sroa.011.2.i, %bb.p ], [ %.sroa.011.0.i, %.loopexit.i ] ; 5 uses
  %i.ac = and i64 %i.ab, 31                       ; 2 uses
  %.not19.i = icmp eq i64 %i.ac, 31
  br i1 %.not19.i, label %bb.f, label %bb.h

bb.e:                                             ; preds = %._crit_edge64.i
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.1.lcssa.i, i64 noundef 1496, i64 noundef 8) #25
  br label %_RNvMs1_NtNtNtCs5Xr050g3D4S_3std4sync4mpmc4listINtB5_7ChannelNtNtCs6mHKL3HfXZM_12notify_types5event5EventE20discard_all_messagesCsbNLsQi0JuJ4_5tgrep.exit

bb.f:                                             ; preds = %.lr.ph63.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.011.160.i, i64 1488 ; 3 uses
  %i.ae = load atomic ptr, ptr %i.ad acquire, align 8
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %.lr.ph.i31.i, label %_RNvMs_NtNtNtCs5Xr050g3D4S_3std4sync4mpmc4listINtB4_5BlockNtNtCs6mHKL3HfXZM_12notify_types5event5EventE9wait_nextCsbNLsQi0JuJ4_5tgrep.exit.i

.lr.ph.i31.i:                                     ; preds = %bb.f, %_RNvMs1_NtNtNtCs5Xr050g3D4S_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i
  %.sroa.0.02.i.i = phi i32 [ %i.aj, %_RNvMs1_NtNtNtCs5Xr050g3D4S_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ 0, %bb.f ] ; 6 uses
  %i.ag = icmp ult i32 %.sroa.0.02.i.i, 7
  br i1 %i.ag, label %_RNvMs6_NtCsf3Ta7LF998c_4core3numm15overflowing_pow.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i31.i
  tail call void @_RNvNtNtCs5Xr050g3D4S_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCs5Xr050g3D4S_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i

_RNvMs6_NtCsf3Ta7LF998c_4core3numm15overflowing_pow.exit.i.i.i: ; preds = %.lr.ph.i31.i
  %.not.i.i.i = icmp eq i32 %.sroa.0.02.i.i, 0
  br i1 %.not.i.i.i, label %_RNvMs1_NtNtNtCs5Xr050g3D4S_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_RNvMs6_NtCsf3Ta7LF998c_4core3numm15overflowing_pow.exit.i.i.i
  %i.ah = mul nuw i32 %.sroa.0.02.i.i, %.sroa.0.02.i.i ; 2 uses
  %xtraiter43 = and i32 %i.ah, 7                  ; 3 uses
  %i.ai = icmp ult i32 %.sroa.0.02.i.i, 3
  br i1 %i.ai, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter47 = and i32 %i.ah, 56
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %niter48 = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter48.next.7, %.lr.ph.i.i.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter48.next.7 = add i32 %niter48, 8           ; 2 uses
  %niter48.ncmp.7 = icmp eq i32 %niter48.next.7, %unroll_iter47
  br i1 %niter48.ncmp.7, label %_RNvMs1_NtNtNtCs5Xr050g3D4S_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i

_RNvMs1_NtNtNtCs5Xr050g3D4S_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod45.not = icmp eq i32 %xtraiter43, 0
  br i1 %lcmp.mod45.not, label %_RNvMs1_NtNtNtCs5Xr050g3D4S_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCs5Xr050g3D4S_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %lcmp.mod46 = icmp ne i32 %xtraiter43, 0
  tail call void @llvm.assume(i1 %lcmp.mod46)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %epil.iter44 = phi i32 [ 0, %.lr.ph.i.i.i.epil.preheader ], [ %epil.iter44.next, %.lr.ph.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter44.next = add i32 %epil.iter44, 1     ; 2 uses
  %epil.iter44.cmp.not = icmp eq i32 %epil.iter44.next, %xtraiter43
  br i1 %epil.iter44.cmp.not, label %_RNvMs1_NtNtNtCs5Xr050g3D4S_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !428

_RNvMs1_NtNtNtCs5Xr050g3D4S_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i: ; preds = %_RNvMs1_NtNtNtCs5Xr050g3D4S_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %_RNvMs6_NtCsf3Ta7LF998c_4core3numm15overflowing_pow.exit.i.i.i, %bb.g
  %i.aj = add i32 %.sroa.0.02.i.i, 1
  %i.ak = load atomic ptr, ptr %i.ad acquire, align 8
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %.lr.ph.i31.i, label %_RNvMs_NtNtNtCs5Xr050g3D4S_3std4sync4mpmc4listINtB4_5BlockNtNtCs6mHKL3HfXZM_12notify_types5event5EventE9wait_nextCsbNLsQi0JuJ4_5tgrep.exit.i

_RNvMs_NtNtNtCs5Xr050g3D4S_3std4sync4mpmc4listINtB4_5BlockNtNtCs6mHKL3HfXZM_12notify_types5event5EventE9wait_nextCsbNLsQi0JuJ4_5tgrep.exit.i: ; preds = %_RNvMs1_NtNtNtCs5Xr050g3D4S_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, %bb.f
  %1 = load atomic ptr, ptr %i.ad acquire, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.011.160.i) ]
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.160.i, i64 noundef 1496, i64 noundef 8) #25
  br label %bb.p

bb.h:                                             ; preds = %.lr.ph63.i
  %i.am = getelementptr inbounds nuw [48 x i8], ptr %.sroa.011.160.i, i64 %i.ac ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 40 ; 2 uses
  %i.ao = load atomic i64, ptr %i.an acquire, align 8
  %i.ap = and i64 %i.ao, 1
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %.lr.ph.i32.i, label %_RNvMNtNtNtCs5Xr050g3D4S_3std4sync4mpmc4listINtB2_4SlotNtNtCs6mHKL3HfXZM_12notify_types5event5EventE10wait_writeCsbNLsQi0JuJ4_5tgrep.exit.i

.lr.ph.i32.i:                                     ; preds = %bb.h, %_RNvMs1_NtNtNtCs5Xr050g3D4S_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i
  %.sroa.0.02.i33.i = phi i32 [ %i.au, %_RNvMs1_NtNtNtCs5Xr050g3D4S_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i ], [ 0, %bb.h ] ; 6 uses
  %i.ar = icmp ult i32 %.sroa.0.02.i33.i, 7
  br i1 %i.ar, label %_RNvMs6_NtCsf3Ta7LF998c_4core3numm15overflowing_pow.exit.i.i36.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i32.i
  tail call void @_RNvNtNtCs5Xr050g3D4S_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCs5Xr050g3D4S_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i

_RNvMs6_NtCsf3Ta7LF998c_4core3numm15overflowing_pow.exit.i.i36.i: ; preds = %.lr.ph.i32.i
  %.not.i.i37.i = icmp eq i32 %.sroa.0.02.i33.i, 0
  br i1 %.not.i.i37.i, label %_RNvMs1_NtNtNtCs5Xr050g3D4S_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i, label %.lr.ph.i.i40.i.preheader

.lr.ph.i.i40.i.preheader:                         ; preds = %_RNvMs6_NtCsf3Ta7LF998c_4core3numm15overflowing_pow.exit.i.i36.i
  %i.as = mul nuw i32 %.sroa.0.02.i33.i, %.sroa.0.02.i33.i ; 2 uses
  %xtraiter37 = and i32 %i.as, 7                  ; 3 uses
  %i.at = icmp ult i32 %.sroa.0.02.i33.i, 3
  br i1 %i.at, label %.lr.ph.i.i40.i.epil.preheader, label %.lr.ph.i.i40.i.preheader.new

.lr.ph.i.i40.i.preheader.new:                     ; preds = %.lr.ph.i.i40.i.preheader
  %unroll_iter41 = and i32 %i.as, 56
  br label %.lr.ph.i.i40.i

.lr.ph.i.i40.i:                                   ; preds = %.lr.ph.i.i40.i, %.lr.ph.i.i40.i.preheader.new
  %niter42 = phi i32 [ 0, %.lr.ph.i.i40.i.preheader.new ], [ %niter42.next.7, %.lr.ph.i.i40.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter42.next.7 = add i32 %niter42, 8           ; 2 uses
  %niter42.ncmp.7 = icmp eq i32 %niter42.next.7, %unroll_iter41
  br i1 %niter42.ncmp.7, label %_RNvMs1_NtNtNtCs5Xr050g3D4S_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.loopexit.unr-lcssa, label %.lr.ph.i.i40.i

_RNvMs1_NtNtNtCs5Xr050g3D4S_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i40.i
  %lcmp.mod39.not = icmp eq i32 %xtraiter37, 0
  br i1 %lcmp.mod39.not, label %_RNvMs1_NtNtNtCs5Xr050g3D4S_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i, label %.lr.ph.i.i40.i.epil.preheader

.lr.ph.i.i40.i.epil.preheader:                    ; preds = %_RNvMs1_NtNtNtCs5Xr050g3D4S_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.loopexit.unr-lcssa, %.lr.ph.i.i40.i.preheader
  %lcmp.mod40 = icmp ne i32 %xtraiter37, 0
  tail call void @llvm.assume(i1 %lcmp.mod40)
  br label %.lr.ph.i.i40.i.epil

.lr.ph.i.i40.i.epil:                              ; preds = %.lr.ph.i.i40.i.epil, %.lr.ph.i.i40.i.epil.preheader
  %epil.iter38 = phi i32 [ 0, %.lr.ph.i.i40.i.epil.preheader ], [ %epil.iter38.next, %.lr.ph.i.i40.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter38.next = add i32 %epil.iter38, 1     ; 2 uses
  %epil.iter38.cmp.not = icmp eq i32 %epil.iter38.next, %xtraiter37
  br i1 %epil.iter38.cmp.not, label %_RNvMs1_NtNtNtCs5Xr050g3D4S_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i, label %.lr.ph.i.i40.i.epil, !llvm.loop !429

_RNvMs1_NtNtNtCs5Xr050g3D4S_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i: ; preds = %_RNvMs1_NtNtNtCs5Xr050g3D4S_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.loopexit.unr-lcssa, %.lr.ph.i.i40.i.epil, %_RNvMs6_NtCsf3Ta7LF998c_4core3numm15overflowing_pow.exit.i.i36.i, %bb.i
  %i.au = add i32 %.sroa.0.02.i33.i, 1
  %i.av = load atomic i64, ptr %i.an acquire, align 8
  %i.aw = and i64 %i.av, 1
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %.lr.ph.i32.i, label %_RNvMNtNtNtCs5Xr050g3D4S_3std4sync4mpmc4listINtB2_4SlotNtNtCs6mHKL3HfXZM_12notify_types5event5EventE10wait_writeCsbNLsQi0JuJ4_5tgrep.exit.i

_RNvMNtNtNtCs5Xr050g3D4S_3std4sync4mpmc4listINtB2_4SlotNtNtCs6mHKL3HfXZM_12notify_types5event5EventE10wait_writeCsbNLsQi0JuJ4_5tgrep.exit.i: ; preds = %_RNvMs1_NtNtNtCs5Xr050g3D4S_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i, %bb.h
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs5Xr050g3D4S_3std4path7PathBufENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.am)
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %_RNvMNtNtNtCs5Xr050g3D4S_3std4sync4mpmc4listINtB2_4SlotNtNtCs6mHKL3HfXZM_12notify_types5event5EventE10wait_writeCsbNLsQi0JuJ4_5tgrep.exit.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs5Xr050g3D4S_3std4path7PathBufENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.am)
          to label %.body.i.i unwind label %bb.l

bb.k:                                             ; preds = %_RNvMNtNtNtCs5Xr050g3D4S_3std4sync4mpmc4listINtB2_4SlotNtNtCs6mHKL3HfXZM_12notify_types5event5EventE10wait_writeCsbNLsQi0JuJ4_5tgrep.exit.i
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs5Xr050g3D4S_3std4path7PathBufENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.am)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6mHKL3HfXZM_12notify_types5event5EventECsbNLsQi0JuJ4_5tgrep.exit.i unwind label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.m, %bb.j
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.ba, %bb.m ], [ %i.ay, %bb.j ]
  %i.bb = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %.val1.i.i = load ptr, ptr %i.bb, align 8, !alias.scope !432, !align !12, !noundef !5
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6mHKL3HfXZM_12notify_types5event15EventAttributesECsbNLsQi0JuJ4_5tgrep(ptr %.val1.i.i) #31
          to label %bb.o unwind label %bb.n

bb.n:                                             ; preds = %.body.i.i
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.o:                                             ; preds = %.body.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6mHKL3HfXZM_12notify_types5event5EventECsbNLsQi0JuJ4_5tgrep.exit.i: ; preds = %bb.k
  %i.bd = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %.val.i.i = load ptr, ptr %i.bd, align 8, !alias.scope !432, !align !12, !noundef !5
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6mHKL3HfXZM_12notify_types5event15EventAttributesECsbNLsQi0JuJ4_5tgrep(ptr %.val.i.i)
  br label %bb.p

bb.p:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6mHKL3HfXZM_12notify_types5event5EventECsbNLsQi0JuJ4_5tgrep.exit.i, %_RNvMs_NtNtNtCs5Xr050g3D4S_3std4sync4mpmc4listINtB4_5BlockNtNtCs6mHKL3HfXZM_12notify_types5event5EventE9wait_nextCsbNLsQi0JuJ4_5tgrep.exit.i
  %.sroa.011.2.i = phi ptr [ %.sroa.011.160.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6mHKL3HfXZM_12notify_types5event5EventECsbNLsQi0JuJ4_5tgrep.exit.i ], [ %1, %_RNvMs_NtNtNtCs5Xr050g3D4S_3std4sync4mpmc4listINtB4_5BlockNtNtCs6mHKL3HfXZM_12notify_types5event5EventE9wait_nextCsbNLsQi0JuJ4_5tgrep.exit.i ] ; 2 uses
  %i.be = add i64 %.sroa.05.061.i, 2              ; 3 uses
  %i.bf = lshr i64 %i.be, 1                       ; 2 uses
  %.not.i = icmp eq i64 %i.bf, %i.o
  br i1 %.not.i, label %._crit_edge64.i, label %.lr.ph63.i

_RNvMs1_NtNtNtCs5Xr050g3D4S_3std4sync4mpmc4listINtB5_7ChannelNtNtCs6mHKL3HfXZM_12notify_types5event5EventE20discard_all_messagesCsbNLsQi0JuJ4_5tgrep.exit: ; preds = %._crit_edge64.i, %bb.e
  %i.bg = and i64 %.sroa.05.0.lcssa.i, -2
  store atomic i64 %i.bg, ptr %0 release, align 128
  br label %bb.q

bb.q:                                             ; preds = %bb.a, %_RNvMs1_NtNtNtCs5Xr050g3D4S_3std4sync4mpmc4listINtB5_7ChannelNtNtCs6mHKL3HfXZM_12notify_types5event5EventE20discard_all_messagesCsbNLsQi0JuJ4_5tgrep.exit
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtNtNtCs5Xr050g3D4S_3std4sync4mpmc4listINtB5_7ChannelNtNtCs6mHKL3HfXZM_12notify_types5event5EventE4recvCsbNLsQi0JuJ4_5tgrep(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull align 128 %1, i64 %2, i32 noundef range(i32 -1, 1000000000) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.427 = alloca [32 x i8], align 8          ; 2 uses
  %i.g = alloca [40 x i8], align 8                ; 8 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  store i64 %2, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store i32 %3, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 128
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.n = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtNtCs5Xr050g3D4S_3std4sync4mpmc7contextNtBa_7Context4with7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.59.0..sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 40, i1 false)
  br label %bb.b

bb.b:                                             ; preds = %_RINvMNtNtNtCs5Xr050g3D4S_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelNtNtCs6mHKL3HfXZM_12notify_types5event5EventE4recvs_0uECsbNLsQi0JuJ4_5tgrep.exit, %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !476)
  %i.p = load atomic i64, ptr %1 acquire, align 128, !noalias !476
  %i.q = load atomic ptr, ptr %i.l acquire, align 8, !noalias !476
  br label %bb.c

bb.c:                                             ; preds = %.backedge.i, %bb.b
  %.sroa.0.048.i = phi i32 [ 0, %bb.b ], [ %.sroa.0.048.be.i, %.backedge.i ] ; 14 uses
  %.sroa.012.0.i = phi ptr [ %i.q, %bb.b ], [ %i.ab, %.backedge.i ] ; 8 uses
  %.sroa.07.0.i = phi i64 [ %i.p, %bb.b ], [ %i.aa, %.backedge.i ] ; 5 uses
  %i.r = lshr i64 %.sroa.07.0.i, 1                ; 2 uses
  %i.s = and i64 %i.r, 31                         ; 6 uses
  %i.t = icmp eq i64 %i.s, 31
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = icmp ult i32 %.sroa.0.048.i, 7
  br i1 %i.u, label %_RNvMs6_NtCsf3Ta7LF998c_4core3numm15overflowing_pow.exit.i.i, label %.backedge.sink.split.i

_RNvMs6_NtCsf3Ta7LF998c_4core3numm15overflowing_pow.exit.i.i: ; preds = %bb.d
  %.not.i.i = icmp eq i32 %.sroa.0.048.i, 0
  br i1 %.not.i.i, label %.backedge.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_RNvMs6_NtCsf3Ta7LF998c_4core3numm15overflowing_pow.exit.i.i
  %i.v = mul nuw i32 %.sroa.0.048.i, %.sroa.0.048.i ; 2 uses
  %xtraiter107 = and i32 %i.v, 7                  ; 3 uses
  %i.w = icmp ult i32 %.sroa.0.048.i, 3
  br i1 %i.w, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter111 = and i32 %i.v, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter112 = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter112.next.7, %.lr.ph.i.i ]
end_hunk_1
begin_hunk_2_@_RNvXs12_NtCsbNLsQi0JuJ4_5tgrep5serveNtB6_12PublishErrorNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @122, i64 noundef 12, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @123, i64 noundef 3, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @120, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @124, i64 noundef 6, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @121)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1_NtCsjYKKaZ3qa7A_6anyhow7wrapperINtB5_12DisplayErrorNtNtCsgCecv3eZDcN_5alloc6string6StringENtNtCsf3Ta7LF998c_4core3fmt5Debug3fmtCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1170)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !1170, !noalias !1171, !nonnull !5, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !1170, !noalias !1171, !noundef !5
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCsf3Ta7LF998c_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !1170
  ret i1 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCNvMs3_NtCsbNLsQi0JuJ4_5tgrep6outputNtBW_12OutputWriter11trim_adjust0INtB7_5FnMutTRTjjEEE8call_mutBY_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %2) unnamed_addr #9 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !5, !align !12, !noundef !5 ; 2 uses
  %.val = load ptr, ptr %i.a, align 8, !nonnull !5, !align !12, !noundef !5
  %i.b = getelementptr i8, ptr %i.a, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !5
  %.val2 = load i64, ptr %2, align 8, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val3 = load i64, ptr %i.c, align 8, !noundef !5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1174)
  %i.d = load i64, ptr %.val, align 8, !noalias !1174, !noundef !5 ; 2 uses
  %i.e = tail call i64 @llvm.usub.sat.i64(i64 %.val2, i64 %i.d) ; 2 uses
  %i.f = tail call i64 @llvm.usub.sat.i64(i64 %.val3, i64 %i.d)
  %i.g = tail call i64 @llvm.umin.i64(i64 %i.f, i64 %.val1) ; 2 uses
  %i.h = icmp ult i64 %i.e, %i.g
  br i1 %i.h, label %bb.b, label %_RNCNvMs3_NtCsbNLsQi0JuJ4_5tgrep6outputNtB7_12OutputWriter11trim_adjust0B9_.exit

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.e, ptr %i.i, align 8, !alias.scope !1174
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.g, ptr %i.j, align 8, !alias.scope !1174
  br label %_RNCNvMs3_NtCsbNLsQi0JuJ4_5tgrep6outputNtB7_12OutputWriter11trim_adjust0B9_.exit

_RNCNvMs3_NtCsbNLsQi0JuJ4_5tgrep6outputNtB7_12OutputWriter11trim_adjust0B9_.exit: ; preds = %bb.a, %bb.b
  %storemerge.i = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]
  store i64 %storemerge.i, ptr %0, align 8, !alias.scope !1174
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtCs30WoLBgco1_6ignore5ErrorENtB6_5Debug3fmtCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !12, !noundef !5
  %.val = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.b = tail call noundef zeroext i1 @_RNvXs5_Cs30WoLBgco1_6ignoreNtB5_5ErrorNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #35, !inline_history !1175
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRuNtB6_5Debug3fmtCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter3pad(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @163, i64 noundef 2)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtReNtB6_7Display3fmtCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !5
  %i.d = tail call noundef zeroext i1 @_RNvXsi_NtCsf3Ta7LF998c_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRjNtB6_7Display3fmtCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !12, !noundef !5
  %i.b = tail call noundef zeroext i1 @_RNvXsi_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs2_NtCsbzNSmZPCnTx_10tgrep_core5errorNtB5_5ErrorNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #6 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = load i64, ptr %0, align 8, !range !16, !noundef !5
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  switch i64 %i.g, label %default.unreachable1 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 4, label %bb.f
    i64 5, label %bb.g
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.h, ptr %i.f, align 8
  %i.i = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @125, i64 noundef 2, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @121)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.h, ptr %i.e, align 8
  %i.j = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @127, i64 noundef 4, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @126)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.h, ptr %i.d, align 8
  %i.k = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @129, i64 noundef 13, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @128)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.h, ptr %i.c, align 8
  %i.l = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @130, i64 noundef 14, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @128)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.h, ptr %i.b, align 8
  %i.m = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @131, i64 noundef 5, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @128)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.h, ptr %i.a, align 8
  %i.n = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @132, i64 noundef 6, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @128)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.i, %bb.b ], [ %i.j, %bb.c ], [ %i.k, %bb.d ], [ %i.l, %bb.e ], [ %i.m, %bb.f ], [ %i.n, %bb.g ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs2_NtCsjYKKaZ3qa7A_6anyhow7wrapperINtB5_12DisplayErrorNtNtCsgCecv3eZDcN_5alloc6string6StringENtNtCsf3Ta7LF998c_4core3fmt7Display3fmtCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1179)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !1179, !noalias !1180, !nonnull !5, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !1179, !noalias !1180, !noundef !5
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCsf3Ta7LF998c_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !1179
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtNtCs5Xr050g3D4S_3std4sync4mpmc4listINtB5_7ChannelINtNtCsf3Ta7LF998c_4core6result6ResultbNtNtCsaNF60lbdjjq_6notify5error5ErrorEENtNtNtB11_3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 128 captures(none) dereferenceable(384) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load atomic i64, ptr %0 monotonic, align 128
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.c = load atomic i64, ptr %i.b monotonic, align 128
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load atomic ptr, ptr %i.d monotonic, align 8 ; 2 uses
  %i.f = and i64 %i.a, -2                         ; 2 uses
  %i.g = and i64 %i.c, -2                         ; 2 uses
  %.not14 = icmp eq i64 %i.f, %i.g
  br i1 %.not14, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultbNtNtCsaNF60lbdjjq_6notify5error5ErrorEECsbNLsQi0JuJ4_5tgrep.exit, %bb.a
  %.sroa.06.0.lcssa = phi ptr [ %i.e, %bb.a ], [ %.sroa.06.1, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultbNtNtCsaNF60lbdjjq_6notify5error5ErrorEECsbNLsQi0JuJ4_5tgrep.exit ] ; 2 uses
  %i.h = icmp eq ptr %.sroa.06.0.lcssa, null
  br i1 %i.h, label %bb.c, label %bb.b

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultbNtNtCsaNF60lbdjjq_6notify5error5ErrorEECsbNLsQi0JuJ4_5tgrep.exit
  %.sroa.0.016 = phi i64 [ %i.p, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultbNtNtCsaNF60lbdjjq_6notify5error5ErrorEECsbNLsQi0JuJ4_5tgrep.exit ], [ %i.f, %bb.a ] ; 2 uses
  %.sroa.06.015 = phi ptr [ %.sroa.06.1, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultbNtNtCsaNF60lbdjjq_6notify5error5ErrorEECsbNLsQi0JuJ4_5tgrep.exit ], [ %i.e, %bb.a ] ; 6 uses
  %i.i = lshr exact i64 %.sroa.0.016, 1
  %i.j = and i64 %i.i, 31                         ; 2 uses
  %.not11 = icmp eq i64 %i.j, 31
  br i1 %.not11, label %bb.d, label %bb.e

bb.b:                                             ; preds = %._crit_edge
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.06.0.lcssa, i64 noundef 1992, i64 noundef 8) #25
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  ret void

bb.d:                                             ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.06.015, i64 1984
  %i.l = load atomic ptr, ptr %i.k monotonic, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.06.015) ]
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.06.015, i64 noundef 1992, i64 noundef 8) #25
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultbNtNtCsaNF60lbdjjq_6notify5error5ErrorEECsbNLsQi0JuJ4_5tgrep.exit

bb.e:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw [64 x i8], ptr %.sroa.06.015, i64 %i.j ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !range !25, !alias.scope !1183, !noundef !5
  %i.o = icmp eq i64 %i.n, -1
  br i1 %i.o, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultbNtNtCsaNF60lbdjjq_6notify5error5ErrorEECsbNLsQi0JuJ4_5tgrep.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaNF60lbdjjq_6notify5error5ErrorECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.m)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultbNtNtCsaNF60lbdjjq_6notify5error5ErrorEECsbNLsQi0JuJ4_5tgrep.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultbNtNtCsaNF60lbdjjq_6notify5error5ErrorEECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.f, %bb.e, %bb.d
  %.sroa.06.1 = phi ptr [ %i.l, %bb.d ], [ %.sroa.06.015, %bb.e ], [ %.sroa.06.015, %bb.f ] ; 2 uses
  %i.p = add i64 %.sroa.0.016, 2                  ; 2 uses
  %.not = icmp eq i64 %i.p, %i.g
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtNtCs5Xr050g3D4S_3std4sync4mpmc4listINtB5_7ChannelINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCsaNF60lbdjjq_6notify5error5ErrorEENtNtNtB11_3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 128 captures(none) dereferenceable(384) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load atomic i64, ptr %0 monotonic, align 128
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.c = load atomic i64, ptr %i.b monotonic, align 128
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load atomic ptr, ptr %i.d monotonic, align 8 ; 2 uses
  %i.f = and i64 %i.a, -2                         ; 2 uses
  %i.g = and i64 %i.c, -2                         ; 2 uses
  %.not14 = icmp eq i64 %i.f, %i.g
  br i1 %.not14, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsaNF60lbdjjq_6notify5error5ErrorEECsbNLsQi0JuJ4_5tgrep.exit, %bb.a
  %.sroa.06.0.lcssa = phi ptr [ %i.e, %bb.a ], [ %.sroa.06.1, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsaNF60lbdjjq_6notify5error5ErrorEECsbNLsQi0JuJ4_5tgrep.exit ] ; 2 uses
  %i.h = icmp eq ptr %.sroa.06.0.lcssa, null
  br i1 %i.h, label %bb.c, label %bb.b

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsaNF60lbdjjq_6notify5error5ErrorEECsbNLsQi0JuJ4_5tgrep.exit
  %.sroa.0.016 = phi i64 [ %i.p, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsaNF60lbdjjq_6notify5error5ErrorEECsbNLsQi0JuJ4_5tgrep.exit ], [ %i.f, %bb.a ] ; 2 uses
  %.sroa.06.015 = phi ptr [ %.sroa.06.1, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsaNF60lbdjjq_6notify5error5ErrorEECsbNLsQi0JuJ4_5tgrep.exit ], [ %i.e, %bb.a ] ; 6 uses
  %i.i = lshr exact i64 %.sroa.0.016, 1
  %i.j = and i64 %i.i, 31                         ; 2 uses
  %.not11 = icmp eq i64 %i.j, 31
  br i1 %.not11, label %bb.d, label %bb.e

bb.b:                                             ; preds = %._crit_edge
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.06.0.lcssa, i64 noundef 1992, i64 noundef 8) #25
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  ret void

bb.d:                                             ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.06.015, i64 1984
  %i.l = load atomic ptr, ptr %i.k monotonic, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.06.015) ]
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.06.015, i64 noundef 1992, i64 noundef 8) #25
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsaNF60lbdjjq_6notify5error5ErrorEECsbNLsQi0JuJ4_5tgrep.exit

bb.e:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw [64 x i8], ptr %.sroa.06.015, i64 %i.j ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !range !25, !alias.scope !1186, !noundef !5
  %i.o = icmp eq i64 %i.n, -1
  br i1 %i.o, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsaNF60lbdjjq_6notify5error5ErrorEECsbNLsQi0JuJ4_5tgrep.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaNF60lbdjjq_6notify5error5ErrorECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.m)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsaNF60lbdjjq_6notify5error5ErrorEECsbNLsQi0JuJ4_5tgrep.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsaNF60lbdjjq_6notify5error5ErrorEECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.f, %bb.e, %bb.d
  %.sroa.06.1 = phi ptr [ %i.l, %bb.d ], [ %.sroa.06.015, %bb.e ], [ %.sroa.06.015, %bb.f ] ; 2 uses
  %i.p = add i64 %.sroa.0.016, 2                  ; 2 uses
  %.not = icmp eq i64 %i.p, %i.g
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtNtCs5Xr050g3D4S_3std4sync4mpmc4listINtB5_7ChannelNtNtCs6mHKL3HfXZM_12notify_types5event5EventENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 128 captures(none) dereferenceable(384) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load atomic i64, ptr %0 monotonic, align 128
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.c = load atomic i64, ptr %i.b monotonic, align 128
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load atomic ptr, ptr %i.d monotonic, align 8 ; 2 uses
  %i.f = and i64 %i.a, -2                         ; 2 uses
  %i.g = and i64 %i.c, -2                         ; 2 uses
  %.not17 = icmp eq i64 %i.f, %i.g
  br i1 %.not17, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.l, %bb.a
  %.sroa.06.0.lcssa = phi ptr [ %i.e, %bb.a ], [ %.sroa.06.1, %bb.l ] ; 2 uses
  %i.h = icmp eq ptr %.sroa.06.0.lcssa, null
  br i1 %i.h, label %bb.c, label %bb.b

.lr.ph:                                           ; preds = %bb.a, %bb.l
  %.sroa.0.019 = phi i64 [ %i.t, %bb.l ], [ %i.f, %bb.a ] ; 2 uses
  %.sroa.06.018 = phi ptr [ %.sroa.06.1, %bb.l ], [ %i.e, %bb.a ] ; 5 uses
  %i.i = lshr exact i64 %.sroa.0.019, 1
  %i.j = and i64 %i.i, 31                         ; 2 uses
  %.not11 = icmp eq i64 %i.j, 31
  br i1 %.not11, label %bb.d, label %bb.e

bb.b:                                             ; preds = %._crit_edge
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.06.0.lcssa, i64 noundef 1496, i64 noundef 8) #25
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  ret void

bb.d:                                             ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.06.018, i64 1488
  %i.l = load atomic ptr, ptr %i.k monotonic, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.06.018) ]
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.06.018, i64 noundef 1496, i64 noundef 8) #25
  br label %bb.l

bb.e:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw [48 x i8], ptr %.sroa.06.018, i64 %i.j ; 5 uses
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs5Xr050g3D4S_3std4path7PathBufENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.m)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs5Xr050g3D4S_3std4path7PathBufENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.m)
          to label %.body.i unwind label %bb.h

bb.g:                                             ; preds = %bb.e
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs5Xr050g3D4S_3std4path7PathBufENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.m)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6mHKL3HfXZM_12notify_types5event5EventECsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.i, %bb.f
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.p, %bb.i ], [ %i.n, %bb.f ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.val1.i = load ptr, ptr %i.q, align 8, !alias.scope !1189, !align !12, !noundef !5
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6mHKL3HfXZM_12notify_types5event15EventAttributesECsbNLsQi0JuJ4_5tgrep(ptr %.val1.i) #31
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %.body.i
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.k:                                             ; preds = %.body.i
  resume { ptr, i32 } %eh.lpad-body.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6mHKL3HfXZM_12notify_types5event5EventECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.val.i = load ptr, ptr %i.s, align 8, !alias.scope !1189, !align !12, !noundef !5
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6mHKL3HfXZM_12notify_types5event15EventAttributesECsbNLsQi0JuJ4_5tgrep(ptr %.val.i)
  br label %bb.l

bb.l:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6mHKL3HfXZM_12notify_types5event5EventECsbNLsQi0JuJ4_5tgrep.exit, %bb.d
  %.sroa.06.1 = phi ptr [ %.sroa.06.018, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6mHKL3HfXZM_12notify_types5event5EventECsbNLsQi0JuJ4_5tgrep.exit ], [ %i.l, %bb.d ] ; 2 uses
  %i.t = add i64 %.sroa.0.019, 2                  ; 2 uses
  %.not = icmp eq i64 %i.t, %i.g
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtNtCs5Xr050g3D4S_3std4sync4mpmc4listINtB5_7ChannelNtNtCsaNF60lbdjjq_6notify7inotify12EventLoopMsgENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 128 captures(none) dereferenceable(384) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load atomic i64, ptr %0 monotonic, align 128
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.c = load atomic i64, ptr %i.b monotonic, align 128
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load atomic ptr, ptr %i.d monotonic, align 8 ; 2 uses
  %i.f = and i64 %i.a, -2                         ; 2 uses
  %i.g = and i64 %i.c, -2                         ; 2 uses
  %.not25 = icmp eq i64 %i.f, %i.g
  br i1 %.not25, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaNF60lbdjjq_6notify7inotify12EventLoopMsgECsbNLsQi0JuJ4_5tgrep.exit, %bb.a
  %.sroa.06.0.lcssa = phi ptr [ %i.e, %bb.a ], [ %.sroa.06.1, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaNF60lbdjjq_6notify7inotify12EventLoopMsgECsbNLsQi0JuJ4_5tgrep.exit ] ; 2 uses
  %i.h = icmp eq ptr %.sroa.06.0.lcssa, null
  br i1 %i.h, label %bb.c, label %bb.b

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaNF60lbdjjq_6notify7inotify12EventLoopMsgECsbNLsQi0JuJ4_5tgrep.exit
  %.sroa.0.027 = phi i64 [ %i.ab, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaNF60lbdjjq_6notify7inotify12EventLoopMsgECsbNLsQi0JuJ4_5tgrep.exit ], [ %i.f, %bb.a ] ; 2 uses
  %.sroa.06.026 = phi ptr [ %.sroa.06.1, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaNF60lbdjjq_6notify7inotify12EventLoopMsgECsbNLsQi0JuJ4_5tgrep.exit ], [ %i.e, %bb.a ] ; 7 uses
  %i.i = lshr exact i64 %.sroa.0.027, 1
  %i.j = and i64 %i.i, 31                         ; 2 uses
  %.not11 = icmp eq i64 %i.j, 31
  br i1 %.not11, label %bb.d, label %bb.e

bb.b:                                             ; preds = %._crit_edge
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.06.0.lcssa, i64 noundef 1744, i64 noundef 8) #25
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  ret void

bb.d:                                             ; preds = %.lr.ph
  %i.k = load atomic ptr, ptr %.sroa.06.026 monotonic, align 8
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.06.026, i64 noundef 1744, i64 noundef 8) #25
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaNF60lbdjjq_6notify7inotify12EventLoopMsgECsbNLsQi0JuJ4_5tgrep.exit

bb.e:                                             ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.06.026, i64 8
  %i.m = getelementptr inbounds nuw [56 x i8], ptr %i.l, i64 %i.j ; 8 uses
  %i.n = load i64, ptr %i.m, align 8, !range !16, !alias.scope !1192, !noundef !5
  %i.o = tail call i64 @llvm.usub.sat.i64(i64 %i.n, i64 2)
  switch i64 %i.o, label %bb.f [
    i64 0, label %bb.g
    i64 1, label %bb.j
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaNF60lbdjjq_6notify7inotify12EventLoopMsgECsbNLsQi0JuJ4_5tgrep.exit
  ]

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  tail call void @_RNvXs4_NtNtCs5Xr050g3D4S_3std4sync4mpmcINtB5_6SenderINtNtCsf3Ta7LF998c_4core6result6ResultbNtNtCsaNF60lbdjjq_6notify5error5ErrorEENtNtNtBT_3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.p)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaNF60lbdjjq_6notify7inotify12EventLoopMsgECsbNLsQi0JuJ4_5tgrep.exit

bb.g:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 3 uses
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsbNLsQi0JuJ4_5tgrep.exit.i.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %.body.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsbNLsQi0JuJ4_5tgrep.exit.i.i: ; preds = %bb.g
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsbNLsQi0JuJ4_5tgrep.exit.i unwind label %bb.m

bb.j:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 3 uses
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsbNLsQi0JuJ4_5tgrep.exit.i3.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %.body4.i unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsbNLsQi0JuJ4_5tgrep.exit.i3.i: ; preds = %bb.j
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsbNLsQi0JuJ4_5tgrep.exit6.i unwind label %bb.o

bb.m:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsbNLsQi0JuJ4_5tgrep.exit.i.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.m, %bb.h
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.w, %bb.m ], [ %i.r, %bb.h ]
  invoke void @_RNvXs4_NtNtCs5Xr050g3D4S_3std4sync4mpmcINtB5_6SenderINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCsaNF60lbdjjq_6notify5error5ErrorEENtNtNtBT_3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.m)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCs5Xr050g3D4S_3std4sync4mpsc6SenderINtNtB4_6result6ResultuNtNtCsaNF60lbdjjq_6notify5error5ErrorEEECsbNLsQi0JuJ4_5tgrep.exit.i unwind label %bb.n

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsbNLsQi0JuJ4_5tgrep.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsbNLsQi0JuJ4_5tgrep.exit.i.i
  tail call void @_RNvXs4_NtNtCs5Xr050g3D4S_3std4sync4mpmcINtB5_6SenderINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCsaNF60lbdjjq_6notify5error5ErrorEENtNtNtBT_3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.m)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaNF60lbdjjq_6notify7inotify12EventLoopMsgECsbNLsQi0JuJ4_5tgrep.exit

bb.n:                                             ; preds = %.body4.i, %.body.i
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCs5Xr050g3D4S_3std4sync4mpsc6SenderINtNtB4_6result6ResultuNtNtCsaNF60lbdjjq_6notify5error5ErrorEEECsbNLsQi0JuJ4_5tgrep.exit.i: ; preds = %.body4.i, %.body.i
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %eh.lpad-body5.i, %.body4.i ]
  resume { ptr, i32 } %.pn.i

bb.o:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsbNLsQi0JuJ4_5tgrep.exit.i3.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %.body4.i

.body4.i:                                         ; preds = %bb.o, %bb.k
  %eh.lpad-body5.i = phi { ptr, i32 } [ %i.y, %bb.o ], [ %i.u, %bb.k ]
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  invoke void @_RNvXs4_NtNtCs5Xr050g3D4S_3std4sync4mpmcINtB5_6SenderINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCsaNF60lbdjjq_6notify5error5ErrorEENtNtNtBT_3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.z)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCs5Xr050g3D4S_3std4sync4mpsc6SenderINtNtB4_6result6ResultuNtNtCsaNF60lbdjjq_6notify5error5ErrorEEECsbNLsQi0JuJ4_5tgrep.exit.i unwind label %bb.n

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsbNLsQi0JuJ4_5tgrep.exit6.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsbNLsQi0JuJ4_5tgrep.exit.i3.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  tail call void @_RNvXs4_NtNtCs5Xr050g3D4S_3std4sync4mpmcINtB5_6SenderINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCsaNF60lbdjjq_6notify5error5ErrorEENtNtNtBT_3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.aa)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaNF60lbdjjq_6notify7inotify12EventLoopMsgECsbNLsQi0JuJ4_5tgrep.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaNF60lbdjjq_6notify7inotify12EventLoopMsgECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsbNLsQi0JuJ4_5tgrep.exit6.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsbNLsQi0JuJ4_5tgrep.exit.i, %bb.f, %bb.e, %bb.d
  %.sroa.06.1 = phi ptr [ %i.k, %bb.d ], [ %.sroa.06.026, %bb.e ], [ %.sroa.06.026, %bb.f ], [ %.sroa.06.026, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsbNLsQi0JuJ4_5tgrep.exit.i ], [ %.sroa.06.026, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsbNLsQi0JuJ4_5tgrep.exit6.i ] ; 2 uses
  %i.ab = add i64 %.sroa.0.027, 2                 ; 2 uses
  %.not = icmp eq i64 %i.ab, %i.g
  br i1 %.not, label %._crit_edge, label %.lr.ph
}
end_hunk_2
