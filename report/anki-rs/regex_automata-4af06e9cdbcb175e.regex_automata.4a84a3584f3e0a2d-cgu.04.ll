inline.NumInlined: 554
inline.NumDeleted: 232
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN14regex_automata4util8alphabet12ByteClassSet7add_set17h3afaeba9ec52048bE:.split

bb.b:                                             ; preds = %.lr.ph, %bb.a
  %.sroa.4.137 = phi i64 [ %.sroa.4.041, %.lr.ph ], [ %i.b, %bb.a ] ; 6 uses
  %i.a = trunc nuw i64 %.sroa.4.137 to i8         ; 3 uses
  %i.b = add nuw nsw i64 %.sroa.4.137, 1          ; 7 uses
  %.lobit.i.i = lshr i64 %.sroa.4.137, 7
  %i.c = and i8 %i.a, 127
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.lobit.i.i
  %i.e = load i128, ptr %i.d, align 16, !alias.scope !292, !noalias !295, !noundef !3
  %i.f = zext nneg i8 %i.c to i128
  %i.g = shl nuw i128 1, %i.f
  %i.h = and i128 %i.e, %i.g
  %.not.i = icmp eq i128 %i.h, 0
  br i1 %.not.i, label %bb.a, label %thread-pre-split.i

thread-pre-split.i:                               ; preds = %bb.b
  %i.i = icmp samesign ult i64 %.sroa.4.137, 255
  br i1 %i.i, label %.lr.ph.i.preheader, label %"_ZN107_$LT$regex_automata..util..alphabet..ByteSetRangeIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hbfac22314004b0a8E.exit.thread"

.lr.ph.i.preheader:                               ; preds = %thread-pre-split.i
  %i.j = trunc nuw i64 %i.b to i8
  %.lobit.i9.i8 = lshr i64 %i.b, 7
  %i.k = and i8 %i.j, 127
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.lobit.i9.i8
  %i.m = load i128, ptr %i.l, align 16, !alias.scope !298, !noalias !295, !noundef !3
  %i.n = zext nneg i8 %i.k to i128
  %i.o = shl nuw i128 1, %i.n
  %i.p = and i128 %i.o, %i.m
  %.not10.i9 = icmp eq i128 %i.p, 0
  br i1 %.not10.i9, label %"_ZN107_$LT$regex_automata..util..alphabet..ByteSetRangeIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hbfac22314004b0a8E.exit", label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit.i.preheader"

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit.i.preheader": ; preds = %.lr.ph.i.preheader
  %i.q = add nuw nsw i64 %.sroa.4.137, 2          ; 2 uses
  %exitcond19.not.i39 = icmp eq i64 %i.q, 256
  br i1 %exitcond19.not.i39, label %"_ZN107_$LT$regex_automata..util..alphabet..ByteSetRangeIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hbfac22314004b0a8E.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit.i.preheader", %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit.i"
  %i.r = phi i64 [ %i.y, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit.i" ], [ %i.q, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit.i.preheader" ] ; 5 uses
  %.sroa.4.21040 = phi i64 [ %i.r, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit.i" ], [ %i.b, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit.i.preheader" ]
  %indvars = trunc i64 %i.r to i8
  %.lobit.i9.i = lshr i64 %i.r, 7
  %i.s = and i8 %indvars, 127
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.lobit.i9.i
  %i.u = load i128, ptr %i.t, align 16, !alias.scope !298, !noalias !295, !noundef !3
  %i.v = zext nneg i8 %i.s to i128
  %i.w = shl nuw i128 1, %i.v
  %i.x = and i128 %i.w, %i.u
  %.not10.i = icmp eq i128 %i.x, 0
  br i1 %.not10.i, label %"_ZN107_$LT$regex_automata..util..alphabet..ByteSetRangeIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hbfac22314004b0a8E.exit.loopexit.split.loop.exit", label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit.i"

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit.i": ; preds = %.lr.ph.i
  %i.y = add i64 %i.r, 1                          ; 2 uses
  %exitcond19.not.i = icmp eq i64 %i.y, 256
  br i1 %exitcond19.not.i, label %"_ZN107_$LT$regex_automata..util..alphabet..ByteSetRangeIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hbfac22314004b0a8E.exit", label %.lr.ph.i

"_ZN107_$LT$regex_automata..util..alphabet..ByteSetRangeIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hbfac22314004b0a8E.exit.loopexit.split.loop.exit": ; preds = %.lr.ph.i
  %indvars16.le = trunc i64 %.sroa.4.21040 to i8
  br label %"_ZN107_$LT$regex_automata..util..alphabet..ByteSetRangeIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hbfac22314004b0a8E.exit"

"_ZN107_$LT$regex_automata..util..alphabet..ByteSetRangeIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hbfac22314004b0a8E.exit": ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit.i", %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit.i.preheader", %"_ZN107_$LT$regex_automata..util..alphabet..ByteSetRangeIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hbfac22314004b0a8E.exit.loopexit.split.loop.exit", %.lr.ph.i.preheader
  %.sroa.4.3 = phi i64 [ %i.b, %.lr.ph.i.preheader ], [ %i.r, %"_ZN107_$LT$regex_automata..util..alphabet..ByteSetRangeIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hbfac22314004b0a8E.exit.loopexit.split.loop.exit" ], [ 256, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit.i.preheader" ], [ 256, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit.i" ] ; 2 uses
  %.sroa.4.0.i = phi i8 [ %i.a, %.lr.ph.i.preheader ], [ %indvars16.le, %"_ZN107_$LT$regex_automata..util..alphabet..ByteSetRangeIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hbfac22314004b0a8E.exit.loopexit.split.loop.exit" ], [ -1, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit.i.preheader" ], [ -1, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit.i" ] ; 2 uses
  %.not.i3 = icmp eq i64 %.sroa.4.137, 0
  br i1 %.not.i3, label %_ZN14regex_automata4util8alphabet12ByteClassSet9set_range17h8e368dc86e53d9bdE.exit, label %"_ZN107_$LT$regex_automata..util..alphabet..ByteSetRangeIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hbfac22314004b0a8E.exit.thread"

"_ZN107_$LT$regex_automata..util..alphabet..ByteSetRangeIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hbfac22314004b0a8E.exit.thread": ; preds = %thread-pre-split.i, %"_ZN107_$LT$regex_automata..util..alphabet..ByteSetRangeIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hbfac22314004b0a8E.exit"
  %.sroa.4.0.i23 = phi i8 [ %.sroa.4.0.i, %"_ZN107_$LT$regex_automata..util..alphabet..ByteSetRangeIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hbfac22314004b0a8E.exit" ], [ -1, %thread-pre-split.i ]
  %.sroa.4.321 = phi i64 [ %.sroa.4.3, %"_ZN107_$LT$regex_automata..util..alphabet..ByteSetRangeIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hbfac22314004b0a8E.exit" ], [ %i.b, %thread-pre-split.i ]
  %i.z = add i8 %i.a, -1                          ; 2 uses
  %.lobit.i1.i = lshr i8 %i.z, 7
  %i.aa = zext nneg i8 %.lobit.i1.i to i64
  %i.ab = and i8 %i.z, 127
  %i.ac = zext nneg i8 %i.ab to i128
  %i.ad = shl nuw i128 1, %i.ac
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.aa ; 2 uses
  %i.af = load i128, ptr %i.ae, align 16, !alias.scope !301, !noundef !3
  %i.ag = or i128 %i.af, %i.ad
  store i128 %i.ag, ptr %i.ae, align 16, !alias.scope !301
  br label %_ZN14regex_automata4util8alphabet12ByteClassSet9set_range17h8e368dc86e53d9bdE.exit

_ZN14regex_automata4util8alphabet12ByteClassSet9set_range17h8e368dc86e53d9bdE.exit: ; preds = %"_ZN107_$LT$regex_automata..util..alphabet..ByteSetRangeIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hbfac22314004b0a8E.exit", %"_ZN107_$LT$regex_automata..util..alphabet..ByteSetRangeIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hbfac22314004b0a8E.exit.thread"
  %.sroa.4.0.i24 = phi i8 [ %.sroa.4.0.i, %"_ZN107_$LT$regex_automata..util..alphabet..ByteSetRangeIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hbfac22314004b0a8E.exit" ], [ %.sroa.4.0.i23, %"_ZN107_$LT$regex_automata..util..alphabet..ByteSetRangeIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hbfac22314004b0a8E.exit.thread" ] ; 2 uses
  %.sroa.4.322 = phi i64 [ %.sroa.4.3, %"_ZN107_$LT$regex_automata..util..alphabet..ByteSetRangeIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hbfac22314004b0a8E.exit" ], [ %.sroa.4.321, %"_ZN107_$LT$regex_automata..util..alphabet..ByteSetRangeIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hbfac22314004b0a8E.exit.thread" ] ; 3 uses
  %.lobit.i.i4 = lshr i8 %.sroa.4.0.i24, 7
  %i.ah = zext nneg i8 %.lobit.i.i4 to i64
  %i.ai = and i8 %.sroa.4.0.i24, 127
  %i.aj = zext nneg i8 %i.ai to i128
  %i.ak = shl nuw i128 1, %i.aj
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ah ; 2 uses
  %i.am = load i128, ptr %i.al, align 16, !alias.scope !306, !noundef !3
  %i.an = or i128 %i.am, %i.ak
  store i128 %i.an, ptr %i.al, align 16, !alias.scope !306
  %umax.i = tail call i64 @llvm.umax.i64(i64 %.sroa.4.322, i64 256)
  %exitcond.not.i.not36 = icmp ugt i64 %.sroa.4.322, 255
  br i1 %exitcond.not.i.not36, label %.critedge, label %.lr.ph

.critedge:                                        ; preds = %_ZN14regex_automata4util8alphabet12ByteClassSet9set_range17h8e368dc86e53d9bdE.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN14regex_automata4util8alphabet12ByteClassSet9set_range17h8e368dc86e53d9bdE(ptr noalias nofree noundef align 16 captures(none) dereferenceable(32) %0, i8 noundef %1, i8 noundef %2) unnamed_addr #6 {
bb.a:
  %.not = icmp eq i8 %1, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.a
  %.lobit.i = lshr i8 %2, 7
  %i.a = zext nneg i8 %.lobit.i to i64
  %i.b = and i8 %2, 127
  %i.c = zext nneg i8 %i.b to i128
  %i.d = shl nuw i128 1, %i.c
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.a ; 2 uses
  %i.f = load i128, ptr %i.e, align 16, !alias.scope !309, !noundef !3
  %i.g = or i128 %i.f, %i.d
  store i128 %i.g, ptr %i.e, align 16, !alias.scope !309
  ret void

bb.c:                                             ; preds = %bb.a
  %i.h = add i8 %1, -1                            ; 2 uses
  %.lobit.i1 = lshr i8 %i.h, 7
  %i.i = zext nneg i8 %.lobit.i1 to i64
  %i.j = and i8 %i.h, 127
  %i.k = zext nneg i8 %i.j to i128
  %i.l = shl nuw i128 1, %i.k
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.i ; 2 uses
  %i.n = load i128, ptr %i.m, align 16, !alias.scope !312, !noundef !3
  %i.o = or i128 %i.n, %i.l
  store i128 %i.o, ptr %i.m, align 16, !alias.scope !312
  br label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef zeroext i1 @_ZN14regex_automata4util8alphabet4Unit12is_word_byte17hb509140158567dd7E(i32 %0) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = trunc i32 %0 to i1
  br i1 %i.a, label %"_ZN4core6option15Option$LT$T$GT$6map_or17hd309a9c842460863E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.4.0.extract.shift = lshr i32 %0, 8
  %i.b = and i32 %.sroa.4.0.extract.shift, 255
  %i.c = zext nneg i32 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr @23, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !range !22, !noundef !3
  %i.f = trunc nuw i8 %i.e to i1
  br label %"_ZN4core6option15Option$LT$T$GT$6map_or17hd309a9c842460863E.exit"

"_ZN4core6option15Option$LT$T$GT$6map_or17hd309a9c842460863E.exit": ; preds = %bb.a, %bb.b
  %.sroa.02.0.i = phi i1 [ %i.f, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.02.0.i
}

; Function Attrs: nonlazybind uwtable
define range(i32 1, 16777218) i32 @_ZN14regex_automata4util8alphabet4Unit3eoi17h7bde68dad5abe20fE(i64 noundef %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %0, ptr %i.c, align 8
  %i.d = icmp ult i64 %0, 257
  br i1 %i.d, label %.split9, label %bb.b, !prof !28

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17hb55abab394fd8017E", ptr %.sroa.47.0..sroa_idx, align 8
  store ptr @28, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.a, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 1, ptr %i.h, align 8
  call void @_ZN4core9panicking9panic_fmt17h62031895f6e012daE(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #27
  unreachable

.split9:                                          ; preds = %bb.a
  %.sroa.42.0.insert.ext = trunc nuw nsw i64 %0 to i32
  %.sroa.42.0.insert.shift = shl nuw nsw i32 %.sroa.42.0.insert.ext, 16
  %.sroa.01.0.insert.insert = or disjoint i32 %.sroa.42.0.insert.shift, 1
  ret i32 %.sroa.01.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef zeroext i1 @_ZN14regex_automata4util8alphabet4Unit7is_byte17h070a1fdd134b5110E(i32 %0, i8 noundef %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = trunc i32 %0 to i1
  %.sroa.03.0 = xor i1 %i.a, true
  %.sroa.4.0.extract.shift = lshr i32 %0, 8
  %.sroa.4.0.extract.trunc = trunc i32 %.sroa.4.0.extract.shift to i8
  %i.b = icmp eq i8 %1, %.sroa.4.0.extract.trunc
  %spec.select.i = and i1 %i.b, %.sroa.03.0
  ret i1 %spec.select.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN14regex_automata4util8alphabet7ByteSet10from_bytes17h336c70f967fde40fE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 16 captures(none) dereferenceable(64) initializes((0, 8), (16, 24)) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [48 x i8], align 16               ; 10 uses
  %i.b = alloca [48 x i8], align 16               ; 10 uses
  %i.c = icmp ult i64 %2, 32
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_ZN14regex_automata4util4wire13try_read_u12817ha9b3f991a011d8faE(ptr noalias noundef nonnull sret([48 x i8]) align 16 captures(address) dereferenceable(48) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @30, i64 noundef 19)
  %i.d = load i64, ptr %i.b, align 16, !range !21, !noundef !3
  %i.e = trunc nuw i64 %i.d to i1
  br i1 %i.e, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.f, align 8
  %.sroa.366.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @32, ptr %.sroa.366.0..sroa_idx, align 16
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.072.0.copyload = load i64, ptr %i.g, align 8
  %.sroa.573.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.573.0.copyload = load i128, ptr %.sroa.573.0..sroa_idx, align 16
  %.sroa.674.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.674.0.copyload = load i64, ptr %.sroa.674.0..sroa_idx, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.072.0.copyload, ptr %i.h, align 8
  %.sroa.276.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i128 %.sroa.573.0.copyload, ptr %.sroa.276.0..sroa_idx, align 16
  br label %bb.h

bb.e:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.j = load i128, ptr %i.i, align 16, !noundef !3
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.l = load i64, ptr %i.k, align 16, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_ZN14regex_automata4util4wire13try_read_u12817ha9b3f991a011d8faE(ptr noalias noundef nonnull sret([48 x i8]) align 16 captures(address) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @31, i64 noundef 20)
  %i.m = load i64, ptr %i.a, align 16, !range !21, !noundef !3
  %i.n = trunc nuw i64 %i.m to i1
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.081.0.copyload = load i64, ptr %i.o, align 8
  %.sroa.582.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.582.0.copyload = load i128, ptr %.sroa.582.0..sroa_idx, align 16
  %.sroa.683.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.683.0.copyload = load i64, ptr %.sroa.683.0..sroa_idx, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.081.0.copyload, ptr %i.p, align 8
  %.sroa.285.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i128 %.sroa.582.0.copyload, ptr %.sroa.285.0..sroa_idx, align 16
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.r = load i128, ptr %i.q, align 16, !noundef !3
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.t = load i64, ptr %i.s, align 16, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.u = add i64 %i.t, %i.l
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i128 %i.j, ptr %i.v, align 16
  %.sroa.023.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i128 %i.r, ptr %.sroa.023.sroa.4.0..sroa_idx, align 16
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.f, %bb.g, %bb.c
  %.sink87 = phi i64 [ 32, %bb.d ], [ 32, %bb.f ], [ 48, %bb.g ], [ 24, %bb.c ]
  %.sroa.674.0.copyload.sink = phi i64 [ %.sroa.674.0.copyload, %bb.d ], [ %.sroa.683.0.copyload, %bb.f ], [ %i.u, %bb.g ], [ 8, %bb.c ]
  %.sink = phi i64 [ 1, %bb.d ], [ 1, %bb.f ], [ 0, %bb.g ], [ 1, %bb.c ]
  %.sroa.377.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 %.sink87
  store i64 %.sroa.674.0.copyload.sink, ptr %.sroa.377.0..sroa_idx, align 8
  store i64 %.sink, ptr %0, align 16
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZN14regex_automata4util8alphabet7ByteSet14contains_range17hdee24ce7497e20fdE(ptr noalias noundef readonly align 16 captures(none) dereferenceable(32) %0, i8 noundef %1, i8 noundef %2) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %.not.i = icmp ugt i8 %1, %2
  br i1 %.not.i, label %"_ZN107_$LT$core..ops..range..RangeInclusive$LT$T$GT$$u20$as$u20$core..iter..range..RangeInclusiveIteratorImpl$GT$13spec_try_fold17h81156f7bc1eafe51E.exit", label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.a
  %exitcond.not.i4 = icmp eq i8 %1, %2
  br i1 %exitcond.not.i4, label %.preheader.i._crit_edge, label %.lr.ph

.preheader.i:                                     ; preds = %.lr.ph
  %i.a = add i8 %i.b, 1                           ; 2 uses
  %exitcond.not.i = icmp eq i8 %i.a, %2
  br i1 %exitcond.not.i, label %.preheader.i._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.i.preheader, %.preheader.i
  %i.b = phi i8 [ %i.a, %.preheader.i ], [ %1, %.preheader.i.preheader ] ; 3 uses
  %.lobit.i.i.i.i = lshr i8 %i.b, 7
  %i.c = zext nneg i8 %.lobit.i.i.i.i to i64
  %i.d = and i8 %i.b, 127
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.c
  %i.f = load i128, ptr %i.e, align 16, !alias.scope !315, !noalias !320, !noundef !3
  %i.g = zext nneg i8 %i.d to i128
  %i.h = shl nuw i128 1, %i.g
  %i.i = and i128 %i.f, %i.h
  %.not.i.i = icmp eq i128 %i.i, 0
  br i1 %.not.i.i, label %"_ZN107_$LT$core..ops..range..RangeInclusive$LT$T$GT$$u20$as$u20$core..iter..range..RangeInclusiveIteratorImpl$GT$13spec_try_fold17h81156f7bc1eafe51E.exit", label %.preheader.i

.preheader.i._crit_edge:                          ; preds = %.preheader.i, %.preheader.i.preheader
  %.lobit.i.i.i10.i = lshr i8 %2, 7
  %i.j = zext nneg i8 %.lobit.i.i.i10.i to i64
  %i.k = and i8 %2, 127
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.j
  %i.m = load i128, ptr %i.l, align 16, !alias.scope !322, !noalias !320, !noundef !3
  %i.n = zext nneg i8 %i.k to i128
  %i.o = shl nuw i128 1, %i.n
  %i.p = and i128 %i.m, %i.o
  %i.q = icmp ne i128 %i.p, 0
  br label %"_ZN107_$LT$core..ops..range..RangeInclusive$LT$T$GT$$u20$as$u20$core..iter..range..RangeInclusiveIteratorImpl$GT$13spec_try_fold17h81156f7bc1eafe51E.exit"

"_ZN107_$LT$core..ops..range..RangeInclusive$LT$T$GT$$u20$as$u20$core..iter..range..RangeInclusiveIteratorImpl$GT$13spec_try_fold17h81156f7bc1eafe51E.exit": ; preds = %.lr.ph, %bb.a, %.preheader.i._crit_edge
  %.sroa.0.0.i = phi i1 [ true, %bb.a ], [ %i.q, %.preheader.i._crit_edge ], [ false, %.lr.ph ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN14regex_automata4util8alphabet7ByteSet3add17ha327b483db45c86cE(ptr noalias nofree noundef align 16 captures(none) dereferenceable(32) %0, i8 noundef %1) unnamed_addr #6 {
bb.a:
  %.lobit = lshr i8 %1, 7
  %i.a = zext nneg i8 %.lobit to i64
  %i.b = and i8 %1, 127
  %i.c = zext nneg i8 %i.b to i128
  %i.d = shl nuw i128 1, %i.c
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.a ; 2 uses
  %i.f = load i128, ptr %i.e, align 16, !noundef !3
  %i.g = or i128 %i.f, %i.d
  store i128 %i.g, ptr %i.e, align 16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN14regex_automata4util8alphabet7ByteSet6remove17hda57ab0163baa15aE(ptr noalias nofree noundef align 16 captures(none) dereferenceable(32) %0, i8 noundef %1) unnamed_addr #6 {
bb.a:
  %.lobit = lshr i8 %1, 7
  %i.a = zext nneg i8 %.lobit to i64
  %i.b = and i8 %1, 127
  %i.c = zext nneg i8 %i.b to i128
  %i.d = shl nuw i128 1, %i.c
  %i.e = xor i128 %i.d, -1
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.a ; 2 uses
  %i.g = load i128, ptr %i.f, align 16, !noundef !3
  %i.h = and i128 %i.g, %i.e
  store i128 %i.h, ptr %i.f, align 16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZN14regex_automata4util8alphabet7ByteSet8contains17h7a515dc7cedb2e12E(ptr noalias noundef readonly align 16 captures(none) dereferenceable(32) %0, i8 noundef %1) unnamed_addr #9 {
bb.a:
  %.lobit = lshr i8 %1, 7
  %i.a = zext nneg i8 %.lobit to i64
  %i.b = and i8 %1, 127
  %i.c = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.a
  %i.d = load i128, ptr %i.c, align 16, !noundef !3
  %i.e = zext nneg i8 %i.b to i128
  %i.f = shl nuw i128 1, %i.e
  %i.g = and i128 %i.d, %i.f
  %i.h = icmp ne i128 %i.g, 0
  ret i1 %i.h
}

; Function Attrs: cold noinline nonlazybind uwtable
define noundef align 8 ptr @_ZN14regex_automata6hybrid3dfa34skip_empty_utf8_splits_overlapping17h7f3483dc14809e93E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(64) %1, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(720) %2, ptr noalias noundef align 8 dereferenceable(352) %3) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.01.0.copyload = load i64, ptr %1, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 4 uses
  %i.a = trunc nuw i64 %.sroa.01.0.copyload to i1
  br i1 %i.a, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !range !279, !noundef !3
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !3 ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !nonnull !3, !align !8
  br label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !3 ; 2 uses
  %i.j = icmp ult i64 %.sroa.5.0.copyload, %i.i
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !3, !align !8, !noundef !3
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %.sroa.5.0.copyload
  %i.n = load i8, ptr %i.m, align 1, !noundef !3
  %or.cond = icmp sgt i8 %i.n, -65
  br i1 %or.cond, label %.loopexit, label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.o = icmp eq i64 %.sroa.5.0.copyload, %i.i
  br i1 %i.o, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  store i64 0, ptr %1, align 8
  br label %.loopexit

bb.g:                                             ; preds = %.preheader, %bb.l
  %.sroa.012.0 = phi i64 [ %.sroa.59.0.copyload, %bb.l ], [ %.sroa.5.0.copyload, %.preheader ] ; 3 uses
  %i.p = icmp ult i64 %.sroa.012.0, %i.f
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.012.0
  %i.r = load i8, ptr %i.q, align 1, !noundef !3
  %or.cond27 = icmp sgt i8 %i.r, -65
  br i1 %or.cond27, label %.loopexit, label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.s = icmp eq i64 %.sroa.012.0, %i.f
  br i1 %i.s, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.t = tail call noundef align 8 ptr @_ZN14regex_automata6hybrid6search20find_overlapping_fwd17h5ef2ab3875dd3014E(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(720) %2, ptr noalias noundef nonnull align 8 dereferenceable(352) %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %1) ; 2 uses
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %bb.j
  %.sroa.08.0.copyload = load i64, ptr %1, align 8
  %i.u = trunc nuw i64 %.sroa.08.0.copyload to i1
  br i1 %i.u, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %bb.k
  %.sroa.59.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.g

.loopexit:                                        ; preds = %bb.j, %bb.k, %bb.i, %bb.h, %bb.e, %bb.f, %bb.d, %bb.a
  %.sroa.0.1 = phi ptr [ null, %bb.a ], [ null, %bb.e ], [ null, %bb.f ], [ null, %bb.d ], [ null, %bb.k ], [ %i.t, %bb.j ], [ null, %bb.h ], [ null, %bb.i ]
  ret ptr %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define void @_ZN14regex_automata6hybrid3dfa3DFA11never_match17h0325cd41c62d313dE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([720 x i8]) align 16 captures(none) dereferenceable(720) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [448 x i8], align 8               ; 4 uses
  %i.b = alloca [144 x i8], align 16              ; 12 uses
  %i.c = alloca [592 x i8], align 16              ; 8 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = tail call noundef nonnull ptr @_ZN14regex_automata3nfa8thompson3nfa3NFA11never_match17ha7b912dd52c1fc2dE() ; 3 uses
  store ptr %i.e, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !325
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  store i8 3, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !325
  store <4 x i8> splat (i8 2), ptr %i.f, align 16, !noalias !325
  store i128 0, ptr %i.b, align 16, !noalias !325
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 132
  store i8 2, ptr %i.g, align 4, !noalias !325
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 0, ptr %i.h, align 16, !noalias !325
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 133
  store i8 2, ptr %i.i, align 1, !noalias !325
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 2, ptr %i.j, align 16, !noalias !325
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store i64 2, ptr %i.k, align 16, !noalias !325
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !325
end_hunk_0
