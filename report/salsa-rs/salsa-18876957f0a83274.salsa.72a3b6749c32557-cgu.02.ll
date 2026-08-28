Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/salsa-rs/original/salsa-18876957f0a83274.salsa.72a3b6749c32557-cgu.02?download=true
inline.NumInlined: 266
inline.NumDeleted: 104
begin_hunk_0_@_RNvNtNtCsC8CapfvpQ1_5salsa8function8backdate25report_backdate_violation:bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load i64, ptr %i.ba, align 8, !range !38, !invariant.load !6, !noalias !225
  %i.bc = add nsw i64 %i.bb, -1
  %i.bd = and i64 %i.bc, -16
  %i.be = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.sroa.0.0.i9.i.i.i = phi ptr [ %i.bf, %bb.r ], [ %i.ax, %bb.q ]
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 40
  %i.bh = load ptr, ptr %i.bg, align 8, !invariant.load !6, !noalias !225, !nonnull !6
  %i.bi = invoke noundef zeroext i1 %i.bh(ptr noundef nonnull %.sroa.0.0.i9.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.r)
          to label %.split unwind label %bb.t, !noalias !212, !inline_history !226

bb.t:                                             ; preds = %bb.s
  %i.bj = landingpad { ptr, i32 }
          cleanup
  %i.bk = load i64, ptr %.sroa.0.0.i.i4.i.i, align 8, !noalias !212, !noundef !6
  %i.bl = add i64 %i.bk, -1
  store i64 %i.bl, ptr %.sroa.0.0.i.i4.i.i, align 8, !noalias !212
  br label %bb.u

.split:                                           ; preds = %bb.s
  %i.bm = load i64, ptr %.sroa.0.0.i.i4.i.i, align 8, !noalias !212, !noundef !6
  %i.bn = add i64 %i.bm, -1
  store i64 %i.bn, ptr %.sroa.0.0.i.i4.i.i, align 8, !noalias !212
  store i8 1, ptr %i.af, align 8, !noalias !212
  br i1 %i.bi, label %bb.w, label %bb.v

bb.u:                                             ; preds = %bb.t, %bb.n
  %.pn.i.i.i = phi { ptr, i32 } [ %i.ao, %bb.n ], [ %i.bj, %bb.t ]
  store i8 1, ptr %i.af, align 8, !noalias !212
  br label %.body

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvNtNtCsC8CapfvpQ1_5salsa8function8backdate25report_backdate_violations_0E0bEB2m_.exit.thread.i: ; preds = %.noexc13, %bb.j
  %i.bo = load i64, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher4NONE, align 8, !range !37, !alias.scope !227, !noalias !212, !noundef !6
  %i.bp = trunc nuw i64 %i.bo to i1
  %i.bq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !227, !noalias !212, !nonnull !6, !noundef !6 ; 2 uses
  %i.br = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !227, !noalias !212, !nonnull !6, !align !36, !noundef !6 ; 2 uses
  br i1 %i.bp, label %_RNCNvNtNtCsC8CapfvpQ1_5salsa8function8backdate25report_backdate_violations_0B7_.exit9.i.invoke.sink.split, label %_RNCNvNtNtCsC8CapfvpQ1_5salsa8function8backdate25report_backdate_violations_0B7_.exit9.i.invoke

_RNCNvNtNtCsC8CapfvpQ1_5salsa8function8backdate25report_backdate_violations_0B7_.exit9.i.invoke.sink.split: ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvNtNtCsC8CapfvpQ1_5salsa8function8backdate25report_backdate_violations_0E0bEB2m_.exit.thread.i, %bb.k, %bb.i
  %.sink26 = phi ptr [ %i.al, %bb.k ], [ %i.z, %bb.i ], [ %i.br, %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvNtNtCsC8CapfvpQ1_5salsa8function8backdate25report_backdate_violations_0E0bEB2m_.exit.thread.i ] ; 2 uses
  %.sink23 = phi ptr [ %i.ak, %bb.k ], [ %i.y, %bb.i ], [ %i.bq, %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvNtNtCsC8CapfvpQ1_5salsa8function8backdate25report_backdate_violations_0E0bEB2m_.exit.thread.i ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.sink26, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !range !38, !invariant.load !6, !noalias !212
  %i.bu = add nsw i64 %i.bt, -1
  %i.bv = and i64 %i.bu, -16
  %i.bw = getelementptr inbounds nuw i8, ptr %.sink23, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  br label %_RNCNvNtNtCsC8CapfvpQ1_5salsa8function8backdate25report_backdate_violations_0B7_.exit9.i.invoke

_RNCNvNtNtCsC8CapfvpQ1_5salsa8function8backdate25report_backdate_violations_0B7_.exit9.i.invoke: ; preds = %_RNCNvNtNtCsC8CapfvpQ1_5salsa8function8backdate25report_backdate_violations_0B7_.exit9.i.invoke.sink.split, %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvNtNtCsC8CapfvpQ1_5salsa8function8backdate25report_backdate_violations_0E0bEB2m_.exit.thread.i, %bb.k, %bb.i
  %.sink22 = phi ptr [ %i.al, %bb.k ], [ %i.z, %bb.i ], [ %i.br, %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvNtNtCsC8CapfvpQ1_5salsa8function8backdate25report_backdate_violations_0E0bEB2m_.exit.thread.i ], [ %.sink26, %_RNCNvNtNtCsC8CapfvpQ1_5salsa8function8backdate25report_backdate_violations_0B7_.exit9.i.invoke.sink.split ]
  %i.by = phi ptr [ %i.ak, %bb.k ], [ %i.y, %bb.i ], [ %i.bq, %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvNtNtCsC8CapfvpQ1_5salsa8function8backdate25report_backdate_violations_0E0bEB2m_.exit.thread.i ], [ %i.bx, %_RNCNvNtNtCsC8CapfvpQ1_5salsa8function8backdate25report_backdate_violations_0B7_.exit9.i.invoke.sink.split ]
  %i.bz = getelementptr inbounds nuw i8, ptr %.sink22, i64 40
  %i.ca = load ptr, ptr %i.bz, align 8, !invariant.load !6, !noalias !212, !nonnull !6
  %i.cb = invoke noundef zeroext i1 %i.ca(ptr noundef nonnull %i.by, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.r)
          to label %_RINvNtCsjvLTWb8VeNU_12tracing_core10dispatcher11get_defaultbNCNvNtNtCsC8CapfvpQ1_5salsa8function8backdate25report_backdate_violations_0EB14_.exit unwind label %bb.b, !inline_history !230

_RINvNtCsjvLTWb8VeNU_12tracing_core10dispatcher11get_defaultbNCNvNtNtCsC8CapfvpQ1_5salsa8function8backdate25report_backdate_violations_0EB14_.exit: ; preds = %_RNCNvNtNtCsC8CapfvpQ1_5salsa8function8backdate25report_backdate_violations_0B7_.exit9.i.invoke
  br i1 %i.cb, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.split, %bb.c, %bb.a, %bb.w, %bb.g, %bb.f, %_RINvNtCsjvLTWb8VeNU_12tracing_core10dispatcher11get_defaultbNCNvNtNtCsC8CapfvpQ1_5salsa8function8backdate25report_backdate_violations_0EB14_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.val = load ptr, ptr %i.h, align 8, !align !36, !noundef !6
  %.val10 = load i64, ptr %i.i, align 8
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsC8CapfvpQ1_5salsa8function8backdate17BackdateViolationEBH_(ptr %.val, i64 %.val10)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.w:                                             ; preds = %.split, %_RINvNtCsjvLTWb8VeNU_12tracing_core10dispatcher11get_defaultbNCNvNtNtCsC8CapfvpQ1_5salsa8function8backdate25report_backdate_violations_0EB14_.exit
  invoke fastcc void @_RNCNvNtNtCsC8CapfvpQ1_5salsa8function8backdate25report_backdate_violation0B7_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %bb.v unwind label %bb.b

bb.x:                                             ; preds = %.body
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.y:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NtNtCsC8CapfvpQ1_5salsa8function8backdateNtB5_17BackdateViolationNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs_NtCsC8CapfvpQ1_5salsa3keyNtB4_16DatabaseKeyIndexNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr %.sroa.45.0..sroa_idx, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %0, ptr %i.f, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr @_RNvXs_NtCsC8CapfvpQ1_5salsa8revisionNtB4_8RevisionNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr %.sroa.49.0..sroa_idx, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %i.e, ptr %i.g, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr @_RNvXs_NtCsC8CapfvpQ1_5salsa8revisionNtB4_8RevisionNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr %.sroa.413.0..sroa_idx, align 8
  %i.h = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !6, !align !36, !noundef !6 ; 2 uses
  %i.k = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.j, ptr noundef nonnull @20, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.k, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !align !36, !noundef !6
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.l, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRNtNtCsC8CapfvpQ1_5salsa12active_query9BacktraceNtB6_7Display3fmtBA_, ptr %.sroa.428.0..sroa_idx, align 8
  %i.n = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.j, ptr noundef nonnull @21, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.sroa.0.0 = phi i1 [ false, %bb.b ], [ %i.n, %bb.c ], [ true, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtCsa3bo7ChGFM8_8thin_vec7ThinVecNtNtCsC8CapfvpQ1_5salsa5cycle9CycleHeadENtB6_5Debug3fmtB18_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !align !36, !noundef !6
  %.val = load ptr, ptr %i.a, align 8, !alias.scope !231, !nonnull !6, !noundef !6 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.c = load i64, ptr %.val, align 8, !noalias !234, !noundef !6
  %i.d = tail call noundef zeroext i1 @_RNvXsr_NtCs4NRVxsYgnAr_4core3fmtSNtNtCsC8CapfvpQ1_5salsa5cycle9CycleHeadNtB5_5Debug3fmtBz_(ptr noundef nonnull align 4 %i.b, i64 noundef %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCsC8CapfvpQ1_5salsa8revision8RevisionNtB6_5Debug3fmtBA_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !6, !align !36, !noundef !6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !237)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !240
  store ptr %i.b, ptr %i.a, align 8, !noalias !240
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsG_NtNtCs4NRVxsYgnAr_4core3num7nonzeroINtB5_7NonZerojENtNtB9_3fmt7Display3fmtCsC8CapfvpQ1_5salsa, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !240
  %i.c = load ptr, ptr %1, align 8, !alias.scope !237, !noalias !242, !nonnull !6, !noundef !6
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !237, !noalias !242, !nonnull !6, !align !36, !noundef !6
  %i.f = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.e, ptr noundef nonnull @29, ptr noundef nonnull %i.a), !noalias !237
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !240
  ret i1 %i.f
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn uwtable
define noundef range(i64 1, 0) i64 @_RNvXs2_NtCsC8CapfvpQ1_5salsa8revisionNtB5_14AtomicRevisionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = load atomic i64, ptr %0 acquire, align 8 ; 2 uses
  %i.b = icmp ne i64 %i.a, 0
  tail call void @llvm.assume(i1 %i.b)
  ret i64 %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs3_NtCsC8CapfvpQ1_5salsa5tableNtB5_5TableNtNtCs4NRVxsYgnAr_4core7default7Default7default(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([520 x i8]) align 8 captures(none) dereferenceable(520) initializes((0, 520)) %0) unnamed_addr #1 {
bb.a:
  %.sroa.4 = alloca [39 x i8], align 1            ; 4 uses
  %i.a = tail call noundef i64 @_RNvMs8_NtCs36qfJazsBC0_6boxcar7bucketsINtB5_5IndexKj3a_E13new_uncheckedCsC8CapfvpQ1_5salsa(i64 noundef 0)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(464) %0, i8 0, i64 464, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  %.sroa.4.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %.sroa.4.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) @7, i64 32, i1 false)
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 464
  store i64 %i.a, ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 472
  store i64 0, ptr %.sroa.54.0..sroa_idx, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 480
  store i8 0, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 481
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.4, i64 39, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs5_NtCsC8CapfvpQ1_5salsa5tableNtB5_11ErasedSlotsNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(104) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %.sroa.55.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.i, %bb.a
  %i.f = phi ptr [ %i.k, %bb.i ], [ %.pre, %bb.a ] ; 3 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i64, ptr %i.b, align 8, !noundef !6 ; 4 uses
  %i.h = load i64, ptr %i.c, align 8, !noundef !6
  %i.i = icmp ult i64 %i.g, %i.h
  br i1 %i.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !243)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !246)
  %.sroa.01.0.copyload.i.i.i = load i128, ptr %i.d, align 8, !alias.scope !246, !noalias !248
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.j = tail call { i64, ptr } @_RNvXs8_NtNtCs36qfJazsBC0_6boxcar3vec3rawINtB5_4IterNtNtCsC8CapfvpQ1_5salsa5table4PageENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBR_(ptr noalias noundef nonnull align 8 dereferenceable(56) %1), !noalias !250 ; 2 uses
  %i.k = extractvalue { i64, ptr } %i.j, 1        ; 5 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = load i64, ptr %i.e, align 8, !alias.scope !251, !noalias !250, !noundef !6
  %i.m = tail call i64 @llvm.usub.sat.i64(i64 %i.l, i64 1)
  store i64 %i.m, ptr %i.e, align 8, !alias.scope !251, !noalias !250
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %.sroa.0.0.copyload.i.i.i = load i128, ptr %i.n, align 8, !noalias !254
  %i.o = icmp eq i128 %.sroa.0.0.copyload.i.i.i, %.sroa.01.0.copyload.i.i.i
  br i1 %i.o, label %bb.i, label %bb.e

bb.g:                                             ; preds = %bb.c
  %i.p = add nuw i64 %i.g, 1
  store i64 %i.p, ptr %i.b, align 8
  %i.q = load i64, ptr %.sroa.55.0..sroa_idx6, align 8, !noundef !6
  %i.r = trunc i64 %i.q to i32
  %i.s = trunc i64 %i.g to i32
  %i.t = shl i32 %i.r, 7
  %i.u = or i32 %i.t, %i.s
  %i.v = add i32 %i.u, 1                          ; 2 uses
  %i.w = icmp ne i32 %i.v, 0
  tail call void @llvm.assume(i1 %i.w)
  %i.x = load ptr, ptr %i.f, align 8, !nonnull !6, !noundef !6
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !6, !align !36, !noundef !6
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !6
  %i.ac = mul i64 %i.ab, %i.g
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ac
  store i32 %i.v, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %.sroa.42.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ad, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %bb.g
  ret void

bb.i:                                             ; preds = %bb.f
  %i.ae = extractvalue { i64, ptr } %i.j, 0
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.ag = load atomic i64, ptr %i.af acquire, align 8, !noalias !254
  store ptr %i.k, ptr %i.a, align 8
  store i64 %i.ae, ptr %.sroa.55.0..sroa_idx6, align 8
  store i64 0, ptr %i.b, align 8
  store i64 %i.ag, ptr %i.c, align 8
  br label %bb.b

bb.j:                                             ; preds = %bb.e
  store ptr null, ptr %i.a, align 8
  store i64 0, ptr %i.b, align 8
  store i32 0, ptr %0, align 8
  br label %bb.h
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs7_NtCsUsIPftNhTL_8lock_api5mutexINtB5_5MutexNtNtCscHkFMvyoPQb_11parking_lot9raw_mutex8RawMutexNtNtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graph15DependencyGraphENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtB1F_(ptr noundef nonnull align 8 %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = load atomic i8, ptr %0 monotonic, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.sroa.03.0.i = phi i8 [ %i.d, %bb.a ], [ %i.j, %bb.c ] ; 3 uses
  %i.e = and i8 %.sroa.03.0.i, 1
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.c, label %_RNvXNtCscHkFMvyoPQb_11parking_lot9raw_mutexNtB2_8RawMutexNtNtCsUsIPftNhTL_8lock_api5mutex8RawMutex8try_lock.exit

bb.c:                                             ; preds = %bb.b
  %i.g = or disjoint i8 %.sroa.03.0.i, 1
  %i.h = cmpxchg weak ptr %0, i8 %.sroa.03.0.i, i8 %i.g acquire monotonic, align 1 ; 2 uses
  %i.i = extractvalue { i8, i1 } %i.h, 1
  %i.j = extractvalue { i8, i1 } %i.h, 0
  br i1 %i.i, label %bb.d, label %bb.b

_RNvXNtCscHkFMvyoPQb_11parking_lot9raw_mutexNtB2_8RawMutexNtNtCsUsIPftNhTL_8lock_api5mutex8RawMutex8try_lock.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 5)
  %i.k = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 4, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23)
  %i.l = call noundef zeroext i1 @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsUsIPftNhTL_8lock_api5mutex10MutexGuardNtNtCscHkFMvyoPQb_11parking_lot9raw_mutex8RawMutexNtNtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graph15DependencyGraphEEB2e_.exit4

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 5)
          to label %bb.g unwind label %bb.e

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsUsIPftNhTL_8lock_api5mutex10MutexGuardNtNtCscHkFMvyoPQb_11parking_lot9raw_mutex8RawMutexNtNtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graph15DependencyGraphEEB2e_.exit4: ; preds = %bb.j, %bb.i, %_RNvXNtCscHkFMvyoPQb_11parking_lot9raw_mutexNtB2_8RawMutexNtNtCsUsIPftNhTL_8lock_api5mutex8RawMutex8try_lock.exit
  %.sroa.0.0.in = phi i1 [ %i.l, %_RNvXNtCscHkFMvyoPQb_11parking_lot9raw_mutexNtB2_8RawMutexNtNtCsUsIPftNhTL_8lock_api5mutex8RawMutex8try_lock.exit ], [ %i.r, %bb.i ], [ %i.r, %bb.j ]
  ret i1 %.sroa.0.0.in

bb.e:                                             ; preds = %bb.h, %bb.g, %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = cmpxchg ptr %0, i8 1, i8 0 release monotonic, align 1
  %i.o = extractvalue { i8, i1 } %i.n, 1
  br i1 %i.o, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsUsIPftNhTL_8lock_api5mutex10MutexGuardNtNtCscHkFMvyoPQb_11parking_lot9raw_mutex8RawMutexNtNtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graph15DependencyGraphEEB2e_.exit, label %bb.f, !prof !11

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvMs1_NtCscHkFMvyoPQb_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %0, i1 noundef zeroext false)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsUsIPftNhTL_8lock_api5mutex10MutexGuardNtNtCscHkFMvyoPQb_11parking_lot9raw_mutex8RawMutexNtNtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graph15DependencyGraphEEB2e_.exit unwind label %bb.k

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %i.b, align 8
  %i.q = invoke noundef nonnull align 8 ptr @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 4, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @25)
          to label %bb.h unwind label %bb.e

bb.h:                                             ; preds = %bb.g
  %i.r = invoke noundef zeroext i1 @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.q)
          to label %bb.i unwind label %bb.e       ; 2 uses

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.s = cmpxchg ptr %0, i8 1, i8 0 release monotonic, align 1
  %i.t = extractvalue { i8, i1 } %i.s, 1
  br i1 %i.t, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsUsIPftNhTL_8lock_api5mutex10MutexGuardNtNtCscHkFMvyoPQb_11parking_lot9raw_mutex8RawMutexNtNtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graph15DependencyGraphEEB2e_.exit4, label %bb.j, !prof !11

bb.j:                                             ; preds = %bb.i
  call void @_RNvMs1_NtCscHkFMvyoPQb_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %0, i1 noundef zeroext false)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsUsIPftNhTL_8lock_api5mutex10MutexGuardNtNtCscHkFMvyoPQb_11parking_lot9raw_mutex8RawMutexNtNtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graph15DependencyGraphEEB2e_.exit4

bb.k:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsUsIPftNhTL_8lock_api5mutex10MutexGuardNtNtCscHkFMvyoPQb_11parking_lot9raw_mutex8RawMutexNtNtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graph15DependencyGraphEEB2e_.exit: ; preds = %bb.e, %bb.f
  resume { ptr, i32 } %i.m
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs8_NtCsC8CapfvpQ1_5salsa5tableNtB5_4PageNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !align !36, !noundef !6
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !6, !noundef !6
  %i.g = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !6, !noundef !6
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  tail call void %i.f(ptr noundef nonnull %i.g, i64 noundef %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.j)
  ret void
}

; Function Attrs: cold noreturn nonlazybind uwtable
define noalias noundef nonnull ptr @_RNvXs9_NtCsC8CapfvpQ1_5salsa5tableNtB5_9DummySlotNtB5_4Slot5memos(ptr nofree noundef readnone captures(none) %0, i64 noundef range(i64 1, 0) %1) unnamed_addr #5 {
bb.a:
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #27
  unreachable
}

; Function Attrs: cold noreturn nonlazybind uwtable
define noalias noundef nonnull align 8 ptr @_RNvXs9_NtCsC8CapfvpQ1_5salsa5tableNtB5_9DummySlotNtB5_4Slot9memos_mut(ptr noalias nofree noundef nonnull readnone captures(none) %0) unnamed_addr #5 {
bb.a:
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #27
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXsC_Csa3bo7ChGFM8_8thin_vecINtB5_8IntoIterNtNtCsC8CapfvpQ1_5salsa5cycle9CycleHeadENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBL_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 4 captures(none) dereferenceable(16) initializes((0, 4)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !6 ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !6
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add i64 %i.b, 1
  store i64 %i.f, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.h, i64 16, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i32 0, ptr %0, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsG_NtNtCs4NRVxsYgnAr_4core3num7nonzeroINtB5_7NonZerojENtNtB9_3fmt7Display3fmtCsC8CapfvpQ1_5salsa(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #7 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i64, ptr %0, align 8, !range !259, !noundef !6
  store i64 %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs_NtCsC8CapfvpQ1_5salsa8revisionNtB4_8RevisionNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsG_NtNtCs4NRVxsYgnAr_4core3num7nonzeroINtB5_7NonZerojENtNtB9_3fmt7Display3fmtCsC8CapfvpQ1_5salsa, ptr %.sroa.43.0..sroa_idx, align 8
  %i.b = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !align !36, !noundef !6
  %i.e = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.d, ptr noundef nonnull @29, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.e
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs_NtCsjvLTWb8VeNU_12tracing_core8callsiteNtB4_15DefaultCallsiteNtB4_8Callsite8metadata(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !align !36, !noundef !6
  ret ptr %i.a
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: write) uwtable
define hidden void @_RNvXs_NtNtCs4NRVxsYgnAr_4core5slice10specializeSNtNtCsC8CapfvpQ1_5salsa8revision8RevisionINtB4_8SpecFillBK_E9spec_fillBO_(ptr noalias nofree noundef nonnull writeonly align 8 captures(address) %0, i64 noundef range(i64 0, 1152921504606846976) %1, i64 noundef range(i64 1, 0) %2) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %.idx = shl nuw nsw i64 %1, 3                   ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.b = icmp eq i64 %1, 0
  br i1 %i.b, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = add nsw i64 %.idx, -8                    ; 2 uses
  %i.d = lshr exact i64 %i.c, 3
  %i.e = add nuw nsw i64 %i.d, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.c, 24
  br i1 %min.iters.check, label %.lr.ph.preheader5, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.e, 4611686018427387900      ; 3 uses
  %i.f = shl i64 %n.vec, 3
  %i.g = getelementptr i8, ptr %0, i64 %i.f
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %2, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body
end_hunk_0
