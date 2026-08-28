Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ripgrep-rs/original/grep_regex-342b229b6101d80c.grep_regex.9c5453b099169300-cgu.3?download=true
inline.NumInlined: 196
inline.NumDeleted: 116
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvMs0_NtNtCs2G6gJ0Mq9lu_12regex_syntax3hir8intervalINtB6_11IntervalSetNtB8_17ClassUnicodeRangeE3newINtNtCskKLDkoKarTP_4core6option6OptionB18_EECsdq8xsXUia3c_10grep_regex:bb.a
bb.n:                                             ; preds = %.loopexit.split-lp
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !dbg !603
  unreachable, !dbg !603

bb.o:                                             ; preds = %.loopexit.split-lp
  resume { ptr, i32 } %lpad.phi, !dbg !603
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs40PPaThNnQP_3log13___private_api3loguNtB2_12GlobalLoggerECsdq8xsXUia3c_10grep_regex(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef range(i64 1, 6) %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !604 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [96 x i8], align 8                ; 16 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !608), !dbg !611
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 32, !dbg !612
  %i.d = load ptr, ptr %i.c, align 8, !dbg !612, !alias.scope !608, !nonnull !14, !align !615, !noundef !14 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !616
  %i.f = load i64, ptr %i.e, align 8, !dbg !616, !alias.scope !608, !noundef !14
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !616
  %i.h = load ptr, ptr %i.g, align 8, !dbg !616, !alias.scope !608, !nonnull !14, !noundef !14
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !617
  %i.j = load i64, ptr %i.i, align 8, !dbg !617, !alias.scope !608, !noundef !14
  %i.k = load ptr, ptr %3, align 8, !dbg !617, !alias.scope !608, !nonnull !14, !noundef !14
  %i.l = load ptr, ptr %i.d, align 8, !dbg !618, !noalias !608, !nonnull !14, !noundef !14
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !618
  %i.n = load i64, ptr %i.m, align 8, !dbg !618, !noalias !608, !noundef !14
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !632
  %i.p = load i32, ptr %i.o, align 8, !dbg !632, !noalias !608, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !635, !noalias !608
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !636
  store i64 %2, ptr %i.q, align 8, !dbg !636, !noalias !608
  %.sroa.422.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !636
  store ptr %i.k, ptr %.sroa.422.0..sroa_idx.i, align 8, !dbg !636, !noalias !608
  %.sroa.523.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64, !dbg !636
  store i64 %i.j, ptr %.sroa.523.0..sroa_idx.i, align 8, !dbg !636, !noalias !608
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 80, !dbg !636
  store ptr %0, ptr %i.r, align 8, !dbg !636, !noalias !608
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 88, !dbg !636
  store ptr %1, ptr %i.s, align 8, !dbg !636, !noalias !608
  store i64 0, ptr %i.b, align 8, !dbg !636, !noalias !608
  %.sroa.428.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !636
  store ptr %i.h, ptr %.sroa.428.0..sroa_idx.i, align 8, !dbg !636, !noalias !608
  %.sroa.529.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !636
  store i64 %i.f, ptr %.sroa.529.0..sroa_idx.i, align 8, !dbg !636, !noalias !608
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !636
  store i64 0, ptr %i.t, align 8, !dbg !636, !noalias !608
  %.sroa.434.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !636
  store ptr %i.l, ptr %.sroa.434.0..sroa_idx.i, align 8, !dbg !636, !noalias !608
  %.sroa.535.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !636
  store i64 %i.n, ptr %.sroa.535.0..sroa_idx.i, align 8, !dbg !636, !noalias !608
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 72, !dbg !636
  store i32 1, ptr %i.u, align 8, !dbg !636, !noalias !608
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 76, !dbg !636
  store i32 %i.p, ptr %i.v, align 4, !dbg !636, !noalias !608
  call void @_RNvXs0_NtCs40PPaThNnQP_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log3log(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.b), !dbg !644, !noalias !608
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !645, !noalias !608
  ret void, !dbg !646
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsexYYUdYSQU6_5alloc3str17join_generic_copyehNtNtB4_6string6StringECsdq8xsXUia3c_10grep_regex(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) %1, i64 noundef range(i64 0, 384307168202282326) %2, ptr noalias nofree noundef nonnull readonly captures(none) %3, i64 noundef range(i64 0, -9223372036854775808) %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !647 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %.idx = mul nuw nsw i64 %2, 24, !dbg !650       ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %.idx, !dbg !650 ; 7 uses
  %i.d = icmp eq i64 %2, 0, !dbg !661
  br i1 %i.d, label %bb.n, label %bb.b, !dbg !664

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !672 ; 7 uses
  %i.f = getelementptr i8, ptr %1, i64 8, !dbg !675
  %.val = load ptr, ptr %i.f, align 8, !dbg !675, !nonnull !14, !noundef !14 ; 2 uses
  %i.g = getelementptr i8, ptr %1, i64 16, !dbg !675
  %.val82 = load i64, ptr %i.g, align 8, !dbg !675, !noundef !14 ; 2 uses
  %gepdiff = add nsw i64 %.idx, -24, !dbg !677
  %i.h = udiv exact i64 %gepdiff, 24, !dbg !677
  %i.i = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %4, i64 %i.h), !dbg !694 ; 2 uses
  %i.j = extractvalue { i64, i1 } %i.i, 1, !dbg !694
  %i.k = extractvalue { i64, i1 } %i.i, 0         ; 2 uses
  %i.l = add i64 %.val82, %i.k                    ; 3 uses
  %i.m = icmp ult i64 %i.l, %i.k
  %or.cond = or i1 %i.j, %i.m, !dbg !699
  br i1 %or.cond, label %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldjNCINvNtNtB1s_8adapters3map12map_try_foldRBJ_jjINtNtBa_6option6OptionjENCNCINvNtBN_3str17join_generic_copyehBJ_Es_00NvMs9_NtBa_3numj11checked_addE0B2V_ECsdq8xsXUia3c_10grep_regex.exit, label %.preheader241.preheader, !dbg !699, !prof !703

.preheader241.preheader:                          ; preds = %bb.b
  %i.n = icmp eq i64 %2, 1, !dbg !704
  br i1 %i.n, label %.preheader241._crit_edge, label %.lr.ph337, !dbg !728

.preheader241:                                    ; preds = %.lr.ph337
  %i.o = getelementptr inbounds nuw i8, ptr %i.q, i64 24, !dbg !729 ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.c, !dbg !704
  br i1 %i.p, label %.preheader241._crit_edge, label %.lr.ph337, !dbg !728

.lr.ph337:                                        ; preds = %.preheader241.preheader, %.preheader241
  %.sroa.01.0.i336 = phi i64 [ %i.s, %.preheader241 ], [ %i.l, %.preheader241.preheader ] ; 2 uses
  %i.q = phi ptr [ %i.o, %.preheader241 ], [ %i.e, %.preheader241.preheader ] ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 16, !dbg !732
  %.val8.i = load i64, ptr %i.r, align 8, !dbg !732, !noalias !733, !noundef !14
  %i.s = add i64 %.val8.i, %.sroa.01.0.i336, !dbg !736 ; 3 uses
  %i.t = icmp ult i64 %i.s, %.sroa.01.0.i336, !dbg !736
  br i1 %i.t, label %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldjNCINvNtNtB1s_8adapters3map12map_try_foldRBJ_jjINtNtBa_6option6OptionjENCNCINvNtBN_3str17join_generic_copyehBJ_Es_00NvMs9_NtBa_3numj11checked_addE0B2V_ECsdq8xsXUia3c_10grep_regex.exit, label %.preheader241, !dbg !732

.preheader241._crit_edge:                         ; preds = %.preheader241, %.preheader241.preheader
  %.sroa.01.0.i.lcssa = phi i64 [ %i.l, %.preheader241.preheader ], [ %i.s, %.preheader241 ], !dbg !748 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !749
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !751
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.sroa.01.0.i.lcssa, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !dbg !751
  %i.u = load i64, ptr %i.a, align 8, !dbg !751, !range !760, !noundef !14
  %i.v = trunc nuw i64 %i.u to i1, !dbg !761
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !762
  %i.x = load i64, ptr %i.w, align 8, !dbg !762, !range !763, !noundef !14 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !762 ; 2 uses
  br i1 %i.v, label %bb.c, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdq8xsXUia3c_10grep_regex.exit, !dbg !761, !prof !58

bb.c:                                             ; preds = %.preheader241._crit_edge
  %i.z = load i64, ptr %i.y, align 8, !dbg !764
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.x, i64 %i.z) #20, !dbg !765
  unreachable, !dbg !765

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdq8xsXUia3c_10grep_regex.exit: ; preds = %.preheader241._crit_edge
  %i.aa = load ptr, ptr %i.y, align 8, !dbg !767, !nonnull !14, !noundef !14
  %i.ab = icmp ule i64 %.sroa.01.0.i.lcssa, %i.x, !dbg !768
  tail call void @llvm.assume(i1 %i.ab), !dbg !772
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !777
  store i64 %i.x, ptr %i.b, align 8, !dbg !778
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !778 ; 2 uses
  store ptr %i.aa, ptr %i.ac, align 8, !dbg !778
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !778 ; 3 uses
  store i64 0, ptr %i.ad, align 8, !dbg !778
  %i.ae = getelementptr inbounds nuw i8, ptr %.val, i64 %.val82, !dbg !779
  invoke void @_RNvXs2_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhEE11spec_extendCsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull %.val, ptr noundef nonnull %i.ae)
          to label %bb.e unwind label %bb.d, !dbg !793

_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldjNCINvNtNtB1s_8adapters3map12map_try_foldRBJ_jjINtNtBa_6option6OptionjENCNCINvNtBN_3str17join_generic_copyehBJ_Es_00NvMs9_NtBa_3numj11checked_addE0B2V_ECsdq8xsXUia3c_10grep_regex.exit: ; preds = %.lr.ph337, %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 53, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #17, !dbg !794
  unreachable, !dbg !794

bb.d:                                             ; preds = %.invoke, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdq8xsXUia3c_10grep_regex.exit
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #16
          to label %bb.m unwind label %bb.l, !dbg !797

bb.e:                                             ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdq8xsXUia3c_10grep_regex.exit
  %i.ag = load i64, ptr %i.ad, align 8, !dbg !798, !noundef !14 ; 3 uses
  %i.ah = icmp sgt i64 %i.ag, -1, !dbg !801
  call void @llvm.assume(i1 %i.ah), !dbg !803
  %i.ai = load ptr, ptr %i.ac, align 8, !dbg !804, !nonnull !14, !noundef !14
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ag, !dbg !816 ; 8 uses
  %i.ak = sub i64 %.sroa.01.0.i.lcssa, %i.ag, !dbg !818 ; 14 uses
  %i.al = icmp eq i64 %2, 1, !dbg !819            ; 6 uses
  switch i64 %4, label %.preheader [
    i64 0, label %.preheader231
    i64 1, label %.preheader233
    i64 2, label %.preheader235
    i64 3, label %.preheader237
    i64 4, label %.preheader239
  ], !dbg !830

.preheader239:                                    ; preds = %bb.e
  br i1 %i.al, label %.loopexit, label %.lr.ph, !dbg !831

.preheader237:                                    ; preds = %bb.e
  br i1 %i.al, label %.loopexit, label %.lr.ph260, !dbg !839

.preheader235:                                    ; preds = %bb.e
  br i1 %i.al, label %.loopexit, label %.lr.ph265, !dbg !847

.preheader233:                                    ; preds = %bb.e
  br i1 %i.al, label %.loopexit, label %.lr.ph270, !dbg !855

.preheader231:                                    ; preds = %bb.e
  br i1 %i.al, label %.loopexit, label %.lr.ph275.preheader, !dbg !863

.lr.ph275.preheader:                              ; preds = %.preheader231
  %i.am = and i64 %2, 1, !dbg !870
  %lcmp.mod.not.not = icmp eq i64 %i.am, 0, !dbg !870
  br i1 %lcmp.mod.not.not, label %.lr.ph275.prol, label %.lr.ph275.prol.loopexit, !dbg !870

.lr.ph275.prol:                                   ; preds = %.lr.ph275.preheader
  %i.an = getelementptr i8, ptr %1, i64 40, !dbg !880
  %.sroa.012.0.val81.prol = load i64, ptr %i.an, align 8, !dbg !880, !noundef !14 ; 4 uses
  %.not.i83.prol = icmp ugt i64 %.sroa.012.0.val81.prol, %i.ak, !dbg !870
  br i1 %.not.i83.prol, label %.invoke, label %_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit90.prol, !dbg !870, !prof !58

_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit90.prol: ; preds = %.lr.ph275.prol
  %i.ao = getelementptr i8, ptr %1, i64 32, !dbg !880
  %.sroa.012.0.val.prol = load ptr, ptr %i.ao, align 8, !dbg !880, !nonnull !14, !noundef !14
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !890
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.sroa.012.0.val81.prol, !dbg !893
  %i.ar = sub nuw nsw i64 %i.ak, %.sroa.012.0.val81.prol, !dbg !900 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aj, ptr nonnull readonly align 1 %.sroa.012.0.val.prol, i64 range(i64 0, -9223372036854775808) %.sroa.012.0.val81.prol, i1 false), !dbg !901, !alias.scope !910
  br label %.lr.ph275.prol.loopexit, !dbg !870

.lr.ph275.prol.loopexit:                          ; preds = %_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit90.prol, %.lr.ph275.preheader
  %.lcssa340.unr = phi i64 [ poison, %.lr.ph275.preheader ], [ %i.ar, %_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit90.prol ]
  %.sroa.012.0274.unr = phi ptr [ %i.e, %.lr.ph275.preheader ], [ %i.ap, %_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit90.prol ]
  %.sroa.035.0273.unr = phi ptr [ %i.aj, %.lr.ph275.preheader ], [ %i.aq, %_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit90.prol ]
  %.sroa.26.0272.unr = phi i64 [ %i.ak, %.lr.ph275.preheader ], [ %i.ar, %_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit90.prol ]
  %i.as = icmp eq i64 %2, 2, !dbg !870
  br i1 %i.as, label %.loopexit, label %.lr.ph275, !dbg !870

.preheader:                                       ; preds = %bb.e
  br i1 %i.al, label %.loopexit, label %.lr.ph280, !dbg !914

.lr.ph275:                                        ; preds = %.lr.ph275.prol.loopexit, %_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit90.1
  %.sroa.012.0274 = phi ptr [ %i.az, %_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit90.1 ], [ %.sroa.012.0274.unr, %.lr.ph275.prol.loopexit ] ; 5 uses
  %.sroa.035.0273 = phi ptr [ %i.ba, %_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit90.1 ], [ %.sroa.035.0273.unr, %.lr.ph275.prol.loopexit ] ; 2 uses
  %.sroa.26.0272 = phi i64 [ %i.bb, %_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit90.1 ], [ %.sroa.26.0272.unr, %.lr.ph275.prol.loopexit ] ; 2 uses
  %i.at = getelementptr i8, ptr %.sroa.012.0274, i64 16, !dbg !880
  %.sroa.012.0.val81 = load i64, ptr %i.at, align 8, !dbg !880, !noundef !14 ; 4 uses
  %.not.i83 = icmp ugt i64 %.sroa.012.0.val81, %.sroa.26.0272, !dbg !870
  br i1 %.not.i83, label %.invoke, label %_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit90, !dbg !870, !prof !58

_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit90: ; preds = %.lr.ph275
  %i.au = getelementptr i8, ptr %.sroa.012.0274, i64 8, !dbg !880
  %.sroa.012.0.val = load ptr, ptr %i.au, align 8, !dbg !880, !nonnull !14, !noundef !14
  %i.av = sub nuw nsw i64 %.sroa.26.0272, %.sroa.012.0.val81, !dbg !900 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.035.0273, ptr nonnull readonly align 1 %.sroa.012.0.val, i64 range(i64 0, -9223372036854775808) %.sroa.012.0.val81, i1 false), !dbg !901, !alias.scope !910
  %i.aw = getelementptr i8, ptr %.sroa.012.0274, i64 40, !dbg !880
  %.sroa.012.0.val81.1 = load i64, ptr %i.aw, align 8, !dbg !880, !noundef !14 ; 4 uses
  %.not.i83.1 = icmp ugt i64 %.sroa.012.0.val81.1, %i.av, !dbg !870
  br i1 %.not.i83.1, label %.invoke, label %_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit90.1, !dbg !870, !prof !58

_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit90.1: ; preds = %_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit90
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.035.0273, i64 %.sroa.012.0.val81, !dbg !893 ; 2 uses
  %i.ay = getelementptr i8, ptr %.sroa.012.0274, i64 32, !dbg !880
  %.sroa.012.0.val.1 = load ptr, ptr %i.ay, align 8, !dbg !880, !nonnull !14, !noundef !14
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.012.0274, i64 48, !dbg !890 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.sroa.012.0.val81.1, !dbg !893
  %i.bb = sub nuw nsw i64 %i.av, %.sroa.012.0.val81.1, !dbg !900 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ax, ptr nonnull readonly align 1 %.sroa.012.0.val.1, i64 range(i64 0, -9223372036854775808) %.sroa.012.0.val81.1, i1 false), !dbg !901, !alias.scope !910
  %i.bc = icmp eq ptr %i.az, %i.c, !dbg !922
  br i1 %i.bc, label %.loopexit, label %.lr.ph275, !dbg !863

.loopexit:                                        ; preds = %_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit162, %_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit144, %_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit126, %_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit108, %.lr.ph275.prol.loopexit, %_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit90.1, %_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit180, %.preheader239, %.preheader237, %.preheader235, %.preheader233, %.preheader231, %.preheader
  %.sroa.26.1 = phi i64 [ %i.ct, %_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit180 ], [ %i.cc, %_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit144 ], [ %i.bb, %_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit90.1 ], [ %i.bl, %_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit108 ], [ %i.bu, %_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit126 ], [ %i.ak, %.preheader ], [ %i.ak, %.preheader231 ], [ %i.ak, %.preheader233 ], [ %i.ak, %.preheader235 ], [ %i.ak, %.preheader237 ], [ %i.ak, %.preheader239 ], [ %.lcssa340.unr, %.lr.ph275.prol.loopexit ], [ %i.cl, %_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit162 ], !dbg !924
  %i.bd = sub i64 %.sroa.01.0.i.lcssa, %.sroa.26.1, !dbg !927
  store i64 %i.bd, ptr %i.ad, align 8, !dbg !929
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !797
  br label %bb.k, !dbg !934

.lr.ph270:                                        ; preds = %.preheader233, %_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit108
  %.sroa.012.1269 = phi ptr [ %i.be, %_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit108 ], [ %i.e, %.preheader233 ] ; 3 uses
  %.sroa.035.2268 = phi ptr [ %i.bk, %_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit108 ], [ %i.aj, %.preheader233 ] ; 2 uses
  %.sroa.26.2267 = phi i64 [ %i.bl, %_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit108 ], [ %i.ak, %.preheader233 ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.012.1269, i64 24, !dbg !935 ; 2 uses
  %i.bf = getelementptr i8, ptr %.sroa.012.1269, i64 8, !dbg !938
  %.sroa.012.1.val = load ptr, ptr %i.bf, align 8, !dbg !938, !nonnull !14, !noundef !14
  %i.bg = getelementptr i8, ptr %.sroa.012.1269, i64 16, !dbg !938
  %.sroa.012.1.val80 = load i64, ptr %i.bg, align 8, !dbg !938, !noundef !14 ; 4 uses
  %.not.i91 = icmp eq i64 %.sroa.26.2267, 0, !dbg !945
  br i1 %.not.i91, label %.invoke, label %bb.f, !dbg !945, !prof !58

bb.f:                                             ; preds = %.lr.ph270
  %i.bh = add nsw i64 %.sroa.26.2267, -1, !dbg !950 ; 2 uses
  %i.bi = load i8, ptr %3, align 1, !dbg !952, !alias.scope !958
  store i8 %i.bi, ptr %.sroa.035.2268, align 1, !dbg !952, !alias.scope !958
  %.not.i100 = icmp ugt i64 %.sroa.012.1.val80, %i.bh, !dbg !962
  br i1 %.not.i100, label %.invoke, label %_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit108, !dbg !962, !prof !58

_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit108: ; preds = %bb.f
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.035.2268, i64 1, !dbg !967 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.sroa.012.1.val80, !dbg !969
  %i.bl = sub nuw nsw i64 %i.bh, %.sroa.012.1.val80, !dbg !972 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bj, ptr nonnull readonly align 1 %.sroa.012.1.val, i64 range(i64 0, -9223372036854775808) %.sroa.012.1.val80, i1 false), !dbg !973, !alias.scope !979
  %i.bm = icmp eq ptr %i.be, %i.c, !dbg !983
  br i1 %i.bm, label %.loopexit, label %.lr.ph270, !dbg !855

.lr.ph265:                                        ; preds = %.preheader235, %_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit126
  %.sroa.012.2264 = phi ptr [ %i.bn, %_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit126 ], [ %i.e, %.preheader235 ] ; 3 uses
  %.sroa.035.3263 = phi ptr [ %i.bt, %_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit126 ], [ %i.aj, %.preheader235 ] ; 2 uses
  %.sroa.26.3262 = phi i64 [ %i.bu, %_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit126 ], [ %i.ak, %.preheader235 ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.012.2264, i64 24, !dbg !985 ; 2 uses
  %i.bo = getelementptr i8, ptr %.sroa.012.2264, i64 8, !dbg !988
  %.sroa.012.2.val = load ptr, ptr %i.bo, align 8, !dbg !988, !nonnull !14, !noundef !14
  %i.bp = getelementptr i8, ptr %.sroa.012.2264, i64 16, !dbg !988
  %.sroa.012.2.val79 = load i64, ptr %i.bp, align 8, !dbg !988, !noundef !14 ; 4 uses
  %.not.i109 = icmp ult i64 %.sroa.26.3262, 2, !dbg !995
  br i1 %.not.i109, label %.invoke, label %bb.g, !dbg !995, !prof !58

bb.g:                                             ; preds = %.lr.ph265
  %i.bq = add nsw i64 %.sroa.26.3262, -2, !dbg !1000 ; 2 uses
  %i.br = load i16, ptr %3, align 1, !dbg !1002, !alias.scope !1008
  store i16 %i.br, ptr %.sroa.035.3263, align 1, !dbg !1002, !alias.scope !1008
  %.not.i118 = icmp ugt i64 %.sroa.012.2.val79, %i.bq, !dbg !1012
  br i1 %.not.i118, label %.invoke, label %_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit126, !dbg !1012, !prof !58

_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit126: ; preds = %bb.g
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.035.3263, i64 2, !dbg !1017 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %.sroa.012.2.val79, !dbg !1019
  %i.bu = sub nuw nsw i64 %i.bq, %.sroa.012.2.val79, !dbg !1022 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bs, ptr nonnull readonly align 1 %.sroa.012.2.val, i64 range(i64 0, -9223372036854775808) %.sroa.012.2.val79, i1 false), !dbg !1023, !alias.scope !1029
  %i.bv = icmp eq ptr %i.bn, %i.c, !dbg !1033
  br i1 %i.bv, label %.loopexit, label %.lr.ph265, !dbg !847

.lr.ph260:                                        ; preds = %.preheader237, %_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit144
  %.sroa.012.3259 = phi ptr [ %i.bw, %_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit144 ], [ %i.e, %.preheader237 ] ; 3 uses
  %.sroa.035.4258 = phi ptr [ %i.cb, %_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit144 ], [ %i.aj, %.preheader237 ] ; 2 uses
  %.sroa.26.4257 = phi i64 [ %i.cc, %_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit144 ], [ %i.ak, %.preheader237 ] ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.012.3259, i64 24, !dbg !1035 ; 2 uses
  %i.bx = getelementptr i8, ptr %.sroa.012.3259, i64 8, !dbg !1038
  %.sroa.012.3.val = load ptr, ptr %i.bx, align 8, !dbg !1038, !nonnull !14, !noundef !14
  %i.by = getelementptr i8, ptr %.sroa.012.3259, i64 16, !dbg !1038
  %.sroa.012.3.val78 = load i64, ptr %i.by, align 8, !dbg !1038, !noundef !14 ; 4 uses
  %.not.i127 = icmp ult i64 %.sroa.26.4257, 3, !dbg !1045
  br i1 %.not.i127, label %.invoke, label %bb.h, !dbg !1045, !prof !58

bb.h:                                             ; preds = %.lr.ph260
  %i.bz = add nsw i64 %.sroa.26.4257, -3, !dbg !1050 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.035.4258, ptr noundef nonnull readonly align 1 dereferenceable(3) %3, i64 range(i64 0, -9223372036854775808) 3, i1 false), !dbg !1052, !alias.scope !1058
  %.not.i136 = icmp ugt i64 %.sroa.012.3.val78, %i.bz, !dbg !1062
  br i1 %.not.i136, label %.invoke, label %_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit144, !dbg !1062, !prof !58

_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit144: ; preds = %bb.h
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.035.4258, i64 3, !dbg !1067 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.sroa.012.3.val78, !dbg !1069
  %i.cc = sub nuw nsw i64 %i.bz, %.sroa.012.3.val78, !dbg !1072 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ca, ptr nonnull readonly align 1 %.sroa.012.3.val, i64 range(i64 0, -9223372036854775808) %.sroa.012.3.val78, i1 false), !dbg !1073, !alias.scope !1079
  %i.cd = icmp eq ptr %i.bw, %i.c, !dbg !1083
  br i1 %i.cd, label %.loopexit, label %.lr.ph260, !dbg !839

.lr.ph:                                           ; preds = %.preheader239, %_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit162
  %.sroa.012.4256 = phi ptr [ %i.ce, %_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit162 ], [ %i.e, %.preheader239 ] ; 3 uses
  %.sroa.035.5255 = phi ptr [ %i.ck, %_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit162 ], [ %i.aj, %.preheader239 ] ; 2 uses
  %.sroa.26.5254 = phi i64 [ %i.cl, %_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit162 ], [ %i.ak, %.preheader239 ] ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.012.4256, i64 24, !dbg !1085 ; 2 uses
  %i.cf = getelementptr i8, ptr %.sroa.012.4256, i64 8, !dbg !1088
  %.sroa.012.4.val = load ptr, ptr %i.cf, align 8, !dbg !1088, !nonnull !14, !noundef !14
  %i.cg = getelementptr i8, ptr %.sroa.012.4256, i64 16, !dbg !1088
  %.sroa.012.4.val77 = load i64, ptr %i.cg, align 8, !dbg !1088, !noundef !14 ; 4 uses
  %.not.i145 = icmp ult i64 %.sroa.26.5254, 4, !dbg !1095
  br i1 %.not.i145, label %.invoke, label %bb.i, !dbg !1095, !prof !58

bb.i:                                             ; preds = %.lr.ph
  %i.ch = add nsw i64 %.sroa.26.5254, -4, !dbg !1100 ; 2 uses
  %i.ci = load i32, ptr %3, align 1, !dbg !1102, !alias.scope !1108
  store i32 %i.ci, ptr %.sroa.035.5255, align 1, !dbg !1102, !alias.scope !1108
  %.not.i154 = icmp ugt i64 %.sroa.012.4.val77, %i.ch, !dbg !1112
  br i1 %.not.i154, label %.invoke, label %_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit162, !dbg !1112, !prof !58

_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit162: ; preds = %bb.i
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.035.5255, i64 4, !dbg !1117 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %.sroa.012.4.val77, !dbg !1119
  %i.cl = sub nuw nsw i64 %i.ch, %.sroa.012.4.val77, !dbg !1122 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cj, ptr nonnull readonly align 1 %.sroa.012.4.val, i64 range(i64 0, -9223372036854775808) %.sroa.012.4.val77, i1 false), !dbg !1123, !alias.scope !1129
  %i.cm = icmp eq ptr %i.ce, %i.c, !dbg !1133
  br i1 %i.cm, label %.loopexit, label %.lr.ph, !dbg !831

.lr.ph280:                                        ; preds = %.preheader, %_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit180
  %.sroa.012.5279 = phi ptr [ %i.cn, %_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit180 ], [ %i.e, %.preheader ] ; 3 uses
  %.sroa.035.6278 = phi ptr [ %i.cs, %_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit180 ], [ %i.aj, %.preheader ] ; 2 uses
  %.sroa.26.6277 = phi i64 [ %i.ct, %_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit180 ], [ %i.ak, %.preheader ] ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.012.5279, i64 24, !dbg !1135 ; 2 uses
  %i.co = getelementptr i8, ptr %.sroa.012.5279, i64 8, !dbg !1138
  %.sroa.012.5.val = load ptr, ptr %i.co, align 8, !dbg !1138, !nonnull !14, !noundef !14
  %i.cp = getelementptr i8, ptr %.sroa.012.5279, i64 16, !dbg !1138
  %.sroa.012.5.val76 = load i64, ptr %i.cp, align 8, !dbg !1138, !noundef !14 ; 4 uses
  %.not.i163 = icmp ugt i64 %4, %.sroa.26.6277, !dbg !1145
  br i1 %.not.i163, label %.invoke, label %bb.j, !dbg !1145, !prof !58

bb.j:                                             ; preds = %.lr.ph280
  %i.cq = sub nuw nsw i64 %.sroa.26.6277, %4, !dbg !1150 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.035.6278, ptr nonnull readonly align 1 %3, i64 range(i64 0, -9223372036854775808) %4, i1 false), !dbg !1152, !alias.scope !1158
  %.not.i172 = icmp ugt i64 %.sroa.012.5.val76, %i.cq, !dbg !1162
  br i1 %.not.i172, label %.invoke, label %_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit180, !dbg !1162, !prof !58

.invoke:                                          ; preds = %bb.i, %.lr.ph, %bb.h, %.lr.ph260, %bb.g, %.lr.ph265, %bb.f, %.lr.ph270, %.lr.ph275.prol, %_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit90, %.lr.ph275, %bb.j, %.lr.ph280
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @5, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #17
          to label %.cont unwind label %bb.d, !dbg !1167

.cont:                                            ; preds = %.invoke
  unreachable

_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit180: ; preds = %bb.j
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.035.6278, i64 %4, !dbg !1169 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 %.sroa.012.5.val76, !dbg !1171
  %i.ct = sub nuw nsw i64 %i.cq, %.sroa.012.5.val76, !dbg !1174 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cr, ptr nonnull readonly align 1 %.sroa.012.5.val, i64 range(i64 0, -9223372036854775808) %.sroa.012.5.val76, i1 false), !dbg !1175, !alias.scope !1181
  %i.cu = icmp eq ptr %i.cn, %i.c, !dbg !1185
  br i1 %i.cu, label %.loopexit, label %.lr.ph280, !dbg !914

bb.k:                                             ; preds = %bb.n, %.loopexit
  ret void, !dbg !934

bb.l:                                             ; preds = %bb.d
  %i.cv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !dbg !1187
  unreachable, !dbg !1187

bb.m:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.af, !dbg !1187

bb.n:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8, !dbg !1188
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1188
  store ptr inttoptr (i64 1 to ptr), ptr %i.cw, align 8, !dbg !1188
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !1188
  store i64 0, ptr %i.cx, align 8, !dbg !1188
  br label %bb.k, !dbg !934
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !70 {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b, !dbg !1193

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECsdq8xsXUia3c_10grep_regex.exit unwind label %bb.d, !dbg !1194

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0), !dbg !1196
  ret void, !dbg !1193

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !dbg !1193
  unreachable, !dbg !1193

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECsdq8xsXUia3c_10grep_regex.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a, !dbg !1193
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir3HirEECsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1198 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !1199, !nonnull !14, !noundef !14 ; 7 uses
  invoke void @_RNvXsm_NtCs2G6gJ0Mq9lu_12regex_syntax3hirNtB5_3HirNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a)
          to label %bb.c unwind label %bb.b, !dbg !1200, !inline_history !1203

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7HirKindECsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a) #16
          to label %bb.d unwind label %bb.f, !dbg !1200, !inline_history !1203

bb.c:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7HirKindECsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a)
          to label %bb.g unwind label %bb.e, !dbg !1200, !inline_history !1203

bb.d:                                             ; preds = %bb.e, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.d, %bb.e ], [ %i.b, %bb.b ]
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !1200
  %.val2.i = load ptr, ptr %i.c, align 8, !dbg !1200, !alias.scope !1204, !nonnull !14, !noundef !14
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i, i64 noundef 80, i64 noundef 8) #21, !dbg !1207, !inline_history !1203
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 48, i64 noundef 8) #21, !dbg !1231
  resume { ptr, i32 } %.pn.i, !dbg !1199

bb.e:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.f:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !dbg !1200, !inline_history !1203
  unreachable, !dbg !1200

bb.g:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !1200
  %.val.i = load ptr, ptr %i.f, align 8, !dbg !1200, !alias.scope !1204, !nonnull !14, !noundef !14
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 80, i64 noundef 8) #21, !dbg !1240, !inline_history !1203
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 48, i64 noundef 8) #21, !dbg !1248
  ret void, !dbg !1199
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir8interval11IntervalSetNtBG_15ClassBytesRangeEECsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1254 {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir15ClassBytesRangeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir15ClassBytesRangeEECsdq8xsXUia3c_10grep_regex.exit unwind label %bb.b, !dbg !1255

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir15ClassBytesRangeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir15ClassBytesRangeEECsdq8xsXUia3c_10grep_regex.exit.i unwind label %bb.c, !dbg !1258

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !dbg !1255
  unreachable, !dbg !1255

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir15ClassBytesRangeEECsdq8xsXUia3c_10grep_regex.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a, !dbg !1255

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir15ClassBytesRangeEECsdq8xsXUia3c_10grep_regex.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir15ClassBytesRangeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0), !dbg !1261
  ret void, !dbg !1263
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir8interval11IntervalSetNtBG_17ClassUnicodeRangeEECsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1264 {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir17ClassUnicodeRangeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir17ClassUnicodeRangeEECsdq8xsXUia3c_10grep_regex.exit unwind label %bb.b, !dbg !1265

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir17ClassUnicodeRangeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir17ClassUnicodeRangeEECsdq8xsXUia3c_10grep_regex.exit.i unwind label %bb.c, !dbg !1268

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !dbg !1265
  unreachable, !dbg !1265

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir17ClassUnicodeRangeEECsdq8xsXUia3c_10grep_regex.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a, !dbg !1265

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir17ClassUnicodeRangeEECsdq8xsXUia3c_10grep_regex.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir17ClassUnicodeRangeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0), !dbg !1271
  ret void, !dbg !1273
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir3HirB1L_EECsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1274 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1275), !dbg !1278
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !1279, !noalias !1275
  %i.b = load ptr, ptr %0, align 8, !dbg !1285, !alias.scope !1275, !nonnull !14, !noundef !14 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !1286
  %i.d = load i64, ptr %i.c, align 8, !dbg !1286, !alias.scope !1275, !noundef !14
  store i64 %i.d, ptr %i.a, align 8, !dbg !1287, !noalias !1275
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !1287
  store ptr %i.b, ptr %i.e, align 8, !dbg !1287, !noalias !1275
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1292
  %i.g = load i64, ptr %i.f, align 8, !dbg !1292, !alias.scope !1275, !noundef !14 ; 4 uses
  %i.h = icmp eq i64 %i.g, 0, !dbg !1294
  br i1 %i.h, label %_RNvXs0_NtNtCsexYYUdYSQU6_5alloc3vec13in_place_dropINtB5_24InPlaceDstDataSrcBufDropNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir3HirB1i_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdq8xsXUia3c_10grep_regex.exit, label %.lr.ph.i.i, !dbg !1294

.lr.ph.i.i:                                       ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir3HirECsdq8xsXUia3c_10grep_regex.exit.i.i
  %.sroa.0.010.i.i = phi i64 [ %i.j, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir3HirECsdq8xsXUia3c_10grep_regex.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw [48 x i8], ptr %i.b, i64 %.sroa.0.010.i.i, !dbg !1294 ; 5 uses
  %i.j = add nuw nsw i64 %.sroa.0.010.i.i, 1, !dbg !1294 ; 4 uses
  invoke void @_RNvXsm_NtCs2G6gJ0Mq9lu_12regex_syntax3hirNtB5_3HirNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.i)
          to label %bb.c unwind label %bb.b, !dbg !1301, !noalias !1275, !inline_history !1203

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7HirKindECsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.i) #16
          to label %.body.i.i unwind label %bb.e, !dbg !1301, !noalias !1275, !inline_history !1203

bb.c:                                             ; preds = %.lr.ph.i.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7HirKindECsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir3HirECsdq8xsXUia3c_10grep_regex.exit.i.i unwind label %bb.d, !dbg !1301, !noalias !1275, !inline_history !1203

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.e:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !dbg !1301, !noalias !1275, !inline_history !1203
  unreachable, !dbg !1301

.body.i.i:                                        ; preds = %bb.d, %bb.b
  %.pn.i.i.i = phi { ptr, i32 } [ %i.l, %bb.d ], [ %i.k, %bb.b ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 40, !dbg !1301
  %.val2.i.i.i = load ptr, ptr %i.n, align 8, !dbg !1301, !alias.scope !1303, !noalias !1275, !nonnull !14, !noundef !14
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i.i, i64 noundef 80, i64 noundef 8) #21, !dbg !1308, !noalias !1275, !inline_history !1203
  %i.o = icmp eq i64 %i.j, %i.g, !dbg !1294
end_hunk_0
