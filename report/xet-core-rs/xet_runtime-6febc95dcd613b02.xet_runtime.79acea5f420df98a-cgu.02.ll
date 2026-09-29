Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/xet_runtime-6febc95dcd613b02.xet_runtime.79acea5f420df98a-cgu.02?download=true
inline.NumInlined: 517
inline.NumDeleted: 305
begin_hunk_0_@_RNvMs_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtCsG258MDvU3F_3std2fs4FileE9flush_bufCsarFSTFZzLuM_11xet_runtime:bb.a
    i64 2, label %bb.h
    i64 3, label %.split10
    i64 0, label %.split11
    i64 1, label %.split
  ], !prof !11

default.unreachable:                              ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.t = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.h
  %i.u = lshr i64 %i.q, 32
  %i.v = trunc nuw i64 %i.u to i32
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !6, !noundef !6
  %i.y = invoke noundef zeroext i1 %i.x(i32 noundef %i.v)
          to label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit unwind label %bb.n, !inline_history !0

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
  %i.ae = load i8, ptr %i.ad, align 8, !range !18, !noundef !6
  %i.af = icmp eq i8 %i.ae, 35
  br i1 %i.af, label %.thread.thread, label %._crit_edge

.split:                                           ; preds = %bb.g
  %i.ag = getelementptr i8, ptr %i.p, i64 31
  %i.ah = load i8, ptr %i.ag, align 8, !range !18, !noundef !6
  %i.ai = icmp eq i8 %i.ah, 35
  br i1 %i.ai, label %bb.l, label %._crit_edge

bb.i:                                             ; preds = %bb.f
  %i.aj = icmp eq ptr %i.p, null
  br i1 %i.aj, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = load i64, ptr %i.c, align 8, !noundef !6
  %i.al = add i64 %i.ak, %i.q                     ; 2 uses
  store i64 %i.al, ptr %i.c, align 8
  br label %bb.m

_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit: ; preds = %.noexc
  br i1 %i.y, label %.thread.thread, label %._crit_edge

._crit_edge:                                      ; preds = %bb.i, %.split11, %.split10, %.split, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit, %bb.m, %bb.a
  %.sroa.0.1 = phi ptr [ null, %bb.a ], [ null, %bb.m ], [ @19, %bb.i ], [ %i.p, %.split11 ], [ %i.p, %.split10 ], [ %i.p, %.split ], [ %i.p, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit ]
  call void @_RNvXs_NvMs_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB9_9BufWriterpE9flush_bufNtB4_8BufGuardNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %.sroa.0.1

.thread.thread:                                   ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit, %.split11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsarFSTFZzLuM_11xet_runtime.exit

bb.k:                                             ; preds = %.split10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.am = icmp ult ptr %i.p, inttoptr (i64 188978561024 to ptr)
  %i.an = and i64 %i.q, 1095216660480
  %i.ao = icmp ne i64 %i.an, 1095216660480
  call void @llvm.assume(i1 %i.am)
  call void @llvm.assume(i1 %i.ao)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsarFSTFZzLuM_11xet_runtime.exit

bb.l:                                             ; preds = %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ap = getelementptr i8, ptr %i.p, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ap) ]
  store ptr %i.ap, ptr %i.i, align 8, !alias.scope !250
  store i8 3, ptr %i.a, align 8, !alias.scope !250
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsarFSTFZzLuM_11xet_runtime.exit unwind label %bb.d

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsarFSTFZzLuM_11xet_runtime.exit: ; preds = %.thread.thread, %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.pre = load i64, ptr %i.c, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsarFSTFZzLuM_11xet_runtime.exit
  %i.aq = phi i64 [ %i.al, %bb.j ], [ %.pre, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsarFSTFZzLuM_11xet_runtime.exit ]
  %i.ar = load ptr, ptr %i.b, align 8, !nonnull !6, !align !12, !noundef !6
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load i64, ptr %i.as, align 8, !noundef !6 ; 2 uses
  %i.au = icmp sgt i64 %i.at, -1
  call void @llvm.assume(i1 %i.au)
  %.not = icmp ult i64 %i.aq, %i.at
  br i1 %.not, label %bb.b, label %._crit_edge

bb.n:                                             ; preds = %bb.h, %.noexc
  %i.av = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsarFSTFZzLuM_11xet_runtime(ptr nonnull %i.p) #27
          to label %bb.c unwind label %bb.o

bb.o:                                             ; preds = %bb.c, %bb.n
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNvMs_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtBI_9BufWriterpE9flush_buf8BufGuardECsarFSTFZzLuM_11xet_runtime.exit: ; preds = %bb.c
  resume { ptr, i32 } %.pn
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsd_Cselt1T5Y3W0b_8smallvecINtB5_8SmallVecAINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E21reserve_one_uncheckedCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(656) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !254, !noalias !255, !noundef !6 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 16
  br i1 %i.c, label %_RNvMsd_Cselt1T5Y3W0b_8smallvecINtB5_8SmallVecAINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E6tripleCsarFSTFZzLuM_11xet_runtime.exit, label %_RNvMsd_Cselt1T5Y3W0b_8smallvecINtB5_8SmallVecAINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E6tripleCsarFSTFZzLuM_11xet_runtime.exit.thread

_RNvMsd_Cselt1T5Y3W0b_8smallvecINtB5_8SmallVecAINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E6tripleCsarFSTFZzLuM_11xet_runtime.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !254, !noalias !255, !noundef !6 ; 2 uses
  %i.f = icmp eq i64 %i.e, -1
  br i1 %i.f, label %bb.e, label %_RNvMsd_Cselt1T5Y3W0b_8smallvecINtB5_8SmallVecAINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E6tripleCsarFSTFZzLuM_11xet_runtime.exit.thread, !prof !19

_RNvMsd_Cselt1T5Y3W0b_8smallvecINtB5_8SmallVecAINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E6tripleCsarFSTFZzLuM_11xet_runtime.exit.thread: ; preds = %bb.a, %_RNvMsd_Cselt1T5Y3W0b_8smallvecINtB5_8SmallVecAINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E6tripleCsarFSTFZzLuM_11xet_runtime.exit
  %.sink12.i7 = phi i64 [ %i.e, %_RNvMsd_Cselt1T5Y3W0b_8smallvecINtB5_8SmallVecAINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E6tripleCsarFSTFZzLuM_11xet_runtime.exit ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = icmp eq i64 %.sink12.i7, 0
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink12.i7, i1 true)
  %i.i = lshr i64 -1, %i.h
  %.sroa.02.0 = select i1 %i.g, i64 0, i64 %i.i   ; 2 uses
  %i.j = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.j, label %bb.e, label %bb.b, !prof !17

bb.b:                                             ; preds = %_RNvMsd_Cselt1T5Y3W0b_8smallvecINtB5_8SmallVecAINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E6tripleCsarFSTFZzLuM_11xet_runtime.exit.thread
  %i.k = add nuw i64 %.sroa.02.0, 1
  %i.l = tail call fastcc { i64, i64 } @_RNvMsd_Cselt1T5Y3W0b_8smallvecINtB5_8SmallVecAINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E8try_growCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef align 8 dereferenceable(656) %0, i64 noundef %i.k) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 2 uses
  switch i64 %i.m, label %bb.c [
    i64 -1, label %_RINvCselt1T5Y3W0b_8smallvec10infallibleuECsarFSTFZzLuM_11xet_runtime.exit
    i64 0, label %bb.d
  ], !prof !256

bb.c:                                             ; preds = %bb.b
  %i.n = extractvalue { i64, i64 } %i.l, 1
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.m, i64 noundef %i.n) #25
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #30
  unreachable

_RINvCselt1T5Y3W0b_8smallvec10infallibleuECsarFSTFZzLuM_11xet_runtime.exit: ; preds = %bb.b
  ret void

bb.e:                                             ; preds = %_RNvMsd_Cselt1T5Y3W0b_8smallvecINtB5_8SmallVecAINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E6tripleCsarFSTFZzLuM_11xet_runtime.exit.thread, %_RNvMsd_Cselt1T5Y3W0b_8smallvecINtB5_8SmallVecAINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E6tripleCsarFSTFZzLuM_11xet_runtime.exit
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #30
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_Cselt1T5Y3W0b_8smallvecINtB5_8SmallVecAINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E8try_growCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(656) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
_RNvMsd_Cselt1T5Y3W0b_8smallvecINtB5_8SmallVecAINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E10triple_mutCsarFSTFZzLuM_11xet_runtime.exit:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !6 ; 6 uses
  %i.d = icmp ult i64 %i.c, 17                    ; 2 uses
  %i.e = icmp ugt i64 %i.c, 16                    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !6
  %.sink12.i = select i1 %i.e, ptr %i.h, ptr %i.f ; 4 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 16) ; 2 uses
  %.val = load i64, ptr %i.f, align 8
  %.val72 = load i64, ptr %i.b, align 8
  %i.i = select i1 %i.e, i64 %.val, i64 %.val72   ; 5 uses
  %.not = icmp ult i64 %1, %i.i
  br i1 %.not, label %bb.a, label %bb.b, !prof !17

bb.a:                                             ; preds = %_RNvMsd_Cselt1T5Y3W0b_8smallvecINtB5_8SmallVecAINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E10triple_mutCsarFSTFZzLuM_11xet_runtime.exit
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #30
  unreachable

bb.b:                                             ; preds = %_RNvMsd_Cselt1T5Y3W0b_8smallvecINtB5_8SmallVecAINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E10triple_mutCsarFSTFZzLuM_11xet_runtime.exit
  %i.j = icmp ult i64 %1, 17
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not46 = icmp eq i64 %i.c, %1
  br i1 %.not46, label %bb.l, label %bb.e

bb.d:                                             ; preds = %bb.b
  br i1 %i.d, label %bb.l, label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.k = mul i64 %1, 40                           ; 5 uses
  %or.cond = icmp ult i64 %1, 230584300921369396
  br i1 %or.cond, label %_RINvCselt1T5Y3W0b_8smallvec12layout_arrayINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtBG_7sharded8RegistryEECsarFSTFZzLuM_11xet_runtime.exit, label %bb.l, !prof !20

_RINvCselt1T5Y3W0b_8smallvec12layout_arrayINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtBG_7sharded8RegistryEECsarFSTFZzLuM_11xet_runtime.exit: ; preds = %bb.e
  br i1 %i.d, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RINvCselt1T5Y3W0b_8smallvec12layout_arrayINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtBG_7sharded8RegistryEECsarFSTFZzLuM_11xet_runtime.exit
  %i.l = mul i64 %.sink.i, 40                     ; 2 uses
  %or.cond65 = icmp ult i64 %i.c, 230584300921369396
  br i1 %or.cond65, label %_RINvCselt1T5Y3W0b_8smallvec12layout_arrayINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtBG_7sharded8RegistryEECsarFSTFZzLuM_11xet_runtime.exit48, label %bb.l, !prof !20

bb.g:                                             ; preds = %_RINvCselt1T5Y3W0b_8smallvec12layout_arrayINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtBG_7sharded8RegistryEECsarFSTFZzLuM_11xet_runtime.exit
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29
  %i.m = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef %i.k, i64 noundef 8) #29 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.l, label %bb.i

_RINvCselt1T5Y3W0b_8smallvec12layout_arrayINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtBG_7sharded8RegistryEECsarFSTFZzLuM_11xet_runtime.exit48: ; preds = %bb.f
  %i.o = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %.sink12.i, i64 noundef %i.l, i64 noundef 8, i64 noundef %i.k) #29 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.l, label %bb.h

bb.h:                                             ; preds = %_RINvCselt1T5Y3W0b_8smallvec12layout_arrayINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtBG_7sharded8RegistryEECsarFSTFZzLuM_11xet_runtime.exit48, %bb.i
  %.sroa.031.0 = phi ptr [ %i.m, %bb.i ], [ %i.o, %_RINvCselt1T5Y3W0b_8smallvec12layout_arrayINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtBG_7sharded8RegistryEECsarFSTFZzLuM_11xet_runtime.exit48 ]
  store i64 1, ptr %0, align 8
  store i64 %i.i, ptr %i.f, align 8
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.031.0, ptr %.sroa.540.0..sroa_idx, align 8
  store i64 %1, ptr %i.b, align 8
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.q = mul nuw nsw i64 %i.i, 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.m, ptr nonnull align 8 %.sink12.i, i64 %i.q, i1 false)
  br label %bb.h

bb.j:                                             ; preds = %bb.d
  store i64 0, ptr %0, align 8
  %i.r = mul nuw nsw i64 %i.i, 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.f, ptr nonnull align 8 %.sink12.i, i64 %i.r, i1 false)
  store i64 %i.i, ptr %i.b, align 8
  %i.s = mul i64 %.sink.i, 40                     ; 2 uses
  %or.cond.i = icmp ult i64 %i.c, 230584300921369396
  br i1 %or.cond.i, label %_RINvCselt1T5Y3W0b_8smallvec10deallocateINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtBE_7sharded8RegistryEECsarFSTFZzLuM_11xet_runtime.exit, label %bb.k, !prof !20

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !259
  store i64 0, ptr %i.a, align 8, !noalias !259
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.s, ptr %i.t, align 8, !noalias !259
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #30, !noalias !259
  unreachable

_RINvCselt1T5Y3W0b_8smallvec10deallocateINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtBE_7sharded8RegistryEECsarFSTFZzLuM_11xet_runtime.exit: ; preds = %bb.j
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink12.i, i64 noundef %i.s, i64 noundef 8) #29
  br label %bb.l

bb.l:                                             ; preds = %bb.f, %bb.e, %bb.d, %_RINvCselt1T5Y3W0b_8smallvec12layout_arrayINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtBG_7sharded8RegistryEECsarFSTFZzLuM_11xet_runtime.exit48, %bb.g, %_RINvCselt1T5Y3W0b_8smallvec10deallocateINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtBE_7sharded8RegistryEECsarFSTFZzLuM_11xet_runtime.exit, %bb.h, %bb.c
  %.sroa.7.1 = phi i64 [ undef, %_RINvCselt1T5Y3W0b_8smallvec10deallocateINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtBE_7sharded8RegistryEECsarFSTFZzLuM_11xet_runtime.exit ], [ undef, %bb.c ], [ undef, %bb.h ], [ %i.k, %bb.g ], [ undef, %bb.d ], [ %i.k, %_RINvCselt1T5Y3W0b_8smallvec12layout_arrayINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtBG_7sharded8RegistryEECsarFSTFZzLuM_11xet_runtime.exit48 ], [ %i.l, %bb.f ], [ %i.k, %bb.e ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCselt1T5Y3W0b_8smallvec10deallocateINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtBE_7sharded8RegistryEECsarFSTFZzLuM_11xet_runtime.exit ], [ -1, %bb.c ], [ -1, %bb.h ], [ 8, %bb.g ], [ -1, %bb.d ], [ 8, %_RINvCselt1T5Y3W0b_8smallvec12layout_arrayINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtBG_7sharded8RegistryEECsarFSTFZzLuM_11xet_runtime.exit48 ], [ 0, %bb.f ], [ 0, %bb.e ]
  %i.u = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.v = insertvalue { i64, i64 } %i.u, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.v
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsd_Cselt1T5Y3W0b_8smallvecINtB5_8SmallVecANtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter9directive15StaticDirectivej8_E21reserve_one_uncheckedCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(464) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !267, !noalias !268, !noundef !6 ; 7 uses
  %i.d = icmp ugt i64 %i.c, 8                     ; 3 uses
  br i1 %i.d, label %_RNvMsd_Cselt1T5Y3W0b_8smallvecINtB5_8SmallVecANtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter9directive15StaticDirectivej8_E6tripleCsarFSTFZzLuM_11xet_runtime.exit, label %_RNvMsd_Cselt1T5Y3W0b_8smallvecINtB5_8SmallVecANtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter9directive15StaticDirectivej8_E6tripleCsarFSTFZzLuM_11xet_runtime.exit.thread

_RNvMsd_Cselt1T5Y3W0b_8smallvecINtB5_8SmallVecANtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter9directive15StaticDirectivej8_E6tripleCsarFSTFZzLuM_11xet_runtime.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !267, !noalias !268, !noundef !6 ; 2 uses
  %i.g = icmp eq i64 %i.f, -1
  br i1 %i.g, label %bb.o, label %_RNvMsd_Cselt1T5Y3W0b_8smallvecINtB5_8SmallVecANtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter9directive15StaticDirectivej8_E6tripleCsarFSTFZzLuM_11xet_runtime.exit.thread, !prof !19

_RNvMsd_Cselt1T5Y3W0b_8smallvecINtB5_8SmallVecANtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter9directive15StaticDirectivej8_E6tripleCsarFSTFZzLuM_11xet_runtime.exit.thread: ; preds = %bb.a, %_RNvMsd_Cselt1T5Y3W0b_8smallvecINtB5_8SmallVecANtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter9directive15StaticDirectivej8_E6tripleCsarFSTFZzLuM_11xet_runtime.exit
  %.sink12.i7 = phi i64 [ %i.f, %_RNvMsd_Cselt1T5Y3W0b_8smallvecINtB5_8SmallVecANtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter9directive15StaticDirectivej8_E6tripleCsarFSTFZzLuM_11xet_runtime.exit ], [ %i.c, %bb.a ] ; 2 uses
  %i.h = icmp eq i64 %.sink12.i7, 0
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink12.i7, i1 true)
  %i.j = lshr i64 -1, %i.i
  %.sroa.02.0 = select i1 %i.h, i64 0, i64 %i.j   ; 4 uses
  %i.k = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.k, label %bb.o, label %_RNvMsd_Cselt1T5Y3W0b_8smallvecINtB5_8SmallVecANtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter9directive15StaticDirectivej8_E10triple_mutCsarFSTFZzLuM_11xet_runtime.exit.i, !prof !17

_RNvMsd_Cselt1T5Y3W0b_8smallvecINtB5_8SmallVecANtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter9directive15StaticDirectivej8_E10triple_mutCsarFSTFZzLuM_11xet_runtime.exit.i: ; preds = %_RNvMsd_Cselt1T5Y3W0b_8smallvecINtB5_8SmallVecANtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter9directive15StaticDirectivej8_E6tripleCsarFSTFZzLuM_11xet_runtime.exit.thread
  %i.l = add nuw i64 %.sroa.02.0, 1               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !269)
  %i.m = icmp ult i64 %i.c, 9                     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !6
  %.pre = load i64, ptr %i.n, align 8
  %i.q = select i1 %i.d, i64 %.pre, i64 %i.c      ; 5 uses
  %.sink12.i.i = select i1 %i.d, ptr %i.p, ptr %i.n ; 4 uses
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 8) ; 3 uses
  %.not.i = icmp ult i64 %i.l, %i.q
  br i1 %.not.i, label %bb.b, label %bb.c, !prof !17

bb.b:                                             ; preds = %_RNvMsd_Cselt1T5Y3W0b_8smallvecINtB5_8SmallVecANtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter9directive15StaticDirectivej8_E10triple_mutCsarFSTFZzLuM_11xet_runtime.exit.i
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #30, !noalias !269
  unreachable

bb.c:                                             ; preds = %_RNvMsd_Cselt1T5Y3W0b_8smallvecINtB5_8SmallVecANtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter9directive15StaticDirectivej8_E10triple_mutCsarFSTFZzLuM_11xet_runtime.exit.i
  %i.r = icmp ult i64 %.sroa.02.0, 8
  br i1 %i.r, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not46.i = icmp eq i64 %i.l, %.sink.i.i
  br i1 %.not46.i, label %_RINvCselt1T5Y3W0b_8smallvec10infallibleuECsarFSTFZzLuM_11xet_runtime.exit, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.m, label %_RINvCselt1T5Y3W0b_8smallvec10infallibleuECsarFSTFZzLuM_11xet_runtime.exit, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.s = mul nuw nsw i64 %i.l, 56                 ; 3 uses
  %or.cond.i = icmp ult i64 %.sroa.02.0, 164703072086692425
  br i1 %or.cond.i, label %_RINvCselt1T5Y3W0b_8smallvec12layout_arrayNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter9directive15StaticDirectiveECsarFSTFZzLuM_11xet_runtime.exit.i, label %bb.n, !prof !20

_RINvCselt1T5Y3W0b_8smallvec12layout_arrayNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter9directive15StaticDirectiveECsarFSTFZzLuM_11xet_runtime.exit.i: ; preds = %bb.f
  br i1 %i.m, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvCselt1T5Y3W0b_8smallvec12layout_arrayNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter9directive15StaticDirectiveECsarFSTFZzLuM_11xet_runtime.exit.i
  %or.cond65.i = icmp ult i64 %i.c, 164703072086692426
  br i1 %or.cond65.i, label %_RINvCselt1T5Y3W0b_8smallvec12layout_arrayNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter9directive15StaticDirectiveECsarFSTFZzLuM_11xet_runtime.exit48.i, label %bb.n, !prof !20

bb.h:                                             ; preds = %_RINvCselt1T5Y3W0b_8smallvec12layout_arrayNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter9directive15StaticDirectiveECsarFSTFZzLuM_11xet_runtime.exit.i
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !269
  %i.t = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef %i.s, i64 noundef 8) #29, !noalias !269 ; 3 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.m, label %bb.j

_RINvCselt1T5Y3W0b_8smallvec12layout_arrayNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter9directive15StaticDirectiveECsarFSTFZzLuM_11xet_runtime.exit48.i: ; preds = %bb.g
  %i.v = mul nuw nsw i64 %.sink.i.i, 56
  %i.w = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %.sink12.i.i, i64 noundef %i.v, i64 noundef 8, i64 noundef %i.s) #29 ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.j, %_RINvCselt1T5Y3W0b_8smallvec12layout_arrayNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter9directive15StaticDirectiveECsarFSTFZzLuM_11xet_runtime.exit48.i
  %.sroa.031.0.i = phi ptr [ %i.t, %bb.j ], [ %i.w, %_RINvCselt1T5Y3W0b_8smallvec12layout_arrayNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter9directive15StaticDirectiveECsarFSTFZzLuM_11xet_runtime.exit48.i ]
  store i64 1, ptr %0, align 8, !alias.scope !269
  store i64 %i.q, ptr %i.n, align 8, !alias.scope !269
  %.sroa.540.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.031.0.i, ptr %.sroa.540.0..sroa_idx.i, align 8, !alias.scope !269
  store i64 %i.l, ptr %i.b, align 8, !alias.scope !269
  br label %_RINvCselt1T5Y3W0b_8smallvec10infallibleuECsarFSTFZzLuM_11xet_runtime.exit

bb.j:                                             ; preds = %bb.h
  %i.y = mul nuw nsw i64 %i.q, 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.t, ptr nonnull align 8 %.sink12.i.i, i64 %i.y, i1 false)
  br label %bb.i

bb.k:                                             ; preds = %bb.e
  store i64 0, ptr %0, align 8, !alias.scope !269
  %i.z = mul nuw nsw i64 %i.q, 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.n, ptr nonnull align 8 %.sink12.i.i, i64 %i.z, i1 false)
  store i64 %i.q, ptr %i.b, align 8, !alias.scope !269
  %i.aa = mul i64 %.sink.i.i, 56                  ; 2 uses
  %or.cond.i.i = icmp ult i64 %i.c, 164703072086692426
  br i1 %or.cond.i.i, label %_RINvCselt1T5Y3W0b_8smallvec10deallocateNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter9directive15StaticDirectiveECsarFSTFZzLuM_11xet_runtime.exit.i, label %bb.l, !prof !20

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !270
  store i64 0, ptr %i.a, align 8, !noalias !270
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.aa, ptr %i.ab, align 8, !noalias !270
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #30, !noalias !270
  unreachable

_RINvCselt1T5Y3W0b_8smallvec10deallocateNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter9directive15StaticDirectiveECsarFSTFZzLuM_11xet_runtime.exit.i: ; preds = %bb.k
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink12.i.i, i64 noundef %i.aa, i64 noundef 8) #29
  br label %_RINvCselt1T5Y3W0b_8smallvec10infallibleuECsarFSTFZzLuM_11xet_runtime.exit

bb.m:                                             ; preds = %_RINvCselt1T5Y3W0b_8smallvec12layout_arrayNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter9directive15StaticDirectiveECsarFSTFZzLuM_11xet_runtime.exit48.i, %bb.h
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 8, i64 noundef %i.s) #25
  unreachable

bb.n:                                             ; preds = %bb.g, %bb.f
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #30
  unreachable

_RINvCselt1T5Y3W0b_8smallvec10infallibleuECsarFSTFZzLuM_11xet_runtime.exit: ; preds = %_RINvCselt1T5Y3W0b_8smallvec10deallocateNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter9directive15StaticDirectiveECsarFSTFZzLuM_11xet_runtime.exit.i, %bb.d, %bb.i, %bb.e
  ret void

bb.o:                                             ; preds = %_RNvMsd_Cselt1T5Y3W0b_8smallvecINtB5_8SmallVecANtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter9directive15StaticDirectivej8_E6tripleCsarFSTFZzLuM_11xet_runtime.exit.thread, %_RNvMsd_Cselt1T5Y3W0b_8smallvecINtB5_8SmallVecANtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter9directive15StaticDirectivej8_E6tripleCsarFSTFZzLuM_11xet_runtime.exit
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #30
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsd_Cselt1T5Y3W0b_8smallvecINtB5_8SmallVecANtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter9directive15StaticDirectivej8_E6insertCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef align 8 dereferenceable(464) %0, i64 noundef %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(56) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !274, !noalias !275, !noundef !6 ; 3 uses
  %i.c = icmp ugt i64 %i.b, 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  br i1 %i.c, label %bb.b, label %_RNvMsd_Cselt1T5Y3W0b_8smallvecINtB5_8SmallVecANtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter9directive15StaticDirectivej8_E10triple_mutCsarFSTFZzLuM_11xet_runtime.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !274, !noalias !275, !nonnull !6, !noundef !6
  %.pre = load i64, ptr %i.d, align 8
  br label %_RNvMsd_Cselt1T5Y3W0b_8smallvecINtB5_8SmallVecANtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter9directive15StaticDirectivej8_E10triple_mutCsarFSTFZzLuM_11xet_runtime.exit

bb.c:                                             ; preds = %bb.h, %bb.d
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter9directive15StaticDirectiveECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef align 8 dereferenceable(56) %2) #27
          to label %bb.m unwind label %bb.l

_RNvMsd_Cselt1T5Y3W0b_8smallvecINtB5_8SmallVecANtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter9directive15StaticDirectivej8_E10triple_mutCsarFSTFZzLuM_11xet_runtime.exit: ; preds = %bb.a, %bb.b
  %i.h = phi i64 [ %.pre, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %.sink12.i = phi ptr [ %i.f, %bb.b ], [ %i.d, %bb.a ]
  %.sink11.i = phi ptr [ %i.d, %bb.b ], [ %i.a, %bb.a ]
  %.sink.i = phi i64 [ %i.b, %bb.b ], [ 8, %bb.a ]
  %i.i = icmp eq i64 %i.h, %.sink.i
  br i1 %i.i, label %bb.d, label %bb.e, !prof !17

bb.d:                                             ; preds = %_RNvMsd_Cselt1T5Y3W0b_8smallvecINtB5_8SmallVecANtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter9directive15StaticDirectivej8_E10triple_mutCsarFSTFZzLuM_11xet_runtime.exit
  invoke fastcc void @_RNvMsd_Cselt1T5Y3W0b_8smallvecINtB5_8SmallVecANtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter9directive15StaticDirectivej8_E21reserve_one_uncheckedCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef align 8 dereferenceable(464) %0)
          to label %bb.f unwind label %bb.c

bb.e:                                             ; preds = %_RNvMsd_Cselt1T5Y3W0b_8smallvecINtB5_8SmallVecANtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter9directive15StaticDirectivej8_E10triple_mutCsarFSTFZzLuM_11xet_runtime.exit, %bb.f
  %i.j = phi i64 [ %.pre10, %bb.f ], [ %i.h, %_RNvMsd_Cselt1T5Y3W0b_8smallvecINtB5_8SmallVecANtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter9directive15StaticDirectivej8_E10triple_mutCsarFSTFZzLuM_11xet_runtime.exit ] ; 4 uses
  %.sroa.07.0 = phi ptr [ %i.m, %bb.f ], [ %.sink12.i, %_RNvMsd_Cselt1T5Y3W0b_8smallvecINtB5_8SmallVecANtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter9directive15StaticDirectivej8_E10triple_mutCsarFSTFZzLuM_11xet_runtime.exit ]
  %.sroa.04.0 = phi ptr [ %i.d, %bb.f ], [ %.sink11.i, %_RNvMsd_Cselt1T5Y3W0b_8smallvecINtB5_8SmallVecANtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter9directive15StaticDirectivej8_E10triple_mutCsarFSTFZzLuM_11xet_runtime.exit ]
  %i.k = icmp ugt i64 %1, %i.j
  br i1 %i.k, label %bb.h, label %bb.g, !prof !17

bb.f:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !6, !noundef !6
  %.pre10 = load i64, ptr %i.d, align 8
  br label %bb.e

bb.g:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw [56 x i8], ptr %.sroa.07.0, i64 %1 ; 3 uses
  %i.o = icmp ult i64 %1, %i.j
  br i1 %i.o, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.e
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 20, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #25
          to label %bb.k unwind label %bb.c

bb.i:                                             ; preds = %bb.j, %bb.g
  %i.p = add i64 %i.j, 1
  store i64 %i.p, ptr %.sroa.04.0, align 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.n, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 56, i1 false)
  ret void

bb.j:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.r = sub nuw i64 %i.j, %1
  %i.s = mul nuw nsw i64 %i.r, 56
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.q, ptr nonnull align 8 %i.n, i64 %i.s, i1 false)
  br label %bb.i

bb.k:                                             ; preds = %bb.h
  unreachable

bb.l:                                             ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.m:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.g
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsd_Cselt1T5Y3W0b_8smallvecINtB5_8SmallVecANtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env9directive9Directivej8_E21reserve_one_uncheckedCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(656) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !283, !noalias !284, !noundef !6 ; 7 uses
  %i.d = icmp ugt i64 %i.c, 8                     ; 3 uses
  br i1 %i.d, label %_RNvMsd_Cselt1T5Y3W0b_8smallvecINtB5_8SmallVecANtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env9directive9Directivej8_E6tripleCsarFSTFZzLuM_11xet_runtime.exit, label %_RNvMsd_Cselt1T5Y3W0b_8smallvecINtB5_8SmallVecANtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env9directive9Directivej8_E6tripleCsarFSTFZzLuM_11xet_runtime.exit.thread

_RNvMsd_Cselt1T5Y3W0b_8smallvecINtB5_8SmallVecANtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env9directive9Directivej8_E6tripleCsarFSTFZzLuM_11xet_runtime.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !283, !noalias !284, !noundef !6 ; 2 uses
  %i.g = icmp eq i64 %i.f, -1
  br i1 %i.g, label %bb.o, label %_RNvMsd_Cselt1T5Y3W0b_8smallvecINtB5_8SmallVecANtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env9directive9Directivej8_E6tripleCsarFSTFZzLuM_11xet_runtime.exit.thread, !prof !19

_RNvMsd_Cselt1T5Y3W0b_8smallvecINtB5_8SmallVecANtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env9directive9Directivej8_E6tripleCsarFSTFZzLuM_11xet_runtime.exit.thread: ; preds = %bb.a, %_RNvMsd_Cselt1T5Y3W0b_8smallvecINtB5_8SmallVecANtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env9directive9Directivej8_E6tripleCsarFSTFZzLuM_11xet_runtime.exit
  %.sink12.i7 = phi i64 [ %i.f, %_RNvMsd_Cselt1T5Y3W0b_8smallvecINtB5_8SmallVecANtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env9directive9Directivej8_E6tripleCsarFSTFZzLuM_11xet_runtime.exit ], [ %i.c, %bb.a ] ; 2 uses
  %i.h = icmp eq i64 %.sink12.i7, 0
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink12.i7, i1 true)
  %i.j = lshr i64 -1, %i.i
  %.sroa.02.0 = select i1 %i.h, i64 0, i64 %i.j   ; 4 uses
  %i.k = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.k, label %bb.o, label %_RNvMsd_Cselt1T5Y3W0b_8smallvecINtB5_8SmallVecANtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env9directive9Directivej8_E10triple_mutCsarFSTFZzLuM_11xet_runtime.exit.i, !prof !17

_RNvMsd_Cselt1T5Y3W0b_8smallvecINtB5_8SmallVecANtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env9directive9Directivej8_E10triple_mutCsarFSTFZzLuM_11xet_runtime.exit.i: ; preds = %_RNvMsd_Cselt1T5Y3W0b_8smallvecINtB5_8SmallVecANtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env9directive9Directivej8_E6tripleCsarFSTFZzLuM_11xet_runtime.exit.thread
  %i.l = add nuw i64 %.sroa.02.0, 1               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !285)
  %i.m = icmp ult i64 %i.c, 9                     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !6
  %.pre = load i64, ptr %i.n, align 8
  %i.q = select i1 %i.d, i64 %.pre, i64 %i.c      ; 5 uses
  %.sink12.i.i = select i1 %i.d, ptr %i.p, ptr %i.n ; 4 uses
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 8) ; 3 uses
  %.not.i = icmp ult i64 %i.l, %i.q
  br i1 %.not.i, label %bb.b, label %bb.c, !prof !17

bb.b:                                             ; preds = %_RNvMsd_Cselt1T5Y3W0b_8smallvecINtB5_8SmallVecANtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env9directive9Directivej8_E10triple_mutCsarFSTFZzLuM_11xet_runtime.exit.i
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #30, !noalias !285
  unreachable

bb.c:                                             ; preds = %_RNvMsd_Cselt1T5Y3W0b_8smallvecINtB5_8SmallVecANtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env9directive9Directivej8_E10triple_mutCsarFSTFZzLuM_11xet_runtime.exit.i
  %i.r = icmp ult i64 %.sroa.02.0, 8
  br i1 %i.r, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not46.i = icmp eq i64 %i.l, %.sink.i.i
  br i1 %.not46.i, label %_RINvCselt1T5Y3W0b_8smallvec10infallibleuECsarFSTFZzLuM_11xet_runtime.exit, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.m, label %_RINvCselt1T5Y3W0b_8smallvec10infallibleuECsarFSTFZzLuM_11xet_runtime.exit, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.s = mul nuw nsw i64 %i.l, 80                 ; 3 uses
  %or.cond.i = icmp ult i64 %.sroa.02.0, 115292150460684697
  br i1 %or.cond.i, label %_RINvCselt1T5Y3W0b_8smallvec12layout_arrayNtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env9directive9DirectiveECsarFSTFZzLuM_11xet_runtime.exit.i, label %bb.n, !prof !20

_RINvCselt1T5Y3W0b_8smallvec12layout_arrayNtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env9directive9DirectiveECsarFSTFZzLuM_11xet_runtime.exit.i: ; preds = %bb.f
  br i1 %i.m, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvCselt1T5Y3W0b_8smallvec12layout_arrayNtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env9directive9DirectiveECsarFSTFZzLuM_11xet_runtime.exit.i
  %or.cond65.i = icmp ult i64 %i.c, 115292150460684698
  br i1 %or.cond65.i, label %_RINvCselt1T5Y3W0b_8smallvec12layout_arrayNtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env9directive9DirectiveECsarFSTFZzLuM_11xet_runtime.exit48.i, label %bb.n, !prof !20

bb.h:                                             ; preds = %_RINvCselt1T5Y3W0b_8smallvec12layout_arrayNtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env9directive9DirectiveECsarFSTFZzLuM_11xet_runtime.exit.i
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !285
  %i.t = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef %i.s, i64 noundef 8) #29, !noalias !285 ; 3 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.m, label %bb.j

_RINvCselt1T5Y3W0b_8smallvec12layout_arrayNtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env9directive9DirectiveECsarFSTFZzLuM_11xet_runtime.exit48.i: ; preds = %bb.g
  %i.v = mul nuw nsw i64 %.sink.i.i, 80
  %i.w = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %.sink12.i.i, i64 noundef %i.v, i64 noundef 8, i64 noundef %i.s) #29 ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.j, %_RINvCselt1T5Y3W0b_8smallvec12layout_arrayNtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env9directive9DirectiveECsarFSTFZzLuM_11xet_runtime.exit48.i
  %.sroa.031.0.i = phi ptr [ %i.t, %bb.j ], [ %i.w, %_RINvCselt1T5Y3W0b_8smallvec12layout_arrayNtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env9directive9DirectiveECsarFSTFZzLuM_11xet_runtime.exit48.i ]
  store i64 1, ptr %0, align 8, !alias.scope !285
  store i64 %i.q, ptr %i.n, align 8, !alias.scope !285
  %.sroa.540.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.031.0.i, ptr %.sroa.540.0..sroa_idx.i, align 8, !alias.scope !285
  store i64 %i.l, ptr %i.b, align 8, !alias.scope !285
  br label %_RINvCselt1T5Y3W0b_8smallvec10infallibleuECsarFSTFZzLuM_11xet_runtime.exit

bb.j:                                             ; preds = %bb.h
  %i.y = mul nuw nsw i64 %i.q, 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.t, ptr nonnull align 8 %.sink12.i.i, i64 %i.y, i1 false)
  br label %bb.i

bb.k:                                             ; preds = %bb.e
  store i64 0, ptr %0, align 8, !alias.scope !285
  %i.z = mul nuw nsw i64 %i.q, 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.n, ptr nonnull align 8 %.sink12.i.i, i64 %i.z, i1 false)
  store i64 %i.q, ptr %i.b, align 8, !alias.scope !285
  %i.aa = mul i64 %.sink.i.i, 80                  ; 2 uses
  %or.cond.i.i = icmp ult i64 %i.c, 115292150460684698
  br i1 %or.cond.i.i, label %_RINvCselt1T5Y3W0b_8smallvec10deallocateNtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env9directive9DirectiveECsarFSTFZzLuM_11xet_runtime.exit.i, label %bb.l, !prof !20

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !286
  store i64 0, ptr %i.a, align 8, !noalias !286
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.aa, ptr %i.ab, align 8, !noalias !286
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #30, !noalias !286
  unreachable

_RINvCselt1T5Y3W0b_8smallvec10deallocateNtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env9directive9DirectiveECsarFSTFZzLuM_11xet_runtime.exit.i: ; preds = %bb.k
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink12.i.i, i64 noundef %i.aa, i64 noundef 8) #29
  br label %_RINvCselt1T5Y3W0b_8smallvec10infallibleuECsarFSTFZzLuM_11xet_runtime.exit

bb.m:                                             ; preds = %_RINvCselt1T5Y3W0b_8smallvec12layout_arrayNtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env9directive9DirectiveECsarFSTFZzLuM_11xet_runtime.exit48.i, %bb.h
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 8, i64 noundef %i.s) #25
  unreachable

bb.n:                                             ; preds = %bb.g, %bb.f
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #30
  unreachable

_RINvCselt1T5Y3W0b_8smallvec10infallibleuECsarFSTFZzLuM_11xet_runtime.exit: ; preds = %_RINvCselt1T5Y3W0b_8smallvec10deallocateNtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env9directive9DirectiveECsarFSTFZzLuM_11xet_runtime.exit.i, %bb.d, %bb.i, %bb.e
  ret void

bb.o:                                             ; preds = %_RNvMsd_Cselt1T5Y3W0b_8smallvecINtB5_8SmallVecANtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env9directive9Directivej8_E6tripleCsarFSTFZzLuM_11xet_runtime.exit.thread, %_RNvMsd_Cselt1T5Y3W0b_8smallvecINtB5_8SmallVecANtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env9directive9Directivej8_E6tripleCsarFSTFZzLuM_11xet_runtime.exit
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #30
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsd_Cselt1T5Y3W0b_8smallvecINtB5_8SmallVecANtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env9directive9Directivej8_E6insertCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef align 8 dereferenceable(656) %0, i64 noundef %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(80) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !290, !noalias !291, !noundef !6 ; 3 uses
  %i.c = icmp ugt i64 %i.b, 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  br i1 %i.c, label %bb.b, label %_RNvMsd_Cselt1T5Y3W0b_8smallvecINtB5_8SmallVecANtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env9directive9Directivej8_E10triple_mutCsarFSTFZzLuM_11xet_runtime.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !290, !noalias !291, !nonnull !6, !noundef !6
  %.pre = load i64, ptr %i.d, align 8
  br label %_RNvMsd_Cselt1T5Y3W0b_8smallvecINtB5_8SmallVecANtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env9directive9Directivej8_E10triple_mutCsarFSTFZzLuM_11xet_runtime.exit

bb.c:                                             ; preds = %bb.h, %bb.d
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env9directive9DirectiveECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef align 8 dereferenceable(80) %2) #27
          to label %bb.m unwind label %bb.l

_RNvMsd_Cselt1T5Y3W0b_8smallvecINtB5_8SmallVecANtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env9directive9Directivej8_E10triple_mutCsarFSTFZzLuM_11xet_runtime.exit: ; preds = %bb.a, %bb.b
  %i.h = phi i64 [ %.pre, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %.sink12.i = phi ptr [ %i.f, %bb.b ], [ %i.d, %bb.a ]
  %.sink11.i = phi ptr [ %i.d, %bb.b ], [ %i.a, %bb.a ]
  %.sink.i = phi i64 [ %i.b, %bb.b ], [ 8, %bb.a ]
  %i.i = icmp eq i64 %i.h, %.sink.i
  br i1 %i.i, label %bb.d, label %bb.e, !prof !17

bb.d:                                             ; preds = %_RNvMsd_Cselt1T5Y3W0b_8smallvecINtB5_8SmallVecANtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env9directive9Directivej8_E10triple_mutCsarFSTFZzLuM_11xet_runtime.exit
  invoke fastcc void @_RNvMsd_Cselt1T5Y3W0b_8smallvecINtB5_8SmallVecANtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env9directive9Directivej8_E21reserve_one_uncheckedCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef align 8 dereferenceable(656) %0)
          to label %bb.f unwind label %bb.c

bb.e:                                             ; preds = %_RNvMsd_Cselt1T5Y3W0b_8smallvecINtB5_8SmallVecANtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env9directive9Directivej8_E10triple_mutCsarFSTFZzLuM_11xet_runtime.exit, %bb.f
  %i.j = phi i64 [ %.pre10, %bb.f ], [ %i.h, %_RNvMsd_Cselt1T5Y3W0b_8smallvecINtB5_8SmallVecANtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env9directive9Directivej8_E10triple_mutCsarFSTFZzLuM_11xet_runtime.exit ] ; 4 uses
  %.sroa.07.0 = phi ptr [ %i.m, %bb.f ], [ %.sink12.i, %_RNvMsd_Cselt1T5Y3W0b_8smallvecINtB5_8SmallVecANtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env9directive9Directivej8_E10triple_mutCsarFSTFZzLuM_11xet_runtime.exit ]
  %.sroa.04.0 = phi ptr [ %i.d, %bb.f ], [ %.sink11.i, %_RNvMsd_Cselt1T5Y3W0b_8smallvecINtB5_8SmallVecANtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env9directive9Directivej8_E10triple_mutCsarFSTFZzLuM_11xet_runtime.exit ]
  %i.k = icmp ugt i64 %1, %i.j
  br i1 %i.k, label %bb.h, label %bb.g, !prof !17

bb.f:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !6, !noundef !6
  %.pre10 = load i64, ptr %i.d, align 8
  br label %bb.e

bb.g:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw [80 x i8], ptr %.sroa.07.0, i64 %1 ; 3 uses
  %i.o = icmp ult i64 %1, %i.j
  br i1 %i.o, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.e
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 20, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #25
          to label %bb.k unwind label %bb.c

bb.i:                                             ; preds = %bb.j, %bb.g
  %i.p = add i64 %i.j, 1
  store i64 %i.p, ptr %.sroa.04.0, align 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.n, ptr noundef nonnull align 8 dereferenceable(80) %2, i64 80, i1 false)
  ret void

bb.j:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  %i.r = sub nuw i64 %i.j, %1
  %i.s = mul nuw nsw i64 %i.r, 80
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.q, ptr nonnull align 8 %i.n, i64 %i.s, i1 false)
  br label %bb.i

bb.k:                                             ; preds = %bb.h
  unreachable

bb.l:                                             ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.m:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecINtCs2KMS13e2TGE_12thread_local5EntryINtNtCskKLDkoKarTP_4core4cell7RefCellIBL_NtNtCs94TQx44N27d_12tracing_core8metadata11LevelFilterEEEEINtB2_12SpecFromIterBU_INtNtNtNtB1A_4iter8adapters3map3MapINtNtNtB1A_3ops5range5RangejENCINvBX_15allocate_bucketB1v_E0EE9from_iterCsarFSTFZzLuM_11xet_runtime(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !298
  %spec.select.i.i.i = tail call i64 @llvm.usub.sat.i64(i64 %2, i64 %1) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !298
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %spec.select.i.i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 40), !noalias !298
  %i.d = load i64, ptr %i.b, align 8, !range !7, !noalias !298, !noundef !6
  %i.e = trunc nuw i64 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !21, !noalias !298, !noundef !6 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.e, label %bb.b, label %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecINtCs2KMS13e2TGE_12thread_local5EntryINtNtCskKLDkoKarTP_4core4cell7RefCellIBx_NtNtCs94TQx44N27d_12tracing_core8metadata11LevelFilterEEEE14extend_trustedINtNtNtNtB1m_4iter8adapters3map3MapINtNtNtB1m_3ops5range5RangejENCINvBJ_15allocate_bucketB1h_E0EECsarFSTFZzLuM_11xet_runtime.exit.i.i, !prof !17

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !noalias !298
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.g, i64 %i.i) #25, !noalias !298
  unreachable

_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecINtCs2KMS13e2TGE_12thread_local5EntryINtNtCskKLDkoKarTP_4core4cell7RefCellIBx_NtNtCs94TQx44N27d_12tracing_core8metadata11LevelFilterEEEE14extend_trustedINtNtNtNtB1m_4iter8adapters3map3MapINtNtNtB1m_3ops5range5RangejENCINvBJ_15allocate_bucketB1h_E0EECsarFSTFZzLuM_11xet_runtime.exit.i.i: ; preds = %bb.a
  %i.j = load ptr, ptr %i.h, align 8, !noalias !298, !nonnull !6, !noundef !6 ; 2 uses
  %i.k = icmp ule i64 %spec.select.i.i.i, %i.g
  tail call void @llvm.assume(i1 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !298
  store i64 %i.g, ptr %i.c, align 8, !noalias !298
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.j, ptr %i.l, align 8, !noalias !298
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %i.m, align 8, !noalias !298
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !299
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.j, ptr %i.n, align 8, !noalias !299
  store ptr %i.m, ptr %i.a, align 8, !noalias !299
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.o, align 8, !noalias !299
  invoke void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCINvCs2KMS13e2TGE_12thread_local15allocate_bucketINtNtBc_4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs94TQx44N27d_12tracing_core8metadata11LevelFilterEEE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB42_8for_each4callINtB1u_5EntryB2d_ENCINvMsk_B2B_IB2z_B55_E14extend_trustedBN_E0E0ECsarFSTFZzLuM_11xet_runtime(i64 noundef %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtCs2KMS13e2TGE_12thread_local5EntryINtNtCskKLDkoKarTP_4core4cell7RefCellIBU_NtNtCs94TQx44N27d_12tracing_core8metadata11LevelFilterEEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB1J_4iter8adapters3map3MapINtNtNtB1J_3ops5range5RangejENCINvB16_15allocate_bucketB1E_E0EE9from_iterCsarFSTFZzLuM_11xet_runtime.exit unwind label %bb.c, !noalias !298

bb.c:                                             ; preds = %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecINtCs2KMS13e2TGE_12thread_local5EntryINtNtCskKLDkoKarTP_4core4cell7RefCellIBx_NtNtCs94TQx44N27d_12tracing_core8metadata11LevelFilterEEEE14extend_trustedINtNtNtNtB1m_4iter8adapters3map3MapINtNtNtB1m_3ops5range5RangejENCINvBJ_15allocate_bucketB1h_E0EECsarFSTFZzLuM_11xet_runtime.exit.i.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtCs2KMS13e2TGE_12thread_local5EntryINtNtB4_4cell7RefCellIBC_NtNtCs94TQx44N27d_12tracing_core8metadata11LevelFilterEEEEECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #27
          to label %bb.e unwind label %bb.d, !noalias !298

bb.d:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28, !noalias !298
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.p

_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtCs2KMS13e2TGE_12thread_local5EntryINtNtCskKLDkoKarTP_4core4cell7RefCellIBU_NtNtCs94TQx44N27d_12tracing_core8metadata11LevelFilterEEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB1J_4iter8adapters3map3MapINtNtNtB1J_3ops5range5RangejENCINvB16_15allocate_bucketB1E_E0EE9from_iterCsarFSTFZzLuM_11xet_runtime.exit: ; preds = %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecINtCs2KMS13e2TGE_12thread_local5EntryINtNtCskKLDkoKarTP_4core4cell7RefCellIBx_NtNtCs94TQx44N27d_12tracing_core8metadata11LevelFilterEEEE14extend_trustedINtNtNtNtB1m_4iter8adapters3map3MapINtNtNtB1m_3ops5range5RangejENCINvBJ_15allocate_bucketB1h_E0EECsarFSTFZzLuM_11xet_runtime.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !299
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !298
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecINtNtCskeoOuuhwsQF_12sharded_slab4page6SharedNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7sharded9DataInnerNtNtBZ_3cfg13DefaultConfigEEINtB2_12SpecFromIterBU_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB3G_3ops5range5RangejENCNvMNtBZ_5shardINtB4T_5ShardB1D_B2I_E3new0EE9from_iterCsarFSTFZzLuM_11xet_runtime(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !312)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !313
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load i64, ptr %i.d, align 8, !alias.scope !314, !noalias !315, !noundef !6
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val2.i = load i64, ptr %i.e, align 8, !alias.scope !316, !noalias !317, !noundef !6
  %spec.select.i.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.val2.i, i64 %.val.i) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !313
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %spec.select.i.i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 40), !noalias !313
  %i.f = load i64, ptr %i.b, align 8, !range !7, !noalias !313, !noundef !6
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !21, !noalias !313, !noundef !6 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.g, label %bb.b, label %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecINtNtCskeoOuuhwsQF_12sharded_slab4page6SharedNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7sharded9DataInnerNtNtBL_3cfg13DefaultConfigEE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB3l_3ops5range5RangejENCNvMNtBL_5shardINtB4y_5ShardB1p_B2u_E3new0EECsarFSTFZzLuM_11xet_runtime.exit.i.i, !prof !17

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8, !noalias !313
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #25, !noalias !313
  unreachable

end_hunk_0
begin_hunk_1_@_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvMs_NtNtCsjfHCj4Qo55Q_17crossbeam_channel7flavors5arrayINtB1w_7ChannelNtCs5ZfSctYBbRf_16tracing_appender3MsgE13with_capacity0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3u_8for_each4callINtB1w_4SlotB2A_ENCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4X_3VecB4x_E14extend_trustedBN_E0E0ECsarFSTFZzLuM_11xet_runtime

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvMs_NtNtCsjfHCj4Qo55Q_17crossbeam_channel7flavors5arrayINtB1w_7ChanneluE13with_capacity0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2T_8for_each4callINtB1w_4SlotuENCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4j_3VecB3W_E14extend_trustedBN_E0E0ECsarFSTFZzLuM_11xet_runtime(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENvMs2_NtNtCskeoOuuhwsQF_12sharded_slab4page4slotINtB1v_4SlotNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7sharded9DataInnerNtNtB1z_3cfg13DefaultConfigE3newENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3Z_8for_each4callB2b_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5f_3VecB2b_E14extend_trustedBN_E0E0ECsarFSTFZzLuM_11xet_runtime(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCslGerTCNbuPz_7sysinfo6common6system3CpuENCNvMs_NtNtCsarFSTFZzLuM_11xet_runtime7logging14system_monitorNtB2f_8CpuUsage4from0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3u_8for_each4callfNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4H_3VecfE14extend_trustedBN_E0E0EB2j_(ptr noundef nonnull, ptr noundef, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterhENCNvMs_NtCsexYYUdYSQU6_5alloc5sliceSh18to_ascii_lowercase0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2m_8for_each4callhNCINvMsk_NtB1y_3vecINtB3z_3VechE14extend_trustedBN_E0E0ECsarFSTFZzLuM_11xet_runtime(ptr noundef nonnull, ptr noundef, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCsG258MDvU3F_3std3ffi6os_str5OsStrNtB6_5Debug3fmtCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs3_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvNtCsG258MDvU3F_3std2fs11remove_fileRNtNtB4_4path7PathBufECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef range(i8 0, 3) i8 @_RNvMNtCs94TQx44N27d_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCs942S7uueXw1_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(120), i8 noundef range(i8 0, 3)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsG258MDvU3F_3std4path7PathBufNtB6_5Debug3fmtCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsl_NtCs94TQx44N27d_12tracing_core5fieldNtNtCskKLDkoKarTP_4core3fmt9ArgumentsNtB5_5Value6record(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCs94TQx44N27d_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(120), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCsG258MDvU3F_3std3env11current_dir(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions16get_os_functions() unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef align 8 dereferenceable(16), i64 noundef, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsarFSTFZzLuM_11xet_runtime(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #1

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #12

; Function Attrs: cold nonlazybind uwtable
declare hidden void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #9

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #17

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvXsb_NtCsG258MDvU3F_3std2fsNtB5_4FileNtNtNtCskKLDkoKarTP_4core2io5write5Write5write(ptr noalias nofree noundef align 4 dereferenceable(4), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMNvMs_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB7_9BufWriterpE9flush_bufNtB2_8BufGuard9remaining(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #18

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #11

; Function Attrs: nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable
declare noalias noundef ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr allocptr noundef nonnull, i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #19

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #2

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #20

; Function Attrs: cold nonlazybind uwtable
declare noundef nonnull ptr @_RNvMNtCsjfHCj4Qo55Q_17crossbeam_channel7contextNtB2_7Context3new() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvNtNtNtCsG258MDvU3F_3std3sys6random5linux19hashmap_random_keys() unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvNtNtCsG258MDvU3F_3std6thread7current7current() unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvMs0_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env9directive9DirectiveE8as_sliceCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvXsc_NtCsG258MDvU3F_3std2fsNtB5_4FileNtNtNtCskKLDkoKarTP_4core2io4seek4Seek4seek(ptr noalias nofree noundef align 4 dereferenceable(4), i64 noundef range(i64 0, 3), i64 noundef) unnamed_addr #1

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #21

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtNtCs8rVFV1hdcx_14regex_automata4util9prefilter10PrefilterIEL_E9drop_slowBN_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #22

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsjfHCj4Qo55Q_17crossbeam_channel7context5InnerE9drop_slowBK_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #22

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsG258MDvU3F_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #22

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArceE9drop_slowCs8rVFV1hdcx_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #22

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_5alloc6layout6LayoutNtB6_5Debug3fmtCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 16 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxNtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env5field12MatchPatternE13new_uninit_inCsarFSTFZzLuM_11xet_runtime() unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvXsq_NtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6writerNtB5_12WriteAdaptorNtNtNtCskKLDkoKarTP_4core2io5write5Write5write(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #16

attributes #0 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { cold inlinehint noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { cold noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #22 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { noinline }
attributes #25 = { noreturn }
attributes #26 = { inlinehint }
attributes #27 = { cold }
attributes #28 = { cold noreturn nounwind }
attributes #29 = { nounwind }
attributes #30 = { noinline noreturn }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}

!0 = distinct !{null}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 2, !"RtLibUseGOT", i32 1}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"rustc version 1.100.0-nightly (bff8e12ff 2026-08-26)"}
!5 = !{i8 0, i8 3}
!6 = !{}
!7 = !{i64 0, i64 2}
!8 = !{i8 0, i8 2}
!9 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!10 = !{i8 -1, i8 7}
!11 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000, i32 2000}
!12 = !{i64 8}
!13 = !{i64 0, i64 -9223372036854775808}
!14 = !{i64 1, i64 536870913}
!15 = !{i8 0, i8 6}
!16 = !{i64 -1, i64 -9223372036854775808}
!17 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!18 = !{i8 0, i8 44}
!19 = !{!"branch_weights", !"expected", i32 2146410, i32 2145337238}
!20 = !{!"branch_weights", i32 2000, i32 2002}
!21 = !{i64 0, i64 -9223372036854775807}
!22 = distinct !{!22, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell4CellINtNtB4_6option6OptionNtNtCsjfHCj4Qo55Q_17crossbeam_channel7context7ContextEEECsarFSTFZzLuM_11xet_runtime"}
!23 = distinct !{!23, !22, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell4CellINtNtB4_6option6OptionNtNtCsjfHCj4Qo55Q_17crossbeam_channel7context7ContextEEECsarFSTFZzLuM_11xet_runtime: argument 0"}
!24 = distinct !{!24, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNtNtCsjfHCj4Qo55Q_17crossbeam_channel7context7ContextEEECsarFSTFZzLuM_11xet_runtime"}
!25 = distinct !{!25, !24, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNtNtCsjfHCj4Qo55Q_17crossbeam_channel7context7ContextEEECsarFSTFZzLuM_11xet_runtime: argument 0"}
!26 = distinct !{!26, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsjfHCj4Qo55Q_17crossbeam_channel7context7ContextEECsarFSTFZzLuM_11xet_runtime"}
!27 = distinct !{!27, !26, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsjfHCj4Qo55Q_17crossbeam_channel7context7ContextEECsarFSTFZzLuM_11xet_runtime: argument 0"}
!28 = distinct !{!28, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsjfHCj4Qo55Q_17crossbeam_channel7context7ContextECsarFSTFZzLuM_11xet_runtime"}
!29 = distinct !{!29, !28, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsjfHCj4Qo55Q_17crossbeam_channel7context7ContextECsarFSTFZzLuM_11xet_runtime: argument 0"}
!30 = distinct !{!30, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsjfHCj4Qo55Q_17crossbeam_channel7context5InnerEECsarFSTFZzLuM_11xet_runtime"}
!31 = distinct !{!31, !30, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsjfHCj4Qo55Q_17crossbeam_channel7context5InnerEECsarFSTFZzLuM_11xet_runtime: argument 0"}
!32 = distinct !{!32, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsjfHCj4Qo55Q_17crossbeam_channel7context5InnerENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime"}
!33 = distinct !{!33, !32, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsjfHCj4Qo55Q_17crossbeam_channel7context5InnerENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime: argument 0"}
!34 = !{!"branch_weights", i32 2, i32 0, i32 2146410441, i32 1073205}
!35 = !{!33, !31, !29, !27, !25, !23}
!36 = distinct !{!36, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECsarFSTFZzLuM_11xet_runtime"}
!37 = distinct !{!37, !36, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECsarFSTFZzLuM_11xet_runtime: argument 0"}
!38 = distinct !{!38, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6thread5InnerNtNtB1v_5alloc6SystemEEECsarFSTFZzLuM_11xet_runtime"}
!39 = distinct !{!39, !38, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6thread5InnerNtNtB1v_5alloc6SystemEEECsarFSTFZzLuM_11xet_runtime: argument 0"}
!40 = distinct !{!40, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6thread5InnerNtNtB1f_5alloc6SystemEECsarFSTFZzLuM_11xet_runtime"}
!41 = distinct !{!41, !40, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6thread5InnerNtNtB1f_5alloc6SystemEECsarFSTFZzLuM_11xet_runtime: argument 0"}
!42 = distinct !{!42, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsG258MDvU3F_3std6thread6thread5InnerNtNtBM_5alloc6SystemENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime"}
!43 = distinct !{!43, !42, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsG258MDvU3F_3std6thread6thread5InnerNtNtBM_5alloc6SystemENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime: argument 0"}
!44 = !{i64 1, i64 0}
!45 = !{!43, !41, !39, !37}
!46 = distinct !{!46, !"_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsarFSTFZzLuM_11xet_runtime7logging4init16CandidateLogFileE10retain_mutNCINvB2_6retainNCNvBH_25run_log_directory_cleanups0_0E0EBL_"}
!47 = distinct !{!47, !46, !"_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsarFSTFZzLuM_11xet_runtime7logging4init16CandidateLogFileE10retain_mutNCINvB2_6retainNCNvBH_25run_log_directory_cleanups0_0E0EBL_: argument 0"}
!48 = distinct !{!48, !46, !"_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsarFSTFZzLuM_11xet_runtime7logging4init16CandidateLogFileE10retain_mutNCINvB2_6retainNCNvBH_25run_log_directory_cleanups0_0E0EBL_: argument 1"}
!49 = distinct !{!49, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvMs_NtCsexYYUdYSQU6_5alloc3vecINtBJ_3VecppE10retain_mut10PanicGuardNtNtNtCsarFSTFZzLuM_11xet_runtime7logging4init16CandidateLogFileNtNtBL_5alloc6GlobalEEB1Q_"}
!50 = distinct !{!50, !49, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvMs_NtCsexYYUdYSQU6_5alloc3vecINtBJ_3VecppE10retain_mut10PanicGuardNtNtNtCsarFSTFZzLuM_11xet_runtime7logging4init16CandidateLogFileNtNtBL_5alloc6GlobalEEB1Q_: argument 0"}
!51 = distinct !{!51, !"_RNvXNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecppE10retain_mutINtB2_10PanicGuardNtNtNtCsarFSTFZzLuM_11xet_runtime7logging4init16CandidateLogFileNtNtB9_5alloc6GlobalENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1k_"}
!52 = distinct !{!52, !51, !"_RNvXNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecppE10retain_mutINtB2_10PanicGuardNtNtNtCsarFSTFZzLuM_11xet_runtime7logging4init16CandidateLogFileNtNtB9_5alloc6GlobalENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1k_: argument 0"}
!53 = !{!47}
!54 = !{!48}
!55 = !{!47, !48}
!56 = !{!52, !50, !47, !48}
!57 = !{!52, !50, !48}
!58 = distinct !{!58, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env5field10ValueMatchECsarFSTFZzLuM_11xet_runtime"}
!59 = distinct !{!59, !58, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env5field10ValueMatchECsarFSTFZzLuM_11xet_runtime: argument 0"}
!60 = distinct !{!60, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8rVFV1hdcx_14regex_automata4util9prefilter9PrefilterEECsarFSTFZzLuM_11xet_runtime"}
!61 = distinct !{!61, !60, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8rVFV1hdcx_14regex_automata4util9prefilter9PrefilterEECsarFSTFZzLuM_11xet_runtime: argument 0"}
!62 = distinct !{!62, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env5field12MatchPatternECsarFSTFZzLuM_11xet_runtime"}
!63 = distinct !{!63, !62, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env5field12MatchPatternECsarFSTFZzLuM_11xet_runtime: argument 0"}
!64 = distinct !{!64, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsjgNdEar8aXg_8matchers7PatternECsarFSTFZzLuM_11xet_runtime"}
!65 = distinct !{!65, !64, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsjgNdEar8aXg_8matchers7PatternECsarFSTFZzLuM_11xet_runtime: argument 0"}
!66 = distinct !{!66, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs8rVFV1hdcx_14regex_automata3dfa5dense3DFAINtNtCsexYYUdYSQU6_5alloc3vec3VecmEEECsarFSTFZzLuM_11xet_runtime"}
!67 = distinct !{!67, !66, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs8rVFV1hdcx_14regex_automata3dfa5dense3DFAINtNtCsexYYUdYSQU6_5alloc3vec3VecmEEECsarFSTFZzLuM_11xet_runtime: argument 0"}
!68 = distinct !{!68, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8rVFV1hdcx_14regex_automata4util9prefilter9PrefilterECsarFSTFZzLuM_11xet_runtime"}
!69 = distinct !{!69, !68, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8rVFV1hdcx_14regex_automata4util9prefilter9PrefilterECsarFSTFZzLuM_11xet_runtime: argument 0"}
!70 = distinct !{!70, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtNtCs8rVFV1hdcx_14regex_automata4util9prefilter10PrefilterIEL_EECsarFSTFZzLuM_11xet_runtime"}
!71 = distinct !{!71, !70, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtNtCs8rVFV1hdcx_14regex_automata4util9prefilter10PrefilterIEL_EECsarFSTFZzLuM_11xet_runtime: argument 0"}
!72 = distinct !{!72, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtNtCs8rVFV1hdcx_14regex_automata4util9prefilter10PrefilterIEL_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime"}
!73 = distinct !{!73, !72, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtNtCs8rVFV1hdcx_14regex_automata4util9prefilter10PrefilterIEL_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime: argument 0"}
!74 = distinct !{!74, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8rVFV1hdcx_14regex_automata4util9prefilter9PrefilterEECsarFSTFZzLuM_11xet_runtime"}
!75 = distinct !{!75, !74, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8rVFV1hdcx_14regex_automata4util9prefilter9PrefilterEECsarFSTFZzLuM_11xet_runtime: argument 0"}
!76 = distinct !{!76, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8rVFV1hdcx_14regex_automata4util9prefilter9PrefilterECsarFSTFZzLuM_11xet_runtime"}
!77 = distinct !{!77, !76, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8rVFV1hdcx_14regex_automata4util9prefilter9PrefilterECsarFSTFZzLuM_11xet_runtime: argument 0"}
!78 = distinct !{!78, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtNtCs8rVFV1hdcx_14regex_automata4util9prefilter10PrefilterIEL_EECsarFSTFZzLuM_11xet_runtime"}
!79 = distinct !{!79, !78, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtNtCs8rVFV1hdcx_14regex_automata4util9prefilter10PrefilterIEL_EECsarFSTFZzLuM_11xet_runtime: argument 0"}
!80 = distinct !{!80, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtNtCs8rVFV1hdcx_14regex_automata4util9prefilter10PrefilterIEL_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime"}
!81 = distinct !{!81, !80, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtNtCs8rVFV1hdcx_14regex_automata4util9prefilter10PrefilterIEL_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime: argument 0"}
!82 = distinct !{!82, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArceEECsarFSTFZzLuM_11xet_runtime"}
!83 = distinct !{!83, !82, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArceEECsarFSTFZzLuM_11xet_runtime: argument 0"}
!84 = distinct !{!84, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArceENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime"}
!85 = distinct !{!85, !84, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArceENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime: argument 0"}
!86 = distinct !{!86, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArceEECsarFSTFZzLuM_11xet_runtime"}
!87 = distinct !{!87, !86, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArceEECsarFSTFZzLuM_11xet_runtime: argument 0"}
!88 = distinct !{!88, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArceENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime"}
!89 = distinct !{!89, !88, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArceENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime: argument 0"}
!90 = distinct !{!90, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env5field10MatchDebugECsarFSTFZzLuM_11xet_runtime"}
!91 = distinct !{!91, !90, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env5field10MatchDebugECsarFSTFZzLuM_11xet_runtime: argument 0"}
!92 = distinct !{!92, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArceEECsarFSTFZzLuM_11xet_runtime"}
!93 = distinct !{!93, !92, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArceEECsarFSTFZzLuM_11xet_runtime: argument 0"}
!94 = distinct !{!94, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArceENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime"}
!95 = distinct !{!95, !94, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArceENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime: argument 0"}
!96 = !{!59}
!97 = !{!61}
!98 = !{!61, !67, !65, !63}
!99 = !{!69}
!100 = !{!71}
!101 = !{!73}
!102 = !{!73, !71, !69, !61, !67, !65, !63}
!103 = !{!73, !71, !69, !61, !59}
!104 = !{!75}
!105 = !{!75, !67, !65, !63}
!106 = !{!77}
!107 = !{!79}
!108 = !{!81}
!109 = !{!81, !79, !77, !75, !67, !65, !63}
!110 = !{!81, !79, !77, !75, !59}
!111 = !{!83}
!112 = !{!85}
!113 = !{!85, !83, !63}
!114 = !{!85, !83, !59}
!115 = !{!87}
!116 = !{!89}
!117 = !{!89, !87, !63}
!118 = !{!89, !87, !59}
!119 = !{!91}
!120 = !{!93}
!121 = !{!95}
!122 = !{!95, !93, !91, !59}
!123 = distinct !{!123, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsarFSTFZzLuM_11xet_runtime"}
!124 = distinct !{!124, !123, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsarFSTFZzLuM_11xet_runtime: argument 0"}
!125 = !{!124}
!126 = distinct !{!126, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtCskeoOuuhwsQF_12sharded_slab4page6SharedNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7sharded9DataInnerNtNtBH_3cfg13DefaultConfigEECsarFSTFZzLuM_11xet_runtime"}
!127 = distinct !{!127, !126, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtCskeoOuuhwsQF_12sharded_slab4page6SharedNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7sharded9DataInnerNtNtBH_3cfg13DefaultConfigEECsarFSTFZzLuM_11xet_runtime: argument 0"}
!128 = !{!127}
!129 = distinct !{!129, !"_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCskeoOuuhwsQF_12sharded_slab4page4slot4SlotNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7sharded9DataInnerNtNtBM_3cfg13DefaultConfigEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime"}
!130 = distinct !{!130, !129, !"_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCskeoOuuhwsQF_12sharded_slab4page4slot4SlotNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7sharded9DataInnerNtNtBM_3cfg13DefaultConfigEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime: argument 0"}
!131 = !{!130}
!132 = distinct !{!132, !"_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime"}
!133 = distinct !{!133, !132, !"_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime: argument 0"}
!134 = !{!133}
!135 = distinct !{!135, !"_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env5field5MatchENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime"}
!136 = distinct !{!136, !135, !"_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env5field5MatchENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime: argument 0"}
!137 = !{!136}
!138 = distinct !{!138, !"_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env9directive9DirectiveENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime"}
!139 = distinct !{!139, !138, !"_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env9directive9DirectiveENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime: argument 0"}
!140 = !{!139}
!141 = distinct !{null}
!142 = distinct !{!142, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsarFSTFZzLuM_11xet_runtime"}
!143 = distinct !{!143, !142, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsarFSTFZzLuM_11xet_runtime: argument 0"}
!144 = !{!143}
!145 = distinct !{!145, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsarFSTFZzLuM_11xet_runtime"}
!146 = distinct !{!146, !145, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsarFSTFZzLuM_11xet_runtime: argument 0"}
!147 = distinct !{!147, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECsarFSTFZzLuM_11xet_runtime"}
!148 = distinct !{!148, !147, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECsarFSTFZzLuM_11xet_runtime: argument 0"}
!149 = distinct !{!149, !"_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime"}
!150 = distinct !{!150, !149, !"_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime: argument 0"}
!151 = !{!146}
!152 = !{!148}
!153 = !{!150}
!154 = !{!150, !148}
!155 = distinct !{!155, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsarFSTFZzLuM_11xet_runtime"}
!156 = distinct !{!156, !155, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsarFSTFZzLuM_11xet_runtime: argument 0"}
!157 = distinct !{!157, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsarFSTFZzLuM_11xet_runtime"}
!158 = distinct !{!158, !157, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsarFSTFZzLuM_11xet_runtime: argument 0"}
!159 = distinct !{!159, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsarFSTFZzLuM_11xet_runtime"}
!160 = distinct !{!160, !159, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsarFSTFZzLuM_11xet_runtime: argument 0"}
!161 = !{!156}
!162 = !{!158}
!163 = !{!160}
!164 = distinct !{!164, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env9directive9DirectiveECsarFSTFZzLuM_11xet_runtime"}
!165 = distinct !{!165, !164, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env9directive9DirectiveECsarFSTFZzLuM_11xet_runtime: argument 0"}
!166 = distinct !{!166, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsarFSTFZzLuM_11xet_runtime"}
!167 = distinct !{!167, !166, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsarFSTFZzLuM_11xet_runtime: argument 0"}
!168 = distinct !{!168, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsarFSTFZzLuM_11xet_runtime"}
!169 = distinct !{!169, !168, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsarFSTFZzLuM_11xet_runtime: argument 0"}
!170 = distinct !{!170, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsarFSTFZzLuM_11xet_runtime"}
!171 = distinct !{!171, !170, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsarFSTFZzLuM_11xet_runtime: argument 0"}
!172 = !{!167, !165}
!173 = !{!169, !165}
!174 = !{!171, !165}
!175 = distinct !{!175, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell4CellINtNtB4_6option6OptionNtNtCsjfHCj4Qo55Q_17crossbeam_channel7context7ContextEEECsarFSTFZzLuM_11xet_runtime"}
!176 = distinct !{!176, !175, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell4CellINtNtB4_6option6OptionNtNtCsjfHCj4Qo55Q_17crossbeam_channel7context7ContextEEECsarFSTFZzLuM_11xet_runtime: argument 0"}
!177 = distinct !{!177, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNtNtCsjfHCj4Qo55Q_17crossbeam_channel7context7ContextEEECsarFSTFZzLuM_11xet_runtime"}
!178 = distinct !{!178, !177, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNtNtCsjfHCj4Qo55Q_17crossbeam_channel7context7ContextEEECsarFSTFZzLuM_11xet_runtime: argument 0"}
!179 = distinct !{!179, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsjfHCj4Qo55Q_17crossbeam_channel7context7ContextEECsarFSTFZzLuM_11xet_runtime"}
!180 = distinct !{!180, !179, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsjfHCj4Qo55Q_17crossbeam_channel7context7ContextEECsarFSTFZzLuM_11xet_runtime: argument 0"}
!181 = distinct !{!181, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsjfHCj4Qo55Q_17crossbeam_channel7context7ContextECsarFSTFZzLuM_11xet_runtime"}
!182 = distinct !{!182, !181, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsjfHCj4Qo55Q_17crossbeam_channel7context7ContextECsarFSTFZzLuM_11xet_runtime: argument 0"}
!183 = distinct !{!183, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsjfHCj4Qo55Q_17crossbeam_channel7context5InnerEECsarFSTFZzLuM_11xet_runtime"}
!184 = distinct !{!184, !183, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsjfHCj4Qo55Q_17crossbeam_channel7context5InnerEECsarFSTFZzLuM_11xet_runtime: argument 0"}
!185 = distinct !{!185, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsjfHCj4Qo55Q_17crossbeam_channel7context5InnerENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime"}
!186 = distinct !{!186, !185, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsjfHCj4Qo55Q_17crossbeam_channel7context5InnerENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime: argument 0"}
!187 = !{!176}
!188 = !{!178}
!189 = !{!180}
!190 = !{!180, !178, !176}
!191 = !{!186, !184, !182, !180, !178, !176}
!192 = distinct !{!192, !"_RNvXNtNtNtCskKLDkoKarTP_4core4iter6traits7collectINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry5ScopeNtNtBO_7sharded8RegistryENtB2_12IntoIterator9into_iterCsarFSTFZzLuM_11xet_runtime"}
!193 = distinct !{!193, !192, !"_RNvXNtNtNtCskKLDkoKarTP_4core4iter6traits7collectINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry5ScopeNtNtBO_7sharded8RegistryENtB2_12IntoIterator9into_iterCsarFSTFZzLuM_11xet_runtime: argument 1"}
!194 = distinct !{!194, !192, !"_RNvXNtNtNtCskKLDkoKarTP_4core4iter6traits7collectINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry5ScopeNtNtBO_7sharded8RegistryENtB2_12IntoIterator9into_iterCsarFSTFZzLuM_11xet_runtime: argument 0"}
!195 = distinct !{!195, !"_RNvMsd_Cselt1T5Y3W0b_8smallvecINtB5_8SmallVecAINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E11try_reserveCsarFSTFZzLuM_11xet_runtime"}
!196 = distinct !{!196, !195, !"_RNvMsd_Cselt1T5Y3W0b_8smallvecINtB5_8SmallVecAINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E11try_reserveCsarFSTFZzLuM_11xet_runtime: argument 0"}
!197 = distinct !{!197, !"_RNvMsd_Cselt1T5Y3W0b_8smallvecINtB5_8SmallVecAINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E10triple_mutCsarFSTFZzLuM_11xet_runtime"}
!198 = distinct !{!198, !197, !"_RNvMsd_Cselt1T5Y3W0b_8smallvecINtB5_8SmallVecAINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E10triple_mutCsarFSTFZzLuM_11xet_runtime: argument 1"}
!199 = distinct !{!199, !197, !"_RNvMsd_Cselt1T5Y3W0b_8smallvecINtB5_8SmallVecAINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E10triple_mutCsarFSTFZzLuM_11xet_runtime: argument 0"}
!200 = distinct !{!200, !"_RNvMsd_Cselt1T5Y3W0b_8smallvecINtB5_8SmallVecAINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E4pushCsarFSTFZzLuM_11xet_runtime"}
!201 = distinct !{!201, !200, !"_RNvMsd_Cselt1T5Y3W0b_8smallvecINtB5_8SmallVecAINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E4pushCsarFSTFZzLuM_11xet_runtime: argument 0"}
!202 = distinct !{!202, !"_RNvMsd_Cselt1T5Y3W0b_8smallvecINtB5_8SmallVecAINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E10triple_mutCsarFSTFZzLuM_11xet_runtime"}
!203 = distinct !{!203, !202, !"_RNvMsd_Cselt1T5Y3W0b_8smallvecINtB5_8SmallVecAINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E10triple_mutCsarFSTFZzLuM_11xet_runtime: argument 1"}
!204 = distinct !{!204, !200, !"_RNvMsd_Cselt1T5Y3W0b_8smallvecINtB5_8SmallVecAINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E4pushCsarFSTFZzLuM_11xet_runtime: argument 1"}
!205 = distinct !{!205, !202, !"_RNvMsd_Cselt1T5Y3W0b_8smallvecINtB5_8SmallVecAINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E10triple_mutCsarFSTFZzLuM_11xet_runtime: argument 0"}
!206 = !{!194, !193}
!207 = !{!198, !196}
!208 = !{!199}
!209 = !{!203, !201}
!210 = !{!205, !204}
!211 = !{!201}
!212 = !{!204}
!213 = distinct !{!213, !"_RNCNvNtNtCsarFSTFZzLuM_11xet_runtime7logging4init25run_log_directory_cleanups0_0B7_"}
!214 = distinct !{!214, !213, !"_RNCNvNtNtCsarFSTFZzLuM_11xet_runtime7logging4init25run_log_directory_cleanups0_0B7_: argument 0"}
!215 = distinct !{null}
!216 = distinct !{!216, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsarFSTFZzLuM_11xet_runtime"}
!217 = distinct !{!217, !216, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsarFSTFZzLuM_11xet_runtime: argument 0"}
!218 = !{!214}
!219 = !{i32 0, i32 1000000000}
!220 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000}
end_hunk_1
