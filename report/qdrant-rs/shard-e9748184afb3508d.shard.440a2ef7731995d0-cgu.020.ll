Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/shard-e9748184afb3508d.shard.440a2ef7731995d0-cgu.020?download=true
inline.NumInlined: 462
inline.NumDeleted: 138
begin_hunk_0_@_RNvMs_NtNtCs5QaNqjAn6vc_5shard5query7formulaNtB4_18ExpressionInternal17parse_and_convert:bb.a

bb.ff:                                            ; preds = %bb.fe
  %i.ku = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12
  unreachable

bb.fg:                                            ; preds = %bb.fd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ks, ptr noundef nonnull align 8 dereferenceable(64) %i.m, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.ex

.body410:                                         ; preds = %bb.ey
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtNtCs607s0NAIaWN_7segment5index18query_optimization15rescore_formula14parsed_formula16ParsedExpressionEEECs5QaNqjAn6vc_5shard(ptr %.sroa.0519.0) #15
          to label %.thread560 unwind label %bb.as

bb.fh:                                            ; preds = %bb.ex
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ko, ptr noundef nonnull align 8 dereferenceable(64) %i.s, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.kv = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  store i8 %i.fb, ptr %i.kv, align 8
  %i.kw = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store ptr %i.ko, ptr %i.kw, align 8
  %i.kx = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  store ptr %.sroa.0519.0, ptr %i.kx, align 8
  %i.ky = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  store double %i.kl, ptr %i.ky, align 8
  store i64 -9223372036854775794, ptr %i.br, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fd, i64 noundef 64, i64 noundef 8) #14
  br label %bb.aa

bb.fi:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs5QaNqjAn6vc_5shard.exit466, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs5QaNqjAn6vc_5shard.exit471, %bb.bl, %bb.bn, %bb.br, %bb.cd, %bb.cj, %bb.df, %bb.dk, %bb.ds, %bb.ea, %bb.ei, %bb.fn, %bb.aa
  ret void

.thread557:                                       ; preds = %bb.fc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.fn

bb.fj:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs5QaNqjAn6vc_5shard5query7formula18ExpressionInternalEEB1g_.exit.i, %bb.fk
  %i.kz = trunc nuw i8 %.sroa.0189.3 to i1
  br i1 %i.kz, label %bb.fo, label %bb.fn

.thread552:                                       ; preds = %bb.fe, %bb.fa
  %eh.lpad-body = phi { ptr, i32 } [ %i.kr, %bb.fa ], [ %i.kt, %bb.fe ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCs607s0NAIaWN_7segment5index18query_optimization15rescore_formula14parsed_formula16ParsedExpressionECs5QaNqjAn6vc_5shard(ptr noalias nofree noundef align 8 dereferenceable(64) %i.v) #15
          to label %.thread560 unwind label %bb.as

bb.fk:                                            ; preds = %bb.et, %bb.eq
  %.sroa.0189.3 = phi i8 [ 1, %bb.eq ], [ 0, %bb.et ] ; 2 uses
  %i.la = icmp eq ptr %i.ff, null
  br i1 %i.la, label %bb.fj, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5QaNqjAn6vc_5shard5query7formula18ExpressionInternalEBH_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.ff) #13
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs5QaNqjAn6vc_5shard5query7formula18ExpressionInternalEEB1g_.exit.i unwind label %bb.fm, !noalias !460, !inline_history !461

bb.fm:                                            ; preds = %bb.fl
  %i.lb = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ff, i64 noundef 64, i64 noundef 8) #14, !noalias !460, !inline_history !461
  br label %.body483

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs5QaNqjAn6vc_5shard5query7formula18ExpressionInternalEEB1g_.exit.i: ; preds = %bb.fl
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ff, i64 noundef 64, i64 noundef 8) #14, !noalias !460, !inline_history !461
  br label %bb.fj

.body483:                                         ; preds = %bb.fm, %bb.fq
  %.sroa.0189.4 = phi i8 [ %.sroa.0189.1.ph, %bb.fq ], [ %.sroa.0189.3, %bb.fm ]
  %.pn385 = phi { ptr, i32 } [ %lpad.thr_comm544, %bb.fq ], [ %i.lb, %bb.fm ] ; 2 uses
  %i.lc = trunc nuw i8 %.sroa.0189.4 to i1
  br i1 %i.lc, label %bb.fr, label %.thread560

bb.fn:                                            ; preds = %.thread557, %bb.fo, %bb.fj
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fd, i64 noundef 64, i64 noundef 8) #14
  br label %bb.fi

bb.fo:                                            ; preds = %bb.fj
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5QaNqjAn6vc_5shard5query7formula18ExpressionInternalEBH_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.fd)
          to label %bb.fn unwind label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.ld = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fd, i64 noundef 64, i64 noundef 8) #14
  br label %common.resume

bb.fq:                                            ; preds = %bb.er, %bb.z
  %.sroa.0189.1.ph = phi i8 [ 1, %bb.z ], [ 0, %bb.er ]
  %lpad.thr_comm544 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs5QaNqjAn6vc_5shard5query7formula18ExpressionInternalEEEB1C_(ptr %i.ff) #15
          to label %.body483 unwind label %bb.as

.thread560:                                       ; preds = %.body410, %.thread552, %bb.eo, %bb.fr, %.body483
  %.pn385563 = phi { ptr, i32 } [ %.pn385, %.body483 ], [ %.pn385, %bb.fr ], [ %lpad.thr_comm.split-lp545, %bb.eo ], [ %eh.lpad-body, %.thread552 ], [ %i.kp, %.body410 ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fd, i64 noundef 64, i64 noundef 8) #14
  br label %common.resume

bb.fr:                                            ; preds = %.body483
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5QaNqjAn6vc_5shard5query7formula18ExpressionInternalEBH_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.fd) #15
          to label %.thread560 unwind label %bb.as
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noalias noundef nonnull ptr @_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit(i64 noundef range(i64 64, 377) %0) unnamed_addr #1 {
bb.a:
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #14
  %i.a = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 64, 377) %0, i64 noundef 8) #14 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !18

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %0) #17
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment9json_path12JsonPathItemENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs5QaNqjAn6vc_5shard(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #15
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsj_NtNtCs5QaNqjAn6vc_5shard5query11conversionsNtNtB7_7formula15FormulaInternalINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtCshMzyYDJGtjv_3api4rest6schema12FormulaQueryE4from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(112) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvXsl_NtNtCs5QaNqjAn6vc_5shard5query11conversionsNtNtB7_7formula18ExpressionInternalINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtCshMzyYDJGtjv_3api4rest6schema10ExpressionE4from(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs8O45qwFIwQX_10serde_json5value5ValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs8O45qwFIwQX_10serde_json5value5ValueEECs5QaNqjAn6vc_5shard.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs8O45qwFIwQX_10serde_json5value5ValueEECs5QaNqjAn6vc_5shard.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsk_NtNtCs5QaNqjAn6vc_5shard5query11conversionsNtNtB7_7formula15FormulaInternalINtNtCskKLDkoKarTP_4core7convert7TryFromNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant7FormulaE8try_from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(464) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [64 x i8], align 8                ; 4 uses
  %i.c = alloca [64 x i8], align 8                ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 7 uses
  %i.e = alloca [64 x i8], align 8                ; 7 uses
  %i.f = alloca [64 x i8], align 8                ; 9 uses
  %i.g = alloca [416 x i8], align 8               ; 4 uses
  %i.h = alloca [48 x i8], align 8                ; 6 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.sroa.0.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 416
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef nonnull align 8 dereferenceable(48) %i.i, i64 48, i1 false)
  %.not = icmp eq i64 %.sroa.0.0.copyload, -3
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(400) %.sroa.8.0..sroa_idx8, ptr noundef nonnull align 8 dereferenceable(400) %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx, i64 400, i1 false)
  store i64 %.sroa.0.0.copyload, ptr %i.g, align 8
  %.sroa.65.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %.sroa.6.sroa.0.0.copyload, ptr %.sroa.65.0..sroa_idx6, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RNvXsm_NtNtCs5QaNqjAn6vc_5shard5query11conversionsNtNtB7_7formula18ExpressionInternalINtNtCskKLDkoKarTP_4core7convert7TryFromNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant10ExpressionE8try_from(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(416) %i.g)
          to label %bb.f unwind label %bb.p

bb.c:                                             ; preds = %bb.a
  %i.j = invoke noundef nonnull align 8 ptr @_RINvMs1_NtCsgOCJwUSa4vG_5tonic6statusNtB6_6Status3newReECs5QaNqjAn6vc_5shard(i8 noundef 3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 25)
          to label %bb.d unwind label %bb.p

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %i.k, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  call void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.h)
  br label %bb.n

bb.f:                                             ; preds = %bb.b
  %i.l = load i64, ptr %i.e, align 8, !range !19, !noundef !6 ; 2 uses
  %i.m = icmp eq i64 %i.l, -1
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  br i1 %i.m, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.o, ptr %i.p, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.e

bb.h:                                             ; preds = %bb.f
  %.sroa.544.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.544.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i64 %i.l, ptr %i.f, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.o, ptr %.sroa.4.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvXsE_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.a)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %bb.j, %bb.h
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5QaNqjAn6vc_5shard5query7formula18ExpressionInternalEBH_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.f) #15
          to label %.thread unwind label %bb.o

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @_RINvNtNtCskKLDkoKarTP_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueENCNvXsk_NtNtCs5QaNqjAn6vc_5shard5query11conversionsNtNtB3u_7formula15FormulaInternalINtNtB6_7convert7TryFromNtB2F_7FormulaE8try_froms_0ETB21_NtNtCs8O45qwFIwQX_10serde_json5value5ValueEINtNtB6_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusENCINvXso_B6l_IB6j_INtB19_7HashMapB21_B5B_EB6F_EINtNtNtB4_6traits7collect12FromIteratorIB6j_B5w_B6F_EE9from_iterBQ_E0B7A_EB3w_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %i.c)
          to label %bb.k unwind label %bb.i

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.r = load ptr, ptr %i.d, align 8, !noundef !6 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  br i1 %i.s, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.u, ptr %i.v, align 8
  store i64 -1, ptr %0, align 8
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5QaNqjAn6vc_5shard5query7formula18ExpressionInternalEBH_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.f)
  br label %.sink.split

bb.m:                                             ; preds = %bb.k
  %.sroa.547.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.635.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.635.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.547.0..sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.f, i64 64, i1 false)
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.r, ptr %.sroa.433.0..sroa_idx, align 8
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.u, ptr %.sroa.534.0..sroa_idx, align 8
  br label %.sink.split

.sink.split:                                      ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void

bb.o:                                             ; preds = %bb.p, %bb.i
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12
  unreachable

.thread:                                          ; preds = %bb.p, %bb.i
  %.pn53 = phi { ptr, i32 } [ %lpad.thr_comm, %bb.p ], [ %i.q, %bb.i ]
  resume { ptr, i32 } %.pn53

bb.p:                                             ; preds = %bb.b, %bb.c
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.h)
          to label %.thread unwind label %bb.o
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsl_NtNtCs5QaNqjAn6vc_5shard5query11conversionsNtNtB7_7formula18ExpressionInternalINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtCshMzyYDJGtjv_3api4rest6schema10ExpressionE4from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 4 uses
  %i.b = alloca [64 x i8], align 8                ; 5 uses
  %i.c = alloca [64 x i8], align 8                ; 4 uses
  %i.d = alloca [64 x i8], align 8                ; 5 uses
  %i.e = alloca [64 x i8], align 8                ; 4 uses
  %i.f = alloca [64 x i8], align 8                ; 5 uses
  %i.g = alloca [64 x i8], align 8                ; 4 uses
  %i.h = alloca [64 x i8], align 8                ; 5 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [64 x i8], align 8                ; 4 uses
  %i.k = alloca [64 x i8], align 8                ; 5 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [64 x i8], align 8                ; 4 uses
  %i.n = alloca [64 x i8], align 8                ; 5 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [64 x i8], align 8                ; 4 uses
  %i.q = alloca [64 x i8], align 8                ; 5 uses
  %i.r = alloca [64 x i8], align 8                ; 4 uses
  %i.s = alloca [64 x i8], align 8                ; 5 uses
  %i.t = alloca [64 x i8], align 8                ; 4 uses
  %i.u = alloca [64 x i8], align 8                ; 5 uses
  %i.v = alloca [64 x i8], align 8                ; 4 uses
  %i.w = alloca [64 x i8], align 8                ; 5 uses
  %i.x = alloca [64 x i8], align 8                ; 4 uses
  %i.y = alloca [64 x i8], align 8                ; 5 uses
  %i.z = alloca [64 x i8], align 8                ; 4 uses
  %i.aa = alloca [64 x i8], align 8               ; 5 uses
  %i.ab = alloca [8 x i8], align 8                ; 4 uses
  %i.ac = alloca [64 x i8], align 8               ; 4 uses
  %i.ad = alloca [64 x i8], align 8               ; 5 uses
  %i.ae = alloca [64 x i8], align 8               ; 4 uses
  %i.af = alloca [64 x i8], align 8               ; 5 uses
  %i.ag = alloca [64 x i8], align 8               ; 4 uses
  %i.ah = alloca [64 x i8], align 8               ; 5 uses
  %i.ai = alloca [8 x i8], align 8                ; 4 uses
  %i.aj = alloca [64 x i8], align 8               ; 4 uses
  %i.ak = alloca [64 x i8], align 8               ; 5 uses
  %i.al = alloca [32 x i8], align 8               ; 7 uses
  %i.am = alloca [32 x i8], align 8               ; 7 uses
  %i.an = load i64, ptr %1, align 8, !range !13, !noundef !6 ; 3 uses
  %i.ao = icmp ne i64 %i.an, -9223372036854775805
  tail call void @llvm.assume(i1 %i.ao)
  %i.ap = xor i64 %i.an, -9223372036854775808
  %i.aq = icmp slt i64 %i.an, 0
  %i.ar = select i1 %i.aq, i64 %i.ap, i64 3
  switch i64 %i.ar, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
    i64 5, label %bb.h
    i64 6, label %bb.i
    i64 7, label %bb.j
    i64 8, label %bb.k
    i64 9, label %bb.l
    i64 10, label %bb.m
    i64 11, label %bb.n
    i64 12, label %bb.o
    i64 13, label %bb.p
    i64 14, label %bb.q
    i64 15, label %bb.r
    i64 16, label %bb.s
    i64 17, label %bb.t
    i64 18, label %bb.u
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.at = load float, ptr %i.as, align 8, !noundef !6
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.at, ptr %i.au, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.v

bb.d:                                             ; preds = %bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %i.av, i64 24, i1 false)
  store i64 -9223372036854775807, ptr %0, align 8
  br label %bb.v

bb.e:                                             ; preds = %bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !nonnull !6, !align !8, !noundef !6
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ay, ptr %i.az, align 8
  store i64 -9223372036854775806, ptr %0, align 8
  br label %bb.v

bb.f:                                             ; preds = %bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bc = load <2 x double>, ptr %i.ba, align 8
  store <2 x double> %i.bc, ptr %i.bb, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  br label %bb.v

bb.g:                                             ; preds = %bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.be, ptr noundef nonnull align 8 dereferenceable(24) %i.bd, i64 24, i1 false)
  store i64 -9223372036854775804, ptr %0, align 8
  br label %bb.v

bb.h:                                             ; preds = %bb.a
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bg, ptr noundef nonnull align 8 dereferenceable(48) %i.bf, i64 48, i1 false)
  store i64 -9223372036854775803, ptr %0, align 8
  br label %bb.v

bb.i:                                             ; preds = %bb.a
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.bk = load i64, ptr %i.bh, align 8, !range !16, !noundef !6
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bm = load i64, ptr %i.bl, align 8, !noundef !6 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  %i.bn = icmp ult i64 %i.bm, 144115188075855872
  tail call void @llvm.assume(i1 %i.bn)
  %i.bo = getelementptr inbounds nuw [64 x i8], ptr %i.bj, i64 %i.bm
  store ptr %i.bj, ptr %i.am, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %i.bj, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store i64 %i.bk, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  store ptr %i.bo, ptr %.sroa.6.0..sroa_idx, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4rest6schema10ExpressionENvYNtNtNtCs5QaNqjAn6vc_5shard5query7formula18ExpressionInternalINtNtB1f_7convert4FromB2l_E4fromEB3b_EB3h_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bp, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  store i64 -9223372036854775802, ptr %0, align 8
  br label %bb.v

bb.j:                                             ; preds = %bb.a
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.bt = load i64, ptr %i.bq, align 8, !range !16, !noundef !6
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bv = load i64, ptr %i.bu, align 8, !noundef !6 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  %i.bw = icmp ult i64 %i.bv, 144115188075855872
  tail call void @llvm.assume(i1 %i.bw)
  %i.bx = getelementptr inbounds nuw [64 x i8], ptr %i.bs, i64 %i.bv
  store ptr %i.bs, ptr %i.al, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %i.bs, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store i64 %i.bt, ptr %.sroa.53.0..sroa_idx, align 8
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store ptr %i.bx, ptr %.sroa.64.0..sroa_idx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4rest6schema10ExpressionENvYNtNtNtCs5QaNqjAn6vc_5shard5query7formula18ExpressionInternalINtNtB1f_7convert4FromB2l_E4fromEB3b_EB3h_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.by, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.al)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  store i64 -9223372036854775801, ptr %0, align 8
  br label %bb.v

bb.k:                                             ; preds = %bb.a
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !nonnull !6, !align !8, !noundef !6 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.aj, ptr noundef nonnull align 8 dereferenceable(64) %i.ca, i64 64, i1 false)
  invoke void @_RNvXsl_NtNtCs5QaNqjAn6vc_5shard5query11conversionsNtNtB7_7formula18ExpressionInternalINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtCshMzyYDJGtjv_3api4rest6schema10ExpressionE4from(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.ak, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %i.aj)
          to label %bb.x unwind label %bb.w

bb.l:                                             ; preds = %bb.a
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !nonnull !6, !align !8, !noundef !6 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
end_hunk_0
