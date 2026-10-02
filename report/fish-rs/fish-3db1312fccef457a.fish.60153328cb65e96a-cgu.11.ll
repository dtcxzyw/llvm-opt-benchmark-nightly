Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.11?download=true
inline.NumInlined: 2091
inline.NumDeleted: 836
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 20
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RNvXsg_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTcNtNtNtCs8frGy5WneL6_4fish8builtins8argparse10OptionSpecEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBW_:bb.a
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -1280 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.m to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTcNtNtNtCs8frGy5WneL6_4fish8builtins8argparse10OptionSpecEE9next_implKb0_EB12_.exit.i.i

_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTcNtNtNtCs8frGy5WneL6_4fish8builtins8argparse10OptionSpecEE9next_implKb0_EB12_.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.016.i.i, %bb.d ], [ %i.o, %.lr.ph.i.i.i ]
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.017.i.i, %bb.d ], [ %i.n, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.015.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.q = zext nneg i16 %i.p to i64
  %i.r = sub nsw i64 0, %i.q
  %i.s = getelementptr inbounds [80 x i8], ptr %.sroa.05.1.i.i, i64 %i.r
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -72 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.t)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTcNtNtNtCs8frGy5WneL6_4fish8builtins8argparse10OptionSpecEEBJ_.exit.i.i unwind label %bb.e, !noalias !4313

bb.e:                                             ; preds = %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTcNtNtNtCs8frGy5WneL6_4fish8builtins8argparse10OptionSpecEE9next_implKb0_EB12_.exit.i.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.t)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish.exit.i.i.i.i.i unwind label %bb.f, !noalias !4313

bb.f:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !noalias !4313
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish.exit.i.i.i.i.i: ; preds = %bb.e
  resume { ptr, i32 } %i.u

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTcNtNtNtCs8frGy5WneL6_4fish8builtins8argparse10OptionSpecEEBJ_.exit.i.i: ; preds = %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTcNtNtNtCs8frGy5WneL6_4fish8builtins8argparse10OptionSpecEE9next_implKb0_EB12_.exit.i.i
  %i.w = add i64 %.sroa.107.014.i.i, -1           ; 2 uses
  %i.x = add i16 %.lcssa.i.i.i, -1
  %i.y = and i16 %i.x, %.lcssa.i.i.i
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.t), !noalias !4313
  %i.z = icmp eq i64 %i.w, 0
  br i1 %i.z, label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTcNtNtNtCs8frGy5WneL6_4fish8builtins8argparse10OptionSpecEEB1h_.exit.i, label %bb.d

_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTcNtNtNtCs8frGy5WneL6_4fish8builtins8argparse10OptionSpecEEB1h_.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTcNtNtNtCs8frGy5WneL6_4fish8builtins8argparse10OptionSpecEEBJ_.exit.i.i, %bb.b
  %i.aa = mul i64 %i.b, 80                        ; 2 uses
  %i.ab = add i64 %i.aa, 80                       ; 2 uses
  %i.ac = add i64 %i.b, 17
  %i.ad = add i64 %i.ac, %i.ab                    ; 4 uses
  %i.ae = icmp uge i64 %i.ad, %i.ab
  %i.af = icmp ult i64 %i.ad, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ae)
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = icmp eq i64 %i.ad, 0
  br i1 %i.ag, label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTcNtNtNtCs8frGy5WneL6_4fish8builtins8argparse10OptionSpecENtNtCs1xwejQucwHj_5alloc5alloc6GlobalEB1k_.exit, label %bb.g

bb.g:                                             ; preds = %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTcNtNtNtCs8frGy5WneL6_4fish8builtins8argparse10OptionSpecEEB1h_.exit.i
  %i.ah = load ptr, ptr %0, align 8, !alias.scope !4311, !nonnull !5, !noundef !5
  %i.ai = sub i64 -80, %i.aa
  %i.aj = getelementptr inbounds i8, ptr %i.ah, i64 %i.ai
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aj, i64 noundef %i.ad, i64 noundef range(i64 1, -9223372036854775807) 16) #40, !noalias !4311
  br label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTcNtNtNtCs8frGy5WneL6_4fish8builtins8argparse10OptionSpecENtNtCs1xwejQucwHj_5alloc5alloc6GlobalEB1k_.exit

_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTcNtNtNtCs8frGy5WneL6_4fish8builtins8argparse10OptionSpecENtNtCs1xwejQucwHj_5alloc5alloc6GlobalEB1k_.exit: ; preds = %bb.a, %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTcNtNtNtCs8frGy5WneL6_4fish8builtins8argparse10OptionSpecEEB1h_.exit.i, %bb.g
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTjNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4324)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !4324, !noundef !5 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTjNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs8frGy5WneL6_4fish.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4325)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !4326, !noundef !5 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTjNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !4326, !nonnull !5, !noundef !5 ; 3 uses
  %.val3.i.i.i = load <16 x i8>, ptr %i.g, align 16, !noalias !4327
  %i.h = icmp sgt <16 x i8> %.val3.i.i.i, splat (i8 -1)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = bitcast <16 x i1> %i.h to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTjNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish.exit.i.i, %bb.c
  %.sroa.05.017.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTjNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish.exit.i.i ] ; 2 uses
  %.sroa.6.016.i.i = phi ptr [ %i.i, %bb.c ], [ %.sroa.6.1.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTjNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish.exit.i.i ] ; 2 uses
  %.sroa.86.015.i.i = phi i16 [ %i.j, %bb.c ], [ %i.y, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTjNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish.exit.i.i ] ; 2 uses
  %.sroa.107.014.i.i = phi i64 [ %i.e, %bb.c ], [ %i.w, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTjNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish.exit.i.i ]
  %.not11.i.i.i = icmp eq i16 %.sroa.86.015.i.i, 0
  br i1 %.not11.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTjNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEE9next_implKb0_ECs8frGy5WneL6_4fish.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.k = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %.sroa.6.016.i.i, %bb.d ] ; 2 uses
  %i.l = phi ptr [ %i.n, %.lr.ph.i.i.i ], [ %.sroa.05.017.i.i, %bb.d ]
  %.val9.i.i.i = load <16 x i8>, ptr %i.k, align 16, !noalias !4328
  %i.m = icmp sgt <16 x i8> %.val9.i.i.i, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -512 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.m to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTjNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEE9next_implKb0_ECs8frGy5WneL6_4fish.exit.i.i

_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTjNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEE9next_implKb0_ECs8frGy5WneL6_4fish.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.016.i.i, %bb.d ], [ %i.o, %.lr.ph.i.i.i ]
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.017.i.i, %bb.d ], [ %i.n, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.015.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.q = zext nneg i16 %i.p to i64
  %i.r = sub nsw i64 0, %i.q
  %i.s = getelementptr inbounds [32 x i8], ptr %.sroa.05.1.i.i, i64 %i.r
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -24 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTjNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish.exit.i.i unwind label %bb.e, !noalias !4326

bb.e:                                             ; preds = %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTjNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEE9next_implKb0_ECs8frGy5WneL6_4fish.exit.i.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecmEECs8frGy5WneL6_4fish.exit.i.i.i.i.i unwind label %bb.f, !noalias !4326

bb.f:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !noalias !4326
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecmEECs8frGy5WneL6_4fish.exit.i.i.i.i.i: ; preds = %bb.e
  resume { ptr, i32 } %i.u

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTjNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish.exit.i.i: ; preds = %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTjNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEE9next_implKb0_ECs8frGy5WneL6_4fish.exit.i.i
  %i.w = add i64 %.sroa.107.014.i.i, -1           ; 2 uses
  %i.x = add i16 %.lcssa.i.i.i, -1
  %i.y = and i16 %i.x, %.lcssa.i.i.i
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t), !noalias !4326
  %i.z = icmp eq i64 %i.w, 0
  br i1 %i.z, label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTjNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish.exit.i, label %bb.d

_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTjNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTjNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish.exit.i.i, %bb.b
  %i.aa = shl i64 %i.b, 5                         ; 2 uses
  %i.ab = add i64 %i.aa, 32                       ; 2 uses
  %i.ac = add i64 %i.b, 17
  %i.ad = add i64 %i.ac, %i.ab                    ; 4 uses
  %i.ae = icmp uge i64 %i.ad, %i.ab
  %i.af = icmp ult i64 %i.ad, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ae)
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = icmp eq i64 %i.ad, 0
  br i1 %i.ag, label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTjNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs8frGy5WneL6_4fish.exit, label %bb.g

bb.g:                                             ; preds = %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTjNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish.exit.i
  %i.ah = load ptr, ptr %0, align 8, !alias.scope !4324, !nonnull !5, !noundef !5
  %i.ai = sub nuw nsw i64 -32, %i.aa
  %i.aj = getelementptr inbounds i8, ptr %i.ah, i64 %i.ai
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aj, i64 noundef %i.ad, i64 noundef range(i64 1, -9223372036854775807) 16) #40, !noalias !4324
  br label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTjNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs8frGy5WneL6_4fish.exit

_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTjNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs8frGy5WneL6_4fish.exit: ; preds = %bb.a, %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTjNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish.exit.i, %bb.g
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsg_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTyuEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #5 {
bb.a:
  %.val = load ptr, ptr %0, align 8               ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !noundef !5 ; 4 uses
  %i.b = icmp eq i64 %.val1, 0
  br i1 %i.b, label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTyuENtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs8frGy5WneL6_4fish.exit, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  %i.c = shl i64 %.val1, 3
  %i.d = icmp slt i64 %.val1, 2305843009213693950
  tail call void @llvm.assume(i1 %i.d)
  %i.e = and i64 %i.c, -16                        ; 2 uses
  %i.f = add i64 %i.e, 16                         ; 2 uses
  %i.g = add nsw i64 %.val1, 17
  %i.h = add i64 %i.g, %i.f                       ; 4 uses
  %i.i = icmp uge i64 %i.h, %i.f
  %i.j = icmp ult i64 %i.h, 9223372036854775793
  tail call void @llvm.assume(i1 %i.i)
  tail call void @llvm.assume(i1 %i.j)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.k = icmp eq i64 %i.h, 0
  br i1 %i.k, label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTyuENtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs8frGy5WneL6_4fish.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i
  %i.l = sub nuw nsw i64 -16, %i.e
  %i.m = getelementptr inbounds i8, ptr %.val, i64 %i.l
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.m, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 16) #40
  br label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTyuENtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs8frGy5WneL6_4fish.exit

_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTyuENtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs8frGy5WneL6_4fish.exit: ; preds = %bb.a, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXsh_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtNtCs1xwejQucwHj_5alloc6string6StringINtNtBT_3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterCs8frGy5WneL6_4fish(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 50), (56, 64)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #16 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 4 uses
  %.val3.i = load <16 x i8>, ptr %i.a, align 16, !noalias !4331
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !5
  %i.f = icmp eq i64 %i.c, 0
  br i1 %i.f, label %_RNvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtNtCs1xwejQucwHj_5alloc6string6StringINtNtBT_3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEEE15into_allocationCs8frGy5WneL6_4fish.exit, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  %i.g = mul i64 %i.c, -48
  %2 = mul i64 %i.c, 49
  %i.h = add i64 %2, 65
  %3 = getelementptr i8, ptr %i.a, i64 %i.g
  %i.i = getelementptr i8, ptr %3, i64 -48
  br label %_RNvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtNtCs1xwejQucwHj_5alloc6string6StringINtNtBT_3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEEE15into_allocationCs8frGy5WneL6_4fish.exit

_RNvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtNtCs1xwejQucwHj_5alloc6string6StringINtNtBT_3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEEE15into_allocationCs8frGy5WneL6_4fish.exit: ; preds = %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.a
  %.sroa.511.0 = phi ptr [ undef, %bb.a ], [ %i.i, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sroa.410.0 = phi i64 [ undef, %bb.a ], [ %i.h, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sink.i = phi i64 [ 0, %bb.a ], [ 16, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = icmp sgt <16 x i8> %.val3.i, splat (i8 -1)
  %i.l = getelementptr i8, ptr %i.a, i64 %i.c
  %i.m = getelementptr i8, ptr %i.l, i64 1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %i.n, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.j, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.m, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <16 x i1> %i.k, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.e, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 %.sink.i, ptr %0, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.410.0, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.511.0, ptr %.sroa.511.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXsh_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterB1M_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 50), (56, 64)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #16 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 4 uses
  %.val3.i = load <16 x i8>, ptr %i.a, align 16, !noalias !4334
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !5
  %i.f = icmp eq i64 %i.c, 0
  br i1 %i.f, label %_RNvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEE15into_allocationB1M_.exit, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  %i.g = mul i64 %i.c, -48
  %2 = mul i64 %i.c, 49
  %i.h = add i64 %2, 65
  %3 = getelementptr i8, ptr %i.a, i64 %i.g
  %i.i = getelementptr i8, ptr %3, i64 -48
  br label %_RNvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEE15into_allocationB1M_.exit

_RNvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEE15into_allocationB1M_.exit: ; preds = %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.a
  %.sroa.511.0 = phi ptr [ undef, %bb.a ], [ %i.i, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sroa.410.0 = phi i64 [ undef, %bb.a ], [ %i.h, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sink.i = phi i64 [ 0, %bb.a ], [ 16, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = icmp sgt <16 x i8> %.val3.i, splat (i8 -1)
  %i.l = getelementptr i8, ptr %i.a, i64 %i.c
  %i.m = getelementptr i8, ptr %i.l, i64 1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %i.n, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.j, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.m, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <16 x i1> %i.k, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.e, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 %.sink.i, ptr %0, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.410.0, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.511.0, ptr %.sroa.511.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXsh_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringuEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterCs8frGy5WneL6_4fish(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 50), (56, 64)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #16 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 4 uses
  %.val3.i = load <16 x i8>, ptr %i.a, align 16, !noalias !4337
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !5
  %i.f = icmp eq i64 %i.c, 0
  br i1 %i.f, label %_RNvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringuEE15into_allocationCs8frGy5WneL6_4fish.exit, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  %i.g = mul i64 %i.c, 24
  %i.h = and i64 %i.g, -16                        ; 2 uses
  %i.i = add i64 %i.c, 49
  %i.j = add i64 %i.i, %i.h
  %i.k = sub i64 -32, %i.h
  %i.l = getelementptr inbounds i8, ptr %i.a, i64 %i.k
  br label %_RNvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringuEE15into_allocationCs8frGy5WneL6_4fish.exit

_RNvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringuEE15into_allocationCs8frGy5WneL6_4fish.exit: ; preds = %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.a
  %.sroa.511.0 = phi ptr [ undef, %bb.a ], [ %i.l, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sroa.410.0 = phi i64 [ undef, %bb.a ], [ %i.j, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sink.i = phi i64 [ 0, %bb.a ], [ 16, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.n = icmp sgt <16 x i8> %.val3.i, splat (i8 -1)
  %i.o = getelementptr i8, ptr %i.a, i64 %i.c
  %i.p = getelementptr i8, ptr %i.o, i64 1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %i.q, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.m, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.p, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <16 x i1> %i.n, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.e, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 %.sink.i, ptr %0, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.410.0, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.511.0, ptr %.sroa.511.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXst_CskOHnqPTvc0z_3lruINtB5_8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1z_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0, ptr noalias nofree noundef align 8 captures(address, read_provenance) dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [112 x i8], align 8               ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4343)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4344)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4345)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !4346, !noalias !4343, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.f = load ptr, ptr %i.e, align 8, !noalias !4347, !noundef !5 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !4346, !noalias !4343, !noundef !5
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4347
  store ptr %i.f, ptr %i.a, align 8, !noalias !4347
  %i.j = call fastcc ptr @_RINvMs3_NtCs25YkazkrsH5_9hashbrown3mapINtB6_7HashMapINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBR_8LruEntryB1g_NtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEE12remove_entryBO_EB3i_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a) #38 ; 6 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %bb.c, label %bb.d, !prof !7

bb.c:                                             ; preds = %bb.b
  call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2847) #37, !noalias !4343
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 120
  %i.l = load ptr, ptr %i.k, align 8, !noalias !4343, !noundef !5 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 112 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !noalias !4343, !noundef !5
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 120
  store ptr %i.l, ptr %i.o, align 8, !noalias !4343
  %i.p = load ptr, ptr %i.m, align 8, !noalias !4343, !noundef !5
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 112
  store ptr %i.p, ptr %i.q, align 8, !noalias !4343
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4347
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !noalias !4343
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.s, ptr noundef nonnull align 8 dereferenceable(88) %i.r, i64 88, i1 false), !noalias !4343
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.b, i64 112, i1 false), !noalias !4344
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef 128, i64 noundef 8) #40, !noalias !4343
  br label %_RNvMs9_CskOHnqPTvc0z_3lruINtB5_8LruCacheNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemE7pop_lruB1z_.exit

bb.e:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8, !alias.scope !4343, !noalias !4344
  br label %_RNvMs9_CskOHnqPTvc0z_3lruINtB5_8LruCacheNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemE7pop_lruB1z_.exit

_RNvMs9_CskOHnqPTvc0z_3lruINtB5_8LruCacheNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemE7pop_lruB1z_.exit: ; preds = %bb.d, %bb.e
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsw_NtCslLGyqsphxMB_10widestring5errorNtB5_16DecodeUtf32ErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3137, i64 noundef 16, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3138, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3136)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtBb_8RawTableTNtNtCs1xwejQucwHj_5alloc6string6StringINtNtBZ_3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B1x_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0Es_0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTOhEE9call_onceCs8frGy5WneL6_4fish(ptr noundef nonnull %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCs1xwejQucwHj_5alloc6string6StringINtNtBG_3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEEECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtBb_8RawTableTNtNtCs1xwejQucwHj_5alloc6string6StringjEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_jNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0Es_0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTOhEE9call_onceCs8frGy5WneL6_4fish(ptr noundef nonnull %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtNtCs1xwejQucwHj_5alloc6string6StringjEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_jNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0Es_0Cs8frGy5WneL6_4fish.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs8frGy5WneL6_4fish.exit.i.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs8frGy5WneL6_4fish.exit.i.i.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtNtCs1xwejQucwHj_5alloc6string6StringjEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_jNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0Es_0Cs8frGy5WneL6_4fish.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtBb_8RawTableTNtNtCs8frGy5WneL6_4fish10fd_monitor15FdMonitorItemIdNtBX_13FdMonitorItemEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B1L_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0Es_0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTOhEE9call_onceBZ_(ptr nofree noundef readonly captures(none) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4352)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4353)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i.i.i = load i32, ptr %i.b, align 4, !alias.scope !4354, !noundef !5 ; 2 uses
  %i.c = icmp eq i32 %.val.i.i.i, -1
  br i1 %i.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsaL1QbXo9JQH_3std2os2fd5owned7OwnedFdEECs8frGy5WneL6_4fish.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef i32 @close(i32 noundef %.val.i.i.i) #40, !noalias !4354 ; 0 uses
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsaL1QbXo9JQH_3std2os2fd5owned7OwnedFdEECs8frGy5WneL6_4fish.exit.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsaL1QbXo9JQH_3std2os2fd5owned7OwnedFdEECs8frGy5WneL6_4fish.exit.i.i.i: ; preds = %bb.b, %bb.a
  %.val1.i.i.i = load ptr, ptr %i.a, align 8, !alias.scope !4354 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val2.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !4354, !nonnull !5, !align !11, !noundef !5 ; 5 uses
  %i.f = load ptr, ptr %.val2.i.i.i, align 8, !invariant.load !5, !noalias !4354 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsaL1QbXo9JQH_3std2os2fd5owned7OwnedFdEECs8frGy5WneL6_4fish.exit.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i) ]
  invoke void %i.f(ptr noundef nonnull %.val1.i.i.i)
          to label %bb.d unwind label %bb.e, !noalias !4354

bb.d:                                             ; preds = %bb.c, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsaL1QbXo9JQH_3std2os2fd5owned7OwnedFdEECs8frGy5WneL6_4fish.exit.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.val2.i.i.i, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !6, !invariant.load !5, !noalias !4354 ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtNtCs8frGy5WneL6_4fish10fd_monitor15FdMonitorItemIdNtBU_13FdMonitorItemEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1I_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0Es_0BW_.exit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %.val2.i.i.i, i64 16
  %i.k = load i64, ptr %i.j, align 8, !range !19, !invariant.load !5, !noalias !4354
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i) ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) %i.k) #40, !noalias !4354
  br label %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtNtCs8frGy5WneL6_4fish10fd_monitor15FdMonitorItemIdNtBU_13FdMonitorItemEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1I_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0Es_0BW_.exit

bb.e:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = getelementptr inbounds nuw i8, ptr %.val2.i.i.i, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !6, !invariant.load !5, !noalias !4354 ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDG_INtNtNtCs3oUPovFnLWP_4core3ops8function2FnTQL0_INtNtBR_6option6OptionNtNtNtNtCsaL1QbXo9JQH_3std2os2fd5owned7OwnedFdEEEp6OutputuNtNtBR_6marker4SendNtB2P_4SyncEL_ENtNtBP_4drop4Drop4dropCs8frGy5WneL6_4fish.exit5.i.i.i.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i: ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %.val2.i.i.i, i64 16
  %i.q = load i64, ptr %i.p, align 8, !range !19, !invariant.load !5, !noalias !4354
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) %i.q) #40, !noalias !4354
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDG_INtNtNtCs3oUPovFnLWP_4core3ops8function2FnTQL0_INtNtBR_6option6OptionNtNtNtNtCsaL1QbXo9JQH_3std2os2fd5owned7OwnedFdEEEp6OutputuNtNtBR_6marker4SendNtB2P_4SyncEL_ENtNtBP_4drop4Drop4dropCs8frGy5WneL6_4fish.exit5.i.i.i.i

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDG_INtNtNtCs3oUPovFnLWP_4core3ops8function2FnTQL0_INtNtBR_6option6OptionNtNtNtNtCsaL1QbXo9JQH_3std2os2fd5owned7OwnedFdEEEp6OutputuNtNtBR_6marker4SendNtB2P_4SyncEL_ENtNtBP_4drop4Drop4dropCs8frGy5WneL6_4fish.exit5.i.i.i.i: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i, %bb.e
  resume { ptr, i32 } %i.l

_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtNtCs8frGy5WneL6_4fish10fd_monitor15FdMonitorItemIdNtBU_13FdMonitorItemEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1I_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0Es_0BW_.exit: ; preds = %bb.d, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtBb_8RawTableTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringBV_EE14reserve_rehashNCINvNtBd_3map11make_hasherBV_BV_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0Es_0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTOhEE9call_onceCs8frGy5WneL6_4fish(ptr noundef nonnull %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringBC_EECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
  ret void
}

end_hunk_0
begin_hunk_1_@_RNvNtCs8frGy5WneL6_4fish3nix6isatty

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvMsc_NtCs8frGy5WneL6_4fish2ioNtB6_12OutputStream6appendRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEB8_(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs5_NtCs8frGy5WneL6_4fish9tokenizerNtB5_9TokenizerNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next(ptr dead_on_unwind noalias nofree noundef writable sret([20 x i8]) align 4 captures(none) dereferenceable(20), ptr noalias nofree noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef range(i8 0, 5) i8 @_RNvMs5_NtCs8frGy5WneL6_4fish6parserNtB5_6Parser16set_var_and_fire(ptr noalias nofree noundef align 8 dereferenceable(432), ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance), i64 noundef, i32, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvMs3_NtCs8frGy5WneL6_4fish9tokenizerNtB5_3Tok6offset(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(20)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvCskeBJdk8gjxq_17fish_wcstringutil11split_about(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance), i64 noundef, i64 noundef, i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvCskeBJdk8gjxq_17fish_wcstringutil16split_string_tok(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance), i64 noundef, i64 noundef range(i64 0, 2), i64) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterRNtNtB17_6utfstr8Utf32StrENCNvNtNtCs8frGy5WneL6_4fish8builtins4read4reads5_0EE9from_iterB4c_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterRNtNtB17_6utfstr8Utf32StrENCNvNtNtCs8frGy5WneL6_4fish8builtins4read4reads4_0EE9from_iterB4c_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterRNtNtB17_6utfstr8Utf32StrENCNvNtNtCs8frGy5WneL6_4fish8builtins4read4reads3_0EE9from_iterB4c_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsA_NtCs1xwejQucwHj_5alloc3vecINtB5_3VeccEINtNtCs3oUPovFnLWP_4core7convert4FromAcj1_E4fromCs8frGy5WneL6_4fish(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtNtCs8frGy5WneL6_4fish8builtins6string9arguments(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488), ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs3_NtNtNtCs8frGy5WneL6_4fish8builtins6shared4miscNtB5_9ArgumentsNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(80)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXst_Cskr4qsHYS30i_15fish_widestringjNtB5_9ToWString10to_wstring(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvMsc_NtCs8frGy5WneL6_4fish2ioNtB6_12OutputStream8appendlnRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEB8_(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvXsg_Cskr4qsHYS30i_15fish_widestringNtB5_17WStrCharSplitIterNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvNtNtCs8frGy5WneL6_4fish8builtins6string21width_without_escapes(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs1_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_10Timestamps17update_last_added(ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #30

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvYNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator5eq_byNtNtNtB15_3str4iter5CharsNCINvYB3_BX_2eqB1Y_E0ECs8frGy5WneL6_4fish(ptr noundef nonnull, ptr noundef, ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtB6_5ErrorNtB6_5Debug3fmtCs8frGy5WneL6_4fish(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs1_NtCs8n0tpEuULLm_5pcre23ffiNtB5_15CodeUnitWidth32NtB5_13CodeUnitWidth15pcre2_code_free(ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCs8frGy5WneL6_4fish(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @close(i32 noundef) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneBL_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish13editable_line4EditENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneBJ_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs1_NtCs8n0tpEuULLm_5pcre23ffiNtB5_15CodeUnitWidth32NtB5_13CodeUnitWidth26pcre2_compile_context_free(ptr noundef) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs8frGy5WneL6_4fish8function18FunctionPropertiesE9drop_slowBK_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #27

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs8frGy5WneL6_4fish9job_group8JobGroupE9drop_slowBK_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #27

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE9drop_slowCs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #27

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtB6_5Debug3fmtCs8frGy5WneL6_4fish(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtCsfWaNi3IUeZW_11xterm_color5ColorNtB6_5Debug3fmtCs8frGy5WneL6_4fish(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtCs8frGy5WneL6_4fish15parse_constants11SourceRangeNtB6_5Debug3fmtBA_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtCs8frGy5WneL6_4fish3ast15TokenBackgroundNtB6_5Debug3fmtBA_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtCs8frGy5WneL6_4fish3ast6SemiNlNtB6_5Debug3fmtBA_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtCs8frGy5WneL6_4fish3key16ViewportPositionNtB6_5Debug3fmtBA_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtCs8frGy5WneL6_4fish5input5input19CursorPositionQueryNtB6_5Debug3fmtBC_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRcNtB6_5Debug3fmtCs8frGy5WneL6_4fish(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRhNtB6_5Debug3fmtCs8frGy5WneL6_4fish(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRlNtB6_5Debug3fmtCs8frGy5WneL6_4fish(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef i64 @_RNvCs7EgfsMK6071_8foldhash15hash_bytes_long(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1v_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvMsc_NtCs8frGy5WneL6_4fish2ioNtB6_12OutputStream6appendcEB8_(ptr noalias nofree noundef align 8 dereferenceable(24), i32 noundef range(i32 0, 1114112)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvMsc_NtCs8frGy5WneL6_4fish2ioNtB6_12OutputStream6appendRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEB8_(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvMsc_NtCs8frGy5WneL6_4fish2ioNtB6_12OutputStream6appendRINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEEB8_(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs1_NtCs8n0tpEuULLm_5pcre23ffiNtB5_15CodeUnitWidth32NtB5_13CodeUnitWidth20pcre2_jit_stack_free(ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs1_NtCs8n0tpEuULLm_5pcre23ffiNtB5_15CodeUnitWidth32NtB5_13CodeUnitWidth21pcre2_match_data_free(ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs1_NtCs8n0tpEuULLm_5pcre23ffiNtB5_15CodeUnitWidth32NtB5_13CodeUnitWidth24pcre2_match_context_free(ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8frGy5WneL6_4fish(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #31

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcINtNtCs3oUPovFnLWP_4core4cell4CellNtNtCs8frGy5WneL6_4fish6parser10ScopedDataEE9drop_slowB1f_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #27

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleE9drop_slowBH_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #27

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRmNtB6_5Debug3fmtCs8frGy5WneL6_4fish(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs0_NtNtCs8frGy5WneL6_4fish8builtins6stringNtB5_11StringError11print_error(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(72), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488), ptr noalias nofree noundef align 8 dereferenceable(48), i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1>, i1 immarg) #26

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #24 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #26 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #27 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #28 = { mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #29 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsjHpjAFo4bi0_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #30 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #31 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #32 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #33 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #34 = { cold noreturn nounwind }
attributes #35 = { cold }
attributes #36 = { noreturn }
attributes #37 = { noinline noreturn }
attributes #38 = { inlinehint }
attributes #39 = { noinline }
attributes #40 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (787af2b8c 2026-08-25)"}
!4 = !{i64 -1, i64 -9223372036854775808}
!5 = !{}
!6 = !{i64 0, i64 -9223372036854775808}
!7 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!8 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!9 = !{!"branch_weights", i32 2146410443, i32 1073205}
!10 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!11 = !{i64 8}
!12 = !{!"branch_weights", i32 1, i32 1999}
!13 = !{!"branch_weights", i32 0, i32 1}
!14 = !{i32 1, i32 0}
!15 = !{!"branch_weights", !"expected", i32 2146946, i32 2145336702}
!16 = !{!"branch_weights", i32 2002, i32 2000}
!17 = !{i8 0, i8 3}
!18 = !{i8 -1, i8 3}
!19 = !{i64 1, i64 536870913}
!20 = !{i64 0, i64 5}
!21 = !{!"llvm.loop.peeled.count", i32 1}
!22 = !{i64 0, i64 2}
!23 = !{!"branch_weights", i32 1, i32 1, i32 2000, i32 2000}
!24 = !{i64 0, i64 -9223372036854775807}
!25 = !{i64 2}
!26 = !{i64 4}
!27 = !{i64 -2, i64 -9223372036854775808}
!28 = !{i8 0, i8 2}
!29 = !{i8 0, i8 6}
!30 = !{i64 0, i64 3}
!31 = !{i32 0, i32 1114112}
!32 = !{i64 1, i64 0}
!33 = !{!"branch_weights", !"expected", i32 10034466, i32 2137449182}
!34 = !{!"llvm.loop.isvectorized", i32 1}
!35 = !{!"llvm.loop.unroll.runtime.disable"}
!36 = !{!"address", !"read_provenance"}
!37 = !{i32 0, i32 2}
!38 = !{i64 0, i64 -9223372036854775804}
!39 = !{i32 0, i32 3}
!40 = !{i32 -1, i32 1114112}
!41 = !{!"branch_weights", !"expected", i32 1341506, i32 2146142142}
!42 = distinct !{!42, !"_RINvMNtCs3oUPovFnLWP_4core5sliceSTINtNtCs1xwejQucwHj_5alloc6borrow3CoweENtNtCs3zOvCg6Ax1K_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2v_10FluentArgs3setReB18_E0ECs8frGy5WneL6_4fish"}
!43 = distinct !{!43, !42, !"_RINvMNtCs3oUPovFnLWP_4core5sliceSTINtNtCs1xwejQucwHj_5alloc6borrow3CoweENtNtCs3zOvCg6Ax1K_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2v_10FluentArgs3setReB18_E0ECs8frGy5WneL6_4fish: argument 0"}
!44 = distinct !{!44, !"_RINvMNtCs3oUPovFnLWP_4core5sliceSTINtNtCs1xwejQucwHj_5alloc6borrow3CoweENtNtCs3zOvCg6Ax1K_13fluent_bundle5types11FluentValueE16binary_search_byNCINvB2_20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2V_10FluentArgs3setReB18_E0E0ECs8frGy5WneL6_4fish"}
!45 = distinct !{!45, !44, !"_RINvMNtCs3oUPovFnLWP_4core5sliceSTINtNtCs1xwejQucwHj_5alloc6borrow3CoweENtNtCs3zOvCg6Ax1K_13fluent_bundle5types11FluentValueE16binary_search_byNCINvB2_20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2V_10FluentArgs3setReB18_E0E0ECs8frGy5WneL6_4fish: argument 0"}
!46 = distinct !{!46, !"_RNCINvMNtCs3oUPovFnLWP_4core5sliceSTINtNtCs1xwejQucwHj_5alloc6borrow3CoweENtNtCs3zOvCg6Ax1K_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBy_NCINvMNtB1e_4argsNtB2x_10FluentArgs3setReB1a_E0E0Cs8frGy5WneL6_4fish"}
!47 = distinct !{!47, !46, !"_RNCINvMNtCs3oUPovFnLWP_4core5sliceSTINtNtCs1xwejQucwHj_5alloc6borrow3CoweENtNtCs3zOvCg6Ax1K_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBy_NCINvMNtB1e_4argsNtB2x_10FluentArgs3setReB1a_E0E0Cs8frGy5WneL6_4fish: argument 0"}
!48 = distinct !{!48, !"_RNvXs7_NtCs1xwejQucwHj_5alloc6borrowINtB5_3CoweENtNtCs3oUPovFnLWP_4core3cmp3Ord3cmpCs8frGy5WneL6_4fish"}
!49 = distinct !{!49, !48, !"_RNvXs7_NtCs1xwejQucwHj_5alloc6borrowINtB5_3CoweENtNtCs3oUPovFnLWP_4core3cmp3Ord3cmpCs8frGy5WneL6_4fish: argument 0"}
!50 = distinct !{!50, !44, !"_RINvMNtCs3oUPovFnLWP_4core5sliceSTINtNtCs1xwejQucwHj_5alloc6borrow3CoweENtNtCs3zOvCg6Ax1K_13fluent_bundle5types11FluentValueE16binary_search_byNCINvB2_20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2V_10FluentArgs3setReB18_E0E0ECs8frGy5WneL6_4fish: argument 1"}
!51 = distinct !{!51, !48, !"_RNvXs7_NtCs1xwejQucwHj_5alloc6borrowINtB5_3CoweENtNtCs3oUPovFnLWP_4core3cmp3Ord3cmpCs8frGy5WneL6_4fish: argument 1"}
!52 = distinct !{!52, !"_RNvXNtNtCs3oUPovFnLWP_4core3str6traitseNtNtB6_3cmp3Ord3cmp"}
!53 = distinct !{!53, !52, !"_RNvXNtNtCs3oUPovFnLWP_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 1"}
!54 = distinct !{!54, !52, !"_RNvXNtNtCs3oUPovFnLWP_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 0"}
!55 = distinct !{!55, !"_RNCINvMNtCs3oUPovFnLWP_4core5sliceSTINtNtCs1xwejQucwHj_5alloc6borrow3CoweENtNtCs3zOvCg6Ax1K_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBy_NCINvMNtB1e_4argsNtB2x_10FluentArgs3setReB1a_E0E0Cs8frGy5WneL6_4fish"}
!56 = distinct !{!56, !55, !"_RNCINvMNtCs3oUPovFnLWP_4core5sliceSTINtNtCs1xwejQucwHj_5alloc6borrow3CoweENtNtCs3zOvCg6Ax1K_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBy_NCINvMNtB1e_4argsNtB2x_10FluentArgs3setReB1a_E0E0Cs8frGy5WneL6_4fish: argument 0"}
!57 = distinct !{!57, !"_RNvXs7_NtCs1xwejQucwHj_5alloc6borrowINtB5_3CoweENtNtCs3oUPovFnLWP_4core3cmp3Ord3cmpCs8frGy5WneL6_4fish"}
!58 = distinct !{!58, !57, !"_RNvXs7_NtCs1xwejQucwHj_5alloc6borrowINtB5_3CoweENtNtCs3oUPovFnLWP_4core3cmp3Ord3cmpCs8frGy5WneL6_4fish: argument 0"}
!59 = distinct !{!59, !57, !"_RNvXs7_NtCs1xwejQucwHj_5alloc6borrowINtB5_3CoweENtNtCs3oUPovFnLWP_4core3cmp3Ord3cmpCs8frGy5WneL6_4fish: argument 1"}
!60 = distinct !{!60, !"_RNvXNtNtCs3oUPovFnLWP_4core3str6traitseNtNtB6_3cmp3Ord3cmp"}
!61 = distinct !{!61, !60, !"_RNvXNtNtCs3oUPovFnLWP_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 1"}
!62 = distinct !{!62, !60, !"_RNvXNtNtCs3oUPovFnLWP_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 0"}
!63 = distinct !{!63, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTINtNtCs1xwejQucwHj_5alloc6borrow3CoweENtNtCs3zOvCg6Ax1K_13fluent_bundle5types11FluentValueEECs8frGy5WneL6_4fish"}
!64 = distinct !{!64, !63, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTINtNtCs1xwejQucwHj_5alloc6borrow3CoweENtNtCs3zOvCg6Ax1K_13fluent_bundle5types11FluentValueEECs8frGy5WneL6_4fish: argument 0"}
!65 = distinct !{!65, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECs8frGy5WneL6_4fish"}
!66 = distinct !{!66, !65, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECs8frGy5WneL6_4fish: argument 0"}
!67 = distinct !{!67, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCs3zOvCg6Ax1K_13fluent_bundle5types11FluentValueEE10insert_mutCs8frGy5WneL6_4fish"}
!68 = distinct !{!68, !67, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCs3zOvCg6Ax1K_13fluent_bundle5types11FluentValueEE10insert_mutCs8frGy5WneL6_4fish: argument 0"}
!69 = distinct !{!69, !67, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCs3zOvCg6Ax1K_13fluent_bundle5types11FluentValueEE10insert_mutCs8frGy5WneL6_4fish: argument 1"}
!70 = !{!43}
!71 = !{!45}
!72 = !{!47}
!73 = !{!49}
!74 = !{!49, !47, !45, !43}
!75 = !{!51, !50}
!76 = !{!54, !53}
!77 = !{!49, !51, !47, !45, !50, !43}
!78 = !{!56}
!79 = !{!58}
!80 = !{!58, !56, !45, !43}
!81 = !{!59, !50}
!82 = !{!62, !61}
!83 = !{!58, !59, !56, !45, !50, !43}
!84 = !{!66, !64}
!85 = !{!68}
!86 = !{!69}
!87 = distinct !{!87, !"_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyINtNtCs3oUPovFnLWP_4core4cell4CellTyyEEE8try_withNCNvMNtNtBa_4hash6randomNtB1M_11RandomState3new0B25_ECs8frGy5WneL6_4fish"}
!88 = distinct !{!88, !87, !"_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyINtNtCs3oUPovFnLWP_4core4cell4CellTyyEEE8try_withNCNvMNtNtBa_4hash6randomNtB1M_11RandomState3new0B25_ECs8frGy5WneL6_4fish: argument 0"}
!89 = distinct !{null}
!90 = !{!88}
!91 = distinct !{null}
!92 = distinct !{null}
!93 = distinct !{null}
!94 = distinct !{!94, !"_RNvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB5_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBS_8LruEntryB1h_NtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEEE6removeB3j_"}
!95 = distinct !{!95, !94, !"_RNvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB5_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBS_8LruEntryB1h_NtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEEE6removeB3j_: argument 1"}
!96 = distinct !{!96, !94, !"_RNvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB5_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBS_8LruEntryB1h_NtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEEE6removeB3j_: argument 0"}
!97 = distinct !{!97, !"_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner5erase"}
!98 = distinct !{!98, !97, !"_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner5erase: argument 0"}
!99 = distinct !{!99, !"_RNvNtNtNtCs3oUPovFnLWP_4core9core_arch3x864sse215__mm_loadu_si128"}
!100 = distinct !{!100, !99, !"_RNvNtNtNtCs3oUPovFnLWP_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!101 = distinct !{!101, !"_RNvNtNtNtCs3oUPovFnLWP_4core9core_arch3x864sse215__mm_loadu_si128"}
!102 = distinct !{!102, !101, !"_RNvNtNtNtCs3oUPovFnLWP_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!103 = !{!95}
!104 = !{!96}
!105 = !{!98}
!106 = !{!98, !95}
!107 = !{!100, !98, !96, !95}
!108 = !{!102, !98, !96, !95}
!109 = !{!98, !96, !95}
!110 = !{!96, !95}
!111 = distinct !{!111, !"_RINvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCshZ5T49Ks0oD_14allocator_api26stable5alloc6global6GlobalECs8frGy5WneL6_4fish"}
!112 = distinct !{!112, !111, !"_RINvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCshZ5T49Ks0oD_14allocator_api26stable5alloc6global6GlobalECs8frGy5WneL6_4fish: argument 0"}
!113 = distinct !{!113, !111, !"_RINvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCshZ5T49Ks0oD_14allocator_api26stable5alloc6global6GlobalECs8frGy5WneL6_4fish: argument 2"}
!114 = distinct !{!114, !111, !"_RINvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCshZ5T49Ks0oD_14allocator_api26stable5alloc6global6GlobalECs8frGy5WneL6_4fish: argument 1"}
!115 = distinct !{!115, !"_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place"}
!116 = distinct !{!116, !115, !"_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place: argument 0"}
!117 = distinct !{!117, !115, !"_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place: argument 1"}
!118 = distinct !{!118, !"_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCs8frGy5WneL6_4fish4proc3PidEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_INtNtCs1xwejQucwHj_5alloc2rc2RcNtNtB1o_11wait_handle10WaitHandleEEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1R_NtNtBa_6hasher18DefaultHashBuilderE0E0B1o_"}
!119 = distinct !{!119, !118, !"_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCs8frGy5WneL6_4fish4proc3PidEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_INtNtCs1xwejQucwHj_5alloc2rc2RcNtNtB1o_11wait_handle10WaitHandleEEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1R_NtNtBa_6hasher18DefaultHashBuilderE0E0B1o_: argument 1"}
!120 = distinct !{!120, !118, !"_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCs8frGy5WneL6_4fish4proc3PidEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_INtNtCs1xwejQucwHj_5alloc2rc2RcNtNtB1o_11wait_handle10WaitHandleEEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1R_NtNtBa_6hasher18DefaultHashBuilderE0E0B1o_: argument 0"}
!121 = distinct !{!121, !"_RNvNtNtNtCs3oUPovFnLWP_4core9core_arch3x864sse215__mm_loadu_si128"}
!122 = distinct !{!122, !121, !"_RNvNtNtNtCs3oUPovFnLWP_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!123 = distinct !{!123, !"_RINvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtNtNtCshZ5T49Ks0oD_14allocator_api26stable5alloc6global6GlobalECs8frGy5WneL6_4fish"}
!124 = distinct !{!124, !123, !"_RINvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtNtNtCshZ5T49Ks0oD_14allocator_api26stable5alloc6global6GlobalECs8frGy5WneL6_4fish: argument 0"}
!125 = distinct !{!125, !123, !"_RINvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtNtNtCshZ5T49Ks0oD_14allocator_api26stable5alloc6global6GlobalECs8frGy5WneL6_4fish: argument 2"}
!126 = distinct !{!126, !123, !"_RINvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtNtNtCshZ5T49Ks0oD_14allocator_api26stable5alloc6global6GlobalECs8frGy5WneL6_4fish: argument 1"}
!127 = distinct !{!127, !"_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCs8frGy5WneL6_4fish4proc3PidEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_INtNtCs1xwejQucwHj_5alloc2rc2RcNtNtB1o_11wait_handle10WaitHandleEEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1R_NtNtBa_6hasher18DefaultHashBuilderE0E0B1o_"}
!128 = distinct !{!128, !127, !"_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCs8frGy5WneL6_4fish4proc3PidEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_INtNtCs1xwejQucwHj_5alloc2rc2RcNtNtB1o_11wait_handle10WaitHandleEEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1R_NtNtBa_6hasher18DefaultHashBuilderE0E0B1o_: argument 1"}
!129 = distinct !{!129, !127, !"_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCs8frGy5WneL6_4fish4proc3PidEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_INtNtCs1xwejQucwHj_5alloc2rc2RcNtNtB1o_11wait_handle10WaitHandleEEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1R_NtNtBa_6hasher18DefaultHashBuilderE0E0B1o_: argument 0"}
!130 = distinct !{!130, !"_RNvNtNtNtCs3oUPovFnLWP_4core9core_arch3x864sse215__mm_loadu_si128"}
!131 = distinct !{!131, !130, !"_RNvNtNtNtCs3oUPovFnLWP_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!132 = !{!112}
!133 = !{!114, !113}
!134 = !{!112, !114, !113}
!135 = !{!116}
!136 = !{!116, !117, !114}
!137 = !{!117, !114}
!138 = !{!119}
!139 = !{!120, !117, !114}
!140 = !{!122}
!141 = !{!124}
!142 = !{!124, !126, !125, !112, !114, !113}
!143 = !{!125, !113}
!144 = !{!124, !112}
!145 = !{!126, !125, !114, !113}
!146 = !{!128}
!147 = !{!129, !125, !113}
!148 = !{!131}
!149 = distinct !{!149, !"_RINvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCshZ5T49Ks0oD_14allocator_api26stable5alloc6global6GlobalECs8frGy5WneL6_4fish"}
!150 = distinct !{!150, !149, !"_RINvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCshZ5T49Ks0oD_14allocator_api26stable5alloc6global6GlobalECs8frGy5WneL6_4fish: argument 0"}
!151 = distinct !{!151, !149, !"_RINvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCshZ5T49Ks0oD_14allocator_api26stable5alloc6global6GlobalECs8frGy5WneL6_4fish: argument 2"}
!152 = distinct !{!152, !149, !"_RINvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCshZ5T49Ks0oD_14allocator_api26stable5alloc6global6GlobalECs8frGy5WneL6_4fish: argument 1"}
!153 = distinct !{!153, !"_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place"}
!154 = distinct !{!154, !153, !"_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place: argument 0"}
!155 = distinct !{!155, !153, !"_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place: argument 1"}
!156 = distinct !{!156, !"_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B2c_NtNtBa_6hasher18DefaultHashBuilderE0E0Cs8frGy5WneL6_4fish"}
!157 = distinct !{!157, !156, !"_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B2c_NtNtBa_6hasher18DefaultHashBuilderE0E0Cs8frGy5WneL6_4fish: argument 1"}
!158 = distinct !{!158, !156, !"_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B2c_NtNtBa_6hasher18DefaultHashBuilderE0E0Cs8frGy5WneL6_4fish: argument 0"}
!159 = distinct !{!159, !"_RNvNtNtNtCs3oUPovFnLWP_4core9core_arch3x864sse215__mm_loadu_si128"}
!160 = distinct !{!160, !159, !"_RNvNtNtNtCs3oUPovFnLWP_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!161 = distinct !{!161, !"_RINvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtNtNtCshZ5T49Ks0oD_14allocator_api26stable5alloc6global6GlobalECs8frGy5WneL6_4fish"}
!162 = distinct !{!162, !161, !"_RINvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtNtNtCshZ5T49Ks0oD_14allocator_api26stable5alloc6global6GlobalECs8frGy5WneL6_4fish: argument 0"}
!163 = distinct !{!163, !161, !"_RINvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtNtNtCshZ5T49Ks0oD_14allocator_api26stable5alloc6global6GlobalECs8frGy5WneL6_4fish: argument 2"}
!164 = distinct !{!164, !161, !"_RINvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtNtNtCshZ5T49Ks0oD_14allocator_api26stable5alloc6global6GlobalECs8frGy5WneL6_4fish: argument 1"}
!165 = distinct !{!165, !"_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B2c_NtNtBa_6hasher18DefaultHashBuilderE0E0Cs8frGy5WneL6_4fish"}
!166 = distinct !{!166, !165, !"_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B2c_NtNtBa_6hasher18DefaultHashBuilderE0E0Cs8frGy5WneL6_4fish: argument 1"}
!167 = distinct !{!167, !165, !"_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B2c_NtNtBa_6hasher18DefaultHashBuilderE0E0Cs8frGy5WneL6_4fish: argument 0"}
!168 = distinct !{!168, !"_RNvNtNtNtCs3oUPovFnLWP_4core9core_arch3x864sse215__mm_loadu_si128"}
!169 = distinct !{!169, !168, !"_RNvNtNtNtCs3oUPovFnLWP_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!170 = !{!150}
!171 = !{!152, !151}
end_hunk_1
