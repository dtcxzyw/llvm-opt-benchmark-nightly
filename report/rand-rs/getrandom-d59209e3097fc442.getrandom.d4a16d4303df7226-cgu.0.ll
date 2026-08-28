Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rand-rs/original/getrandom-d59209e3097fc442.getrandom.d4a16d4303df7226-cgu.0?download=true
begin_hunk_0_@_RNvNtNtCsifPj74NEIss_9getrandom8backends8use_file12open_or_wait:bb.a

bb.k:                                             ; preds = %bb.j
  %i.ab = icmp sgt i32 %i.z, 0
  %i.ac = sub nsw i32 0, %i.z
  %spec.select.i.i10.i = select i1 %i.ab, i32 %i.ac, i32 65537
  br label %_RNvNtNtCsifPj74NEIss_9getrandom8backends8use_file13open_readonly.exit.i

_RNvNtNtCsifPj74NEIss_9getrandom8backends8use_file13open_readonly.exit.i: ; preds = %.preheader.i, %bb.k
  %.sroa.3.0.i.i = phi i32 [ %spec.select.i.i10.i, %bb.k ], [ %i.w, %.preheader.i ]
  %.lobit.i = lshr i32 %i.w, 31
  br label %_RNvNtNtCsifPj74NEIss_9getrandom8backends8use_file7open_fd.exit

_RNvNtNtCsifPj74NEIss_9getrandom8backends8use_file7open_fd.exit: ; preds = %_RNvNtNtCsifPj74NEIss_9getrandom8backends8use_file13open_readonly.exit.thread.i.i, %_RNvNtNtNtCsifPj74NEIss_9getrandom8backends8use_file4sync20wait_until_rng_ready.exit.i, %_RNvNtNtCsifPj74NEIss_9getrandom8backends8use_file13open_readonly.exit.i
  %.sroa.4.0.i = phi i32 [ %.sroa.0.1.i.i, %_RNvNtNtNtCsifPj74NEIss_9getrandom8backends8use_file4sync20wait_until_rng_ready.exit.i ], [ %.sroa.3.0.i.i, %_RNvNtNtCsifPj74NEIss_9getrandom8backends8use_file13open_readonly.exit.i ], [ 65537, %_RNvNtNtCsifPj74NEIss_9getrandom8backends8use_file13open_readonly.exit.thread.i.i ] ; 2 uses
  %.sroa.0.0.i5 = phi i32 [ 1, %_RNvNtNtNtCsifPj74NEIss_9getrandom8backends8use_file4sync20wait_until_rng_ready.exit.i ], [ %.lobit.i, %_RNvNtNtCsifPj74NEIss_9getrandom8backends8use_file13open_readonly.exit.i ], [ 1, %_RNvNtNtCsifPj74NEIss_9getrandom8backends8use_file13open_readonly.exit.thread.i.i ] ; 2 uses
  %i.ad = insertvalue { i32, i32 } poison, i32 %.sroa.0.0.i5, 0
  %i.ae = trunc nuw i32 %.sroa.0.0.i5 to i1
  %.sroa.04.0 = select i1 %i.ae, i32 -1, i32 %.sroa.4.0.i
  store atomic i32 %.sroa.04.0, ptr @_RNvNtNtCsifPj74NEIss_9getrandom8backends8use_file2FD release, align 4
  %i.af = call noundef i64 (i64, ...) @syscall(i64 noundef 202, ptr noundef nonnull align 4 @_RNvNtNtCsifPj74NEIss_9getrandom8backends8use_file2FD, i32 noundef 129, i32 noundef 2147483647) #18 ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %_RNvNtNtCsifPj74NEIss_9getrandom8backends8use_file7open_fd.exit
  %.pn = phi { i32, i32 } [ %i.ad, %_RNvNtNtCsifPj74NEIss_9getrandom8backends8use_file7open_fd.exit ], [ { i32 0, i32 poison }, %bb.b ]
  %.pn6 = phi i32 [ %.sroa.4.0.i, %_RNvNtNtCsifPj74NEIss_9getrandom8backends8use_file7open_fd.exit ], [ %i.b, %bb.b ]
  %.merged = insertvalue { i32, i32 } %.pn, i32 %.pn6, 1
  ret { i32, i32 } %.merged
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvNtNtNtNtCsG258MDvU3F_3std3sys2io5error4unix14is_interrupted(i32 noundef %0) unnamed_addr #5 {
bb.a:
  %i.a = icmp eq i32 %0, 4
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef range(i8 0, 44) i8 @_RNvNtNtNtNtCsG258MDvU3F_3std3sys2io5error4unix17decode_error_kind(i32 noundef %0) unnamed_addr #2 {
bb.a:
  %switch.tableidx = add i32 %0, -1               ; 2 uses
  %i.a = icmp ult i32 %switch.tableidx, 122
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvNtNtNtNtCsG258MDvU3F_3std3sys2io5error4unix17decode_error_kind, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.sroa.0.0 = phi i8 [ %switch.load, %switch.lookup ], [ 43, %bb.a ]
  ret i8 %.sroa.0.0
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef i32 @_RNvNtNtNtNtCsifPj74NEIss_9getrandom8backends8use_file5utils9get_errno9get_errno() unnamed_addr #6 {
bb.a:
  %i.a = tail call noundef ptr @__errno_location() #18
  %i.b = load i32, ptr %i.a, align 4, !noundef !5
  ret i32 %i.b
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull ptr @_RNvXNtCsifPj74NEIss_9getrandom15error_std_implsNtNtNtCskKLDkoKarTP_4core2io5error5ErrorINtNtBP_7convert4FromNtNtB4_5error5ErrorE4from(i32 noundef range(i32 1, 0) %0) unnamed_addr #1 {
bb.a:
  %or.cond = icmp ult i32 %0, -2147483647
  br i1 %or.cond, label %bb.d, label %bb.b, !prof !25

bb.b:                                             ; preds = %bb.a
  %i.a = sub nsw i32 0, %0
  %i.b = load atomic ptr, ptr @_RNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions12OS_FUNCTIONS monotonic, align 8
  %.not.i = icmp eq ptr %i.b, @3
  br i1 %.not.i, label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit, label %bb.c, !prof !26

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions13set_functions19set_functions_inner(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3)
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit

_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit: ; preds = %bb.b, %bb.c
  %i.c = zext nneg i32 %i.a to i64
  %i.d = shl nuw nsw i64 %i.c, 32
  %i.e = or disjoint i64 %i.d, 2
  %i.f = inttoptr i64 %i.e to ptr
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.g = tail call noundef nonnull ptr @_RINvMNtNtCsexYYUdYSQU6_5alloc2io5errorNtNtNtCskKLDkoKarTP_4core2io5error5Error3newNtNtCsifPj74NEIss_9getrandom5error5ErrorEB1m_(i8 noundef 42, i32 noundef %0) #20
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit
  %.sroa.0.0 = phi ptr [ %i.g, %bb.d ], [ %i.f, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NtCsifPj74NEIss_9getrandom5errorNtB5_5ErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 6 uses
  %i.f = alloca [4 x i8], align 4                 ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 5)
  %i.h = load i32, ptr %0, align 4, !range !27, !noundef !5 ; 5 uses
  %or.cond = icmp ult i32 %i.h, -2147483647
  br i1 %or.cond, label %bb.d, label %bb.b, !prof !25

bb.b:                                             ; preds = %bb.a
  %i.i = sub nsw i32 0, %i.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i32 %i.i, ptr %i.f, align 4
  %i.j = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 8, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.k = load i32, ptr %i.f, align 4, !noundef !5
  %i.l = load atomic ptr, ptr @_RNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions12OS_FUNCTIONS monotonic, align 8
  %.not.i = icmp eq ptr %i.l, @3
  br i1 %.not.i, label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit, label %bb.c, !prof !26

bb.c:                                             ; preds = %bb.b
  call void @_RNvNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions13set_functions19set_functions_inner(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3)
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit

_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit: ; preds = %bb.b, %bb.c
  %i.m = sext i32 %i.k to i64
  %i.n = shl nsw i64 %i.m, 32
  %i.o = or disjoint i64 %i.n, 2
  %i.p = inttoptr i64 %i.o to ptr
  store ptr %i.p, ptr %i.e, align 8
  %i.q = invoke noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 11, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @7)
          to label %bb.f unwind label %bb.e       ; 0 uses

bb.d:                                             ; preds = %bb.a
  %switch.tableidx = add i32 %i.h, -65536         ; 3 uses
  %i.r = icmp ult i32 %switch.tableidx, 3
  br i1 %i.r, label %switch.lookup, label %bb.l

bb.e:                                             ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsifPj74NEIss_9getrandom(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #21
          to label %bb.k unwind label %bb.j

bb.f:                                             ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !28)
  %.val.i = load ptr, ptr %i.e, align 8, !alias.scope !28, !nonnull !5, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !28
  %i.t = ptrtoint ptr %.val.i to i64              ; 2 uses
  %i.u = and i64 %i.t, 3
  switch i64 %i.u, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsifPj74NEIss_9getrandom.exit
    i64 3, label %bb.g
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsifPj74NEIss_9getrandom.exit
    i64 1, label %bb.h
  ], !prof !6

default.unreachable:                              ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.v = icmp ult ptr %.val.i, inttoptr (i64 188978561024 to ptr)
  %i.w = and i64 %i.t, 1095216660480
  %i.x = icmp ne i64 %i.w, 1095216660480
  call void @llvm.assume(i1 %i.v)
  call void @llvm.assume(i1 %i.x)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsifPj74NEIss_9getrandom.exit

bb.h:                                             ; preds = %bb.f
  %i.y = getelementptr i8, ptr %.val.i, i64 -1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.y) ]
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.y, ptr %i.z, align 8, !alias.scope !31, !noalias !28
  store i8 3, ptr %i.a, align 8, !alias.scope !31, !noalias !28
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.z), !noalias !28
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsifPj74NEIss_9getrandom.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsifPj74NEIss_9getrandom.exit: ; preds = %bb.f, %bb.f, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.i

bb.i:                                             ; preds = %bb.l, %switch.lookup, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsifPj74NEIss_9getrandom.exit
  %i.aa = call noundef zeroext i1 @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret i1 %i.aa

bb.j:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.k:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.s

switch.lookup:                                    ; preds = %bb.d
  %i.ac = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs1_NtCsifPj74NEIss_9getrandom5errorNtB5_5ErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt.20, i64 %i.ac
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.ad = zext nneg i32 %switch.tableidx to i64
  %switch.gep5 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1_NtCsifPj74NEIss_9getrandom5errorNtB5_5ErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, i64 %i.ad
  %switch.load6 = load i8, ptr %switch.gep5, align 1
  %switch.ext = zext i8 %switch.load6 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %switch.load, ptr %i.d, align 8, !captures !34
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %switch.ext, ptr %i.ae, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 %i.h, ptr %i.c, align 4
  %i.af = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 13, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ag = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 11, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @13) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.i

bb.l:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.h, ptr %i.b, align 4
  %i.ah = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 12, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.i
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1_NtCsifPj74NEIss_9getrandom5errorNtB5_5ErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = load i32, ptr %0, align 4, !range !27, !noundef !5 ; 4 uses
  %or.cond = icmp ult i32 %i.d, -2147483647
  br i1 %or.cond, label %bb.d, label %bb.b, !prof !25

bb.b:                                             ; preds = %bb.a
  %i.e = sub nsw i32 0, %i.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.f = load atomic ptr, ptr @_RNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions12OS_FUNCTIONS monotonic, align 8
  %.not.i = icmp eq ptr %i.f, @3
  br i1 %.not.i, label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit, label %bb.c, !prof !26

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions13set_functions19set_functions_inner(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3)
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit

_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit: ; preds = %bb.b, %bb.c
  %i.g = zext nneg i32 %i.e to i64
  %i.h = shl nuw nsw i64 %i.g, 32
  %i.i = or disjoint i64 %i.h, 2
  %i.j = inttoptr i64 %i.i to ptr
  store ptr %i.j, ptr %i.c, align 8
  %i.k = invoke noundef zeroext i1 @_RNvXs3_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsifPj74NEIss_9getrandom.exit unwind label %bb.e

bb.d:                                             ; preds = %bb.a
  %switch.tableidx = add i32 %i.d, -65536         ; 3 uses
  %i.l = icmp ult i32 %switch.tableidx, 3
  br i1 %i.l, label %switch.lookup, label %bb.i

bb.e:                                             ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsifPj74NEIss_9getrandom(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #21
          to label %bb.h unwind label %bb.g

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsifPj74NEIss_9getrandom.exit: ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %switch.lookup, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsifPj74NEIss_9getrandom.exit
  %.sroa.0.0.in = phi i1 [ %i.q, %switch.lookup ], [ %i.u, %bb.i ], [ %i.k, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsifPj74NEIss_9getrandom.exit ]
  ret i1 %.sroa.0.0.in

bb.g:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.h:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.m

switch.lookup:                                    ; preds = %bb.d
  %i.o = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1_NtCsifPj74NEIss_9getrandom5errorNtB5_5ErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, i64 %i.o
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.p = zext nneg i32 %switch.tableidx to i64
  %switch.gep21 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs1_NtCsifPj74NEIss_9getrandom5errorNtB5_5ErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt.20, i64 %i.p
  %switch.load22 = load ptr, ptr %switch.gep21, align 8
  %i.q = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load22, i64 noundef %switch.ext)
  br label %bb.f

bb.i:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.d, ptr %i.b, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs9_NtNtNtCskKLDkoKarTP_4core3fmt3num3implNtB9_7Display3fmt, ptr %.sroa.47.0..sroa_idx, align 8
  %i.r = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !5, !align !35, !noundef !5
  %i.u = call noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.t, ptr noundef nonnull @15, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtReNtB6_5Debug3fmtCsifPj74NEIss_9getrandom(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !5
  %i.d = tail call noundef zeroext i1 @_RNvXsh_NtCskKLDkoKarTP_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsQ_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 67108864
  %.not1 = icmp eq i32 %i.d, 0
  br i1 %.not1, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvXsv_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_RNvXs9_NtNtNtCskKLDkoKarTP_4core3fmt3num3implNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXsx_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.c ], [ %i.g, %bb.e ], [ %i.f, %bb.d ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYNCNvNvMNtNtCsG258MDvU3F_3std2io5errorNtNtNtCskKLDkoKarTP_4core2io5error5Error17from_raw_os_error9FUNCTIONS0INtNtNtBJ_3ops8function6FnOnceTlQNtNtBJ_3fmt9FormatterEE9call_onceCsifPj74NEIss_9getrandom(i32 noundef %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !36
  call void @_RNvNtNtNtNtCsG258MDvU3F_3std3sys2io5error4unix12error_string(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i32 noundef %0), !noalias !36
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !noalias !36, !nonnull !5, !noundef !5 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noalias !36, !noundef !5
  %i.f = invoke noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %i.e)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  %.val2.i = load i64, ptr %i.a, align 8, !noalias !36 ; 2 uses
  %i.h = icmp eq i64 %.val2.i, 0
  br i1 %i.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsifPj74NEIss_9getrandom.exit.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i: ; preds = %bb.b
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.c, i64 noundef %.val2.i, i64 noundef range(i64 1, -9223372036854775807) 1) #18
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsifPj74NEIss_9getrandom.exit.i

bb.c:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %i.a, align 8, !noalias !36 ; 2 uses
  %i.i = icmp eq i64 %.val.i, 0
  br i1 %i.i, label %_RNCNvNvMNtNtCsG258MDvU3F_3std2io5errorNtNtNtCskKLDkoKarTP_4core2io5error5Error17from_raw_os_error9FUNCTIONS0CsifPj74NEIss_9getrandom.exit, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i4.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i4.i: ; preds = %bb.c
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.c, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #18
  br label %_RNCNvNvMNtNtCsG258MDvU3F_3std2io5errorNtNtNtCskKLDkoKarTP_4core2io5error5Error17from_raw_os_error9FUNCTIONS0CsifPj74NEIss_9getrandom.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsifPj74NEIss_9getrandom.exit.i: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i, %bb.b
  resume { ptr, i32 } %i.g

_RNCNvNvMNtNtCsG258MDvU3F_3std2io5errorNtNtNtCskKLDkoKarTP_4core2io5error5Error17from_raw_os_error9FUNCTIONS0CsifPj74NEIss_9getrandom.exit: ; preds = %bb.c, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !36
  ret i1 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtCsifPj74NEIss_9getrandom5error5ErrorNtNtCskKLDkoKarTP_4core5error5Error11descriptionB6_(ptr noalias nofree readonly align 4 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @18, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCsifPj74NEIss_9getrandom5error5ErrorNtNtCskKLDkoKarTP_4core5error5Error5causeB6_(ptr noalias nofree readonly align 4 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCsifPj74NEIss_9getrandom5error5ErrorNtNtCskKLDkoKarTP_4core5error5Error6sourceB6_(ptr noalias nofree readonly align 4 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}
end_hunk_0
