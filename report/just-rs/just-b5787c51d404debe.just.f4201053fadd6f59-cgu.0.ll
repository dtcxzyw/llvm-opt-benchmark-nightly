Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/just-rs/original/just-b5787c51d404debe.just.f4201053fadd6f59-cgu.0?download=true
inline.NumInlined: 27266
inline.NumDeleted: 11245
loop-unroll.NumCompletelyUnrolled: 122
loop-unroll.NumRuntimeUnrolled: 595
loop-unroll.NumUnrolled: 720
begin_hunk_0_@_RNvYNtNtCsaKJjC64KgbL_3std7process10ChildStdinNtNtNtCsj6eKBz9Db1c_4core2io5write5Write9write_allCskXtk6F4WjxZ_4just:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.l
  %.sroa.0.036 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.116, %bb.l ] ; 3 uses
  %.sroa.6.035 = phi i64 [ %2, %.lr.ph ], [ %.sroa.6.114, %bb.l ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = call { i64, ptr } @_RNvXs2_NtCsaKJjC64KgbL_3std7processNtB5_10ChildStdinNtNtNtCsj6eKBz9Db1c_4core2io5write5Write5write(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.036, i64 noundef %.sroa.6.035) ; 2 uses
  %i.g = extractvalue { i64, ptr } %i.f, 0        ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.f, 1        ; 13 uses
  store i64 %i.g, ptr %i.b, align 8
  store ptr %i.h, ptr %i.d, align 8
  %i.i = trunc nuw i64 %i.g to i1
  %i.j = ptrtoint ptr %i.h to i64                 ; 8 uses
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  %i.k = and i64 %i.j, 3
  switch i64 %i.k, label %default.unreachable [
    i64 2, label %bb.d
    i64 3, label %.split23
    i64 0, label %.split24
    i64 1, label %.split
  ], !prof !69

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.l = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCsj6eKBz9Db1c_4core2io5error12os_functions16get_os_functions()
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.d
  %i.m = lshr i64 %i.j, 32
  %i.n = trunc nuw i64 %i.m to i32
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !28, !noundef !28
  %i.q = invoke noundef zeroext i1 %i.p(i32 noundef %i.n)
          to label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit unwind label %bb.m, !inline_history !13

.split23:                                         ; preds = %bb.c
  %i.r = lshr i64 %i.j, 32
  %i.s = icmp ult ptr %i.h, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i = trunc i64 %i.r to i8
  %spec.select.i.i.i = select i1 %i.s, i8 %switch.idx.cast.i.i.i, i8 -1 ; 2 uses
  %i.t = icmp ne i8 %spec.select.i.i.i, -1
  call void @llvm.assume(i1 %i.t)
  %i.u = icmp eq i8 %spec.select.i.i.i, 35
  br i1 %i.u, label %bb.j, label %bb.g

.split24:                                         ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.w = load i8, ptr %i.v, align 8, !range !71, !noundef !28
  %i.x = icmp eq i8 %i.w, 35
  br i1 %i.x, label %.thread.thread, label %bb.g

.split:                                           ; preds = %bb.c
  %i.y = getelementptr i8, ptr %i.h, i64 31
  %i.z = load i8, ptr %i.y, align 8, !range !71, !noundef !28
  %i.aa = icmp eq i8 %i.z, 35
  br i1 %i.aa, label %bb.k, label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.ab = icmp eq ptr %i.h, null
  br i1 %i.ab, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = icmp ult i64 %.sroa.6.035, %i.j
  br i1 %i.ac, label %bb.h, label %bb.i, !prof !44

bb.g:                                             ; preds = %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit, %.split, %.split23, %.split24, %bb.e
  %.sroa.07.0 = phi ptr [ @2884, %bb.e ], [ %i.h, %.split24 ], [ %i.h, %.split23 ], [ %i.h, %.split ], [ %i.h, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.j, i64 noundef %.sroa.6.035, i64 noundef %.sroa.6.035, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2885) #71
  unreachable

bb.i:                                             ; preds = %bb.f
  %i.ad = sub nuw nsw i64 %.sroa.6.035, %i.j
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.036, i64 %i.j
  br label %bb.l

_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit: ; preds = %.noexc
  br i1 %i.q, label %.thread.thread, label %bb.g

.loopexit:                                        ; preds = %bb.l, %bb.a, %bb.g
  %.sroa.07.1 = phi ptr [ %.sroa.07.0, %bb.g ], [ null, %bb.a ], [ null, %bb.l ]
  ret ptr %.sroa.07.1

.thread.thread:                                   ; preds = %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit, %.split24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !108534
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskXtk6F4WjxZ_4just.exit

bb.j:                                             ; preds = %.split23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !108534
  %i.af = icmp ult ptr %i.h, inttoptr (i64 188978561024 to ptr)
  %i.ag = and i64 %i.j, 1095216660480
  %i.ah = icmp ne i64 %i.ag, 1095216660480
  call void @llvm.assume(i1 %i.af)
  call void @llvm.assume(i1 %i.ah)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskXtk6F4WjxZ_4just.exit

bb.k:                                             ; preds = %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !108534
  %i.ai = getelementptr i8, ptr %i.h, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ai) ]
  store ptr %i.ai, ptr %i.e, align 8, !alias.scope !108535, !noalias !108534
  store i8 3, ptr %i.a, align 8, !alias.scope !108535, !noalias !108534
  call void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e), !noalias !108534
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskXtk6F4WjxZ_4just.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskXtk6F4WjxZ_4just.exit: ; preds = %.thread.thread, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !108534
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskXtk6F4WjxZ_4just.exit
  %.sroa.0.116 = phi ptr [ %.sroa.0.036, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskXtk6F4WjxZ_4just.exit ], [ %i.ae, %bb.i ]
  %.sroa.6.114 = phi i64 [ %.sroa.6.035, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskXtk6F4WjxZ_4just.exit ], [ %i.ad, %bb.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.aj = icmp eq i64 %.sroa.6.114, 0
  br i1 %i.aj, label %.loopexit, label %bb.b

bb.m:                                             ; preds = %.noexc, %bb.d
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #72
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  resume { ptr, i32 } %lpad.thr_comm

bb.o:                                             ; preds = %bb.m
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #73
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvYNtNtCshTCYgcDtIbU_10serde_json5error5ErrorNtNtCsfxuqquxiU4q_10serde_core2de5Error14invalid_lengthCskXtk6F4WjxZ_4just() unnamed_addr #5 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store i64 0, ptr %i.c, align 8
  store ptr @527, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @528, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.e, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRDNtNtCsfxuqquxiU4q_10serde_core2de8ExpectedEL_NtB6_7Display3fmtCskXtk6F4WjxZ_4just, ptr %.sroa.46.0..sroa_idx, align 8
  %i.f = call fastcc noundef nonnull align 8 ptr @_RINvXs6_NtCshTCYgcDtIbU_10serde_json5errorNtB6_5ErrorNtNtCsfxuqquxiU4q_10serde_core2de5Error6customNtNtCsj6eKBz9Db1c_4core3fmt9ArgumentsECskXtk6F4WjxZ_4just(ptr noundef nonnull @2888, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.f
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvYNtNtCshTCYgcDtIbU_10serde_json5error5ErrorNtNtCsfxuqquxiU4q_10serde_core2de5Error15unknown_variantCskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 3 uses
  store ptr %0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %1, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @427, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 2, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCskXtk6F4WjxZ_4just, ptr %.sroa.47.0..sroa_idx, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.f, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs6_NtCsfxuqquxiU4q_10serde_core2deNtB5_5OneOfNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt, ptr %.sroa.411.0..sroa_idx, align 8
  %i.g = call fastcc noundef nonnull align 8 ptr @_RINvXs6_NtCshTCYgcDtIbU_10serde_json5errorNtB6_5ErrorNtNtCsfxuqquxiU4q_10serde_core2de5Error6customNtNtCsj6eKBz9Db1c_4core3fmt9ArgumentsECskXtk6F4WjxZ_4just(ptr noundef nonnull @2890, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.g
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvYNtNtNtCsgYJ0xFPoqCG_13clap_complete6engine6custom13PathCompleterNtB4_14ValueCompleter11complete_atCskXtk6F4WjxZ_4just(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, i64 %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXsb_NtNtCsgYJ0xFPoqCG_13clap_complete6engine6customNtB5_13PathCompleterNtB5_14ValueCompleter8complete(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtCsj6eKBz9Db1c_4core3num5error13ParseIntErrorNtNtB8_5error5Error11descriptionCskXtk6F4WjxZ_4just(ptr noalias nofree readonly captures(none) %0) unnamed_addr #8 {
bb.a:
  ret { ptr, i64 } { ptr @2893, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCsj6eKBz9Db1c_4core3num5error13ParseIntErrorNtNtB8_5error5Error5causeCskXtk6F4WjxZ_4just(ptr noalias nofree readonly captures(none) %0) unnamed_addr #8 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCsj6eKBz9Db1c_4core3num5error13ParseIntErrorNtNtB8_5error5Error6sourceCskXtk6F4WjxZ_4just(ptr noalias nofree readonly captures(none) %0) unnamed_addr #8 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCsj6eKBz9Db1c_4core3num5error13ParseIntErrorNtNtB8_5error5Error7provideCskXtk6F4WjxZ_4just(ptr noalias nofree readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #8 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCsj6eKBz9Db1c_4core3num5error13ParseIntErrorNtNtB8_5error5Error7type_idCskXtk6F4WjxZ_4just(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly captures(none) %1) unnamed_addr #40 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @2894, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtCsj6eKBz9Db1c_4core3num5error15TryFromIntErrorNtNtB8_5error5Error11descriptionCskXtk6F4WjxZ_4just(ptr noalias nofree readonly captures(none) %0) unnamed_addr #8 {
bb.a:
  ret { ptr, i64 } { ptr @2893, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCsj6eKBz9Db1c_4core3num5error15TryFromIntErrorNtNtB8_5error5Error5causeCskXtk6F4WjxZ_4just(ptr noalias nofree readonly captures(none) %0) unnamed_addr #8 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCsj6eKBz9Db1c_4core3num5error15TryFromIntErrorNtNtB8_5error5Error6sourceCskXtk6F4WjxZ_4just(ptr noalias nofree readonly captures(none) %0) unnamed_addr #8 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCsj6eKBz9Db1c_4core3num5error15TryFromIntErrorNtNtB8_5error5Error7provideCskXtk6F4WjxZ_4just(ptr noalias nofree readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #8 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCsj6eKBz9Db1c_4core3num5error15TryFromIntErrorNtNtB8_5error5Error7type_idCskXtk6F4WjxZ_4just(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly captures(none) %1) unnamed_addr #40 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @2895, i64 16, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_RNvYNtNtNtNtCsaKJjC64KgbL_3std3sys5stdio4unix6StderrNtNtNtCsj6eKBz9Db1c_4core2io5write5Write9write_allCskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = icmp eq i64 %2, 0
  br i1 %i.c, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.l
  %.sroa.0.036 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.116, %bb.l ] ; 3 uses
  %.sroa.6.035 = phi i64 [ %2, %.lr.ph ], [ %.sroa.6.114, %bb.l ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = call { i64, ptr } @_RNvXs3_NtNtNtCsaKJjC64KgbL_3std3sys5stdio4unixNtB5_6StderrNtNtNtCsj6eKBz9Db1c_4core2io5write5Write5write(ptr noalias nofree noundef nonnull %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.036, i64 noundef %.sroa.6.035) ; 2 uses
  %i.g = extractvalue { i64, ptr } %i.f, 0        ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.f, 1        ; 13 uses
  store i64 %i.g, ptr %i.b, align 8
  store ptr %i.h, ptr %i.d, align 8
  %i.i = trunc nuw i64 %i.g to i1
  %i.j = ptrtoint ptr %i.h to i64                 ; 8 uses
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  %i.k = and i64 %i.j, 3
  switch i64 %i.k, label %default.unreachable [
    i64 2, label %bb.d
    i64 3, label %.split23
    i64 0, label %.split24
    i64 1, label %.split
  ], !prof !69

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.l = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCsj6eKBz9Db1c_4core2io5error12os_functions16get_os_functions()
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.d
  %i.m = lshr i64 %i.j, 32
  %i.n = trunc nuw i64 %i.m to i32
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !28, !noundef !28
  %i.q = invoke noundef zeroext i1 %i.p(i32 noundef %i.n)
          to label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit unwind label %bb.m, !inline_history !13

.split23:                                         ; preds = %bb.c
  %i.r = lshr i64 %i.j, 32
  %i.s = icmp ult ptr %i.h, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i = trunc i64 %i.r to i8
  %spec.select.i.i.i = select i1 %i.s, i8 %switch.idx.cast.i.i.i, i8 -1 ; 2 uses
  %i.t = icmp ne i8 %spec.select.i.i.i, -1
  call void @llvm.assume(i1 %i.t)
  %i.u = icmp eq i8 %spec.select.i.i.i, 35
  br i1 %i.u, label %bb.j, label %bb.g

.split24:                                         ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.w = load i8, ptr %i.v, align 8, !range !71, !noundef !28
  %i.x = icmp eq i8 %i.w, 35
  br i1 %i.x, label %.thread.thread, label %bb.g

.split:                                           ; preds = %bb.c
  %i.y = getelementptr i8, ptr %i.h, i64 31
  %i.z = load i8, ptr %i.y, align 8, !range !71, !noundef !28
  %i.aa = icmp eq i8 %i.z, 35
  br i1 %i.aa, label %bb.k, label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.ab = icmp eq ptr %i.h, null
  br i1 %i.ab, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = icmp ult i64 %.sroa.6.035, %i.j
  br i1 %i.ac, label %bb.h, label %bb.i, !prof !44

bb.g:                                             ; preds = %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit, %.split, %.split23, %.split24, %bb.e
  %.sroa.07.0 = phi ptr [ @2884, %bb.e ], [ %i.h, %.split24 ], [ %i.h, %.split23 ], [ %i.h, %.split ], [ %i.h, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.j, i64 noundef %.sroa.6.035, i64 noundef %.sroa.6.035, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2885) #71
  unreachable

bb.i:                                             ; preds = %bb.f
  %i.ad = sub nuw nsw i64 %.sroa.6.035, %i.j
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.036, i64 %i.j
  br label %bb.l

_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit: ; preds = %.noexc
  br i1 %i.q, label %.thread.thread, label %bb.g

.loopexit:                                        ; preds = %bb.l, %bb.a, %bb.g
  %.sroa.07.1 = phi ptr [ %.sroa.07.0, %bb.g ], [ null, %bb.a ], [ null, %bb.l ]
  ret ptr %.sroa.07.1

.thread.thread:                                   ; preds = %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit, %.split24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !108540
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskXtk6F4WjxZ_4just.exit

bb.j:                                             ; preds = %.split23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !108540
  %i.af = icmp ult ptr %i.h, inttoptr (i64 188978561024 to ptr)
  %i.ag = and i64 %i.j, 1095216660480
  %i.ah = icmp ne i64 %i.ag, 1095216660480
  call void @llvm.assume(i1 %i.af)
  call void @llvm.assume(i1 %i.ah)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskXtk6F4WjxZ_4just.exit

bb.k:                                             ; preds = %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !108540
  %i.ai = getelementptr i8, ptr %i.h, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ai) ]
  store ptr %i.ai, ptr %i.e, align 8, !alias.scope !108541, !noalias !108540
  store i8 3, ptr %i.a, align 8, !alias.scope !108541, !noalias !108540
  call void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e), !noalias !108540
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskXtk6F4WjxZ_4just.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskXtk6F4WjxZ_4just.exit: ; preds = %.thread.thread, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !108540
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskXtk6F4WjxZ_4just.exit
  %.sroa.0.116 = phi ptr [ %.sroa.0.036, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskXtk6F4WjxZ_4just.exit ], [ %i.ae, %bb.i ]
  %.sroa.6.114 = phi i64 [ %.sroa.6.035, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskXtk6F4WjxZ_4just.exit ], [ %i.ad, %bb.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.aj = icmp eq i64 %.sroa.6.114, 0
  br i1 %i.aj, label %.loopexit, label %bb.b

bb.m:                                             ; preds = %.noexc, %bb.d
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #72
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  resume { ptr, i32 } %lpad.thr_comm

bb.o:                                             ; preds = %bb.m
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #73
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNvXsf_NtNtCs4wP2HXfJTCR_5alloc5boxed7convertINtBc_3BoxDNtNtCsj6eKBz9Db1c_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_11descriptionCskXtk6F4WjxZ_4just(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  ret { ptr, i64 } { ptr @2893, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNvXsf_NtNtCs4wP2HXfJTCR_5alloc5boxed7convertINtBc_3BoxDNtNtCsj6eKBz9Db1c_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_5causeCskXtk6F4WjxZ_4just(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNvXsf_NtNtCs4wP2HXfJTCR_5alloc5boxed7convertINtBc_3BoxDNtNtCsj6eKBz9Db1c_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_6sourceCskXtk6F4WjxZ_4just(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNvXsf_NtNtCs4wP2HXfJTCR_5alloc5boxed7convertINtBc_3BoxDNtNtCsj6eKBz9Db1c_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_7provideCskXtk6F4WjxZ_4just(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #8 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNvXsf_NtNtCs4wP2HXfJTCR_5alloc5boxed7convertINtBc_3BoxDNtNtCsj6eKBz9Db1c_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_7type_idCskXtk6F4WjxZ_4just(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #40 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @2896, i64 16, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvYNvMNtCskXtk6F4WjxZ_4just9completerNtB5_9Completer14complete_groupNtNtNtCsgYJ0xFPoqCG_13clap_complete6engine6custom14ValueCompleter11complete_atB7_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree nonnull readonly captures(none) %1, i64 %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXs1_NtNtCsgYJ0xFPoqCG_13clap_complete6engine6customNvMNtCskXtk6F4WjxZ_4just9completerNtBT_9Completer14complete_groupNtB5_14ValueCompleter8completeBV_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree nonnull readonly captures(address, read_provenance) poison, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvYNvMNtCskXtk6F4WjxZ_4just9completerNtB5_9Completer15complete_recipeNtNtNtCsgYJ0xFPoqCG_13clap_complete6engine6custom14ValueCompleter11complete_atB7_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree nonnull readonly captures(none) %1, i64 %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXs1_NtNtCsgYJ0xFPoqCG_13clap_complete6engine6customNvMNtCskXtk6F4WjxZ_4just9completerNtBT_9Completer15complete_recipeNtB5_14ValueCompleter8completeBV_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree nonnull readonly captures(address, read_provenance) poison, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvYNvMNtCskXtk6F4WjxZ_4just9completerNtB5_9Completer17complete_argumentNtNtNtCsgYJ0xFPoqCG_13clap_complete6engine6custom14ValueCompleter11complete_atB7_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree nonnull readonly captures(none) %1, i64 %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXs1_NtNtCsgYJ0xFPoqCG_13clap_complete6engine6customNvMNtCskXtk6F4WjxZ_4just9completerNtBT_9Completer17complete_argumentNtB5_14ValueCompleter8completeBV_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree nonnull readonly captures(address, read_provenance) poison, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvYNvMNtCskXtk6F4WjxZ_4just9completerNtB5_9Completer17complete_variableNtNtNtCsgYJ0xFPoqCG_13clap_complete6engine6custom14ValueCompleter11complete_atB7_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree nonnull readonly captures(none) %1, i64 %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXs1_NtNtCsgYJ0xFPoqCG_13clap_complete6engine6customNvMNtCskXtk6F4WjxZ_4just9completerNtBT_9Completer17complete_variableNtB5_14ValueCompleter8completeBV_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree nonnull readonly captures(address, read_provenance) poison, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvYNvNtCskXtk6F4WjxZ_4just8unindent11indentationINtNtNtCsj6eKBz9Db1c_4core3ops8function5FnMutTReEE8call_mutB6_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 5 uses
  %.not.i = icmp samesign eq i64 %1, 0
  br i1 %.not.i, label %_RNvNtCskXtk6F4WjxZ_4just8unindent11indentation.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a
  %i.b = ptrtoint ptr %0 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.d = load i8, ptr %0, align 1, !alias.scope !108561, !noalias !108562, !noundef !28 ; 5 uses
  %i.e = icmp sgt i8 %i.d, -1
  br i1 %i.e, label %bb.b, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i.i.peel.i.i.i.i

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i.i.peel.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.f = and i8 %i.d, 31
  %i.g = zext nneg i8 %i.f to i32                 ; 3 uses
  %i.h = icmp samesign ne i64 %1, 1
  tail call void @llvm.assume(i1 %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.j = load i8, ptr %i.c, align 1, !alias.scope !108561, !noalias !108562, !noundef !28
  %i.k = shl nuw nsw i32 %i.g, 6
  %i.l = and i8 %i.j, 63
  %i.m = zext nneg i8 %i.l to i32                 ; 2 uses
  %i.n = or disjoint i32 %i.k, %i.m
  %i.o = icmp samesign ugt i8 %i.d, -33
  br i1 %i.o, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i.i.peel.i.i.i.i, label %bb.c

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i.i.peel.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i.i.peel.i.i.i.i
  %i.p = icmp samesign ne i64 %1, 2
  tail call void @llvm.assume(i1 %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 2 uses
  %i.r = load i8, ptr %i.i, align 1, !alias.scope !108561, !noalias !108562, !noundef !28
  %i.s = shl nuw nsw i32 %i.m, 6
  %i.t = and i8 %i.r, 63
  %i.u = zext nneg i8 %i.t to i32
  %i.v = or disjoint i32 %i.s, %i.u               ; 2 uses
  %i.w = shl nuw nsw i32 %i.g, 12
  %i.x = or disjoint i32 %i.v, %i.w
  %i.y = icmp samesign ugt i8 %i.d, -17
  br i1 %i.y, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit16.i.i.peel.i.i.i.i, label %bb.c

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit16.i.i.peel.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i.i.peel.i.i.i.i
  %i.z = icmp samesign ne i64 %1, 3
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ab = load i8, ptr %i.q, align 1, !alias.scope !108561, !noalias !108562, !noundef !28
  %i.ac = shl nuw nsw i32 %i.g, 18
  %i.ad = and i32 %i.ac, 1835008
  %i.ae = shl nuw nsw i32 %i.v, 6
  %i.af = and i8 %i.ab, 63
  %i.ag = zext nneg i8 %i.af to i32
  %i.ah = or disjoint i32 %i.ae, %i.ag
  %i.ai = or disjoint i32 %i.ah, %i.ad
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.aj = zext nneg i8 %i.d to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit16.i.i.peel.i.i.i.i, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i.i.peel.i.i.i.i, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i.i.peel.i.i.i.i
  %i.ak = phi ptr [ %i.q, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i.i.peel.i.i.i.i ], [ %i.aa, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit16.i.i.peel.i.i.i.i ], [ %i.i, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i.i.peel.i.i.i.i ], [ %i.c, %bb.b ] ; 3 uses
  %.sroa.4.0.i.ph.i.peel.i.i.i.i = phi i32 [ %i.x, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i.i.peel.i.i.i.i ], [ %i.ai, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit16.i.i.peel.i.i.i.i ], [ %i.n, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i.i.peel.i.i.i.i ], [ %i.aj, %bb.b ] ; 2 uses
  %i.al = icmp samesign ult i32 %.sroa.4.0.i.ph.i.peel.i.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.al)
  switch i32 %.sroa.4.0.i.ph.i.peel.i.i.i.i, label %_RNvNtCskXtk6F4WjxZ_4just8unindent11indentation.exit [
    i32 32, label %bb.d
    i32 9, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  %i.am = icmp eq ptr %i.ak, %i.a
  br i1 %i.am, label %_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtB6_9TakeWhileNtNtNtBc_3str4iter11CharIndicesNCNvNtCskXtk6F4WjxZ_4just8unindent11indentation0ENtNtNtBa_6traits8iterator8Iterator4foldINtNtBc_6option6OptionjENCINvNtB8_3map8map_foldTjcEjB36_NCB1I_s_0INvNvB2t_4last4somejEE0EB1M_.exit.thread22.i, label %.peel.next.i.i.i.preheader.i

.peel.next.i.i.i.preheader.i:                     ; preds = %bb.d
  %i.an = ptrtoint ptr %i.ak to i64
  %i.ao = sub i64 %i.an, %i.b
  br label %.peel.next.i.i.i.i

.peel.next.i.i.i.i:                               ; preds = %bb.g, %.peel.next.i.i.i.preheader.i
  %i.ap = phi i64 [ %i.ce, %bb.g ], [ %i.ao, %.peel.next.i.i.i.preheader.i ] ; 2 uses
  %.sroa.7.025.i.i.i.i = phi i64 [ %i.cf, %bb.g ], [ 1, %.peel.next.i.i.i.preheader.i ]
  %i.aq = phi ptr [ %i.ca, %bb.g ], [ %i.ak, %.peel.next.i.i.i.preheader.i ] ; 6 uses
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 1 ; 3 uses
  %i.at = load i8, ptr %i.aq, align 1, !alias.scope !108561, !noalias !108563, !noundef !28 ; 5 uses
  %i.au = icmp sgt i8 %i.at, -1
  br i1 %i.au, label %bb.e, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i.i.i.i.i.i

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i.i.i.i.i.i: ; preds = %.peel.next.i.i.i.i
  %i.av = and i8 %i.at, 31
  %i.aw = zext nneg i8 %i.av to i32               ; 3 uses
  %i.ax = icmp ne ptr %i.as, %i.a
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aq, i64 2 ; 3 uses
  %i.az = load i8, ptr %i.as, align 1, !alias.scope !108561, !noalias !108563, !noundef !28
  %i.ba = shl nuw nsw i32 %i.aw, 6
  %i.bb = and i8 %i.az, 63
  %i.bc = zext nneg i8 %i.bb to i32               ; 2 uses
  %i.bd = or disjoint i32 %i.ba, %i.bc
  %i.be = icmp samesign ugt i8 %i.at, -33
  br i1 %i.be, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i.i.i.i.i.i, label %bb.f

bb.e:                                             ; preds = %.peel.next.i.i.i.i
  %i.bf = zext nneg i8 %i.at to i32
  br label %bb.f

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i.i.i.i.i.i
  %i.bg = icmp ne ptr %i.ay, %i.a
  tail call void @llvm.assume(i1 %i.bg)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aq, i64 3 ; 3 uses
  %i.bi = load i8, ptr %i.ay, align 1, !alias.scope !108561, !noalias !108563, !noundef !28
  %i.bj = shl nuw nsw i32 %i.bc, 6
  %i.bk = and i8 %i.bi, 63
  %i.bl = zext nneg i8 %i.bk to i32
  %i.bm = or disjoint i32 %i.bj, %i.bl            ; 2 uses
  %i.bn = shl nuw nsw i32 %i.aw, 12
  %i.bo = or disjoint i32 %i.bm, %i.bn
  %i.bp = icmp samesign ugt i8 %i.at, -17
  br i1 %i.bp, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit16.i.i.i.i.i.i, label %bb.f

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit16.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i.i.i.i.i.i
  %i.bq = icmp ne ptr %i.bh, %i.a
  tail call void @llvm.assume(i1 %i.bq)
  %i.br = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.bs = load i8, ptr %i.bh, align 1, !alias.scope !108561, !noalias !108563, !noundef !28
  %i.bt = shl nuw nsw i32 %i.aw, 18
  %i.bu = and i32 %i.bt, 1835008
  %i.bv = shl nuw nsw i32 %i.bm, 6
  %i.bw = and i8 %i.bs, 63
  %i.bx = zext nneg i8 %i.bw to i32
  %i.by = or disjoint i32 %i.bv, %i.bx
  %i.bz = or disjoint i32 %i.by, %i.bu
  br label %bb.f

bb.f:                                             ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit16.i.i.i.i.i.i, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i.i.i.i.i.i, %bb.e, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i.i.i.i.i.i
  %i.ca = phi ptr [ %i.bh, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i.i.i.i.i.i ], [ %i.br, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit16.i.i.i.i.i.i ], [ %i.ay, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i.i.i.i.i.i ], [ %i.as, %bb.e ] ; 3 uses
  %.sroa.4.0.i.ph.i.i.i.i.i = phi i32 [ %i.bo, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i.i.i.i.i.i ], [ %i.bz, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit16.i.i.i.i.i.i ], [ %i.bd, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i.i.i.i.i.i ], [ %i.bf, %bb.e ] ; 2 uses
  %i.cb = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.cb)
  switch i32 %.sroa.4.0.i.ph.i.i.i.i.i, label %_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtB6_9TakeWhileNtNtNtBc_3str4iter11CharIndicesNCNvNtCskXtk6F4WjxZ_4just8unindent11indentation0ENtNtNtBa_6traits8iterator8Iterator4foldINtNtBc_6option6OptionjENCINvNtB8_3map8map_foldTjcEjB36_NCB1I_s_0INvNvB2t_4last4somejEE0EB1M_.exit.i [
    i32 32, label %bb.g
    i32 9, label %bb.g
end_hunk_0
