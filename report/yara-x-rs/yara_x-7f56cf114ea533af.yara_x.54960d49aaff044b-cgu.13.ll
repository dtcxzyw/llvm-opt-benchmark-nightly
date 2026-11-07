Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x-7f56cf114ea533af.yara_x.54960d49aaff044b-cgu.13?download=true
inline.NumInlined: 4254
inline.NumDeleted: 1726
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_RINvMsC_NtCs7gfv9tzbXmh_6yara_x8compilerNtB6_8Warnings3addNCNvNtNtB6_2ir6ast2ir20for_of_expr_from_asts_0EB8_:bb.a
.critedge:                                        ; preds = %bb.b, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report5LabelEBH_.exit37
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler8warnings7WarningEBH_(i64 %i.ai, ptr %i.aj)
  br label %bb.v

bb.v:                                             ; preds = %.critedge, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs7gfv9tzbXmh_6yara_x8compiler8warnings7WarningE8push_mutBL_.exit, %bb.a
  ret void

.thread:                                          ; preds = %.thread58.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.p, %bb.l, %bb.h
  %.pn51 = phi { ptr, i32 } [ %i.cn, %bb.l ], [ %i.cp, %bb.p ], [ %i.ck, %bb.h ], [ %lpad.loopexit.split-lp109, %.thread58.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler8warnings7WarningEBH_(i64 %i.ai, ptr %i.aj) #43
          to label %bb.w unwind label %bb.r

bb.w:                                             ; preds = %bb.t, %.thread
  %.pn50 = phi { ptr, i32 } [ %.pn51, %.thread ], [ %i.cw, %bb.t ]
  resume { ptr, i32 } %.pn50
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: write, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RINvMsr_Cs7bHg20ONUN6_9roxmltreeNtB6_4Node12has_tag_nameReECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !10, !align !17, !noundef !10 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = load i16, ptr %i.c, align 8, !range !2620, !noundef !10 ; 2 uses
  %i.e = icmp ne i16 %i.d, 3
  tail call void @llvm.assume(i1 %i.e)
  %i.f = icmp samesign ult i16 %i.d, 2
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.h = load i64, ptr %i.g, align 8, !noundef !10
  %i.i = icmp eq i64 %i.h, %2
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !10, !noundef !10
  %bcmp = tail call i32 @bcmp(ptr nonnull %i.k, ptr nonnull %1, i64 %2)
  %i.l = icmp eq i32 %bcmp, 0
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.sroa.0.0.shrunk = phi i1 [ false, %bb.b ], [ %i.l, %bb.c ], [ false, %bb.a ]
  ret i1 %.sroa.0.0.shrunk
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs71WB3uNJSA6_3log13___private_api3loguNtB2_12GlobalLoggerECs7gfv9tzbXmh_6yara_x(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef range(i64 1, 6) %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [96 x i8], align 8                ; 16 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2623)
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !2623, !nonnull !10, !align !17, !noundef !10 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !2623, !noundef !10
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !2623, !nonnull !10, !noundef !10
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !2623, !noundef !10
  %i.k = load ptr, ptr %3, align 8, !alias.scope !2623, !nonnull !10, !noundef !10
  %i.l = load ptr, ptr %i.d, align 8, !noalias !2623, !nonnull !10, !noundef !10
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.n = load i64, ptr %i.m, align 8, !noalias !2623, !noundef !10
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.p = load i32, ptr %i.o, align 8, !noalias !2623, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2623
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 %2, ptr %i.q, align 8, !noalias !2623
  %.sroa.422.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr %i.k, ptr %.sroa.422.0..sroa_idx.i, align 8, !noalias !2623
  %.sroa.523.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 %i.j, ptr %.sroa.523.0..sroa_idx.i, align 8, !noalias !2623
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr %0, ptr %i.r, align 8, !noalias !2623
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store ptr %1, ptr %i.s, align 8, !noalias !2623
  store i64 0, ptr %i.b, align 8, !noalias !2623
  %.sroa.428.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.h, ptr %.sroa.428.0..sroa_idx.i, align 8, !noalias !2623
  %.sroa.529.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.f, ptr %.sroa.529.0..sroa_idx.i, align 8, !noalias !2623
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.t, align 8, !noalias !2623
  %.sroa.434.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.l, ptr %.sroa.434.0..sroa_idx.i, align 8, !noalias !2623
  %.sroa.535.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %i.n, ptr %.sroa.535.0..sroa_idx.i, align 8, !noalias !2623
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i32 1, ptr %i.u, align 8, !noalias !2623
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  store i32 %i.p, ptr %i.v, align 4, !noalias !2623
  call void @_RNvXs0_NtCs71WB3uNJSA6_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log3log(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.b), !noalias !2623
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2623
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsG258MDvU3F_3std2fs12canonicalizeRNtNtB4_4path4PathECs7gfv9tzbXmh_6yara_x(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvNtNtCsG258MDvU3F_3std3sys2fs12canonicalize(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsG258MDvU3F_3std2fs4readRNtNtB4_4path7PathBufECs7gfv9tzbXmh_6yara_x(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !nonnull !10, !noundef !10
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !noundef !10
  tail call void @_RNvNvNtCsG258MDvU3F_3std2fs4read5inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val1.i)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RINvNtCskKLDkoKarTP_4core3ptr4hashNtNtNtCs7gfv9tzbXmh_6yara_x5types3map3MapNtCsaO0k6qjB80f_10rustc_hash8FxHasherEBC_(ptr noundef %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %1) unnamed_addr #4 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = load i64, ptr %1, align 8, !alias.scope !2626, !noundef !10
  %i.c = add i64 %i.b, %i.a
  %i.d = mul i64 %i.c, -1065810590584100411
  store i64 %i.d, ptr %1, align 8, !alias.scope !2626
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RINvNtCskKLDkoKarTP_4core3ptr4hashNtNtNtCs7gfv9tzbXmh_6yara_x5types4func4FuncNtCsaO0k6qjB80f_10rustc_hash8FxHasherEBC_(ptr noundef %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %1) unnamed_addr #4 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = load i64, ptr %1, align 8, !alias.scope !2629, !noundef !10
  %i.c = add i64 %i.b, %i.a
  %i.d = mul i64 %i.c, -1065810590584100411
  store i64 %i.d, ptr %1, align 8, !alias.scope !2629
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RINvNtCskKLDkoKarTP_4core3ptr4hashNtNtNtCs7gfv9tzbXmh_6yara_x5types5array5ArrayNtCsaO0k6qjB80f_10rustc_hash8FxHasherEBC_(ptr noundef %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %1) unnamed_addr #4 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = load i64, ptr %1, align 8, !alias.scope !2632, !noundef !10
  %i.c = add i64 %i.b, %i.a
  %i.d = mul i64 %i.c, -1065810590584100411
  store i64 %i.d, ptr %1, align 8, !alias.scope !2632
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RINvNtCskKLDkoKarTP_4core3ptr4hashNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure6StructNtCsaO0k6qjB80f_10rustc_hash8FxHasherEBC_(ptr noundef %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %1) unnamed_addr #4 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = load i64, ptr %1, align 8, !alias.scope !2635, !noundef !10
  %i.c = add i64 %i.b, %i.a
  %i.d = mul i64 %i.c, -1065810590584100411
  store i64 %i.d, ptr %1, align 8, !alias.scope !2635
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtCsiOkGTpNE17y_8wasmtime7runtime5store5StoreNtNtNtCs7gfv9tzbXmh_6yara_x7scanner7context11ScanContextEEEEB2k_(ptr captures(address) %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.val.i = load ptr, ptr %.0.val, align 8, !nonnull !10, !noundef !10 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.val.i, i64 792
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x7scanner7context11ScanContextEBH_(ptr noalias nofree noundef align 8 dereferenceable(2208) %i.a)
          to label %.noexc.i unwind label %bb.c

.noexc.i:                                         ; preds = %bb.a
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsiOkGTpNE17y_8wasmtime7runtime5store10StoreInnerNtNtNtCs7gfv9tzbXmh_6yara_x7scanner7context11ScanContextEEB1B_(ptr noundef nonnull align 8 %.val.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtCsiOkGTpNE17y_8wasmtime7runtime5store5StoreNtNtNtCs7gfv9tzbXmh_6yara_x7scanner7context11ScanContextEEEB24_.exit unwind label %bb.b

bb.b:                                             ; preds = %.noexc.i
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 3032, i64 noundef 8) #44
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.c, %bb.c ], [ %i.b, %bb.b ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 8, i64 noundef 8) #44
  resume { ptr, i32 } %eh.lpad-body.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtCsiOkGTpNE17y_8wasmtime7runtime5store5StoreNtNtNtCs7gfv9tzbXmh_6yara_x7scanner7context11ScanContextEEEB24_.exit: ; preds = %.noexc.i
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 3032, i64 noundef 8) #44
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 8, i64 noundef 8) #44
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell4CellNtNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm12traphandlers17call_thread_state11UnwindStateEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2644)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2645)
  %i.a = load i64, ptr %0, align 8, !range !2646, !alias.scope !2647, !noundef !10 ; 4 uses
  %.not.i.i = icmp eq i64 %i.a, -2
  br i1 %.not.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellNtNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm12traphandlers17call_thread_state11UnwindStateEECs7gfv9tzbXmh_6yara_x.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2648)
  %1 = icmp eq i64 %i.a, -1
  br i1 %1, label %bb.c, label %2

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i.i.i = load ptr, ptr %i.b, align 8, !alias.scope !2649 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !2649, !nonnull !10, !align !17, !noundef !10 ; 5 uses
  %i.d = load ptr, ptr %.val1.i.i.i, align 8, !invariant.load !10, !noalias !2649 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  invoke void %i.d(ptr noundef nonnull %.val.i.i.i)
          to label %bb.e unwind label %bb.g, !noalias !2649

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !11, !invariant.load !10, !noalias !2649 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm12traphandlers12UnwindReasonECs7gfv9tzbXmh_6yara_x.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.i = load i64, ptr %i.h, align 8, !range !32, !invariant.load !10, !noalias !2649
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %i.f, i64 noundef range(i64 1, 536870913) %i.i) #44, !noalias !2649
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm12traphandlers12UnwindReasonECs7gfv9tzbXmh_6yara_x.exit.i.i

bb.g:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !11, !invariant.load !10, !noalias !2649 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %.body.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.o = load i64, ptr %i.n, align 8, !range !32, !invariant.load !10, !noalias !2649
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %i.l, i64 noundef range(i64 1, 536870913) %i.o) #44, !noalias !2649
  br label %.body.i.i

2:                                                ; preds = %bb.b
  %3 = icmp ne i64 %i.a, 3
  tail call void @llvm.assume(i1 %3)
  %4 = icmp eq i64 %i.a, 2
  br i1 %4, label %bb.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm12traphandlers12UnwindReasonECs7gfv9tzbXmh_6yara_x.exit.i.i

bb.i:                                             ; preds = %2
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_RNvXsk_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5error5errorNtB5_13OomOrDynErrorNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm12traphandlers12UnwindReasonECs7gfv9tzbXmh_6yara_x.exit.i.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.j, %bb.h, %bb.g
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.q, %bb.j ], [ %i.j, %bb.h ], [ %i.j, %bb.g ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm12traphandlers9backtrace9BacktraceEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(24) %i.r) #43
          to label %common.resume.i.i unwind label %bb.n

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm12traphandlers12UnwindReasonECs7gfv9tzbXmh_6yara_x.exit.i.i: ; preds = %bb.i, %2, %bb.f, %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.t = load i64, ptr %i.s, align 8, !range !31, !alias.scope !2650, !noundef !10
  %i.u = icmp eq i64 %i.t, -1
  br i1 %i.u, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellNtNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm12traphandlers17call_thread_state11UnwindStateEECs7gfv9tzbXmh_6yara_x.exit, label %bb.k

bb.k:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm12traphandlers12UnwindReasonECs7gfv9tzbXmh_6yara_x.exit.i.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsg1FK5QRYqCG_26wasmtime_internal_unwinder9stackwalk5FrameENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm12traphandlers9backtrace9BacktraceECs7gfv9tzbXmh_6yara_x.exit.i.i.i unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsg1FK5QRYqCG_26wasmtime_internal_unwinder9stackwalk5FrameENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %common.resume.i.i unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #42
  unreachable

common.resume.i.i:                                ; preds = %bb.l, %.body.i.i
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.v, %bb.l ], [ %eh.lpad-body.i.i, %.body.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm12traphandlers9backtrace9BacktraceECs7gfv9tzbXmh_6yara_x.exit.i.i.i: ; preds = %bb.k
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsg1FK5QRYqCG_26wasmtime_internal_unwinder9stackwalk5FrameENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellNtNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm12traphandlers17call_thread_state11UnwindStateEECs7gfv9tzbXmh_6yara_x.exit

bb.n:                                             ; preds = %.body.i.i
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #42
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellNtNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm12traphandlers17call_thread_state11UnwindStateEECs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm12traphandlers12UnwindReasonECs7gfv9tzbXmh_6yara_x.exit.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm12traphandlers9backtrace9BacktraceECs7gfv9tzbXmh_6yara_x.exit.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs7gfv9tzbXmh_6yara_x5types16StringConstraintEEEB1y_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !31, !noundef !10
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs7gfv9tzbXmh_6yara_x5types16StringConstraintEEB1c_.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs7gfv9tzbXmh_6yara_x5types16StringConstraintENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs7gfv9tzbXmh_6yara_x5types16StringConstraintEEB1c_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs7gfv9tzbXmh_6yara_x5types16StringConstraintENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtCs7gfv9tzbXmh_6yara_x5types16StringConstraintEEB1j_.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #42
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtCs7gfv9tzbXmh_6yara_x5types16StringConstraintEEB1j_.exit.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs7gfv9tzbXmh_6yara_x5types16StringConstraintEEB1c_.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs7gfv9tzbXmh_6yara_x5types16StringConstraintENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure8AclEntryEEEB1A_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !31, !noundef !10
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure8AclEntryEEB1e_.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure8AclEntryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure8AclEntryEEB1e_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure8AclEntryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure8AclEntryEEB1l_.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #42
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure8AclEntryEEB1l_.exit.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure8AclEntryEEB1e_.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure8AclEntryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function5FnMutTINtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5store7context15StoreContextMutL0_NtNtNtCs7gfv9tzbXmh_6yara_x7scanner7context11ScanContextEEEp6OutputINtNtB4_6result6ResultNtB28_14UpdateDeadlineNtNtNtCsgIATGCnso3Z_22wasmtime_internal_core5error5error5ErrorENtNtB4_6marker4SendNtB65_4SyncEL_EEEB3l_(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %.0.val, null
  br i1 %i.a, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function5FnMutTINtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5store7context15StoreContextMutL0_NtNtNtCs7gfv9tzbXmh_6yara_x7scanner7context11ScanContextEEEp6OutputINtNtB4_6result6ResultNtB1M_14UpdateDeadlineNtNtNtCsgIATGCnso3Z_22wasmtime_internal_core5error5error5ErrorENtNtB4_6marker4SendNtB5J_4SyncEL_EEB2Z_.exit, label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function5FnMutTINtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5store7context15StoreContextMutL0_NtNtNtCs7gfv9tzbXmh_6yara_x7scanner7context11ScanContextEEEp6OutputINtNtB4_6result6ResultNtB1M_14UpdateDeadlineNtNtNtCsgIATGCnso3Z_22wasmtime_internal_core5error5error5ErrorENtNtB4_6marker4SendNtB5J_4SyncEL_EEB2Z_.exit: ; preds = %bb.e, %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.b = load ptr, ptr %.8.val, align 8, !invariant.load !10 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void %i.b(ptr noundef nonnull %.0.val)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.d = load i64, ptr %i.c, align 8, !range !11, !invariant.load !10 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function5FnMutTINtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5store7context15StoreContextMutL0_NtNtNtCs7gfv9tzbXmh_6yara_x7scanner7context11ScanContextEEEp6OutputINtNtB4_6result6ResultNtB1M_14UpdateDeadlineNtNtNtCsgIATGCnso3Z_22wasmtime_internal_core5error5error5ErrorENtNtB4_6marker4SendNtB5J_4SyncEL_EEB2Z_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !32, !invariant.load !10
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.d, i64 noundef range(i64 1, 536870913) %i.g) #44
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function5FnMutTINtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5store7context15StoreContextMutL0_NtNtNtCs7gfv9tzbXmh_6yara_x7scanner7context11ScanContextEEEp6OutputINtNtB4_6result6ResultNtB1M_14UpdateDeadlineNtNtNtCsgIATGCnso3Z_22wasmtime_internal_core5error5error5ErrorENtNtB4_6marker4SendNtB5J_4SyncEL_EEB2Z_.exit

bb.f:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !11, !invariant.load !10 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDG_INtNtNtCskKLDkoKarTP_4core3ops8function5FnMutTINtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5store7context15StoreContextMutL0_NtNtNtCs7gfv9tzbXmh_6yara_x7scanner7context11ScanContextEEEp6OutputINtNtBR_6result6ResultNtB1z_14UpdateDeadlineNtNtNtCsgIATGCnso3Z_22wasmtime_internal_core5error5error5ErrorENtNtBR_6marker4SendNtB5w_4SyncEL_ENtNtBP_4drop4Drop4dropB2M_.exit4.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !32, !invariant.load !10
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.j, i64 noundef range(i64 1, 536870913) %i.m) #44
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDG_INtNtNtCskKLDkoKarTP_4core3ops8function5FnMutTINtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5store7context15StoreContextMutL0_NtNtNtCs7gfv9tzbXmh_6yara_x7scanner7context11ScanContextEEEp6OutputINtNtBR_6result6ResultNtB1z_14UpdateDeadlineNtNtNtCsgIATGCnso3Z_22wasmtime_internal_core5error5error5ErrorENtNtBR_6marker4SendNtB5w_4SyncEL_ENtNtBP_4drop4Drop4dropB2M_.exit4.i

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDG_INtNtNtCskKLDkoKarTP_4core3ops8function5FnMutTINtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5store7context15StoreContextMutL0_NtNtNtCs7gfv9tzbXmh_6yara_x7scanner7context11ScanContextEEEp6OutputINtNtBR_6result6ResultNtB1z_14UpdateDeadlineNtNtNtCsgIATGCnso3Z_22wasmtime_internal_core5error5error5ErrorENtNtBR_6marker4SendNtB5w_4SyncEL_ENtNtBP_4drop4Drop4dropB2M_.exit4.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTlPNtNtNtNtNtNtNtCscCnEmhw1znz_4libc4unix10linux_like5linux3gnu3b646x86_649siginfo_tPNtNtB4_3ffi6c_voidEEp6OutputbNtNtB4_6marker4SendNtB3P_4SyncEL_EEECs7gfv9tzbXmh_6yara_x(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %.0.val, null
  br i1 %i.a, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTlPNtNtNtNtNtNtNtCscCnEmhw1znz_4libc4unix10linux_like5linux3gnu3b646x86_649siginfo_tPNtNtB4_3ffi6c_voidEEp6OutputbNtNtB4_6marker4SendNtB3t_4SyncEL_EECs7gfv9tzbXmh_6yara_x.exit, label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTlPNtNtNtNtNtNtNtCscCnEmhw1znz_4libc4unix10linux_like5linux3gnu3b646x86_649siginfo_tPNtNtB4_3ffi6c_voidEEp6OutputbNtNtB4_6marker4SendNtB3t_4SyncEL_EECs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.e, %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.b = load ptr, ptr %.8.val, align 8, !invariant.load !10 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void %i.b(ptr noundef nonnull %.0.val)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.d = load i64, ptr %i.c, align 8, !range !11, !invariant.load !10 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTlPNtNtNtNtNtNtNtCscCnEmhw1znz_4libc4unix10linux_like5linux3gnu3b646x86_649siginfo_tPNtNtB4_3ffi6c_voidEEp6OutputbNtNtB4_6marker4SendNtB3t_4SyncEL_EECs7gfv9tzbXmh_6yara_x.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !32, !invariant.load !10
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.d, i64 noundef range(i64 1, 536870913) %i.g) #44
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTlPNtNtNtNtNtNtNtCscCnEmhw1znz_4libc4unix10linux_like5linux3gnu3b646x86_649siginfo_tPNtNtB4_3ffi6c_voidEEp6OutputbNtNtB4_6marker4SendNtB3t_4SyncEL_EECs7gfv9tzbXmh_6yara_x.exit

bb.f:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !11, !invariant.load !10 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnTlPNtNtNtNtNtNtNtCscCnEmhw1znz_4libc4unix10linux_like5linux3gnu3b646x86_649siginfo_tPNtNtBP_3ffi6c_voidEEp6OutputbNtNtBP_6marker4SendNtB3g_4SyncEL_ENtNtBN_4drop4Drop4dropCs7gfv9tzbXmh_6yara_x.exit4.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !32, !invariant.load !10
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.j, i64 noundef range(i64 1, 536870913) %i.m) #44
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnTlPNtNtNtNtNtNtNtCscCnEmhw1znz_4libc4unix10linux_like5linux3gnu3b646x86_649siginfo_tPNtNtBP_3ffi6c_voidEEp6OutputbNtNtBP_6marker4SendNtB3g_4SyncEL_ENtNtBN_4drop4Drop4dropCs7gfv9tzbXmh_6yara_x.exit4.i
end_hunk_0
begin_hunk_1_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsiOkGTpNE17y_8wasmtime7runtime5store10StoreInnerNtNtNtCs7gfv9tzbXmh_6yara_x7scanner7context11ScanContextEEB1B_:bb.a
bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %.val6, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !32, !invariant.load !10
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5, i64 noundef range(i64 1, 0) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #44
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsiOkGTpNE17y_8wasmtime7runtime5store20ResourceLimiterInnerNtNtNtCs7gfv9tzbXmh_6yara_x7scanner7context11ScanContextEEEB27_.exit

bb.h:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.val6, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !11, !invariant.load !10 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %.body, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %.val6, i64 16
  %i.r = load i64, ptr %i.q, align 8, !range !32, !invariant.load !10
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5, i64 noundef range(i64 1, 0) %i.o, i64 noundef range(i64 1, 536870913) %i.r) #44
  br label %.body

.body:                                            ; preds = %bb.i, %bb.h, %bb.b
  %.pn = phi { ptr, i32 } [ %i.a, %bb.b ], [ %i.m, %bb.h ], [ %i.m, %bb.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 3016
  %.val3 = load ptr, ptr %i.s, align 8, !noundef !10
  %i.t = getelementptr i8, ptr %0, i64 3024
  %.val4 = load ptr, ptr %i.t, align 8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function5FnMutTINtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5store7context15StoreContextMutL0_NtNtNtCs7gfv9tzbXmh_6yara_x7scanner7context11ScanContextEEEp6OutputINtNtB4_6result6ResultNtB28_14UpdateDeadlineNtNtNtCsgIATGCnso3Z_22wasmtime_internal_core5error5error5ErrorENtNtB4_6marker4SendNtB65_4SyncEL_EEEB3l_(ptr %.val3, ptr %.val4) #43
          to label %common.resume unwind label %bb.p

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsiOkGTpNE17y_8wasmtime7runtime5store20ResourceLimiterInnerNtNtNtCs7gfv9tzbXmh_6yara_x7scanner7context11ScanContextEEEB27_.exit: ; preds = %bb.g, %bb.f, %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 3016
  %.val = load ptr, ptr %i.u, align 8, !noundef !10 ; 4 uses
  %i.v = getelementptr i8, ptr %0, i64 3024
  %.val2 = load ptr, ptr %i.v, align 8            ; 6 uses
  %i.w = icmp eq ptr %.val, null
  br i1 %i.w, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function5FnMutTINtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5store7context15StoreContextMutL0_NtNtNtCs7gfv9tzbXmh_6yara_x7scanner7context11ScanContextEEEp6OutputINtNtB4_6result6ResultNtB28_14UpdateDeadlineNtNtNtCsgIATGCnso3Z_22wasmtime_internal_core5error5error5ErrorENtNtB4_6marker4SendNtB65_4SyncEL_EEEB3l_.exit, label %bb.j

bb.j:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsiOkGTpNE17y_8wasmtime7runtime5store20ResourceLimiterInnerNtNtNtCs7gfv9tzbXmh_6yara_x7scanner7context11ScanContextEEEB27_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2) ]
  %i.x = load ptr, ptr %.val2, align 8, !invariant.load !10 ; 2 uses
  %.not.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void %i.x(ptr noundef nonnull %.val)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.z = load i64, ptr %i.y, align 8, !range !11, !invariant.load !10 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function5FnMutTINtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5store7context15StoreContextMutL0_NtNtNtCs7gfv9tzbXmh_6yara_x7scanner7context11ScanContextEEEp6OutputINtNtB4_6result6ResultNtB28_14UpdateDeadlineNtNtNtCsgIATGCnso3Z_22wasmtime_internal_core5error5error5ErrorENtNtB4_6marker4SendNtB65_4SyncEL_EEEB3l_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ab = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !range !32, !invariant.load !10
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.z, i64 noundef range(i64 1, 536870913) %i.ac) #44
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function5FnMutTINtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5store7context15StoreContextMutL0_NtNtNtCs7gfv9tzbXmh_6yara_x7scanner7context11ScanContextEEEp6OutputINtNtB4_6result6ResultNtB28_14UpdateDeadlineNtNtNtCsgIATGCnso3Z_22wasmtime_internal_core5error5error5ErrorENtNtB4_6marker4SendNtB65_4SyncEL_EEEB3l_.exit

bb.n:                                             ; preds = %bb.k
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !range !11, !invariant.load !10 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %common.resume, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ah = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !range !32, !invariant.load !10
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.af, i64 noundef range(i64 1, 536870913) %i.ai) #44
  br label %common.resume

common.resume:                                    ; preds = %.body, %bb.n, %bb.o
  %common.resume.op = phi { ptr, i32 } [ %i.ad, %bb.n ], [ %i.ad, %bb.o ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function5FnMutTINtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5store7context15StoreContextMutL0_NtNtNtCs7gfv9tzbXmh_6yara_x7scanner7context11ScanContextEEEp6OutputINtNtB4_6result6ResultNtB28_14UpdateDeadlineNtNtNtCsgIATGCnso3Z_22wasmtime_internal_core5error5error5ErrorENtNtB4_6marker4SendNtB65_4SyncEL_EEEB3l_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsiOkGTpNE17y_8wasmtime7runtime5store20ResourceLimiterInnerNtNtNtCs7gfv9tzbXmh_6yara_x7scanner7context11ScanContextEEEB27_.exit, %bb.l, %bb.m
  ret void

bb.p:                                             ; preds = %bb.b, %.body
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #42
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsiOkGTpNE17y_8wasmtime7runtime5store5StoreNtNtNtCs7gfv9tzbXmh_6yara_x7scanner7context11ScanContextEEB1v_(ptr %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 792
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x7scanner7context11ScanContextEBH_(ptr noalias nofree noundef align 8 dereferenceable(2208) %i.a)
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsiOkGTpNE17y_8wasmtime7runtime5store10StoreInnerNtNtNtCs7gfv9tzbXmh_6yara_x7scanner7context11ScanContextEEB1B_(ptr noundef nonnull align 8 %.0.val)
          to label %_RNvXsi_NtNtCsiOkGTpNE17y_8wasmtime7runtime5storeINtB5_5StoreNtNtNtCs7gfv9tzbXmh_6yara_x7scanner7context11ScanContextENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB12_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 3032, i64 noundef 8) #44
  resume { ptr, i32 } %i.b

_RNvXsi_NtNtCsiOkGTpNE17y_8wasmtime7runtime5storeINtB5_5StoreNtNtNtCs7gfv9tzbXmh_6yara_x7scanner7context11ScanContextENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB12_.exit: ; preds = %bb.a
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 3032, i64 noundef 8) #44
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs7gfv9tzbXmh_6yara_x4wasm7runtime6native6LinkerNtNtNtBK_7scanner7context11ScanContextEEBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2732)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2733)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2734)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2735)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !2736, !nonnull !10, !noundef !10
  %i.c = atomicrmw add ptr %i.b, i64 -1 release, align 8, !noalias !2736
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsiOkGTpNE17y_8wasmtime6engine6EngineECs7gfv9tzbXmh_6yara_x.exit.i

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsiOkGTpNE17y_8wasmtime6engine11EngineInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #38
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsiOkGTpNE17y_8wasmtime6engine6EngineECs7gfv9tzbXmh_6yara_x.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXNtCsbhAup8j5lif_16wasmtime_environ11string_poolNtB2_10StringPoolNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbhAup8j5lif_16wasmtime_environ11string_pool10StringPoolECs7gfv9tzbXmh_6yara_x.exit.i unwind label %bb.e

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsiOkGTpNE17y_8wasmtime6engine6EngineECs7gfv9tzbXmh_6yara_x.exit.i: ; preds = %bb.b, %bb.a
  invoke void @_RNvXNtCsbhAup8j5lif_16wasmtime_environ11string_poolNtB2_10StringPoolNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsiOkGTpNE17y_8wasmtime7runtime6linker6LinkerNtNtNtCs7gfv9tzbXmh_6yara_x7scanner7context11ScanContextEEB1x_.exit unwind label %bb.d

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbhAup8j5lif_16wasmtime_environ11string_pool10StringPoolECs7gfv9tzbXmh_6yara_x.exit.i: ; preds = %bb.d, %bb.c
  %.pn.i = phi { ptr, i32 } [ %i.g, %bb.d ], [ %i.e, %bb.c ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtNtCsiOkGTpNE17y_8wasmtime7runtime6linker9ImportKeyNtBR_10DefinitionEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.f)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsbhAup8j5lif_16wasmtime_environ11collections8hash_map10TryHashMapNtNtNtCsiOkGTpNE17y_8wasmtime7runtime6linker9ImportKeyNtB1O_10DefinitionEECs7gfv9tzbXmh_6yara_x.exit.i unwind label %bb.e

bb.d:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsiOkGTpNE17y_8wasmtime6engine6EngineECs7gfv9tzbXmh_6yara_x.exit.i
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbhAup8j5lif_16wasmtime_environ11string_pool10StringPoolECs7gfv9tzbXmh_6yara_x.exit.i

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbhAup8j5lif_16wasmtime_environ11string_pool10StringPoolECs7gfv9tzbXmh_6yara_x.exit.i, %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #42
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsbhAup8j5lif_16wasmtime_environ11collections8hash_map10TryHashMapNtNtNtCsiOkGTpNE17y_8wasmtime7runtime6linker9ImportKeyNtB1O_10DefinitionEECs7gfv9tzbXmh_6yara_x.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbhAup8j5lif_16wasmtime_environ11string_pool10StringPoolECs7gfv9tzbXmh_6yara_x.exit.i
  resume { ptr, i32 } %.pn.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsiOkGTpNE17y_8wasmtime7runtime6linker6LinkerNtNtNtCs7gfv9tzbXmh_6yara_x7scanner7context11ScanContextEEB1x_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsiOkGTpNE17y_8wasmtime6engine6EngineECs7gfv9tzbXmh_6yara_x.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtNtCsiOkGTpNE17y_8wasmtime7runtime6linker9ImportKeyNtBR_10DefinitionEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEEECs7gfv9tzbXmh_6yara_x(ptr %.0.val, i8 %.8.val) unnamed_addr #1 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 4
  %i.b = trunc nuw i8 %.8.val to i1
  br i1 %i.b, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.d = and i64 %i.c, 9223372036854775807
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i, label %bb.c, !prof !20

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #38
  br i1 %i.f, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store atomic i8 1, ptr %i.a monotonic, align 1
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.g = atomicrmw xchg ptr %.0.val, i32 0 release, align 4
  %i.h = icmp eq i32 %i.g, 2
  br i1 %i.h, label %bb.e, label %_RNvXsc_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB17_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x.exit, !prof !14

bb.e:                                             ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i
  tail call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.0.val)
  br label %_RNvXsc_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB17_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x.exit

_RNvXsc_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB17_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x.exit: ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm12traphandlers28catch_unwind_and_record_trapINtNtB4_6result6ResultuNtNtNtCsgIATGCnso3Z_22wasmtime_internal_core5error5error5ErrorENCINvMNtBI_8instanceNtB3w_8Instance20enter_host_from_wasmB22_NCINvMs9_NtBK_4funcNtB4y_8HostFunc21array_call_trampolineNtNtNtCs7gfv9tzbXmh_6yara_x7scanner7context11ScanContextNCNvMs_NtNtNtB5q_4wasm7runtime6nativeINtB6l_6LinkerB5k_E18func_new_unchecked0E0E0Es_0EB5q_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2739)
  %i.a = load i64, ptr %0, align 8, !range !37, !alias.scope !2739, !noundef !10 ; 3 uses
  %1 = icmp eq i64 %i.a, -1
  br i1 %1, label %bb.b, label %2

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.b, align 8, !alias.scope !2739 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load ptr, ptr %i.c, align 8, !alias.scope !2739, !nonnull !10, !align !17, !noundef !10 ; 5 uses
  %i.d = load ptr, ptr %.val1.i, align 8, !invariant.load !10, !noalias !2739 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.d(ptr noundef nonnull %.val.i)
          to label %bb.d unwind label %bb.f, !noalias !2739

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !11, !invariant.load !10, !noalias !2739 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm12traphandlers12UnwindReasonECs7gfv9tzbXmh_6yara_x.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.i = load i64, ptr %i.h, align 8, !range !32, !invariant.load !10, !noalias !2739
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.f, i64 noundef range(i64 1, 536870913) %i.i) #44, !noalias !2739
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm12traphandlers12UnwindReasonECs7gfv9tzbXmh_6yara_x.exit

bb.f:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !11, !invariant.load !10, !noalias !2739 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x.exit4.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.o = load i64, ptr %i.n, align 8, !range !32, !invariant.load !10, !noalias !2739
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.l, i64 noundef range(i64 1, 536870913) %i.o) #44, !noalias !2739
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x.exit4.i.i

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x.exit4.i.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.j

2:                                                ; preds = %bb.a
  %3 = icmp ne i64 %i.a, 3
  tail call void @llvm.assume(i1 %3)
  %4 = icmp eq i64 %i.a, 2
  br i1 %4, label %bb.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm12traphandlers12UnwindReasonECs7gfv9tzbXmh_6yara_x.exit

bb.h:                                             ; preds = %2
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXsk_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5error5errorNtB5_13OomOrDynErrorNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.p)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm12traphandlers12UnwindReasonECs7gfv9tzbXmh_6yara_x.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm12traphandlers12UnwindReasonECs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.d, %bb.e, %2, %bb.h
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2AhGS15tZfv_4bstr7bstring7BStringECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs7gfv9tzbXmh_6yara_x.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #42
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs7gfv9tzbXmh_6yara_x.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2r1H4NiMXj9_12regex_syntax3hir3HirECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsm_NtCs2r1H4NiMXj9_12regex_syntax3hirNtB5_3HirNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2r1H4NiMXj9_12regex_syntax3hir7HirKindECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(40) %0) #43
          to label %bb.g unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2r1H4NiMXj9_12regex_syntax3hir7HirKindECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(40) %0)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.b = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val = load ptr, ptr %i.c, align 8, !nonnull !10, !noundef !10
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 80, i64 noundef 8) #44
  ret void

bb.f:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #42
  unreachable

bb.g:                                             ; preds = %bb.b, %bb.d
  %.pn = phi { ptr, i32 } [ %i.b, %bb.d ], [ %i.a, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val2 = load ptr, ptr %i.e, align 8, !nonnull !10, !noundef !10
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2, i64 noundef 80, i64 noundef 8) #44
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2r1H4NiMXj9_12regex_syntax3hir7HirKindECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !29, !noundef !10 ; 4 uses
  %i.b = icmp ne i64 %i.a, 4
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i64 %i.a, -2
  %.inv = icmp samesign ult i64 %i.a, 2
  %i.d = select i1 %.inv, i64 2, i64 %i.c
  switch i64 %i.d, label %bb.b [
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2r1H4NiMXj9_12regex_syntax3hir7LiteralECs7gfv9tzbXmh_6yara_x.exit
    i64 1, label %bb.e
    i64 2, label %bb.g
    i64 3, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2r1H4NiMXj9_12regex_syntax3hir7LiteralECs7gfv9tzbXmh_6yara_x.exit
    i64 4, label %bb.n
    i64 5, label %bb.o
    i64 6, label %bb.q
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs2r1H4NiMXj9_12regex_syntax3hir3HirENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs2r1H4NiMXj9_12regex_syntax3hir3HirEECs7gfv9tzbXmh_6yara_x.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs2r1H4NiMXj9_12regex_syntax3hir3HirENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #42
  unreachable

common.resume:                                    ; preds = %bb.r, %bb.i, %bb.l, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.l ], [ %i.f, %bb.c ], [ %i.m, %bb.i ], [ %i.x, %bb.r ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs2r1H4NiMXj9_12regex_syntax3hir3HirEECs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.b
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs2r1H4NiMXj9_12regex_syntax3hir3HirENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2r1H4NiMXj9_12regex_syntax3hir7LiteralECs7gfv9tzbXmh_6yara_x.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2r1H4NiMXj9_12regex_syntax3hir7LiteralECs7gfv9tzbXmh_6yara_x.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2r1H4NiMXj9_12regex_syntax3hir10ClassBytesECs7gfv9tzbXmh_6yara_x.exit.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2r1H4NiMXj9_12regex_syntax3hir12ClassUnicodeECs7gfv9tzbXmh_6yara_x.exit.i, %bb.f, %bb.e, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs2r1H4NiMXj9_12regex_syntax3hir3HirEECs7gfv9tzbXmh_6yara_x.exit3, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2r1H4NiMXj9_12regex_syntax3hir7CaptureECs7gfv9tzbXmh_6yara_x.exit, %bb.n, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs2r1H4NiMXj9_12regex_syntax3hir3HirEECs7gfv9tzbXmh_6yara_x.exit, %bb.a, %bb.a
  ret void

bb.e:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.h, align 8, !noundef !10 ; 2 uses
  %i.i = icmp eq i64 %.val1, 0
  br i1 %i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2r1H4NiMXj9_12regex_syntax3hir7LiteralECs7gfv9tzbXmh_6yara_x.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.j, align 8, !nonnull !10, !noundef !10
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %.val1, i64 noundef 1) #44
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2r1H4NiMXj9_12regex_syntax3hir7LiteralECs7gfv9tzbXmh_6yara_x.exit

bb.g:                                             ; preds = %bb.a
  %i.k = icmp eq i64 %i.a, 0
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  br i1 %i.k, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs2r1H4NiMXj9_12regex_syntax3hir17ClassUnicodeRangeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.l)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2r1H4NiMXj9_12regex_syntax3hir12ClassUnicodeECs7gfv9tzbXmh_6yara_x.exit.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs2r1H4NiMXj9_12regex_syntax3hir17ClassUnicodeRangeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.l)
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #42
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2r1H4NiMXj9_12regex_syntax3hir12ClassUnicodeECs7gfv9tzbXmh_6yara_x.exit.i: ; preds = %bb.h
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs2r1H4NiMXj9_12regex_syntax3hir17ClassUnicodeRangeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.l)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2r1H4NiMXj9_12regex_syntax3hir7LiteralECs7gfv9tzbXmh_6yara_x.exit

bb.k:                                             ; preds = %bb.g
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs2r1H4NiMXj9_12regex_syntax3hir15ClassBytesRangeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.l)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2r1H4NiMXj9_12regex_syntax3hir10ClassBytesECs7gfv9tzbXmh_6yara_x.exit.i unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs2r1H4NiMXj9_12regex_syntax3hir15ClassBytesRangeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.l)
          to label %common.resume unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #42
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2r1H4NiMXj9_12regex_syntax3hir10ClassBytesECs7gfv9tzbXmh_6yara_x.exit.i: ; preds = %bb.k
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs2r1H4NiMXj9_12regex_syntax3hir15ClassBytesRangeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.l)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2r1H4NiMXj9_12regex_syntax3hir7LiteralECs7gfv9tzbXmh_6yara_x.exit

bb.n:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs2r1H4NiMXj9_12regex_syntax3hir3HirEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(8) %i.q), !inline_history !2740
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2r1H4NiMXj9_12regex_syntax3hir7LiteralECs7gfv9tzbXmh_6yara_x.exit

bb.o:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2744)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i = load ptr, ptr %i.s, align 8, !alias.scope !2744, !noundef !10 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i = load i64, ptr %i.t, align 8, !alias.scope !2744 ; 2 uses
  %i.u = icmp eq ptr %.val.i, null
  %i.v = icmp eq i64 %.val1.i, 0
  %or.cond.i = select i1 %i.u, i1 true, i1 %i.v
  br i1 %or.cond.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2r1H4NiMXj9_12regex_syntax3hir7CaptureECs7gfv9tzbXmh_6yara_x.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ], !noalias !2744
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %.val1.i, i64 noundef 1) #44, !noalias !2744
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2r1H4NiMXj9_12regex_syntax3hir7CaptureECs7gfv9tzbXmh_6yara_x.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2r1H4NiMXj9_12regex_syntax3hir7CaptureECs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.p, %bb.o
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs2r1H4NiMXj9_12regex_syntax3hir3HirEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.r), !inline_history !2743
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2r1H4NiMXj9_12regex_syntax3hir7LiteralECs7gfv9tzbXmh_6yara_x.exit

end_hunk_1
begin_hunk_2_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir3dfs7DFSIterEBJ_:bb.a
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir3dfs5EventTNtBR_6ExprIdNtBP_12EventContextEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBV_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecINtNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir3dfs5EventTNtB1k_6ExprIdNtB1i_12EventContextEEEEB1o_.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #42
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecINtNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir3dfs5EventTNtB1k_6ExprIdNtB1i_12EventContextEEEEB1o_.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir3dfs5EventTNtB1d_6ExprIdNtB1b_12EventContextEEEEB1h_.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir3dfs5EventTNtBR_6ExprIdNtBP_12EventContextEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBV_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir6ast2ir5FrameEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !31, !noundef !10
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val5 = load ptr, ptr %i.c, align 8            ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val6 = load ptr, ptr %i.d, align 8, !nonnull !10, !align !17, !noundef !10 ; 5 uses
  %i.e = load ptr, ptr %.val6, align 8, !invariant.load !10 ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5) ]
  invoke void %i.e(ptr noundef nonnull %.val5)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.val6, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !11, !invariant.load !10 ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemRNtNtCsfF8zpZz1lvn_13yara_x_parser3ast4ExprEL_EECs7gfv9tzbXmh_6yara_x.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %.val6, i64 16
  %i.j = load i64, ptr %i.i, align 8, !range !32, !invariant.load !10
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5) ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5, i64 noundef range(i64 1, 0) %i.g, i64 noundef range(i64 1, 536870913) %i.j) #44
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemRNtNtCsfF8zpZz1lvn_13yara_x_parser3ast4ExprEL_EECs7gfv9tzbXmh_6yara_x.exit

bb.f:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = getelementptr inbounds nuw i8, ptr %.val6, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !11, !invariant.load !10 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %.body, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %.val6, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !32, !invariant.load !10
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5, i64 noundef range(i64 1, 0) %i.m, i64 noundef range(i64 1, 536870913) %i.p) #44
  br label %.body

bb.h:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val = load ptr, ptr %i.q, align 8             ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val4 = load ptr, ptr %i.r, align 8, !nonnull !10, !align !17, !noundef !10 ; 5 uses
  %i.s = load ptr, ptr %.val4, align 8, !invariant.load !10 ; 2 uses
  %.not.i7 = icmp eq ptr %i.s, null
  br i1 %.not.i7, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.s(ptr noundef nonnull %.val)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %.val4, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !11, !invariant.load !10 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemRNtNtCsfF8zpZz1lvn_13yara_x_parser3ast4ExprEL_EECs7gfv9tzbXmh_6yara_x.exit11, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %.val4, i64 16
  %i.x = load i64, ptr %i.w, align 8, !range !32, !invariant.load !10
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #44
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemRNtNtCsfF8zpZz1lvn_13yara_x_parser3ast4ExprEL_EECs7gfv9tzbXmh_6yara_x.exit11

bb.l:                                             ; preds = %bb.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = getelementptr inbounds nuw i8, ptr %.val4, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !range !11, !invariant.load !10 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %.body9, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ac = getelementptr inbounds nuw i8, ptr %.val4, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !range !32, !invariant.load !10
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.aa, i64 noundef range(i64 1, 536870913) %i.ad) #44
  br label %.body9

.body:                                            ; preds = %bb.f, %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir6ast2ir17ConjunctiveBranchEEB1g_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ae) #43
          to label %common.resume unwind label %bb.p

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemRNtNtCsfF8zpZz1lvn_13yara_x_parser3ast4ExprEL_EECs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.e, %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir6ast2ir17ConjunctiveBranchENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir6ast2ir17ConjunctiveBranchEEB1g_.exit17 unwind label %bb.n

bb.n:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemRNtNtCsfF8zpZz1lvn_13yara_x_parser3ast4ExprEL_EECs7gfv9tzbXmh_6yara_x.exit
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir6ast2ir17ConjunctiveBranchENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %common.resume unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #42
  unreachable

common.resume:                                    ; preds = %bb.u, %.body, %.body13, %bb.n
  %common.resume.op = phi { ptr, i32 } [ %.pn, %.body13 ], [ %i.ag, %bb.n ], [ %i.k, %.body ], [ %i.ao, %bb.u ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir6ast2ir17ConjunctiveBranchEEB1g_.exit17: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemRNtNtCsfF8zpZz1lvn_13yara_x_parser3ast4ExprEL_EECs7gfv9tzbXmh_6yara_x.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir6ast2ir17ConjunctiveBranchEEB1g_.exit15
  %.sink = phi ptr [ %i.an, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir6ast2ir17ConjunctiveBranchEEB1g_.exit15 ], [ %i.af, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemRNtNtCsfF8zpZz1lvn_13yara_x_parser3ast4ExprEL_EECs7gfv9tzbXmh_6yara_x.exit ]
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir6ast2ir17ConjunctiveBranchENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sink)
  ret void

bb.p:                                             ; preds = %.body13, %.body9, %.body
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #42
  unreachable

.body9:                                           ; preds = %bb.l, %bb.m
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir6ast2ir17ConjunctiveBranchEEB1g_(ptr noalias nofree noundef align 8 dereferenceable(24) %0) #43
          to label %.body13 unwind label %bb.p

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemRNtNtCsfF8zpZz1lvn_13yara_x_parser3ast4ExprEL_EECs7gfv9tzbXmh_6yara_x.exit11: ; preds = %bb.k, %bb.j
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir6ast2ir17ConjunctiveBranchENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.r unwind label %bb.q

bb.q:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemRNtNtCsfF8zpZz1lvn_13yara_x_parser3ast4ExprEL_EECs7gfv9tzbXmh_6yara_x.exit11
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir6ast2ir17ConjunctiveBranchENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body13 unwind label %bb.s

bb.r:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemRNtNtCsfF8zpZz1lvn_13yara_x_parser3ast4ExprEL_EECs7gfv9tzbXmh_6yara_x.exit11
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir6ast2ir17ConjunctiveBranchENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir6ast2ir17ConjunctiveBranchEEB1g_.exit15 unwind label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #42
  unreachable

.body13:                                          ; preds = %bb.t, %bb.q, %.body9
  %.pn = phi { ptr, i32 } [ %i.y, %.body9 ], [ %i.am, %bb.t ], [ %i.aj, %bb.q ]
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir6ast2ir17ConjunctiveBranchEEB1g_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.al) #43
          to label %common.resume unwind label %bb.p

bb.t:                                             ; preds = %bb.r
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %.body13

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir6ast2ir17ConjunctiveBranchEEB1g_.exit15: ; preds = %bb.r
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir6ast2ir17ConjunctiveBranchENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir6ast2ir17ConjunctiveBranchEEB1g_.exit17 unwind label %bb.u

bb.u:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir6ast2ir17ConjunctiveBranchEEB1g_.exit15
  %i.ao = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir6ast2ir17ConjunctiveBranchENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %common.resume unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #42
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm12traphandlers12UnwindReasonECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !37, !noundef !10 ; 3 uses
  %1 = icmp eq i64 %i.a, -1
  br i1 %1, label %bb.b, label %2

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.b, align 8             ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.c, align 8, !nonnull !10, !align !17, !noundef !10 ; 5 uses
  %i.d = load ptr, ptr %.val1, align 8, !invariant.load !10 ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.d(ptr noundef nonnull %.val)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !11, !invariant.load !10 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECs7gfv9tzbXmh_6yara_x.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !range !32, !invariant.load !10
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.f, i64 noundef range(i64 1, 536870913) %i.i) #44
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECs7gfv9tzbXmh_6yara_x.exit

bb.f:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !11, !invariant.load !10 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x.exit4.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.o = load i64, ptr %i.n, align 8, !range !32, !invariant.load !10
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.l, i64 noundef range(i64 1, 536870913) %i.o) #44
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x.exit4.i

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x.exit4.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.j

2:                                                ; preds = %bb.a
  %3 = icmp ne i64 %i.a, 3
  tail call void @llvm.assume(i1 %3)
  %4 = icmp eq i64 %i.a, 2
  br i1 %4, label %bb.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECs7gfv9tzbXmh_6yara_x.exit

bb.h:                                             ; preds = %2
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXsk_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5error5errorNtB5_13OomOrDynErrorNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.p)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECs7gfv9tzbXmh_6yara_x.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.h, %2, %bb.e, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm12traphandlers4TrapECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !45, !alias.scope !3283, !noundef !10 ; 2 uses
  %i.b = icmp ne i64 %i.a, 3
  tail call void @llvm.assume(i1 %i.b)
  %i.c = icmp eq i64 %i.a, 2
  br i1 %i.c, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm12traphandlers10TrapReasonECs7gfv9tzbXmh_6yara_x.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_RNvXsk_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5error5errorNtB5_13OomOrDynErrorNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm12traphandlers10TrapReasonECs7gfv9tzbXmh_6yara_x.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm12traphandlers9backtrace9BacktraceEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #43
          to label %common.resume unwind label %bb.g

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm12traphandlers10TrapReasonECs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.h = load i64, ptr %i.g, align 8, !range !31, !alias.scope !3284, !noundef !10
  %i.i = icmp eq i64 %i.h, -1
  br i1 %i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm12traphandlers9backtrace9BacktraceEECs7gfv9tzbXmh_6yara_x.exit, label %bb.d

bb.d:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm12traphandlers10TrapReasonECs7gfv9tzbXmh_6yara_x.exit
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsg1FK5QRYqCG_26wasmtime_internal_unwinder9stackwalk5FrameENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm12traphandlers9backtrace9BacktraceECs7gfv9tzbXmh_6yara_x.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsg1FK5QRYqCG_26wasmtime_internal_unwinder9stackwalk5FrameENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #42
  unreachable

common.resume:                                    ; preds = %bb.c, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.e ], [ %i.e, %bb.c ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm12traphandlers9backtrace9BacktraceECs7gfv9tzbXmh_6yara_x.exit.i: ; preds = %bb.d
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsg1FK5QRYqCG_26wasmtime_internal_unwinder9stackwalk5FrameENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm12traphandlers9backtrace9BacktraceEECs7gfv9tzbXmh_6yara_x.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm12traphandlers9backtrace9BacktraceEECs7gfv9tzbXmh_6yara_x.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm12traphandlers10TrapReasonECs7gfv9tzbXmh_6yara_x.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm12traphandlers9backtrace9BacktraceECs7gfv9tzbXmh_6yara_x.exit.i
  ret void

bb.g:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #42
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5store9func_refs8FuncRefsECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_RNvXs4_CsiGo02iu2UYw_7bumpaloNtB5_4BumpNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm10always_mut9AlwaysMutNtCsiGo02iu2UYw_7bumpalo4BumpEECs7gfv9tzbXmh_6yara_x.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vec6TryVecINtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm13send_sync_ptr11SendSyncPtrNtNtB1G_9vmcontext9VMFuncRefEEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(24) %0) #43
          to label %.body unwind label %bb.h

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm10always_mut9AlwaysMutNtCsiGo02iu2UYw_7bumpalo4BumpEECs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.a
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm13send_sync_ptr11SendSyncPtrNtNtBK_9vmcontext9VMFuncRefEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm13send_sync_ptr11SendSyncPtrNtNtB1d_9vmcontext9VMFuncRefEEECs7gfv9tzbXmh_6yara_x.exit.i unwind label %bb.c

bb.c:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm10always_mut9AlwaysMutNtCsiGo02iu2UYw_7bumpalo4BumpEECs7gfv9tzbXmh_6yara_x.exit
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm13send_sync_ptr11SendSyncPtrNtNtBR_9vmcontext9VMFuncRefEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #42
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm13send_sync_ptr11SendSyncPtrNtNtB1d_9vmcontext9VMFuncRefEEECs7gfv9tzbXmh_6yara_x.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm10always_mut9AlwaysMutNtCsiGo02iu2UYw_7bumpalo4BumpEECs7gfv9tzbXmh_6yara_x.exit
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm13send_sync_ptr11SendSyncPtrNtNtBR_9vmcontext9VMFuncRefEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vec6TryVecINtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm13send_sync_ptr11SendSyncPtrNtNtB1G_9vmcontext9VMFuncRefEEECs7gfv9tzbXmh_6yara_x.exit unwind label %bb.e

.body:                                            ; preds = %bb.e, %bb.c, %bb.b
  %.pn = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.f, %bb.e ], [ %i.c, %bb.c ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vec6TryVecNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5store9func_refs7StorageEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #43
          to label %common.resume unwind label %bb.h

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm13send_sync_ptr11SendSyncPtrNtNtB1d_9vmcontext9VMFuncRefEEECs7gfv9tzbXmh_6yara_x.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vec6TryVecINtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm13send_sync_ptr11SendSyncPtrNtNtB1G_9vmcontext9VMFuncRefEEECs7gfv9tzbXmh_6yara_x.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm13send_sync_ptr11SendSyncPtrNtNtB1d_9vmcontext9VMFuncRefEEECs7gfv9tzbXmh_6yara_x.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5store9func_refs7StorageENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vec6TryVecNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5store9func_refs7StorageEECs7gfv9tzbXmh_6yara_x.exit unwind label %bb.f

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vec6TryVecINtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm13send_sync_ptr11SendSyncPtrNtNtB1G_9vmcontext9VMFuncRefEEECs7gfv9tzbXmh_6yara_x.exit
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5store9func_refs7StorageENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #42
  unreachable

common.resume:                                    ; preds = %.body, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.h, %bb.f ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vec6TryVecNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5store9func_refs7StorageEECs7gfv9tzbXmh_6yara_x.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vec6TryVecINtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm13send_sync_ptr11SendSyncPtrNtNtB1G_9vmcontext9VMFuncRefEEECs7gfv9tzbXmh_6yara_x.exit
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5store9func_refs7StorageENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
  ret void

bb.h:                                             ; preds = %.body, %bb.b
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #42
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime6module8registry14ModuleRegistryECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtCsgIATGCnso3Z_22wasmtime_internal_core4slab5EntryNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime6module8registry10LoadedCodeEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vec6TryVecINtNtBI_4slab5EntryNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime6module8registry10LoadedCodeEEECs7gfv9tzbXmh_6yara_x.exit.i.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCsgIATGCnso3Z_22wasmtime_internal_core4slab5EntryNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime6module8registry10LoadedCodeEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0)
          to label %.body.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #42
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vec6TryVecINtNtBI_4slab5EntryNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime6module8registry10LoadedCodeEEECs7gfv9tzbXmh_6yara_x.exit.i.i: ; preds = %bb.a
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCsgIATGCnso3Z_22wasmtime_internal_core4slab5EntryNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime6module8registry10LoadedCodeEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgIATGCnso3Z_22wasmtime_internal_core4slab4SlabNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime6module8registry10LoadedCodeEECs7gfv9tzbXmh_6yara_x.exit.i unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vec6TryVecINtNtBI_4slab5EntryNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime6module8registry10LoadedCodeEEECs7gfv9tzbXmh_6yara_x.exit.i.i
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.d, %bb.b
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs8WRO3ZG4Fzb_17cranelift_bforest3map9MapForestNtNtNtCsiOkGTpNE17y_8wasmtime7runtime4code11StoreCodePCNtNtCsgIATGCnso3Z_22wasmtime_internal_core4slab2IdEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(32) %i.d) #43
          to label %.body unwind label %bb.g

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgIATGCnso3Z_22wasmtime_internal_core4slab4SlabNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime6module8registry10LoadedCodeEECs7gfv9tzbXmh_6yara_x.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgIATGCnso3Z_22wasmtime_internal_core5alloc3vec6TryVecINtNtBI_4slab5EntryNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime6module8registry10LoadedCodeEEECs7gfv9tzbXmh_6yara_x.exit.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtCs8WRO3ZG4Fzb_17cranelift_bforest4node8NodeDataINtNtBK_3map8MapTypesNtNtNtCsiOkGTpNE17y_8wasmtime7runtime4code11StoreCodePCNtNtCsgIATGCnso3Z_22wasmtime_internal_core4slab2IdEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs8WRO3ZG4Fzb_17cranelift_bforest3map9MapForestNtNtNtCsiOkGTpNE17y_8wasmtime7runtime4code11StoreCodePCNtNtCsgIATGCnso3Z_22wasmtime_internal_core4slab2IdEECs7gfv9tzbXmh_6yara_x.exit.i unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgIATGCnso3Z_22wasmtime_internal_core4slab4SlabNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime6module8registry10LoadedCodeEECs7gfv9tzbXmh_6yara_x.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCs8WRO3ZG4Fzb_17cranelift_bforest4node8NodeDataINtNtBR_3map8MapTypesNtNtNtCsiOkGTpNE17y_8wasmtime7runtime4code11StoreCodePCNtNtCsgIATGCnso3Z_22wasmtime_internal_core4slab2IdEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %.body unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #42
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs8WRO3ZG4Fzb_17cranelift_bforest3map9MapForestNtNtNtCsiOkGTpNE17y_8wasmtime7runtime4code11StoreCodePCNtNtCsgIATGCnso3Z_22wasmtime_internal_core4slab2IdEECs7gfv9tzbXmh_6yara_x.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgIATGCnso3Z_22wasmtime_internal_core4slab4SlabNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime6module8registry10LoadedCodeEECs7gfv9tzbXmh_6yara_x.exit.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCs8WRO3ZG4Fzb_17cranelift_bforest4node8NodeDataINtNtBR_3map8MapTypesNtNtNtCsiOkGTpNE17y_8wasmtime7runtime4code11StoreCodePCNtNtCsgIATGCnso3Z_22wasmtime_internal_core4slab2IdEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsbhAup8j5lif_16wasmtime_environ11collections9btree_map11TryBTreeMapNtNtNtCsiOkGTpNE17y_8wasmtime7runtime4code11StoreCodePCNtNtNtB1S_6module8registry10LoadedCodeEECs7gfv9tzbXmh_6yara_x.exit unwind label %bb.h

bb.g:                                             ; preds = %.body.i
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #42
  unreachable

end_hunk_2
