Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tgrep-rs/original/tgrep.tgrep.897916b5d56b90bc-cgu.11?download=true
inline.NumInlined: 716
inline.NumDeleted: 346
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_RINvMs0_NtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsbNLsQi0JuJ4_5tgrep:bb.a
  %i.d = tail call { i64, i64 } @_RNvNtNtNtCs5Xr050g3D4S_3std3sys6random5linux19hashmap_random_keys() ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0
  %i.f = extractvalue { i64, i64 } %i.d, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sroa.3.0 = phi i64 [ %i.f, %bb.d ], [ %.sroa.6.0.copyload, %bb.c ]
  %.sroa.03.0 = phi i64 [ %i.e, %bb.d ], [ %.sroa.5.0.copyload, %bb.c ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.03.0, ptr %0, align 8
  store i64 %.sroa.3.0, ptr %i.g, align 8
  store i8 1, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  ret ptr %0
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef ptr @_RINvMs0_NtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native4lazyINtB6_7StorageNtNtCs4ciboHeBKjP_15crossbeam_epoch9collector11LocalHandleuE16get_or_init_slowNvNvNtB1i_7default6HANDLE27___rust_std_internal_init_fnECsbNLsQi0JuJ4_5tgrep(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 captures(address_is_null) dereferenceable_or_null(16) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load i8, ptr %i.b, align 8, !range !6, !noundef !7
  switch i8 %i.c, label %default.unreachable8 [
    i8 0, label %bb.b
    i8 1, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs4ciboHeBKjP_15crossbeam_epoch9collector11LocalHandleECsbNLsQi0JuJ4_5tgrep.exit
    i8 2, label %bb.c
  ]

default.unreachable8:                             ; preds = %bb.e, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs4ciboHeBKjP_15crossbeam_epoch9collector11LocalHandleECsbNLsQi0JuJ4_5tgrep.exit

bb.d:                                             ; preds = %bb.b
  %i.d = load i64, ptr %1, align 8, !range !8, !noundef !7
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  store i64 0, ptr %1, align 8
  %i.g = trunc nuw i64 %i.d to i1
  br i1 %i.g, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.d
  store ptr %i.f, ptr %0, align 8
  store i8 1, ptr %i.b, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.h = tail call noundef nonnull align 8 ptr @_RNvNtCs4ciboHeBKjP_15crossbeam_epoch7default9collector()
  %i.i = tail call noundef ptr @_RNvMs1_NtCs4ciboHeBKjP_15crossbeam_epoch9collectorNtB5_9Collector8register(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.h)
  %.pre = load i8, ptr %i.b, align 8, !range !6
  %i.j = load ptr, ptr %0, align 8                ; 3 uses
  store ptr %i.i, ptr %0, align 8
  store i8 1, ptr %i.b, align 8
  switch i8 %.pre, label %default.unreachable8 [
    i8 0, label %bb.f
    i8 1, label %bb.g
    i8 2, label %bb.i
  ], !prof !51

bb.f:                                             ; preds = %.thread, %bb.e
  tail call void @_RNvNtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local11destructors10linux_like8register(ptr noundef nonnull align 8 %0, ptr noundef nonnull @_RINvNtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native4lazy7destroyNtNtCs4ciboHeBKjP_15crossbeam_epoch9collector11LocalHandleECsbNLsQi0JuJ4_5tgrep)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs4ciboHeBKjP_15crossbeam_epoch9collector11LocalHandleECsbNLsQi0JuJ4_5tgrep.exit

bb.g:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 2072
  %i.l = load i64, ptr %i.k, align 8, !noundef !7
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 2080 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !noundef !7 ; 2 uses
  %i.o = add i64 %i.n, -1
  store i64 %i.o, ptr %i.m, align 8
  %i.p = icmp eq i64 %i.l, 0
  %i.q = icmp eq i64 %i.n, 1
  %or.cond.i.i.i = and i1 %i.p, %i.q
  br i1 %or.cond.i.i.i, label %bb.h, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs4ciboHeBKjP_15crossbeam_epoch9collector11LocalHandleECsbNLsQi0JuJ4_5tgrep.exit, !prof !10

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvMs6_NtCs4ciboHeBKjP_15crossbeam_epoch8internalNtB5_5Local8finalize(ptr noundef nonnull align 128 %i.j)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs4ciboHeBKjP_15crossbeam_epoch9collector11LocalHandleECsbNLsQi0JuJ4_5tgrep.exit

bb.i:                                             ; preds = %bb.e
  %i.r = call noundef ptr @_RNvYNtNtNtNtCs5Xr050g3D4S_3std3sys5stdio4unix6StderrNtNtNtCsf3Ta7LF998c_4core2io5write5Write9write_fmtCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull %i.a, ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 87 to ptr))
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsbNLsQi0JuJ4_5tgrep(ptr %i.r)
  call void @_RNvNtCs5Xr050g3D4S_3std7process5abort() #22
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs4ciboHeBKjP_15crossbeam_epoch9collector11LocalHandleECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.f, %bb.g, %bb.h, %bb.a, %bb.c
  %.sroa.02.0 = phi ptr [ %0, %bb.a ], [ null, %bb.c ], [ %0, %bb.h ], [ %0, %bb.g ], [ %0, %bb.f ]
  ret ptr %.sroa.02.0
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvMs0_NtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native4lazyINtB6_7StoragejzE16get_or_init_slowNvNvNtNtNtCs22empcGmRho_14regex_automata4util4pool5inner9THREAD_ID27___rust_std_internal_init_fnECsbNLsQi0JuJ4_5tgrep(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) %0, ptr noalias nofree noundef align 8 captures(address_is_null) dereferenceable_or_null(16) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !range !9, !noundef !7
  %trunc = trunc nuw i8 %i.b to i1
  br i1 %trunc, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i64, ptr %1, align 8, !range !8, !noundef !7
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8
  store i64 0, ptr %1, align 8
  %i.f = trunc nuw i64 %i.c to i1
  br i1 %i.f, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.g = atomicrmw add ptr @_RNvNtNtNtCs22empcGmRho_14regex_automata4util4pool5inner7COUNTER, i64 1 monotonic, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.e, label %bb.f, !prof !11

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @127, ptr noundef nonnull inttoptr (i64 87 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @129) #23
  unreachable

bb.f:                                             ; preds = %bb.c, %bb.d
  %.sroa.03.0 = phi i64 [ %i.e, %bb.c ], [ %i.g, %bb.d ]
  store i64 %.sroa.03.0, ptr %0, align 8
  store i8 1, ptr %i.a, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.a
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs6MoqnCnVQOT_10serde_json2de10from_traitNtNtB4_4read7StrReadNtNtB4_5value5ValueECsbNLsQi0JuJ4_5tgrep(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [56 x i8], align 8                ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i64 0, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i8 -128, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke fastcc void @_RINvXNtNtCs6MoqnCnVQOT_10serde_json5value2deNtB5_5ValueNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeQINtNtB7_2de12DeserializerNtNtB7_4read7StrReadEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %i.c)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.h, %bb.c
  %.pn = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.s, %bb.h ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs6MoqnCnVQOT_10serde_json2de12DeserializerNtNtBG_4read7StrReadEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(56) %i.c) #24
          to label %common.resume unwind label %bb.o

bb.c:                                             ; preds = %bb.i, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.g = load i8, ptr %0, align 8, !range !12, !noundef !7
  %i.h = icmp eq i8 %i.g, -1
  br i1 %i.h, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !65)
  call void @llvm.experimental.noalias.scope.decl(metadata !66)
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !67, !noalias !68, !noundef !7 ; 2 uses
  %.promoted.i.i = load i64, ptr %i.i, align 8, !alias.scope !69, !noalias !70 ; 2 uses
  %i.l = icmp ult i64 %.promoted.i.i, %i.k
  br i1 %i.l, label %.lr.ph.i.i, label %.loopexit

.lr.ph.i.i:                                       ; preds = %bb.e
  %i.m = load ptr, ptr %i.d, align 8, !alias.scope !67, !noalias !68, !nonnull !7, !noundef !7
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i
  %i.n = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.q, %bb.g ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !71)
  call void @llvm.experimental.noalias.scope.decl(metadata !72)
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !noalias !73, !noundef !7
  switch i8 %i.p, label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsbNLsQi0JuJ4_5tgrep.exit.i [
    i8 32, label %bb.g
    i8 10, label %bb.g
    i8 9, label %bb.g
    i8 13, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f
  %i.q = add i64 %i.n, 1                          ; 3 uses
  store i64 %i.q, ptr %i.i, align 8, !alias.scope !74, !noalias !70
  %exitcond.not.i.i = icmp eq i64 %i.q, %i.k
  br i1 %exitcond.not.i.i, label %.loopexit, label %bb.f

_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsbNLsQi0JuJ4_5tgrep.exit.i: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !65
  store i64 22, ptr %i.a, align 8, !noalias !65
  %i.r = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.c, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsbNLsQi0JuJ4_5tgrep.exit.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6MoqnCnVQOT_10serde_json5value5ValueECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(32) %i.b) #24
          to label %bb.b unwind label %bb.o

bb.i:                                             ; preds = %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsbNLsQi0JuJ4_5tgrep.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !65
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.r, ptr %i.t, align 8
  store i8 -1, ptr %0, align 8
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6MoqnCnVQOT_10serde_json5value5ValueECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(32) %i.b)
          to label %bb.l unwind label %bb.c

.loopexit:                                        ; preds = %bb.g, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs6MoqnCnVQOT_10serde_json2de12DeserializerNtNtBG_4read7StrReadEECsbNLsQi0JuJ4_5tgrep.exit6 unwind label %bb.j

bb.j:                                             ; preds = %.loopexit
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c)
          to label %common.resume unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.m, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.m ], [ %i.u, %bb.j ], [ %.pn, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs6MoqnCnVQOT_10serde_json2de12DeserializerNtNtBG_4read7StrReadEECsbNLsQi0JuJ4_5tgrep.exit6: ; preds = %.loopexit, %bb.l
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.l:                                             ; preds = %bb.d, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs6MoqnCnVQOT_10serde_json2de12DeserializerNtNtBG_4read7StrReadEECsbNLsQi0JuJ4_5tgrep.exit6 unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c)
          to label %common.resume unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.o:                                             ; preds = %bb.h, %bb.b
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs6MoqnCnVQOT_10serde_json2de10from_traitNtNtB4_4read7StrReadNtNtCsbNLsQi0JuJ4_5tgrep5serve10ServerInfoEB17_(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [56 x i8], align 8                ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i64 0, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i8 -128, ptr %i.d, align 8
  invoke void @_RINvXNvNtCsbNLsQi0JuJ4_5tgrep5serves_1__NtB5_10ServerInfoNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeQINtNtCs6MoqnCnVQOT_10serde_json2de12DeserializerNtNtB1W_4read7StrReadEEB7_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.b)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.h, %bb.c
  %.pn = phi { ptr, i32 } [ %i.s, %bb.h ], [ %i.e, %bb.c ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs6MoqnCnVQOT_10serde_json2de12DeserializerNtNtBG_4read7StrReadEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(56) %i.b) #24
          to label %common.resume unwind label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.f = load i32, ptr %0, align 8, !range !13, !noundef !7
  %i.g = trunc nuw i32 %i.f to i1
  br i1 %i.g, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !88)
  call void @llvm.experimental.noalias.scope.decl(metadata !89)
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !90, !noalias !91, !noundef !7 ; 2 uses
  %.promoted.i.i = load i64, ptr %i.i, align 8, !alias.scope !92, !noalias !93 ; 2 uses
  %i.l = icmp ult i64 %.promoted.i.i, %i.k
  br i1 %i.l, label %.lr.ph.i.i, label %.loopexit

.lr.ph.i.i:                                       ; preds = %bb.e
  %i.m = load ptr, ptr %i.c, align 8, !alias.scope !90, !noalias !91, !nonnull !7, !noundef !7
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i
  %i.n = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.q, %bb.g ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !94)
  call void @llvm.experimental.noalias.scope.decl(metadata !95)
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !noalias !96, !noundef !7
  switch i8 %i.p, label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsbNLsQi0JuJ4_5tgrep.exit.i [
    i8 32, label %bb.g
    i8 10, label %bb.g
    i8 9, label %bb.g
    i8 13, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f
  %i.q = add i64 %i.n, 1                          ; 3 uses
  store i64 %i.q, ptr %i.i, align 8, !alias.scope !97, !noalias !93
  %exitcond.not.i.i = icmp eq i64 %i.q, %i.k
  br i1 %exitcond.not.i.i, label %.loopexit, label %bb.f

_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsbNLsQi0JuJ4_5tgrep.exit.i: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !88
  store i64 22, ptr %i.a, align 8, !noalias !88
  %i.r = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.b, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsbNLsQi0JuJ4_5tgrep.exit.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.i:                                             ; preds = %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsbNLsQi0JuJ4_5tgrep.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !88
  store ptr %i.r, ptr %i.h, align 8
  store i32 1, ptr %0, align 8
  br label %bb.l

.loopexit:                                        ; preds = %bb.g, %bb.e
  store i32 0, ptr %0, align 8
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.b)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs6MoqnCnVQOT_10serde_json2de12DeserializerNtNtBG_4read7StrReadEECsbNLsQi0JuJ4_5tgrep.exit6 unwind label %bb.j

bb.j:                                             ; preds = %.loopexit
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.b)
          to label %common.resume unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.m, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.v, %bb.m ], [ %i.t, %bb.j ], [ %.pn, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs6MoqnCnVQOT_10serde_json2de12DeserializerNtNtBG_4read7StrReadEECsbNLsQi0JuJ4_5tgrep.exit6: ; preds = %.loopexit, %bb.l
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.l:                                             ; preds = %bb.d, %bb.i
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.b)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs6MoqnCnVQOT_10serde_json2de12DeserializerNtNtBG_4read7StrReadEECsbNLsQi0JuJ4_5tgrep.exit6 unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.b)
          to label %common.resume unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.o:                                             ; preds = %bb.b
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !14, !noundef !7
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECsbNLsQi0JuJ4_5tgrep.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECsbNLsQi0JuJ4_5tgrep.exit.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNtNtB11_5error5ErrorEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !12, !noundef !7
  %.not = icmp eq i8 %i.a, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6MoqnCnVQOT_10serde_json5value5ValueECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(32) %0)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsbNLsQi0JuJ4_5tgrep6status12StatusResultNtCsjYKKaZ3qa7A_6anyhow5ErrorEEB11_(ptr noalias nofree noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !15, !noundef !7
  %.not = icmp eq i64 %i.a, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbNLsQi0JuJ4_5tgrep6status12StatusResultEBF_(ptr noalias nofree noundef align 8 dereferenceable(216) %0)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs4_NtCsjYKKaZ3qa7A_6anyhow5errorNtB7_5ErrorNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core4meta9IndexMetaNtNtB11_5error5ErrorEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !14, !noundef !7
  %.not = icmp eq i64 %i.b, -1
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %0)
          to label %.body.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i.i: ; preds = %bb.b
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core4meta9IndexMetaECsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i.i
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.e, %bb.c
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.c, %bb.c ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringbENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %.body.i
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.p, %bb.s, %bb.v, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.w, %bb.s ], [ %i.l, %bb.i ], [ %i.u, %bb.p ], [ %i.y, %bb.v ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core4meta9IndexMetaECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringbENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit

bb.g:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_0
begin_hunk_1_@_RINvNtNtCsgCecv3eZDcN_5alloc2io8buf_read18default_read_untilINtNtNtB4_8buffered9bufreader9BufReaderRNtNtNtCs5Xr050g3D4S_3std3net3tcp9TcpStreamEECsbNLsQi0JuJ4_5tgrep:bb.a

bb.f:                                             ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsbNLsQi0JuJ4_5tgrep.exit
  %i.ba = inttoptr i64 %i.az to ptr
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %bb.f
  %.sroa.3.0 = phi ptr [ %.val, %bb.i ], [ %i.ba, %bb.f ]
  %.sroa.0.0 = phi i64 [ 1, %bb.i ], [ 0, %bb.f ]
  %i.bb = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.bc = insertvalue { i64, ptr } %i.bb, ptr %.sroa.3.0, 1
  ret { i64, ptr } %i.bc

bb.h:                                             ; preds = %.noexc, %bb.b
  %i.bd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtB4_2io5error5ErrorEECsbNLsQi0JuJ4_5tgrep(ptr null, ptr nonnull %.val) #24
          to label %bb.m unwind label %bb.l

_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit: ; preds = %.noexc
  br i1 %i.r, label %.thread, label %bb.i

bb.i:                                             ; preds = %.split29, %.split28, %.split, %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.g

.thread:                                          ; preds = %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit, %.split29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtB4_2io5error5ErrorEECsbNLsQi0JuJ4_5tgrep.exit

bb.j:                                             ; preds = %.split28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.be = and i64 %i.k, 1095216660480
  %i.bf = icmp ne i64 %i.be, 1095216660480
  call void @llvm.assume(i1 %i.t)
  call void @llvm.assume(i1 %i.bf)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtB4_2io5error5ErrorEECsbNLsQi0JuJ4_5tgrep.exit

bb.k:                                             ; preds = %.split
  %i.bg = getelementptr i8, ptr %.val, i64 -1     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bg) ]
  store ptr %i.bg, ptr %i.d, align 8, !alias.scope !422
  store i8 3, ptr %i.a, align 8, !alias.scope !422
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtB4_2io5error5ErrorEECsbNLsQi0JuJ4_5tgrep.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtB4_2io5error5ErrorEECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.j, %bb.k, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXs5_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreaderINtB5_9BufReaderRNtNtNtCs5Xr050g3D4S_3std3net3tcp9TcpStreamENtNtB9_8buf_read7BufRead8fill_bufCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
  %i.bh = load ptr, ptr %i.b, align 8, !noundef !7 ; 2 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %.lr.ph, label %._crit_edge

bb.l:                                             ; preds = %bb.h
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.m:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.bd
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native4lazy7destroyINtNtCsf3Ta7LF998c_4core4cell4CellINtNtB19_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEECsbNLsQi0JuJ4_5tgrep(ptr noundef %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !range !6, !noundef !7
  store i8 2, ptr %i.a, align 1
  %i.c = icmp eq i8 %i.b, 1
  br i1 %i.c, label %bb.b, label %_RINvNtNtCs5Xr050g3D4S_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyINtNtCsf3Ta7LF998c_4core4cell4CellINtNtB1D_6option6OptionNtNtNtNtB6_4sync4mpmc7context7ContextEEE0ECsbNLsQi0JuJ4_5tgrep.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !435)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !436)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !437)
  %i.d = load ptr, ptr %0, align 8, !alias.scope !438, !noundef !7 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_RINvNtNtCs5Xr050g3D4S_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyINtNtCsf3Ta7LF998c_4core4cell4CellINtNtB1D_6option6OptionNtNtNtNtB6_4sync4mpmc7context7ContextEEE0ECsbNLsQi0JuJ4_5tgrep.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !439
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.d, label %_RINvNtNtCs5Xr050g3D4S_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyINtNtCsf3Ta7LF998c_4core4cell4CellINtNtB1D_6option6OptionNtNtNtNtB6_4sync4mpmc7context7ContextEEE0ECsbNLsQi0JuJ4_5tgrep.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtNtCs5Xr050g3D4S_3std4sync4mpmc7context5InnerE9drop_slowCsaNF60lbdjjq_6notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #21
          to label %_RINvNtNtCs5Xr050g3D4S_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyINtNtCsf3Ta7LF998c_4core4cell4CellINtNtB1D_6option6OptionNtNtNtNtB6_4sync4mpmc7context7ContextEEE0ECsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke fastcc void @_RNvXNvNtNtCs5Xr050g3D4S_3std3sys12thread_local20abort_on_dtor_unwindNtB2_15DtorUnwindGuardNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop() #27
          to label %.noexc1.i unwind label %bb.f

.noexc1.i:                                        ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtNtCs5Xr050g3D4S_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyINtNtCsf3Ta7LF998c_4core4cell4CellINtNtB1D_6option6OptionNtNtNtNtB6_4sync4mpmc7context7ContextEEE0ECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native4lazy7destroyNtNtCs4ciboHeBKjP_15crossbeam_epoch9collector11LocalHandleECsbNLsQi0JuJ4_5tgrep(ptr nofree noundef captures(none) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !range !6, !noundef !7
  store i8 2, ptr %i.a, align 1
  %i.c = icmp eq i8 %i.b, 1
  br i1 %i.c, label %bb.b, label %_RINvNtNtCs5Xr050g3D4S_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyNtNtCs4ciboHeBKjP_15crossbeam_epoch9collector11LocalHandleE0ECsbNLsQi0JuJ4_5tgrep.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load ptr, ptr %0, align 8, !noundef !7 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 2072
  %i.e = load i64, ptr %i.d, align 8, !noundef !7
  %i.f = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 2080 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !noundef !7 ; 2 uses
  %i.h = add i64 %i.g, -1
  store i64 %i.h, ptr %i.f, align 8
  %i.i = icmp eq i64 %i.e, 0
  %i.j = icmp eq i64 %i.g, 1
  %or.cond.i.i.i.i.i = and i1 %i.i, %i.j
  br i1 %or.cond.i.i.i.i.i, label %bb.c, label %_RINvNtNtCs5Xr050g3D4S_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyNtNtCs4ciboHeBKjP_15crossbeam_epoch9collector11LocalHandleE0ECsbNLsQi0JuJ4_5tgrep.exit, !prof !10

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvMs6_NtCs4ciboHeBKjP_15crossbeam_epoch8internalNtB5_5Local8finalize(ptr noundef nonnull align 128 %.val.i.i)
          to label %_RINvNtNtCs5Xr050g3D4S_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyNtNtCs4ciboHeBKjP_15crossbeam_epoch9collector11LocalHandleE0ECsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke fastcc void @_RNvXNvNtNtCs5Xr050g3D4S_3std3sys12thread_local20abort_on_dtor_unwindNtB2_15DtorUnwindGuardNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop() #27
          to label %.noexc1.i unwind label %bb.e

.noexc1.i:                                        ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtNtCs5Xr050g3D4S_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyNtNtCs4ciboHeBKjP_15crossbeam_epoch9collector11LocalHandleE0ECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvNtNtNtNtCs5Xr050g3D4S_3std3sys2io11is_terminal6isatty11is_terminalNtNtNtBa_2io5stdio6StdoutECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef i32 @isatty(i32 noundef 1) #26
  %i.b = icmp ne i32 %i.a, 0
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNvXs7_NtCs6MoqnCnVQOT_10serde_json2deINtB8_9SeqAccesspENtNtCs4ZeZeX9PAiK_10serde_core2de9SeqAccess17next_element_seed16has_next_elementNtNtBa_4read7StrReadECsbNLsQi0JuJ4_5tgrep(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !nonnull !7, !align !22, !noundef !7 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !464)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !465, !noalias !466, !noundef !7 ; 4 uses
  %.promoted.i = load i64, ptr %i.f, align 8, !alias.scope !464, !noalias !467 ; 2 uses
  %i.i = icmp ult i64 %.promoted.i, %i.h
  br i1 %i.i, label %.lr.ph.i, label %.loopexit22

.lr.ph.i:                                         ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !465, !noalias !466, !nonnull !7, !noundef !7 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.l = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.o, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !468)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !469)
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !noalias !470, !noundef !7 ; 2 uses
  switch i8 %i.n, label %bb.e [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 93, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.o = add i64 %i.l, 1                          ; 3 uses
  store i64 %i.o, ptr %i.f, align 8, !alias.scope !471, !noalias !467
  %exitcond.not.i = icmp eq i64 %i.o, %i.h
  br i1 %exitcond.not.i, label %.loopexit22, label %bb.b

.loopexit22:                                      ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 2, ptr %i.d, align 8
  %i.p = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.e, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %i.q, align 8
  br label %bb.m

bb.d:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.r, align 1
  br label %bb.m

bb.e:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.t = load i8, ptr %i.s, align 8, !range !9, !noundef !7
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = icmp eq i8 %i.n, 44
  br i1 %i.v, label %bb.h, label %bb.j, !prof !20

bb.g:                                             ; preds = %bb.e
  store i8 0, ptr %i.s, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.w, align 1
  br label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.x = add i64 %i.l, 1                          ; 3 uses
  store i64 %i.x, ptr %i.f, align 8, !alias.scope !472
  tail call void @llvm.experimental.noalias.scope.decl(metadata !473)
  %i.y = icmp ult i64 %i.x, %i.h
  br i1 %i.y, label %.lr.ph.i7, label %.loopexit

.lr.ph.i7:                                        ; preds = %bb.h, %bb.i
  %i.z = phi i64 [ %i.ac, %bb.i ], [ %i.x, %bb.h ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !noalias !474, !noundef !7
  switch i8 %i.ab, label %bb.l [
    i8 32, label %bb.i
    i8 10, label %bb.i
    i8 9, label %bb.i
    i8 13, label %bb.i
    i8 93, label %bb.k
  ], !prof !475

bb.i:                                             ; preds = %.lr.ph.i7, %.lr.ph.i7, %.lr.ph.i7, %.lr.ph.i7
  %i.ac = add i64 %i.z, 1                         ; 3 uses
  store i64 %i.ac, ptr %i.f, align 8, !alias.scope !476, !noalias !477
  %exitcond.not.i8 = icmp eq i64 %i.ac, %i.h
  br i1 %exitcond.not.i8, label %.loopexit, label %.lr.ph.i7

bb.j:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 7, ptr %i.a, align 8
  %i.ad = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.e, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ad, ptr %i.ae, align 8
  br label %bb.m

.loopexit:                                        ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 5, ptr %i.b, align 8
  %i.af = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.e, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.af, ptr %i.ag, align 8
  br label %bb.m

bb.k:                                             ; preds = %.lr.ph.i7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 21, ptr %i.c, align 8
  %i.ah = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.e, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ah, ptr %i.ai, align 8
  br label %bb.m

bb.l:                                             ; preds = %.lr.ph.i7
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.aj, align 1
  br label %bb.m

bb.m:                                             ; preds = %.loopexit, %bb.k, %bb.l, %bb.g, %bb.j, %.loopexit22, %bb.d
  %.sink = phi i8 [ 1, %.loopexit ], [ 1, %bb.k ], [ 0, %bb.l ], [ 0, %bb.g ], [ 1, %bb.j ], [ 1, %.loopexit22 ], [ 0, %bb.d ]
  store i8 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNvXs9_NtCs6MoqnCnVQOT_10serde_json2deINtB8_9MapAccesspENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess13next_key_seed12has_next_keyNtNtBa_4read7StrReadECsbNLsQi0JuJ4_5tgrep(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = load ptr, ptr %1, align 8, !nonnull !7, !align !22, !noundef !7 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !502)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !503, !noalias !504, !noundef !7 ; 4 uses
  %.promoted.i = load i64, ptr %i.h, align 8, !alias.scope !502, !noalias !505 ; 2 uses
  %i.k = icmp ult i64 %.promoted.i, %i.j
  br i1 %i.k, label %.lr.ph.i, label %.loopexit22

.lr.ph.i:                                         ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !503, !noalias !504, !nonnull !7, !noundef !7 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.n = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.q, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !506)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !507)
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !noalias !508, !noundef !7 ; 3 uses
  switch i8 %i.p, label %bb.e [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 125, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.q = add i64 %i.n, 1                          ; 3 uses
  store i64 %i.q, ptr %i.h, align 8, !alias.scope !509, !noalias !505
  %exitcond.not.i = icmp eq i64 %i.q, %i.j
  br i1 %exitcond.not.i, label %.loopexit22, label %bb.b

.loopexit22:                                      ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 3, ptr %i.f, align 8
  %i.r = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.g, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.r, ptr %i.s, align 8
  br label %bb.p

bb.d:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.t, align 1
  br label %bb.p

bb.e:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.v = load i8, ptr %i.u, align 8, !range !9, !noundef !7
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = icmp eq i8 %i.p, 44
  br i1 %i.x, label %bb.h, label %bb.j, !prof !20

bb.g:                                             ; preds = %bb.e
  store i8 0, ptr %i.u, align 8
  %i.y = icmp eq i8 %i.p, 34
  br i1 %i.y, label %bb.n, label %bb.o, !prof !20

bb.h:                                             ; preds = %bb.f
  %i.z = add i64 %i.n, 1                          ; 3 uses
  store i64 %i.z, ptr %i.h, align 8, !alias.scope !510
  tail call void @llvm.experimental.noalias.scope.decl(metadata !511)
  %i.aa = icmp ult i64 %i.z, %i.j
  br i1 %i.aa, label %.lr.ph.i7, label %.loopexit

.lr.ph.i7:                                        ; preds = %bb.h, %bb.i
  %i.ab = phi i64 [ %i.ae, %bb.i ], [ %i.z, %bb.h ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !noalias !512, !noundef !7
  switch i8 %i.ad, label %bb.k [
    i8 32, label %bb.i
    i8 10, label %bb.i
    i8 9, label %bb.i
    i8 13, label %bb.i
    i8 34, label %bb.l
    i8 125, label %bb.m
  ], !prof !25

bb.i:                                             ; preds = %.lr.ph.i7, %.lr.ph.i7, %.lr.ph.i7, %.lr.ph.i7
  %i.ae = add i64 %i.ab, 1                        ; 3 uses
  store i64 %i.ae, ptr %i.h, align 8, !alias.scope !513, !noalias !514
  %exitcond.not.i8 = icmp eq i64 %i.ae, %i.j
  br i1 %exitcond.not.i8, label %.loopexit, label %.lr.ph.i7

bb.j:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 8, ptr %i.a, align 8
  %i.af = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.g, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.af, ptr %i.ag, align 8
  br label %bb.p

.loopexit:                                        ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 5, ptr %i.b, align 8
  %i.ah = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.g, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ah, ptr %i.ai, align 8
  br label %bb.p

bb.k:                                             ; preds = %.lr.ph.i7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 17, ptr %i.c, align 8
  %i.aj = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.g, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aj, ptr %i.ak, align 8
  br label %bb.p

bb.l:                                             ; preds = %.lr.ph.i7
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.al, align 1
  br label %bb.p

bb.m:                                             ; preds = %.lr.ph.i7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 21, ptr %i.d, align 8
  %i.am = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.g, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.am, ptr %i.an, align 8
  br label %bb.p

bb.n:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.ao, align 1
  br label %bb.p

bb.o:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 17, ptr %i.e, align 8
  %i.ap = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.g, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ap, ptr %i.aq, align 8
  br label %bb.p

bb.p:                                             ; preds = %.loopexit, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.j, %.loopexit22, %bb.d
  %.sink = phi i8 [ 1, %.loopexit ], [ 1, %bb.k ], [ 0, %bb.l ], [ 1, %bb.m ], [ 0, %bb.n ], [ 1, %bb.o ], [ 1, %bb.j ], [ 1, %.loopexit22 ], [ 0, %bb.d ]
  store i8 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXNtNtCs6MoqnCnVQOT_10serde_json5value2deNtB5_5ValueNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeQINtNtB7_2de12DeserializerNtNtB7_4read7StrReadEECsbNLsQi0JuJ4_5tgrep(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 8 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [16 x i8], align 8                ; 7 uses
  %i.i = alloca [32 x i8], align 8                ; 7 uses
  %i.j = alloca [24 x i8], align 8                ; 11 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = alloca [32 x i8], align 8                ; 6 uses
  %i.r = alloca [32 x i8], align 8                ; 8 uses
  %i.s = alloca [24 x i8], align 8                ; 12 uses
  %i.t = alloca [16 x i8], align 8                ; 6 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [24 x i8], align 8                ; 6 uses
  %i.w = alloca [24 x i8], align 8                ; 7 uses
  %i.x = alloca [16 x i8], align 8                ; 7 uses
  %.sroa.4.i = alloca [31 x i8], align 1          ; 4 uses
  %i.y = alloca [32 x i8], align 8                ; 5 uses
  %i.z = alloca [32 x i8], align 8                ; 4 uses
  %i.aa = alloca [24 x i8], align 8               ; 6 uses
  %.sroa.1379.sroa.6 = alloca [32 x i8], align 8  ; 2 uses
  %i.ab = alloca [32 x i8], align 8               ; 4 uses
  %i.ac = alloca [24 x i8], align 8               ; 11 uses
  %i.ad = alloca [32 x i8], align 8               ; 6 uses
  %i.ae = alloca [24 x i8], align 8               ; 10 uses
  %i.af = alloca [16 x i8], align 8               ; 9 uses
  %i.ag = alloca [32 x i8], align 8               ; 6 uses
  %i.ah = alloca [24 x i8], align 8               ; 4 uses
  %i.ai = alloca [32 x i8], align 8               ; 4 uses
  %i.aj = alloca [40 x i8], align 8               ; 7 uses
  %i.ak = alloca [32 x i8], align 8               ; 22 uses
  %i.al = alloca [24 x i8], align 8               ; 4 uses
  %i.am = alloca [32 x i8], align 8               ; 7 uses
  %i.an = alloca [40 x i8], align 8               ; 11 uses
  %.sroa.8 = alloca [16 x i8], align 8            ; 6 uses
  %i.ao = alloca [24 x i8], align 8               ; 4 uses
  %i.ap = alloca [24 x i8], align 8               ; 7 uses
  %i.aq = alloca [16 x i8], align 8               ; 6 uses
  %i.ar = alloca [16 x i8], align 8               ; 6 uses
  %.sroa.24 = alloca [6 x i8], align 2            ; 6 uses
  %i.as = alloca [24 x i8], align 8               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !678)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !679)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !680)
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 19 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.av = load i64, ptr %i.au, align 8, !alias.scope !681, !noalias !682, !noundef !7 ; 8 uses
  %.promoted.i53 = load i64, ptr %i.at, align 8, !alias.scope !680, !noalias !683 ; 2 uses
  %i.aw = icmp ult i64 %.promoted.i53, %i.av
  br i1 %i.aw, label %.lr.ph.i, label %.loopexit180

.lr.ph.i:                                         ; preds = %bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !681, !noalias !682, !nonnull !7, !noundef !7 ; 11 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.az = phi i64 [ %.promoted.i53, %.lr.ph.i ], [ %i.bc, %bb.c ] ; 19 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !684), !noalias !678
  tail call void @llvm.experimental.noalias.scope.decl(metadata !685), !noalias !678
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !noalias !686, !noundef !7 ; 3 uses
  switch i8 %i.bb, label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsbNLsQi0JuJ4_5tgrep.exit [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.bc = add i64 %i.az, 1                        ; 3 uses
  store i64 %i.bc, ptr %i.at, align 8, !alias.scope !687, !noalias !683
  %exitcond.not.i54 = icmp eq i64 %i.bc, %i.av
  br i1 %exitcond.not.i54, label %.loopexit180, label %bb.b

_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.24)
  switch i8 %i.bb, label %bb.d [
    i8 110, label %bb.e
    i8 116, label %bb.l
    i8 102, label %bb.s
    i8 45, label %bb.ab
    i8 34, label %bb.ac
    i8 91, label %bb.ad
    i8 123, label %bb.ae
  ]

.loopexit180:                                     ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !688
  store i64 5, ptr %i.as, align 8, !noalias !688
  %i.bd = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.as), !noalias !678, !inline_history !529
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !688
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bd, ptr %i.be, align 8, !alias.scope !678, !noalias !679
  store i8 -1, ptr %0, align 8, !alias.scope !678, !noalias !679
  br label %_RINvXs5_NtCs6MoqnCnVQOT_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de12Deserializer15deserialize_anyNtNvXNtNtB8_5value2deNtB2q_5ValueNtB1j_11Deserialize11deserialize12ValueVisitorECsbNLsQi0JuJ4_5tgrep.exit

bb.d:                                             ; preds = %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsbNLsQi0JuJ4_5tgrep.exit
  %i.bf = add i8 %i.bb, -48
  %or.cond8.i = icmp ult i8 %i.bf, 10
  br i1 %or.cond8.i, label %bb.dt, label %bb.ds, !prof !26

bb.e:                                             ; preds = %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsbNLsQi0JuJ4_5tgrep.exit
  %i.bg = add i64 %i.az, 1                        ; 4 uses
  store i64 %i.bg, ptr %i.at, align 8, !alias.scope !689, !noalias !678
  tail call void @llvm.experimental.noalias.scope.decl(metadata !690)
  %umax.i46 = tail call i64 @llvm.umax.i64(i64 %i.bg, i64 %i.av) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !691), !noalias !678
  tail call void @llvm.experimental.noalias.scope.decl(metadata !692), !noalias !678
  %exitcond.not.i48.not = icmp ult i64 %i.bg, %i.av
  br i1 %exitcond.not.i48.not, label %bb.f, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i51

bb.f:                                             ; preds = %bb.e
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !noalias !693, !noundef !7
  %i.bj = add i64 %i.az, 2                        ; 3 uses
  store i64 %i.bj, ptr %i.at, align 8, !alias.scope !694, !noalias !695
  %.not.i49 = icmp eq i8 %i.bi, 117
  br i1 %.not.i49, label %bb.g, label %bb.k, !prof !27

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !696), !noalias !678
  tail call void @llvm.experimental.noalias.scope.decl(metadata !697), !noalias !678
  %exitcond.not.i48.1 = icmp eq i64 %i.bj, %umax.i46
  br i1 %exitcond.not.i48.1, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i51, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !noalias !698, !noundef !7
  %i.bm = add i64 %i.az, 3                        ; 3 uses
  store i64 %i.bm, ptr %i.at, align 8, !alias.scope !699, !noalias !695
  %.not.i49.1 = icmp eq i8 %i.bl, 108
  br i1 %.not.i49.1, label %bb.i, label %bb.k, !prof !27

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !700), !noalias !678
  tail call void @llvm.experimental.noalias.scope.decl(metadata !701), !noalias !678
  %exitcond.not.i48.2 = icmp eq i64 %i.bm, %umax.i46
  br i1 %exitcond.not.i48.2, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i51, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !noalias !702, !noundef !7
  %i.bp = add i64 %i.az, 4
  store i64 %i.bp, ptr %i.at, align 8, !alias.scope !703, !noalias !695
  %.not.i49.2 = icmp eq i8 %i.bo, 108
  br i1 %.not.i49.2, label %.thread, label %bb.k, !prof !27

_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i51: ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !704
  store i64 5, ptr %i.l, align 8, !noalias !704
  %i.bq = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.l), !noalias !705
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !704
  br label %bb.af

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !704
  store i64 9, ptr %i.k, align 8, !noalias !704
  %i.br = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.k), !noalias !705
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !704
  br label %bb.af

bb.l:                                             ; preds = %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsbNLsQi0JuJ4_5tgrep.exit
  %i.bs = add i64 %i.az, 1                        ; 4 uses
  store i64 %i.bs, ptr %i.at, align 8, !alias.scope !706, !noalias !678
  tail call void @llvm.experimental.noalias.scope.decl(metadata !707)
  %umax.i38 = tail call i64 @llvm.umax.i64(i64 %i.bs, i64 %i.av) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !708), !noalias !678
  tail call void @llvm.experimental.noalias.scope.decl(metadata !709), !noalias !678
  %exitcond.not.i40.not = icmp ult i64 %i.bs, %i.av
  br i1 %exitcond.not.i40.not, label %bb.m, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i43

bb.m:                                             ; preds = %bb.l
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !noalias !710, !noundef !7
  %i.bv = add i64 %i.az, 2                        ; 3 uses
  store i64 %i.bv, ptr %i.at, align 8, !alias.scope !711, !noalias !712
  %.not.i41 = icmp eq i8 %i.bu, 114
  br i1 %.not.i41, label %bb.n, label %bb.r, !prof !27

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !713), !noalias !678
  tail call void @llvm.experimental.noalias.scope.decl(metadata !714), !noalias !678
  %exitcond.not.i40.1 = icmp eq i64 %i.bv, %umax.i38
  br i1 %exitcond.not.i40.1, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i43, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !noalias !715, !noundef !7
  %i.by = add i64 %i.az, 3                        ; 3 uses
  store i64 %i.by, ptr %i.at, align 8, !alias.scope !716, !noalias !712
  %.not.i41.1 = icmp eq i8 %i.bx, 117
  br i1 %.not.i41.1, label %bb.p, label %bb.r, !prof !27

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !717), !noalias !678
  tail call void @llvm.experimental.noalias.scope.decl(metadata !718), !noalias !678
  %exitcond.not.i40.2 = icmp eq i64 %i.by, %umax.i38
  br i1 %exitcond.not.i40.2, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i43, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1, !noalias !719, !noundef !7
  %i.cb = add i64 %i.az, 4
  store i64 %i.cb, ptr %i.at, align 8, !alias.scope !720, !noalias !712
  %.not.i41.2 = icmp eq i8 %i.ca, 101
  br i1 %.not.i41.2, label %.thread, label %bb.r, !prof !27

_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i43: ; preds = %bb.p, %bb.n, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !721
  store i64 5, ptr %i.n, align 8, !noalias !721
  %i.cc = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.n), !noalias !722
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !721
  br label %bb.ai

bb.r:                                             ; preds = %bb.q, %bb.o, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !721
  store i64 9, ptr %i.m, align 8, !noalias !721
  %i.cd = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.m), !noalias !722
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !721
  br label %bb.ai

bb.s:                                             ; preds = %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsbNLsQi0JuJ4_5tgrep.exit
  %i.ce = add i64 %i.az, 1                        ; 4 uses
  store i64 %i.ce, ptr %i.at, align 8, !alias.scope !723, !noalias !678
  tail call void @llvm.experimental.noalias.scope.decl(metadata !724)
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.ce, i64 %i.av) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !725), !noalias !678
  tail call void @llvm.experimental.noalias.scope.decl(metadata !726), !noalias !678
  %exitcond.not.i.not = icmp ult i64 %i.ce, %i.av
  br i1 %exitcond.not.i.not, label %bb.t, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i

bb.t:                                             ; preds = %bb.s
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !noalias !727, !noundef !7
  %i.ch = add i64 %i.az, 2                        ; 3 uses
  store i64 %i.ch, ptr %i.at, align 8, !alias.scope !728, !noalias !729
  %.not.i36 = icmp eq i8 %i.cg, 97
  br i1 %.not.i36, label %bb.u, label %bb.aa, !prof !27

bb.u:                                             ; preds = %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !730), !noalias !678
  tail call void @llvm.experimental.noalias.scope.decl(metadata !731), !noalias !678
  %exitcond.not.i.1 = icmp eq i64 %i.ch, %umax.i
  br i1 %exitcond.not.i.1, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !noalias !732, !noundef !7
  %i.ck = add i64 %i.az, 3                        ; 3 uses
  store i64 %i.ck, ptr %i.at, align 8, !alias.scope !733, !noalias !729
  %.not.i36.1 = icmp eq i8 %i.cj, 108
  br i1 %.not.i36.1, label %bb.w, label %bb.aa, !prof !27

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !734), !noalias !678
  tail call void @llvm.experimental.noalias.scope.decl(metadata !735), !noalias !678
  %exitcond.not.i.2 = icmp eq i64 %i.ck, %umax.i
  br i1 %exitcond.not.i.2, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1, !noalias !736, !noundef !7
  %i.cn = add i64 %i.az, 4                        ; 3 uses
  store i64 %i.cn, ptr %i.at, align 8, !alias.scope !737, !noalias !729
  %.not.i36.2 = icmp eq i8 %i.cm, 115
  br i1 %.not.i36.2, label %bb.y, label %bb.aa, !prof !27

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !738), !noalias !678
  tail call void @llvm.experimental.noalias.scope.decl(metadata !739), !noalias !678
  %exitcond.not.i.3 = icmp eq i64 %i.cn, %umax.i
  br i1 %exitcond.not.i.3, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.co = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.cn
  %i.cp = load i8, ptr %i.co, align 1, !noalias !740, !noundef !7
  %i.cq = add i64 %i.az, 5
  store i64 %i.cq, ptr %i.at, align 8, !alias.scope !741, !noalias !729
  %.not.i36.3 = icmp eq i8 %i.cp, 101
  br i1 %.not.i36.3, label %.thread, label %bb.aa, !prof !27

_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i: ; preds = %bb.y, %bb.w, %bb.u, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !742
  store i64 5, ptr %i.p, align 8, !noalias !742
  %i.cr = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.p), !noalias !743
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !742
  br label %bb.aj

bb.aa:                                            ; preds = %bb.z, %bb.x, %bb.v, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !742
  store i64 9, ptr %i.o, align 8, !noalias !742
  %i.cs = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.o), !noalias !743
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !742
  br label %bb.aj

bb.ab:                                            ; preds = %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsbNLsQi0JuJ4_5tgrep.exit
  %i.ct = add i64 %i.az, 1
  store i64 %i.ct, ptr %i.at, align 8, !alias.scope !744, !noalias !678
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !688
  call fastcc void @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_integerCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.ar, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext false), !noalias !678, !inline_history !529
  %i.cu = load i64, ptr %i.ar, align 8, !range !23, !noalias !688, !noundef !7 ; 2 uses
  %i.cv = icmp eq i64 %i.cu, -1
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 2 uses
  br i1 %i.cv, label %bb.ak, label %bb.al

bb.ac:                                            ; preds = %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsbNLsQi0JuJ4_5tgrep.exit
  %i.cx = add i64 %i.az, 1
  store i64 %i.cx, ptr %i.at, align 8, !alias.scope !745, !noalias !678
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.cy, align 8, !alias.scope !679, !noalias !678
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !688
  call void @_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read9parse_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ap, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ax, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1), !noalias !678, !inline_history !529
  %i.cz = load i64, ptr %i.ap, align 8, !range !15, !noalias !688, !noundef !7 ; 2 uses
  %i.da = icmp eq i64 %i.cz, 2
  %i.db = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !noalias !688 ; 3 uses
  br i1 %i.da, label %bb.aq, label %bb.ar

bb.ad:                                            ; preds = %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsbNLsQi0JuJ4_5tgrep.exit
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.de = load i8, ptr %i.dd, align 8, !alias.scope !679, !noalias !678, !noundef !7
  %i.df = add i8 %i.de, -1                        ; 2 uses
  store i8 %i.df, ptr %i.dd, align 8, !alias.scope !679, !noalias !678
  %i.dg = icmp eq i8 %i.df, 0
  br i1 %i.dg, label %bb.ay, label %bb.az, !prof !11

bb.ae:                                            ; preds = %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsbNLsQi0JuJ4_5tgrep.exit
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.di = load i8, ptr %i.dh, align 8, !alias.scope !679, !noalias !678, !noundef !7
  %i.dj = add i8 %i.di, -1                        ; 2 uses
  store i8 %i.dj, ptr %i.dh, align 8, !alias.scope !679, !noalias !678
  %i.dk = icmp eq i8 %i.dj, 0
  br i1 %i.dk, label %bb.bw, label %bb.bx, !prof !11

bb.af:                                            ; preds = %bb.k, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i51
  %.sroa.0.1.i50.ph = phi ptr [ %i.bq, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i51 ], [ %i.br, %bb.k ]
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i50.ph, ptr %i.dl, align 8, !alias.scope !678, !noalias !679
  store i8 -1, ptr %0, align 8, !alias.scope !678, !noalias !679
  br label %bb.ah

bb.ag:                                            ; preds = %.thread167, %.thread164
  %.sroa.24254.0 = phi i64 [ %.sroa.24254.4, %.thread167 ], [ %.sroa.24254.3, %.thread164 ] ; 2 uses
  %.sroa.22.0 = phi i8 [ %.sroa.22.2, %.thread167 ], [ %.sroa.22.1, %.thread164 ]
  %.sroa.0.0 = phi i8 [ %.sroa.0.4, %.thread167 ], [ %.sroa.0.3, %.thread164 ] ; 2 uses
  %i.dm = phi <2 x i64> [ %i.jy, %.thread167 ], [ %i.gk, %.thread164 ]
  %i.dn = icmp eq i8 %.sroa.0.0, -1
  br i1 %i.dn, label %._crit_edge, label %.thread, !prof !746

._crit_edge:                                      ; preds = %bb.ag
  %i.do = inttoptr i64 %.sroa.24254.0 to ptr
  br label %bb.du

bb.ah:                                            ; preds = %bb.dv, %bb.bw, %bb.ay, %bb.aq, %bb.ak, %bb.aj, %bb.ai, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.24)
  br label %_RINvXs5_NtCs6MoqnCnVQOT_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de12Deserializer15deserialize_anyNtNvXNtNtB8_5value2deNtB2q_5ValueNtB1j_11Deserialize11deserialize12ValueVisitorECsbNLsQi0JuJ4_5tgrep.exit

bb.ai:                                            ; preds = %bb.r, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i43
  %.sroa.0.1.i42.ph = phi ptr [ %i.cc, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i43 ], [ %i.cd, %bb.r ]
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i42.ph, ptr %i.dp, align 8, !alias.scope !678, !noalias !679
  store i8 -1, ptr %0, align 8, !alias.scope !678, !noalias !679
  br label %bb.ah

bb.aj:                                            ; preds = %bb.aa, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i
  %.sroa.0.1.i.ph = phi ptr [ %i.cr, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i ], [ %i.cs, %bb.aa ]
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i.ph, ptr %i.dq, align 8, !alias.scope !678, !noalias !679
  store i8 -1, ptr %0, align 8, !alias.scope !678, !noalias !679
  br label %bb.ah

bb.ak:                                            ; preds = %bb.ab
  %i.dr = load ptr, ptr %i.cw, align 8, !noalias !688, !nonnull !7, !align !22, !noundef !7
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dr, ptr %i.ds, align 8, !alias.scope !678, !noalias !679
  store i8 -1, ptr %0, align 8, !alias.scope !678, !noalias !679
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !688
  br label %bb.ah

bb.al:                                            ; preds = %bb.ab
  %.sroa.4.0.copyload = load i64, ptr %i.cw, align 8, !noalias !688 ; 3 uses
  %i.dt = insertelement <2 x i64> <i64 poison, i64 undef>, i64 %.sroa.4.0.copyload, i64 0 ; 3 uses
  switch i64 %i.cu, label %default.unreachable338 [
    i64 0, label %bb.am
    i64 1, label %_RINvMs2_NtCs6MoqnCnVQOT_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserialize12ValueVisitorECsbNLsQi0JuJ4_5tgrep.exit33
    i64 2, label %bb.ap
  ]

default.unreachable338:                           ; preds = %bb.dw, %bb.al
  unreachable

bb.am:                                            ; preds = %bb.al
  %i.du = bitcast i64 %.sroa.4.0.copyload to double
  %i.dv = tail call double @llvm.fabs.f64(double %i.du)
  %i.dw = fcmp ueq double %i.dv, +inf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !747
  br i1 %i.dw, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx4.sroa_idx.i.i26 = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.5.sroa.4.0.copyload9.i.i27 = load i64, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx4.sroa_idx.i.i26, align 8, !alias.scope !748, !noalias !749
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx4.sroa_idx.i.i28 = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.dx = load <2 x i64>, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx4.sroa_idx.i.i28, align 8, !alias.scope !748, !noalias !749
  br label %_RINvXNvXNtNtCs6MoqnCnVQOT_10serde_json5value2deNtB8_5ValueNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit.i18

bb.ao:                                            ; preds = %bb.am
  store i8 0, ptr %i.q, align 8, !noalias !747
  tail call void @llvm.experimental.noalias.scope.decl(metadata !750), !noalias !678
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6MoqnCnVQOT_10serde_json5value5ValueECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.q), !noalias !751
  br label %_RINvXNvXNtNtCs6MoqnCnVQOT_10serde_json5value2deNtB8_5ValueNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit.i18

_RINvXNvXNtNtCs6MoqnCnVQOT_10serde_json5value2deNtB8_5ValueNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit.i18: ; preds = %bb.ao, %bb.an
  %.sroa.5.sroa.4.0.i.i20 = phi i64 [ %.sroa.5.sroa.4.0.copyload9.i.i27, %bb.an ], [ 2, %bb.ao ]
  %.sroa.0.0.i.i22 = phi i8 [ 0, %bb.an ], [ 2, %bb.ao ]
  %i.dy = phi <2 x i64> [ %i.dx, %bb.an ], [ %i.dt, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !747
  br label %_RINvMs2_NtCs6MoqnCnVQOT_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserialize12ValueVisitorECsbNLsQi0JuJ4_5tgrep.exit33

bb.ap:                                            ; preds = %bb.al
  %.lobit.i.i13 = lshr i64 %.sroa.4.0.copyload, 63
  br label %_RINvMs2_NtCs6MoqnCnVQOT_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserialize12ValueVisitorECsbNLsQi0JuJ4_5tgrep.exit33

_RINvMs2_NtCs6MoqnCnVQOT_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserialize12ValueVisitorECsbNLsQi0JuJ4_5tgrep.exit33: ; preds = %bb.al, %_RINvXNvXNtNtCs6MoqnCnVQOT_10serde_json5value2deNtB8_5ValueNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit.i18, %bb.ap
  %.sroa.24254.1 = phi i64 [ %.sroa.5.sroa.4.0.i.i20, %_RINvXNvXNtNtCs6MoqnCnVQOT_10serde_json5value2deNtB8_5ValueNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit.i18 ], [ %.lobit.i.i13, %bb.ap ], [ 0, %bb.al ]
  %.sroa.0.1 = phi i8 [ %.sroa.0.0.i.i22, %_RINvXNvXNtNtCs6MoqnCnVQOT_10serde_json5value2deNtB8_5ValueNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit.i18 ], [ 2, %bb.ap ], [ 2, %bb.al ]
  %i.dz = phi <2 x i64> [ %i.dy, %_RINvXNvXNtNtCs6MoqnCnVQOT_10serde_json5value2deNtB8_5ValueNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit.i18 ], [ %i.dt, %bb.ap ], [ %i.dt, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !688
  br label %.thread

bb.aq:                                            ; preds = %bb.ac
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dc, ptr %i.ea, align 8, !alias.scope !678, !noalias !679
  store i8 -1, ptr %0, align 8, !alias.scope !678, !noalias !679
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !688
  br label %bb.ah

bb.ar:                                            ; preds = %bb.ac
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !688 ; 8 uses
  %i.eb = trunc nuw i64 %i.cz to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dc) ]
  br i1 %i.eb, label %bb.as, label %bb.av

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !752
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %.sroa.4.0.copyload.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !752
  %i.ec = load i64, ptr %i.b, align 8, !range !8, !noalias !752, !noundef !7
  %i.ed = trunc nuw i64 %i.ec to i1
  %i.ee = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ef = load i64, ptr %i.ee, align 8, !range !28, !noalias !752, !noundef !7 ; 4 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.ed, label %bb.at, label %bb.au, !prof !11

bb.at:                                            ; preds = %bb.as
  %i.eh = load i64, ptr %i.eg, align 8, !noalias !752
  call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.ef, i64 %i.eh) #22, !noalias !752
  unreachable

bb.au:                                            ; preds = %bb.as
  %i.ei = load ptr, ptr %i.eg, align 8, !noalias !752, !nonnull !7, !noundef !7 ; 2 uses
  %i.ej = icmp ule i64 %.sroa.4.0.copyload.i, %i.ef
  call void @llvm.assume(i1 %i.ej), !noalias !678
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !752
  %.not.i245 = icmp eq i64 %.sroa.4.0.copyload.i, 0
  br i1 %.not.i245, label %_RINvXNvXNtNtCs6MoqnCnVQOT_10serde_json5value2deNtB8_5ValueNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit, label %_RINvXNvXNtNtCs6MoqnCnVQOT_10serde_json5value2deNtB8_5ValueNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit.sink.split

bb.av:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !753
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.sroa.4.0.copyload.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !753
  %i.ek = load i64, ptr %i.a, align 8, !range !8, !noalias !753, !noundef !7
  %i.el = trunc nuw i64 %i.ek to i1
  %i.em = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.en = load i64, ptr %i.em, align 8, !range !28, !noalias !753, !noundef !7 ; 4 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.el, label %bb.aw, label %bb.ax, !prof !11

bb.aw:                                            ; preds = %bb.av
  %i.ep = load i64, ptr %i.eo, align 8, !noalias !753
  call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.en, i64 %i.ep) #22, !noalias !753
  unreachable

bb.ax:                                            ; preds = %bb.av
  %i.eq = load ptr, ptr %i.eo, align 8, !noalias !753, !nonnull !7, !noundef !7 ; 2 uses
  %i.er = icmp ule i64 %.sroa.4.0.copyload.i, %i.en
  call void @llvm.assume(i1 %i.er), !noalias !678
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !753
  %.not.i.i = icmp eq i64 %.sroa.4.0.copyload.i, 0
  br i1 %.not.i.i, label %_RINvXNvXNtNtCs6MoqnCnVQOT_10serde_json5value2deNtB8_5ValueNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit, label %_RINvXNvXNtNtCs6MoqnCnVQOT_10serde_json5value2deNtB8_5ValueNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit.sink.split

_RINvXNvXNtNtCs6MoqnCnVQOT_10serde_json5value2deNtB8_5ValueNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit.sink.split: ; preds = %bb.ax, %bb.au
  %.sink = phi ptr [ %i.ei, %bb.au ], [ %i.eq, %bb.ax ] ; 2 uses
  %.sroa.24254.2.ph = phi i64 [ %i.ef, %bb.au ], [ %i.en, %bb.ax ]
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sink, ptr nonnull readonly align 1 %i.dc, i64 %.sroa.4.0.copyload.i, i1 false), !noalias !678
  br label %_RINvXNvXNtNtCs6MoqnCnVQOT_10serde_json5value2deNtB8_5ValueNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit

_RINvXNvXNtNtCs6MoqnCnVQOT_10serde_json5value2deNtB8_5ValueNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %_RINvXNvXNtNtCs6MoqnCnVQOT_10serde_json5value2deNtB8_5ValueNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit.sink.split, %bb.ax, %bb.au
  %.sroa.37.2.in = phi ptr [ %i.eq, %bb.ax ], [ %i.ei, %bb.au ], [ %.sink, %_RINvXNvXNtNtCs6MoqnCnVQOT_10serde_json5value2deNtB8_5ValueNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit.sink.split ]
  %.sroa.24254.2 = phi i64 [ %i.en, %bb.ax ], [ %i.ef, %bb.au ], [ %.sroa.24254.2.ph, %_RINvXNvXNtNtCs6MoqnCnVQOT_10serde_json5value2deNtB8_5ValueNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit.sink.split ]
  %.sroa.37.2 = ptrtoint ptr %.sroa.37.2.in to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !688
  %i.es = insertelement <2 x i64> poison, i64 %.sroa.37.2, i64 0
  %i.et = insertelement <2 x i64> %i.es, i64 %.sroa.4.0.copyload.i, i64 1
  br label %.thread

bb.ay:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !688
  store i64 24, ptr %i.ao, align 8, !noalias !688
  %i.eu = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ao), !noalias !678, !inline_history !529
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !688
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.eu, ptr %i.ev, align 8, !alias.scope !678, !noalias !679
  store i8 -1, ptr %0, align 8, !alias.scope !678, !noalias !679
  br label %bb.ah

bb.az:                                            ; preds = %bb.ad
  %i.ew = add i64 %i.az, 1
  store i64 %i.ew, ptr %i.at, align 8, !alias.scope !754, !noalias !678
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store ptr %1, ptr %i.t, align 8, !noalias !755
  %i.ex = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i8 1, ptr %i.ex, align 8, !noalias !755
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !755
  store i64 0, ptr %i.s, align 8, !noalias !755
  %i.ey = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.ey, align 8, !noalias !755
  %i.ez = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 3 uses
  store i64 0, ptr %i.ez, align 8, !noalias !755
  %i.fa = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %.sroa.499.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %.sroa.5100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.6101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.3.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %.sroa.3.i6.sroa.4.0..sroa.3.0..sroa_idx2.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.3.i6.sroa.5.0..sroa.3.0..sroa_idx2.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  br label %bb.ba

bb.ba:                                            ; preds = %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs6MoqnCnVQOT_10serde_json5value5ValueE8push_mutCsbNLsQi0JuJ4_5tgrep.exit.i, %bb.az
  call void @llvm.experimental.noalias.scope.decl(metadata !756)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !757
  invoke fastcc void @_RINvNvXs7_NtCs6MoqnCnVQOT_10serde_json2deINtB8_9SeqAccesspENtNtCs4ZeZeX9PAiK_10serde_core2de9SeqAccess17next_element_seed16has_next_elementNtNtBa_4read7StrReadECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.t)
          to label %.noexc65 unwind label %bb.bf, !inline_history !607

.noexc65:                                         ; preds = %bb.ba
  %i.fb = load i8, ptr %i.d, align 8, !range !9, !noalias !757, !noundef !7
  %i.fc = trunc nuw i8 %i.fb to i1
  br i1 %i.fc, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %.noexc65
  %i.fd = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.fe = load ptr, ptr %i.fd, align 8, !noalias !757, !nonnull !7, !align !22, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !757
  br label %bb.bg

bb.bc:                                            ; preds = %.noexc65
  %i.ff = load i8, ptr %i.fa, align 1, !range !9, !noalias !757, !noundef !7
  %i.fg = trunc nuw i8 %i.ff to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !757
  br i1 %i.fg, label %bb.bd, label %bb.bn

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !757
  %i.fh = load ptr, ptr %i.t, align 8, !alias.scope !756, !noalias !758, !nonnull !7, !align !22, !noundef !7
  invoke fastcc void @_RINvXNtNtCs6MoqnCnVQOT_10serde_json5value2deNtB5_5ValueNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeQINtNtB7_2de12DeserializerNtNtB7_4read7StrReadEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.fh) #27
          to label %.noexc66 unwind label %bb.bf, !inline_history !607

.noexc66:                                         ; preds = %bb.bd
  %i.fi = load i8, ptr %i.c, align 8, !range !12, !noalias !757, !noundef !7 ; 2 uses
  %i.fj = icmp eq i8 %i.fi, -1
  br i1 %i.fj, label %bb.be, label %bb.bj

bb.be:                                            ; preds = %.noexc66
  %i.fk = load ptr, ptr %.sroa.5100.0..sroa_idx, align 8, !noalias !757, !nonnull !7, !align !22, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !757
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bd, %bb.ba
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %.body.i7

.body.i7:                                         ; preds = %bb.bl, %bb.bf
  %eh.lpad-body.i8 = phi { ptr, i32 } [ %i.fl, %bb.bf ], [ %i.fr, %bb.bl ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %i.s) #24
          to label %common.resume unwind label %bb.bo, !noalias !759, !inline_history !608

bb.bg:                                            ; preds = %bb.bb, %bb.be
  %.sroa.10.0.ph = phi ptr [ %i.fk, %bb.be ], [ %i.fe, %bb.bb ]
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs6MoqnCnVQOT_10serde_json5value5ValueENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit.i unwind label %bb.bh, !noalias !759, !inline_history !608

bb.bh:                                            ; preds = %bb.bg
  %i.fm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs6MoqnCnVQOT_10serde_json5value5ValueENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %common.resume unwind label %bb.bi, !noalias !759, !inline_history !608

bb.bi:                                            ; preds = %bb.bh
  %i.fn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25, !noalias !759, !inline_history !608
  unreachable

common.resume:                                    ; preds = %bb.bp, %bb.dm, %.body.i, %.body.i7, %bb.bh
  %common.resume.op = phi { ptr, i32 } [ %.pn.i2, %.body.i ], [ %i.fm, %bb.bh ], [ %eh.lpad-body.i8, %.body.i7 ], [ %i.jp, %bb.dm ], [ %i.ga, %bb.bp ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit.i: ; preds = %bb.bg
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs6MoqnCnVQOT_10serde_json5value5ValueENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s), !noalias !759, !inline_history !608
  br label %_RINvXNvXNtNtCs6MoqnCnVQOT_10serde_json5value2deNtB8_5ValueNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_seqINtNtBa_2de9SeqAccessNtNtBa_4read7StrReadEECsbNLsQi0JuJ4_5tgrep.exit

bb.bj:                                            ; preds = %.noexc66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !755
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3.0..sroa_idx2.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.499.0..sroa_idx, i64 7, i1 false)
  %.sroa.5100.0.copyload = load ptr, ptr %.sroa.5100.0..sroa_idx, align 8, !noalias !757
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.i6.sroa.5.0..sroa.3.0..sroa_idx2.i.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6101.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !757
  store i8 %i.fi, ptr %i.r, align 8, !noalias !755
  store ptr %.sroa.5100.0.copyload, ptr %.sroa.3.i6.sroa.4.0..sroa.3.0..sroa_idx2.i.sroa_idx, align 8, !noalias !755
  %i.fo = load i64, ptr %i.ez, align 8, !alias.scope !760, !noalias !761, !noundef !7 ; 3 uses
  %i.fp = load i64, ptr %i.s, align 8, !range !19, !alias.scope !760, !noalias !761, !noundef !7
  %i.fq = icmp eq i64 %i.fo, %i.fp
  br i1 %i.fq, label %bb.bk, label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs6MoqnCnVQOT_10serde_json5value5ValueE8push_mutCsbNLsQi0JuJ4_5tgrep.exit.i

bb.bk:                                            ; preds = %bb.bj
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs6MoqnCnVQOT_10serde_json5value5ValueE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs6MoqnCnVQOT_10serde_json5value5ValueE8push_mutCsbNLsQi0JuJ4_5tgrep.exit.i unwind label %bb.bl, !noalias !762, !inline_history !608

bb.bl:                                            ; preds = %bb.bk
  %i.fr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6MoqnCnVQOT_10serde_json5value5ValueECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.r) #24
          to label %.body.i7 unwind label %bb.bm, !noalias !759, !inline_history !608

bb.bm:                                            ; preds = %bb.bl
  %i.fs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25, !noalias !759, !inline_history !608
  unreachable

_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs6MoqnCnVQOT_10serde_json5value5ValueE8push_mutCsbNLsQi0JuJ4_5tgrep.exit.i: ; preds = %bb.bk, %bb.bj
  %i.ft = load ptr, ptr %i.ey, align 8, !alias.scope !760, !noalias !761, !nonnull !7, !noundef !7
  %i.fu = getelementptr inbounds nuw [32 x i8], ptr %i.ft, i64 %i.fo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fu, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i64 32, i1 false), !noalias !759
  %i.fv = add i64 %i.fo, 1
  store i64 %i.fv, ptr %i.ez, align 8, !alias.scope !760, !noalias !761
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !755
  br label %bb.ba

bb.bn:                                            ; preds = %bb.bc
  %.sroa.083.0.copyload = load ptr, ptr %i.s, align 8, !noalias !755
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(16) %i.ey, i64 16, i1 false), !noalias !763
  br label %_RINvXNvXNtNtCs6MoqnCnVQOT_10serde_json5value2deNtB8_5ValueNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_seqINtNtBa_2de9SeqAccessNtNtBa_4read7StrReadEECsbNLsQi0JuJ4_5tgrep.exit

bb.bo:                                            ; preds = %.body.i7
  %i.fw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25, !noalias !759, !inline_history !608
  unreachable

_RINvXNvXNtNtCs6MoqnCnVQOT_10serde_json5value2deNtB8_5ValueNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_seqINtNtBa_2de9SeqAccessNtNtBa_4read7StrReadEECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit.i, %bb.bn
  %.sroa.7.0 = phi ptr [ %.sroa.10.0.ph, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit.i ], [ %.sroa.083.0.copyload, %bb.bn ]
  %.sroa.073.0 = phi i8 [ -1, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit.i ], [ 4, %bb.bn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !755
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.fx = load i8, ptr %i.dd, align 8, !alias.scope !679, !noalias !678, !noundef !7
  %i.fy = add i8 %i.fx, 1
  store i8 %i.fy, ptr %i.dd, align 8, !alias.scope !679, !noalias !678
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !688
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !688
  store i8 %.sroa.073.0, ptr %i.am, align 8, !noalias !688
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !688
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8, i64 16, i1 false), !noalias !688
  %i.fz = invoke fastcc noundef align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1)
          to label %bb.bq unwind label %bb.bp, !noalias !678, !inline_history !529 ; 4 uses

bb.bp:                                            ; preds = %_RINvXNvXNtNtCs6MoqnCnVQOT_10serde_json5value2deNtB8_5ValueNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_seqINtNtBa_2de9SeqAccessNtNtBa_4read7StrReadEECsbNLsQi0JuJ4_5tgrep.exit
  %i.ga = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNtNtB11_5error5ErrorEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(32) %i.am) #24
          to label %common.resume unwind label %bb.bu, !noalias !678, !inline_history !529

bb.bq:                                            ; preds = %_RINvXNvXNtNtCs6MoqnCnVQOT_10serde_json5value2deNtB8_5ValueNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_seqINtNtBa_2de9SeqAccessNtNtBa_4read7StrReadEECsbNLsQi0JuJ4_5tgrep.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.an, ptr noundef nonnull align 8 dereferenceable(32) %i.am, i64 32, i1 false), !noalias !688
  %i.gb = getelementptr inbounds nuw i8, ptr %i.an, i64 32 ; 2 uses
  store ptr %i.fz, ptr %i.gb, align 8, !noalias !688
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !688
  %i.gc = load i8, ptr %i.an, align 8, !range !12, !noalias !688, !noundef !7 ; 2 uses
  %i.gd = icmp eq i8 %i.gc, -1
  br i1 %i.gd, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %.not31.i = icmp eq ptr %i.fz, null
  br i1 %.not31.i, label %.thread227, label %bb.bt

.thread227:                                       ; preds = %bb.br
  %.sroa.22.0..sroa_idx248 = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  %.sroa.22.0.copyload249 = load i8, ptr %.sroa.22.0..sroa_idx248, align 1, !noalias !688
  %.sroa.24.0..sroa_idx252 = getelementptr inbounds nuw i8, ptr %i.an, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.24, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.24.0..sroa_idx252, i64 6, i1 false), !noalias !688
  %.sroa.24254.0..sroa_idx255 = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.sroa.24254.0.copyload256 = load i64, ptr %.sroa.24254.0..sroa_idx255, align 8, !noalias !688
  %.sroa.37.0..sroa_idx259 = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ge = load <2 x i64>, ptr %.sroa.37.0..sroa_idx259, align 8, !noalias !688
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  br label %.thread164

bb.bs:                                            ; preds = %bb.bq
  %i.gf = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.gg = load ptr, ptr %i.gf, align 8, !noalias !688, !nonnull !7, !align !22, !noundef !7
  %i.gh = ptrtoint ptr %i.gg to i64               ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  %.not170 = icmp eq ptr %i.fz, null
  br i1 %.not170, label %.thread164, label %bb.bv

bb.bt:                                            ; preds = %bb.br
  %i.gi = ptrtoint ptr %i.fz to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6MoqnCnVQOT_10serde_json5value5ValueECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(32) %i.an), !noalias !678, !inline_history !529
  br label %.thread164

bb.bu:                                            ; preds = %bb.dm, %bb.bp
  %i.gj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25, !noalias !678, !inline_history !529
  unreachable

.thread164:                                       ; preds = %.thread227, %bb.bt, %bb.bv, %bb.bs
  %.sroa.24254.3 = phi i64 [ %i.gh, %bb.bs ], [ %i.gh, %bb.bv ], [ %.sroa.24254.0.copyload256, %.thread227 ], [ %i.gi, %bb.bt ]
  %.sroa.22.1 = phi i8 [ undef, %bb.bs ], [ undef, %bb.bv ], [ %.sroa.22.0.copyload249, %.thread227 ], [ undef, %bb.bt ]
  %.sroa.0.3 = phi i8 [ -1, %bb.bs ], [ -1, %bb.bv ], [ %i.gc, %.thread227 ], [ -1, %bb.bt ]
  %i.gk = phi <2 x i64> [ undef, %bb.bs ], [ undef, %bb.bv ], [ %i.ge, %.thread227 ], [ undef, %bb.bt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !688
  br label %bb.ag

bb.bv:                                            ; preds = %bb.bs
  call void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.gb), !noalias !678, !inline_history !529
  br label %.thread164

bb.bw:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !688
  store i64 24, ptr %i.al, align 8, !noalias !688
  %i.gl = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.al), !noalias !678, !inline_history !529
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !688
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.gl, ptr %i.gm, align 8, !alias.scope !678, !noalias !679
  store i8 -1, ptr %0, align 8, !alias.scope !678, !noalias !679
  br label %bb.ah

bb.bx:                                            ; preds = %bb.ae
  %i.gn = add i64 %i.az, 1
  store i64 %i.gn, ptr %i.at, align 8, !alias.scope !764, !noalias !678
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !688
  tail call void @llvm.experimental.noalias.scope.decl(metadata !765)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  store ptr %1, ptr %i.af, align 8, !noalias !766
  %i.go = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i8 1, ptr %i.go, align 8, !noalias !766
  tail call void @llvm.experimental.noalias.scope.decl(metadata !767), !noalias !678
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !768
  call fastcc void @_RINvNvXs9_NtCs6MoqnCnVQOT_10serde_json2deINtB8_9MapAccesspENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess13next_key_seed12has_next_keyNtNtBa_4read7StrReadECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.x, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.af), !noalias !769, !inline_history !620
  %i.gp = load i8, ptr %i.x, align 8, !range !9, !noalias !768, !noundef !7
  %i.gq = trunc nuw i8 %i.gp to i1
  br i1 %i.gq, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.gr = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.gs = load ptr, ptr %i.gr, align 8, !noalias !768, !nonnull !7, !align !22, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !768
  br label %bb.cj

bb.bz:                                            ; preds = %bb.bx
  %i.gt = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %i.gu = load i8, ptr %i.gt, align 1, !range !9, !noalias !768, !noundef !7
  %i.gv = trunc nuw i8 %i.gu to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !768
  br i1 %i.gv, label %bb.ca, label %bb.cl

bb.ca:                                            ; preds = %bb.bz
  %i.gw = load ptr, ptr %i.af, align 8, !alias.scope !767, !noalias !770, !nonnull !7, !align !22, !noundef !7 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !771), !noalias !678
  tail call void @llvm.experimental.noalias.scope.decl(metadata !772), !noalias !678
  tail call void @llvm.experimental.noalias.scope.decl(metadata !773), !noalias !678
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 24
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gw, i64 40 ; 2 uses
  %i.gz = load i64, ptr %i.gy, align 8, !alias.scope !774, !noalias !775, !noundef !7
  %i.ha = add i64 %i.gz, 1
  store i64 %i.ha, ptr %i.gy, align 8, !alias.scope !774, !noalias !775
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  store i64 0, ptr %i.hb, align 8, !alias.scope !776, !noalias !775
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !777
  call void @_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read9parse_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.w, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gx, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.gw), !noalias !775, !inline_history !620
  %i.hc = load i64, ptr %i.w, align 8, !range !15, !noalias !777, !noundef !7 ; 2 uses
  %i.hd = icmp eq i64 %i.hc, 2
  %i.he = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.hf = load ptr, ptr %i.he, align 8, !noalias !777 ; 4 uses
  br i1 %i.hd, label %bb.ci, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.sroa.4.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !777 ; 8 uses
  %i.hg = trunc nuw i64 %i.hc to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.hf) ], !noalias !678
  br i1 %i.hg, label %bb.cc, label %bb.cf

bb.cc:                                            ; preds = %bb.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !778
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.v, i64 noundef %.sroa.4.0.copyload.i.i.i.i.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !779, !inline_history !620
  %i.hh = load i64, ptr %i.v, align 8, !range !8, !noalias !778, !noundef !7
  %i.hi = trunc nuw i64 %i.hh to i1
  %i.hj = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.hk = load i64, ptr %i.hj, align 8, !range !28, !noalias !778, !noundef !7 ; 4 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  br i1 %i.hi, label %bb.cd, label %bb.ce, !prof !11

bb.cd:                                            ; preds = %bb.cc
  %i.hm = load i64, ptr %i.hl, align 8, !noalias !778
  call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.hk, i64 %i.hm) #22, !noalias !779, !inline_history !620
  unreachable

bb.ce:                                            ; preds = %bb.cc
  %i.hn = load ptr, ptr %i.hl, align 8, !noalias !778, !nonnull !7, !noundef !7 ; 2 uses
  %i.ho = icmp ule i64 %.sroa.4.0.copyload.i.i.i.i.i, %i.hk
  call void @llvm.assume(i1 %i.ho), !noalias !678
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !778
  %.not.i.i.i.i.i.i = icmp eq i64 %.sroa.4.0.copyload.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.ck, label %_RINvXsl_NtNtCs6MoqnCnVQOT_10serde_json5value2deNtB6_13KeyClassifierNtNtCs4ZeZeX9PAiK_10serde_core2de7Visitor9visit_strNtNtBa_5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit.sink.split.i.i.i.i.i

bb.cf:                                            ; preds = %bb.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !780
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.u, i64 noundef %.sroa.4.0.copyload.i.i.i.i.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !781, !inline_history !620
  %i.hp = load i64, ptr %i.u, align 8, !range !8, !noalias !780, !noundef !7
  %i.hq = trunc nuw i64 %i.hp to i1
  %i.hr = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.hs = load i64, ptr %i.hr, align 8, !range !28, !noalias !780, !noundef !7 ; 4 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  br i1 %i.hq, label %bb.cg, label %bb.ch, !prof !11

bb.cg:                                            ; preds = %bb.cf
  %i.hu = load i64, ptr %i.ht, align 8, !noalias !780
  call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.hs, i64 %i.hu) #22, !noalias !781, !inline_history !620
  unreachable

bb.ch:                                            ; preds = %bb.cf
  %i.hv = load ptr, ptr %i.ht, align 8, !noalias !780, !nonnull !7, !noundef !7 ; 2 uses
  %i.hw = icmp ule i64 %.sroa.4.0.copyload.i.i.i.i.i, %i.hs
  call void @llvm.assume(i1 %i.hw), !noalias !678
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !780
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.sroa.4.0.copyload.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ck, label %_RINvXsl_NtNtCs6MoqnCnVQOT_10serde_json5value2deNtB6_13KeyClassifierNtNtCs4ZeZeX9PAiK_10serde_core2de7Visitor9visit_strNtNtBa_5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit.sink.split.i.i.i.i.i

_RINvXsl_NtNtCs6MoqnCnVQOT_10serde_json5value2deNtB6_13KeyClassifierNtNtCs4ZeZeX9PAiK_10serde_core2de7Visitor9visit_strNtNtBa_5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit.sink.split.i.i.i.i.i: ; preds = %bb.ch, %bb.ce
  %.sink6.i.i.i.i.i = phi ptr [ %i.hn, %bb.ce ], [ %i.hv, %bb.ch ] ; 2 uses
  %.sink5.ph.i.i.i.i.i = phi i64 [ %i.hk, %bb.ce ], [ %i.hs, %bb.ch ]
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sink6.i.i.i.i.i, ptr nonnull readonly align 1 %i.hf, i64 %.sroa.4.0.copyload.i.i.i.i.i, i1 false), !noalias !775
  br label %bb.ck

bb.ci:                                            ; preds = %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !777
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.hf) ], !noalias !678
  br label %bb.cj

bb.cj:                                            ; preds = %bb.by, %bb.ci
  %.sroa.876.0.ph = phi ptr [ %i.hf, %bb.ci ], [ %i.gs, %bb.by ]
  %i.hx = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %.sroa.876.0.ph, ptr %i.hx, align 8, !alias.scope !765, !noalias !782
  store i8 -1, ptr %i.ak, align 8, !alias.scope !765, !noalias !782
  br label %_RINvXNvXNtNtCs6MoqnCnVQOT_10serde_json5value2deNtB8_5ValueNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_mapINtNtBa_2de9MapAccessNtNtBa_4read7StrReadEECsbNLsQi0JuJ4_5tgrep.exit

bb.ck:                                            ; preds = %_RINvXsl_NtNtCs6MoqnCnVQOT_10serde_json5value2deNtB6_13KeyClassifierNtNtCs4ZeZeX9PAiK_10serde_core2de7Visitor9visit_strNtNtBa_5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit.sink.split.i.i.i.i.i, %bb.ch, %bb.ce
  %.sroa.7.0.ph.i.i = phi ptr [ %.sink6.i.i.i.i.i, %_RINvXsl_NtNtCs6MoqnCnVQOT_10serde_json5value2deNtB6_13KeyClassifierNtNtCs4ZeZeX9PAiK_10serde_core2de7Visitor9visit_strNtNtBa_5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit.sink.split.i.i.i.i.i ], [ %i.hn, %bb.ce ], [ %i.hv, %bb.ch ]
  %.sroa.0.0.ph.i.i = phi i64 [ %.sink5.ph.i.i.i.i.i, %_RINvXsl_NtNtCs6MoqnCnVQOT_10serde_json5value2deNtB6_13KeyClassifierNtNtCs4ZeZeX9PAiK_10serde_core2de7Visitor9visit_strNtNtBa_5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit.sink.split.i.i.i.i.i ], [ %i.hk, %bb.ce ], [ %i.hs, %bb.ch ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !777
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !766
  store ptr null, ptr %i.ae, align 8, !noalias !766
  %.sroa.519.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store i64 0, ptr %.sroa.519.0..sroa_idx.i, align 8, !noalias !766
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !766
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !766
  store i64 %.sroa.0.0.ph.i.i, ptr %i.ac, align 8, !noalias !766
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %.sroa.7.0.ph.i.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !766
  %.sroa.5.i.sroa.5.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i64 %.sroa.4.0.copyload.i.i.i.i.i, ptr %.sroa.5.i.sroa.5.0..sroa.5.0..sroa_idx.i.sroa_idx, align 8, !noalias !766
  invoke fastcc void @_RINvXs9_NtCs6MoqnCnVQOT_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtB8_5value5ValueEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.ak, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.af)
          to label %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess10next_valueNtNtB8_5value5ValueECsbNLsQi0JuJ4_5tgrep.exit.i unwind label %bb.cm, !noalias !678, !inline_history !641

_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess10next_valueNtNtB8_5value5ValueECsbNLsQi0JuJ4_5tgrep.exit.i: ; preds = %bb.ck
  %i.hy = load i8, ptr %i.ak, align 8, !range !12, !alias.scope !765, !noalias !782, !noundef !7
  %i.hz = icmp eq i8 %i.hy, -1
  br i1 %i.hz, label %bb.cn, label %bb.cq

bb.cl:                                            ; preds = %bb.bz
  store i8 5, ptr %i.ak, align 8, !alias.scope !765, !noalias !782
  %.sroa.410.sroa.3.0..sroa.410.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr null, ptr %.sroa.410.sroa.3.0..sroa.410.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !765, !noalias !782
  %.sroa.410.sroa.5.0..sroa.410.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  store i64 0, ptr %.sroa.410.sroa.5.0..sroa.410.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !765, !noalias !782
  br label %_RINvXNvXNtNtCs6MoqnCnVQOT_10serde_json5value2deNtB8_5ValueNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_mapINtNtBa_2de9MapAccessNtNtBa_4read7StrReadEECsbNLsQi0JuJ4_5tgrep.exit

bb.cm:                                            ; preds = %bb.ck
  %i.ia = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ac) #24
          to label %.body.i unwind label %bb.dl, !noalias !783, !inline_history !620

bb.cn:                                            ; preds = %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess10next_valueNtNtB8_5value5ValueECsbNLsQi0JuJ4_5tgrep.exit.i
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i.i unwind label %bb.co, !noalias !783, !inline_history !620

bb.co:                                            ; preds = %bb.cn
  %i.ib = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %.body.i unwind label %bb.cp, !noalias !783, !inline_history !620

bb.cp:                                            ; preds = %bb.co
  %i.ic = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25, !noalias !783, !inline_history !620
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i.i: ; preds = %bb.cn
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit.i unwind label %.loopexit.split-lp, !noalias !783, !inline_history !620

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !766
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !766
  br label %bb.dk

bb.cq:                                            ; preds = %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess10next_valueNtNtB8_5value5ValueECsbNLsQi0JuJ4_5tgrep.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %i.ak, i64 32, i1 false), !noalias !782
  invoke void @_RNvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtCs6MoqnCnVQOT_10serde_json5value5ValueE6insertCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ad, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.ac, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.ab)
          to label %bb.cr unwind label %.loopexit.split-lp, !noalias !783, !inline_history !620

.body.i:                                          ; preds = %.loopexit, %.loopexit.split-lp, %bb.dd, %bb.de, %bb.co, %bb.cm
  %.pn.i2 = phi { ptr, i32 } [ %i.ia, %bb.cm ], [ %i.ib, %bb.co ], [ %lpad.phi176, %bb.dd ], [ %i.jf, %bb.de ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtCs6MoqnCnVQOT_10serde_json5value5ValueENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %common.resume unwind label %bb.dl, !noalias !783, !inline_history !620

.loopexit:                                        ; preds = %bb.dh, %bb.dj, %bb.ct, %bb.cw
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp:                               ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i.i, %bb.cq, %bb.cs, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit.i62
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.cr:                                            ; preds = %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !766
  %i.id = load i8, ptr %i.ad, align 8, !range !12, !alias.scope !784, !noalias !766, !noundef !7
  %i.ie = icmp eq i8 %i.id, -1
  br i1 %i.ie, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit.i, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6MoqnCnVQOT_10serde_json5value5ValueECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ad)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit.i unwind label %.loopexit.split-lp, !noalias !783, !inline_history !620

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit.i: ; preds = %bb.cs, %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !766
  %i.if = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %.sroa.1086.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.3.0..sroa_idx2.i58 = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %.sroa.3.i55.sroa.4.0..sroa.3.0..sroa_idx2.i58.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %.sroa.36.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sroa.36.i.sroa.4.0..sroa.36.0..sroa_idx7.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  br label %bb.ct

bb.ct:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit25.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !785)
  call void @llvm.experimental.noalias.scope.decl(metadata !786), !noalias !783
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !787
  invoke fastcc void @_RINvNvXs9_NtCs6MoqnCnVQOT_10serde_json2deINtB8_9MapAccesspENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess13next_key_seed12has_next_keyNtNtBa_4read7StrReadECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.af)
          to label %.noexc unwind label %.loopexit, !inline_history !650

.noexc:                                           ; preds = %bb.ct
  %i.ig = load i8, ptr %i.h, align 8, !range !9, !noalias !787, !noundef !7
  %i.ih = trunc nuw i8 %i.ig to i1
  br i1 %i.ih, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %.noexc
  %i.ii = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ij = load ptr, ptr %i.ii, align 8, !noalias !787, !nonnull !7, !align !22, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !787
  br label %.loopexit178

bb.cv:                                            ; preds = %.noexc
  %i.ik = load i8, ptr %i.if, align 1, !range !9, !noalias !787, !noundef !7
  %i.il = trunc nuw i8 %i.ik to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !787
  br i1 %i.il, label %bb.cw, label %.loopexit179

bb.cw:                                            ; preds = %bb.cv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !787
  %i.im = load ptr, ptr %i.af, align 8, !alias.scope !788, !noalias !789, !nonnull !7, !align !22, !noundef !7 ; 7 uses
  invoke void @_RINvXs6_NtNtCs4ZeZeX9PAiK_10serde_core2de5implsNtNtCsgCecv3eZDcN_5alloc6string6StringNtB8_11Deserialize11deserializeINtNtCs6MoqnCnVQOT_10serde_json2de6MapKeyNtNtB1V_4read7StrReadEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.im)
          to label %.noexc63 unwind label %.loopexit, !inline_history !650

.noexc63:                                         ; preds = %bb.cw
  %i.in = load i64, ptr %i.g, align 8, !range !14, !noalias !787, !noundef !7 ; 2 uses
  %i.io = icmp eq i64 %i.in, -1
  %i.ip = load ptr, ptr %.sroa.1086.0..sroa_idx, align 8, !noalias !790 ; 2 uses
  br i1 %i.io, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %.noexc63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !787
  br label %.loopexit178

bb.cy:                                            ; preds = %.noexc63
  %.sroa.14.0.copyload = load i64, ptr %.sroa.14.0..sroa_idx, align 8, !noalias !790
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !787
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !791
  store i64 %i.in, ptr %i.j, align 8, !noalias !791
  store ptr %i.ip, ptr %.sroa.3.0..sroa_idx2.i58, align 8, !noalias !791
  store i64 %.sroa.14.0.copyload, ptr %.sroa.3.i55.sroa.4.0..sroa.3.0..sroa_idx2.i58.sroa_idx, align 8, !noalias !791
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !791
  call void @llvm.experimental.noalias.scope.decl(metadata !792), !noalias !783
  call void @llvm.experimental.noalias.scope.decl(metadata !793), !noalias !783
  %i.iq = getelementptr inbounds nuw i8, ptr %i.im, i64 40 ; 3 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.im, i64 32
  %i.is = load i64, ptr %i.ir, align 8, !alias.scope !794, !noalias !795, !noundef !7 ; 2 uses
  %.promoted.i.i.i = load i64, ptr %i.iq, align 8, !alias.scope !796, !noalias !797 ; 2 uses
  %i.it = icmp ult i64 %.promoted.i.i.i, %i.is
  br i1 %i.it, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.cy
  %i.iu = getelementptr inbounds nuw i8, ptr %i.im, i64 24
  %i.iv = load ptr, ptr %i.iu, align 8, !alias.scope !794, !noalias !795, !nonnull !7, !noundef !7
  br label %bb.cz

bb.cz:                                            ; preds = %bb.da, %.lr.ph.i.i.i
  %i.iw = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.iz, %bb.da ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !798), !noalias !783
  call void @llvm.experimental.noalias.scope.decl(metadata !799), !noalias !783
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iv, i64 %i.iw
  %i.iy = load i8, ptr %i.ix, align 1, !noalias !800, !noundef !7
  switch i8 %i.iy, label %bb.db [
    i8 32, label %bb.da
    i8 10, label %bb.da
    i8 9, label %bb.da
    i8 13, label %bb.da
    i8 58, label %bb.dc
  ], !prof !29

bb.da:                                            ; preds = %bb.cz, %bb.cz, %bb.cz, %bb.cz
  %i.iz = add i64 %i.iw, 1                        ; 3 uses
  store i64 %i.iz, ptr %i.iq, align 8, !alias.scope !801, !noalias !797
  %exitcond.not.i.i.i = icmp eq i64 %i.iz, %i.is
  br i1 %exitcond.not.i.i.i, label %.loopexit.i.i, label %bb.cz

.loopexit.i.i:                                    ; preds = %bb.cy, %bb.da
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !802
  store i64 3, ptr %i.e, align 8, !noalias !802
  %i.ja = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.im, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.e)
          to label %.noexc9.i unwind label %.loopexit.split-lp173, !noalias !791, !inline_history !650

.noexc9.i:                                        ; preds = %.loopexit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !802
  br label %.loopexit177

bb.db:                                            ; preds = %bb.cz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !802
  store i64 6, ptr %i.f, align 8, !noalias !802
  %i.jb = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.im, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.f)
          to label %.noexc10.i unwind label %.loopexit.split-lp173, !noalias !791, !inline_history !650

.noexc10.i:                                       ; preds = %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !802
  br label %.loopexit177

bb.dc:                                            ; preds = %bb.cz
  %i.jc = add i64 %i.iw, 1
  store i64 %i.jc, ptr %i.iq, align 8, !alias.scope !803, !noalias !791
  invoke fastcc void @_RINvXNtNtCs6MoqnCnVQOT_10serde_json5value2deNtB5_5ValueNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeQINtNtB7_2de12DeserializerNtNtB7_4read7StrReadEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.im) #27
          to label %_RINvXs9_NtCs6MoqnCnVQOT_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtB8_5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit.i unwind label %.loopexit172, !noalias !791, !inline_history !666

_RINvXs9_NtCs6MoqnCnVQOT_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtB8_5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit.i: ; preds = %bb.dc
  %.pr144 = load i8, ptr %i.i, align 8, !noalias !791
  %i.jd = icmp eq i8 %.pr144, -1
  br i1 %i.jd, label %.loopexit177.loopexit, label %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess10next_entryNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtB8_5value5ValueECsbNLsQi0JuJ4_5tgrep.exit.i

.loopexit172:                                     ; preds = %bb.dc
  %lpad.loopexit174 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd

.loopexit.split-lp173:                            ; preds = %.loopexit.i.i, %bb.db
  %lpad.loopexit.split-lp175 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd

bb.dd:                                            ; preds = %.loopexit.split-lp173, %.loopexit172
  %lpad.phi176 = phi { ptr, i32 } [ %lpad.loopexit174, %.loopexit172 ], [ %lpad.loopexit.split-lp175, %.loopexit.split-lp173 ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #24
          to label %.body.i unwind label %bb.dg, !noalias !791, !inline_history !650

.loopexit177.loopexit:                            ; preds = %_RINvXs9_NtCs6MoqnCnVQOT_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtB8_5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !noalias !791
  br label %.loopexit177

.loopexit177:                                     ; preds = %.noexc10.i, %.noexc9.i, %.loopexit177.loopexit
  %i.je = phi ptr [ %.pre, %.loopexit177.loopexit ], [ %i.ja, %.noexc9.i ], [ %i.jb, %.noexc10.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !791
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit.i62 unwind label %bb.de, !noalias !791, !inline_history !650

bb.de:                                            ; preds = %.loopexit177
  %i.jf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body.i unwind label %bb.df, !noalias !791, !inline_history !650

bb.df:                                            ; preds = %bb.de
  %i.jg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25, !noalias !791, !inline_history !650
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit.i62: ; preds = %.loopexit177
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.noexc64 unwind label %.loopexit.split-lp, !inline_history !650

.noexc64:                                         ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !791
  br label %.loopexit178

bb.dg:                                            ; preds = %bb.dd
  %i.jh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25, !noalias !791, !inline_history !650
  unreachable

_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess10next_entryNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtB8_5value5ValueECsbNLsQi0JuJ4_5tgrep.exit.i: ; preds = %_RINvXs9_NtCs6MoqnCnVQOT_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtB8_5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.1379.sroa.6, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !791
  %.sroa.092.0.copyload = load i64, ptr %i.j, align 8, !noalias !791 ; 2 uses
  %.sroa.493.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx2.i58, align 8, !noalias !791 ; 2 uses
  %.sroa.594.0.copyload = load i64, ptr %.sroa.3.i55.sroa.4.0..sroa.3.0..sroa_idx2.i58.sroa_idx, align 8, !noalias !791
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !791
  switch i64 %.sroa.092.0.copyload, label %bb.dh [
    i64 -2, label %.loopexit178
    i64 -1, label %.loopexit179
  ]

.loopexit178:                                     ; preds = %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess10next_entryNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtB8_5value5ValueECsbNLsQi0JuJ4_5tgrep.exit.i, %bb.cu, %.noexc64, %bb.cx
  %.sroa.978.0148 = phi ptr [ %i.ij, %bb.cu ], [ %i.ip, %bb.cx ], [ %i.je, %.noexc64 ], [ %.sroa.493.0.copyload, %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess10next_entryNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtB8_5value5ValueECsbNLsQi0JuJ4_5tgrep.exit.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.978.0148) ]
  %i.ji = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %.sroa.978.0148, ptr %i.ji, align 8, !alias.scope !765, !noalias !782
  store i8 -1, ptr %i.ak, align 8, !alias.scope !765, !noalias !782
  br label %bb.dk

bb.dh:                                            ; preds = %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess10next_entryNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtB8_5value5ValueECsbNLsQi0JuJ4_5tgrep.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !766
  store i64 %.sroa.092.0.copyload, ptr %i.aa, align 8, !noalias !766
  store ptr %.sroa.493.0.copyload, ptr %.sroa.36.0..sroa_idx7.i, align 8, !noalias !766
  store i64 %.sroa.594.0.copyload, ptr %.sroa.36.i.sroa.4.0..sroa.36.0..sroa_idx7.i.sroa_idx, align 8, !noalias !766
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !766
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.1379.sroa.6, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !766
  invoke void @_RNvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtCs6MoqnCnVQOT_10serde_json5value5ValueE6insertCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.y, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.aa, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.z)
          to label %bb.di unwind label %.loopexit, !noalias !783, !inline_history !620

.loopexit179:                                     ; preds = %bb.cv, %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess10next_entryNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtB8_5value5ValueECsbNLsQi0JuJ4_5tgrep.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  %.sroa.4.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.4.8..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false)
  store i8 5, ptr %i.ak, align 8, !alias.scope !765, !noalias !782
  %.sroa.4.0..sroa_idx.i3 = getelementptr inbounds nuw i8, ptr %i.ak, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4.0..sroa_idx.i3, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4.i, i64 31, i1 false), !noalias !782
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !766
  br label %_RINvXNvXNtNtCs6MoqnCnVQOT_10serde_json5value2deNtB8_5ValueNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_mapINtNtBa_2de9MapAccessNtNtBa_4read7StrReadEECsbNLsQi0JuJ4_5tgrep.exit

bb.di:                                            ; preds = %bb.dh
  %i.jj = load i8, ptr %i.y, align 8, !range !12, !alias.scope !804, !noalias !766, !noundef !7
  %i.jk = icmp eq i8 %i.jj, -1
  br i1 %i.jk, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit25.i, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6MoqnCnVQOT_10serde_json5value5ValueECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.y)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit25.i unwind label %.loopexit, !noalias !783, !inline_history !620

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit25.i: ; preds = %bb.dj, %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !766
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !766
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !766
  br label %bb.ct

bb.dk:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit.i, %.loopexit178
  call void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtCs6MoqnCnVQOT_10serde_json5value5ValueENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae), !noalias !783, !inline_history !620
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !766
  br label %_RINvXNvXNtNtCs6MoqnCnVQOT_10serde_json5value2deNtB8_5ValueNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_mapINtNtBa_2de9MapAccessNtNtBa_4read7StrReadEECsbNLsQi0JuJ4_5tgrep.exit

bb.dl:                                            ; preds = %.body.i, %bb.cm
  %i.jl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25, !noalias !783, !inline_history !620
  unreachable

_RINvXNvXNtNtCs6MoqnCnVQOT_10serde_json5value2deNtB8_5ValueNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_mapINtNtBa_2de9MapAccessNtNtBa_4read7StrReadEECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.cj, %bb.dk, %bb.cl, %.loopexit179
  %.sroa.0.0.copyload247 = phi i8 [ -1, %bb.cj ], [ -1, %bb.dk ], [ 5, %bb.cl ], [ 5, %.loopexit179 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  %i.jm = load i8, ptr %i.dh, align 8, !alias.scope !679, !noalias !678, !noundef !7
  %i.jn = add i8 %i.jm, 1
  store i8 %i.jn, ptr %i.dh, align 8, !alias.scope !679, !noalias !678
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !688
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !688
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %i.ak, i64 32, i1 false), !noalias !688
  %i.jo = invoke fastcc noundef align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_mapCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1)
          to label %bb.dn unwind label %bb.dm, !noalias !678, !inline_history !529 ; 4 uses

bb.dm:                                            ; preds = %_RINvXNvXNtNtCs6MoqnCnVQOT_10serde_json5value2deNtB8_5ValueNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_mapINtNtBa_2de9MapAccessNtNtBa_4read7StrReadEECsbNLsQi0JuJ4_5tgrep.exit
  %i.jp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNtNtB11_5error5ErrorEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ai) #24
          to label %common.resume unwind label %bb.bu, !noalias !678, !inline_history !529

bb.dn:                                            ; preds = %_RINvXNvXNtNtCs6MoqnCnVQOT_10serde_json5value2deNtB8_5ValueNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_mapINtNtBa_2de9MapAccessNtNtBa_4read7StrReadEECsbNLsQi0JuJ4_5tgrep.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, ptr noundef nonnull align 8 dereferenceable(32) %i.ak, i64 32, i1 false)
  %i.jq = getelementptr inbounds nuw i8, ptr %i.aj, i64 32 ; 2 uses
  store ptr %i.jo, ptr %i.jq, align 8, !noalias !688
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !688
  %i.jr = load i8, ptr %i.aj, align 8, !range !12, !noalias !688, !noundef !7
  %i.js = icmp eq i8 %i.jr, -1
  br i1 %i.js, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %.not.i = icmp eq ptr %i.jo, null
  br i1 %.not.i, label %.thread229, label %bb.dq

.thread229:                                       ; preds = %bb.do
  %.sroa.22.0..sroa_idx250 = getelementptr inbounds nuw i8, ptr %i.ak, i64 1
  %.sroa.22.0.copyload251 = load i8, ptr %.sroa.22.0..sroa_idx250, align 1
  %.sroa.24.0..sroa_idx253 = getelementptr inbounds nuw i8, ptr %i.ak, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.24, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.24.0..sroa_idx253, i64 6, i1 false)
  %.sroa.24254.0..sroa_idx257 = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.sroa.24254.0.copyload258 = load i64, ptr %.sroa.24254.0..sroa_idx257, align 8
  %.sroa.37.0..sroa_idx261 = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.jt = load <2 x i64>, ptr %.sroa.37.0..sroa_idx261, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !688
  br label %.thread167

bb.dp:                                            ; preds = %bb.dn
  %i.ju = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.jv = load ptr, ptr %i.ju, align 8, !noalias !688, !nonnull !7, !align !22, !noundef !7
  %i.jw = ptrtoint ptr %i.jv to i64               ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !688
  %.not = icmp eq ptr %i.jo, null
  br i1 %.not, label %.thread167, label %bb.dr

bb.dq:                                            ; preds = %bb.do
  %i.jx = ptrtoint ptr %i.jo to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !688
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6MoqnCnVQOT_10serde_json5value5ValueECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(32) %i.aj), !noalias !678, !inline_history !529
  br label %.thread167

.thread167:                                       ; preds = %.thread229, %bb.dq, %bb.dr, %bb.dp
  %.sroa.24254.4 = phi i64 [ %i.jw, %bb.dp ], [ %i.jw, %bb.dr ], [ %.sroa.24254.0.copyload258, %.thread229 ], [ %i.jx, %bb.dq ]
  %.sroa.22.2 = phi i8 [ undef, %bb.dp ], [ undef, %bb.dr ], [ %.sroa.22.0.copyload251, %.thread229 ], [ undef, %bb.dq ]
  %.sroa.0.4 = phi i8 [ -1, %bb.dp ], [ -1, %bb.dr ], [ %.sroa.0.0.copyload247, %.thread229 ], [ -1, %bb.dq ]
  %i.jy = phi <2 x i64> [ undef, %bb.dp ], [ undef, %bb.dr ], [ %i.jt, %.thread229 ], [ undef, %bb.dq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !688
  br label %bb.ag

bb.dr:                                            ; preds = %bb.dp
  call void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.jq), !noalias !678, !inline_history !529
  br label %.thread167

bb.ds:                                            ; preds = %bb.d
end_hunk_1
begin_hunk_2_@_RINvXs1_NtNtCs6MoqnCnVQOT_10serde_json5value2deINtNtBa_3map3MapNtNtCsgCecv3eZDcN_5alloc6string6StringNtB8_5ValueENtNtCs4ZeZeX9PAiK_10serde_core2de12Deserializer15deserialize_anyNtNvXNvNtCsbNLsQi0JuJ4_5tgrep6status1__NtB2W_12StatusResultNtB1P_11Deserialize11deserialize9___VisitorEB2Y_:bb.a
  br i1 %i.jo, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs6MoqnCnVQOT_10serde_json5value2de15MapDeserializerECsbNLsQi0JuJ4_5tgrep.exit, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs6MoqnCnVQOT_10serde_json5value2de15MapDeserializerECsbNLsQi0JuJ4_5tgrep.exit.sink.split

bb.ft:                                            ; preds = %bb.fs
  %i.jp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25
  unreachable

common.resume:                                    ; preds = %.body, %bb.fx, %bb.fy, %bb.fr, %bb.fs
  %common.resume.op = phi { ptr, i32 } [ %i.jv, %bb.fx ], [ %i.jk, %bb.fr ], [ %i.jk, %bb.fs ], [ %i.jv, %bb.fy ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.fu:                                            ; preds = %bb.eu, %bb.et
  %.sroa.0339.0.i = phi i64 [ %i.iq, %bb.eu ], [ -1, %bb.et ]
  %.not354.i = icmp eq i8 %.sroa.0169.0.i, 2
  %..sroa.0169.0.i = select i1 %.not354.i, i8 0, i8 %.sroa.0169.0.i
  %.not355.i = icmp eq i8 %.sroa.0176.0.i, -1
  %.sroa.0273.0.i = select i1 %.not355.i, i8 2, i8 %.sroa.0176.0.i
  %.not356.i = icmp eq i8 %.sroa.0183.0.i, -1
  %.sroa.0277.0.i = select i1 %.not356.i, i8 2, i8 %.sroa.0183.0.i
  %.not357.i = icmp eq i8 %.sroa.0190.0.i, 2
  %.sroa.0281.0.i = select i1 %.not357.i, i8 0, i8 %.sroa.0190.0.i
  %i.jq = trunc nuw i64 %.sroa.0197.0.i to i1
  %.sroa.0282.0.i = select i1 %i.jq, i64 %.sroa.4199.0.i, i64 0
  %i.jr = trunc nuw i64 %.sroa.0207.0.i to i1
  %.sroa.0283.0.i = select i1 %i.jr, i64 %.sroa.4209.0.i, i64 0
  %.not358.i = icmp eq i8 %.sroa.0217.0.i, -1
  %.sroa.0284.0.i = select i1 %.not358.i, i8 2, i8 %.sroa.0217.0.i
  store i64 %..sroa.0118.0.i, ptr %0, align 8, !alias.scope !1216, !noalias !1217
  %.sroa.4289.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %..sroa.5121.0.i, ptr %.sroa.4289.0..sroa_idx.i, align 8, !alias.scope !1216, !noalias !1217
  %.sroa.5290.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.0260.0.i, ptr %.sroa.5290.0..sroa_idx.i, align 8, !alias.scope !1216, !noalias !1217
  %.sroa.6291.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.3261.0.i, ptr %.sroa.6291.0..sroa_idx.i, align 8, !alias.scope !1216, !noalias !1217
  %.sroa.7292.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.0264.0.i, ptr %.sroa.7292.0..sroa_idx.i, align 8, !alias.scope !1216, !noalias !1217
  %.sroa.8293.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.3265.0.i, ptr %.sroa.8293.0..sroa_idx.i, align 8, !alias.scope !1216, !noalias !1217
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.0268.0.i, ptr %.sroa.9.0..sroa_idx.i, align 8, !alias.scope !1216, !noalias !1217
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.3269.0.i, ptr %.sroa.10.0..sroa_idx.i, align 8, !alias.scope !1216, !noalias !1217
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %.sroa.0318.0.i, ptr %.sroa.11.0..sroa_idx.i, align 8, !alias.scope !1216, !noalias !1217
  %.sroa.11.sroa.4.0..sroa.11.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.sroa.4.0..sroa.11.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3320.i, i64 16, i1 false), !noalias !1217
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %.sroa.0325.0.i, ptr %.sroa.12.0..sroa_idx.i, align 8, !alias.scope !1216, !noalias !1217
  %.sroa.12.sroa.4.0..sroa.12.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12.sroa.4.0..sroa.12.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3327.i, i64 16, i1 false), !noalias !1217
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %.sroa.0332.0.i, ptr %.sroa.13.0..sroa_idx.i, align 8, !alias.scope !1216, !noalias !1217
  %.sroa.13.sroa.4.0..sroa.13.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.sroa.4.0..sroa.13.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3334.i, i64 16, i1 false), !noalias !1217
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 %.sroa.0339.0.i, ptr %.sroa.14.0..sroa_idx.i, align 8, !alias.scope !1216, !noalias !1217
  %.sroa.14.sroa.4.0..sroa.14.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14.sroa.4.0..sroa.14.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3341.i, i64 16, i1 false), !noalias !1217
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 %.sroa.0232.0.i, ptr %.sroa.15.0..sroa_idx.i, align 8, !alias.scope !1216, !noalias !1217
  %.sroa.16.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 %.sroa.0238.0.i, ptr %.sroa.16.0..sroa_idx.i, align 8, !alias.scope !1216, !noalias !1217
  %.sroa.17.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 %.sroa.0244.0.i, ptr %.sroa.17.0..sroa_idx.i, align 8, !alias.scope !1216, !noalias !1217
  %.sroa.18.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i64 %.sroa.0250.0.i, ptr %.sroa.18.0..sroa_idx.i, align 8, !alias.scope !1216, !noalias !1217
  %.sroa.19.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i64 %.sroa.0282.0.i, ptr %.sroa.19.0..sroa_idx.i, align 8, !alias.scope !1216, !noalias !1217
  %.sroa.20.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i64 %.sroa.0283.0.i, ptr %.sroa.20.0..sroa_idx.i, align 8, !alias.scope !1216, !noalias !1217
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i8 %.sroa.0255.0.i, ptr %.sroa.21.0..sroa_idx.i, align 8, !alias.scope !1216, !noalias !1217
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 209
  store i8 %..sroa.0169.0.i, ptr %.sroa.22.0..sroa_idx.i, align 1, !alias.scope !1216, !noalias !1217
  %.sroa.23.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 210
  store i8 %.sroa.0281.0.i, ptr %.sroa.23.0..sroa_idx.i, align 2, !alias.scope !1216, !noalias !1217
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 211
  store i8 %.sroa.0273.0.i, ptr %.sroa.24.0..sroa_idx.i, align 1, !alias.scope !1216, !noalias !1217
  %.sroa.25.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 212
  store i8 %.sroa.0277.0.i, ptr %.sroa.25.0..sroa_idx.i, align 4, !alias.scope !1216, !noalias !1217
  %.sroa.26.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 213
  store i8 %.sroa.0284.0.i, ptr %.sroa.26.0..sroa_idx.i, align 1, !alias.scope !1216, !noalias !1217
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !1218
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !1218
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !1218
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !1218
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3320.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3327.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3334.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3341.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.az, ptr noundef nonnull align 8 dereferenceable(216) %0, i64 216, i1 false)
  %i.js = load i64, ptr %.sroa.43.0..sroa_idx, align 8, !noundef !7
  %i.jt = icmp eq i64 %i.js, 0
  br i1 %i.jt, label %bb.fw, label %bb.fv, !prof !20

bb.fv:                                            ; preds = %bb.fu
  %i.ju = invoke noundef nonnull align 8 ptr @_RNvYNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorNtNtCs4ZeZeX9PAiK_10serde_core2de5Error14invalid_lengthCsbNLsQi0JuJ4_5tgrep(i64 noundef %i.bc, ptr noundef nonnull @66, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23)
          to label %bb.gb unwind label %bb.ga

bb.fw:                                            ; preds = %bb.fu, %bb.gb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  invoke void @_RNvXsy_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8IntoIterNtNtBb_6string6StringNtNtCs6MoqnCnVQOT_10serde_json5value5ValueENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.ba)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6MoqnCnVQOT_10serde_json3map8IntoIterECsbNLsQi0JuJ4_5tgrep.exit.i40 unwind label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.jv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jw = load i8, ptr %i.bg, align 8, !range !12, !alias.scope !1369, !noundef !7
  %i.jx = icmp eq i8 %i.jw, -1
  br i1 %i.jx, label %common.resume, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6MoqnCnVQOT_10serde_json5value5ValueECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bg)
          to label %common.resume unwind label %bb.fz

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6MoqnCnVQOT_10serde_json3map8IntoIterECsbNLsQi0JuJ4_5tgrep.exit.i40: ; preds = %bb.fw
  %i.jy = load i8, ptr %i.bg, align 8, !range !12, !alias.scope !1370, !noundef !7
  %i.jz = icmp eq i8 %i.jy, -1
  br i1 %i.jz, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs6MoqnCnVQOT_10serde_json5value2de15MapDeserializerECsbNLsQi0JuJ4_5tgrep.exit, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs6MoqnCnVQOT_10serde_json5value2de15MapDeserializerECsbNLsQi0JuJ4_5tgrep.exit.sink.split

bb.fz:                                            ; preds = %bb.fy
  %i.ka = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.ga:                                            ; preds = %bb.fv
  %i.kb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbNLsQi0JuJ4_5tgrep6status12StatusResultEBF_(ptr noalias nofree noundef align 8 dereferenceable(216) %i.az) #24
          to label %.body unwind label %bb.gc

bb.gb:                                            ; preds = %bb.fv
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ju, ptr %i.kc, align 8
  store i64 2, ptr %0, align 8
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbNLsQi0JuJ4_5tgrep6status12StatusResultEBF_(ptr noalias nofree noundef align 8 dereferenceable(216) %i.az)
          to label %bb.fw unwind label %bb.fp

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs6MoqnCnVQOT_10serde_json5value2de15MapDeserializerECsbNLsQi0JuJ4_5tgrep.exit.sink.split: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6MoqnCnVQOT_10serde_json3map8IntoIterECsbNLsQi0JuJ4_5tgrep.exit.i40, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6MoqnCnVQOT_10serde_json3map8IntoIterECsbNLsQi0JuJ4_5tgrep.exit.i
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6MoqnCnVQOT_10serde_json5value5ValueECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bg)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs6MoqnCnVQOT_10serde_json5value2de15MapDeserializerECsbNLsQi0JuJ4_5tgrep.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs6MoqnCnVQOT_10serde_json5value2de15MapDeserializerECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs6MoqnCnVQOT_10serde_json5value2de15MapDeserializerECsbNLsQi0JuJ4_5tgrep.exit.sink.split, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6MoqnCnVQOT_10serde_json3map8IntoIterECsbNLsQi0JuJ4_5tgrep.exit.i40, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6MoqnCnVQOT_10serde_json3map8IntoIterECsbNLsQi0JuJ4_5tgrep.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  ret void

bb.gc:                                            ; preds = %bb.ga, %.body
  %i.kd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs3_NtCs4ZeZeX9PAiK_10serde_core2deINtNtCsf3Ta7LF998c_4core6marker11PhantomDatamENtB6_15DeserializeSeed11deserializeQINtNtCs6MoqnCnVQOT_10serde_json2de12DeserializerNtNtB20_4read7StrReadEECsbNLsQi0JuJ4_5tgrep(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  %i.g = alloca [16 x i8], align 8                ; 6 uses
  %i.h = alloca [16 x i8], align 8                ; 20 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1407)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1408)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1409)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1410)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1411)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1412)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1413)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !1414, !noalias !1415, !noundef !7 ; 2 uses
  %.promoted.i.i.i.i = load i64, ptr %i.j, align 8, !alias.scope !1416, !noalias !1417 ; 2 uses
  %i.m = icmp ult i64 %.promoted.i.i.i.i, %i.l
  br i1 %i.m, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !1414, !noalias !1415, !nonnull !7, !noundef !7
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i.i
  %i.p = phi i64 [ %.promoted.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.s, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1418)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1419)
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !noalias !1420, !noundef !7 ; 3 uses
  switch i8 %i.r, label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsbNLsQi0JuJ4_5tgrep.exit.i.i.i [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.s = add i64 %i.p, 1                          ; 3 uses
  store i64 %i.s, ptr %i.j, align 8, !alias.scope !1421, !noalias !1417
  %exitcond.not.i.i.i.i = icmp eq i64 %i.s, %i.l
  br i1 %exitcond.not.i.i.i.i, label %.loopexit.i.i.i, label %bb.b

_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsbNLsQi0JuJ4_5tgrep.exit.i.i.i: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1422
  %i.t = icmp eq i8 %i.r, 45
  br i1 %i.t, label %bb.d, label %bb.e

.loopexit.i.i.i:                                  ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1422
  store i64 5, ptr %i.i, align 8, !noalias !1422
  %i.u = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.i), !noalias !1423
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1422
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.u, ptr %i.v, align 8, !alias.scope !1423, !noalias !1424
  store i32 1, ptr %0, align 8, !alias.scope !1423, !noalias !1424
  br label %_RINvXs14_NtNtCs4ZeZeX9PAiK_10serde_core2de5implsmNtB9_11Deserialize11deserializeQINtNtCs6MoqnCnVQOT_10serde_json2de12DeserializerNtNtB1m_4read7StrReadEECsbNLsQi0JuJ4_5tgrep.exit

bb.d:                                             ; preds = %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsbNLsQi0JuJ4_5tgrep.exit.i.i.i
  %i.w = add i64 %i.p, 1
  store i64 %i.w, ptr %i.j, align 8, !alias.scope !1425, !noalias !1423
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1422
  call fastcc void @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_integerCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext false), !noalias !1423
  %i.x = load i64, ptr %i.g, align 8, !range !23, !noalias !1422, !noundef !7 ; 2 uses
  %i.y = icmp eq i64 %i.x, -1
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  br i1 %i.y, label %bb.f, label %bb.g

bb.e:                                             ; preds = %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsbNLsQi0JuJ4_5tgrep.exit.i.i.i
  %i.aa = add i8 %i.r, -48
  %or.cond.i.i.i = icmp ult i8 %i.aa, 10
  br i1 %or.cond.i.i.i, label %bb.r, label %bb.q, !prof !26

bb.f:                                             ; preds = %bb.d
  %i.ab = load ptr, ptr %i.z, align 8, !noalias !1422, !nonnull !7, !align !22, !noundef !7
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ab, ptr %i.ac, align 8, !alias.scope !1423, !noalias !1424
  store i32 1, ptr %0, align 8, !alias.scope !1423, !noalias !1424
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1422
  br label %bb.p

bb.g:                                             ; preds = %bb.d
  %.sroa.2.0.copyload.i.i.i = load i64, ptr %i.z, align 8, !noalias !1422 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1426)
  switch i64 %i.x, label %default.unreachable [
    i64 0, label %bb.h
    i64 1, label %bb.i
    i64 2, label %bb.l
  ]

default.unreachable:                              ; preds = %bb.u, %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.ad = bitcast i64 %.sroa.2.0.copyload.i.i.i to double
  call void @_RINvYNtNvXs14_NtNtCs4ZeZeX9PAiK_10serde_core2de5implsmNtBe_11Deserialize11deserialize16PrimitiveVisitorNtBe_7Visitor9visit_f64NtNtCs6MoqnCnVQOT_10serde_json5error5ErrorECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.h, double noundef %i.ad), !noalias !1427
  br label %_RINvMs2_NtCs6MoqnCnVQOT_10serde_json2deNtB6_12ParserNumber5visitNtNvXs14_NtNtCs4ZeZeX9PAiK_10serde_core2de5implsmNtB1b_11Deserialize11deserialize16PrimitiveVisitorECsbNLsQi0JuJ4_5tgrep.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1428)
  %i.ae = icmp ugt i64 %.sroa.2.0.copyload.i.i.i, 4294967295
  br i1 %i.ae, label %bb.k, label %bb.j, !prof !11

bb.j:                                             ; preds = %bb.i
  %i.af = trunc nuw i64 %.sroa.2.0.copyload.i.i.i to i32
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i32 %i.af, ptr %i.ag, align 4, !alias.scope !1429, !noalias !1430
  br label %_RINvXNvXs14_NtNtCs4ZeZeX9PAiK_10serde_core2de5implsmNtBc_11Deserialize11deserializeNtB3_16PrimitiveVisitorNtBc_7Visitor9visit_u64NtNtCs6MoqnCnVQOT_10serde_json5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit.i.i.i.i

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1431
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %.sroa.2.0.copyload.i.i.i, ptr %i.ah, align 8, !noalias !1431
  store i8 1, ptr %i.e, align 8, !noalias !1431
  %i.ai = call noundef nonnull align 8 ptr @_RNvXs6_NtCs6MoqnCnVQOT_10serde_json5errorNtB5_5ErrorNtNtCs4ZeZeX9PAiK_10serde_core2de5Error13invalid_value(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2), !noalias !1432
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1431
  %i.aj = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.ai, ptr %i.aj, align 8, !alias.scope !1429, !noalias !1430
  br label %_RINvXNvXs14_NtNtCs4ZeZeX9PAiK_10serde_core2de5implsmNtBc_11Deserialize11deserializeNtB3_16PrimitiveVisitorNtBc_7Visitor9visit_u64NtNtCs6MoqnCnVQOT_10serde_json5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit.i.i.i.i

_RINvXNvXs14_NtNtCs4ZeZeX9PAiK_10serde_core2de5implsmNtBc_11Deserialize11deserializeNtB3_16PrimitiveVisitorNtBc_7Visitor9visit_u64NtNtCs6MoqnCnVQOT_10serde_json5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit.i.i.i.i: ; preds = %bb.k, %bb.j
  %storemerge.i.i.i.i.i = phi i32 [ 0, %bb.j ], [ 1, %bb.k ]
  store i32 %storemerge.i.i.i.i.i, ptr %i.h, align 8, !alias.scope !1429, !noalias !1430
  br label %_RINvMs2_NtCs6MoqnCnVQOT_10serde_json2deNtB6_12ParserNumber5visitNtNvXs14_NtNtCs4ZeZeX9PAiK_10serde_core2de5implsmNtB1b_11Deserialize11deserialize16PrimitiveVisitorECsbNLsQi0JuJ4_5tgrep.exit.i.i.i

bb.l:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1433)
  %i.ak = icmp ugt i64 %.sroa.2.0.copyload.i.i.i, 4294967295
  br i1 %i.ak, label %bb.m, label %bb.n, !prof !31

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1434
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.sroa.2.0.copyload.i.i.i, ptr %i.al, align 8, !noalias !1434
  store i8 2, ptr %i.d, align 8, !noalias !1434
  %i.am = call noundef nonnull align 8 ptr @_RNvXs6_NtCs6MoqnCnVQOT_10serde_json5errorNtB5_5ErrorNtNtCs4ZeZeX9PAiK_10serde_core2de5Error13invalid_value(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.d, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2), !noalias !1435
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1434
  %i.an = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.am, ptr %i.an, align 8, !alias.scope !1436, !noalias !1430
  br label %_RINvXNvXs14_NtNtCs4ZeZeX9PAiK_10serde_core2de5implsmNtBc_11Deserialize11deserializeNtB3_16PrimitiveVisitorNtBc_7Visitor9visit_i64NtNtCs6MoqnCnVQOT_10serde_json5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.ao = trunc nuw i64 %.sroa.2.0.copyload.i.i.i to i32
  %i.ap = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i32 %i.ao, ptr %i.ap, align 4, !alias.scope !1436, !noalias !1430
  br label %_RINvXNvXs14_NtNtCs4ZeZeX9PAiK_10serde_core2de5implsmNtBc_11Deserialize11deserializeNtB3_16PrimitiveVisitorNtBc_7Visitor9visit_i64NtNtCs6MoqnCnVQOT_10serde_json5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit.i.i.i.i

_RINvXNvXs14_NtNtCs4ZeZeX9PAiK_10serde_core2de5implsmNtBc_11Deserialize11deserializeNtB3_16PrimitiveVisitorNtBc_7Visitor9visit_i64NtNtCs6MoqnCnVQOT_10serde_json5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit.i.i.i.i: ; preds = %bb.n, %bb.m
  %storemerge.i1.i.i.i.i = phi i32 [ 0, %bb.n ], [ 1, %bb.m ]
  store i32 %storemerge.i1.i.i.i.i, ptr %i.h, align 8, !alias.scope !1436, !noalias !1430
  br label %_RINvMs2_NtCs6MoqnCnVQOT_10serde_json2deNtB6_12ParserNumber5visitNtNvXs14_NtNtCs4ZeZeX9PAiK_10serde_core2de5implsmNtB1b_11Deserialize11deserialize16PrimitiveVisitorECsbNLsQi0JuJ4_5tgrep.exit.i.i.i

_RINvMs2_NtCs6MoqnCnVQOT_10serde_json2deNtB6_12ParserNumber5visitNtNvXs14_NtNtCs4ZeZeX9PAiK_10serde_core2de5implsmNtB1b_11Deserialize11deserialize16PrimitiveVisitorECsbNLsQi0JuJ4_5tgrep.exit.i.i.i: ; preds = %_RINvXNvXs14_NtNtCs4ZeZeX9PAiK_10serde_core2de5implsmNtBc_11Deserialize11deserializeNtB3_16PrimitiveVisitorNtBc_7Visitor9visit_i64NtNtCs6MoqnCnVQOT_10serde_json5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit.i.i.i.i, %_RINvXNvXs14_NtNtCs4ZeZeX9PAiK_10serde_core2de5implsmNtBc_11Deserialize11deserializeNtB3_16PrimitiveVisitorNtBc_7Visitor9visit_u64NtNtCs6MoqnCnVQOT_10serde_json5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit.i.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1422
  br label %bb.o

bb.o:                                             ; preds = %_RINvMs2_NtCs6MoqnCnVQOT_10serde_json2deNtB6_12ParserNumber5visitNtNvXs14_NtNtCs4ZeZeX9PAiK_10serde_core2de5implsmNtB1b_11Deserialize11deserialize16PrimitiveVisitorECsbNLsQi0JuJ4_5tgrep.exit8.i.i.i, %_RINvMs2_NtCs6MoqnCnVQOT_10serde_json2deNtB6_12ParserNumber5visitNtNvXs14_NtNtCs4ZeZeX9PAiK_10serde_core2de5implsmNtB1b_11Deserialize11deserialize16PrimitiveVisitorECsbNLsQi0JuJ4_5tgrep.exit.i.i.i
  %i.aq = load i32, ptr %i.h, align 8, !range !13, !noalias !1422, !noundef !7
  %i.ar = trunc nuw i32 %i.aq to i1
  br i1 %i.ar, label %._crit_edge.i.i.i, label %bb.ac, !prof !11

._crit_edge.i.i.i:                                ; preds = %bb.o
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.pre.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !noalias !1422
  br label %bb.s

bb.p:                                             ; preds = %bb.t, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1422
  br label %_RINvXs14_NtNtCs4ZeZeX9PAiK_10serde_core2de5implsmNtB9_11Deserialize11deserializeQINtNtCs6MoqnCnVQOT_10serde_json2de12DeserializerNtNtB1m_4read7StrReadEECsbNLsQi0JuJ4_5tgrep.exit

bb.q:                                             ; preds = %bb.e
  %i.as = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE17peek_invalid_typeCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2), !noalias !1423
  br label %bb.s

bb.r:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1422
  call fastcc void @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_integerCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext true), !noalias !1423
  %i.at = load i64, ptr %i.f, align 8, !range !23, !noalias !1422, !noundef !7 ; 2 uses
  %i.au = icmp eq i64 %i.at, -1
  %i.av = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  br i1 %i.au, label %bb.t, label %bb.u

bb.s:                                             ; preds = %bb.q, %._crit_edge.i.i.i
  %i.aw = phi ptr [ %.pre.i.i.i, %._crit_edge.i.i.i ], [ %i.as, %bb.q ]
  %i.ax = call noundef nonnull align 8 ptr @_RINvMs0_NtCs6MoqnCnVQOT_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read7StrReadE12fix_position0ECsbNLsQi0JuJ4_5tgrep(ptr noalias noundef nonnull align 8 %i.aw, ptr noundef nonnull readonly align 8 dereferenceable(56) %1), !noalias !1423
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ax, ptr %i.ay, align 8, !alias.scope !1423, !noalias !1424
  br label %bb.ad

bb.t:                                             ; preds = %bb.r
  %i.az = load ptr, ptr %i.av, align 8, !noalias !1422, !nonnull !7, !align !22, !noundef !7
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.az, ptr %i.ba, align 8, !alias.scope !1423, !noalias !1424
  store i32 1, ptr %0, align 8, !alias.scope !1423, !noalias !1424
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1422
  br label %bb.p

bb.u:                                             ; preds = %bb.r
  %.sroa.213.0.copyload.i.i.i = load i64, ptr %i.av, align 8, !noalias !1422 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1437)
  switch i64 %i.at, label %default.unreachable [
    i64 0, label %bb.v
    i64 1, label %bb.w
    i64 2, label %bb.z
  ]

bb.v:                                             ; preds = %bb.u
  %i.bb = bitcast i64 %.sroa.213.0.copyload.i.i.i to double
  call void @_RINvYNtNvXs14_NtNtCs4ZeZeX9PAiK_10serde_core2de5implsmNtBe_11Deserialize11deserialize16PrimitiveVisitorNtBe_7Visitor9visit_f64NtNtCs6MoqnCnVQOT_10serde_json5error5ErrorECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.h, double noundef %i.bb), !noalias !1438
  br label %_RINvMs2_NtCs6MoqnCnVQOT_10serde_json2deNtB6_12ParserNumber5visitNtNvXs14_NtNtCs4ZeZeX9PAiK_10serde_core2de5implsmNtB1b_11Deserialize11deserialize16PrimitiveVisitorECsbNLsQi0JuJ4_5tgrep.exit8.i.i.i

bb.w:                                             ; preds = %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1439)
  %i.bc = icmp ugt i64 %.sroa.213.0.copyload.i.i.i, 4294967295
  br i1 %i.bc, label %bb.y, label %bb.x, !prof !11

bb.x:                                             ; preds = %bb.w
  %i.bd = trunc nuw i64 %.sroa.213.0.copyload.i.i.i to i32
  %i.be = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i32 %i.bd, ptr %i.be, align 4, !alias.scope !1440, !noalias !1441
  br label %_RINvXNvXs14_NtNtCs4ZeZeX9PAiK_10serde_core2de5implsmNtBc_11Deserialize11deserializeNtB3_16PrimitiveVisitorNtBc_7Visitor9visit_u64NtNtCs6MoqnCnVQOT_10serde_json5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit.i5.i.i.i

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1442
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %.sroa.213.0.copyload.i.i.i, ptr %i.bf, align 8, !noalias !1442
  store i8 1, ptr %i.c, align 8, !noalias !1442
  %i.bg = call noundef nonnull align 8 ptr @_RNvXs6_NtCs6MoqnCnVQOT_10serde_json5errorNtB5_5ErrorNtNtCs4ZeZeX9PAiK_10serde_core2de5Error13invalid_value(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2), !noalias !1443
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1442
  %i.bh = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.bg, ptr %i.bh, align 8, !alias.scope !1440, !noalias !1441
  br label %_RINvXNvXs14_NtNtCs4ZeZeX9PAiK_10serde_core2de5implsmNtBc_11Deserialize11deserializeNtB3_16PrimitiveVisitorNtBc_7Visitor9visit_u64NtNtCs6MoqnCnVQOT_10serde_json5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit.i5.i.i.i

_RINvXNvXs14_NtNtCs4ZeZeX9PAiK_10serde_core2de5implsmNtBc_11Deserialize11deserializeNtB3_16PrimitiveVisitorNtBc_7Visitor9visit_u64NtNtCs6MoqnCnVQOT_10serde_json5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit.i5.i.i.i: ; preds = %bb.y, %bb.x
  %storemerge.i.i6.i.i.i = phi i32 [ 0, %bb.x ], [ 1, %bb.y ]
  store i32 %storemerge.i.i6.i.i.i, ptr %i.h, align 8, !alias.scope !1440, !noalias !1441
  br label %_RINvMs2_NtCs6MoqnCnVQOT_10serde_json2deNtB6_12ParserNumber5visitNtNvXs14_NtNtCs4ZeZeX9PAiK_10serde_core2de5implsmNtB1b_11Deserialize11deserialize16PrimitiveVisitorECsbNLsQi0JuJ4_5tgrep.exit8.i.i.i

bb.z:                                             ; preds = %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1444)
  %i.bi = icmp ugt i64 %.sroa.213.0.copyload.i.i.i, 4294967295
  br i1 %i.bi, label %bb.aa, label %bb.ab, !prof !31

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1445
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.213.0.copyload.i.i.i, ptr %i.bj, align 8, !noalias !1445
  store i8 2, ptr %i.b, align 8, !noalias !1445
  %i.bk = call noundef nonnull align 8 ptr @_RNvXs6_NtCs6MoqnCnVQOT_10serde_json5errorNtB5_5ErrorNtNtCs4ZeZeX9PAiK_10serde_core2de5Error13invalid_value(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2), !noalias !1446
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1445
  %i.bl = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.bk, ptr %i.bl, align 8, !alias.scope !1447, !noalias !1441
  br label %_RINvXNvXs14_NtNtCs4ZeZeX9PAiK_10serde_core2de5implsmNtBc_11Deserialize11deserializeNtB3_16PrimitiveVisitorNtBc_7Visitor9visit_i64NtNtCs6MoqnCnVQOT_10serde_json5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit.i3.i.i.i

bb.ab:                                            ; preds = %bb.z
  %i.bm = trunc nuw i64 %.sroa.213.0.copyload.i.i.i to i32
  %i.bn = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i32 %i.bm, ptr %i.bn, align 4, !alias.scope !1447, !noalias !1441
  br label %_RINvXNvXs14_NtNtCs4ZeZeX9PAiK_10serde_core2de5implsmNtBc_11Deserialize11deserializeNtB3_16PrimitiveVisitorNtBc_7Visitor9visit_i64NtNtCs6MoqnCnVQOT_10serde_json5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit.i3.i.i.i

_RINvXNvXs14_NtNtCs4ZeZeX9PAiK_10serde_core2de5implsmNtBc_11Deserialize11deserializeNtB3_16PrimitiveVisitorNtBc_7Visitor9visit_i64NtNtCs6MoqnCnVQOT_10serde_json5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit.i3.i.i.i: ; preds = %bb.ab, %bb.aa
  %storemerge.i1.i4.i.i.i = phi i32 [ 0, %bb.ab ], [ 1, %bb.aa ]
  store i32 %storemerge.i1.i4.i.i.i, ptr %i.h, align 8, !alias.scope !1447, !noalias !1441
  br label %_RINvMs2_NtCs6MoqnCnVQOT_10serde_json2deNtB6_12ParserNumber5visitNtNvXs14_NtNtCs4ZeZeX9PAiK_10serde_core2de5implsmNtB1b_11Deserialize11deserialize16PrimitiveVisitorECsbNLsQi0JuJ4_5tgrep.exit8.i.i.i

_RINvMs2_NtCs6MoqnCnVQOT_10serde_json2deNtB6_12ParserNumber5visitNtNvXs14_NtNtCs4ZeZeX9PAiK_10serde_core2de5implsmNtB1b_11Deserialize11deserialize16PrimitiveVisitorECsbNLsQi0JuJ4_5tgrep.exit8.i.i.i: ; preds = %_RINvXNvXs14_NtNtCs4ZeZeX9PAiK_10serde_core2de5implsmNtBc_11Deserialize11deserializeNtB3_16PrimitiveVisitorNtBc_7Visitor9visit_i64NtNtCs6MoqnCnVQOT_10serde_json5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit.i3.i.i.i, %_RINvXNvXs14_NtNtCs4ZeZeX9PAiK_10serde_core2de5implsmNtBc_11Deserialize11deserializeNtB3_16PrimitiveVisitorNtBc_7Visitor9visit_u64NtNtCs6MoqnCnVQOT_10serde_json5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit.i5.i.i.i, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1422
  br label %bb.o

bb.ac:                                            ; preds = %bb.o
  %i.bo = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.bp = load i32, ptr %i.bo, align 4, !noalias !1422, !noundef !7
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.bp, ptr %i.bq, align 4, !alias.scope !1423, !noalias !1424
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.s
  %storemerge.i.i.i = phi i32 [ 0, %bb.ac ], [ 1, %bb.s ]
  store i32 %storemerge.i.i.i, ptr %0, align 8, !alias.scope !1423, !noalias !1424
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1422
  br label %_RINvXs14_NtNtCs4ZeZeX9PAiK_10serde_core2de5implsmNtB9_11Deserialize11deserializeQINtNtCs6MoqnCnVQOT_10serde_json2de12DeserializerNtNtB1m_4read7StrReadEECsbNLsQi0JuJ4_5tgrep.exit

_RINvXs14_NtNtCs4ZeZeX9PAiK_10serde_core2de5implsmNtB9_11Deserialize11deserializeQINtNtCs6MoqnCnVQOT_10serde_json2de12DeserializerNtNtB1m_4read7StrReadEECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %.loopexit.i.i.i, %bb.p, %bb.ad
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs3_NtCs4ZeZeX9PAiK_10serde_core2deINtNtCsf3Ta7LF998c_4core6marker11PhantomDatatENtB6_15DeserializeSeed11deserializeQINtNtCs6MoqnCnVQOT_10serde_json2de12DeserializerNtNtB20_4read7StrReadEECsbNLsQi0JuJ4_5tgrep(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  %i.g = alloca [16 x i8], align 8                ; 6 uses
  %i.h = alloca [16 x i8], align 8                ; 20 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1484)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1485)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1486)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1487)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1488)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1489)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1490)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !1491, !noalias !1492, !noundef !7 ; 2 uses
  %.promoted.i.i.i.i = load i64, ptr %i.j, align 8, !alias.scope !1493, !noalias !1494 ; 2 uses
  %i.m = icmp ult i64 %.promoted.i.i.i.i, %i.l
  br i1 %i.m, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !1491, !noalias !1492, !nonnull !7, !noundef !7
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i.i
  %i.p = phi i64 [ %.promoted.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.s, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1495)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1496)
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !noalias !1497, !noundef !7 ; 3 uses
  switch i8 %i.r, label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsbNLsQi0JuJ4_5tgrep.exit.i.i.i [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.s = add i64 %i.p, 1                          ; 3 uses
  store i64 %i.s, ptr %i.j, align 8, !alias.scope !1498, !noalias !1494
  %exitcond.not.i.i.i.i = icmp eq i64 %i.s, %i.l
  br i1 %exitcond.not.i.i.i.i, label %.loopexit.i.i.i, label %bb.b

_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsbNLsQi0JuJ4_5tgrep.exit.i.i.i: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1499
  %i.t = icmp eq i8 %i.r, 45
  br i1 %i.t, label %bb.d, label %bb.e

.loopexit.i.i.i:                                  ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1499
  store i64 5, ptr %i.i, align 8, !noalias !1499
  %i.u = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.i), !noalias !1500
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1499
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.u, ptr %i.v, align 8, !alias.scope !1500, !noalias !1501
  store i16 1, ptr %0, align 8, !alias.scope !1500, !noalias !1501
  br label %_RINvXs11_NtNtCs4ZeZeX9PAiK_10serde_core2de5implstNtB9_11Deserialize11deserializeQINtNtCs6MoqnCnVQOT_10serde_json2de12DeserializerNtNtB1m_4read7StrReadEECsbNLsQi0JuJ4_5tgrep.exit

bb.d:                                             ; preds = %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsbNLsQi0JuJ4_5tgrep.exit.i.i.i
  %i.w = add i64 %i.p, 1
  store i64 %i.w, ptr %i.j, align 8, !alias.scope !1502, !noalias !1500
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1499
  call fastcc void @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_integerCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext false), !noalias !1500
  %i.x = load i64, ptr %i.g, align 8, !range !23, !noalias !1499, !noundef !7 ; 2 uses
  %i.y = icmp eq i64 %i.x, -1
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  br i1 %i.y, label %bb.f, label %bb.g

bb.e:                                             ; preds = %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsbNLsQi0JuJ4_5tgrep.exit.i.i.i
  %i.aa = add i8 %i.r, -48
  %or.cond.i.i.i = icmp ult i8 %i.aa, 10
  br i1 %or.cond.i.i.i, label %bb.r, label %bb.q, !prof !26

bb.f:                                             ; preds = %bb.d
  %i.ab = load ptr, ptr %i.z, align 8, !noalias !1499, !nonnull !7, !align !22, !noundef !7
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ab, ptr %i.ac, align 8, !alias.scope !1500, !noalias !1501
  store i16 1, ptr %0, align 8, !alias.scope !1500, !noalias !1501
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1499
  br label %bb.p

bb.g:                                             ; preds = %bb.d
  %.sroa.2.0.copyload.i.i.i = load i64, ptr %i.z, align 8, !noalias !1499 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1503)
  switch i64 %i.x, label %default.unreachable [
    i64 0, label %bb.h
    i64 1, label %bb.i
    i64 2, label %bb.l
  ]

default.unreachable:                              ; preds = %bb.u, %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.ad = bitcast i64 %.sroa.2.0.copyload.i.i.i to double
  call void @_RINvYNtNvXs11_NtNtCs4ZeZeX9PAiK_10serde_core2de5implstNtBe_11Deserialize11deserialize16PrimitiveVisitorNtBe_7Visitor9visit_f64NtNtCs6MoqnCnVQOT_10serde_json5error5ErrorECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.h, double noundef %i.ad), !noalias !1504
  br label %_RINvMs2_NtCs6MoqnCnVQOT_10serde_json2deNtB6_12ParserNumber5visitNtNvXs11_NtNtCs4ZeZeX9PAiK_10serde_core2de5implstNtB1b_11Deserialize11deserialize16PrimitiveVisitorECsbNLsQi0JuJ4_5tgrep.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1505)
  %i.ae = icmp ugt i64 %.sroa.2.0.copyload.i.i.i, 65535
  br i1 %i.ae, label %bb.k, label %bb.j, !prof !11

bb.j:                                             ; preds = %bb.i
  %i.af = trunc nuw i64 %.sroa.2.0.copyload.i.i.i to i16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  store i16 %i.af, ptr %i.ag, align 2, !alias.scope !1506, !noalias !1507
  br label %_RINvXNvXs11_NtNtCs4ZeZeX9PAiK_10serde_core2de5implstNtBc_11Deserialize11deserializeNtB3_16PrimitiveVisitorNtBc_7Visitor9visit_u64NtNtCs6MoqnCnVQOT_10serde_json5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit.i.i.i.i

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1508
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %.sroa.2.0.copyload.i.i.i, ptr %i.ah, align 8, !noalias !1508
  store i8 1, ptr %i.e, align 8, !noalias !1508
  %i.ai = call noundef nonnull align 8 ptr @_RNvXs6_NtCs6MoqnCnVQOT_10serde_json5errorNtB5_5ErrorNtNtCs4ZeZeX9PAiK_10serde_core2de5Error13invalid_value(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1), !noalias !1509
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1508
  %i.aj = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.ai, ptr %i.aj, align 8, !alias.scope !1506, !noalias !1507
  br label %_RINvXNvXs11_NtNtCs4ZeZeX9PAiK_10serde_core2de5implstNtBc_11Deserialize11deserializeNtB3_16PrimitiveVisitorNtBc_7Visitor9visit_u64NtNtCs6MoqnCnVQOT_10serde_json5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit.i.i.i.i

_RINvXNvXs11_NtNtCs4ZeZeX9PAiK_10serde_core2de5implstNtBc_11Deserialize11deserializeNtB3_16PrimitiveVisitorNtBc_7Visitor9visit_u64NtNtCs6MoqnCnVQOT_10serde_json5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit.i.i.i.i: ; preds = %bb.k, %bb.j
  %storemerge.i.i.i.i.i = phi i16 [ 0, %bb.j ], [ 1, %bb.k ]
  store i16 %storemerge.i.i.i.i.i, ptr %i.h, align 8, !alias.scope !1506, !noalias !1507
  br label %_RINvMs2_NtCs6MoqnCnVQOT_10serde_json2deNtB6_12ParserNumber5visitNtNvXs11_NtNtCs4ZeZeX9PAiK_10serde_core2de5implstNtB1b_11Deserialize11deserialize16PrimitiveVisitorECsbNLsQi0JuJ4_5tgrep.exit.i.i.i

bb.l:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1510)
  %i.ak = icmp ugt i64 %.sroa.2.0.copyload.i.i.i, 65535
  br i1 %i.ak, label %bb.m, label %bb.n, !prof !31

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1511
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.sroa.2.0.copyload.i.i.i, ptr %i.al, align 8, !noalias !1511
  store i8 2, ptr %i.d, align 8, !noalias !1511
  %i.am = call noundef nonnull align 8 ptr @_RNvXs6_NtCs6MoqnCnVQOT_10serde_json5errorNtB5_5ErrorNtNtCs4ZeZeX9PAiK_10serde_core2de5Error13invalid_value(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.d, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1), !noalias !1512
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1511
  %i.an = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.am, ptr %i.an, align 8, !alias.scope !1513, !noalias !1507
  br label %_RINvXNvXs11_NtNtCs4ZeZeX9PAiK_10serde_core2de5implstNtBc_11Deserialize11deserializeNtB3_16PrimitiveVisitorNtBc_7Visitor9visit_i64NtNtCs6MoqnCnVQOT_10serde_json5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.ao = trunc nuw i64 %.sroa.2.0.copyload.i.i.i to i16
  %i.ap = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  store i16 %i.ao, ptr %i.ap, align 2, !alias.scope !1513, !noalias !1507
  br label %_RINvXNvXs11_NtNtCs4ZeZeX9PAiK_10serde_core2de5implstNtBc_11Deserialize11deserializeNtB3_16PrimitiveVisitorNtBc_7Visitor9visit_i64NtNtCs6MoqnCnVQOT_10serde_json5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit.i.i.i.i

_RINvXNvXs11_NtNtCs4ZeZeX9PAiK_10serde_core2de5implstNtBc_11Deserialize11deserializeNtB3_16PrimitiveVisitorNtBc_7Visitor9visit_i64NtNtCs6MoqnCnVQOT_10serde_json5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit.i.i.i.i: ; preds = %bb.n, %bb.m
  %storemerge.i1.i.i.i.i = phi i16 [ 0, %bb.n ], [ 1, %bb.m ]
  store i16 %storemerge.i1.i.i.i.i, ptr %i.h, align 8, !alias.scope !1513, !noalias !1507
  br label %_RINvMs2_NtCs6MoqnCnVQOT_10serde_json2deNtB6_12ParserNumber5visitNtNvXs11_NtNtCs4ZeZeX9PAiK_10serde_core2de5implstNtB1b_11Deserialize11deserialize16PrimitiveVisitorECsbNLsQi0JuJ4_5tgrep.exit.i.i.i

_RINvMs2_NtCs6MoqnCnVQOT_10serde_json2deNtB6_12ParserNumber5visitNtNvXs11_NtNtCs4ZeZeX9PAiK_10serde_core2de5implstNtB1b_11Deserialize11deserialize16PrimitiveVisitorECsbNLsQi0JuJ4_5tgrep.exit.i.i.i: ; preds = %_RINvXNvXs11_NtNtCs4ZeZeX9PAiK_10serde_core2de5implstNtBc_11Deserialize11deserializeNtB3_16PrimitiveVisitorNtBc_7Visitor9visit_i64NtNtCs6MoqnCnVQOT_10serde_json5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit.i.i.i.i, %_RINvXNvXs11_NtNtCs4ZeZeX9PAiK_10serde_core2de5implstNtBc_11Deserialize11deserializeNtB3_16PrimitiveVisitorNtBc_7Visitor9visit_u64NtNtCs6MoqnCnVQOT_10serde_json5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit.i.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1499
  br label %bb.o

bb.o:                                             ; preds = %_RINvMs2_NtCs6MoqnCnVQOT_10serde_json2deNtB6_12ParserNumber5visitNtNvXs11_NtNtCs4ZeZeX9PAiK_10serde_core2de5implstNtB1b_11Deserialize11deserialize16PrimitiveVisitorECsbNLsQi0JuJ4_5tgrep.exit8.i.i.i, %_RINvMs2_NtCs6MoqnCnVQOT_10serde_json2deNtB6_12ParserNumber5visitNtNvXs11_NtNtCs4ZeZeX9PAiK_10serde_core2de5implstNtB1b_11Deserialize11deserialize16PrimitiveVisitorECsbNLsQi0JuJ4_5tgrep.exit.i.i.i
  %i.aq = load i16, ptr %i.h, align 8, !range !32, !noalias !1499, !noundef !7
  %i.ar = trunc nuw i16 %i.aq to i1
  br i1 %i.ar, label %._crit_edge.i.i.i, label %bb.ac, !prof !11

._crit_edge.i.i.i:                                ; preds = %bb.o
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.pre.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !noalias !1499
  br label %bb.s

bb.p:                                             ; preds = %bb.t, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1499
  br label %_RINvXs11_NtNtCs4ZeZeX9PAiK_10serde_core2de5implstNtB9_11Deserialize11deserializeQINtNtCs6MoqnCnVQOT_10serde_json2de12DeserializerNtNtB1m_4read7StrReadEECsbNLsQi0JuJ4_5tgrep.exit

bb.q:                                             ; preds = %bb.e
  %i.as = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE17peek_invalid_typeCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1), !noalias !1500
  br label %bb.s

bb.r:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1499
  call fastcc void @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_integerCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext true), !noalias !1500
  %i.at = load i64, ptr %i.f, align 8, !range !23, !noalias !1499, !noundef !7 ; 2 uses
  %i.au = icmp eq i64 %i.at, -1
  %i.av = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  br i1 %i.au, label %bb.t, label %bb.u

bb.s:                                             ; preds = %bb.q, %._crit_edge.i.i.i
  %i.aw = phi ptr [ %.pre.i.i.i, %._crit_edge.i.i.i ], [ %i.as, %bb.q ]
  %i.ax = call noundef nonnull align 8 ptr @_RINvMs0_NtCs6MoqnCnVQOT_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read7StrReadE12fix_position0ECsbNLsQi0JuJ4_5tgrep(ptr noalias noundef nonnull align 8 %i.aw, ptr noundef nonnull readonly align 8 dereferenceable(56) %1), !noalias !1500
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ax, ptr %i.ay, align 8, !alias.scope !1500, !noalias !1501
  br label %bb.ad

bb.t:                                             ; preds = %bb.r
  %i.az = load ptr, ptr %i.av, align 8, !noalias !1499, !nonnull !7, !align !22, !noundef !7
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.az, ptr %i.ba, align 8, !alias.scope !1500, !noalias !1501
  store i16 1, ptr %0, align 8, !alias.scope !1500, !noalias !1501
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1499
  br label %bb.p

bb.u:                                             ; preds = %bb.r
  %.sroa.213.0.copyload.i.i.i = load i64, ptr %i.av, align 8, !noalias !1499 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1514)
  switch i64 %i.at, label %default.unreachable [
    i64 0, label %bb.v
    i64 1, label %bb.w
    i64 2, label %bb.z
  ]

bb.v:                                             ; preds = %bb.u
  %i.bb = bitcast i64 %.sroa.213.0.copyload.i.i.i to double
  call void @_RINvYNtNvXs11_NtNtCs4ZeZeX9PAiK_10serde_core2de5implstNtBe_11Deserialize11deserialize16PrimitiveVisitorNtBe_7Visitor9visit_f64NtNtCs6MoqnCnVQOT_10serde_json5error5ErrorECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.h, double noundef %i.bb), !noalias !1515
  br label %_RINvMs2_NtCs6MoqnCnVQOT_10serde_json2deNtB6_12ParserNumber5visitNtNvXs11_NtNtCs4ZeZeX9PAiK_10serde_core2de5implstNtB1b_11Deserialize11deserialize16PrimitiveVisitorECsbNLsQi0JuJ4_5tgrep.exit8.i.i.i

bb.w:                                             ; preds = %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1516)
  %i.bc = icmp ugt i64 %.sroa.213.0.copyload.i.i.i, 65535
  br i1 %i.bc, label %bb.y, label %bb.x, !prof !11

bb.x:                                             ; preds = %bb.w
  %i.bd = trunc nuw i64 %.sroa.213.0.copyload.i.i.i to i16
  %i.be = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  store i16 %i.bd, ptr %i.be, align 2, !alias.scope !1517, !noalias !1518
  br label %_RINvXNvXs11_NtNtCs4ZeZeX9PAiK_10serde_core2de5implstNtBc_11Deserialize11deserializeNtB3_16PrimitiveVisitorNtBc_7Visitor9visit_u64NtNtCs6MoqnCnVQOT_10serde_json5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit.i5.i.i.i

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1519
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %.sroa.213.0.copyload.i.i.i, ptr %i.bf, align 8, !noalias !1519
  store i8 1, ptr %i.c, align 8, !noalias !1519
  %i.bg = call noundef nonnull align 8 ptr @_RNvXs6_NtCs6MoqnCnVQOT_10serde_json5errorNtB5_5ErrorNtNtCs4ZeZeX9PAiK_10serde_core2de5Error13invalid_value(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1), !noalias !1520
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1519
  %i.bh = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.bg, ptr %i.bh, align 8, !alias.scope !1517, !noalias !1518
  br label %_RINvXNvXs11_NtNtCs4ZeZeX9PAiK_10serde_core2de5implstNtBc_11Deserialize11deserializeNtB3_16PrimitiveVisitorNtBc_7Visitor9visit_u64NtNtCs6MoqnCnVQOT_10serde_json5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit.i5.i.i.i

_RINvXNvXs11_NtNtCs4ZeZeX9PAiK_10serde_core2de5implstNtBc_11Deserialize11deserializeNtB3_16PrimitiveVisitorNtBc_7Visitor9visit_u64NtNtCs6MoqnCnVQOT_10serde_json5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit.i5.i.i.i: ; preds = %bb.y, %bb.x
  %storemerge.i.i6.i.i.i = phi i16 [ 0, %bb.x ], [ 1, %bb.y ]
  store i16 %storemerge.i.i6.i.i.i, ptr %i.h, align 8, !alias.scope !1517, !noalias !1518
  br label %_RINvMs2_NtCs6MoqnCnVQOT_10serde_json2deNtB6_12ParserNumber5visitNtNvXs11_NtNtCs4ZeZeX9PAiK_10serde_core2de5implstNtB1b_11Deserialize11deserialize16PrimitiveVisitorECsbNLsQi0JuJ4_5tgrep.exit8.i.i.i

bb.z:                                             ; preds = %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1521)
  %i.bi = icmp ugt i64 %.sroa.213.0.copyload.i.i.i, 65535
  br i1 %i.bi, label %bb.aa, label %bb.ab, !prof !31

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1522
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.213.0.copyload.i.i.i, ptr %i.bj, align 8, !noalias !1522
  store i8 2, ptr %i.b, align 8, !noalias !1522
  %i.bk = call noundef nonnull align 8 ptr @_RNvXs6_NtCs6MoqnCnVQOT_10serde_json5errorNtB5_5ErrorNtNtCs4ZeZeX9PAiK_10serde_core2de5Error13invalid_value(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1), !noalias !1523
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1522
  %i.bl = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.bk, ptr %i.bl, align 8, !alias.scope !1524, !noalias !1518
  br label %_RINvXNvXs11_NtNtCs4ZeZeX9PAiK_10serde_core2de5implstNtBc_11Deserialize11deserializeNtB3_16PrimitiveVisitorNtBc_7Visitor9visit_i64NtNtCs6MoqnCnVQOT_10serde_json5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit.i3.i.i.i

bb.ab:                                            ; preds = %bb.z
  %i.bm = trunc nuw i64 %.sroa.213.0.copyload.i.i.i to i16
  %i.bn = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  store i16 %i.bm, ptr %i.bn, align 2, !alias.scope !1524, !noalias !1518
  br label %_RINvXNvXs11_NtNtCs4ZeZeX9PAiK_10serde_core2de5implstNtBc_11Deserialize11deserializeNtB3_16PrimitiveVisitorNtBc_7Visitor9visit_i64NtNtCs6MoqnCnVQOT_10serde_json5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit.i3.i.i.i

end_hunk_2
begin_hunk_3_@_RINvXs4_NtCs4ZeZeX9PAiK_10serde_core2deQNtNtNtCs6MoqnCnVQOT_10serde_json5value2de15SeqDeserializerNtB6_9SeqAccess12next_elementINtNtCsf3Ta7LF998c_4core6option6OptionyEECsbNLsQi0JuJ4_5tgrep:bb.a
  br i1 %i.g, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs6MoqnCnVQOT_10serde_json5value5ValueENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit.thread.i.i, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs6MoqnCnVQOT_10serde_json5value5ValueENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit.i.i

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs6MoqnCnVQOT_10serde_json5value5ValueENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit.i.i: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr %i.h, ptr %i.e, align 8, !alias.scope !1650, !noalias !1651
  %.sroa.0.0.copyload1.i.i = load i8, ptr %i.f, align 8, !noalias !1652 ; 3 uses
  %.not.i.i = icmp eq i8 %.sroa.0.0.copyload1.i.i, -1
  br i1 %.not.i.i, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs6MoqnCnVQOT_10serde_json5value5ValueENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit.thread.i.i, label %bb.b

bb.b:                                             ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs6MoqnCnVQOT_10serde_json5value5ValueENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit.i.i
  %.sroa.7.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1653
  store i8 %.sroa.0.0.copyload1.i.i, ptr %i.b, align 8, !noalias !1653
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7.0..sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7.0..sroa_idx2.i.i, i64 31, i1 false), !noalias !1653
  %i.i = icmp eq i8 %.sroa.0.0.copyload1.i.i, 0
  br i1 %i.i, label %_RINvXs3_NtCs4ZeZeX9PAiK_10serde_core2deINtNtCsf3Ta7LF998c_4core6marker11PhantomDataINtNtBG_6option6OptionyEENtB6_15DeserializeSeed11deserializeNtNtCs6MoqnCnVQOT_10serde_json5value5ValueECsbNLsQi0JuJ4_5tgrep.exit.thread.i.i, label %_RINvXs3_NtCs4ZeZeX9PAiK_10serde_core2deINtNtCsf3Ta7LF998c_4core6marker11PhantomDataINtNtBG_6option6OptionyEENtB6_15DeserializeSeed11deserializeNtNtCs6MoqnCnVQOT_10serde_json5value5ValueECsbNLsQi0JuJ4_5tgrep.exit.i.i

_RINvXs3_NtCs4ZeZeX9PAiK_10serde_core2deINtNtCsf3Ta7LF998c_4core6marker11PhantomDataINtNtBG_6option6OptionyEENtB6_15DeserializeSeed11deserializeNtNtCs6MoqnCnVQOT_10serde_json5value5ValueECsbNLsQi0JuJ4_5tgrep.exit.thread.i.i: ; preds = %bb.b
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6MoqnCnVQOT_10serde_json5value5ValueECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b), !noalias !1654
  br label %bb.d

_RINvXs3_NtCs4ZeZeX9PAiK_10serde_core2deINtNtCsf3Ta7LF998c_4core6marker11PhantomDataINtNtBG_6option6OptionyEENtB6_15DeserializeSeed11deserializeNtNtCs6MoqnCnVQOT_10serde_json5value5ValueECsbNLsQi0JuJ4_5tgrep.exit.i.i: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1655
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !1654
  %i.j = call { i64, ptr } @_RINvXs2_NtNtCs6MoqnCnVQOT_10serde_json5value2deNtB8_5ValueNtNtCs4ZeZeX9PAiK_10serde_core2de12Deserializer15deserialize_u64NtNvXs17_NtBW_5implsyNtBW_11Deserialize11deserialize16PrimitiveVisitorECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a), !noalias !1655 ; 2 uses
  %i.k = extractvalue { i64, ptr } %i.j, 0
  %spec.select.i.i.i.i.i.i = add i64 %i.k, 1      ; 2 uses
  %i.l = extractvalue { i64, ptr } %i.j, 1        ; 2 uses
  %.sink2.i.i.i.i.i.i = ptrtoint ptr %i.l to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1655
  %i.m = icmp eq i64 %spec.select.i.i.i.i.i.i, 2
  br i1 %i.m, label %bb.c, label %bb.d

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs6MoqnCnVQOT_10serde_json5value5ValueENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit.thread.i.i: ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs6MoqnCnVQOT_10serde_json5value5ValueENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit.i.i, %bb.a
  store i64 2, ptr %0, align 8, !alias.scope !1656, !noalias !1657
  br label %_RINvYNtNtNtCs6MoqnCnVQOT_10serde_json5value2de15SeqDeserializerNtNtCs4ZeZeX9PAiK_10serde_core2de9SeqAccess12next_elementINtNtCsf3Ta7LF998c_4core6option6OptionyEECsbNLsQi0JuJ4_5tgrep.exit

bb.c:                                             ; preds = %_RINvXs3_NtCs4ZeZeX9PAiK_10serde_core2deINtNtCsf3Ta7LF998c_4core6marker11PhantomDataINtNtBG_6option6OptionyEENtB6_15DeserializeSeed11deserializeNtNtCs6MoqnCnVQOT_10serde_json5value5ValueECsbNLsQi0JuJ4_5tgrep.exit.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.n, align 8, !alias.scope !1656, !noalias !1657
  store i64 -1, ptr %0, align 8, !alias.scope !1656, !noalias !1657
  br label %bb.e

bb.d:                                             ; preds = %_RINvXs3_NtCs4ZeZeX9PAiK_10serde_core2deINtNtCsf3Ta7LF998c_4core6marker11PhantomDataINtNtBG_6option6OptionyEENtB6_15DeserializeSeed11deserializeNtNtCs6MoqnCnVQOT_10serde_json5value5ValueECsbNLsQi0JuJ4_5tgrep.exit.i.i, %_RINvXs3_NtCs4ZeZeX9PAiK_10serde_core2deINtNtCsf3Ta7LF998c_4core6marker11PhantomDataINtNtBG_6option6OptionyEENtB6_15DeserializeSeed11deserializeNtNtCs6MoqnCnVQOT_10serde_json5value5ValueECsbNLsQi0JuJ4_5tgrep.exit.thread.i.i
  %.sroa.03.09.i.i = phi i64 [ 0, %_RINvXs3_NtCs4ZeZeX9PAiK_10serde_core2deINtNtCsf3Ta7LF998c_4core6marker11PhantomDataINtNtBG_6option6OptionyEENtB6_15DeserializeSeed11deserializeNtNtCs6MoqnCnVQOT_10serde_json5value5ValueECsbNLsQi0JuJ4_5tgrep.exit.thread.i.i ], [ %spec.select.i.i.i.i.i.i, %_RINvXs3_NtCs4ZeZeX9PAiK_10serde_core2deINtNtCsf3Ta7LF998c_4core6marker11PhantomDataINtNtBG_6option6OptionyEENtB6_15DeserializeSeed11deserializeNtNtCs6MoqnCnVQOT_10serde_json5value5ValueECsbNLsQi0JuJ4_5tgrep.exit.i.i ]
  %.sroa.5.08.i.i = phi i64 [ undef, %_RINvXs3_NtCs4ZeZeX9PAiK_10serde_core2deINtNtCsf3Ta7LF998c_4core6marker11PhantomDataINtNtBG_6option6OptionyEENtB6_15DeserializeSeed11deserializeNtNtCs6MoqnCnVQOT_10serde_json5value5ValueECsbNLsQi0JuJ4_5tgrep.exit.thread.i.i ], [ %.sink2.i.i.i.i.i.i, %_RINvXs3_NtCs4ZeZeX9PAiK_10serde_core2deINtNtCsf3Ta7LF998c_4core6marker11PhantomDataINtNtBG_6option6OptionyEENtB6_15DeserializeSeed11deserializeNtNtCs6MoqnCnVQOT_10serde_json5value5ValueECsbNLsQi0JuJ4_5tgrep.exit.i.i ]
  store i64 %.sroa.03.09.i.i, ptr %0, align 8, !alias.scope !1656, !noalias !1657
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.08.i.i, ptr %i.o, align 8, !alias.scope !1656, !noalias !1657
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1653
  br label %_RINvYNtNtNtCs6MoqnCnVQOT_10serde_json5value2de15SeqDeserializerNtNtCs4ZeZeX9PAiK_10serde_core2de9SeqAccess12next_elementINtNtCsf3Ta7LF998c_4core6option6OptionyEECsbNLsQi0JuJ4_5tgrep.exit

_RINvYNtNtNtCs6MoqnCnVQOT_10serde_json5value2de15SeqDeserializerNtNtCs4ZeZeX9PAiK_10serde_core2de9SeqAccess12next_elementINtNtCsf3Ta7LF998c_4core6option6OptionyEECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs6MoqnCnVQOT_10serde_json5value5ValueENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit.thread.i.i, %bb.e
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs4_NtCs4ZeZeX9PAiK_10serde_core2deQNtNtNtCs6MoqnCnVQOT_10serde_json5value2de15SeqDeserializerNtB6_9SeqAccess12next_elementbECsbNLsQi0JuJ4_5tgrep(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) initializes((0, 1)) %0, ptr nofree captures(none) %.0.val) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1667)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1668)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1669)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1670)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1671)
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !1672, !noalias !1673, !nonnull !7, !noundef !7
  %i.e = getelementptr inbounds nuw i8, ptr %.0.val, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !1672, !noalias !1673, !nonnull !7, !noundef !7 ; 4 uses
  %i.g = icmp eq ptr %i.f, %i.d
  br i1 %i.g, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs6MoqnCnVQOT_10serde_json5value5ValueENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit.thread.i.i, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs6MoqnCnVQOT_10serde_json5value5ValueENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit.i.i

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs6MoqnCnVQOT_10serde_json5value5ValueENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit.i.i: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr %i.h, ptr %i.e, align 8, !alias.scope !1672, !noalias !1673
  %.sroa.0.0.copyload1.i.i = load i8, ptr %i.f, align 8, !noalias !1674 ; 2 uses
  %.not.i.i = icmp eq i8 %.sroa.0.0.copyload1.i.i, -1
  br i1 %.not.i.i, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs6MoqnCnVQOT_10serde_json5value5ValueENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit.thread.i.i, label %bb.b

bb.b:                                             ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs6MoqnCnVQOT_10serde_json5value5ValueENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit.i.i
  %.sroa.7.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1675
  store i8 %.sroa.0.0.copyload1.i.i, ptr %i.b, align 8, !noalias !1675
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7.0..sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7.0..sroa_idx2.i.i, i64 31, i1 false), !noalias !1675
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1675
  call void @_RINvXs1_NtNtCs4ZeZeX9PAiK_10serde_core2de5implsbNtB8_11Deserialize11deserializeNtNtCs6MoqnCnVQOT_10serde_json5value5ValueECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b), !noalias !1675
  %i.i = load i8, ptr %i.a, align 8, !range !9, !noalias !1675, !noundef !7
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.c, label %bb.d

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs6MoqnCnVQOT_10serde_json5value5ValueENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit.thread.i.i: ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs6MoqnCnVQOT_10serde_json5value5ValueENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit.i.i, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 2, ptr %i.k, align 1, !alias.scope !1676, !noalias !1677
  store i8 0, ptr %0, align 8, !alias.scope !1676, !noalias !1677
  br label %_RINvYNtNtNtCs6MoqnCnVQOT_10serde_json5value2de15SeqDeserializerNtNtCs4ZeZeX9PAiK_10serde_core2de9SeqAccess12next_elementbECsbNLsQi0JuJ4_5tgrep.exit

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !noalias !1675, !nonnull !7, !align !22, !noundef !7
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.m, ptr %i.n, align 8, !alias.scope !1676, !noalias !1677
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.p = load i8, ptr %i.o, align 1, !range !9, !noalias !1675, !noundef !7
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.p, ptr %i.q, align 1, !alias.scope !1676, !noalias !1677
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %storemerge.i.i = phi i8 [ 0, %bb.d ], [ 1, %bb.c ]
  store i8 %storemerge.i.i, ptr %0, align 8, !alias.scope !1676, !noalias !1677
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1675
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1675
  br label %_RINvYNtNtNtCs6MoqnCnVQOT_10serde_json5value2de15SeqDeserializerNtNtCs4ZeZeX9PAiK_10serde_core2de9SeqAccess12next_elementbECsbNLsQi0JuJ4_5tgrep.exit

_RINvYNtNtNtCs6MoqnCnVQOT_10serde_json5value2de15SeqDeserializerNtNtCs4ZeZeX9PAiK_10serde_core2de9SeqAccess12next_elementbECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs6MoqnCnVQOT_10serde_json5value5ValueENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit.thread.i.i, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs5_NtCs6MoqnCnVQOT_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCsbNLsQi0JuJ4_5tgrep5serves_1__NtB2t_10ServerInfoNtB1j_11Deserialize11deserialize9___VisitorEB2v_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(none) %4, i64 noundef range(i64 0, 576460752303423488) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
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
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 4 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
  %i.s = alloca [24 x i8], align 8                ; 4 uses
  %i.t = alloca [24 x i8], align 8                ; 4 uses
  %i.u = alloca [24 x i8], align 8                ; 4 uses
  %i.v = alloca [24 x i8], align 8                ; 9 uses
  %i.w = alloca [16 x i8], align 8                ; 10 uses
  %i.x = alloca [16 x i8], align 8                ; 7 uses
  %i.y = alloca [16 x i8], align 8                ; 7 uses
  %i.z = alloca [16 x i8], align 8                ; 7 uses
  %i.aa = alloca [16 x i8], align 8               ; 7 uses
  %i.ab = alloca [16 x i8], align 8               ; 7 uses
  %i.ac = alloca [16 x i8], align 8               ; 7 uses
  %i.ad = alloca [16 x i8], align 8               ; 7 uses
  %i.ae = alloca [16 x i8], align 8               ; 7 uses
  %i.af = alloca [16 x i8], align 8               ; 7 uses
  %i.ag = alloca [16 x i8], align 8               ; 8 uses
  %i.ah = alloca [16 x i8], align 8               ; 6 uses
  %i.ai = alloca [24 x i8], align 8               ; 9 uses
  %i.aj = alloca [24 x i8], align 8               ; 4 uses
  %i.ak = alloca [16 x i8], align 8               ; 6 uses
  %i.al = alloca [24 x i8], align 8               ; 9 uses
  %i.am = alloca [24 x i8], align 8               ; 4 uses
  %i.an = alloca [24 x i8], align 8               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1902)
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aq = load i64, ptr %i.ap, align 8, !alias.scope !1903, !noalias !1904, !noundef !7 ; 2 uses
  %.promoted.i = load i64, ptr %i.ao, align 8, !alias.scope !1902, !noalias !1905 ; 2 uses
  %i.ar = icmp ult i64 %.promoted.i, %i.aq
  br i1 %i.ar, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !alias.scope !1903, !noalias !1904, !nonnull !7, !noundef !7
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.au = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.ax, %bb.c ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1906)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1907)
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !noalias !1908, !noundef !7
  switch i8 %i.aw, label %bb.d [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 91, label %bb.e
    i8 123, label %bb.f
  ], !prof !1909

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.ax = add i64 %i.au, 1                        ; 3 uses
  store i64 %i.ax, ptr %i.ao, align 8, !alias.scope !1910, !noalias !1905
  %exitcond.not.i = icmp eq i64 %i.ax, %i.aq
  br i1 %exitcond.not.i, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  store i64 5, ptr %i.an, align 8
  %i.ay = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.an)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ay, ptr %i.az, align 8
  br label %bb.ec

bb.d:                                             ; preds = %bb.b
  %i.ba = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE17peek_invalid_typeCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @67)
  br label %bb.ea

bb.e:                                             ; preds = %bb.b
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.bc = load i8, ptr %i.bb, align 8, !noundef !7
  %i.bd = add i8 %i.bc, -1                        ; 2 uses
  store i8 %i.bd, ptr %i.bb, align 8
  %i.be = icmp eq i8 %i.bd, 0
  br i1 %i.be, label %bb.g, label %bb.h, !prof !11

bb.f:                                             ; preds = %bb.b
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.bg = load i8, ptr %i.bf, align 8, !noundef !7
  %i.bh = add i8 %i.bg, -1                        ; 2 uses
  store i8 %i.bh, ptr %i.bf, align 8
  %i.bi = icmp eq i8 %i.bh, 0
  br i1 %i.bi, label %bb.ac, label %bb.ad, !prof !11

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  store i64 24, ptr %i.am, align 8
  %i.bj = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  br label %bb.t

bb.h:                                             ; preds = %bb.e
  %i.bk = add i64 %i.au, 1
  store i64 %i.bk, ptr %i.ao, align 8, !alias.scope !1911
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  store ptr %1, ptr %i.ag, align 8, !noalias !1912
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i8 1, ptr %i.bl, align 8, !noalias !1912
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1913)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1914)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !1915
  call fastcc void @_RINvNvXs7_NtCs6MoqnCnVQOT_10serde_json2deINtB8_9SeqAccesspENtNtCs4ZeZeX9PAiK_10serde_core2de9SeqAccess17next_element_seed16has_next_elementNtNtBa_4read7StrReadECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.af, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ag), !noalias !1916
  %i.bm = load i8, ptr %i.af, align 8, !range !9, !noalias !1915, !noundef !7
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bo = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !noalias !1915, !nonnull !7, !align !22, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !1915
  br label %_RINvXs0_NvXNvNtCsbNLsQi0JuJ4_5tgrep5serves_1__NtBb_10ServerInfoNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB11_7Visitor9visit_seqINtNtCs6MoqnCnVQOT_10serde_json2de9SeqAccessNtNtB2F_4read7StrReadEEBd_.exit

bb.j:                                             ; preds = %bb.h
  %i.bq = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  %i.br = load i8, ptr %i.bq, align 1, !range !9, !noalias !1915, !noundef !7
  %i.bs = trunc nuw i8 %i.br to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !1915
  br i1 %i.bs, label %bb.k, label %bb.r

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !1915
  %i.bt = load ptr, ptr %i.ag, align 8, !alias.scope !1917, !noalias !1918, !nonnull !7, !align !22, !noundef !7
  call fastcc void @_RINvXs3_NtCs4ZeZeX9PAiK_10serde_core2deINtNtCsf3Ta7LF998c_4core6marker11PhantomDatamENtB6_15DeserializeSeed11deserializeQINtNtCs6MoqnCnVQOT_10serde_json2de12DeserializerNtNtB20_4read7StrReadEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.ae, ptr noalias nofree noundef align 8 dereferenceable(56) %i.bt) #27, !noalias !1919
  %i.bu = load i32, ptr %i.ae, align 8, !range !13, !noalias !1915, !noundef !7
  %i.bv = trunc nuw i32 %i.bu to i1
  br i1 %i.bv, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !noalias !1915, !nonnull !7, !align !22, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !1915
  br label %_RINvXs0_NvXNvNtCsbNLsQi0JuJ4_5tgrep5serves_1__NtBb_10ServerInfoNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB11_7Visitor9visit_seqINtNtCs6MoqnCnVQOT_10serde_json2de9SeqAccessNtNtB2F_4read7StrReadEEBd_.exit

bb.m:                                             ; preds = %bb.k
  %i.by = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.bz = load i32, ptr %i.by, align 4, !noalias !1915, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !1915
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1920)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1921)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !1922
  call fastcc void @_RINvNvXs7_NtCs6MoqnCnVQOT_10serde_json2deINtB8_9SeqAccesspENtNtCs4ZeZeX9PAiK_10serde_core2de9SeqAccess17next_element_seed16has_next_elementNtNtBa_4read7StrReadECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.ad, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ag), !noalias !1923
  %i.ca = load i8, ptr %i.ad, align 8, !range !9, !noalias !1922, !noundef !7
  %i.cb = trunc nuw i8 %i.ca to i1
  br i1 %i.cb, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !noalias !1922, !nonnull !7, !align !22, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !1922
  br label %_RINvXs0_NvXNvNtCsbNLsQi0JuJ4_5tgrep5serves_1__NtBb_10ServerInfoNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB11_7Visitor9visit_seqINtNtCs6MoqnCnVQOT_10serde_json2de9SeqAccessNtNtB2F_4read7StrReadEEBd_.exit

bb.o:                                             ; preds = %bb.m
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  %i.cf = load i8, ptr %i.ce, align 1, !range !9, !noalias !1922, !noundef !7
  %i.cg = trunc nuw i8 %i.cf to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !1922
  br i1 %i.cg, label %bb.p, label %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9SeqAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9SeqAccess12next_elementtECsbNLsQi0JuJ4_5tgrep.exit.i

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !1922
  %i.ch = load ptr, ptr %i.ag, align 8, !alias.scope !1924, !noalias !1925, !nonnull !7, !align !22, !noundef !7
  call fastcc void @_RINvXs3_NtCs4ZeZeX9PAiK_10serde_core2deINtNtCsf3Ta7LF998c_4core6marker11PhantomDatatENtB6_15DeserializeSeed11deserializeQINtNtCs6MoqnCnVQOT_10serde_json2de12DeserializerNtNtB20_4read7StrReadEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.ac, ptr noalias nofree noundef align 8 dereferenceable(56) %i.ch) #27, !noalias !1926
  %i.ci = load i16, ptr %i.ac, align 8, !range !32, !noalias !1922, !noundef !7
  %i.cj = trunc nuw i16 %i.ci to i1
  br i1 %i.cj, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !noalias !1922, !nonnull !7, !align !22, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !1922
  br label %_RINvXs0_NvXNvNtCsbNLsQi0JuJ4_5tgrep5serves_1__NtBb_10ServerInfoNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB11_7Visitor9visit_seqINtNtCs6MoqnCnVQOT_10serde_json2de9SeqAccessNtNtB2F_4read7StrReadEEBd_.exit

bb.r:                                             ; preds = %bb.j
  %i.cm = tail call noundef nonnull align 8 ptr @_RNvYNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorNtNtCs4ZeZeX9PAiK_10serde_core2de5Error14invalid_lengthCsbNLsQi0JuJ4_5tgrep(i64 noundef 0, ptr noundef nonnull @60, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23), !noalias !1927
  br label %_RINvXs0_NvXNvNtCsbNLsQi0JuJ4_5tgrep5serves_1__NtBb_10ServerInfoNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB11_7Visitor9visit_seqINtNtCs6MoqnCnVQOT_10serde_json2de9SeqAccessNtNtB2F_4read7StrReadEEBd_.exit

bb.s:                                             ; preds = %bb.p
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ac, i64 2
  %i.co = load i16, ptr %i.cn, align 2, !noalias !1922, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !1922
  %.sroa.629.8.insert.ext = zext i16 %i.co to i64
  %i.cp = inttoptr i64 %.sroa.629.8.insert.ext to ptr
  br label %_RINvXs0_NvXNvNtCsbNLsQi0JuJ4_5tgrep5serves_1__NtBb_10ServerInfoNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB11_7Visitor9visit_seqINtNtCs6MoqnCnVQOT_10serde_json2de9SeqAccessNtNtB2F_4read7StrReadEEBd_.exit

_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9SeqAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9SeqAccess12next_elementtECsbNLsQi0JuJ4_5tgrep.exit.i: ; preds = %bb.o
  %i.cq = tail call noundef nonnull align 8 ptr @_RNvYNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorNtNtCs4ZeZeX9PAiK_10serde_core2de5Error14invalid_lengthCsbNLsQi0JuJ4_5tgrep(i64 noundef 1, ptr noundef nonnull @60, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23), !noalias !1927
  br label %_RINvXs0_NvXNvNtCsbNLsQi0JuJ4_5tgrep5serves_1__NtBb_10ServerInfoNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB11_7Visitor9visit_seqINtNtCs6MoqnCnVQOT_10serde_json2de9SeqAccessNtNtB2F_4read7StrReadEEBd_.exit

_RINvXs0_NvXNvNtCsbNLsQi0JuJ4_5tgrep5serves_1__NtBb_10ServerInfoNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB11_7Visitor9visit_seqINtNtCs6MoqnCnVQOT_10serde_json2de9SeqAccessNtNtB2F_4read7StrReadEEBd_.exit: ; preds = %bb.n, %bb.q, %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9SeqAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9SeqAccess12next_elementtECsbNLsQi0JuJ4_5tgrep.exit.i, %bb.i, %bb.l, %bb.r, %bb.s
  %.sroa.629.0 = phi ptr [ %i.cp, %bb.s ], [ %i.bp, %bb.i ], [ %i.cm, %bb.r ], [ %i.bx, %bb.l ], [ %i.cq, %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9SeqAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9SeqAccess12next_elementtECsbNLsQi0JuJ4_5tgrep.exit.i ], [ %i.cl, %bb.q ], [ %i.cd, %bb.n ]
  %.sroa.5.0 = phi i32 [ %i.bz, %bb.s ], [ undef, %bb.i ], [ undef, %bb.r ], [ undef, %bb.l ], [ undef, %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9SeqAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9SeqAccess12next_elementtECsbNLsQi0JuJ4_5tgrep.exit.i ], [ undef, %bb.q ], [ undef, %bb.n ]
  %i.cr = phi i1 [ true, %bb.s ], [ false, %bb.i ], [ false, %bb.r ], [ false, %bb.l ], [ false, %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9SeqAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9SeqAccess12next_elementtECsbNLsQi0JuJ4_5tgrep.exit.i ], [ false, %bb.q ], [ false, %bb.n ]
  %.sink37.i = phi i32 [ 0, %bb.s ], [ 1, %bb.i ], [ 1, %bb.r ], [ 1, %bb.l ], [ 1, %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9SeqAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9SeqAccess12next_elementtECsbNLsQi0JuJ4_5tgrep.exit.i ], [ 1, %bb.q ], [ 1, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  %i.cs = load i8, ptr %i.bb, align 8, !noundef !7
  %i.ct = add i8 %i.cs, 1
  store i8 %i.ct, ptr %i.bb, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  store i32 %.sink37.i, ptr %i.ak, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  store i32 %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.629.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  store ptr %.sroa.629.0, ptr %.sroa.629.0..sroa_idx, align 8
  %i.cu = invoke fastcc noundef align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(56) %1)
          to label %bb.w unwind label %bb.u       ; 4 uses

bb.t:                                             ; preds = %bb.ac, %bb.g
  %.sink = phi ptr [ %i.dl, %bb.ac ], [ %i.bj, %bb.g ]
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.cv, align 8
  br label %bb.ec

bb.u:                                             ; preds = %_RINvXs0_NvXNvNtCsbNLsQi0JuJ4_5tgrep5serves_1__NtBb_10ServerInfoNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB11_7Visitor9visit_seqINtNtCs6MoqnCnVQOT_10serde_json2de9SeqAccessNtNtB2F_4read7StrReadEEBd_.exit
  %i.cw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.cr, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsbNLsQi0JuJ4_5tgrep5serve10ServerInfoNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorEEB11_.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %.sroa.629.0..sroa_idx)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsbNLsQi0JuJ4_5tgrep5serve10ServerInfoNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorEEB11_.exit unwind label %bb.z

bb.w:                                             ; preds = %_RINvXs0_NvXNvNtCsbNLsQi0JuJ4_5tgrep5serves_1__NtBb_10ServerInfoNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB11_7Visitor9visit_seqINtNtCs6MoqnCnVQOT_10serde_json2de9SeqAccessNtNtB2F_4read7StrReadEEBd_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i64 16, i1 false)
  %i.cx = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  store ptr %i.cu, ptr %i.cx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  %i.cy = load i32, ptr %i.al, align 8, !range !13, !noundef !7
  %i.cz = trunc nuw i32 %i.cy to i1
  br i1 %i.cz, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.not21 = icmp eq ptr %i.cu, null
  br i1 %.not21, label %.split, label %.split.thread, !prof !1928

bb.y:                                             ; preds = %bb.w
  %i.da = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !nonnull !7, !align !22, !noundef !7 ; 2 uses
  %.not70 = icmp eq ptr %i.cu, null
  br i1 %.not70, label %.split.thread, label %bb.aa, !prof !1928

bb.z:                                             ; preds = %bb.dv, %bb.v
  %i.dc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25
  unreachable

.split.thread:                                    ; preds = %bb.aa, %bb.y, %bb.x
  %.sroa.12.042.ph = phi ptr [ %i.cu, %bb.x ], [ %i.db, %bb.y ], [ %i.db, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  br label %bb.ea

.split:                                           ; preds = %bb.x
  %i.dd = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.de = load i32, ptr %i.dd, align 4, !noundef !7
  %i.df = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.dg = load i16, ptr %i.df, align 8, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  br label %bb.eb

bb.aa:                                            ; preds = %bb.y
  call void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cx)
  br label %.split.thread

.thread65:                                        ; preds = %bb.dy, %bb.dz, %bb.dx
  %.sroa.12.256.ph = phi ptr [ %i.mj, %bb.dy ], [ %i.mj, %bb.dz ], [ %i.md, %bb.dx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  br label %bb.ea

bb.ab:                                            ; preds = %bb.dx
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.di = load i32, ptr %i.dh, align 4, !noundef !7
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.dk = load i16, ptr %i.dj, align 8, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  br label %bb.eb

bb.ac:                                            ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  store i64 24, ptr %i.aj, align 8
  %i.dl = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  br label %bb.t

bb.ad:                                            ; preds = %bb.f
  %i.dm = add i64 %i.au, 1
  store i64 %i.dm, ptr %i.ao, align 8, !alias.scope !1929
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  store ptr %1, ptr %i.ab, align 8, !noalias !1930
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i8 1, ptr %i.dn, align 8, !noalias !1930
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !1931
  call fastcc void @_RINvNvXs9_NtCs6MoqnCnVQOT_10serde_json2deINtB8_9MapAccesspENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess13next_key_seed12has_next_keyNtNtBa_4read7StrReadECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.w, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ab), !noalias !1932
  %i.do = load i8, ptr %i.w, align 8, !range !9, !noalias !1931, !noundef !7
  %i.dp = trunc nuw i8 %i.do to i1
  br i1 %i.dp, label %._crit_edge.i, label %.lr.ph.i22

.lr.ph.i22:                                       ; preds = %bb.ad
  %i.dq = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  %i.dr = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.ds = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.z, i64 2
  %i.du = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  br label %bb.ae

._crit_edge.i:                                    ; preds = %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess10next_valueNtNtB18_11ignored_any10IgnoredAnyECsbNLsQi0JuJ4_5tgrep.exit.i, %bb.ad
  %i.dw = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8, !noalias !1933, !nonnull !7, !align !22, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !1933
  br label %_RINvXs0_NvXNvNtCsbNLsQi0JuJ4_5tgrep5serves_1__NtBb_10ServerInfoNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB11_7Visitor9visit_mapINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB2F_4read7StrReadEEBd_.exit

bb.ae:                                            ; preds = %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess10next_valueNtNtB18_11ignored_any10IgnoredAnyECsbNLsQi0JuJ4_5tgrep.exit.i, %.lr.ph.i22
  %.sroa.04.0306.i = phi i32 [ 0, %.lr.ph.i22 ], [ %.sroa.04.1.i, %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess10next_valueNtNtB18_11ignored_any10IgnoredAnyECsbNLsQi0JuJ4_5tgrep.exit.i ] ; 5 uses
  %.sroa.4.0305.i = phi i32 [ undef, %.lr.ph.i22 ], [ %.sroa.4.1.i, %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess10next_valueNtNtB18_11ignored_any10IgnoredAnyECsbNLsQi0JuJ4_5tgrep.exit.i ] ; 4 uses
  %.sroa.09.0304.i = phi i16 [ 0, %.lr.ph.i22 ], [ %.sroa.09.1.i, %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess10next_valueNtNtB18_11ignored_any10IgnoredAnyECsbNLsQi0JuJ4_5tgrep.exit.i ] ; 5 uses
  %.sroa.411.0303.i = phi i16 [ undef, %.lr.ph.i22 ], [ %.sroa.411.1.i, %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess10next_valueNtNtB18_11ignored_any10IgnoredAnyECsbNLsQi0JuJ4_5tgrep.exit.i ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1934)
  call void @llvm.experimental.noalias.scope.decl(metadata !1935)
  %i.dy = load i8, ptr %i.dq, align 1, !range !9, !noalias !1933, !noundef !7
  %i.dz = trunc nuw i8 %i.dy to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !1933
  br i1 %i.dz, label %bb.af, label %bb.ao

bb.af:                                            ; preds = %bb.ae
  %i.ea = load ptr, ptr %i.ab, align 8, !alias.scope !1936, !noalias !1937, !nonnull !7, !align !22, !noundef !7 ; 35 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1938)
  call void @llvm.experimental.noalias.scope.decl(metadata !1939)
  call void @llvm.experimental.noalias.scope.decl(metadata !1940)
  call void @llvm.experimental.noalias.scope.decl(metadata !1941)
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 24 ; 8 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 40 ; 38 uses
  %i.ed = load i64, ptr %i.ec, align 8, !alias.scope !1942, !noalias !1943, !noundef !7
  %i.ee = add i64 %i.ed, 1
  store i64 %i.ee, ptr %i.ec, align 8, !alias.scope !1942, !noalias !1943
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ea, i64 16 ; 6 uses
  store i64 0, ptr %i.ef, align 8, !alias.scope !1944, !noalias !1943
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !1945
  call void @_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read9parse_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.v, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.eb, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.ea), !noalias !1943
  %i.eg = load i64, ptr %i.v, align 8, !range !15, !noalias !1945, !noundef !7 ; 2 uses
  %i.eh = icmp eq i64 %i.eg, 2
  %i.ei = load ptr, ptr %i.dr, align 8, !noalias !1945 ; 9 uses
  br i1 %i.eh, label %bb.an, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %.sroa.4.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !1945 ; 2 uses
  %i.ej = trunc nuw i64 %i.eg to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ei) ]
  br i1 %i.ej, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  switch i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, label %bb.ar [
    i64 3, label %bb.ai
    i64 4, label %bb.aj
  ]

bb.ai:                                            ; preds = %bb.ah
  %i.ek = load i16, ptr %i.ei, align 1
  %i.el = xor i16 %i.ek, 26992
  %i.em = getelementptr i8, ptr %i.ei, i64 2
  %i.en = load i8, ptr %i.em, align 1
  %i.eo = zext i8 %i.en to i16
  %i.ep = xor i16 %i.eo, 100
  %i.eq = or i16 %i.el, %i.ep
  %i.er = icmp ne i16 %i.eq, 0
  %i.es = zext i1 %i.er to i32
  %i.et = icmp eq i32 %i.es, 0
  br i1 %i.et, label %bb.ap, label %bb.ar

bb.aj:                                            ; preds = %bb.ah
  %i.eu = load i32, ptr %i.ei, align 1
  %i.ev = icmp ne i32 %i.eu, 1953656688
  %i.ew = zext i1 %i.ev to i32
  %i.ex = icmp eq i32 %i.ew, 0
  br i1 %i.ex, label %bb.aq, label %bb.ar

bb.ak:                                            ; preds = %bb.ag
  switch i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, label %bb.ar [
    i64 3, label %bb.al
    i64 4, label %bb.am
  ]

bb.al:                                            ; preds = %bb.ak
  %i.ey = load i16, ptr %i.ei, align 1
  %i.ez = xor i16 %i.ey, 26992
  %i.fa = getelementptr i8, ptr %i.ei, i64 2
  %i.fb = load i8, ptr %i.fa, align 1
  %i.fc = zext i8 %i.fb to i16
  %i.fd = xor i16 %i.fc, 100
  %i.fe = or i16 %i.ez, %i.fd
  %i.ff = icmp ne i16 %i.fe, 0
  %i.fg = zext i1 %i.ff to i32
  %i.fh = icmp eq i32 %i.fg, 0
  br i1 %i.fh, label %bb.ap, label %bb.ar

bb.am:                                            ; preds = %bb.ak
  %i.fi = load i32, ptr %i.ei, align 1
  %i.fj = icmp ne i32 %i.fi, 1953656688
  %i.fk = zext i1 %i.fj to i32
  %i.fl = icmp eq i32 %i.fk, 0
  br i1 %i.fl, label %bb.aq, label %bb.ar

bb.an:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !1945
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ei) ]
  br label %_RINvXs0_NvXNvNtCsbNLsQi0JuJ4_5tgrep5serves_1__NtBb_10ServerInfoNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB11_7Visitor9visit_mapINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB2F_4read7StrReadEEBd_.exit

bb.ao:                                            ; preds = %bb.ae
  %i.fm = trunc nuw i32 %.sroa.04.0306.i to i1
  br i1 %i.fm, label %bb.dp, label %bb.dm

bb.ap:                                            ; preds = %bb.al, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !1945
  %i.fn = icmp eq i32 %.sroa.04.0306.i, 1
  br i1 %i.fn, label %bb.de, label %bb.da, !prof !11

bb.aq:                                            ; preds = %bb.am, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !1945
  %i.fo = icmp eq i16 %.sroa.09.0304.i, 1
  br i1 %i.fo, label %bb.dk, label %bb.dg, !prof !11

bb.ar:                                            ; preds = %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !1945
  call void @llvm.experimental.noalias.scope.decl(metadata !1946)
  call void @llvm.experimental.noalias.scope.decl(metadata !1947)
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ea, i64 32 ; 3 uses
  %i.fq = load i64, ptr %i.fp, align 8, !alias.scope !1948, !noalias !1949, !noundef !7 ; 4 uses
  %.promoted.i.i.i.i.i = load i64, ptr %i.ec, align 8, !alias.scope !1950, !noalias !1951 ; 2 uses
  %i.fr = icmp ult i64 %.promoted.i.i.i.i.i, %i.fq
  br i1 %i.fr, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ar
  %i.fs = load ptr, ptr %i.eb, align 8, !alias.scope !1948, !noalias !1949, !nonnull !7, !noundef !7 ; 2 uses
  br label %bb.as

bb.as:                                            ; preds = %bb.at, %.lr.ph.i.i.i.i.i
  %i.ft = phi i64 [ %.promoted.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.fw, %bb.at ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1952)
  call void @llvm.experimental.noalias.scope.decl(metadata !1953)
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.ft
  %i.fv = load i8, ptr %i.fu, align 1, !noalias !1954, !noundef !7
  switch i8 %i.fv, label %bb.au [
    i8 32, label %bb.at
    i8 10, label %bb.at
    i8 9, label %bb.at
    i8 13, label %bb.at
    i8 58, label %bb.av
  ], !prof !29

bb.at:                                            ; preds = %bb.as, %bb.as, %bb.as, %bb.as
  %i.fw = add i64 %i.ft, 1                        ; 3 uses
  store i64 %i.fw, ptr %i.ec, align 8, !alias.scope !1955, !noalias !1951
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.fw, %i.fq
  br i1 %exitcond.not.i.i.i.i.i, label %.loopexit.i.i.i.i, label %bb.as

.loopexit.i.i.i.i:                                ; preds = %bb.ar, %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !1956
  store i64 3, ptr %i.t, align 8, !noalias !1956
  %i.fx = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ea, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.t), !noalias !1957
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !1956
  br label %_RINvXs0_NvXNvNtCsbNLsQi0JuJ4_5tgrep5serves_1__NtBb_10ServerInfoNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB11_7Visitor9visit_mapINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB2F_4read7StrReadEEBd_.exit

bb.au:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !1956
  store i64 6, ptr %i.u, align 8, !noalias !1956
  %i.fy = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ea, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.u), !noalias !1957
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !1956
  br label %_RINvXs0_NvXNvNtCsbNLsQi0JuJ4_5tgrep5serves_1__NtBb_10ServerInfoNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB11_7Visitor9visit_mapINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB2F_4read7StrReadEEBd_.exit

bb.av:                                            ; preds = %bb.as
  %i.fz = add i64 %i.ft, 1                        ; 3 uses
  store i64 %i.fz, ptr %i.ec, align 8, !alias.scope !1958, !noalias !1957
  call void @llvm.experimental.noalias.scope.decl(metadata !1959)
  call void @llvm.experimental.noalias.scope.decl(metadata !1960)
  call void @llvm.experimental.noalias.scope.decl(metadata !1961)
  call void @llvm.experimental.noalias.scope.decl(metadata !1962)
  store i64 0, ptr %i.ef, align 8, !alias.scope !1963, !noalias !1957
  %i.ga = icmp ult i64 %i.fz, %i.fq
  br i1 %i.ga, label %.lr.ph.i.lr.ph.i.i.i.i.i.i.i, label %.loopexit130.i.i.i.i.i.i.i

.lr.ph.i.lr.ph.i.i.i.i.i.i.i:                     ; preds = %bb.av
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8 ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.cw, %.lr.ph.i.lr.ph.i.i.i.i.i.i.i
  %i.gc = phi ptr [ %i.fs, %.lr.ph.i.lr.ph.i.i.i.i.i.i.i ], [ %i.kd, %bb.cw ] ; 11 uses
  %.promoted.i179.i.i.i.i.i.i.i = phi i64 [ %i.fz, %.lr.ph.i.lr.ph.i.i.i.i.i.i.i ], [ %.promoted.i.i.i.i.i.i.i.i, %bb.cw ]
  %i.gd = phi i64 [ %i.fq, %.lr.ph.i.lr.ph.i.i.i.i.i.i.i ], [ %i.kc, %bb.cw ] ; 7 uses
  %.sroa.7.0178.i.i.i.i.i.i.i = phi i8 [ undef, %.lr.ph.i.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.027.2163.i.i.i.i.i.i.i, %bb.cw ] ; 2 uses
  %.sroa.039.0177.i.i.i.i.i.i.i = phi i1 [ false, %.lr.ph.i.lr.ph.i.i.i.i.i.i.i ], [ true, %bb.cw ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1964)
  br label %bb.aw

bb.aw:                                            ; preds = %bb.ax, %.lr.ph.i.i.i.i.i.i.i.i
  %i.ge = phi i64 [ %.promoted.i179.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.gh, %bb.ax ] ; 17 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.ge
  %i.gg = load i8, ptr %i.gf, align 1, !noalias !1965, !noundef !7 ; 3 uses
  switch i8 %i.gg, label %bb.ay [
    i8 32, label %bb.ax
    i8 10, label %bb.ax
    i8 9, label %bb.ax
    i8 13, label %bb.ax
    i8 110, label %bb.az
    i8 116, label %bb.bf
    i8 102, label %bb.bl
    i8 45, label %bb.bt
    i8 34, label %bb.bu
    i8 91, label %bb.bv
    i8 123, label %bb.bv
  ]

bb.ax:                                            ; preds = %bb.aw, %bb.aw, %bb.aw, %bb.aw
  %i.gh = add i64 %i.ge, 1                        ; 3 uses
  store i64 %i.gh, ptr %i.ec, align 8, !alias.scope !1966, !noalias !1967
  %exitcond.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.gh, %i.gd
  br i1 %exitcond.not.i.i.i.i.i.i.i.i, label %.loopexit130.i.i.i.i.i.i.i, label %bb.aw

.loopexit130.i.i.i.i.i.i.i:                       ; preds = %bb.av, %bb.cw, %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !1968
  store i64 5, ptr %i.s, align 8, !noalias !1968
  %i.gi = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ea, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.s), !noalias !1957
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1968
  br label %_RINvXs0_NvXNvNtCsbNLsQi0JuJ4_5tgrep5serves_1__NtBb_10ServerInfoNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB11_7Visitor9visit_mapINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB2F_4read7StrReadEEBd_.exit

bb.ay:                                            ; preds = %bb.aw
  %i.gj = add i8 %i.gg, -48
  %or.cond.i.i.i.i.i.i.i = icmp ult i8 %i.gj, 10
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.bz, label %bb.by, !prof !26

bb.az:                                            ; preds = %bb.aw
  %i.gk = add i64 %i.ge, 1                        ; 4 uses
  store i64 %i.gk, ptr %i.ec, align 8, !alias.scope !1969, !noalias !1957
  call void @llvm.experimental.noalias.scope.decl(metadata !1970)
  %umax.i.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.gk, i64 %i.gd) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1971)
  call void @llvm.experimental.noalias.scope.decl(metadata !1972)
  %exitcond.not.i53.not.i.i.i.i.i.i.i = icmp ult i64 %i.gk, %i.gd
  br i1 %exitcond.not.i53.not.i.i.i.i.i.i.i, label %bb.ba, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i.i.i.i.i.i

bb.ba:                                            ; preds = %bb.az
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.gk
  %i.gm = load i8, ptr %i.gl, align 1, !noalias !1973, !noundef !7
  %i.gn = add i64 %i.ge, 2                        ; 3 uses
  store i64 %i.gn, ptr %i.ec, align 8, !alias.scope !1974, !noalias !1975
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.gm, 117
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.bb, label %.loopexit246.i.i.i.i.i.i.i, !prof !27

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.experimental.noalias.scope.decl(metadata !1976)
  call void @llvm.experimental.noalias.scope.decl(metadata !1977)
  %exitcond.not.i53.1.i.i.i.i.i.i.i = icmp eq i64 %i.gn, %umax.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i53.1.i.i.i.i.i.i.i, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i.i.i.i.i.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.go = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.gn
  %i.gp = load i8, ptr %i.go, align 1, !noalias !1978, !noundef !7
  %i.gq = add i64 %i.ge, 3                        ; 3 uses
  store i64 %i.gq, ptr %i.ec, align 8, !alias.scope !1979, !noalias !1975
  %.not.i.1.i.i.i.i.i.i.i = icmp eq i8 %i.gp, 108
  br i1 %.not.i.1.i.i.i.i.i.i.i, label %bb.bd, label %.loopexit246.i.i.i.i.i.i.i, !prof !27

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.experimental.noalias.scope.decl(metadata !1980)
  call void @llvm.experimental.noalias.scope.decl(metadata !1981)
  %exitcond.not.i53.2.i.i.i.i.i.i.i = icmp eq i64 %i.gq, %umax.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i53.2.i.i.i.i.i.i.i, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i.i.i.i.i.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.gq
  %i.gs = load i8, ptr %i.gr, align 1, !noalias !1982, !noundef !7
  %i.gt = add i64 %i.ge, 4
  store i64 %i.gt, ptr %i.ec, align 8, !alias.scope !1983, !noalias !1975
  %.not.i.2.i.i.i.i.i.i.i = icmp eq i8 %i.gs, 108
  br i1 %.not.i.2.i.i.i.i.i.i.i, label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsbNLsQi0JuJ4_5tgrep.exit.i.i.i.i.i.i.i, label %.loopexit246.i.i.i.i.i.i.i, !prof !27

_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i.i.i.i.i.i: ; preds = %bb.bd, %bb.bb, %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1984
  store i64 5, ptr %i.k, align 8, !noalias !1984
  %i.gu = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ea, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.k), !noalias !1985
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1984
  br label %_RINvXs0_NvXNvNtCsbNLsQi0JuJ4_5tgrep5serves_1__NtBb_10ServerInfoNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB11_7Visitor9visit_mapINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB2F_4read7StrReadEEBd_.exit

.loopexit246.i.i.i.i.i.i.i:                       ; preds = %bb.be, %bb.bc, %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1984
  store i64 9, ptr %i.j, align 8, !noalias !1984
  %i.gv = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ea, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.j), !noalias !1985
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1984
  br label %_RINvXs0_NvXNvNtCsbNLsQi0JuJ4_5tgrep5serves_1__NtBb_10ServerInfoNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB11_7Visitor9visit_mapINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB2F_4read7StrReadEEBd_.exit

bb.bf:                                            ; preds = %bb.aw
  %i.gw = add i64 %i.ge, 1                        ; 4 uses
  store i64 %i.gw, ptr %i.ec, align 8, !alias.scope !1986, !noalias !1957
  call void @llvm.experimental.noalias.scope.decl(metadata !1987)
  %umax.i56.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.gw, i64 %i.gd) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1988)
  call void @llvm.experimental.noalias.scope.decl(metadata !1989)
  %exitcond.not.i58.not.i.i.i.i.i.i.i = icmp ult i64 %i.gw, %i.gd
  br i1 %exitcond.not.i58.not.i.i.i.i.i.i.i, label %bb.bg, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i62.i.i.i.i.i.i.i

bb.bg:                                            ; preds = %bb.bf
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.gw
  %i.gy = load i8, ptr %i.gx, align 1, !noalias !1990, !noundef !7
  %i.gz = add i64 %i.ge, 2                        ; 3 uses
  store i64 %i.gz, ptr %i.ec, align 8, !alias.scope !1991, !noalias !1992
  %.not.i59.i.i.i.i.i.i.i = icmp eq i8 %i.gy, 114
  br i1 %.not.i59.i.i.i.i.i.i.i, label %bb.bh, label %.loopexit239.i.i.i.i.i.i.i, !prof !27

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.experimental.noalias.scope.decl(metadata !1993)
  call void @llvm.experimental.noalias.scope.decl(metadata !1994)
  %exitcond.not.i58.1.i.i.i.i.i.i.i = icmp eq i64 %i.gz, %umax.i56.i.i.i.i.i.i.i
  br i1 %exitcond.not.i58.1.i.i.i.i.i.i.i, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i62.i.i.i.i.i.i.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.gz
  %i.hb = load i8, ptr %i.ha, align 1, !noalias !1995, !noundef !7
  %i.hc = add i64 %i.ge, 3                        ; 3 uses
  store i64 %i.hc, ptr %i.ec, align 8, !alias.scope !1996, !noalias !1992
  %.not.i59.1.i.i.i.i.i.i.i = icmp eq i8 %i.hb, 117
  br i1 %.not.i59.1.i.i.i.i.i.i.i, label %bb.bj, label %.loopexit239.i.i.i.i.i.i.i, !prof !27

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.experimental.noalias.scope.decl(metadata !1997)
  call void @llvm.experimental.noalias.scope.decl(metadata !1998)
  %exitcond.not.i58.2.i.i.i.i.i.i.i = icmp eq i64 %i.hc, %umax.i56.i.i.i.i.i.i.i
  br i1 %exitcond.not.i58.2.i.i.i.i.i.i.i, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i62.i.i.i.i.i.i.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.hc
  %i.he = load i8, ptr %i.hd, align 1, !noalias !1999, !noundef !7
  %i.hf = add i64 %i.ge, 4
  store i64 %i.hf, ptr %i.ec, align 8, !alias.scope !2000, !noalias !1992
  %.not.i59.2.i.i.i.i.i.i.i = icmp eq i8 %i.he, 101
  br i1 %.not.i59.2.i.i.i.i.i.i.i, label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsbNLsQi0JuJ4_5tgrep.exit.i.i.i.i.i.i.i, label %.loopexit239.i.i.i.i.i.i.i, !prof !27

_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i62.i.i.i.i.i.i.i: ; preds = %bb.bj, %bb.bh, %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2001
  store i64 5, ptr %i.i, align 8, !noalias !2001
  %i.hg = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ea, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.i), !noalias !2002
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2001
  br label %_RINvXs0_NvXNvNtCsbNLsQi0JuJ4_5tgrep5serves_1__NtBb_10ServerInfoNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB11_7Visitor9visit_mapINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB2F_4read7StrReadEEBd_.exit

.loopexit239.i.i.i.i.i.i.i:                       ; preds = %bb.bk, %bb.bi, %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2001
  store i64 9, ptr %i.h, align 8, !noalias !2001
  %i.hh = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ea, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.h), !noalias !2002
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2001
  br label %_RINvXs0_NvXNvNtCsbNLsQi0JuJ4_5tgrep5serves_1__NtBb_10ServerInfoNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB11_7Visitor9visit_mapINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB2F_4read7StrReadEEBd_.exit

bb.bl:                                            ; preds = %bb.aw
  %i.hi = add i64 %i.ge, 1                        ; 4 uses
  store i64 %i.hi, ptr %i.ec, align 8, !alias.scope !2003, !noalias !1957
  call void @llvm.experimental.noalias.scope.decl(metadata !2004)
  %umax.i65.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.hi, i64 %i.gd) ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2005)
  call void @llvm.experimental.noalias.scope.decl(metadata !2006)
  %exitcond.not.i67.not.i.i.i.i.i.i.i = icmp ult i64 %i.hi, %i.gd
  br i1 %exitcond.not.i67.not.i.i.i.i.i.i.i, label %bb.bm, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i71.i.i.i.i.i.i.i

bb.bm:                                            ; preds = %bb.bl
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.hi
  %i.hk = load i8, ptr %i.hj, align 1, !noalias !2007, !noundef !7
  %i.hl = add i64 %i.ge, 2                        ; 3 uses
  store i64 %i.hl, ptr %i.ec, align 8, !alias.scope !2008, !noalias !2009
  %.not.i68.i.i.i.i.i.i.i = icmp eq i8 %i.hk, 97
  br i1 %.not.i68.i.i.i.i.i.i.i, label %bb.bn, label %.loopexit232.i.i.i.i.i.i.i, !prof !27

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.experimental.noalias.scope.decl(metadata !2010)
  call void @llvm.experimental.noalias.scope.decl(metadata !2011)
  %exitcond.not.i67.1.i.i.i.i.i.i.i = icmp eq i64 %i.hl, %umax.i65.i.i.i.i.i.i.i
  br i1 %exitcond.not.i67.1.i.i.i.i.i.i.i, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i71.i.i.i.i.i.i.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.hl
  %i.hn = load i8, ptr %i.hm, align 1, !noalias !2012, !noundef !7
  %i.ho = add i64 %i.ge, 3                        ; 3 uses
  store i64 %i.ho, ptr %i.ec, align 8, !alias.scope !2013, !noalias !2009
  %.not.i68.1.i.i.i.i.i.i.i = icmp eq i8 %i.hn, 108
  br i1 %.not.i68.1.i.i.i.i.i.i.i, label %bb.bp, label %.loopexit232.i.i.i.i.i.i.i, !prof !27

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.experimental.noalias.scope.decl(metadata !2014)
  call void @llvm.experimental.noalias.scope.decl(metadata !2015)
  %exitcond.not.i67.2.i.i.i.i.i.i.i = icmp eq i64 %i.ho, %umax.i65.i.i.i.i.i.i.i
  br i1 %exitcond.not.i67.2.i.i.i.i.i.i.i, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i71.i.i.i.i.i.i.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.hp = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.ho
  %i.hq = load i8, ptr %i.hp, align 1, !noalias !2016, !noundef !7
  %i.hr = add i64 %i.ge, 4                        ; 3 uses
  store i64 %i.hr, ptr %i.ec, align 8, !alias.scope !2017, !noalias !2009
  %.not.i68.2.i.i.i.i.i.i.i = icmp eq i8 %i.hq, 115
  br i1 %.not.i68.2.i.i.i.i.i.i.i, label %bb.br, label %.loopexit232.i.i.i.i.i.i.i, !prof !27

bb.br:                                            ; preds = %bb.bq
  call void @llvm.experimental.noalias.scope.decl(metadata !2018)
  call void @llvm.experimental.noalias.scope.decl(metadata !2019)
  %exitcond.not.i67.3.i.i.i.i.i.i.i = icmp eq i64 %i.hr, %umax.i65.i.i.i.i.i.i.i
  br i1 %exitcond.not.i67.3.i.i.i.i.i.i.i, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i71.i.i.i.i.i.i.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.hs = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.hr
  %i.ht = load i8, ptr %i.hs, align 1, !noalias !2020, !noundef !7
  %i.hu = add i64 %i.ge, 5
  store i64 %i.hu, ptr %i.ec, align 8, !alias.scope !2021, !noalias !2009
  %.not.i68.3.i.i.i.i.i.i.i = icmp eq i8 %i.ht, 101
  br i1 %.not.i68.3.i.i.i.i.i.i.i, label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsbNLsQi0JuJ4_5tgrep.exit.i.i.i.i.i.i.i, label %.loopexit232.i.i.i.i.i.i.i, !prof !27

_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i71.i.i.i.i.i.i.i: ; preds = %bb.br, %bb.bp, %bb.bn, %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2022
  store i64 5, ptr %i.g, align 8, !noalias !2022
  %i.hv = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ea, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.g), !noalias !2023
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2022
  br label %_RINvXs0_NvXNvNtCsbNLsQi0JuJ4_5tgrep5serves_1__NtBb_10ServerInfoNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB11_7Visitor9visit_mapINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB2F_4read7StrReadEEBd_.exit

.loopexit232.i.i.i.i.i.i.i:                       ; preds = %bb.bs, %bb.bq, %bb.bo, %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2022
  store i64 9, ptr %i.f, align 8, !noalias !2022
  %i.hw = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ea, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f), !noalias !2023
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2022
  br label %_RINvXs0_NvXNvNtCsbNLsQi0JuJ4_5tgrep5serves_1__NtBb_10ServerInfoNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB11_7Visitor9visit_mapINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB2F_4read7StrReadEEBd_.exit

bb.bt:                                            ; preds = %bb.aw
  %i.hx = add i64 %i.ge, 1
  store i64 %i.hx, ptr %i.ec, align 8, !alias.scope !2024, !noalias !1957
  %i.hy = call fastcc noundef align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_integerCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.ea), !noalias !1957 ; 2 uses
  %.not45.i.i.i.i.i.i.i = icmp eq ptr %i.hy, null
  br i1 %.not45.i.i.i.i.i.i.i, label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsbNLsQi0JuJ4_5tgrep.exit.i.i.i.i.i.i.i, label %_RINvXs0_NvXNvNtCsbNLsQi0JuJ4_5tgrep5serves_1__NtBb_10ServerInfoNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB11_7Visitor9visit_mapINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB2F_4read7StrReadEEBd_.exit

bb.bu:                                            ; preds = %bb.aw
  %i.hz = add i64 %i.ge, 1
  store i64 %i.hz, ptr %i.ec, align 8, !alias.scope !2025, !noalias !1957
  %i.ia = call noundef align 8 ptr @_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read10ignore_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.eb), !noalias !1957 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ia, null
  br i1 %.not.i.i.i.i.i.i.i, label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsbNLsQi0JuJ4_5tgrep.exit.i.i.i.i.i.i.i, label %_RINvXs0_NvXNvNtCsbNLsQi0JuJ4_5tgrep5serves_1__NtBb_10ServerInfoNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB11_7Visitor9visit_mapINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB2F_4read7StrReadEEBd_.exit

bb.bv:                                            ; preds = %bb.aw, %bb.aw
  call void @_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VechE14extend_trustedINtNtCsf3Ta7LF998c_4core6option8IntoIterhEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.ea, i1 noundef zeroext %.sroa.039.0177.i.i.i.i.i.i.i, i8 %.sroa.7.0178.i.i.i.i.i.i.i), !noalias !1957
  %i.ib = load i64, ptr %i.ec, align 8, !alias.scope !2026, !noalias !1957, !noundef !7
  %i.ic = add i64 %i.ib, 1
  store i64 %i.ic, ptr %i.ec, align 8, !alias.scope !2026, !noalias !1957
  br label %bb.bx

_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsbNLsQi0JuJ4_5tgrep.exit.i.i.i.i.i.i.i: ; preds = %bb.bz, %bb.bu, %bb.bt, %bb.bs, %bb.bk, %bb.be
  br i1 %.sroa.039.0177.i.i.i.i.i.i.i, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsbNLsQi0JuJ4_5tgrep.exit.i.i.i.i.i.i.i
  %i.id = load i64, ptr %i.ef, align 8, !alias.scope !1963, !noalias !1957, !noundef !7 ; 2 uses
  %i.ie = icmp eq i64 %i.id, 0
  br i1 %i.ie, label %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess10next_valueNtNtB18_11ignored_any10IgnoredAnyECsbNLsQi0JuJ4_5tgrep.exit.i, label %bb.ca

bb.bx:                                            ; preds = %bb.ca, %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsbNLsQi0JuJ4_5tgrep.exit.i.i.i.i.i.i.i, %bb.bv
  %.sroa.027.0.i.i.i.i.i.i.i = phi i8 [ %i.gg, %bb.bv ], [ %i.ir, %bb.ca ], [ %.sroa.7.0178.i.i.i.i.i.i.i, %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsbNLsQi0JuJ4_5tgrep.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.042.0.i.i.i.i.i.i.i = phi i1 [ false, %bb.bv ], [ true, %bb.ca ], [ true, %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsbNLsQi0JuJ4_5tgrep.exit.i.i.i.i.i.i.i ]
  %i.if = load i64, ptr %i.fp, align 8, !alias.scope !2027, !noalias !2028, !noundef !7 ; 6 uses
  %.promoted.i73162.i.i.i.i.i.i.i = load i64, ptr %i.ec, align 8, !alias.scope !2029, !noalias !2030 ; 2 uses
  %i.ig = icmp ult i64 %.promoted.i73162.i.i.i.i.i.i.i, %i.if
  br i1 %i.ig, label %.lr.ph.i75.lr.ph.i.i.i.i.i.i.i, label %.loopexit123.i.i.i.i.i.i.i

.lr.ph.i75.lr.ph.i.i.i.i.i.i.i:                   ; preds = %bb.bx
  %.promoted.i.i.i.i.i.i.i = load i64, ptr %i.ef, align 8, !alias.scope !1963, !noalias !1957
  %i.ih = load ptr, ptr %i.eb, align 8, !alias.scope !2027, !noalias !2028, !nonnull !7, !noundef !7 ; 3 uses
  %i.ii = load i64, ptr %i.ea, align 8, !range !19, !alias.scope !1963, !noalias !1957
  %i.ij = load ptr, ptr %i.gb, align 8, !alias.scope !1963, !noalias !1957, !nonnull !7
  br label %.lr.ph.i75.i.i.i.i.i.i.i

bb.by:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !1968
  store i64 10, ptr %i.r, align 8, !noalias !1968
  %i.ik = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ea, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.r), !noalias !1957
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !1968
  br label %_RINvXs0_NvXNvNtCsbNLsQi0JuJ4_5tgrep5serves_1__NtBb_10ServerInfoNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB11_7Visitor9visit_mapINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB2F_4read7StrReadEEBd_.exit

bb.bz:                                            ; preds = %bb.ay
  %i.il = call fastcc noundef align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_integerCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.ea), !noalias !1957 ; 2 uses
  %.not49.i.i.i.i.i.i.i = icmp eq ptr %i.il, null
  br i1 %.not49.i.i.i.i.i.i.i, label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsbNLsQi0JuJ4_5tgrep.exit.i.i.i.i.i.i.i, label %_RINvXs0_NvXNvNtCsbNLsQi0JuJ4_5tgrep5serves_1__NtBb_10ServerInfoNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB11_7Visitor9visit_mapINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB2F_4read7StrReadEEBd_.exit

bb.ca:                                            ; preds = %bb.bw
  %i.im = add i64 %i.id, -1                       ; 3 uses
  store i64 %i.im, ptr %i.ef, align 8, !alias.scope !1963, !noalias !1957
  %i.in = load i64, ptr %i.ea, align 8, !range !19, !alias.scope !1963, !noalias !1957, !noundef !7
  %i.io = icmp ult i64 %i.im, %i.in
  call void @llvm.assume(i1 %i.io)
  %i.ip = load ptr, ptr %i.gb, align 8, !alias.scope !1963, !noalias !1957, !nonnull !7, !noundef !7
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 %i.im
  %i.ir = load i8, ptr %i.iq, align 1, !noalias !1957, !noundef !7
  br label %bb.bx

.lr.ph.i75.i.i.i.i.i.i.i:                         ; preds = %bb.cl, %.lr.ph.i75.lr.ph.i.i.i.i.i.i.i
  %.promoted.i73170.i.i.i.i.i.i.i = phi i64 [ %.promoted.i73162.i.i.i.i.i.i.i, %.lr.ph.i75.lr.ph.i.i.i.i.i.i.i ], [ %i.jc, %bb.cl ]
  %.sroa.042.2164.i.i.i.i.i.i.i = phi i1 [ %.sroa.042.0.i.i.i.i.i.i.i, %.lr.ph.i75.lr.ph.i.i.i.i.i.i.i ], [ true, %bb.cl ] ; 2 uses
  %.sroa.027.2163.i.i.i.i.i.i.i = phi i8 [ %.sroa.027.0.i.i.i.i.i.i.i, %.lr.ph.i75.lr.ph.i.i.i.i.i.i.i ], [ %i.jh, %bb.cl ] ; 6 uses
  %i.is = phi i64 [ %.promoted.i.i.i.i.i.i.i, %.lr.ph.i75.lr.ph.i.i.i.i.i.i.i ], [ %i.je, %bb.cl ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2031)
  br label %bb.cb

bb.cb:                                            ; preds = %bb.cc, %.lr.ph.i75.i.i.i.i.i.i.i
  %i.it = phi i64 [ %.promoted.i73170.i.i.i.i.i.i.i, %.lr.ph.i75.i.i.i.i.i.i.i ], [ %i.iw, %bb.cc ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2032)
  call void @llvm.experimental.noalias.scope.decl(metadata !2033)
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ih, i64 %i.it
  %i.iv = load i8, ptr %i.iu, align 1, !noalias !2034, !noundef !7
  switch i8 %i.iv, label %.loopexit.i.i.i.i.i.i.i [
    i8 32, label %bb.cc
    i8 10, label %bb.cc
    i8 9, label %bb.cc
    i8 13, label %bb.cc
    i8 44, label %bb.cg
    i8 93, label %bb.ch
    i8 125, label %bb.ci
  ]

bb.cc:                                            ; preds = %bb.cb, %bb.cb, %bb.cb, %bb.cb
  %i.iw = add i64 %i.it, 1                        ; 3 uses
  store i64 %i.iw, ptr %i.ec, align 8, !alias.scope !2035, !noalias !2030
  %exitcond.not.i76.i.i.i.i.i.i.i = icmp eq i64 %i.iw, %i.if
  br i1 %exitcond.not.i76.i.i.i.i.i.i.i, label %.loopexit123.i.i.i.i.i.i.i, label %bb.cb

.loopexit123.i.i.i.i.i.i.i:                       ; preds = %bb.bx, %bb.cl, %bb.cc
  %.sroa.027.2159.i.i.i.i.i.i.i = phi i8 [ %i.jh, %bb.cl ], [ %.sroa.027.2163.i.i.i.i.i.i.i, %bb.cc ], [ %.sroa.027.0.i.i.i.i.i.i.i, %bb.bx ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !1968
  switch i8 %.sroa.027.2159.i.i.i.i.i.i.i, label %bb.cd [
    i8 91, label %bb.cf
    i8 123, label %bb.ce
  ]

bb.cd:                                            ; preds = %.loopexit123.i.i.i.i.i.i.i
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @82) #23, !noalias !1957
  unreachable

bb.ce:                                            ; preds = %.loopexit123.i.i.i.i.i.i.i
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %.loopexit123.i.i.i.i.i.i.i
  %storemerge.i.i.i.i.i.i.i = phi i64 [ 3, %bb.ce ], [ 2, %.loopexit123.i.i.i.i.i.i.i ]
  store i64 %storemerge.i.i.i.i.i.i.i, ptr %i.p, align 8, !noalias !1968
  %i.ix = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ea, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.p), !noalias !1957
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1968
  br label %_RINvXs0_NvXNvNtCsbNLsQi0JuJ4_5tgrep5serves_1__NtBb_10ServerInfoNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB11_7Visitor9visit_mapINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB2F_4read7StrReadEEBd_.exit

.loopexit.i.i.i.i.i.i.i:                          ; preds = %bb.ci, %bb.ch, %bb.cb
  br i1 %.sroa.042.2164.i.i.i.i.i.i.i, label %bb.cm, label %.critedge.i.i.i.i.i.i.i, !prof !11

bb.cg:                                            ; preds = %bb.cb
  br i1 %.sroa.042.2164.i.i.i.i.i.i.i, label %bb.cj, label %.critedge.i.i.i.i.i.i.i

bb.ch:                                            ; preds = %bb.cb
  %i.iy = icmp eq i8 %.sroa.027.2163.i.i.i.i.i.i.i, 91
  br i1 %i.iy, label %bb.ck, label %.loopexit.i.i.i.i.i.i.i

bb.ci:                                            ; preds = %bb.cb
  %i.iz = icmp eq i8 %.sroa.027.2163.i.i.i.i.i.i.i, 123
  br i1 %i.iz, label %bb.ck, label %.loopexit.i.i.i.i.i.i.i

bb.cj:                                            ; preds = %bb.cg
  %i.ja = add i64 %i.it, 1                        ; 2 uses
  store i64 %i.ja, ptr %i.ec, align 8, !alias.scope !2036, !noalias !1957
  br label %.critedge.i.i.i.i.i.i.i

.critedge.i.i.i.i.i.i.i:                          ; preds = %bb.cj, %bb.cg, %.loopexit.i.i.i.i.i.i.i
  %.promoted.i80.i.i.i.i.i.i.i = phi i64 [ %i.it, %bb.cg ], [ %i.it, %.loopexit.i.i.i.i.i.i.i ], [ %i.ja, %bb.cj ] ; 3 uses
  %i.jb = icmp eq i8 %.sroa.027.2163.i.i.i.i.i.i.i, 123
  br i1 %i.jb, label %bb.cn, label %bb.cw

bb.ck:                                            ; preds = %bb.ci, %bb.ch
  %i.jc = add i64 %i.it, 1                        ; 3 uses
  store i64 %i.jc, ptr %i.ec, align 8, !alias.scope !2037, !noalias !1957
  %i.jd = icmp eq i64 %i.is, 0
  br i1 %i.jd, label %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess10next_valueNtNtB18_11ignored_any10IgnoredAnyECsbNLsQi0JuJ4_5tgrep.exit.i, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.je = add i64 %i.is, -1                       ; 4 uses
  store i64 %i.je, ptr %i.ef, align 8, !alias.scope !1963, !noalias !1957
  %i.jf = icmp ult i64 %i.je, %i.ii
  call void @llvm.assume(i1 %i.jf)
  %i.jg = getelementptr inbounds nuw i8, ptr %i.ij, i64 %i.je
  %i.jh = load i8, ptr %i.jg, align 1, !noalias !1957, !noundef !7 ; 2 uses
  %i.ji = icmp ult i64 %i.jc, %i.if
  br i1 %i.ji, label %.lr.ph.i75.i.i.i.i.i.i.i, label %.loopexit123.i.i.i.i.i.i.i

bb.cm:                                            ; preds = %.loopexit.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !1968
  switch i8 %.sroa.027.2163.i.i.i.i.i.i.i, label %bb.cx [
    i8 91, label %bb.cz
    i8 123, label %bb.cy
  ]

bb.cn:                                            ; preds = %.critedge.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2038)
  %i.jj = icmp ult i64 %.promoted.i80.i.i.i.i.i.i.i, %i.if
  br i1 %i.jj, label %.lr.ph.i82.i.i.i.i.i.i.i, label %.loopexit125.i.i.i.i.i.i.i

.lr.ph.i82.i.i.i.i.i.i.i:                         ; preds = %bb.cn, %bb.co
  %i.jk = phi i64 [ %i.jn, %bb.co ], [ %.promoted.i80.i.i.i.i.i.i.i, %bb.cn ] ; 3 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ih, i64 %i.jk
  %i.jm = load i8, ptr %i.jl, align 1, !noalias !2039, !noundef !7
  switch i8 %i.jm, label %bb.cq [
    i8 32, label %bb.co
    i8 10, label %bb.co
    i8 9, label %bb.co
    i8 13, label %bb.co
    i8 34, label %bb.cp
  ], !prof !29

bb.co:                                            ; preds = %.lr.ph.i82.i.i.i.i.i.i.i, %.lr.ph.i82.i.i.i.i.i.i.i, %.lr.ph.i82.i.i.i.i.i.i.i, %.lr.ph.i82.i.i.i.i.i.i.i
  %i.jn = add i64 %i.jk, 1                        ; 3 uses
  store i64 %i.jn, ptr %i.ec, align 8, !alias.scope !2040, !noalias !2041
  %exitcond.not.i83.i.i.i.i.i.i.i = icmp eq i64 %i.jn, %i.if
  br i1 %exitcond.not.i83.i.i.i.i.i.i.i, label %.loopexit125.i.i.i.i.i.i.i, label %.lr.ph.i82.i.i.i.i.i.i.i

.loopexit125.i.i.i.i.i.i.i:                       ; preds = %bb.cn, %bb.co
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1968
  store i64 3, ptr %i.n, align 8, !noalias !1968
  %i.jo = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ea, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.n), !noalias !1957
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1968
  br label %_RINvXs0_NvXNvNtCsbNLsQi0JuJ4_5tgrep5serves_1__NtBb_10ServerInfoNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB11_7Visitor9visit_mapINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB2F_4read7StrReadEEBd_.exit

bb.cp:                                            ; preds = %.lr.ph.i82.i.i.i.i.i.i.i
  %i.jp = add i64 %i.jk, 1
  store i64 %i.jp, ptr %i.ec, align 8, !alias.scope !2042, !noalias !1957
  %i.jq = call noundef align 8 ptr @_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read10ignore_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.eb), !noalias !1957 ; 2 uses
  %.not50.i.i.i.i.i.i.i = icmp eq ptr %i.jq, null
  br i1 %.not50.i.i.i.i.i.i.i, label %bb.cr, label %_RINvXs0_NvXNvNtCsbNLsQi0JuJ4_5tgrep5serves_1__NtBb_10ServerInfoNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB11_7Visitor9visit_mapINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB2F_4read7StrReadEEBd_.exit

bb.cq:                                            ; preds = %.lr.ph.i82.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1968
  store i64 17, ptr %i.o, align 8, !noalias !1968
  %i.jr = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ea, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.o), !noalias !1957
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1968
  br label %_RINvXs0_NvXNvNtCsbNLsQi0JuJ4_5tgrep5serves_1__NtBb_10ServerInfoNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB11_7Visitor9visit_mapINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB2F_4read7StrReadEEBd_.exit

bb.cr:                                            ; preds = %bb.cp
  call void @llvm.experimental.noalias.scope.decl(metadata !2043)
  %i.js = load i64, ptr %i.fp, align 8, !alias.scope !2044, !noalias !2045, !noundef !7 ; 3 uses
  %.promoted.i87.i.i.i.i.i.i.i = load i64, ptr %i.ec, align 8, !alias.scope !2046, !noalias !2047 ; 2 uses
  %i.jt = icmp ult i64 %.promoted.i87.i.i.i.i.i.i.i, %i.js
  br i1 %i.jt, label %.lr.ph.i89.i.i.i.i.i.i.i, label %.loopexit124.i.i.i.i.i.i.i

.lr.ph.i89.i.i.i.i.i.i.i:                         ; preds = %bb.cr
  %i.ju = load ptr, ptr %i.eb, align 8, !alias.scope !2044, !noalias !2045, !nonnull !7, !noundef !7 ; 2 uses
  br label %bb.cs

bb.cs:                                            ; preds = %bb.ct, %.lr.ph.i89.i.i.i.i.i.i.i
  %i.jv = phi i64 [ %.promoted.i87.i.i.i.i.i.i.i, %.lr.ph.i89.i.i.i.i.i.i.i ], [ %i.jy, %bb.ct ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2048)
  call void @llvm.experimental.noalias.scope.decl(metadata !2049)
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ju, i64 %i.jv
  %i.jx = load i8, ptr %i.jw, align 1, !noalias !2050, !noundef !7
  switch i8 %i.jx, label %bb.cv [
    i8 32, label %bb.ct
    i8 10, label %bb.ct
    i8 9, label %bb.ct
    i8 13, label %bb.ct
    i8 58, label %bb.cu
  ], !prof !29

bb.ct:                                            ; preds = %bb.cs, %bb.cs, %bb.cs, %bb.cs
  %i.jy = add i64 %i.jv, 1                        ; 3 uses
  store i64 %i.jy, ptr %i.ec, align 8, !alias.scope !2051, !noalias !2047
  %exitcond.not.i90.i.i.i.i.i.i.i = icmp eq i64 %i.jy, %i.js
  br i1 %exitcond.not.i90.i.i.i.i.i.i.i, label %.loopexit124.i.i.i.i.i.i.i, label %bb.cs

.loopexit124.i.i.i.i.i.i.i:                       ; preds = %bb.cr, %bb.ct
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1968
  store i64 3, ptr %i.l, align 8, !noalias !1968
  %i.jz = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ea, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.l), !noalias !1957
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1968
  br label %_RINvXs0_NvXNvNtCsbNLsQi0JuJ4_5tgrep5serves_1__NtBb_10ServerInfoNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB11_7Visitor9visit_mapINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB2F_4read7StrReadEEBd_.exit

bb.cu:                                            ; preds = %bb.cs
  %i.ka = add i64 %i.jv, 1                        ; 2 uses
  store i64 %i.ka, ptr %i.ec, align 8, !alias.scope !2052, !noalias !1957
  br label %bb.cw

bb.cv:                                            ; preds = %bb.cs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1968
  store i64 6, ptr %i.m, align 8, !noalias !1968
  %i.kb = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ea, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.m), !noalias !1957
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1968
  br label %_RINvXs0_NvXNvNtCsbNLsQi0JuJ4_5tgrep5serves_1__NtBb_10ServerInfoNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB11_7Visitor9visit_mapINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB2F_4read7StrReadEEBd_.exit

bb.cw:                                            ; preds = %bb.cu, %.critedge.i.i.i.i.i.i.i
  %.promoted.i.i.i.i.i.i.i.i = phi i64 [ %.promoted.i80.i.i.i.i.i.i.i, %.critedge.i.i.i.i.i.i.i ], [ %i.ka, %bb.cu ] ; 2 uses
  %i.kc = phi i64 [ %i.if, %.critedge.i.i.i.i.i.i.i ], [ %i.js, %bb.cu ] ; 2 uses
  %i.kd = phi ptr [ %i.ih, %.critedge.i.i.i.i.i.i.i ], [ %i.ju, %bb.cu ]
  %i.ke = icmp ult i64 %.promoted.i.i.i.i.i.i.i.i, %i.kc
  br i1 %i.ke, label %.lr.ph.i.i.i.i.i.i.i.i, label %.loopexit130.i.i.i.i.i.i.i

bb.cx:                                            ; preds = %bb.cm
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @83) #23, !noalias !1957
  unreachable

bb.cy:                                            ; preds = %bb.cm
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cm
  %storemerge51.i.i.i.i.i.i.i = phi i64 [ 8, %bb.cy ], [ 7, %bb.cm ]
  store i64 %storemerge51.i.i.i.i.i.i.i, ptr %i.q, align 8, !noalias !1968
  %i.kf = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ea, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.q), !noalias !1957
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1968
  br label %_RINvXs0_NvXNvNtCsbNLsQi0JuJ4_5tgrep5serves_1__NtBb_10ServerInfoNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB11_7Visitor9visit_mapINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB2F_4read7StrReadEEBd_.exit

bb.da:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !1930
  call void @llvm.experimental.noalias.scope.decl(metadata !2053)
  call void @llvm.experimental.noalias.scope.decl(metadata !2054)
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ea, i64 32
  %i.kh = load i64, ptr %i.kg, align 8, !alias.scope !2055, !noalias !2056, !noundef !7 ; 2 uses
  %.promoted.i.i.i.i33.i = load i64, ptr %i.ec, align 8, !alias.scope !2057, !noalias !2058 ; 2 uses
  %i.ki = icmp ult i64 %.promoted.i.i.i.i33.i, %i.kh
  br i1 %i.ki, label %.lr.ph.i.i.i.i35.i, label %.loopexit.i.i.i34.i

.lr.ph.i.i.i.i35.i:                               ; preds = %bb.da
  %i.kj = load ptr, ptr %i.eb, align 8, !alias.scope !2055, !noalias !2056, !nonnull !7, !noundef !7
  br label %bb.db

bb.db:                                            ; preds = %bb.dc, %.lr.ph.i.i.i.i35.i
  %i.kk = phi i64 [ %.promoted.i.i.i.i33.i, %.lr.ph.i.i.i.i35.i ], [ %i.kn, %bb.dc ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2059)
  call void @llvm.experimental.noalias.scope.decl(metadata !2060)
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kj, i64 %i.kk
  %i.km = load i8, ptr %i.kl, align 1, !noalias !2061, !noundef !7
  switch i8 %i.km, label %bb.dd [
    i8 32, label %bb.dc
    i8 10, label %bb.dc
    i8 9, label %bb.dc
    i8 13, label %bb.dc
    i8 58, label %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess10next_valuemECsbNLsQi0JuJ4_5tgrep.exit.i
  ], !prof !29

bb.dc:                                            ; preds = %bb.db, %bb.db, %bb.db, %bb.db
  %i.kn = add i64 %i.kk, 1                        ; 3 uses
  store i64 %i.kn, ptr %i.ec, align 8, !alias.scope !2062, !noalias !2058
  %exitcond.not.i.i.i.i36.i = icmp eq i64 %i.kn, %i.kh
  br i1 %exitcond.not.i.i.i.i36.i, label %.loopexit.i.i.i34.i, label %bb.db

.loopexit.i.i.i34.i:                              ; preds = %bb.da, %bb.dc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2063
  store i64 3, ptr %i.d, align 8, !noalias !2063
  %i.ko = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ea, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.d), !noalias !2064
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2063
  br label %.loopexit593.i

bb.dd:                                            ; preds = %bb.db
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2063
  store i64 6, ptr %i.e, align 8, !noalias !2063
  %i.kp = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ea, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.e), !noalias !2064
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2063
  br label %.loopexit593.i

_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess10next_valuemECsbNLsQi0JuJ4_5tgrep.exit.i: ; preds = %bb.db
  %i.kq = add i64 %i.kk, 1
  store i64 %i.kq, ptr %i.ec, align 8, !alias.scope !2065, !noalias !2064
  call fastcc void @_RINvXs3_NtCs4ZeZeX9PAiK_10serde_core2deINtNtCsf3Ta7LF998c_4core6marker11PhantomDatamENtB6_15DeserializeSeed11deserializeQINtNtCs6MoqnCnVQOT_10serde_json2de12DeserializerNtNtB20_4read7StrReadEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(16) %i.aa, ptr noalias nofree noundef align 8 dereferenceable(56) %i.ea) #27, !noalias !1957
  %.pre551.i = load i32, ptr %i.aa, align 8, !range !13, !noalias !1930
  %i.kr = trunc nuw i32 %.pre551.i to i1
  br i1 %i.kr, label %.loopexit593.i.loopexit, label %bb.df

bb.de:                                            ; preds = %bb.ap
  %i.ks = call noundef nonnull align 8 ptr @_RNvYNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorNtNtCs4ZeZeX9PAiK_10serde_core2de5Error15duplicate_fieldCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @54, i64 noundef 3), !noalias !1957
  br label %_RINvXs0_NvXNvNtCsbNLsQi0JuJ4_5tgrep5serves_1__NtBb_10ServerInfoNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB11_7Visitor9visit_mapINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB2F_4read7StrReadEEBd_.exit

.loopexit593.i.loopexit:                          ; preds = %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess10next_valuemECsbNLsQi0JuJ4_5tgrep.exit.i
  %.pre639 = load ptr, ptr %i.du, align 8, !noalias !1930
  br label %.loopexit593.i

.loopexit593.i:                                   ; preds = %.loopexit.i.i.i34.i, %bb.dd, %.loopexit593.i.loopexit
  %i.kt = phi ptr [ %.pre639, %.loopexit593.i.loopexit ], [ %i.ko, %.loopexit.i.i.i34.i ], [ %i.kp, %bb.dd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !1930
  br label %_RINvXs0_NvXNvNtCsbNLsQi0JuJ4_5tgrep5serves_1__NtBb_10ServerInfoNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB11_7Visitor9visit_mapINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB2F_4read7StrReadEEBd_.exit

bb.df:                                            ; preds = %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess10next_valuemECsbNLsQi0JuJ4_5tgrep.exit.i
  %i.ku = load i32, ptr %i.dv, align 4, !noalias !1930, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !1930
  br label %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess10next_valueNtNtB18_11ignored_any10IgnoredAnyECsbNLsQi0JuJ4_5tgrep.exit.i

_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess10next_valueNtNtB18_11ignored_any10IgnoredAnyECsbNLsQi0JuJ4_5tgrep.exit.i: ; preds = %bb.bw, %bb.ck, %bb.dl, %bb.df
  %.sroa.411.1.i = phi i16 [ %.sroa.411.0303.i, %bb.df ], [ %i.ll, %bb.dl ], [ %.sroa.411.0303.i, %bb.ck ], [ %.sroa.411.0303.i, %bb.bw ]
  %.sroa.09.1.i = phi i16 [ %.sroa.09.0304.i, %bb.df ], [ 1, %bb.dl ], [ %.sroa.09.0304.i, %bb.ck ], [ %.sroa.09.0304.i, %bb.bw ]
  %.sroa.4.1.i = phi i32 [ %i.ku, %bb.df ], [ %.sroa.4.0305.i, %bb.dl ], [ %.sroa.4.0305.i, %bb.ck ], [ %.sroa.4.0305.i, %bb.bw ]
  %.sroa.04.1.i = phi i32 [ 1, %bb.df ], [ %.sroa.04.0306.i, %bb.dl ], [ %.sroa.04.0306.i, %bb.ck ], [ %.sroa.04.0306.i, %bb.bw ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !2066
  call fastcc void @_RINvNvXs9_NtCs6MoqnCnVQOT_10serde_json2deINtB8_9MapAccesspENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess13next_key_seed12has_next_keyNtNtBa_4read7StrReadECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.w, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ab), !noalias !1932
  %i.kv = load i8, ptr %i.w, align 8, !range !9, !noalias !2066, !noundef !7
  %i.kw = trunc nuw i8 %i.kv to i1
  br i1 %i.kw, label %._crit_edge.i, label %bb.ae

bb.dg:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !1930
  call void @llvm.experimental.noalias.scope.decl(metadata !2067)
  call void @llvm.experimental.noalias.scope.decl(metadata !2068)
  %i.kx = getelementptr inbounds nuw i8, ptr %i.ea, i64 32
  %i.ky = load i64, ptr %i.kx, align 8, !alias.scope !2069, !noalias !2070, !noundef !7 ; 2 uses
  %.promoted.i.i.i.i37.i = load i64, ptr %i.ec, align 8, !alias.scope !2071, !noalias !2072 ; 2 uses
  %i.kz = icmp ult i64 %.promoted.i.i.i.i37.i, %i.ky
  br i1 %i.kz, label %.lr.ph.i.i.i.i40.i, label %.loopexit.i.i.i38.i

.lr.ph.i.i.i.i40.i:                               ; preds = %bb.dg
  %i.la = load ptr, ptr %i.eb, align 8, !alias.scope !2069, !noalias !2070, !nonnull !7, !noundef !7
  br label %bb.dh

bb.dh:                                            ; preds = %bb.di, %.lr.ph.i.i.i.i40.i
  %i.lb = phi i64 [ %.promoted.i.i.i.i37.i, %.lr.ph.i.i.i.i40.i ], [ %i.le, %bb.di ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2073)
  call void @llvm.experimental.noalias.scope.decl(metadata !2074)
  %i.lc = getelementptr inbounds nuw i8, ptr %i.la, i64 %i.lb
  %i.ld = load i8, ptr %i.lc, align 1, !noalias !2075, !noundef !7
  switch i8 %i.ld, label %bb.dj [
    i8 32, label %bb.di
    i8 10, label %bb.di
    i8 9, label %bb.di
    i8 13, label %bb.di
    i8 58, label %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess10next_valuetECsbNLsQi0JuJ4_5tgrep.exit.i
  ], !prof !29

bb.di:                                            ; preds = %bb.dh, %bb.dh, %bb.dh, %bb.dh
  %i.le = add i64 %i.lb, 1                        ; 3 uses
  store i64 %i.le, ptr %i.ec, align 8, !alias.scope !2076, !noalias !2072
  %exitcond.not.i.i.i.i41.i = icmp eq i64 %i.le, %i.ky
  br i1 %exitcond.not.i.i.i.i41.i, label %.loopexit.i.i.i38.i, label %bb.dh

.loopexit.i.i.i38.i:                              ; preds = %bb.dg, %bb.di
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2077
  store i64 3, ptr %i.b, align 8, !noalias !2077
  %i.lf = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ea, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b), !noalias !2078
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2077
  br label %.loopexit591.i

bb.dj:                                            ; preds = %bb.dh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2077
  store i64 6, ptr %i.c, align 8, !noalias !2077
  %i.lg = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ea, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c), !noalias !2078
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2077
  br label %.loopexit591.i

_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess10next_valuetECsbNLsQi0JuJ4_5tgrep.exit.i: ; preds = %bb.dh
  %i.lh = add i64 %i.lb, 1
  store i64 %i.lh, ptr %i.ec, align 8, !alias.scope !2079, !noalias !2078
  call fastcc void @_RINvXs3_NtCs4ZeZeX9PAiK_10serde_core2deINtNtCsf3Ta7LF998c_4core6marker11PhantomDatatENtB6_15DeserializeSeed11deserializeQINtNtCs6MoqnCnVQOT_10serde_json2de12DeserializerNtNtB20_4read7StrReadEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(16) %i.z, ptr noalias nofree noundef align 8 dereferenceable(56) %i.ea) #27, !noalias !1957
  %.pre.i = load i16, ptr %i.z, align 8, !range !32, !noalias !1930
  %i.li = trunc nuw i16 %.pre.i to i1
  br i1 %i.li, label %.loopexit591.i.loopexit, label %bb.dl

bb.dk:                                            ; preds = %bb.aq
  %i.lj = call noundef nonnull align 8 ptr @_RNvYNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorNtNtCs4ZeZeX9PAiK_10serde_core2de5Error15duplicate_fieldCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @55, i64 noundef 4), !noalias !1957
  br label %_RINvXs0_NvXNvNtCsbNLsQi0JuJ4_5tgrep5serves_1__NtBb_10ServerInfoNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB11_7Visitor9visit_mapINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB2F_4read7StrReadEEBd_.exit

.loopexit591.i.loopexit:                          ; preds = %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess10next_valuetECsbNLsQi0JuJ4_5tgrep.exit.i
  %.pre = load ptr, ptr %i.ds, align 8, !noalias !1930
  br label %.loopexit591.i

.loopexit591.i:                                   ; preds = %.loopexit.i.i.i38.i, %bb.dj, %.loopexit591.i.loopexit
  %i.lk = phi ptr [ %.pre, %.loopexit591.i.loopexit ], [ %i.lf, %.loopexit.i.i.i38.i ], [ %i.lg, %bb.dj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !1930
  br label %_RINvXs0_NvXNvNtCsbNLsQi0JuJ4_5tgrep5serves_1__NtBb_10ServerInfoNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB11_7Visitor9visit_mapINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB2F_4read7StrReadEEBd_.exit

bb.dl:                                            ; preds = %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess10next_valuetECsbNLsQi0JuJ4_5tgrep.exit.i
  %i.ll = load i16, ptr %i.dt, align 2, !noalias !1930, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !1930
  br label %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess10next_valueNtNtB18_11ignored_any10IgnoredAnyECsbNLsQi0JuJ4_5tgrep.exit.i

bb.dm:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !1930
  call void @_RINvXNvNtNtCsd5bfvMOVH6k_5serde7private2de13missing_fieldINtB3_24MissingFieldDeserializerNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorENtNtCs4ZeZeX9PAiK_10serde_core2de12Deserializer15deserialize_anyNtNvXs14_NtB28_5implsmNtB28_11Deserialize11deserialize16PrimitiveVisitorECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.y, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @54, i64 noundef 3), !noalias !1957
  %i.lm = load i32, ptr %i.y, align 8, !range !13, !noalias !1930, !noundef !7
  %i.ln = trunc nuw i32 %i.lm to i1
  br i1 %i.ln, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %bb.dm
  %i.lo = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.lp = load ptr, ptr %i.lo, align 8, !noalias !1930, !nonnull !7, !align !22, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !1930
  br label %_RINvXs0_NvXNvNtCsbNLsQi0JuJ4_5tgrep5serves_1__NtBb_10ServerInfoNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB11_7Visitor9visit_mapINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB2F_4read7StrReadEEBd_.exit

bb.do:                                            ; preds = %bb.dm
  %i.lq = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.lr = load i32, ptr %i.lq, align 4, !noalias !1930, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !1930
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.ao
  %.sroa.024.0.i = phi i32 [ %i.lr, %bb.do ], [ %.sroa.4.0305.i, %bb.ao ]
  %i.ls = trunc nuw i16 %.sroa.09.0304.i to i1
  br i1 %i.ls, label %bb.dt, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !1930
  call void @_RINvXNvNtNtCsd5bfvMOVH6k_5serde7private2de13missing_fieldINtB3_24MissingFieldDeserializerNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorENtNtCs4ZeZeX9PAiK_10serde_core2de12Deserializer15deserialize_anyNtNvXs11_NtB28_5implstNtB28_11Deserialize11deserialize16PrimitiveVisitorECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.x, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @55, i64 noundef 4), !noalias !1957
  %i.lt = load i16, ptr %i.x, align 8, !range !32, !noalias !1930, !noundef !7
  %i.lu = trunc nuw i16 %i.lt to i1
  br i1 %i.lu, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  %i.lv = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.lw = load ptr, ptr %i.lv, align 8, !noalias !1930, !nonnull !7, !align !22, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !1930
  br label %_RINvXs0_NvXNvNtCsbNLsQi0JuJ4_5tgrep5serves_1__NtBb_10ServerInfoNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB11_7Visitor9visit_mapINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB2F_4read7StrReadEEBd_.exit

bb.ds:                                            ; preds = %bb.dq
  %i.lx = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  %i.ly = load i16, ptr %i.lx, align 2, !noalias !1930, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !1930
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dp
  %.sroa.029.0.i = phi i16 [ %i.ly, %bb.ds ], [ %.sroa.411.0303.i, %bb.dp ]
  %.sroa.632.8.insert.ext = zext i16 %.sroa.029.0.i to i64
  %i.lz = inttoptr i64 %.sroa.632.8.insert.ext to ptr
  br label %_RINvXs0_NvXNvNtCsbNLsQi0JuJ4_5tgrep5serves_1__NtBb_10ServerInfoNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB11_7Visitor9visit_mapINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB2F_4read7StrReadEEBd_.exit

_RINvXs0_NvXNvNtCsbNLsQi0JuJ4_5tgrep5serves_1__NtBb_10ServerInfoNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB11_7Visitor9visit_mapINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB2F_4read7StrReadEEBd_.exit: ; preds = %bb.bt, %bb.bu, %bb.bz, %bb.cp, %.loopexit.i.i.i.i, %bb.au, %.loopexit130.i.i.i.i.i.i.i, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i.i.i.i.i.i, %.loopexit246.i.i.i.i.i.i.i, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i62.i.i.i.i.i.i.i, %.loopexit239.i.i.i.i.i.i.i, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i71.i.i.i.i.i.i.i, %.loopexit232.i.i.i.i.i.i.i, %bb.by, %bb.cf, %.loopexit125.i.i.i.i.i.i.i, %bb.cq, %.loopexit124.i.i.i.i.i.i.i, %bb.cv, %bb.cz, %._crit_edge.i, %bb.an, %bb.de, %.loopexit593.i, %bb.dk, %.loopexit591.i, %bb.dn, %bb.dr, %bb.dt
  %.sroa.531.0 = phi i32 [ undef, %bb.dn ], [ undef, %._crit_edge.i ], [ undef, %bb.de ], [ undef, %.loopexit593.i ], [ undef, %bb.dk ], [ undef, %.loopexit591.i ], [ %.sroa.024.0.i, %bb.dt ], [ undef, %bb.dr ], [ undef, %bb.an ], [ undef, %bb.cz ], [ undef, %bb.cv ], [ undef, %.loopexit124.i.i.i.i.i.i.i ], [ undef, %bb.cq ], [ undef, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i.i.i.i.i.i ], [ undef, %.loopexit125.i.i.i.i.i.i.i ], [ undef, %bb.cf ], [ undef, %.loopexit130.i.i.i.i.i.i.i ], [ undef, %bb.by ], [ undef, %bb.au ], [ undef, %.loopexit.i.i.i.i ], [ undef, %.loopexit232.i.i.i.i.i.i.i ], [ undef, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i71.i.i.i.i.i.i.i ], [ undef, %.loopexit239.i.i.i.i.i.i.i ], [ undef, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i62.i.i.i.i.i.i.i ], [ undef, %.loopexit246.i.i.i.i.i.i.i ], [ undef, %bb.cp ], [ undef, %bb.bz ], [ undef, %bb.bu ], [ undef, %bb.bt ]
  %.sroa.632.0 = phi ptr [ %i.lp, %bb.dn ], [ %i.dx, %._crit_edge.i ], [ %i.ks, %bb.de ], [ %i.kt, %.loopexit593.i ], [ %i.lj, %bb.dk ], [ %i.lk, %.loopexit591.i ], [ %i.lz, %bb.dt ], [ %i.lw, %bb.dr ], [ %i.ei, %bb.an ], [ %i.kf, %bb.cz ], [ %i.kb, %bb.cv ], [ %i.jz, %.loopexit124.i.i.i.i.i.i.i ], [ %i.jr, %bb.cq ], [ %i.gu, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i.i.i.i.i.i ], [ %i.jo, %.loopexit125.i.i.i.i.i.i.i ], [ %i.ix, %bb.cf ], [ %i.gi, %.loopexit130.i.i.i.i.i.i.i ], [ %i.ik, %bb.by ], [ %i.fy, %bb.au ], [ %i.fx, %.loopexit.i.i.i.i ], [ %i.hw, %.loopexit232.i.i.i.i.i.i.i ], [ %i.hv, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i71.i.i.i.i.i.i.i ], [ %i.hh, %.loopexit239.i.i.i.i.i.i.i ], [ %i.hg, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i62.i.i.i.i.i.i.i ], [ %i.gv, %.loopexit246.i.i.i.i.i.i.i ], [ %i.hy, %bb.bt ], [ %i.ia, %bb.bu ], [ %i.il, %bb.bz ], [ %i.jq, %bb.cp ]
  %i.ma = phi i1 [ false, %bb.dn ], [ false, %._crit_edge.i ], [ false, %bb.de ], [ false, %.loopexit593.i ], [ false, %bb.dk ], [ false, %.loopexit591.i ], [ true, %bb.dt ], [ false, %bb.dr ], [ false, %bb.an ], [ false, %bb.cz ], [ false, %bb.cv ], [ false, %.loopexit124.i.i.i.i.i.i.i ], [ false, %bb.cq ], [ false, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i.i.i.i.i.i ], [ false, %.loopexit125.i.i.i.i.i.i.i ], [ false, %bb.cf ], [ false, %.loopexit130.i.i.i.i.i.i.i ], [ false, %bb.by ], [ false, %bb.au ], [ false, %.loopexit.i.i.i.i ], [ false, %.loopexit232.i.i.i.i.i.i.i ], [ false, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i71.i.i.i.i.i.i.i ], [ false, %.loopexit239.i.i.i.i.i.i.i ], [ false, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i62.i.i.i.i.i.i.i ], [ false, %.loopexit246.i.i.i.i.i.i.i ], [ false, %bb.cp ], [ false, %bb.bz ], [ false, %bb.bu ], [ false, %bb.bt ]
  %.sink.i23 = phi i32 [ 1, %bb.dn ], [ 1, %._crit_edge.i ], [ 1, %bb.de ], [ 1, %.loopexit593.i ], [ 1, %bb.dk ], [ 1, %.loopexit591.i ], [ 0, %bb.dt ], [ 1, %bb.dr ], [ 1, %bb.an ], [ 1, %bb.cz ], [ 1, %bb.cv ], [ 1, %.loopexit124.i.i.i.i.i.i.i ], [ 1, %bb.cq ], [ 1, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i.i.i.i.i.i ], [ 1, %.loopexit125.i.i.i.i.i.i.i ], [ 1, %bb.cf ], [ 1, %.loopexit130.i.i.i.i.i.i.i ], [ 1, %bb.by ], [ 1, %bb.au ], [ 1, %.loopexit.i.i.i.i ], [ 1, %.loopexit232.i.i.i.i.i.i.i ], [ 1, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i71.i.i.i.i.i.i.i ], [ 1, %.loopexit239.i.i.i.i.i.i.i ], [ 1, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i62.i.i.i.i.i.i.i ], [ 1, %.loopexit246.i.i.i.i.i.i.i ], [ 1, %bb.cp ], [ 1, %bb.bz ], [ 1, %bb.bu ], [ 1, %bb.bt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  %i.mb = load i8, ptr %i.bf, align 8, !noundef !7
  %i.mc = add i8 %i.mb, 1
  store i8 %i.mc, ptr %i.bf, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  store i32 %.sink.i23, ptr %i.ah, align 8
  %.sroa.531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  store i32 %.sroa.531.0, ptr %.sroa.531.0..sroa_idx, align 4
  %.sroa.632.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  store ptr %.sroa.632.0, ptr %.sroa.632.0..sroa_idx, align 8
  %i.md = invoke fastcc noundef align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_mapCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(56) %1)
          to label %bb.dw unwind label %bb.du     ; 4 uses

bb.du:                                            ; preds = %_RINvXs0_NvXNvNtCsbNLsQi0JuJ4_5tgrep5serves_1__NtBb_10ServerInfoNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB11_7Visitor9visit_mapINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB2F_4read7StrReadEEBd_.exit
  %i.me = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.ma, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsbNLsQi0JuJ4_5tgrep5serve10ServerInfoNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorEEB11_.exit, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %.sroa.632.0..sroa_idx)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsbNLsQi0JuJ4_5tgrep5serve10ServerInfoNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorEEB11_.exit unwind label %bb.z

bb.dw:                                            ; preds = %_RINvXs0_NvXNvNtCsbNLsQi0JuJ4_5tgrep5serves_1__NtBb_10ServerInfoNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB11_7Visitor9visit_mapINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB2F_4read7StrReadEEBd_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i64 16, i1 false)
  %i.mf = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  store ptr %i.md, ptr %i.mf, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  %i.mg = load i32, ptr %i.ai, align 8, !range !13, !noundef !7
  %i.mh = trunc nuw i32 %i.mg to i1
  br i1 %i.mh, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %.not = icmp eq ptr %i.md, null
  br i1 %.not, label %bb.ab, label %.thread65, !prof !1928

bb.dy:                                            ; preds = %bb.dw
  %i.mi = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.mj = load ptr, ptr %i.mi, align 8, !nonnull !7, !align !22, !noundef !7 ; 2 uses
  %.not69 = icmp eq ptr %i.md, null
  br i1 %.not69, label %.thread65, label %bb.dz, !prof !2080

bb.dz:                                            ; preds = %bb.dy
  call void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.mf)
  br label %.thread65

bb.ea:                                            ; preds = %.thread65, %.split.thread, %bb.d
  %.sroa.12.3 = phi ptr [ %i.ba, %bb.d ], [ %.sroa.12.256.ph, %.thread65 ], [ %.sroa.12.042.ph, %.split.thread ]
  %i.mk = call noundef nonnull align 8 ptr @_RINvMs0_NtCs6MoqnCnVQOT_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read7StrReadE12fix_position0ECsbNLsQi0JuJ4_5tgrep(ptr noalias noundef nonnull align 8 %.sroa.12.3, ptr noundef nonnull readonly align 8 dereferenceable(56) %1)
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.mk, ptr %i.ml, align 8
  br label %bb.ec

bb.eb:                                            ; preds = %bb.ab, %.split
  %.sroa.9.149 = phi i32 [ %i.de, %.split ], [ %i.di, %bb.ab ]
  %.sroa.12.148.in.in = phi i16 [ %i.dg, %.split ], [ %i.dk, %bb.ab ]
  %i.mm = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.9.149, ptr %i.mm, align 4
  %i.mn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %.sroa.12.148.in.in, ptr %i.mn, align 8
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %bb.ea, %.loopexit, %bb.t
  %storemerge.sink = phi i32 [ 1, %bb.t ], [ 1, %.loopexit ], [ 0, %bb.eb ], [ 1, %bb.ea ]
  store i32 %storemerge.sink, ptr %0, align 8
  ret void

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsbNLsQi0JuJ4_5tgrep5serve10ServerInfoNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorEEB11_.exit: ; preds = %bb.du, %bb.dv, %bb.u, %bb.v
  %.pn = phi { ptr, i32 } [ %i.cw, %bb.u ], [ %i.cw, %bb.v ], [ %i.me, %bb.dv ], [ %i.me, %bb.du ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs8_NtNtCs6MoqnCnVQOT_10serde_json5value2deNtB6_15SeqDeserializerNtNtCs4ZeZeX9PAiK_10serde_core2de9SeqAccess17next_element_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtCsbNLsQi0JuJ4_5tgrep6search14FileMatchStatsEEB2R_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2084)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !2084, !noalias !2085, !nonnull !7, !noundef !7
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !2084, !noalias !2085, !nonnull !7, !noundef !7 ; 4 uses
  %i.g = icmp eq ptr %i.f, %i.d
  br i1 %i.g, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs6MoqnCnVQOT_10serde_json5value5ValueENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit.thread, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs6MoqnCnVQOT_10serde_json5value5ValueENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs6MoqnCnVQOT_10serde_json5value5ValueENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr %i.h, ptr %i.e, align 8, !alias.scope !2084, !noalias !2085
  %.sroa.0.0.copyload2 = load i8, ptr %i.f, align 8, !noalias !2084 ; 2 uses
  %.not = icmp eq i8 %.sroa.0.0.copyload2, -1
  br i1 %.not, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs6MoqnCnVQOT_10serde_json5value5ValueENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit.thread, label %bb.b

bb.b:                                             ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs6MoqnCnVQOT_10serde_json5value5ValueENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit
  %.sroa.7.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 %.sroa.0.0.copyload2, ptr %i.b, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7.0..sroa_idx3, i64 31, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvXNvNtCsbNLsQi0JuJ4_5tgrep6searchs_1__NtB5_14FileMatchStatsNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEB7_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b)
  %i.i = load i64, ptr %i.a, align 8, !range !14, !noundef !7
  %i.j = icmp eq i64 %i.i, -1
  br i1 %i.j, label %bb.d, label %bb.e

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs6MoqnCnVQOT_10serde_json5value5ValueENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit.thread: ; preds = %bb.a, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs6MoqnCnVQOT_10serde_json5value5ValueENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit
  store i64 -1, ptr %0, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs6MoqnCnVQOT_10serde_json5value5ValueENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit.thread
  ret void

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !7, !align !22, !noundef !7
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.m, align 8
  store i64 -2, ptr %0, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvXs9_NtCs6MoqnCnVQOT_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtB8_5value5ValueEECsbNLsQi0JuJ4_5tgrep(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = load ptr, ptr %1, align 8, !nonnull !7, !align !22, !noundef !7 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2102)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2103)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !2104, !noalias !2105, !noundef !7 ; 2 uses
  %.promoted.i.i = load i64, ptr %i.d, align 8, !alias.scope !2106, !noalias !2107 ; 2 uses
  %i.g = icmp ult i64 %.promoted.i.i, %i.f
  br i1 %i.g, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !2104, !noalias !2105, !nonnull !7, !noundef !7
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %i.j = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.m, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2108)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2109)
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !noalias !2110, !noundef !7
  switch i8 %i.l, label %bb.d [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 58, label %bb.f
  ], !prof !29

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.m = add i64 %i.j, 1                          ; 3 uses
  store i64 %i.m, ptr %i.d, align 8, !alias.scope !2111, !noalias !2107
  %exitcond.not.i.i = icmp eq i64 %i.m, %i.f
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %bb.b

.loopexit.i:                                      ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2102
  store i64 3, ptr %i.a, align 8, !noalias !2102
  %i.n = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.c, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2102
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2102
  store i64 6, ptr %i.b, align 8, !noalias !2102
  %i.o = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.c, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2102
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.loopexit.i
  %.sroa.0.0.i.ph = phi ptr [ %i.n, %.loopexit.i ], [ %i.o, %bb.d ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.i.ph, ptr %i.p, align 8
  store i8 -1, ptr %0, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.q = add i64 %i.j, 1
  store i64 %i.q, ptr %i.d, align 8, !alias.scope !2112
  tail call fastcc void @_RINvXNtNtCs6MoqnCnVQOT_10serde_json5value2deNtB5_5ValueNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeQINtNtB7_2de12DeserializerNtNtB7_4read7StrReadEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c) #27, !inline_history !2101
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvXs_NtCsjYKKaZ3qa7A_6anyhow7contextINtNtCsf3Ta7LF998c_4core6option6OptionjEINtB7_7ContextjzE12with_contextNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtCsbNLsQi0JuJ4_5tgrep5index20buffer_bytes_from_mbs_0EB2r_(i64 noundef range(i64 0, 2) %0, i64 %1, ptr noundef nonnull align 8 %2, ptr noundef nonnull align 8 %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = trunc nuw i64 %0 to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = inttoptr i64 %1 to ptr
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2115
  store ptr %2, ptr %i.a, align 8, !noalias !2115
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsd_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !2115
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %3, ptr %i.g, align 8, !noalias !2115
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsd_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !2115
  call void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noundef nonnull @69, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs2_NtCs5Xr050g3D4S_3std9backtraceNtB5_9Backtrace7capture(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.b)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.h = call noundef nonnull ptr @_RINvMNtCsjYKKaZ3qa7A_6anyhow5errorNtB5_5Error22construct_from_displayNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %.sroa.3.0 = phi ptr [ %i.f, %bb.b ], [ %i.h, %bb.d ]
  %.sroa.02.0 = phi i64 [ 0, %bb.b ], [ 1, %bb.d ]
  %i.i = insertvalue { i64, ptr } poison, i64 %.sroa.02.0, 0
  %i.j = insertvalue { i64, ptr } %i.i, ptr %.sroa.3.0, 1
  ret { i64, ptr } %i.j

bb.f:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.k

bb.g:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #24
          to label %bb.f unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMNtCsf3Ta7LF998c_4core5sliceSTTINtNtB4_6option6OptionNtNtCs5Xr050g3D4S_3std4time10SystemTimeENtNtBW_4path7PathBufEjE14swap_uncheckedCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 0, 192153584101141163) %1, i64 noundef %2, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %4) unnamed_addr #4 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %2 ; 2 uses
  %i.c = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvMNtNtCsbNLsQi0JuJ4_5tgrep5serve13index_cleanupNtB2_9BackupDir6commit(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @_RINvMs2_NtCs5Xr050g3D4S_3std2fsNtB6_4File10create_newRNtNtB8_4path7PathBufECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b)
  %i.c = load i32, ptr %i.a, align 8, !range !13, !noundef !7
  %i.d = trunc nuw i32 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !7, !noundef !7
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.h = load i32, ptr %i.g, align 4, !range !33, !noundef !7
  %i.i = call noundef i32 @close(i32 noundef %i.h) #26 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ %i.f, %bb.b ], [ null, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCsbNLsQi0JuJ4_5tgrep5serve13index_cleanupNtB2_9BackupDir6create(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = alloca [32 x i8], align 16               ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 2 uses
  %i.f = alloca [24 x i8], align 8                ; 15 uses
  %i.g = alloca [32 x i8], align 16               ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 2 uses
  %i.i = alloca [24 x i8], align 8                ; 13 uses
  %i.j = alloca [32 x i8], align 8                ; 7 uses
  %i.k = alloca [4 x i8], align 4                 ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 13 uses
  %i.n = alloca [8 x i8], align 8                 ; 5 uses
  %i.o = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @_RINvMs16_NtCs5Xr050g3D4S_3std4pathNtB7_4Path4joinReECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @78, i64 noundef 8)
  %i.p = invoke noundef ptr @_RINvNtCs5Xr050g3D4S_3std2fs14create_dir_allRNtNtB4_4path7PathBufECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.o)
          to label %bb.b unwind label %.loopexit.split-lp ; 2 uses

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.ai, %bb.s, %.body69
  %.pn42 = phi { ptr, i32 } [ %.pn40, %.body69 ], [ %i.bg, %bb.s ], [ %i.bv, %bb.ai ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %i.o) #24
          to label %common.resume unwind label %bb.af

.loopexit:                                        ; preds = %bb.d, %bb.e, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i74
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.a, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.b
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %i.z, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.am

bb.d:                                             ; preds = %.preheader, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit78
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.aa = atomicrmw add ptr @_RNvNtNtCsbNLsQi0JuJ4_5tgrep5serve13index_cleanup15BACKUP_SEQUENCE, i64 1 monotonic, align 8
  store i64 %i.aa, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.ab = invoke noundef i32 @_RNvNtCs5Xr050g3D4S_3std7process2id()
          to label %bb.e unwind label %.loopexit

bb.e:                                             ; preds = %bb.d
  store i32 %i.ab, ptr %i.k, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.k, ptr %i.j, align 8
  store ptr @_RNvXs8_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.49.0..sroa_idx, align 8
  store ptr %i.n, ptr %i.q, align 8
  store ptr @_RNvXsd_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.413.0..sroa_idx, align 8
  invoke void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noundef nonnull @79, ptr noundef nonnull %i.j)
          to label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbNLsQi0JuJ4_5tgrep.exit unwind label %.loopexit

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
end_hunk_3
begin_hunk_4_@_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsbNLsQi0JuJ4_5tgrep:bb.a
  resume { ptr, i32 } %i.f

bb.d:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6MoqnCnVQOT_10serde_json5error9ErrorCodeECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %1) #24
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE12parse_numberCsbNLsQi0JuJ4_5tgrep(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %2, i64 noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 15 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2141)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2142)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !2143, !noalias !2144, !noundef !7 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !2143, !noalias !2144, !noundef !7 ; 4 uses
  %i.k = icmp ult i64 %i.h, %i.j
  br i1 %i.k, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread

_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !2143, !noalias !2144, !nonnull !7, !noundef !7 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.h
  %i.o = load i8, ptr %i.n, align 1, !noalias !2145, !noundef !7
  switch i8 %i.o, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread [
    i8 46, label %bb.b
    i8 101, label %bb.p
    i8 69, label %bb.p
  ]

_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread: ; preds = %bb.a, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit
  br i1 %2, label %bb.s, label %bb.v

bb.b:                                             ; preds = %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2146)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2147)
  %i.p = add nuw i64 %i.h, 1                      ; 3 uses
  store i64 %i.p, ptr %i.g, align 8, !alias.scope !2148, !noalias !2146
  %i.q = icmp ult i64 %i.p, %i.j
  br i1 %i.q, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.lr.ph.i, label %.thread.thread.i

_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.lr.ph.i: ; preds = %bb.b
  %i.r = trunc i64 %i.h to i32
  %i.s = add i32 %i.r, 1
  %i.t = trunc i64 %i.j to i32
  %i.u = sub i32 %i.s, %i.t                       ; 2 uses
  br label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i

_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i: ; preds = %bb.n, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.lr.ph.i
  %.sroa.0.061.i = phi i64 [ %3, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.lr.ph.i ], [ %i.bg, %bb.n ] ; 6 uses
  %.sroa.07.060.i = phi i32 [ 0, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.lr.ph.i ], [ %i.bh, %bb.n ] ; 5 uses
  %i.v = phi i64 [ %i.p, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.lr.ph.i ], [ %i.be, %bb.n ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !noalias !2149, !noundef !7 ; 2 uses
  %i.y = add i8 %i.x, -48                         ; 3 uses
  %or.cond.i = icmp ult i8 %i.y, 10
  br i1 %or.cond.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i
  %i.z = icmp eq i32 %.sroa.07.060.i, 0
  br i1 %i.z, label %bb.e, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.i

.thread.i:                                        ; preds = %bb.n
  %i.aa = icmp eq i32 %i.u, 0
  br i1 %i.aa, label %.thread.thread.i, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i

bb.d:                                             ; preds = %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i
  %i.ab = zext nneg i8 %i.y to i64
  %i.ac = icmp ugt i64 %.sroa.0.061.i, 1844674407370955160
  br i1 %i.ac, label %bb.m, label %bb.n

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2150
  store i64 13, ptr %i.d, align 8, !noalias !2150
  %i.ad = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.d), !noalias !2146
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2150
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.ad, ptr %i.ae, align 8, !alias.scope !2146, !noalias !2147
  store i64 1, ptr %i.f, align 8, !alias.scope !2146, !noalias !2147
  br label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_decimalCsbNLsQi0JuJ4_5tgrep.exit

.thread.thread.i:                                 ; preds = %.thread.i, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2150
  store i64 5, ptr %i.c, align 8, !noalias !2150
  %i.af = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c), !noalias !2146
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2150
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.af, ptr %i.ag, align 8, !alias.scope !2146, !noalias !2147
  store i64 1, ptr %i.f, align 8, !alias.scope !2146, !noalias !2147
  br label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_decimalCsbNLsQi0JuJ4_5tgrep.exit

_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.i: ; preds = %bb.c
  switch i8 %i.x, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i [
    i8 101, label %bb.l
    i8 69, label %bb.l
  ]

_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i: ; preds = %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.i, %.thread.i
  %.sroa.07.059.i = phi i32 [ %i.u, %.thread.i ], [ %.sroa.07.060.i, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.i ] ; 3 uses
  %.sroa.0.056.i = phi i64 [ %i.bg, %.thread.i ], [ %.sroa.0.061.i, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2151)
  %i.ah = uitofp i64 %.sroa.0.056.i to double     ; 2 uses
  %.sroa.012.020.i.i = tail call i32 @llvm.abs.i32(i32 %.sroa.07.059.i, i1 false) ; 2 uses
  %i.ai = icmp ult i32 %.sroa.012.020.i.i, 309
  br i1 %i.ai, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i, %bb.g
  %.sroa.0.022.i.i = phi i32 [ %i.aq, %bb.g ], [ %.sroa.07.059.i, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i ] ; 2 uses
  %.sroa.04.021.i.i = phi double [ %i.ap, %bb.g ], [ %i.ah, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i ] ; 3 uses
  %i.aj = fcmp oeq double %.sroa.04.021.i.i, 0.000000e+00
  br i1 %i.aj, label %.loopexit.i.i, label %bb.f

._crit_edge.i.i:                                  ; preds = %bb.g, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i
  %.sroa.04.0.lcssa.i.i = phi double [ %i.ah, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i ], [ %i.ap, %bb.g ] ; 2 uses
  %.sroa.0.0.lcssa.i.i = phi i32 [ %.sroa.07.059.i, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i ], [ %i.aq, %bb.g ]
  %.sroa.012.0.lcssa.i.i = phi i32 [ %.sroa.012.020.i.i, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i ], [ %.sroa.012.0.i.i, %bb.g ]
  %i.ak = zext nneg i32 %.sroa.012.0.lcssa.i.i to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr @_RNvNtCs6MoqnCnVQOT_10serde_json2de5POW10, i64 %i.ak
  %i.am = load double, ptr %i.al, align 8, !noalias !2152, !noundef !7 ; 2 uses
  %i.an = icmp sgt i32 %.sroa.0.0.lcssa.i.i, -1
  br i1 %i.an, label %bb.j, label %bb.i

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ao = icmp sgt i32 %.sroa.0.022.i.i, -1
  br i1 %i.ao, label %bb.h, label %bb.g, !prof !11

bb.g:                                             ; preds = %bb.f
  %i.ap = fdiv double %.sroa.04.021.i.i, 1.000000e+308 ; 2 uses
  %i.aq = add nsw i32 %.sroa.0.022.i.i, 308       ; 3 uses
  %.sroa.012.0.i.i = tail call i32 @llvm.abs.i32(i32 %i.aq, i1 true) ; 2 uses
  %i.ar = icmp samesign ult i32 %.sroa.012.0.i.i, 309
  br i1 %i.ar, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2152
  store i64 14, ptr %i.a, align 8, !noalias !2152
  %i.as = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !2153
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2152
  %i.at = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.as, ptr %i.at, align 8, !alias.scope !2153, !noalias !2154
  br label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCsbNLsQi0JuJ4_5tgrep.exit.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i, %bb.j, %bb.i
  %.sroa.04.1.i.i = phi double [ %i.ax, %bb.j ], [ %i.aw, %bb.i ], [ %.sroa.04.021.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.au = fneg double %.sroa.04.1.i.i
  %.sroa.04.2.i.i = select i1 %2, double %.sroa.04.1.i.i, double %i.au
  %i.av = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store double %.sroa.04.2.i.i, ptr %i.av, align 8, !alias.scope !2153, !noalias !2154
  br label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCsbNLsQi0JuJ4_5tgrep.exit.i

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.aw = fdiv double %.sroa.04.0.lcssa.i.i, %i.am
  br label %.loopexit.i.i

bb.j:                                             ; preds = %._crit_edge.i.i
  %i.ax = fmul double %.sroa.04.0.lcssa.i.i, %i.am ; 2 uses
  %i.ay = tail call double @llvm.fabs.f64(double %i.ax)
  %i.az = fcmp oeq double %i.ay, +inf
  br i1 %i.az, label %bb.k, label %.loopexit.i.i, !prof !11

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2152
  store i64 14, ptr %i.b, align 8, !noalias !2152
  %i.ba = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !2153
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2152
  %i.bb = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.ba, ptr %i.bb, align 8, !alias.scope !2153, !noalias !2154
  br label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCsbNLsQi0JuJ4_5tgrep.exit.i

_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCsbNLsQi0JuJ4_5tgrep.exit.i: ; preds = %bb.k, %.loopexit.i.i, %bb.h
  %storemerge.i.i = phi i64 [ 0, %.loopexit.i.i ], [ 1, %bb.k ], [ 1, %bb.h ]
  store i64 %storemerge.i.i, ptr %i.f, align 8, !alias.scope !2153, !noalias !2154
  br label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_decimalCsbNLsQi0JuJ4_5tgrep.exit

bb.l:                                             ; preds = %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.i, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.i
  call fastcc void @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14parse_exponentCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %2, i64 noundef %.sroa.0.061.i, i32 noundef %.sroa.07.060.i)
  br label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_decimalCsbNLsQi0JuJ4_5tgrep.exit

bb.m:                                             ; preds = %bb.d
  %i.bc = icmp ne i64 %.sroa.0.061.i, 1844674407370955161
  %i.bd = icmp samesign ugt i8 %i.y, 5
  %or.cond1.i = or i1 %i.bc, %i.bd
  br i1 %or.cond1.i, label %bb.o, label %bb.n, !prof !31

bb.n:                                             ; preds = %bb.m, %bb.d
  %i.be = add i64 %i.v, 1                         ; 3 uses
  store i64 %i.be, ptr %i.g, align 8, !alias.scope !2155, !noalias !2146
  %i.bf = mul nuw i64 %.sroa.0.061.i, 10
  %i.bg = add i64 %i.bf, %i.ab                    ; 2 uses
  %i.bh = add i32 %.sroa.07.060.i, -1
  %exitcond.not.i = icmp eq i64 %i.be, %i.j
  br i1 %exitcond.not.i, label %.thread.i, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i

bb.o:                                             ; preds = %bb.m
  call void @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE22parse_decimal_overflowB7_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %2, i64 noundef %.sroa.0.061.i, i32 noundef %.sroa.07.060.i) #21
  br label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_decimalCsbNLsQi0JuJ4_5tgrep.exit

_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_decimalCsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.e, %.thread.thread.i, %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCsbNLsQi0JuJ4_5tgrep.exit.i, %bb.l, %bb.o
  %i.bi = load i64, ptr %i.f, align 8, !range !8, !noundef !7
  %i.bj = trunc nuw i64 %i.bi to i1
  %i.bk = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  br i1 %i.bj, label %bb.q, label %bb.r

bb.p:                                             ; preds = %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call fastcc void @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14parse_exponentCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.e, ptr noalias nofree noundef align 8 dereferenceable(56) %1, i1 noundef zeroext %2, i64 noundef %3, i32 noundef 0)
  %i.bl = load i64, ptr %i.e, align 8, !range !8, !noundef !7
  %i.bm = trunc nuw i64 %i.bl to i1
  %i.bn = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  br i1 %i.bm, label %bb.t, label %bb.u

bb.q:                                             ; preds = %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_decimalCsbNLsQi0JuJ4_5tgrep.exit
  %i.bo = load ptr, ptr %i.bk, align 8, !nonnull !7, !align !22, !noundef !7
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bo, ptr %i.bp, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.x

bb.r:                                             ; preds = %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_decimalCsbNLsQi0JuJ4_5tgrep.exit
  %i.bq = load i64, ptr %i.bk, align 8, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.s

bb.s:                                             ; preds = %bb.v, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread, %bb.w, %bb.u, %bb.r
  %.sroa.9.0 = phi i64 [ %i.bt, %bb.u ], [ %i.by, %bb.w ], [ %3, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread ], [ %i.bq, %bb.r ], [ %i.bu, %bb.v ]
  %.sroa.0.0 = phi i64 [ 0, %bb.u ], [ 0, %bb.w ], [ 1, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread ], [ 0, %bb.r ], [ 2, %bb.v ]
  store i64 %.sroa.0.0, ptr %0, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 8
  br label %bb.x

bb.t:                                             ; preds = %bb.p
  %i.br = load ptr, ptr %i.bn, align 8, !nonnull !7, !align !22, !noundef !7
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.br, ptr %i.bs, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.x

bb.u:                                             ; preds = %bb.p
  %i.bt = load i64, ptr %i.bn, align 8, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.s

bb.v:                                             ; preds = %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread
  %i.bu = sub i64 0, %3                           ; 2 uses
  %i.bv = icmp sgt i64 %i.bu, -1
  br i1 %i.bv, label %bb.w, label %bb.s

bb.w:                                             ; preds = %bb.v
  %i.bw = uitofp i64 %3 to double
  %i.bx = fneg double %i.bw
  %i.by = bitcast double %i.bx to i64
  br label %bb.s

bb.x:                                             ; preds = %bb.q, %bb.t, %bb.s
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_integerCsbNLsQi0JuJ4_5tgrep(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2176)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2177)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !2178, !noalias !2179, !noundef !7 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !2178, !noalias !2179, !noundef !7 ; 4 uses
  %i.i = icmp ult i64 %i.f, %i.h
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !2178, !noalias !2179, !nonnull !7, !noundef !7 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.f
  %i.m = load i8, ptr %i.l, align 1, !noalias !2180, !noundef !7 ; 3 uses
  %i.n = add nuw i64 %i.f, 1                      ; 5 uses
  store i64 %i.n, ptr %i.e, align 8, !alias.scope !2178, !noalias !2179
  %i.o = icmp eq i8 %i.m, 48
  br i1 %i.o, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 5, ptr %i.d, align 8
  %i.p = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %i.q, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.r = icmp ult i64 %i.n, %i.h
  br i1 %i.r, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread

bb.e:                                             ; preds = %bb.b
  %i.s = add i8 %i.m, -49
  %or.cond1 = icmp ult i8 %i.s, 9
  br i1 %or.cond1, label %bb.h, label %bb.g, !prof !26

_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit: ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.n
  %i.u = load i8, ptr %i.t, align 1, !noalias !2181, !noundef !7
  %i.v = add i8 %i.u, -48
  %i.w = icmp ult i8 %i.v, 10
  br i1 %i.w, label %bb.f, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread, !prof !27

_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread: ; preds = %bb.d, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit
  tail call fastcc void @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE12parse_numberCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1, i1 noundef zeroext %2, i64 noundef 0)
  br label %bb.i

bb.f:                                             ; preds = %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 13, ptr %i.c, align 8
  %i.x = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.x, ptr %i.y, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 13, ptr %i.a, align 8
  %i.z = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.z, ptr %i.aa, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.ab = add nsw i8 %i.m, -48
  %i.ac = zext nneg i8 %i.ab to i64               ; 2 uses
  %i.ad = icmp ult i64 %i.n, %i.h
  br i1 %i.ad, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit30, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit30.thread

bb.i:                                             ; preds = %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit30.thread, %bb.p, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread, %bb.f, %bb.c, %bb.g
  ret void

_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit30: ; preds = %bb.h, %bb.l
  %.sroa.07.053 = phi i64 [ %i.ao, %bb.l ], [ %i.ac, %bb.h ] ; 5 uses
  %i.ae = phi i64 [ %i.am, %bb.l ], [ %i.n, %bb.h ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !noalias !2182, !noundef !7
  %i.ah = add i8 %i.ag, -48                       ; 3 uses
  %or.cond2 = icmp ult i8 %i.ah, 10
  br i1 %or.cond2, label %bb.j, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit30.thread

_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit30.thread: ; preds = %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit30, %bb.l, %bb.h
  %.sroa.07.0.lcssa = phi i64 [ %i.ac, %bb.h ], [ %i.ao, %bb.l ], [ %.sroa.07.053, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit30 ]
  tail call fastcc void @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE12parse_numberCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1, i1 noundef zeroext %2, i64 noundef %.sroa.07.0.lcssa)
  br label %bb.i

bb.j:                                             ; preds = %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit30
  %i.ai = zext nneg i8 %i.ah to i64
  %i.aj = icmp ugt i64 %.sroa.07.053, 1844674407370955160
  br i1 %i.aj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ak = icmp ne i64 %.sroa.07.053, 1844674407370955161
  %i.al = icmp samesign ugt i8 %i.ah, 5
  %or.cond3 = or i1 %i.ak, %i.al
  br i1 %or.cond3, label %bb.m, label %bb.l, !prof !31

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.am = add i64 %i.ae, 1                        ; 3 uses
  store i64 %i.am, ptr %i.e, align 8, !alias.scope !2183
  %i.an = mul nuw i64 %.sroa.07.053, 10
  %i.ao = add i64 %i.an, %i.ai                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.am, %i.h
  br i1 %exitcond.not, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit30.thread, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit30

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE18parse_long_integerB7_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %2, i64 noundef %.sroa.07.053) #21
  %i.ap = load i64, ptr %i.b, align 8, !range !8, !noundef !7
  %i.aq = trunc nuw i64 %i.ap to i1
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.aq, label %bb.n, label %bb.o
end_hunk_4
begin_hunk_5_@_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_integerCsbNLsQi0JuJ4_5tgrep:bb.a
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sink = phi i64 [ -1, %bb.n ], [ 0, %bb.o ]
  store i64 %.sink, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_integerCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 captures(address, read_provenance) dereferenceable(56) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2273)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2274)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 14 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !2275, !noalias !2276, !noundef !7 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !2275, !noalias !2276, !noundef !7 ; 16 uses
  %i.j = icmp ult i64 %i.g, %i.i
  br i1 %i.j, label %bb.b, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !2275, !noalias !2276, !nonnull !7, !noundef !7 ; 12 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.g
  %i.n = load i8, ptr %i.m, align 1, !noalias !2277, !noundef !7 ; 2 uses
  %i.o = add nuw i64 %i.g, 1                      ; 8 uses
  store i64 %i.o, ptr %i.f, align 8, !alias.scope !2275, !noalias !2276
  %i.p = icmp eq i8 %i.n, 48
  br i1 %i.p, label %bb.c, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit

_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit: ; preds = %bb.b
  %i.q = add i8 %i.n, -49
  %or.cond2 = icmp ult i8 %i.q, 9
  br i1 %or.cond2, label %.preheader, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.thread, !prof !27

.preheader:                                       ; preds = %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit
  %i.r = icmp ult i64 %i.o, %i.i
  br i1 %i.r, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit43, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.s = icmp ult i64 %i.o, %i.i
  br i1 %i.s, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread

_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit: ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.o
  %i.u = load i8, ptr %i.t, align 1, !noalias !2278, !noundef !7
  %i.v = add i8 %i.u, -48
  %i.w = icmp ult i8 %i.v, 10
  br i1 %i.w, label %bb.d, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread, !prof !27

bb.d:                                             ; preds = %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 13, ptr %i.e, align 8
  %i.x = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_decimalCsbNLsQi0JuJ4_5tgrep.exit

_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread: ; preds = %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit43, %.preheader, %bb.c, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit
  %i.y = phi i64 [ %i.o, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit ], [ %i.o, %.preheader ], [ %i.o, %bb.c ], [ %i.ab, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit43 ] ; 5 uses
  %i.z = icmp ult i64 %i.y, %i.i
  br i1 %i.z, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit40, label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_decimalCsbNLsQi0JuJ4_5tgrep.exit

_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.thread: ; preds = %bb.a, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 13, ptr %i.d, align 8
  %i.aa = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_decimalCsbNLsQi0JuJ4_5tgrep.exit

_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit43: ; preds = %.preheader, %bb.e
  %i.ab = phi i64 [ %i.ag, %bb.e ], [ %i.o, %.preheader ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !noalias !2279, !noundef !7
  %i.ae = add i8 %i.ad, -48
  %i.af = icmp ult i8 %i.ae, 10
  br i1 %i.af, label %bb.e, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread

bb.e:                                             ; preds = %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit43
  %i.ag = add i64 %i.ab, 1                        ; 3 uses
  store i64 %i.ag, ptr %i.f, align 8, !alias.scope !2280
  %exitcond.not = icmp eq i64 %i.ag, %i.i
  br i1 %exitcond.not, label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_decimalCsbNLsQi0JuJ4_5tgrep.exit, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit43

_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit40: ; preds = %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.y
  %i.ai = load i8, ptr %i.ah, align 1, !noalias !2281, !noundef !7
  switch i8 %i.ai, label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_decimalCsbNLsQi0JuJ4_5tgrep.exit [
    i8 46, label %bb.f
    i8 101, label %bb.j
    i8 69, label %bb.j
  ]

bb.f:                                             ; preds = %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2282)
  %storemerge.peel.i = add nuw i64 %i.y, 1        ; 5 uses
  store i64 %storemerge.peel.i, ptr %i.f, align 8, !alias.scope !2282
  %i.aj = icmp ult i64 %storemerge.peel.i, %i.i
  br i1 %i.aj, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.peel.i, label %.thread.thread.i

_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.peel.i: ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %i.l, i64 %storemerge.peel.i
  %i.al = load i8, ptr %i.ak, align 1, !noalias !2283, !noundef !7
  %i.am = add i8 %i.al, -48
  %i.an = icmp ult i8 %i.am, 10
  br i1 %i.an, label %.peel.next.i.preheader, label %.thread.thread.i

.peel.next.i.preheader:                           ; preds = %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.peel.i
  %i.ao = add i64 %i.i, -1                        ; 2 uses
  %exitcond80.not107 = icmp eq i64 %storemerge.peel.i, %i.ao
  br i1 %exitcond80.not107, label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_decimalCsbNLsQi0JuJ4_5tgrep.exit.loopexit73, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i

.peel.next.i:                                     ; preds = %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i
  %exitcond80.not = icmp eq i64 %storemerge.i, %i.ao
  br i1 %exitcond80.not, label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_decimalCsbNLsQi0JuJ4_5tgrep.exit.loopexit73, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i, !llvm.loop !2218

_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i: ; preds = %.peel.next.i.preheader, %.peel.next.i
  %storemerge.in.i108 = phi i64 [ %storemerge.i, %.peel.next.i ], [ %storemerge.peel.i, %.peel.next.i.preheader ] ; 3 uses
  %storemerge.i = add nuw i64 %storemerge.in.i108, 1 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.l, i64 %storemerge.i
  %i.aq = load i8, ptr %i.ap, align 1, !noalias !2285, !noundef !7 ; 2 uses
  %i.ar = add i8 %i.aq, -48
  %i.as = icmp ult i8 %i.ar, 10
  br i1 %i.as, label %.peel.next.i, label %.loopexit.i, !llvm.loop !2218

.loopexit.i:                                      ; preds = %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i
  store i64 %storemerge.i, ptr %i.f, align 8, !alias.scope !2282
  switch i8 %i.aq, label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_decimalCsbNLsQi0JuJ4_5tgrep.exit [
    i8 101, label %bb.g
    i8 69, label %bb.g
  ]

.thread.thread.i:                                 ; preds = %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.peel.i, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2282
  store i64 13, ptr %i.c, align 8, !noalias !2282
  %i.at = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2282
  br label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_decimalCsbNLsQi0JuJ4_5tgrep.exit

bb.g:                                             ; preds = %.loopexit.i, %.loopexit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2286)
  %i.au = add nuw i64 %storemerge.in.i108, 2      ; 5 uses
  store i64 %i.au, ptr %i.f, align 8, !alias.scope !2287
  %i.av = icmp ult i64 %i.au, %i.i
  br i1 %i.av, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i.i, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread.i.i

_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i.i: ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.au
  %i.ax = load i8, ptr %i.aw, align 1, !noalias !2288, !noundef !7
  switch i8 %i.ax, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread.i.i [
    i8 43, label %bb.h
    i8 45, label %bb.h
  ]

_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread.i.i: ; preds = %bb.h, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i.i, %bb.g
  %i.ay = phi i64 [ %i.au, %bb.g ], [ %i.ba, %bb.h ], [ %i.au, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i.i ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2289)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2290)
  %i.az = icmp ult i64 %i.ay, %i.i
  br i1 %i.az, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.thread.i.i

bb.h:                                             ; preds = %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i.i, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i.i
  %i.ba = add nuw i64 %storemerge.in.i108, 3      ; 2 uses
  store i64 %i.ba, ptr %i.f, align 8, !alias.scope !2291
  br label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread.i.i

_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i: ; preds = %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ay
  %i.bc = load i8, ptr %i.bb, align 1, !noalias !2292, !noundef !7
  %i.bd = add nuw i64 %i.ay, 1                    ; 3 uses
  store i64 %i.bd, ptr %i.f, align 8, !alias.scope !2293, !noalias !2294
  %i.be = add i8 %i.bc, -48
  %i.bf = icmp ult i8 %i.be, 10
  br i1 %i.bf, label %.preheader.i.i, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.thread.i.i, !prof !27

.preheader.i.i:                                   ; preds = %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i
  %i.bg = icmp ult i64 %i.bd, %i.i
  br i1 %i.bg, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit26.i.i, label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_decimalCsbNLsQi0JuJ4_5tgrep.exit

_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.thread.i.i: ; preds = %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2295
  store i64 13, ptr %i.b, align 8, !noalias !2295
  %i.bh = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2295
  br label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_decimalCsbNLsQi0JuJ4_5tgrep.exit

_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit26.i.i: ; preds = %.preheader.i.i, %bb.i
  %i.bi = phi i64 [ %i.bn, %bb.i ], [ %i.bd, %.preheader.i.i ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !noalias !2296, !noundef !7
  %i.bl = add i8 %i.bk, -48
  %i.bm = icmp ult i8 %i.bl, 10
  br i1 %i.bm, label %bb.i, label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_decimalCsbNLsQi0JuJ4_5tgrep.exit

bb.i:                                             ; preds = %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit26.i.i
  %i.bn = add i64 %i.bi, 1                        ; 3 uses
  store i64 %i.bn, ptr %i.f, align 8, !alias.scope !2297
  %exitcond.not.i.i = icmp eq i64 %i.bn, %i.i
  br i1 %exitcond.not.i.i, label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_decimalCsbNLsQi0JuJ4_5tgrep.exit, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit26.i.i

bb.j:                                             ; preds = %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit40, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2298)
  %i.bo = add nuw i64 %i.y, 1                     ; 5 uses
  store i64 %i.bo, ptr %i.f, align 8, !alias.scope !2299
  %i.bp = icmp ult i64 %i.bo, %i.i
  br i1 %i.bp, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i45, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread.i

_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i45: ; preds = %bb.j
  %i.bq = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bo
  %i.br = load i8, ptr %i.bq, align 1, !noalias !2300, !noundef !7
  switch i8 %i.br, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread.i [
    i8 43, label %bb.k
    i8 45, label %bb.k
  ]

_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread.i: ; preds = %bb.k, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i45, %bb.j
  %i.bs = phi i64 [ %i.bo, %bb.j ], [ %i.bu, %bb.k ], [ %i.bo, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i45 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2301)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2302)
  %i.bt = icmp ult i64 %i.bs, %i.i
  br i1 %i.bt, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.thread.i

bb.k:                                             ; preds = %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i45, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i45
  %i.bu = add nuw i64 %i.y, 2                     ; 2 uses
  store i64 %i.bu, ptr %i.f, align 8, !alias.scope !2303
  br label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread.i

_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i: ; preds = %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bs
  %i.bw = load i8, ptr %i.bv, align 1, !noalias !2304, !noundef !7
  %i.bx = add nuw i64 %i.bs, 1                    ; 3 uses
  store i64 %i.bx, ptr %i.f, align 8, !alias.scope !2305, !noalias !2306
  %i.by = add i8 %i.bw, -48
  %i.bz = icmp ult i8 %i.by, 10
  br i1 %i.bz, label %.preheader.i, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.thread.i, !prof !27

.preheader.i:                                     ; preds = %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i
  %i.ca = icmp ult i64 %i.bx, %i.i
  br i1 %i.ca, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit26.i, label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_decimalCsbNLsQi0JuJ4_5tgrep.exit

_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.thread.i: ; preds = %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2298
  store i64 13, ptr %i.a, align 8, !noalias !2298
  %i.cb = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2298
  br label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_decimalCsbNLsQi0JuJ4_5tgrep.exit

_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit26.i: ; preds = %.preheader.i, %bb.l
  %i.cc = phi i64 [ %i.ch, %bb.l ], [ %i.bx, %.preheader.i ] ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1, !noalias !2307, !noundef !7
  %i.cf = add i8 %i.ce, -48
  %i.cg = icmp ult i8 %i.cf, 10
  br i1 %i.cg, label %bb.l, label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_decimalCsbNLsQi0JuJ4_5tgrep.exit

bb.l:                                             ; preds = %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit26.i
  %i.ch = add i64 %i.cc, 1                        ; 3 uses
  store i64 %i.ch, ptr %i.f, align 8, !alias.scope !2308
  %exitcond.not.i = icmp eq i64 %i.ch, %i.i
  br i1 %exitcond.not.i, label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_decimalCsbNLsQi0JuJ4_5tgrep.exit, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit26.i

_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_decimalCsbNLsQi0JuJ4_5tgrep.exit.loopexit73: ; preds = %.peel.next.i, %.peel.next.i.preheader
  store i64 %i.i, ptr %i.f, align 8, !alias.scope !2282
  br label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_decimalCsbNLsQi0JuJ4_5tgrep.exit

_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_decimalCsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.e, %bb.l, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit26.i, %bb.i, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit26.i.i, %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_decimalCsbNLsQi0JuJ4_5tgrep.exit.loopexit73, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.thread.i, %.preheader.i, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.thread.i.i, %.preheader.i.i, %.loopexit.i, %.thread.thread.i, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit40, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.thread, %bb.d
  %.sroa.0.3 = phi ptr [ %i.x, %bb.d ], [ null, %.preheader.i ], [ null, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit40 ], [ %i.aa, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.thread ], [ null, %bb.i ], [ null, %.loopexit.i ], [ null, %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_decimalCsbNLsQi0JuJ4_5tgrep.exit.loopexit73 ], [ %i.at, %.thread.thread.i ], [ %i.bh, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.thread.i.i ], [ null, %.preheader.i.i ], [ null, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread ], [ %i.cb, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.thread.i ], [ null, %bb.l ], [ null, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit26.i.i ], [ null, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit26.i ], [ null, %bb.e ]
  ret ptr %.sroa.0.3
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14parse_exponentCsbNLsQi0JuJ4_5tgrep(ptr dead_on_unwind noalias nofree noundef nonnull writable align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %2, i64 noundef %3, i32 noundef %4) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 5 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !2334, !noundef !7 ; 2 uses
  %i.h = add i64 %i.g, 1                          ; 5 uses
  store i64 %i.h, ptr %i.f, align 8, !alias.scope !2334
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2335)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2336)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !2337, !noalias !2338, !noundef !7 ; 4 uses
  %i.k = icmp ult i64 %i.h, %i.j
  br i1 %i.k, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread

_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit: ; preds = %bb.a
  %i.l = load ptr, ptr %i.e, align 8, !alias.scope !2337, !noalias !2338, !nonnull !7, !noundef !7
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.h
  %i.n = load i8, ptr %i.m, align 1, !noalias !2339, !noundef !7
  switch i8 %i.n, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread [
    i8 43, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread.sink.split
    i8 45, label %bb.b
  ]

bb.b:                                             ; preds = %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit
  br label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread.sink.split

_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread.sink.split: ; preds = %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit, %bb.b
  %.sroa.0.0.ph = phi i1 [ false, %bb.b ], [ true, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit ]
  %i.o = add i64 %i.g, 2                          ; 2 uses
  store i64 %i.o, ptr %i.f, align 8
  br label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread

_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread: ; preds = %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread.sink.split, %bb.a, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit
  %i.p = phi i64 [ %i.h, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit ], [ %i.h, %bb.a ], [ %i.o, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread.sink.split ] ; 3 uses
  %.sroa.0.0 = phi i1 [ true, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit ], [ true, %bb.a ], [ %.sroa.0.0.ph, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread.sink.split ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2340)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2341)
  %i.q = icmp ult i64 %i.p, %i.j
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread
  %i.r = load ptr, ptr %i.e, align 8, !alias.scope !2342, !noalias !2343, !nonnull !7, !noundef !7 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  %i.t = load i8, ptr %i.s, align 1, !noalias !2344, !noundef !7
  %i.u = add nuw i64 %i.p, 1                      ; 3 uses
  store i64 %i.u, ptr %i.f, align 8, !alias.scope !2342, !noalias !2343
  %i.v = add i8 %i.t, -48                         ; 2 uses
  %or.cond = icmp ult i8 %i.v, 10
  br i1 %or.cond, label %bb.f, label %bb.e, !prof !26

bb.d:                                             ; preds = %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 5, ptr %i.d, align 8
  %i.w = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %i.x, align 8
  store i64 1, ptr %0, align 8
  br label %bb.q

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 13, ptr %i.c, align 8
  %i.y = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.y, ptr %i.z, align 8
  store i64 1, ptr %0, align 8
  br label %bb.q

bb.f:                                             ; preds = %bb.c
  %i.aa = zext nneg i8 %i.v to i32                ; 2 uses
  %i.ab = icmp ult i64 %i.u, %i.j
  br i1 %i.ab, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread

_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28: ; preds = %bb.f, %bb.s
  %.sroa.08.054 = phi i32 [ %i.bj, %bb.s ], [ %i.aa, %bb.f ] ; 4 uses
  %i.ac = phi i64 [ %i.ag, %bb.s ], [ %i.u, %bb.f ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !noalias !2345, !noundef !7
  %i.af = add i8 %i.ae, -48                       ; 3 uses
  %or.cond1 = icmp ult i8 %i.af, 10
  br i1 %or.cond1, label %bb.g, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread

_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread: ; preds = %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28, %bb.s, %bb.f
  %.sroa.08.0.lcssa = phi i32 [ %i.aa, %bb.f ], [ %i.bj, %bb.s ], [ %.sroa.08.054, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28 ] ; 2 uses
  br i1 %.sroa.0.0, label %bb.i, label %bb.h

bb.g:                                             ; preds = %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28
  %i.ag = add i64 %i.ac, 1                        ; 3 uses
  store i64 %i.ag, ptr %i.f, align 8, !alias.scope !2346
  %i.ah = zext nneg i8 %i.af to i32
  %i.ai = icmp sgt i32 %.sroa.08.054, 214748363
  br i1 %i.ai, label %bb.r, label %bb.s

bb.h:                                             ; preds = %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread
  %i.aj = tail call i32 @llvm.ssub.sat.i32(i32 %4, i32 %.sroa.08.0.lcssa)
  br label %bb.j

bb.i:                                             ; preds = %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread
  %i.ak = tail call i32 @llvm.sadd.sat.i32(i32 %4, i32 %.sroa.08.0.lcssa)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.015.0 = phi i32 [ %i.ak, %bb.i ], [ %i.aj, %bb.h ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2347)
  %i.al = uitofp i64 %3 to double                 ; 2 uses
  %.sroa.012.020.i = tail call i32 @llvm.abs.i32(i32 %.sroa.015.0, i1 false) ; 2 uses
  %i.am = icmp ult i32 %.sroa.012.020.i, 309
  br i1 %i.am, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j, %bb.l
  %.sroa.0.022.i = phi i32 [ %i.au, %bb.l ], [ %.sroa.015.0, %bb.j ] ; 2 uses
  %.sroa.04.021.i = phi double [ %i.at, %bb.l ], [ %i.al, %bb.j ] ; 3 uses
  %i.an = fcmp oeq double %.sroa.04.021.i, 0.000000e+00
  br i1 %i.an, label %.loopexit.i, label %bb.k

._crit_edge.i:                                    ; preds = %bb.l, %bb.j
  %.sroa.04.0.lcssa.i = phi double [ %i.al, %bb.j ], [ %i.at, %bb.l ] ; 2 uses
  %.sroa.0.0.lcssa.i = phi i32 [ %.sroa.015.0, %bb.j ], [ %i.au, %bb.l ]
  %.sroa.012.0.lcssa.i = phi i32 [ %.sroa.012.020.i, %bb.j ], [ %.sroa.012.0.i, %bb.l ]
  %i.ao = zext nneg i32 %.sroa.012.0.lcssa.i to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr @_RNvNtCs6MoqnCnVQOT_10serde_json2de5POW10, i64 %i.ao
  %i.aq = load double, ptr %i.ap, align 8, !noalias !2348, !noundef !7 ; 2 uses
  %i.ar = icmp sgt i32 %.sroa.0.0.lcssa.i, -1
  br i1 %i.ar, label %bb.o, label %bb.n

bb.k:                                             ; preds = %.lr.ph.i
  %i.as = icmp sgt i32 %.sroa.0.022.i, -1
  br i1 %i.as, label %bb.m, label %bb.l, !prof !11

bb.l:                                             ; preds = %bb.k
  %i.at = fdiv double %.sroa.04.021.i, 1.000000e+308 ; 2 uses
  %i.au = add nsw i32 %.sroa.0.022.i, 308         ; 3 uses
  %.sroa.012.0.i = tail call i32 @llvm.abs.i32(i32 %i.au, i1 true) ; 2 uses
  %i.av = icmp samesign ult i32 %.sroa.012.0.i, 309
  br i1 %i.av, label %._crit_edge.i, label %.lr.ph.i

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2348
  store i64 14, ptr %i.a, align 8, !noalias !2348
  %i.aw = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !2347
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2348
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aw, ptr %i.ax, align 8, !alias.scope !2347, !noalias !2349
  br label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCsbNLsQi0JuJ4_5tgrep.exit

.loopexit.i:                                      ; preds = %.lr.ph.i, %bb.o, %bb.n
  %.sroa.04.1.i = phi double [ %i.bb, %bb.o ], [ %i.ba, %bb.n ], [ %.sroa.04.021.i, %.lr.ph.i ] ; 2 uses
  %i.ay = fneg double %.sroa.04.1.i
  %.sroa.04.2.i = select i1 %2, double %.sroa.04.1.i, double %i.ay
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %.sroa.04.2.i, ptr %i.az, align 8, !alias.scope !2347, !noalias !2349
  br label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCsbNLsQi0JuJ4_5tgrep.exit

bb.n:                                             ; preds = %._crit_edge.i
  %i.ba = fdiv double %.sroa.04.0.lcssa.i, %i.aq
  br label %.loopexit.i

bb.o:                                             ; preds = %._crit_edge.i
  %i.bb = fmul double %.sroa.04.0.lcssa.i, %i.aq  ; 2 uses
  %i.bc = tail call double @llvm.fabs.f64(double %i.bb)
  %i.bd = fcmp oeq double %i.bc, +inf
  br i1 %i.bd, label %bb.p, label %.loopexit.i, !prof !11

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2348
  store i64 14, ptr %i.b, align 8, !noalias !2348
  %i.be = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !2347
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2348
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.be, ptr %i.bf, align 8, !alias.scope !2347, !noalias !2349
  br label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCsbNLsQi0JuJ4_5tgrep.exit

_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.m, %.loopexit.i, %bb.p
  %storemerge.i = phi i64 [ 0, %.loopexit.i ], [ 1, %bb.p ], [ 1, %bb.m ]
  store i64 %storemerge.i, ptr %0, align 8, !alias.scope !2347, !noalias !2349
  br label %bb.q

bb.q:                                             ; preds = %bb.t, %bb.e, %bb.d, %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCsbNLsQi0JuJ4_5tgrep.exit
  ret void

end_hunk_5
begin_hunk_6_@_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE17peek_invalid_typeCsbNLsQi0JuJ4_5tgrep:bb.a
  %.not.i34.3 = icmp eq i8 %i.bm, 101
  br i1 %.not.i34.3, label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsbNLsQi0JuJ4_5tgrep.exit37, label %bb.z, !prof !27

_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i36: ; preds = %bb.x, %bb.v, %bb.t, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2467
  store i64 5, ptr %i.b, align 8, !noalias !2467
  %i.bo = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !2449
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2467
  br label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsbNLsQi0JuJ4_5tgrep.exit.thread

bb.z:                                             ; preds = %bb.y, %bb.w, %bb.u, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2467
  store i64 9, ptr %i.a, align 8, !noalias !2467
  %i.bp = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !2449
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2467
  br label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsbNLsQi0JuJ4_5tgrep.exit.thread

bb.aa:                                            ; preds = %bb.b
  %i.bq = add nuw i64 %i.s, 1
  store i64 %i.bq, ptr %i.r, align 8, !alias.scope !2468
  call fastcc void @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_integerCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.m, ptr noalias nofree noundef align 8 dereferenceable(56) %0, i1 noundef zeroext false)
  %i.br = load i64, ptr %i.m, align 8, !range !23, !noundef !7
  %i.bs = icmp eq i64 %i.br, -1
  br i1 %i.bs, label %bb.af, label %bb.ag, !prof !20

bb.ab:                                            ; preds = %bb.b
  %i.bt = add nuw i64 %i.s, 1
  store i64 %i.bt, ptr %i.r, align 8, !alias.scope !2469
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.bu, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read9parse_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  %i.bv = load i64, ptr %i.k, align 8, !range !15, !noundef !7
  %i.bw = icmp eq i64 %i.bv, 2
  %i.bx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !7, !noundef !7 ; 2 uses
  br i1 %i.bw, label %bb.ah, label %bb.ai, !prof !20

bb.ac:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i8 10, ptr %i.i, align 8
  %i.bz = call noundef nonnull align 8 ptr @_RNvXs6_NtCs6MoqnCnVQOT_10serde_json5errorNtB5_5ErrorNtNtCs4ZeZeX9PAiK_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.i, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.ae

bb.ad:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i8 11, ptr %i.h, align 8
  %i.ca = call noundef nonnull align 8 ptr @_RNvXs6_NtCs6MoqnCnVQOT_10serde_json5errorNtB5_5ErrorNtNtCs4ZeZeX9PAiK_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.h, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.ae

_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i8 7, ptr %i.p, align 8
  %i.cb = call noundef nonnull align 8 ptr @_RNvXs6_NtCs6MoqnCnVQOT_10serde_json5errorNtB5_5ErrorNtNtCs4ZeZeX9PAiK_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.p, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.al, %.thread58, %bb.ai, %bb.ag, %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsbNLsQi0JuJ4_5tgrep.exit37, %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsbNLsQi0JuJ4_5tgrep.exit29, %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsbNLsQi0JuJ4_5tgrep.exit, %bb.ad, %bb.ac
  %.sroa.02.0 = phi ptr [ %i.cs, %bb.al ], [ %i.cn, %.thread58 ], [ %i.cb, %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsbNLsQi0JuJ4_5tgrep.exit ], [ %i.ce, %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsbNLsQi0JuJ4_5tgrep.exit29 ], [ %i.cg, %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsbNLsQi0JuJ4_5tgrep.exit37 ], [ %i.cj, %bb.ag ], [ %i.cm, %bb.ai ], [ %i.bz, %bb.ac ], [ %i.ca, %bb.ad ]
  %i.cc = call noundef nonnull align 8 ptr @_RINvMs0_NtCs6MoqnCnVQOT_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read7StrReadE12fix_position0ECsbNLsQi0JuJ4_5tgrep(ptr noalias noundef nonnull align 8 %.sroa.02.0, ptr noundef nonnull readonly align 8 dereferenceable(56) %0)
  br label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsbNLsQi0JuJ4_5tgrep.exit.thread

_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsbNLsQi0JuJ4_5tgrep.exit29: ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.cd = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  store i8 1, ptr %i.cd, align 1
  store i8 0, ptr %i.o, align 8
  %i.ce = call noundef nonnull align 8 ptr @_RNvXs6_NtCs6MoqnCnVQOT_10serde_json5errorNtB5_5ErrorNtNtCs4ZeZeX9PAiK_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.o, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.ae

_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsbNLsQi0JuJ4_5tgrep.exit37: ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.cf = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  store i8 0, ptr %i.cf, align 1
  store i8 0, ptr %i.n, align 8
  %i.cg = call noundef nonnull align 8 ptr @_RNvXs6_NtCs6MoqnCnVQOT_10serde_json5errorNtB5_5ErrorNtNtCs4ZeZeX9PAiK_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.n, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.ae

bb.af:                                            ; preds = %bb.aa
  %i.ch = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !nonnull !7, !align !22, !noundef !7
  br label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsbNLsQi0JuJ4_5tgrep.exit.thread

bb.ag:                                            ; preds = %bb.aa
  %i.cj = call noundef nonnull align 8 ptr @_RNvMs2_NtCs6MoqnCnVQOT_10serde_json2deNtB5_12ParserNumber12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.m, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  br label %bb.ae

bb.ah:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsbNLsQi0JuJ4_5tgrep.exit.thread

bb.ai:                                            ; preds = %bb.ab
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.ck = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.by, ptr %i.ck, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %.sroa.6.0.copyload, ptr %i.cl, align 8
  store i8 5, ptr %i.j, align 8
  %i.cm = call noundef nonnull align 8 ptr @_RNvXs6_NtCs6MoqnCnVQOT_10serde_json5errorNtB5_5ErrorNtNtCs4ZeZeX9PAiK_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.j, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.ae

.thread58:                                        ; preds = %bb.a, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 10, ptr %i.g, align 8
  %i.cn = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.ae

bb.aj:                                            ; preds = %bb.c
  call fastcc void @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_integerCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.l, ptr noalias nofree noundef align 8 dereferenceable(56) %0, i1 noundef zeroext true)
  %i.co = load i64, ptr %i.l, align 8, !range !23, !noundef !7
  %i.cp = icmp eq i64 %i.co, -1
  br i1 %i.cp, label %bb.ak, label %bb.al, !prof !20

bb.ak:                                            ; preds = %bb.aj
  %i.cq = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !nonnull !7, !align !22, !noundef !7
  br label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsbNLsQi0JuJ4_5tgrep.exit.thread

bb.al:                                            ; preds = %bb.aj
  %i.cs = call noundef nonnull align 8 ptr @_RNvMs2_NtCs6MoqnCnVQOT_10serde_json2deNtB5_12ParserNumber12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.l, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  br label %bb.ae

_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsbNLsQi0JuJ4_5tgrep.exit.thread: ; preds = %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i36, %bb.z, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i28, %bb.q, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, %bb.j, %bb.af, %bb.ah, %bb.ak, %bb.ae
  %.sroa.0.1 = phi ptr [ %i.cc, %bb.ae ], [ %i.cr, %bb.ak ], [ %i.by, %bb.ah ], [ %i.az, %bb.q ], [ %i.am, %bb.j ], [ %i.ci, %bb.af ], [ %i.al, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i ], [ %i.ay, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i28 ], [ %i.bo, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i36 ], [ %i.bp, %bb.z ]
  ret ptr %.sroa.0.1
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = invoke { i64, i64 } @_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read8position(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a)
          to label %bb.b unwind label %bb.d       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.c = extractvalue { i64, i64 } %i.b, 0
  %i.d = extractvalue { i64, i64 } %i.b, 1
  %i.e = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCs6MoqnCnVQOT_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %i.d)
  ret ptr %i.e

bb.c:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.f

bb.d:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6MoqnCnVQOT_10serde_json5error9ErrorCodeECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %1) #24
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_mapCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 captures(address, read_provenance) dereferenceable(56) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2483)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !2484, !noalias !2485, !noundef !7 ; 2 uses
  %.promoted.i = load i64, ptr %i.d, align 8, !alias.scope !2483, !noalias !2486 ; 2 uses
  %i.g = icmp ult i64 %.promoted.i, %i.f
  br i1 %i.g, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !2484, !noalias !2485, !nonnull !7, !noundef !7
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.j = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.m, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2487)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2488)
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !noalias !2489, !noundef !7
  switch i8 %i.l, label %bb.d [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 125, label %bb.e
    i8 44, label %bb.f
  ], !prof !25

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.m = add i64 %i.j, 1                          ; 3 uses
  store i64 %i.m, ptr %i.d, align 8, !alias.scope !2490, !noalias !2486
  %exitcond.not.i = icmp eq i64 %i.m, %i.f
  br i1 %exitcond.not.i, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 3, ptr %i.a, align 8
  %i.n = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 22, ptr %i.b, align 8
  %i.o = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.p = add i64 %i.j, 1
  store i64 %i.p, ptr %i.d, align 8, !alias.scope !2491
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 21, ptr %i.c, align 8
  %i.q = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.g

bb.g:                                             ; preds = %.loopexit, %bb.d, %bb.e, %bb.f
  %.sroa.0.0 = phi ptr [ %i.o, %bb.d ], [ null, %bb.e ], [ %i.q, %bb.f ], [ %i.n, %.loopexit ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 captures(address, read_provenance) dereferenceable(56) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2518)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !2519, !noalias !2520, !noundef !7 ; 4 uses
  %.promoted.i = load i64, ptr %i.e, align 8, !alias.scope !2518, !noalias !2521 ; 2 uses
  %i.h = icmp ult i64 %.promoted.i, %i.g
  br i1 %i.h, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !2519, !noalias !2520, !nonnull !7, !noundef !7 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.k = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.n, %bb.c ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2522)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2523)
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !noalias !2524, !noundef !7
  switch i8 %i.m, label %bb.d [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 93, label %bb.e
    i8 44, label %bb.f
  ], !prof !25

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.n = add i64 %i.k, 1                          ; 3 uses
  store i64 %i.n, ptr %i.e, align 8, !alias.scope !2525, !noalias !2521
  %exitcond.not.i = icmp eq i64 %i.n, %i.g
  br i1 %exitcond.not.i, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 2, ptr %i.a, align 8
  %i.o = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionhENtNtCs6MoqnCnVQOT_10serde_json5error5ErrorEECsbNLsQi0JuJ4_5tgrep.exit14

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 22, ptr %i.b, align 8
  %i.p = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionhENtNtCs6MoqnCnVQOT_10serde_json5error5ErrorEECsbNLsQi0JuJ4_5tgrep.exit14

bb.e:                                             ; preds = %bb.b
  %i.q = add i64 %i.k, 1
  store i64 %i.q, ptr %i.e, align 8, !alias.scope !2526
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionhENtNtCs6MoqnCnVQOT_10serde_json5error5ErrorEECsbNLsQi0JuJ4_5tgrep.exit14

bb.f:                                             ; preds = %bb.b
  %i.r = add i64 %i.k, 1                          ; 3 uses
  store i64 %i.r, ptr %i.e, align 8, !alias.scope !2527
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2528)
  %i.s = icmp ult i64 %i.r, %i.g
  br i1 %i.s, label %.lr.ph.i9, label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsbNLsQi0JuJ4_5tgrep.exit13.thread

.lr.ph.i9:                                        ; preds = %bb.f, %bb.g
  %i.t = phi i64 [ %i.w, %bb.g ], [ %i.r, %bb.f ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !noalias !2529, !noundef !7
  switch i8 %i.v, label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsbNLsQi0JuJ4_5tgrep.exit13.thread [
    i8 32, label %bb.g
    i8 10, label %bb.g
    i8 9, label %bb.g
    i8 13, label %bb.g
    i8 93, label %bb.h
  ]

bb.g:                                             ; preds = %.lr.ph.i9, %.lr.ph.i9, %.lr.ph.i9, %.lr.ph.i9
  %i.w = add i64 %i.t, 1                          ; 3 uses
  store i64 %i.w, ptr %i.e, align 8, !alias.scope !2530, !noalias !2531
  %exitcond.not.i10 = icmp eq i64 %i.w, %i.g
  br i1 %exitcond.not.i10, label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsbNLsQi0JuJ4_5tgrep.exit13.thread, label %.lr.ph.i9

_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsbNLsQi0JuJ4_5tgrep.exit13.thread: ; preds = %.lr.ph.i9, %bb.g, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 22, ptr %i.c, align 8
  %i.x = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionhENtNtCs6MoqnCnVQOT_10serde_json5error5ErrorEECsbNLsQi0JuJ4_5tgrep.exit14

bb.h:                                             ; preds = %.lr.ph.i9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 21, ptr %i.d, align 8
  %i.y = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionhENtNtCs6MoqnCnVQOT_10serde_json5error5ErrorEECsbNLsQi0JuJ4_5tgrep.exit14

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionhENtNtCs6MoqnCnVQOT_10serde_json5error5ErrorEECsbNLsQi0JuJ4_5tgrep.exit14: ; preds = %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsbNLsQi0JuJ4_5tgrep.exit13.thread, %bb.h, %.loopexit, %bb.d, %bb.e
  %.sroa.0.0 = phi ptr [ %i.p, %bb.d ], [ null, %bb.e ], [ %i.o, %.loopexit ], [ %i.x, %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsbNLsQi0JuJ4_5tgrep.exit13.thread ], [ %i.y, %bb.h ]
  ret ptr %.sroa.0.0
}

; Function Attrs: cold noinline nonlazybind uwtable
define hidden noundef ptr @_RNvMs_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtNtCs5Xr050g3D4S_3std2io5stdio6StdoutE14write_all_coldCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #5 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !19, !noundef !7 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !7 ; 2 uses
  %i.d = icmp sgt i64 %i.c, -1
  tail call void @llvm.assume(i1 %i.d)
  %i.e = sub nsw i64 %i.a, %i.c
  %i.f = icmp ugt i64 %2, %i.e
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call fastcc noundef ptr @_RNvMs_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtNtCs5Xr050g3D4S_3std2io5stdio6StdoutE9flush_bufCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(40) %0) ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %._crit_edge, label %bb.f

._crit_edge:                                      ; preds = %bb.b
  %.pre = load i64, ptr %0, align 8, !range !19
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  %i.h = phi i64 [ %.pre, %._crit_edge ], [ %i.a, %bb.a ]
  %.not4 = icmp samesign ult i64 %2, %i.h
  br i1 %.not4, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2535)
  %i.i = load i64, ptr %i.b, align 8, !alias.scope !2535, !noalias !2536, !noundef !7 ; 3 uses
  %i.j = icmp sgt i64 %i.i, -1
  tail call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !2535, !noalias !2536, !nonnull !7, !noundef !7
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr nonnull readonly align 1 %1, i64 range(i64 0, -9223372036854775808) %2, i1 false), !noalias !2535
  %i.n = add nuw i64 %i.i, %2
  store i64 %i.n, ptr %i.b, align 8, !alias.scope !2535, !noalias !2536
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i8 1, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = tail call noundef ptr @_RNvXse_NtNtCs5Xr050g3D4S_3std2io5stdioNtB5_6StdoutNtNtNtCsf3Ta7LF998c_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.p, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  store i8 0, ptr %i.o, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.d, %bb.e
  %.sroa.0.0 = phi ptr [ null, %bb.d ], [ %i.q, %bb.e ], [ %i.g, %bb.b ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_RNvMs_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtNtCs5Xr050g3D4S_3std2io5stdio6StdoutE9flush_bufCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  store i64 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !7 ; 2 uses
  %i.f = icmp sgt i64 %i.e, -1
  tail call void @llvm.assume(i1 %i.f)
  %.not15.not = icmp eq i64 %i.e, 0
  br i1 %.not15.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.m
  store i8 1, ptr %i.g, align 8
  %i.j = invoke { ptr, i64 } @_RNvMNvMs_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufwriterINtB7_9BufWriterpE9flush_bufNtB2_8BufGuard9remaining(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b)
          to label %bb.e unwind label %bb.d       ; 2 uses

bb.c:                                             ; preds = %bb.n, %bb.d
  %.pn = phi { ptr, i32 } [ %i.k, %bb.d ], [ %i.av, %bb.n ]
  invoke void @_RNvXs_NvMs_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufwriterINtB9_9BufWriterpE9flush_bufNtB4_8BufGuardNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNvMs_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufwriterINtBI_9BufWriterpE9flush_buf8BufGuardECsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.o

bb.d:                                             ; preds = %bb.l, %bb.e, %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.e:                                             ; preds = %bb.b
  %i.l = extractvalue { ptr, i64 } %i.j, 0
  %i.m = extractvalue { ptr, i64 } %i.j, 1
  %i.n = invoke { i64, ptr } @_RNvXse_NtNtCs5Xr050g3D4S_3std2io5stdioNtB5_6StdoutNtNtNtCsf3Ta7LF998c_4core2io5write5Write5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef %i.m)
          to label %bb.f unwind label %bb.d       ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.o = extractvalue { i64, ptr } %i.n, 0
  %i.p = extractvalue { i64, ptr } %i.n, 1        ; 13 uses
  %i.q = ptrtoint ptr %i.p to i64                 ; 5 uses
  store i8 0, ptr %i.g, align 8
  %i.r = trunc nuw i64 %i.o to i1
  br i1 %i.r, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.p) ]
  %i.s = and i64 %i.q, 3
  switch i64 %i.s, label %default.unreachable [
    i64 2, label %bb.h
    i64 3, label %.split10
    i64 0, label %.split11
    i64 1, label %.split
  ], !prof !16

default.unreachable:                              ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.t = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCsf3Ta7LF998c_4core2io5error12os_functions16get_os_functions()
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.h
  %i.u = lshr i64 %i.q, 32
  %i.v = trunc nuw i64 %i.u to i32
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !7, !noundef !7
  %i.y = invoke noundef zeroext i1 %i.x(i32 noundef %i.v)
          to label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit unwind label %bb.n, !inline_history !0

.split10:                                         ; preds = %bb.g
  %i.z = lshr i64 %i.q, 32
  %i.aa = icmp ult ptr %i.p, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i = trunc i64 %i.z to i8
  %spec.select.i.i.i = select i1 %i.aa, i8 %switch.idx.cast.i.i.i, i8 -1 ; 2 uses
  %i.ab = icmp ne i8 %spec.select.i.i.i, -1
  call void @llvm.assume(i1 %i.ab)
  %i.ac = icmp eq i8 %spec.select.i.i.i, 35
  br i1 %i.ac, label %bb.k, label %._crit_edge

.split11:                                         ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.ae = load i8, ptr %i.ad, align 8, !range !24, !noundef !7
  %i.af = icmp eq i8 %i.ae, 35
  br i1 %i.af, label %.thread.thread, label %._crit_edge

.split:                                           ; preds = %bb.g
  %i.ag = getelementptr i8, ptr %i.p, i64 31
  %i.ah = load i8, ptr %i.ag, align 8, !range !24, !noundef !7
  %i.ai = icmp eq i8 %i.ah, 35
  br i1 %i.ai, label %bb.l, label %._crit_edge

bb.i:                                             ; preds = %bb.f
  %i.aj = icmp eq ptr %i.p, null
  br i1 %i.aj, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = load i64, ptr %i.c, align 8, !noundef !7
  %i.al = add i64 %i.ak, %i.q                     ; 2 uses
  store i64 %i.al, ptr %i.c, align 8
  br label %bb.m

_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit: ; preds = %.noexc
  br i1 %i.y, label %.thread.thread, label %._crit_edge

._crit_edge:                                      ; preds = %bb.i, %.split11, %.split10, %.split, %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit, %bb.m, %bb.a
  %.sroa.0.1 = phi ptr [ null, %bb.a ], [ null, %bb.m ], [ @85, %bb.i ], [ %i.p, %.split11 ], [ %i.p, %.split10 ], [ %i.p, %.split ], [ %i.p, %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit ]
  call void @_RNvXs_NvMs_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufwriterINtB9_9BufWriterpE9flush_bufNtB4_8BufGuardNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %.sroa.0.1

.thread.thread:                                   ; preds = %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit, %.split11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit

bb.k:                                             ; preds = %.split10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.am = icmp ult ptr %i.p, inttoptr (i64 188978561024 to ptr)
  %i.an = and i64 %i.q, 1095216660480
end_hunk_6
