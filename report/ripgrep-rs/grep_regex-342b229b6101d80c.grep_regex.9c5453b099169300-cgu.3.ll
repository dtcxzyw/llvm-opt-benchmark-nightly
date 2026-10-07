Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ripgrep-rs/original/grep_regex-342b229b6101d80c.grep_regex.9c5453b099169300-cgu.3?download=true
inline.NumInlined: 196
inline.NumDeleted: 116
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvMs0_NtNtCs2G6gJ0Mq9lu_12regex_syntax3hir8intervalINtB6_11IntervalSetNtB8_17ClassUnicodeRangeE3newINtNtCskKLDkoKarTP_4core6option6OptionB18_EECsdq8xsXUia3c_10grep_regex:bb.a

.loopexit.split-lp.loopexit:                      ; preds = %bb.c
  %lpad.loopexit8 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.m, %.noexc3, %bb.g, %bb.e
  %lpad.loopexit.split-lp9 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit8, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp9, %.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir8interval11IntervalSetNtBG_17ClassUnicodeRangeEECsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef align 8 dereferenceable(32) %i.c) #16
          to label %bb.o unwind label %bb.n, !dbg !649

_RNvMs0_NtNtCs2G6gJ0Mq9lu_12regex_syntax3hir8intervalINtB5_11IntervalSetNtB7_17ClassUnicodeRangeE12canonicalizeCsdq8xsXUia3c_10grep_regex.exit: ; preds = %bb.b, %bb.a, %.noexc4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false), !dbg !650
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !649
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !651
  ret void, !dbg !652

bb.n:                                             ; preds = %.loopexit.split-lp
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !dbg !653
  unreachable, !dbg !653

bb.o:                                             ; preds = %.loopexit.split-lp
  resume { ptr, i32 } %lpad.phi, !dbg !653
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs40PPaThNnQP_3log13___private_api3loguNtB2_12GlobalLoggerECsdq8xsXUia3c_10grep_regex(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef range(i64 1, 6) %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !654 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [96 x i8], align 8                ; 16 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !674), !dbg !682
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 32, !dbg !683
  %i.d = load ptr, ptr %i.c, align 8, !dbg !683, !alias.scope !674, !nonnull !41, !align !128, !noundef !41 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !684
  %i.f = load i64, ptr %i.e, align 8, !dbg !684, !alias.scope !674, !noundef !41
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !684
  %i.h = load ptr, ptr %i.g, align 8, !dbg !684, !alias.scope !674, !nonnull !41, !noundef !41
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !685
  %i.j = load i64, ptr %i.i, align 8, !dbg !685, !alias.scope !674, !noundef !41
  %i.k = load ptr, ptr %3, align 8, !dbg !685, !alias.scope !674, !nonnull !41, !noundef !41
  %i.l = load ptr, ptr %i.d, align 8, !dbg !686, !noalias !674, !nonnull !41, !noundef !41
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !686
  %i.n = load i64, ptr %i.m, align 8, !dbg !686, !noalias !674, !noundef !41
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !687
  %i.p = load i32, ptr %i.o, align 8, !dbg !687, !noalias !674, !noundef !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !688, !noalias !674
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !689
  store i64 %2, ptr %i.q, align 8, !dbg !689, !noalias !674
  %.sroa.422.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !689
  store ptr %i.k, ptr %.sroa.422.0..sroa_idx.i, align 8, !dbg !689, !noalias !674
  %.sroa.523.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64, !dbg !689
  store i64 %i.j, ptr %.sroa.523.0..sroa_idx.i, align 8, !dbg !689, !noalias !674
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 80, !dbg !689
  store ptr %0, ptr %i.r, align 8, !dbg !689, !noalias !674
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 88, !dbg !689
  store ptr %1, ptr %i.s, align 8, !dbg !689, !noalias !674
  store i64 0, ptr %i.b, align 8, !dbg !689, !noalias !674
  %.sroa.428.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !689
  store ptr %i.h, ptr %.sroa.428.0..sroa_idx.i, align 8, !dbg !689, !noalias !674
  %.sroa.529.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !689
  store i64 %i.f, ptr %.sroa.529.0..sroa_idx.i, align 8, !dbg !689, !noalias !674
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !689
  store i64 0, ptr %i.t, align 8, !dbg !689, !noalias !674
  %.sroa.434.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !689
  store ptr %i.l, ptr %.sroa.434.0..sroa_idx.i, align 8, !dbg !689, !noalias !674
  %.sroa.535.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !689
  store i64 %i.n, ptr %.sroa.535.0..sroa_idx.i, align 8, !dbg !689, !noalias !674
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 72, !dbg !689
  store i32 1, ptr %i.u, align 8, !dbg !689, !noalias !674
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 76, !dbg !689
  store i32 %i.p, ptr %i.v, align 4, !dbg !689, !noalias !674
  call void @_RNvXs0_NtCs40PPaThNnQP_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log3log(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.b), !dbg !690, !noalias !674
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !691, !noalias !674
  ret void, !dbg !692
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsexYYUdYSQU6_5alloc3str17join_generic_copyehNtNtB4_6string6StringECsdq8xsXUia3c_10grep_regex(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) %1, i64 noundef range(i64 0, 384307168202282326) %2, ptr noalias nofree noundef nonnull readonly captures(none) %3, i64 noundef range(i64 0, -9223372036854775808) %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !693 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %.idx = mul nuw nsw i64 %2, 24, !dbg !1119      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %.idx, !dbg !1119 ; 7 uses
  %i.d = icmp eq i64 %2, 0, !dbg !1120
  br i1 %i.d, label %bb.n, label %bb.b, !dbg !966

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !1121 ; 7 uses
  %i.f = getelementptr i8, ptr %1, i64 8, !dbg !1122
  %.val = load ptr, ptr %i.f, align 8, !dbg !1122, !nonnull !41, !noundef !41 ; 2 uses
  %i.g = getelementptr i8, ptr %1, i64 16, !dbg !1122
  %.val82 = load i64, ptr %i.g, align 8, !dbg !1122, !noundef !41 ; 2 uses
  %gepdiff = add nsw i64 %.idx, -24, !dbg !1123
  %i.h = udiv exact i64 %gepdiff, 24, !dbg !1123
  %i.i = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %4, i64 %i.h), !dbg !1124 ; 2 uses
  %i.j = extractvalue { i64, i1 } %i.i, 1, !dbg !1124
  %i.k = extractvalue { i64, i1 } %i.i, 0         ; 2 uses
  %i.l = add i64 %.val82, %i.k                    ; 3 uses
  %i.m = icmp ult i64 %i.l, %i.k
  %or.cond = or i1 %i.j, %i.m, !dbg !1125
  br i1 %or.cond, label %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldjNCINvNtNtB1s_8adapters3map12map_try_foldRBJ_jjINtNtBa_6option6OptionjENCNCINvNtBN_3str17join_generic_copyehBJ_Es_00NvMs9_NtBa_3numj11checked_addE0B2V_ECsdq8xsXUia3c_10grep_regex.exit, label %.preheader241.preheader, !dbg !1125, !prof !974

.preheader241.preheader:                          ; preds = %bb.b
  %i.n = icmp eq i64 %2, 1, !dbg !1126
  br i1 %i.n, label %.preheader241._crit_edge, label %.lr.ph337, !dbg !1127

.preheader241:                                    ; preds = %.lr.ph337
  %i.o = getelementptr inbounds nuw i8, ptr %i.q, i64 24, !dbg !1128 ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.c, !dbg !1126
  br i1 %i.p, label %.preheader241._crit_edge, label %.lr.ph337, !dbg !1127

.lr.ph337:                                        ; preds = %.preheader241.preheader, %.preheader241
  %.sroa.01.0.i336 = phi i64 [ %i.s, %.preheader241 ], [ %i.l, %.preheader241.preheader ] ; 2 uses
  %i.q = phi ptr [ %i.o, %.preheader241 ], [ %i.e, %.preheader241.preheader ] ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 16, !dbg !1129
  %.val8.i = load i64, ptr %i.r, align 8, !dbg !1129, !noalias !984, !noundef !41
  %i.s = add i64 %.val8.i, %.sroa.01.0.i336, !dbg !1130 ; 3 uses
  %i.t = icmp ult i64 %i.s, %.sroa.01.0.i336, !dbg !1130
  br i1 %i.t, label %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldjNCINvNtNtB1s_8adapters3map12map_try_foldRBJ_jjINtNtBa_6option6OptionjENCNCINvNtBN_3str17join_generic_copyehBJ_Es_00NvMs9_NtBa_3numj11checked_addE0B2V_ECsdq8xsXUia3c_10grep_regex.exit, label %.preheader241, !dbg !1129

.preheader241._crit_edge:                         ; preds = %.preheader241, %.preheader241.preheader
  %.sroa.01.0.i.lcssa = phi i64 [ %i.l, %.preheader241.preheader ], [ %i.s, %.preheader241 ], !dbg !1131 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !1132
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !1133
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.sroa.01.0.i.lcssa, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !dbg !1133
  %i.u = load i64, ptr %i.a, align 8, !dbg !1133, !range !989, !noundef !41
  %i.v = trunc nuw i64 %i.u to i1, !dbg !1134
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !1135
  %i.x = load i64, ptr %i.w, align 8, !dbg !1135, !range !990, !noundef !41 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !1135 ; 2 uses
  br i1 %i.v, label %bb.c, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdq8xsXUia3c_10grep_regex.exit, !dbg !1134, !prof !53

bb.c:                                             ; preds = %.preheader241._crit_edge
  %i.z = load i64, ptr %i.y, align 8, !dbg !1136
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.x, i64 %i.z) #20, !dbg !1137
  unreachable, !dbg !1137

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdq8xsXUia3c_10grep_regex.exit: ; preds = %.preheader241._crit_edge
  %i.aa = load ptr, ptr %i.y, align 8, !dbg !1138, !nonnull !41, !noundef !41
  %i.ab = icmp ule i64 %.sroa.01.0.i.lcssa, %i.x, !dbg !1139
  tail call void @llvm.assume(i1 %i.ab), !dbg !1140
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !1141
  store i64 %i.x, ptr %i.b, align 8, !dbg !1142
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !1142 ; 2 uses
  store ptr %i.aa, ptr %i.ac, align 8, !dbg !1142
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !1142 ; 3 uses
  store i64 0, ptr %i.ad, align 8, !dbg !1142
  %i.ae = getelementptr inbounds nuw i8, ptr %.val, i64 %.val82, !dbg !1143
  invoke void @_RNvXs2_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhEE11spec_extendCsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull %.val, ptr noundef nonnull %i.ae)
          to label %bb.e unwind label %bb.d, !dbg !1144

_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldjNCINvNtNtB1s_8adapters3map12map_try_foldRBJ_jjINtNtBa_6option6OptionjENCNCINvNtBN_3str17join_generic_copyehBJ_Es_00NvMs9_NtBa_3numj11checked_addE0B2V_ECsdq8xsXUia3c_10grep_regex.exit: ; preds = %.lr.ph337, %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 53, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #17, !dbg !1145
  unreachable, !dbg !1145

bb.d:                                             ; preds = %.invoke, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdq8xsXUia3c_10grep_regex.exit
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #16
          to label %bb.m unwind label %bb.l, !dbg !1146

bb.e:                                             ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdq8xsXUia3c_10grep_regex.exit
  %i.ag = load i64, ptr %i.ad, align 8, !dbg !1147, !noundef !41 ; 3 uses
  %i.ah = icmp sgt i64 %i.ag, -1, !dbg !1148
  call void @llvm.assume(i1 %i.ah), !dbg !1149
  %i.ai = load ptr, ptr %i.ac, align 8, !dbg !1150, !nonnull !41, !noundef !41
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ag, !dbg !1151 ; 8 uses
  %i.ak = sub i64 %.sroa.01.0.i.lcssa, %i.ag, !dbg !1152 ; 14 uses
  %i.al = icmp eq i64 %2, 1, !dbg !1153           ; 6 uses
  switch i64 %4, label %.preheader [
    i64 0, label %.preheader231
    i64 1, label %.preheader233
    i64 2, label %.preheader235
    i64 3, label %.preheader237
    i64 4, label %.preheader239
  ], !dbg !1154

.preheader239:                                    ; preds = %bb.e
  br i1 %i.al, label %.loopexit, label %.lr.ph, !dbg !1155

.preheader237:                                    ; preds = %bb.e
  br i1 %i.al, label %.loopexit, label %.lr.ph260, !dbg !1156

.preheader235:                                    ; preds = %bb.e
  br i1 %i.al, label %.loopexit, label %.lr.ph265, !dbg !1157

.preheader233:                                    ; preds = %bb.e
  br i1 %i.al, label %.loopexit, label %.lr.ph270, !dbg !1158

.preheader231:                                    ; preds = %bb.e
  br i1 %i.al, label %.loopexit, label %.lr.ph275.preheader, !dbg !1159

.lr.ph275.preheader:                              ; preds = %.preheader231
  %5 = trunc i64 %2 to i1, !dbg !1160
  br i1 %5, label %.lr.ph275.prol.loopexit, label %.lr.ph275.prol, !dbg !1160

.lr.ph275.prol:                                   ; preds = %.lr.ph275.preheader
  %i.am = getelementptr i8, ptr %1, i64 40, !dbg !1161
  %.sroa.012.0.val81.prol = load i64, ptr %i.am, align 8, !dbg !1161, !noundef !41 ; 4 uses
  %.not.i83.prol = icmp ugt i64 %.sroa.012.0.val81.prol, %i.ak, !dbg !1160
  br i1 %.not.i83.prol, label %.invoke, label %_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit90.prol, !dbg !1160, !prof !53

_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit90.prol: ; preds = %.lr.ph275.prol
  %i.an = getelementptr i8, ptr %1, i64 32, !dbg !1161
  %.sroa.012.0.val.prol = load ptr, ptr %i.an, align 8, !dbg !1161, !nonnull !41, !noundef !41
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !1162
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.sroa.012.0.val81.prol, !dbg !1163
  %i.aq = sub nuw nsw i64 %i.ak, %.sroa.012.0.val81.prol, !dbg !1164 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aj, ptr nonnull readonly align 1 %.sroa.012.0.val.prol, i64 range(i64 0, -9223372036854775808) %.sroa.012.0.val81.prol, i1 false), !dbg !1165, !alias.scope !1036
  br label %.lr.ph275.prol.loopexit, !dbg !1160

.lr.ph275.prol.loopexit:                          ; preds = %_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit90.prol, %.lr.ph275.preheader
  %.lcssa340.unr = phi i64 [ poison, %.lr.ph275.preheader ], [ %i.aq, %_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit90.prol ]
  %.sroa.012.0274.unr = phi ptr [ %i.e, %.lr.ph275.preheader ], [ %i.ao, %_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit90.prol ]
  %.sroa.035.0273.unr = phi ptr [ %i.aj, %.lr.ph275.preheader ], [ %i.ap, %_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit90.prol ]
  %.sroa.26.0272.unr = phi i64 [ %i.ak, %.lr.ph275.preheader ], [ %i.aq, %_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit90.prol ]
  %i.ar = icmp eq i64 %2, 2, !dbg !1160
  br i1 %i.ar, label %.loopexit, label %.lr.ph275, !dbg !1160

.preheader:                                       ; preds = %bb.e
  br i1 %i.al, label %.loopexit, label %.lr.ph280, !dbg !1166

.lr.ph275:                                        ; preds = %.lr.ph275.prol.loopexit, %_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit90.1
  %.sroa.012.0274 = phi ptr [ %i.ay, %_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit90.1 ], [ %.sroa.012.0274.unr, %.lr.ph275.prol.loopexit ] ; 5 uses
  %.sroa.035.0273 = phi ptr [ %i.az, %_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit90.1 ], [ %.sroa.035.0273.unr, %.lr.ph275.prol.loopexit ] ; 2 uses
  %.sroa.26.0272 = phi i64 [ %i.ba, %_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit90.1 ], [ %.sroa.26.0272.unr, %.lr.ph275.prol.loopexit ] ; 2 uses
  %i.as = getelementptr i8, ptr %.sroa.012.0274, i64 16, !dbg !1161
  %.sroa.012.0.val81 = load i64, ptr %i.as, align 8, !dbg !1161, !noundef !41 ; 4 uses
  %.not.i83 = icmp ugt i64 %.sroa.012.0.val81, %.sroa.26.0272, !dbg !1160
  br i1 %.not.i83, label %.invoke, label %_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit90, !dbg !1160, !prof !53

_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit90: ; preds = %.lr.ph275
  %i.at = getelementptr i8, ptr %.sroa.012.0274, i64 8, !dbg !1161
  %.sroa.012.0.val = load ptr, ptr %i.at, align 8, !dbg !1161, !nonnull !41, !noundef !41
  %i.au = sub nuw nsw i64 %.sroa.26.0272, %.sroa.012.0.val81, !dbg !1164 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.035.0273, ptr nonnull readonly align 1 %.sroa.012.0.val, i64 range(i64 0, -9223372036854775808) %.sroa.012.0.val81, i1 false), !dbg !1165, !alias.scope !1036
  %i.av = getelementptr i8, ptr %.sroa.012.0274, i64 40, !dbg !1161
  %.sroa.012.0.val81.1 = load i64, ptr %i.av, align 8, !dbg !1161, !noundef !41 ; 4 uses
  %.not.i83.1 = icmp ugt i64 %.sroa.012.0.val81.1, %i.au, !dbg !1160
  br i1 %.not.i83.1, label %.invoke, label %_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit90.1, !dbg !1160, !prof !53

_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit90.1: ; preds = %_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit90
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.035.0273, i64 %.sroa.012.0.val81, !dbg !1163 ; 2 uses
  %i.ax = getelementptr i8, ptr %.sroa.012.0274, i64 32, !dbg !1161
  %.sroa.012.0.val.1 = load ptr, ptr %i.ax, align 8, !dbg !1161, !nonnull !41, !noundef !41
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.012.0274, i64 48, !dbg !1162 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.sroa.012.0.val81.1, !dbg !1163
  %i.ba = sub nuw nsw i64 %i.au, %.sroa.012.0.val81.1, !dbg !1164 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aw, ptr nonnull readonly align 1 %.sroa.012.0.val.1, i64 range(i64 0, -9223372036854775808) %.sroa.012.0.val81.1, i1 false), !dbg !1165, !alias.scope !1036
  %i.bb = icmp eq ptr %i.ay, %i.c, !dbg !1167
  br i1 %i.bb, label %.loopexit, label %.lr.ph275, !dbg !1159

.loopexit:                                        ; preds = %_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit162, %_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit144, %_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit126, %_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit108, %.lr.ph275.prol.loopexit, %_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit90.1, %_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit180, %.preheader239, %.preheader237, %.preheader235, %.preheader233, %.preheader231, %.preheader
  %.sroa.26.1 = phi i64 [ %i.cs, %_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit180 ], [ %i.cb, %_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit144 ], [ %i.ba, %_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit90.1 ], [ %i.bk, %_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit108 ], [ %i.bt, %_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit126 ], [ %i.ak, %.preheader ], [ %i.ak, %.preheader231 ], [ %i.ak, %.preheader233 ], [ %i.ak, %.preheader235 ], [ %i.ak, %.preheader237 ], [ %i.ak, %.preheader239 ], [ %.lcssa340.unr, %.lr.ph275.prol.loopexit ], [ %i.ck, %_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit162 ], !dbg !1168
  %i.bc = sub i64 %.sroa.01.0.i.lcssa, %.sroa.26.1, !dbg !1169
  store i64 %i.bc, ptr %i.ad, align 8, !dbg !1170
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !1171
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !1146
  br label %bb.k, !dbg !1172

.lr.ph270:                                        ; preds = %.preheader233, %_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit108
  %.sroa.012.1269 = phi ptr [ %i.bd, %_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit108 ], [ %i.e, %.preheader233 ] ; 3 uses
  %.sroa.035.2268 = phi ptr [ %i.bj, %_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit108 ], [ %i.aj, %.preheader233 ] ; 2 uses
  %.sroa.26.2267 = phi i64 [ %i.bk, %_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit108 ], [ %i.ak, %.preheader233 ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.012.1269, i64 24, !dbg !1173 ; 2 uses
  %i.be = getelementptr i8, ptr %.sroa.012.1269, i64 8, !dbg !1174
  %.sroa.012.1.val = load ptr, ptr %i.be, align 8, !dbg !1174, !nonnull !41, !noundef !41
  %i.bf = getelementptr i8, ptr %.sroa.012.1269, i64 16, !dbg !1174
  %.sroa.012.1.val80 = load i64, ptr %i.bf, align 8, !dbg !1174, !noundef !41 ; 4 uses
  %.not.i91 = icmp eq i64 %.sroa.26.2267, 0, !dbg !1175
  br i1 %.not.i91, label %.invoke, label %bb.f, !dbg !1175, !prof !53

bb.f:                                             ; preds = %.lr.ph270
  %i.bg = add nsw i64 %.sroa.26.2267, -1, !dbg !1176 ; 2 uses
  %i.bh = load i8, ptr %3, align 1, !dbg !1177, !alias.scope !1053
  store i8 %i.bh, ptr %.sroa.035.2268, align 1, !dbg !1177, !alias.scope !1053
  %.not.i100 = icmp ugt i64 %.sroa.012.1.val80, %i.bg, !dbg !1178
  br i1 %.not.i100, label %.invoke, label %_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit108, !dbg !1178, !prof !53

_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit108: ; preds = %bb.f
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.035.2268, i64 1, !dbg !1179 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.sroa.012.1.val80, !dbg !1180
  %i.bk = sub nuw nsw i64 %i.bg, %.sroa.012.1.val80, !dbg !1181 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bi, ptr nonnull readonly align 1 %.sroa.012.1.val, i64 range(i64 0, -9223372036854775808) %.sroa.012.1.val80, i1 false), !dbg !1182, !alias.scope !1056
  %i.bl = icmp eq ptr %i.bd, %i.c, !dbg !1183
  br i1 %i.bl, label %.loopexit, label %.lr.ph270, !dbg !1158

.lr.ph265:                                        ; preds = %.preheader235, %_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit126
  %.sroa.012.2264 = phi ptr [ %i.bm, %_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit126 ], [ %i.e, %.preheader235 ] ; 3 uses
  %.sroa.035.3263 = phi ptr [ %i.bs, %_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit126 ], [ %i.aj, %.preheader235 ] ; 2 uses
  %.sroa.26.3262 = phi i64 [ %i.bt, %_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit126 ], [ %i.ak, %.preheader235 ] ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.012.2264, i64 24, !dbg !1184 ; 2 uses
  %i.bn = getelementptr i8, ptr %.sroa.012.2264, i64 8, !dbg !1185
  %.sroa.012.2.val = load ptr, ptr %i.bn, align 8, !dbg !1185, !nonnull !41, !noundef !41
  %i.bo = getelementptr i8, ptr %.sroa.012.2264, i64 16, !dbg !1185
  %.sroa.012.2.val79 = load i64, ptr %i.bo, align 8, !dbg !1185, !noundef !41 ; 4 uses
  %.not.i109 = icmp ult i64 %.sroa.26.3262, 2, !dbg !1186
  br i1 %.not.i109, label %.invoke, label %bb.g, !dbg !1186, !prof !53

bb.g:                                             ; preds = %.lr.ph265
  %i.bp = add nsw i64 %.sroa.26.3262, -2, !dbg !1187 ; 2 uses
  %i.bq = load i16, ptr %3, align 1, !dbg !1188, !alias.scope !1067
  store i16 %i.bq, ptr %.sroa.035.3263, align 1, !dbg !1188, !alias.scope !1067
  %.not.i118 = icmp ugt i64 %.sroa.012.2.val79, %i.bp, !dbg !1189
  br i1 %.not.i118, label %.invoke, label %_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit126, !dbg !1189, !prof !53

_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit126: ; preds = %bb.g
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.035.3263, i64 2, !dbg !1190 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %.sroa.012.2.val79, !dbg !1191
  %i.bt = sub nuw nsw i64 %i.bp, %.sroa.012.2.val79, !dbg !1192 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.br, ptr nonnull readonly align 1 %.sroa.012.2.val, i64 range(i64 0, -9223372036854775808) %.sroa.012.2.val79, i1 false), !dbg !1193, !alias.scope !1070
  %i.bu = icmp eq ptr %i.bm, %i.c, !dbg !1194
  br i1 %i.bu, label %.loopexit, label %.lr.ph265, !dbg !1157

.lr.ph260:                                        ; preds = %.preheader237, %_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit144
  %.sroa.012.3259 = phi ptr [ %i.bv, %_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit144 ], [ %i.e, %.preheader237 ] ; 3 uses
  %.sroa.035.4258 = phi ptr [ %i.ca, %_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit144 ], [ %i.aj, %.preheader237 ] ; 2 uses
  %.sroa.26.4257 = phi i64 [ %i.cb, %_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit144 ], [ %i.ak, %.preheader237 ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.012.3259, i64 24, !dbg !1195 ; 2 uses
  %i.bw = getelementptr i8, ptr %.sroa.012.3259, i64 8, !dbg !1196
  %.sroa.012.3.val = load ptr, ptr %i.bw, align 8, !dbg !1196, !nonnull !41, !noundef !41
  %i.bx = getelementptr i8, ptr %.sroa.012.3259, i64 16, !dbg !1196
  %.sroa.012.3.val78 = load i64, ptr %i.bx, align 8, !dbg !1196, !noundef !41 ; 4 uses
  %.not.i127 = icmp ult i64 %.sroa.26.4257, 3, !dbg !1197
  br i1 %.not.i127, label %.invoke, label %bb.h, !dbg !1197, !prof !53

bb.h:                                             ; preds = %.lr.ph260
  %i.by = add nsw i64 %.sroa.26.4257, -3, !dbg !1198 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.035.4258, ptr noundef nonnull readonly align 1 dereferenceable(3) %3, i64 range(i64 0, -9223372036854775808) 3, i1 false), !dbg !1199, !alias.scope !1081
  %.not.i136 = icmp ugt i64 %.sroa.012.3.val78, %i.by, !dbg !1200
  br i1 %.not.i136, label %.invoke, label %_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit144, !dbg !1200, !prof !53

_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit144: ; preds = %bb.h
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.035.4258, i64 3, !dbg !1201 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %.sroa.012.3.val78, !dbg !1202
  %i.cb = sub nuw nsw i64 %i.by, %.sroa.012.3.val78, !dbg !1203 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bz, ptr nonnull readonly align 1 %.sroa.012.3.val, i64 range(i64 0, -9223372036854775808) %.sroa.012.3.val78, i1 false), !dbg !1204, !alias.scope !1084
  %i.cc = icmp eq ptr %i.bv, %i.c, !dbg !1205
  br i1 %i.cc, label %.loopexit, label %.lr.ph260, !dbg !1156

.lr.ph:                                           ; preds = %.preheader239, %_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit162
  %.sroa.012.4256 = phi ptr [ %i.cd, %_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit162 ], [ %i.e, %.preheader239 ] ; 3 uses
  %.sroa.035.5255 = phi ptr [ %i.cj, %_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit162 ], [ %i.aj, %.preheader239 ] ; 2 uses
  %.sroa.26.5254 = phi i64 [ %i.ck, %_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit162 ], [ %i.ak, %.preheader239 ] ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.012.4256, i64 24, !dbg !1206 ; 2 uses
  %i.ce = getelementptr i8, ptr %.sroa.012.4256, i64 8, !dbg !1207
  %.sroa.012.4.val = load ptr, ptr %i.ce, align 8, !dbg !1207, !nonnull !41, !noundef !41
  %i.cf = getelementptr i8, ptr %.sroa.012.4256, i64 16, !dbg !1207
  %.sroa.012.4.val77 = load i64, ptr %i.cf, align 8, !dbg !1207, !noundef !41 ; 4 uses
  %.not.i145 = icmp ult i64 %.sroa.26.5254, 4, !dbg !1208
  br i1 %.not.i145, label %.invoke, label %bb.i, !dbg !1208, !prof !53

bb.i:                                             ; preds = %.lr.ph
  %i.cg = add nsw i64 %.sroa.26.5254, -4, !dbg !1209 ; 2 uses
  %i.ch = load i32, ptr %3, align 1, !dbg !1210, !alias.scope !1095
  store i32 %i.ch, ptr %.sroa.035.5255, align 1, !dbg !1210, !alias.scope !1095
  %.not.i154 = icmp ugt i64 %.sroa.012.4.val77, %i.cg, !dbg !1211
  br i1 %.not.i154, label %.invoke, label %_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit162, !dbg !1211, !prof !53

_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit162: ; preds = %bb.i
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.035.5255, i64 4, !dbg !1212 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %.sroa.012.4.val77, !dbg !1213
  %i.ck = sub nuw nsw i64 %i.cg, %.sroa.012.4.val77, !dbg !1214 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ci, ptr nonnull readonly align 1 %.sroa.012.4.val, i64 range(i64 0, -9223372036854775808) %.sroa.012.4.val77, i1 false), !dbg !1215, !alias.scope !1098
  %i.cl = icmp eq ptr %i.cd, %i.c, !dbg !1216
  br i1 %i.cl, label %.loopexit, label %.lr.ph, !dbg !1155

.lr.ph280:                                        ; preds = %.preheader, %_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit180
  %.sroa.012.5279 = phi ptr [ %i.cm, %_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit180 ], [ %i.e, %.preheader ] ; 3 uses
  %.sroa.035.6278 = phi ptr [ %i.cr, %_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit180 ], [ %i.aj, %.preheader ] ; 2 uses
  %.sroa.26.6277 = phi i64 [ %i.cs, %_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit180 ], [ %i.ak, %.preheader ] ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.012.5279, i64 24, !dbg !1217 ; 2 uses
  %i.cn = getelementptr i8, ptr %.sroa.012.5279, i64 8, !dbg !1218
  %.sroa.012.5.val = load ptr, ptr %i.cn, align 8, !dbg !1218, !nonnull !41, !noundef !41
  %i.co = getelementptr i8, ptr %.sroa.012.5279, i64 16, !dbg !1218
  %.sroa.012.5.val76 = load i64, ptr %i.co, align 8, !dbg !1218, !noundef !41 ; 4 uses
  %.not.i163 = icmp ugt i64 %4, %.sroa.26.6277, !dbg !1219
  br i1 %.not.i163, label %.invoke, label %bb.j, !dbg !1219, !prof !53

bb.j:                                             ; preds = %.lr.ph280
  %i.cp = sub nuw nsw i64 %.sroa.26.6277, %4, !dbg !1220 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.035.6278, ptr nonnull readonly align 1 %3, i64 range(i64 0, -9223372036854775808) %4, i1 false), !dbg !1221, !alias.scope !1109
  %.not.i172 = icmp ugt i64 %.sroa.012.5.val76, %i.cp, !dbg !1222
  br i1 %.not.i172, label %.invoke, label %_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit180, !dbg !1222, !prof !53

.invoke:                                          ; preds = %bb.i, %.lr.ph, %bb.h, %.lr.ph260, %bb.g, %.lr.ph265, %bb.f, %.lr.ph270, %.lr.ph275.prol, %_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit90, %.lr.ph275, %bb.j, %.lr.ph280
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @5, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #17
          to label %.cont unwind label %bb.d, !dbg !1223

.cont:                                            ; preds = %.invoke
  unreachable

_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsdq8xsXUia3c_10grep_regex.exit180: ; preds = %bb.j
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.035.6278, i64 %4, !dbg !1224 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 %.sroa.012.5.val76, !dbg !1225
end_hunk_0
begin_hunk_1_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir3HirB1L_EECsdq8xsXUia3c_10grep_regex:bb.a
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i.i, i64 noundef 80, i64 noundef 8) #21, !dbg !1336, !noalias !1325, !inline_history !140
  %i.o = icmp eq i64 %i.j, %i.g, !dbg !1334
  br i1 %i.o, label %.body.i, label %.lr.ph, !dbg !1334

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir3HirECsdq8xsXUia3c_10grep_regex.exit.i.i: ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 40, !dbg !1335
  %.val.i.i.i = load ptr, ptr %i.p, align 8, !dbg !1335, !alias.scope !1327, !noalias !1325, !nonnull !41, !noundef !41
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef 80, i64 noundef 8) #21, !dbg !1337, !noalias !1325, !inline_history !140
  %i.q = icmp eq i64 %i.j, %i.g, !dbg !1334
  br i1 %i.q, label %_RNvXs0_NtNtCsexYYUdYSQU6_5alloc3vec13in_place_dropINtB5_24InPlaceDstDataSrcBufDropNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir3HirB1i_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdq8xsXUia3c_10grep_regex.exit, label %.lr.ph.i.i, !dbg !1334

bb.f:                                             ; preds = %.lr.ph
  %i.r = add i64 %.sroa.0.1.i.i22, 1, !dbg !1334  ; 2 uses
  %i.s = icmp eq i64 %i.r, %i.g, !dbg !1334
  br i1 %i.s, label %.body.i, label %.lr.ph, !dbg !1334

.lr.ph:                                           ; preds = %.body.i.i, %bb.f
  %.sroa.0.1.i.i22 = phi i64 [ %i.r, %bb.f ], [ %i.j, %.body.i.i ] ; 2 uses
  %i.t = getelementptr inbounds nuw [48 x i8], ptr %i.b, i64 %.sroa.0.1.i.i22, !dbg !1334
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir3HirECsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef align 8 dereferenceable(48) %i.t) #16
          to label %bb.f unwind label %bb.g, !dbg !1334, !noalias !1325

bb.g:                                             ; preds = %.lr.ph
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !dbg !1334, !noalias !1325
  unreachable, !dbg !1334

.body.i:                                          ; preds = %bb.f, %.body.i.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir3HirENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir3HirEECsdq8xsXUia3c_10grep_regex.exit.i unwind label %bb.h, !dbg !1338, !noalias !1325

bb.h:                                             ; preds = %.body.i
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !dbg !1339, !noalias !1325
  unreachable, !dbg !1339

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir3HirEECsdq8xsXUia3c_10grep_regex.exit.i: ; preds = %.body.i
  resume { ptr, i32 } %.pn.i.i.i, !dbg !1339

_RNvXs0_NtNtCsexYYUdYSQU6_5alloc3vec13in_place_dropINtB5_24InPlaceDstDataSrcBufDropNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir3HirB1i_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdq8xsXUia3c_10grep_regex.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir3HirECsdq8xsXUia3c_10grep_regex.exit.i.i, %bb.a
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir3HirENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a), !dbg !1340, !noalias !1325
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !1341, !noalias !1325
  ret void, !dbg !1328
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3ast5ErrorECsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !5 {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsdq8xsXUia3c_10grep_regex.exit unwind label %bb.b, !dbg !1346

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECsdq8xsXUia3c_10grep_regex.exit.i.i unwind label %bb.c, !dbg !1347

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !dbg !1346
  unreachable, !dbg !1346

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECsdq8xsXUia3c_10grep_regex.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a, !dbg !1346

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsdq8xsXUia3c_10grep_regex.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0), !dbg !1348
  ret void, !dbg !1349
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir3HirECsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !12 {
bb.a:
  invoke void @_RNvXsm_NtCs2G6gJ0Mq9lu_12regex_syntax3hirNtB5_3HirNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
          to label %bb.c unwind label %bb.b, !dbg !1364

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7HirKindECsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef align 8 dereferenceable(40) %0) #16
          to label %bb.g unwind label %bb.f, !dbg !1364

bb.c:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7HirKindECsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef align 8 dereferenceable(40) %0)
          to label %bb.e unwind label %bb.d, !dbg !1364

bb.d:                                             ; preds = %bb.c
  %i.b = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !1364
  %.val = load ptr, ptr %i.c, align 8, !dbg !1364, !nonnull !41, !noundef !41
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 80, i64 noundef 8) #21, !dbg !1365
  ret void, !dbg !1364

bb.f:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !dbg !1364
  unreachable, !dbg !1364

bb.g:                                             ; preds = %bb.b, %bb.d
  %.pn = phi { ptr, i32 } [ %i.b, %bb.d ], [ %i.a, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !1364
  %.val2 = load ptr, ptr %i.e, align 8, !dbg !1364, !nonnull !41, !noundef !41
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2, i64 noundef 80, i64 noundef 8) #21, !dbg !1366
  resume { ptr, i32 } %.pn, !dbg !1364
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir5ErrorECsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !7 {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsdq8xsXUia3c_10grep_regex.exit unwind label %bb.b, !dbg !1371

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECsdq8xsXUia3c_10grep_regex.exit.i.i unwind label %bb.c, !dbg !1372

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !dbg !1371
  unreachable, !dbg !1371

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECsdq8xsXUia3c_10grep_regex.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a, !dbg !1371

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsdq8xsXUia3c_10grep_regex.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0), !dbg !1373
  ret void, !dbg !1374
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7HirKindECsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1375 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !1431, !range !1429, !noundef !41 ; 4 uses
  %i.b = icmp ne i64 %i.a, 4, !dbg !1431
  tail call void @llvm.assume(i1 %i.b), !dbg !1431
  %i.c = add nsw i64 %i.a, -2, !dbg !1431
  %.inv = icmp samesign ult i64 %i.a, 2, !dbg !1431
  %i.d = select i1 %.inv, i64 2, i64 %i.c, !dbg !1431
  switch i64 %i.d, label %bb.b [
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7LiteralECsdq8xsXUia3c_10grep_regex.exit
    i64 1, label %bb.e
    i64 2, label %bb.g
    i64 3, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7LiteralECsdq8xsXUia3c_10grep_regex.exit
    i64 4, label %bb.n
    i64 5, label %bb.o
    i64 6, label %bb.q
  ], !dbg !1431

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1431 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir3HirENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir3HirEECsdq8xsXUia3c_10grep_regex.exit unwind label %bb.c, !dbg !1432

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir3HirENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.d, !dbg !1433

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !dbg !1432
  unreachable, !dbg !1432

common.resume:                                    ; preds = %bb.r, %bb.i, %bb.l, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.n, %bb.l ], [ %i.f, %bb.c ], [ %i.l, %bb.i ], [ %i.w, %bb.r ]
  resume { ptr, i32 } %common.resume.op, !dbg !1431

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir3HirEECsdq8xsXUia3c_10grep_regex.exit: ; preds = %bb.b
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir3HirENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e), !dbg !1434
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7LiteralECsdq8xsXUia3c_10grep_regex.exit, !dbg !1431

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7LiteralECsdq8xsXUia3c_10grep_regex.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir10ClassBytesECsdq8xsXUia3c_10grep_regex.exit.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir12ClassUnicodeECsdq8xsXUia3c_10grep_regex.exit.i, %bb.f, %bb.e, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir3HirEECsdq8xsXUia3c_10grep_regex.exit3, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7CaptureECsdq8xsXUia3c_10grep_regex.exit, %bb.n, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir3HirEECsdq8xsXUia3c_10grep_regex.exit, %bb.a, %bb.a
  ret void, !dbg !1431

bb.e:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !1431
  %.val1 = load i64, ptr %i.h, align 8, !dbg !1431, !noundef !41 ; 2 uses
  %i.i = icmp eq i64 %.val1, 0, !dbg !1435
  br i1 %i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7LiteralECsdq8xsXUia3c_10grep_regex.exit, label %bb.f, !dbg !1435

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1431
  %.val = load ptr, ptr %i.j, align 8, !dbg !1431, !nonnull !41, !noundef !41
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %.val1, i64 noundef 1) #21, !dbg !1436
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7LiteralECsdq8xsXUia3c_10grep_regex.exit, !dbg !1437

bb.g:                                             ; preds = %bb.a
  %1 = trunc nuw i64 %i.a to i1, !dbg !1438
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1438 ; 6 uses
  br i1 %1, label %bb.k, label %bb.h, !dbg !1438

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir17ClassUnicodeRangeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir12ClassUnicodeECsdq8xsXUia3c_10grep_regex.exit.i unwind label %bb.i, !dbg !1439

bb.i:                                             ; preds = %bb.h
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir17ClassUnicodeRangeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %common.resume unwind label %bb.j, !dbg !1440

bb.j:                                             ; preds = %bb.i
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !dbg !1439
  unreachable, !dbg !1439

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir12ClassUnicodeECsdq8xsXUia3c_10grep_regex.exit.i: ; preds = %bb.h
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir17ClassUnicodeRangeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.k), !dbg !1441
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7LiteralECsdq8xsXUia3c_10grep_regex.exit, !dbg !1438

bb.k:                                             ; preds = %bb.g
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir15ClassBytesRangeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir10ClassBytesECsdq8xsXUia3c_10grep_regex.exit.i unwind label %bb.l, !dbg !1442

bb.l:                                             ; preds = %bb.k
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir15ClassBytesRangeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %common.resume unwind label %bb.m, !dbg !1443

bb.m:                                             ; preds = %bb.l
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !dbg !1442
  unreachable, !dbg !1442

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir10ClassBytesECsdq8xsXUia3c_10grep_regex.exit.i: ; preds = %bb.k
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir15ClassBytesRangeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.k), !dbg !1444
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7LiteralECsdq8xsXUia3c_10grep_regex.exit, !dbg !1438

bb.n:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !1445
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir3HirEECsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef align 8 dereferenceable(8) %i.p), !dbg !1445, !inline_history !1408
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7LiteralECsdq8xsXUia3c_10grep_regex.exit, !dbg !1431

bb.o:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1431
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1430), !dbg !1431
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !1446
  %.val.i = load ptr, ptr %i.r, align 8, !dbg !1446, !alias.scope !1430, !noundef !41 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !1446
  %.val1.i = load i64, ptr %i.s, align 8, !dbg !1446, !alias.scope !1430 ; 2 uses
  %i.t = icmp eq ptr %.val.i, null, !dbg !1447
  %i.u = icmp eq i64 %.val1.i, 0
  %or.cond.i = select i1 %i.t, i1 true, i1 %i.u, !dbg !1447
  br i1 %or.cond.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7CaptureECsdq8xsXUia3c_10grep_regex.exit, label %bb.p, !dbg !1447

bb.p:                                             ; preds = %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ], !noalias !1430
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %.val1.i, i64 noundef 1) #21, !dbg !1448, !noalias !1430
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7CaptureECsdq8xsXUia3c_10grep_regex.exit, !dbg !1449

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7CaptureECsdq8xsXUia3c_10grep_regex.exit: ; preds = %bb.p, %bb.o
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir3HirEECsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.q), !dbg !1446, !inline_history !1425
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7LiteralECsdq8xsXUia3c_10grep_regex.exit, !dbg !1431

bb.q:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1431 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir3HirENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir3HirEECsdq8xsXUia3c_10grep_regex.exit3 unwind label %bb.r, !dbg !1450

bb.r:                                             ; preds = %bb.q
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir3HirENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %common.resume unwind label %bb.s, !dbg !1451

bb.s:                                             ; preds = %bb.r
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !dbg !1450
  unreachable, !dbg !1450

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir3HirEECsdq8xsXUia3c_10grep_regex.exit3: ; preds = %bb.q
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir3HirENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v), !dbg !1452
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7LiteralECsdq8xsXUia3c_10grep_regex.exit, !dbg !1431
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !4 {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsdq8xsXUia3c_10grep_regex.exit unwind label %bb.b, !dbg !1456

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECsdq8xsXUia3c_10grep_regex.exit.i unwind label %bb.c, !dbg !1457

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !dbg !1456
  unreachable, !dbg !1456

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECsdq8xsXUia3c_10grep_regex.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a, !dbg !1456

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsdq8xsXUia3c_10grep_regex.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0), !dbg !1458
  ret void, !dbg !1459
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5error10BuildErrorECsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1460 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !1507, !range !150, !alias.scope !1503, !noundef !41
  switch i64 %i.a, label %bb.b [
    i64 -2, label %bb.h
    i64 -1, label %bb.e
  ], !dbg !1507

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsgPiXjGfBJkm_14regex_automata3nfa8thompson5error10BuildErrorECsdq8xsXUia3c_10grep_regex.exit.sink.split.i unwind label %bb.c, !dbg !1508

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %0)
          to label %common.resume.i unwind label %bb.d, !dbg !1509

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !dbg !1508
  unreachable, !dbg !1508

common.resume.i:                                  ; preds = %bb.r, %bb.n, %bb.k, %bb.f, %bb.c
  %common.resume.op.i = phi { ptr, i32 } [ %i.e, %bb.f ], [ %i.b, %bb.c ], [ %i.o, %bb.n ], [ %i.l, %bb.k ], [ %i.s, %bb.r ]
  resume { ptr, i32 } %common.resume.op.i, !dbg !1507

bb.e:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1510 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsgPiXjGfBJkm_14regex_automata3nfa8thompson5error10BuildErrorECsdq8xsXUia3c_10grep_regex.exit.sink.split.i unwind label %bb.f, !dbg !1511

bb.f:                                             ; preds = %bb.e
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.d)
          to label %common.resume.i unwind label %bb.g, !dbg !1512

bb.g:                                             ; preds = %bb.f
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !dbg !1511
  unreachable, !dbg !1511

bb.h:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1507 ; 4 uses
  %i.h = load i64, ptr %i.g, align 8, !dbg !1513, !range !151, !alias.scope !1504, !noundef !41 ; 3 uses
  %i.i = icmp slt i64 %i.h, -9223372036854775801, !dbg !1513
  %i.j = add i64 %i.h, -9223372036854775807, !dbg !1513
  %i.k = select i1 %i.i, i64 %i.j, i64 0, !dbg !1513
  switch i64 %i.k, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5error14BuildErrorKindECsdq8xsXUia3c_10grep_regex.exit [
    i64 0, label %bb.i
    i64 1, label %bb.p
  ], !dbg !1513

bb.i:                                             ; preds = %bb.h
  %.not.i.i.i.i = icmp eq i64 %i.h, -1, !dbg !1514
  br i1 %.not.i.i.i.i, label %bb.m, label %bb.j, !dbg !1514

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %i.g)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsgPiXjGfBJkm_14regex_automata3nfa8thompson5error10BuildErrorECsdq8xsXUia3c_10grep_regex.exit.sink.split.i unwind label %bb.k, !dbg !1515

bb.k:                                             ; preds = %bb.j
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %i.g)
          to label %common.resume.i unwind label %bb.l, !dbg !1516

bb.l:                                             ; preds = %bb.k
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !dbg !1515
  unreachable, !dbg !1515

bb.m:                                             ; preds = %bb.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !1514 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.n)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsgPiXjGfBJkm_14regex_automata3nfa8thompson5error10BuildErrorECsdq8xsXUia3c_10grep_regex.exit.sink.split.i unwind label %bb.n, !dbg !1517

bb.n:                                             ; preds = %bb.m
  %i.o = landingpad { ptr, i32 }
          cleanup
end_hunk_1
begin_hunk_2_@_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtCskKLDkoKarTP_4core4iter8adapters12GenericShuntINtNtB19_3map3MapINtNtB4_9into_iter8IntoIterNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir3HirENCNvNtCsdq8xsXUia3c_10grep_regex5strip22strip_from_match_asciis1_0EINtNtB1d_6result6ResultzNtNtB3r_5error5ErrorEEB2G_EB3r_:bb.a
  store i64 %i.c, ptr %i.o, align 8, !dbg !1598
  invoke void @_RNvMs0_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir3HirE32forget_allocation_drop_remainingCsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e, !dbg !1599

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir3HirB1L_EECsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #16
          to label %bb.b unwind label %bb.g, !dbg !1600

bb.f:                                             ; preds = %bb.d
  store i64 %i.c, ptr %0, align 8, !dbg !1601
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1601
  store ptr %i.d, ptr %i.q, align 8, !dbg !1601
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !1601
  store i64 %i.m, ptr %i.r, align 8, !dbg !1601
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !1600
  tail call void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir3HirENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1), !dbg !1602
  ret void, !dbg !1603

bb.g:                                             ; preds = %bb.b, %bb.e
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !dbg !1604
  unreachable, !dbg !1604

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir3HirENCNvNtCsdq8xsXUia3c_10grep_regex5strip22strip_from_match_asciis1_0EINtNtB4_6result6ResultzNtNtB32_5error5ErrorEEEB32_.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn, !dbg !1604
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define internal fastcc void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir15ClassBytesRangeNvYB1m_NtNtBa_3cmp10PartialOrd2ltECsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull captures(address) %0, i64 noundef range(i64 2, 21) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !1605 {
.lr.ph.preheader:
  %.idx = shl nuw nsw i64 %1, 1, !dbg !1646
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.idx, !dbg !1646
  %.sroa.0.01 = getelementptr inbounds nuw i8, ptr %0, i64 2, !dbg !1647
  br label %.lr.ph, !dbg !1648

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir15ClassBytesRangeNvYB18_NtNtBa_3cmp10PartialOrd2ltECsdq8xsXUia3c_10grep_regex.exit
  ret void, !dbg !1649

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir15ClassBytesRangeNvYB18_NtNtBa_3cmp10PartialOrd2ltECsdq8xsXUia3c_10grep_regex.exit
  %.sroa.0.04 = phi ptr [ %.sroa.0.0, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir15ClassBytesRangeNvYB18_NtNtBa_3cmp10PartialOrd2ltECsdq8xsXUia3c_10grep_regex.exit ], [ %.sroa.0.01, %.lr.ph.preheader ] ; 4 uses
  %.pn3 = phi ptr [ %.sroa.0.04, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir15ClassBytesRangeNvYB18_NtNtBa_3cmp10PartialOrd2ltECsdq8xsXUia3c_10grep_regex.exit ], [ %0, %.lr.ph.preheader ] ; 6 uses
  %.val11.i = load i16, ptr %.sroa.0.04, align 1, !dbg !1648 ; 2 uses
  %i.b = trunc i16 %.val11.i to i8, !dbg !1648    ; 4 uses
  %i.c = getelementptr i8, ptr %.pn3, i64 3, !dbg !1648
  %.val12.i = load i8, ptr %i.c, align 1, !dbg !1648 ; 2 uses
  %.val13.i = load i8, ptr %.pn3, align 1, !dbg !1648, !noundef !41 ; 2 uses
  %i.d = getelementptr i8, ptr %.pn3, i64 1, !dbg !1648
  %.val14.i = load i8, ptr %i.d, align 1, !dbg !1648
  %i.e = icmp eq i8 %.val13.i, %i.b, !dbg !1650
  %i.f = icmp ult i8 %.val12.i, %.val14.i, !dbg !1651
  %i.g = icmp ugt i8 %.val13.i, %i.b, !dbg !1651
  %i.h = select i1 %i.e, i1 %i.f, i1 %i.g, !dbg !1650
  br i1 %i.h, label %.preheader.preheader, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir15ClassBytesRangeNvYB18_NtNtBa_3cmp10PartialOrd2ltECsdq8xsXUia3c_10grep_regex.exit, !dbg !1648

.preheader.preheader:                             ; preds = %.lr.ph
  %i.i = load i16, ptr %.pn3, align 1, !dbg !1652
  store i16 %i.i, ptr %.sroa.0.04, align 1, !dbg !1652
  %i.j = icmp eq ptr %.pn3, %0, !dbg !1653
  br i1 %i.j, label %._crit_edge3, label %.lr.ph2, !dbg !1653

.preheader:                                       ; preds = %.lr.ph2
  %i.k = load i16, ptr %i.m, align 1, !dbg !1652
  store i16 %i.k, ptr %.sroa.0.0.i1, align 1, !dbg !1652
  %i.l = icmp eq ptr %i.m, %0, !dbg !1653
  br i1 %i.l, label %._crit_edge3, label %.lr.ph2, !dbg !1653

.lr.ph2:                                          ; preds = %.preheader.preheader, %.preheader
  %.sroa.0.0.i1 = phi ptr [ %i.m, %.preheader ], [ %.pn3, %.preheader.preheader ] ; 4 uses
  %i.m = getelementptr inbounds i8, ptr %.sroa.0.0.i1, i64 -2, !dbg !1654 ; 4 uses
  %.val9.i = load i8, ptr %i.m, align 1, !dbg !1655, !noundef !41 ; 2 uses
  %i.n = getelementptr i8, ptr %.sroa.0.0.i1, i64 -1, !dbg !1655
  %.val10.i = load i8, ptr %i.n, align 1, !dbg !1655
  %i.o = icmp eq i8 %.val9.i, %i.b, !dbg !1656
  %i.p = icmp ult i8 %.val12.i, %.val10.i, !dbg !1657
  %i.q = icmp ugt i8 %.val9.i, %i.b, !dbg !1657
  %i.r = select i1 %i.o, i1 %i.p, i1 %i.q, !dbg !1656
  br i1 %i.r, label %.preheader, label %._crit_edge3, !dbg !1655

._crit_edge3:                                     ; preds = %.preheader, %.lr.ph2, %.preheader.preheader
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %.preheader.preheader ], [ %0, %.preheader ], [ %.sroa.0.0.i1, %.lr.ph2 ], !dbg !1658
  store i16 %.val11.i, ptr %.sroa.0.0.i.lcssa, align 1, !dbg !1659, !noalias !1645
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir15ClassBytesRangeNvYB18_NtNtBa_3cmp10PartialOrd2ltECsdq8xsXUia3c_10grep_regex.exit, !dbg !1660

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir15ClassBytesRangeNvYB18_NtNtBa_3cmp10PartialOrd2ltECsdq8xsXUia3c_10grep_regex.exit: ; preds = %.lr.ph, %._crit_edge3
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.04, i64 2, !dbg !1647 ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0, %i.a, !dbg !1661
  br i1 %.not, label %._crit_edge, label %.lr.ph, !dbg !1661
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define internal fastcc void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir17ClassUnicodeRangeNvYB1m_NtNtBa_3cmp10PartialOrd2ltECsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 4 captures(address) %0, i64 noundef range(i64 2, 21) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !1662 {
.lr.ph.preheader:
  %.idx = shl nuw nsw i64 %1, 3, !dbg !1703
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.idx, !dbg !1703
  %.sroa.0.01 = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1704
  br label %.lr.ph, !dbg !1705

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir17ClassUnicodeRangeNvYB18_NtNtBa_3cmp10PartialOrd2ltECsdq8xsXUia3c_10grep_regex.exit
  ret void, !dbg !1706

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir17ClassUnicodeRangeNvYB18_NtNtBa_3cmp10PartialOrd2ltECsdq8xsXUia3c_10grep_regex.exit
  %.sroa.0.04 = phi ptr [ %.sroa.0.0, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir17ClassUnicodeRangeNvYB18_NtNtBa_3cmp10PartialOrd2ltECsdq8xsXUia3c_10grep_regex.exit ], [ %.sroa.0.01, %.lr.ph.preheader ] ; 4 uses
  %.pn3 = phi ptr [ %.sroa.0.04, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir17ClassUnicodeRangeNvYB18_NtNtBa_3cmp10PartialOrd2ltECsdq8xsXUia3c_10grep_regex.exit ], [ %0, %.lr.ph.preheader ] ; 6 uses
  %.val11.i = load i64, ptr %.sroa.0.04, align 4, !dbg !1705 ; 2 uses
  %i.b = trunc i64 %.val11.i to i32, !dbg !1705   ; 4 uses
  %i.c = getelementptr i8, ptr %.pn3, i64 12, !dbg !1705
  %.val12.i = load i32, ptr %i.c, align 4, !dbg !1705 ; 2 uses
  %.val13.i = load i32, ptr %.pn3, align 4, !dbg !1705, !range !125, !noundef !41 ; 2 uses
  %i.d = getelementptr i8, ptr %.pn3, i64 4, !dbg !1705
  %.val14.i = load i32, ptr %i.d, align 4, !dbg !1705
  %i.e = icmp eq i32 %.val13.i, %i.b, !dbg !1707
  %i.f = icmp ult i32 %.val12.i, %.val14.i, !dbg !1708
  %i.g = icmp samesign ugt i32 %.val13.i, %i.b, !dbg !1708
  %i.h = select i1 %i.e, i1 %i.f, i1 %i.g, !dbg !1707
  br i1 %i.h, label %.preheader.preheader, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir17ClassUnicodeRangeNvYB18_NtNtBa_3cmp10PartialOrd2ltECsdq8xsXUia3c_10grep_regex.exit, !dbg !1705

.preheader.preheader:                             ; preds = %.lr.ph
  %i.i = load i64, ptr %.pn3, align 4, !dbg !1709
  store i64 %i.i, ptr %.sroa.0.04, align 4, !dbg !1709
  %i.j = icmp eq ptr %.pn3, %0, !dbg !1710
  br i1 %i.j, label %._crit_edge3, label %.lr.ph2, !dbg !1710

.preheader:                                       ; preds = %.lr.ph2
  %i.k = load i64, ptr %i.m, align 4, !dbg !1709
  store i64 %i.k, ptr %.sroa.0.0.i1, align 4, !dbg !1709
  %i.l = icmp eq ptr %i.m, %0, !dbg !1710
  br i1 %i.l, label %._crit_edge3, label %.lr.ph2, !dbg !1710

.lr.ph2:                                          ; preds = %.preheader.preheader, %.preheader
  %.sroa.0.0.i1 = phi ptr [ %i.m, %.preheader ], [ %.pn3, %.preheader.preheader ] ; 4 uses
  %i.m = getelementptr inbounds i8, ptr %.sroa.0.0.i1, i64 -8, !dbg !1711 ; 4 uses
  %.val9.i = load i32, ptr %i.m, align 4, !dbg !1712, !range !125, !noundef !41 ; 2 uses
  %i.n = getelementptr i8, ptr %.sroa.0.0.i1, i64 -4, !dbg !1712
  %.val10.i = load i32, ptr %i.n, align 4, !dbg !1712
  %i.o = icmp eq i32 %.val9.i, %i.b, !dbg !1713
  %i.p = icmp ult i32 %.val12.i, %.val10.i, !dbg !1714
  %i.q = icmp samesign ugt i32 %.val9.i, %i.b, !dbg !1714
  %i.r = select i1 %i.o, i1 %i.p, i1 %i.q, !dbg !1713
  br i1 %i.r, label %.preheader, label %._crit_edge3, !dbg !1712

._crit_edge3:                                     ; preds = %.preheader, %.lr.ph2, %.preheader.preheader
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %.preheader.preheader ], [ %0, %.preheader ], [ %.sroa.0.0.i1, %.lr.ph2 ], !dbg !1715
  store i64 %.val11.i, ptr %.sroa.0.0.i.lcssa, align 4, !dbg !1716, !noalias !1702
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir17ClassUnicodeRangeNvYB18_NtNtBa_3cmp10PartialOrd2ltECsdq8xsXUia3c_10grep_regex.exit, !dbg !1717

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir17ClassUnicodeRangeNvYB18_NtNtBa_3cmp10PartialOrd2ltECsdq8xsXUia3c_10grep_regex.exit: ; preds = %.lr.ph, %._crit_edge3
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.04, i64 8, !dbg !1704 ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0, %i.a, !dbg !1718
  br i1 %.not, label %._crit_edge, label %.lr.ph, !dbg !1718
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsdq8xsXUia3c_10grep_regex(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i64 noundef range(i64 1, 0) %2) unnamed_addr #2 !dbg !1719 {
bb.a:
  %min.iters.check = icmp ult i64 %2, 8, !dbg !1760
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck, !dbg !1760

vector.memcheck:                                  ; preds = %bb.a
  %i.a = shl i64 %2, 3, !dbg !1760                ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 %i.a, !dbg !1760
  %i.c = getelementptr i8, ptr %1, i64 %i.a, !dbg !1760
  %bound0 = icmp ult ptr %0, %i.c, !dbg !1760
  %bound1 = icmp ult ptr %1, %i.b, !dbg !1760
  %found.conflict = and i1 %bound0, %bound1, !dbg !1760
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph, !dbg !1761

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %2, -4                         ; 3 uses
  br label %vector.body, !dbg !1761

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !1761 ; 3 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index, !dbg !1762 ; 3 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index, !dbg !1763 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1752), !dbg !1764
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1753), !dbg !1764
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !1765 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.d, align 1, !dbg !1765, !alias.scope !1754, !noalias !1755
  %wide.load6 = load <2 x i64>, ptr %i.f, align 1, !dbg !1765, !alias.scope !1754, !noalias !1755
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !1766 ; 2 uses
  %wide.load7 = load <2 x i64>, ptr %i.e, align 1, !dbg !1766, !alias.scope !1755, !noalias !1752
  %wide.load8 = load <2 x i64>, ptr %i.g, align 1, !dbg !1766, !alias.scope !1755, !noalias !1752
  store <2 x i64> %wide.load7, ptr %i.d, align 1, !dbg !1767, !alias.scope !1754, !noalias !1755
  store <2 x i64> %wide.load8, ptr %i.f, align 1, !dbg !1767, !alias.scope !1754, !noalias !1755
  store <2 x i64> %wide.load, ptr %i.e, align 1, !dbg !1768, !alias.scope !1755, !noalias !1752
  store <2 x i64> %wide.load6, ptr %i.g, align 1, !dbg !1768, !alias.scope !1755, !noalias !1752
  %index.next = add nuw i64 %index, 4, !dbg !1761 ; 2 uses
  %i.h = icmp eq i64 %index.next, %n.vec, !dbg !1760
  br i1 %i.h, label %middle.block, label %vector.body, !dbg !1760, !llvm.loop !1739

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec, !dbg !1760
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader, !dbg !1760

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %.sroa.0.04.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.sroa.0.04.ph, 1, !dbg !1760
  %lcmp.mod.not = trunc i64 %2 to i1, !dbg !1760
  br i1 %lcmp.mod.not, label %scalar.ph.prol, label %scalar.ph.prol.loopexit, !dbg !1760

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.i = or disjoint i64 %.sroa.0.04.ph, 1, !dbg !1761
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.04.ph, !dbg !1762 ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.0.04.ph, !dbg !1763 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1752), !dbg !1764
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1753), !dbg !1764
  %.sroa.0.0.copyload.i.prol = load i64, ptr %i.j, align 1, !dbg !1765, !alias.scope !1752, !noalias !1753
  %.sroa.02.0.copyload.i.prol = load i64, ptr %i.k, align 1, !dbg !1766, !alias.scope !1753, !noalias !1752
  store i64 %.sroa.02.0.copyload.i.prol, ptr %i.j, align 1, !dbg !1767, !alias.scope !1752, !noalias !1753
  store i64 %.sroa.0.0.copyload.i.prol, ptr %i.k, align 1, !dbg !1768, !alias.scope !1753, !noalias !1752
  br label %scalar.ph.prol.loopexit, !dbg !1760

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.0.04.unr = phi i64 [ %.sroa.0.04.ph, %scalar.ph.preheader ], [ %i.i, %scalar.ph.prol ]
  %i.l = icmp eq i64 %2, %.neg, !dbg !1760
  br i1 %i.l, label %.loopexit, label %scalar.ph, !dbg !1760

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  ret void, !dbg !1769

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.sroa.0.04 = phi i64 [ %i.p, %scalar.ph ], [ %.sroa.0.04.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.m = add nuw i64 %.sroa.0.04, 1, !dbg !1761   ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.04, !dbg !1762 ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.0.04, !dbg !1763 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1752), !dbg !1764
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1753), !dbg !1764
  %.sroa.0.0.copyload.i = load i64, ptr %i.n, align 1, !dbg !1765, !alias.scope !1752, !noalias !1753
  %.sroa.02.0.copyload.i = load i64, ptr %i.o, align 1, !dbg !1766, !alias.scope !1753, !noalias !1752
  store i64 %.sroa.02.0.copyload.i, ptr %i.n, align 1, !dbg !1767, !alias.scope !1752, !noalias !1753
  store i64 %.sroa.0.0.copyload.i, ptr %i.o, align 1, !dbg !1768, !alias.scope !1753, !noalias !1752
  %i.p = add nuw i64 %.sroa.0.04, 2, !dbg !1761   ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.m, !dbg !1762 ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.m, !dbg !1763 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1758), !dbg !1764
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1759), !dbg !1764
  %.sroa.0.0.copyload.i.1 = load i64, ptr %i.q, align 1, !dbg !1765, !alias.scope !1758, !noalias !1759
  %.sroa.02.0.copyload.i.1 = load i64, ptr %i.r, align 1, !dbg !1766, !alias.scope !1759, !noalias !1758
  store i64 %.sroa.02.0.copyload.i.1, ptr %i.q, align 1, !dbg !1767, !alias.scope !1758, !noalias !1759
  store i64 %.sroa.0.0.copyload.i.1, ptr %i.r, align 1, !dbg !1768, !alias.scope !1759, !noalias !1758
  %exitcond.not.1 = icmp eq i64 %i.p, %2, !dbg !1770
  br i1 %exitcond.not.1, label %.loopexit, label %scalar.ph, !dbg !1760, !llvm.loop !1743
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtCsdq8xsXUia3c_10grep_regex5errorNtB2_5Error5regex(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(136) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1771 {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.4.i14 = alloca [31 x i8], align 1        ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.4.i = alloca [31 x i8], align 1          ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [136 x i8], align 8               ; 6 uses
  %i.j = alloca [8 x i8], align 8                 ; 5 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 2 uses
  %.sroa.42 = alloca [31 x i8], align 1           ; 4 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = load i64, ptr %1, align 8, !dbg !1860, !range !150, !noundef !41
  %i.o = icmp eq i64 %i.n, -2, !dbg !1860         ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load i64, ptr %i.p, align 8, !range !151
  %i.r = icmp eq i64 %i.q, -9223372036854775804
  %or.cond = select i1 %i.o, i1 %i.r, i1 false, !dbg !1861
  br i1 %or.cond, label %bb.b, label %bb.d, !dbg !1861

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !1862
  %i.t = load i64, ptr %i.s, align 8, !dbg !1862, !noundef !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !1863
  store i64 %i.t, ptr %i.m, align 8, !dbg !1863
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.42), !dbg !1864
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !1865
  store ptr %i.m, ptr %i.k, align 8, !dbg !1865
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !1865
  store ptr @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.47.0..sroa_idx, align 8, !dbg !1865
  invoke void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noundef nonnull @4, ptr noundef nonnull %i.k)
          to label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsdq8xsXUia3c_10grep_regex.exit unwind label %.body.thread30, !dbg !1866

.body.thread30:                                   ; preds = %bb.b
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread, !dbg !1867

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsdq8xsXUia3c_10grep_regex.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !1868
  %.sroa.42.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.42, i64 7, !dbg !1869
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.42.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !dbg !1869
  store i8 0, ptr %0, align 8, !dbg !1870
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !1870
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.42.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.42, i64 31, i1 false), !dbg !1870
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.42), !dbg !1871
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !1872
  br label %bb.c, !dbg !1873

bb.c:                                             ; preds = %bb.p, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsdq8xsXUia3c_10grep_regex.exit
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5error10BuildErrorECsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef align 8 dereferenceable(136) %1), !dbg !1867
  br label %bb.q, !dbg !1867

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !1874
  %. = select i1 %i.o, ptr null, ptr %1, !dbg !1875
  store ptr %., ptr %i.j, align 8, !dbg !1875
  br i1 %i.o, label %bb.j, label %bb.e, !dbg !1876

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1848), !dbg !1877
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.j, ptr %i.h, align 8, !noalias !1849
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i), !dbg !1878
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !1879
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !1880, !noalias !1850
  store i64 0, ptr %i.f, align 8, !dbg !1881, !noalias !1850
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !1881
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !dbg !1881, !noalias !1850
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !1881
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !dbg !1881, !noalias !1850
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !1882, !noalias !1850
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !1883
  store i64 1610612768, ptr %i.v, align 8, !dbg !1883, !noalias !1850
  store ptr %i.f, ptr %i.e, align 8, !dbg !1883, !noalias !1850
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !1883
  store ptr @13, ptr %i.w, align 8, !dbg !1883, !noalias !1850
  %i.x = invoke noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRRNtNtCs2G6gJ0Mq9lu_12regex_syntax5error5ErrorNtB6_7Display3fmtCsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.g unwind label %bb.f, !dbg !1884, !noalias !1851

bb.f:                                             ; preds = %bb.h, %bb.e
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f) #16
          to label %.body.thread unwind label %bb.i, !dbg !1885, !noalias !1851

bb.g:                                             ; preds = %bb.e
  br i1 %i.x, label %bb.h, label %bb.p, !dbg !1886, !prof !53

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @6, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #17
          to label %.noexc.i.i.i unwind label %bb.f, !dbg !1887, !noalias !1851

.noexc.i.i.i:                                     ; preds = %bb.h
  unreachable, !dbg !1887

bb.i:                                             ; preds = %bb.f
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !dbg !1888, !noalias !1851
  unreachable, !dbg !1888

bb.j:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !1889
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !1890
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.i, ptr noundef nonnull align 8 dereferenceable(136) %1, i64 136, i1 false), !dbg !1890
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1852), !dbg !1891
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i14), !dbg !1892
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !1893
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !1894, !noalias !1853
  store i64 0, ptr %i.c, align 8, !dbg !1895, !noalias !1853
  %.sroa.4.0..sroa_idx.i.i.i15 = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !1895
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i15, align 8, !dbg !1895, !noalias !1853
  %.sroa.5.0..sroa_idx.i.i.i16 = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !1895
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i16, align 8, !dbg !1895, !noalias !1853
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !1896, !noalias !1853
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !1897
  store i64 1610612768, ptr %i.aa, align 8, !dbg !1897, !noalias !1853
  store ptr %i.c, ptr %i.b, align 8, !dbg !1897, !noalias !1853
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !1897
  store ptr @13, ptr %i.ab, align 8, !dbg !1897, !noalias !1853
  %i.ac = invoke noundef zeroext i1 @_RNvXs0_NtNtCsgPiXjGfBJkm_14regex_automata4meta5errorNtB5_10BuildErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.l unwind label %bb.k, !dbg !1898, !noalias !1854

bb.k:                                             ; preds = %bb.m, %bb.j
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #16
          to label %.body.i unwind label %bb.n, !dbg !1899, !noalias !1854

bb.l:                                             ; preds = %bb.j
  br i1 %i.ac, label %bb.m, label %_RINvMNtCsdq8xsXUia3c_10grep_regex5errorNtB3_5Error7genericNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5error10BuildErrorEB5_.exit, !dbg !1900, !prof !53

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @6, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #17
          to label %.noexc.i.i.i19 unwind label %bb.k, !dbg !1901, !noalias !1854

.noexc.i.i.i19:                                   ; preds = %bb.m
  unreachable, !dbg !1901

bb.n:                                             ; preds = %bb.k
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !dbg !1902, !noalias !1854
  unreachable, !dbg !1902

.body.i:                                          ; preds = %bb.k
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5error10BuildErrorECsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.i) #16
end_hunk_2
