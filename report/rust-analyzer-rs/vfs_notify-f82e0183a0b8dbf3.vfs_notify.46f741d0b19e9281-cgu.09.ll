Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/vfs_notify-f82e0183a0b8dbf3.vfs_notify.46f741d0b19e9281-cgu.09?download=true
inline.NumInlined: 222
inline.NumDeleted: 116
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvMs_Cs65Ktfge4woL_10vfs_notifyNtBV_11NotifyActor3runs2_0INtB7_5FnMutTNtCs9R0CJ7nmiec_5paths10AbsPathBufEE8call_mutBV_:bb.a
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #18, !noalias !733
  unreachable

_RNCINvCs65Ktfge4woL_10vfs_notify16log_notify_erroruE0B4_.exit.i.i.i: ; preds = %bb.aa, %bb.y, %bb.x, %bb.u, %bb.s
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6B6HQbbxj7M_6notify5error5ErrorECs65Ktfge4woL_10vfs_notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.g)
          to label %.noexc44.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !723

.noexc44.i:                                       ; preds = %_RNCINvCs65Ktfge4woL_10vfs_notify16log_notify_erroruE0B4_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !731
  br label %_RINvCs65Ktfge4woL_10vfs_notify16log_notify_erroruEB2_.exit.i.i

_RINvCs65Ktfge4woL_10vfs_notify16log_notify_erroruEB2_.exit.i.i: ; preds = %.noexc44.i, %.noexc43.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !729
  br label %_RNvMs_Cs65Ktfge4woL_10vfs_notifyNtB4_11NotifyActor5watch.exit.i

bb.ac:                                            ; preds = %bb.m
  %i.bv = invoke { ptr, i64 } @_RNvXs0_Cs9R0CJ7nmiec_5pathsNtB5_10AbsPathBufNtNtNtCshzWfHUSfYae_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.k)
          to label %bb.ad unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !723 ; 2 uses

bb.ad:                                            ; preds = %bb.ac
  %i.bw = extractvalue { ptr, i64 } %i.bv, 0
  %i.bx = extractvalue { ptr, i64 } %i.bv, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !735
  invoke void @_RINvNtCscAsMj0W7j8b_3std2fs4readRNtCs9R0CJ7nmiec_5paths7AbsPathECs65Ktfge4woL_10vfs_notify(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bw, i64 noundef %i.bx)
          to label %.noexc46.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !723

.noexc46.i:                                       ; preds = %bb.ad
  %i.by = load i64, ptr %i.b, align 8, !range !9, !noalias !735, !noundef !10 ; 2 uses
  %i.bz = icmp eq i64 %i.by, -1
  br i1 %i.bz, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.noexc46.i
  %.sroa.5.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx6.i, i64 16, i1 false), !noalias !725
  br label %bb.ai

bb.af:                                            ; preds = %.noexc46.i
  call void @llvm.experimental.noalias.scope.decl(metadata !736)
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !737)
  %.val.i.i.i.i = load ptr, ptr %i.ca, align 8, !alias.scope !738, !noalias !735, !nonnull !10, !noundef !10 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !739
  %i.cb = ptrtoint ptr %.val.i.i.i.i to i64       ; 2 uses
  %i.cc = and i64 %i.cb, 3
  switch i64 %i.cc, label %default.unreachable [
    i64 2, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtNtNtB4_2io5error5ErrorEECs65Ktfge4woL_10vfs_notify.exit.i.i
    i64 3, label %bb.ag
    i64 0, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtNtNtB4_2io5error5ErrorEECs65Ktfge4woL_10vfs_notify.exit.i.i
    i64 1, label %bb.ah
  ], !prof !15

bb.ag:                                            ; preds = %bb.af
  %i.cd = icmp ult ptr %.val.i.i.i.i, inttoptr (i64 188978561024 to ptr)
  %i.ce = and i64 %i.cb, 1095216660480
  %i.cf = icmp ne i64 %i.ce, 1095216660480
  call void @llvm.assume(i1 %i.cd)
  call void @llvm.assume(i1 %i.cf)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtNtNtB4_2io5error5ErrorEECs65Ktfge4woL_10vfs_notify.exit.i.i

bb.ah:                                            ; preds = %bb.af
  %i.cg = getelementptr i8, ptr %.val.i.i.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cg) ]
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.cg, ptr %i.ch, align 8, !alias.scope !740, !noalias !739
  store i8 3, ptr %i.a, align 8, !alias.scope !740, !noalias !739
  invoke void @_RNvXsd_NtNtCshzWfHUSfYae_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ch)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtNtNtB4_2io5error5ErrorEECs65Ktfge4woL_10vfs_notify.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !723

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtNtNtB4_2io5error5ErrorEECs65Ktfge4woL_10vfs_notify.exit.i.i: ; preds = %bb.ah, %bb.ag, %bb.af, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !739
  br label %bb.ai

bb.ai:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsbSS6DM8SDEO_5alloc3vec3VechENtNtNtB4_2io5error5ErrorEECs65Ktfge4woL_10vfs_notify.exit.i.i, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !735
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !alias.scope !725
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.by, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !723
  %.sroa.58.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.58.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i, i64 16, i1 false), !noalias !724
  br label %_RNCNvMs_Cs65Ktfge4woL_10vfs_notifyNtB6_11NotifyActor3runs2_0B6_.exit

bb.aj:                                            ; preds = %.body.i
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #18, !noalias !723
  unreachable

_RNCNvMs_Cs65Ktfge4woL_10vfs_notifyNtB6_11NotifyActor3runs2_0B6_.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9R0CJ7nmiec_5paths10AbsPathBufECs65Ktfge4woL_10vfs_notify.exit.i, %bb.h, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtCs65Ktfge4woL_10vfs_notify5EventNtB6_5Debug3fmtBy_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !guid !744 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !10, !align !14, !noundef !10 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !745)
  %i.d = load i64, ptr %i.c, align 8, !range !19, !alias.scope !745, !noundef !10
  %i.e = trunc nuw i64 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !746
  store ptr %i.f, ptr %i.a, align 8, !noalias !746
  %i.g = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @48, i64 noundef 11, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @47)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !746
  br label %_RNvXs2_Cs65Ktfge4woL_10vfs_notifyNtB5_5EventNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !746
  store ptr %i.f, ptr %i.b, align 8, !noalias !746
  %i.h = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @46, i64 noundef 7, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @45)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !746
  br label %_RNvXs2_Cs65Ktfge4woL_10vfs_notifyNtB5_5EventNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt.exit

_RNvXs2_Cs65Ktfge4woL_10vfs_notifyNtB5_5EventNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.in.i = phi i1 [ %i.g, %bb.b ], [ %i.h, %bb.c ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtCs65Ktfge4woL_10vfs_notify7MessageNtB6_5Debug3fmtBy_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !guid !750 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !10, !align !14, !noundef !10 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !751)
  %i.d = load i64, ptr %i.c, align 8, !range !9, !alias.scope !751, !noundef !10
  %i.e = icmp eq i64 %i.d, -1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !752
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.f, ptr %i.a, align 8, !noalias !752
  %i.g = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @44, i64 noundef 10, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @43)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !752
  br label %_RNvXs1_Cs65Ktfge4woL_10vfs_notifyNtB5_7MessageNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !752
  store ptr %i.c, ptr %i.b, align 8, !noalias !752
  %i.h = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @42, i64 noundef 6, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @41)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !752
  br label %_RNvXs1_Cs65Ktfge4woL_10vfs_notifyNtB5_7MessageNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt.exit

_RNvXs1_Cs65Ktfge4woL_10vfs_notifyNtB5_7MessageNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.in.i = phi i1 [ %i.g, %bb.b ], [ %i.h, %bb.c ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsL_NtCsM5evIHPibA_17crossbeam_channel3errNtB5_9RecvErrorNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !guid !753 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 9)
  ret i1 %i.a
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs_NtCsaMQbKjKCVRW_12tracing_core8callsiteNtB4_15DefaultCallsiteNtB4_8Callsite8metadata(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #2 !guid !754 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !10, !align !14, !noundef !10
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCshzWfHUSfYae_4core3ops8function5implsRNCNvMs_Cs65Ktfge4woL_10vfs_notifyNtBU_11NotifyActor3runs0_0INtB6_5FnMutTTjNtNtCs4sl5YdnrCxp_3vfs6loader5EntryEEE8call_mutBU_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(80) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !799 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  %i.b = alloca [56 x i8], align 8                ; 5 uses
  %i.c = alloca [56 x i8], align 8                ; 4 uses
  %i.d = alloca [56 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [56 x i8], align 8                ; 4 uses
  %i.i = alloca [56 x i8], align 8                ; 5 uses
  %i.j = alloca [56 x i8], align 8                ; 8 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [232 x i8], align 8               ; 21 uses
  %i.m = alloca [72 x i8], align 8                ; 6 uses
  %i.n = alloca [8 x i8], align 8                 ; 5 uses
  %i.o = alloca [24 x i8], align 8                ; 8 uses
  %i.p = alloca [72 x i8], align 8                ; 12 uses
  %i.q = alloca [48 x i8], align 8                ; 9 uses
  %i.r = alloca [1 x i8], align 1                 ; 5 uses
  %i.s = alloca [8 x i8], align 8                 ; 5 uses
  %i.t = alloca [72 x i8], align 8                ; 6 uses
  %i.u = alloca [24 x i8], align 8                ; 4 uses
  %i.v = alloca [56 x i8], align 8                ; 8 uses
  %i.w = alloca [56 x i8], align 8                ; 5 uses
  %i.x = alloca [32 x i8], align 8                ; 7 uses
  %i.y = alloca [24 x i8], align 8                ; 5 uses
  %i.z = alloca [72 x i8], align 8                ; 6 uses
  %i.aa = alloca [72 x i8], align 8               ; 6 uses
  %i.ab = alloca [72 x i8], align 8               ; 14 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8 ; 15 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !800
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ab, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.2.0..sroa_idx, i64 72, i1 false)
  %i.ac = load ptr, ptr %0, align 8, !nonnull !10, !align !14, !noundef !10 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !801)
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !801, !nonnull !10, !align !14, !noundef !10 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !800, !nonnull !10, !noundef !10 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !noalias !800, !noundef !10 ; 2 uses
  %i.ai = and i64 %i.ah, 1152921504606846968      ; 3 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ai ; 7 uses
  %.not.i.i6 = icmp eq i64 %i.ai, 0
  br i1 %.not.i.i6, label %._crit_edge, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsJ_NtB9_3cmpjNtB1L_13SliceContains14slice_contains0ECs65Ktfge4woL_10vfs_notify.exit.i.i

bb.b:                                             ; preds = %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsJ_NtB9_3cmpjNtB1L_13SliceContains14slice_contains0ECs65Ktfge4woL_10vfs_notify.exit.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i8, i64 64
  %i.al = add nsw i64 %.sroa.5.0.i.i7, -8         ; 2 uses
  %.not.i.i = icmp eq i64 %i.al, 0
  br i1 %.not.i.i, label %._crit_edge, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsJ_NtB9_3cmpjNtB1L_13SliceContains14slice_contains0ECs65Ktfge4woL_10vfs_notify.exit.i.i

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.am = shl i64 %i.ah, 3
  %.idx = and i64 %i.am, 56                       ; 7 uses
  %.not.not.not.i.not.not.i.i9 = icmp samesign eq i64 %.idx, 0
  br i1 %.not.not.not.i.not.not.i.i9, label %_RNvXsJ_NtNtCshzWfHUSfYae_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit.i, label %.lr.ph

2:                                                ; preds = %.lr.ph
  %.not.not.not.i.not.not.i.i = icmp samesign eq i64 %.idx, 8
  br i1 %.not.not.not.i.not.not.i.i, label %_RNvXsJ_NtNtCshzWfHUSfYae_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit.i, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %2
  %3 = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.val2.i.i.i.1 = load i64, ptr %3, align 8, !alias.scope !802, !noalias !803, !noundef !10
  %4 = icmp eq i64 %.val2.i.i.i.1, %.sroa.0.0.copyload
  br i1 %4, label %.loopexit.i, label %5

5:                                                ; preds = %.lr.ph.1
  %.not.not.not.i.not.not.i.i.1 = icmp samesign eq i64 %.idx, 16
  br i1 %.not.not.not.i.not.not.i.i.1, label %_RNvXsJ_NtNtCshzWfHUSfYae_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit.i, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %5
  %6 = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %.val2.i.i.i.2 = load i64, ptr %6, align 8, !alias.scope !802, !noalias !803, !noundef !10
  %7 = icmp eq i64 %.val2.i.i.i.2, %.sroa.0.0.copyload
  br i1 %7, label %.loopexit.i, label %8

8:                                                ; preds = %.lr.ph.2
  %.not.not.not.i.not.not.i.i.2 = icmp samesign eq i64 %.idx, 24
  br i1 %.not.not.not.i.not.not.i.i.2, label %_RNvXsJ_NtNtCshzWfHUSfYae_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit.i, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %8
  %9 = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %.val2.i.i.i.3 = load i64, ptr %9, align 8, !alias.scope !802, !noalias !803, !noundef !10
  %10 = icmp eq i64 %.val2.i.i.i.3, %.sroa.0.0.copyload
  br i1 %10, label %.loopexit.i, label %11

11:                                               ; preds = %.lr.ph.3
  %.not.not.not.i.not.not.i.i.3 = icmp samesign eq i64 %.idx, 32
  br i1 %.not.not.not.i.not.not.i.i.3, label %_RNvXsJ_NtNtCshzWfHUSfYae_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit.i, label %.lr.ph.4

.lr.ph.4:                                         ; preds = %11
  %12 = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %.val2.i.i.i.4 = load i64, ptr %12, align 8, !alias.scope !802, !noalias !803, !noundef !10
  %13 = icmp eq i64 %.val2.i.i.i.4, %.sroa.0.0.copyload
  br i1 %13, label %.loopexit.i, label %14

14:                                               ; preds = %.lr.ph.4
  %.not.not.not.i.not.not.i.i.4 = icmp samesign eq i64 %.idx, 40
  br i1 %.not.not.not.i.not.not.i.i.4, label %_RNvXsJ_NtNtCshzWfHUSfYae_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit.i, label %bb.c

bb.c:                                             ; preds = %14
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %.val2.i.i.i.5 = load i64, ptr %i.an, align 8, !alias.scope !802, !noalias !803, !noundef !10
  %.not.not.not.i.not.not.i.i.a = icmp eq i64 %.val2.i.i.i.5, %.sroa.0.0.copyload
  br i1 %.not.not.not.i.not.not.i.i.a, label %.loopexit.i, label %15

15:                                               ; preds = %bb.c
  %.not.not.not.i.not.not.i.i.5 = icmp samesign eq i64 %.idx, 48
  br i1 %.not.not.not.i.not.not.i.i.5, label %_RNvXsJ_NtNtCshzWfHUSfYae_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit.i, label %.lr.ph.a

.lr.ph.a:                                         ; preds = %15
  %16 = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  %.val2.i.i.i.a = load i64, ptr %16, align 8, !alias.scope !802, !noalias !803, !noundef !10
  %i.ao = icmp eq i64 %.val2.i.i.i.a, %.sroa.0.0.copyload
  br i1 %i.ao, label %.loopexit.i, label %_RNvXsJ_NtNtCshzWfHUSfYae_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit.i

.lr.ph:                                           ; preds = %._crit_edge
  %.val2.i.i.i = load i64, ptr %i.aj, align 8, !alias.scope !802, !noalias !803, !noundef !10
  %17 = icmp eq i64 %.val2.i.i.i, %.sroa.0.0.copyload
  br i1 %17, label %.loopexit.i, label %2

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsJ_NtB9_3cmpjNtB1L_13SliceContains14slice_contains0ECs65Ktfge4woL_10vfs_notify.exit.i.i: ; preds = %bb.a, %bb.b
  %.sroa.0.05.i.i8 = phi ptr [ %i.ak, %bb.b ], [ %i.af, %bb.a ] ; 9 uses
  %.sroa.5.0.i.i7 = phi i64 [ %i.al, %bb.b ], [ %i.ai, %bb.a ]
  %.val11.i.i.i = load i64, ptr %.sroa.0.05.i.i8, align 8, !alias.scope !802, !noalias !804, !noundef !10
  %i.ap = icmp eq i64 %.val11.i.i.i, %.sroa.0.0.copyload
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i8, i64 8
  %.val11.i.1.i.i = load i64, ptr %i.aq, align 8, !alias.scope !802, !noalias !804, !noundef !10
  %i.ar = icmp eq i64 %.val11.i.1.i.i, %.sroa.0.0.copyload
  %i.as = or i1 %i.ap, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i8, i64 16
  %.val11.i.2.i.i = load i64, ptr %i.at, align 8, !alias.scope !802, !noalias !804, !noundef !10
  %i.au = icmp eq i64 %.val11.i.2.i.i, %.sroa.0.0.copyload
  %i.av = or i1 %i.as, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i8, i64 24
  %.val11.i.3.i.i = load i64, ptr %i.aw, align 8, !alias.scope !802, !noalias !804, !noundef !10
  %i.ax = icmp eq i64 %.val11.i.3.i.i, %.sroa.0.0.copyload
  %i.ay = or i1 %i.av, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i8, i64 32
  %.val11.i.4.i.i = load i64, ptr %i.az, align 8, !alias.scope !802, !noalias !804, !noundef !10
  %i.ba = icmp eq i64 %.val11.i.4.i.i, %.sroa.0.0.copyload
  %i.bb = or i1 %i.ay, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i8, i64 40
  %.val11.i.5.i.i = load i64, ptr %i.bc, align 8, !alias.scope !802, !noalias !804, !noundef !10
  %i.bd = icmp eq i64 %.val11.i.5.i.i, %.sroa.0.0.copyload
  %i.be = or i1 %i.bb, %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i8, i64 48
  %.val11.i.6.i.i = load i64, ptr %i.bf, align 8, !alias.scope !802, !noalias !804, !noundef !10
  %i.bg = icmp eq i64 %.val11.i.6.i.i, %.sroa.0.0.copyload
  %i.bh = or i1 %i.be, %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i8, i64 56
  %.val11.i.7.i.i = load i64, ptr %i.bi, align 8, !alias.scope !802, !noalias !804, !noundef !10
  %i.bj = icmp eq i64 %.val11.i.7.i.i, %.sroa.0.0.copyload
  %i.bk = or i1 %i.bh, %i.bj
  br i1 %i.bk, label %.loopexit.i, label %bb.b

.body.thread44.i:                                 ; preds = %bb.ae, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs9R0CJ7nmiec_5paths10AbsPathBufEECs65Ktfge4woL_10vfs_notify.exit.i.i.i.i, %bb.y, %bb.w, %bb.q
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread39.i

_RNvXsJ_NtNtCshzWfHUSfYae_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit.i: ; preds = %2, %5, %8, %11, %14, %15, %.lr.ph.a, %._crit_edge, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsM5evIHPibA_17crossbeam_channel3err9SendErrorNtNtCs4sl5YdnrCxp_3vfs6loader5EntryEEECs65Ktfge4woL_10vfs_notify.exit.i
  %.sroa.0.0.i48.i = phi i8 [ 1, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsM5evIHPibA_17crossbeam_channel3err9SendErrorNtNtCs4sl5YdnrCxp_3vfs6loader5EntryEEECs65Ktfge4woL_10vfs_notify.exit.i ], [ 0, %._crit_edge ], [ 0, %.lr.ph.a ], [ 0, %15 ], [ 0, %14 ], [ 0, %11 ], [ 0, %8 ], [ 0, %5 ], [ 0, %2 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !800
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !alias.scope !801, !nonnull !10, !align !14, !noundef !10
  %.sroa.025.0.copyload.i = load i64, ptr %i.ab, align 8, !noalias !800 ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !800 ; 2 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !800 ; 5 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %.sroa.7.0.copyload.i = load i64, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !800 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !800
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !alias.scope !801, !nonnull !10, !align !14, !noundef !10 ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.bq = load ptr, ptr %i.bp, align 8, !alias.scope !801, !nonnull !10, !align !14, !noundef !10 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.bs = load ptr, ptr %i.br, align 8, !alias.scope !801, !nonnull !10, !align !14, !noundef !10 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %i.bu = load ptr, ptr %i.bt, align 8, !alias.scope !801, !nonnull !10, !align !25, !noundef !10 ; 3 uses
  store ptr %i.bo, ptr %i.x, align 8, !noalias !800
  %i.bv = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.bq, ptr %i.bv, align 8, !noalias !800
  %i.bw = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store ptr %i.bs, ptr %i.bw, align 8, !noalias !800
  %i.bx = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store ptr %i.bu, ptr %i.bx, align 8, !noalias !800
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !800
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !800
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !800
  store ptr %i.bm, ptr %i.s, align 8, !noalias !805
  store i8 %.sroa.0.0.i48.i, ptr %i.r, align 1, !noalias !805
  %.not.i4.i = icmp eq i64 %.sroa.025.0.copyload.i, -1
  br i1 %.not.i4.i, label %.noexc.i, label %bb.d

bb.d:                                             ; preds = %_RNvXsJ_NtNtCshzWfHUSfYae_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit.i
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !805
  store i64 %.sroa.025.0.copyload.i, ptr %i.p, align 8, !noalias !806
  %.sroa.5.0..sroa_idx27.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %.sroa.5.0.copyload.i, ptr %.sroa.5.0..sroa_idx27.i, align 8, !noalias !806
  %.sroa.6.0..sroa_idx29.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %.sroa.6.0.copyload.i, ptr %.sroa.6.0..sroa_idx29.i, align 8, !noalias !806
  %.sroa.7.0..sroa_idx31.i = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 2 uses
  store i64 %.sroa.7.0.copyload.i, ptr %.sroa.7.0..sroa_idx31.i, align 8, !noalias !806
  %.sroa.8.0..sroa_idx33.i = getelementptr inbounds nuw i8, ptr %i.p, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8.0..sroa_idx33.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8.0..sroa_idx.i, i64 40, i1 false), !noalias !800
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !805
  store i64 0, ptr %i.o, align 8, !noalias !805
  %i.by = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.by, align 8, !noalias !805
  %i.bz = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 0, ptr %i.bz, align 8, !noalias !805
  %i.ca = load ptr, ptr %.sroa.8.0..sroa_idx33.i, align 8, !noalias !805, !nonnull !10, !noundef !10 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.cc = load i64, ptr %i.cb, align 8, !noalias !805, !noundef !10 ; 2 uses
  %.idx.i.i = mul nuw nsw i64 %i.cc, 24
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.idx.i.i
  %i.ce = icmp eq i64 %i.cc, 0
  br i1 %i.ce, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d
  %i.cf = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.cg = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.ch = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.cj = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.ck = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.cl = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %.sroa.531.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.531.sroa.4.0..sroa.531.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.sroa.531.sroa.5.0..sroa.531.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %.sroa.632.sroa.4.0..sroa.632.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %.sroa.632.sroa.5.0..sroa.632.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %.sroa.733.sroa.4.0..sroa.733.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  %.sroa.733.sroa.5.0..sroa.733.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  %.sroa.834.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  %.sroa.935.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 112
  %.sroa.1036.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 160
  %.sroa.1238.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 176
  %.sroa.1339.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 184
  %.sroa.1440.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 192
  %.sroa.15.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 200
  %.sroa.15.sroa.4.0..sroa.15.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 208
  %.sroa.15.sroa.5.0..sroa.15.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 216
  %.sroa.15.sroa.6.0..sroa.15.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 224
  br label %bb.e

.noexc.i:                                         ; preds = %_RNvXsJ_NtNtCshzWfHUSfYae_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !805
  %i.cm = icmp ult i64 %.sroa.7.0.copyload.i, 384307168202282326
  call void @llvm.assume(i1 %i.cm)
  %i.cn = getelementptr inbounds nuw [24 x i8], ptr %.sroa.6.0.copyload.i, i64 %.sroa.7.0.copyload.i
  store ptr %.sroa.6.0.copyload.i, ptr %i.q, align 8, !noalias !805
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %.sroa.6.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !805
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %.sroa.5.0.copyload.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !805
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr %i.cn, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !805
  %i.co = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store ptr %i.r, ptr %i.co, align 8, !noalias !805
  %i.cp = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  store ptr %i.s, ptr %i.cp, align 8, !noalias !805
  call void @_RNvXs_NtNtCsbSS6DM8SDEO_5alloc3vec16in_place_collectINtB6_3VecTNtCs9R0CJ7nmiec_5paths10AbsPathBufINtNtCshzWfHUSfYae_4core6option6OptionIBP_hEEEEINtNtB6_14spec_from_iter12SpecFromIterBY_INtNtNtNtB1C_4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterBZ_ENCINvMs_Cs65Ktfge4woL_10vfs_notifyNtB49_11NotifyActor10load_entryNCNCNvB46_3runs0_00NCB56_s_0E0EE9from_iterB49_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.y, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.q), !noalias !800
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !805
  br label %.noexc15.i

bb.e:                                             ; preds = %bb.n, %.lr.ph.i.i
  %.sroa.01.057.i.i = phi ptr [ %i.ca, %.lr.ph.i.i ], [ %i.cq, %bb.n ] ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.01.057.i.i, i64 24 ; 2 uses
  store ptr %.sroa.01.057.i.i, ptr %i.n, align 8, !noalias !805, !captures !807
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !805
  invoke void @_RNvXsb_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCs65Ktfge4woL_10vfs_notify(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.01.057.i.i)
          to label %bb.g unwind label %bb.f, !noalias !808

._crit_edge.i.i:                                  ; preds = %bb.n, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false), !noalias !809
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !805
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4sl5YdnrCxp_3vfs6loader11DirectoriesECs65Ktfge4woL_10vfs_notify(ptr noalias nofree noundef align 8 dereferenceable(72) %i.p), !noalias !800
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !805
  br label %.noexc15.i

bb.f:                                             ; preds = %bb.m, %bb.l, %bb.g, %bb.e
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.i, %bb.f
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.cr, %bb.f ], [ %i.cw, %bb.i ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtCs9R0CJ7nmiec_5paths10AbsPathBufINtNtB4_6option6OptionIBC_hEEEEECs65Ktfge4woL_10vfs_notify(ptr noalias nofree noundef align 8 dereferenceable(24) %i.o) #20
          to label %bb.p unwind label %bb.o, !noalias !808

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !810
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cf, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !805
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !805
  %i.cs = load i64, ptr %i.bq, align 8, !noalias !811, !noundef !10
  %i.ct = load atomic i64, ptr %i.bs monotonic, align 8, !noalias !811
  %i.cu = load i32, ptr %i.bu, align 4, !noalias !811, !noundef !10
  store i64 %i.cs, ptr %i.cg, align 8, !noalias !810
  store i64 1, ptr %i.j, align 8, !noalias !810
  store i64 %i.ct, ptr %i.ch, align 8, !noalias !810
  store i32 %i.cu, ptr %i.ci, align 8, !noalias !810
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !812
  invoke void @_RNvMs2_NtCsM5evIHPibA_17crossbeam_channel7channelINtB5_6SenderNtNtCs4sl5YdnrCxp_3vfs6loader7MessageE4sendCs65Ktfge4woL_10vfs_notify(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.bo, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.j)
          to label %.noexc.i.i unwind label %bb.f, !noalias !808

.noexc.i.i:                                       ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !813)
  %i.cv = load i64, ptr %i.i, align 8, !range !22, !alias.scope !813, !noalias !812, !noundef !10
  %.not.i.i.i.i.i = icmp eq i64 %i.cv, -1
  br i1 %.not.i.i.i.i.i, label %bb.l, label %bb.h, !prof !23

bb.h:                                             ; preds = %.noexc.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !814
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull readonly align 8 dereferenceable(56) %i.i, i64 56, i1 false), !noalias !815
  invoke void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 43, ptr noundef nonnull %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @10, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #23
          to label %bb.j unwind label %bb.i, !noalias !816

bb.i:                                             ; preds = %bb.h
  %i.cw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsM5evIHPibA_17crossbeam_channel3err9SendErrorNtNtCs4sl5YdnrCxp_3vfs6loader7MessageEECs65Ktfge4woL_10vfs_notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.h) #20
          to label %.body.i.i unwind label %bb.k, !noalias !816

bb.j:                                             ; preds = %bb.h
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.cx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #18, !noalias !816
  unreachable

bb.l:                                             ; preds = %.noexc.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !812
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !810
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !805
  %i.cy = load ptr, ptr %i.n, align 8, !noalias !805, !nonnull !10, !align !14, !noundef !10
  invoke void @_RINvMs_Cs8BgAEfz2JJK_7walkdirNtB5_7WalkDir3newRNtCs9R0CJ7nmiec_5paths10AbsPathBufECs65Ktfge4woL_10vfs_notify(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cy)
          to label %bb.m unwind label %bb.f, !noalias !808

bb.m:                                             ; preds = %bb.l
  store i8 1, ptr %i.ck, align 8, !noalias !805
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !805
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.935.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.cj, i64 48, i1 false), !noalias !805
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.834.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !noalias !805
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !805
  store i64 0, ptr %i.l, align 8, !noalias !805
  store i64 0, ptr %.sroa.531.0..sroa_idx.i.i, align 8, !noalias !805
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.531.sroa.4.0..sroa.531.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !805
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.531.sroa.5.0..sroa.531.0..sroa_idx.sroa_idx.i.i, i8 0, i64 16, i1 false), !noalias !805
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.632.sroa.4.0..sroa.632.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !805
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.632.sroa.5.0..sroa.632.0..sroa_idx.sroa_idx.i.i, i8 0, i64 16, i1 false), !noalias !805
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.733.sroa.4.0..sroa.733.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !805
  store i64 0, ptr %.sroa.733.sroa.5.0..sroa.733.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !805
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.1036.0..sroa_idx.i.i, i8 0, i64 16, i1 false), !noalias !805
  store ptr %.sroa.7.0..sroa_idx31.i, ptr %.sroa.1238.0..sroa_idx.i.i, align 8, !noalias !805
  store ptr %i.cl, ptr %.sroa.1339.0..sroa_idx.i.i, align 8, !noalias !805
  store ptr %i.n, ptr %.sroa.1440.0..sroa_idx.i.i, align 8, !noalias !805
  store ptr %i.x, ptr %.sroa.15.0..sroa_idx.i.i, align 8, !noalias !805
  store ptr %i.r, ptr %.sroa.15.sroa.4.0..sroa.15.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !805
  store ptr %i.s, ptr %.sroa.15.sroa.5.0..sroa.15.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !805
  store ptr %i.p, ptr %.sroa.15.sroa.6.0..sroa.15.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !805
  invoke void @_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec11spec_extendINtB4_3VecTNtCs9R0CJ7nmiec_5paths10AbsPathBufINtNtCshzWfHUSfYae_4core6option6OptionIBI_hEEEEINtB2_10SpecExtendBR_INtNtNtNtB1v_4iter8adapters3map3MapINtNtB2B_10filter_map9FilterMapIB36_INtCs8BgAEfz2JJK_7walkdir11FilterEntryNtB3I_8IntoIterNCINvMs_Cs65Ktfge4woL_10vfs_notifyNtB4E_11NotifyActor10load_entryNCNCNvB4B_3runs0_00NCB5B_s_0Es_0ENCB4y_s0_0ENCB4y_s1_0ENCB4y_s2_0EE11spec_extendB4E_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(232) %i.l)
          to label %bb.n unwind label %bb.f, !noalias !808

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !805
  %i.cz = icmp eq ptr %i.cq, %i.cd
  br i1 %i.cz, label %._crit_edge.i.i, label %bb.e

bb.o:                                             ; preds = %bb.p, %.body.i.i
  %i.da = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #18, !noalias !808
  unreachable

bb.p:                                             ; preds = %.body.i.i
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4sl5YdnrCxp_3vfs6loader11DirectoriesECs65Ktfge4woL_10vfs_notify(ptr noalias nofree noundef align 8 dereferenceable(72) %i.p) #20
          to label %.body.thread.i unwind label %bb.o, !noalias !808

.loopexit.i:                                      ; preds = %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsJ_NtB9_3cmpjNtB1L_13SliceContains14slice_contains0ECs65Ktfge4woL_10vfs_notify.exit.i.i, %.lr.ph, %.lr.ph.1, %.lr.ph.2, %.lr.ph.3, %.lr.ph.4, %bb.c, %.lr.ph.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !800
  %i.db = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !alias.scope !801, !nonnull !10, !align !14, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !800
  %i.dd = load i64, ptr %i.ab, align 8, !range !9, !noalias !800, !noundef !10
  %.not.i = icmp eq i64 %i.dd, -1
  br i1 %.not.i, label %bb.w, label %bb.q

bb.q:                                             ; preds = %.loopexit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !817
  invoke void @_RNvXsb_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCs65Ktfge4woL_10vfs_notify(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ab)
          to label %.noexc6.i unwind label %.body.thread44.i, !noalias !800

.noexc6.i:                                        ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !817
  %i.de = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  invoke void @_RNvXsb_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtCs9R0CJ7nmiec_5paths10AbsPathBufENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCs65Ktfge4woL_10vfs_notify(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.de)
          to label %bb.t unwind label %bb.s, !noalias !818

bb.r:                                             ; preds = %bb.u, %bb.s
  %.pn.i.i = phi { ptr, i32 } [ %i.dh, %bb.u ], [ %i.df, %bb.s ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtBG_6string6StringEECs65Ktfge4woL_10vfs_notify(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #20
          to label %.body.thread39.i unwind label %bb.v, !noalias !818

bb.s:                                             ; preds = %.noexc6.i
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.t:                                             ; preds = %.noexc6.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !817
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  invoke void @_RNvXsb_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtCs9R0CJ7nmiec_5paths10AbsPathBufENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCs65Ktfge4woL_10vfs_notify(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dg)
          to label %bb.z unwind label %bb.u, !noalias !818

bb.u:                                             ; preds = %bb.t
  %i.dh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs9R0CJ7nmiec_5paths10AbsPathBufEECs65Ktfge4woL_10vfs_notify(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #20
          to label %bb.r unwind label %bb.v, !noalias !818

bb.v:                                             ; preds = %bb.u, %bb.r
  %i.di = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #18, !noalias !818
  unreachable

bb.w:                                             ; preds = %.loopexit.i
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !800
  invoke void @_RNvXsb_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtCs9R0CJ7nmiec_5paths10AbsPathBufENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCs65Ktfge4woL_10vfs_notify(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.u, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dj)
          to label %bb.x unwind label %.body.thread44.i, !noalias !800

bb.x:                                             ; preds = %bb.w
  %i.dk = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dk, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false), !noalias !800
  store i64 -1, ptr %i.z, align 8, !noalias !800
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !800
  br label %bb.y

bb.y:                                             ; preds = %bb.z, %bb.x
  invoke void @_RNvMs2_NtCsM5evIHPibA_17crossbeam_channel7channelINtB5_6SenderNtNtCs4sl5YdnrCxp_3vfs6loader5EntryE4sendCs65Ktfge4woL_10vfs_notify(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.aa, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.dc, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.z)
          to label %bb.aa unwind label %.body.thread44.i, !noalias !800

bb.z:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !819
  %i.dl = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dl, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !819
  %i.dm = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dm, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !819
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !817
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !817
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !817
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.z, ptr noundef nonnull align 8 dereferenceable(72) %i.t, i64 72, i1 false), !noalias !800
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.y

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !800
  %i.dn = load i64, ptr %i.aa, align 8, !range !16, !alias.scope !820, !noalias !800, !noundef !10
  switch i64 %i.dn, label %bb.ae [
    i64 -2, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsM5evIHPibA_17crossbeam_channel3err9SendErrorNtNtCs4sl5YdnrCxp_3vfs6loader5EntryEEECs65Ktfge4woL_10vfs_notify.exit.i
    i64 -1, label %bb.ab
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.do = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtCs9R0CJ7nmiec_5paths10AbsPathBufENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs65Ktfge4woL_10vfs_notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.do)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs9R0CJ7nmiec_5paths10AbsPathBufEECs65Ktfge4woL_10vfs_notify.exit.i.i.i.i unwind label %bb.ac, !noalias !800

bb.ac:                                            ; preds = %bb.ab
  %i.dp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCs9R0CJ7nmiec_5paths10AbsPathBufENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs65Ktfge4woL_10vfs_notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.do)
          to label %.body.thread39.i unwind label %bb.ad, !noalias !800

bb.ad:                                            ; preds = %bb.ac
  %i.dq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #18, !noalias !800
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs9R0CJ7nmiec_5paths10AbsPathBufEECs65Ktfge4woL_10vfs_notify.exit.i.i.i.i: ; preds = %bb.ab
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCs9R0CJ7nmiec_5paths10AbsPathBufENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs65Ktfge4woL_10vfs_notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.do)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsM5evIHPibA_17crossbeam_channel3err9SendErrorNtNtCs4sl5YdnrCxp_3vfs6loader5EntryEEECs65Ktfge4woL_10vfs_notify.exit.i unwind label %.body.thread44.i, !noalias !800

bb.ae:                                            ; preds = %bb.aa
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4sl5YdnrCxp_3vfs6loader11DirectoriesECs65Ktfge4woL_10vfs_notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.aa)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsM5evIHPibA_17crossbeam_channel3err9SendErrorNtNtCs4sl5YdnrCxp_3vfs6loader5EntryEEECs65Ktfge4woL_10vfs_notify.exit.i unwind label %.body.thread44.i, !noalias !800

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsM5evIHPibA_17crossbeam_channel3err9SendErrorNtNtCs4sl5YdnrCxp_3vfs6loader5EntryEEECs65Ktfge4woL_10vfs_notify.exit.i: ; preds = %bb.ae, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs9R0CJ7nmiec_5paths10AbsPathBufEECs65Ktfge4woL_10vfs_notify.exit.i.i.i.i, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !800
  br label %_RNvXsJ_NtNtCshzWfHUSfYae_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit.i

.noexc15.i:                                       ; preds = %._crit_edge.i.i, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !800
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !800
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !800
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !800
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !800
  %i.dr = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dr, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false), !noalias !800
  store i64 3, ptr %i.w, align 8, !noalias !800
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !821
  call void @_RNvMs2_NtCsM5evIHPibA_17crossbeam_channel7channelINtB5_6SenderNtNtCs4sl5YdnrCxp_3vfs6loader7MessageE4sendCs65Ktfge4woL_10vfs_notify(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.bo, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.w), !noalias !800
  call void @llvm.experimental.noalias.scope.decl(metadata !822)
  %i.ds = load i64, ptr %i.d, align 8, !range !22, !alias.scope !822, !noalias !821, !noundef !10
  %.not.i.i.i = icmp eq i64 %i.ds, -1
  br i1 %.not.i.i.i, label %.noexc20.i, label %bb.af, !prof !23

bb.af:                                            ; preds = %.noexc15.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !823
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(56) %i.d, i64 56, i1 false), !noalias !824
  invoke void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @10, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #23
          to label %bb.ah unwind label %bb.ag, !noalias !825

bb.ag:                                            ; preds = %bb.af
  %i.dt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsM5evIHPibA_17crossbeam_channel3err9SendErrorNtNtCs4sl5YdnrCxp_3vfs6loader7MessageEECs65Ktfge4woL_10vfs_notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c) #20
          to label %.body.thread.i unwind label %bb.ai, !noalias !825

bb.ah:                                            ; preds = %bb.af
  unreachable

bb.ai:                                            ; preds = %bb.ag
  %i.du = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #18, !noalias !825
  unreachable

.noexc20.i:                                       ; preds = %.noexc15.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !821
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !800
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !800
  %i.dv = load i64, ptr %i.bq, align 8, !noalias !800, !noundef !10
  %i.dw = atomicrmw add ptr %i.bs, i64 1 acq_rel, align 8, !noalias !800
  %i.dx = add i64 %i.dw, 1
  %i.dy = load i32, ptr %i.bu, align 4, !noalias !800, !noundef !10
  %i.dz = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  store i64 %i.dv, ptr %i.dz, align 8, !noalias !800
  store i64 1, ptr %i.v, align 8, !noalias !800
  %i.ea = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i64 %i.dx, ptr %i.ea, align 8, !noalias !800
  %i.eb = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i64 -1, ptr %i.eb, align 8, !noalias !800
  %i.ec = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  store i32 %i.dy, ptr %i.ec, align 8, !noalias !800
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !826
  call void @_RNvMs2_NtCsM5evIHPibA_17crossbeam_channel7channelINtB5_6SenderNtNtCs4sl5YdnrCxp_3vfs6loader7MessageE4sendCs65Ktfge4woL_10vfs_notify(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.bo, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.v), !noalias !800
  call void @llvm.experimental.noalias.scope.decl(metadata !827)
  %i.ed = load i64, ptr %i.b, align 8, !range !22, !alias.scope !827, !noalias !826, !noundef !10
  %.not.i.i19.i = icmp eq i64 %i.ed, -1
  br i1 %.not.i.i19.i, label %_RNCNvMs_Cs65Ktfge4woL_10vfs_notifyNtB6_11NotifyActor3runs0_0B6_.exit, label %bb.aj, !prof !23

bb.aj:                                            ; preds = %.noexc20.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !828
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(56) %i.b, i64 56, i1 false), !noalias !829
  invoke void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @10, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #23
          to label %bb.al unwind label %bb.ak, !noalias !830

bb.ak:                                            ; preds = %bb.aj
  %i.ee = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsM5evIHPibA_17crossbeam_channel3err9SendErrorNtNtCs4sl5YdnrCxp_3vfs6loader7MessageEECs65Ktfge4woL_10vfs_notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.a) #20
          to label %.body.thread.i unwind label %bb.am, !noalias !830

bb.al:                                            ; preds = %bb.aj
  unreachable

bb.am:                                            ; preds = %bb.ak
  %i.ef = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #18, !noalias !830
  unreachable

.body.thread.i:                                   ; preds = %.body.thread39.i, %bb.ak, %bb.ag, %bb.p
  %eh.lpad-body36.i = phi { ptr, i32 } [ %i.ee, %bb.ak ], [ %eh.lpad-body42.i, %.body.thread39.i ], [ %i.dt, %bb.ag ], [ %eh.lpad-body.i.i, %bb.p ]
  resume { ptr, i32 } %eh.lpad-body36.i
end_hunk_0
