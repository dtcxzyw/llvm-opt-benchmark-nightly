inline.NumInlined: 757
inline.NumDeleted: 277
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvCshbKHpCRGxgC_16deltalake_derive24extract_field_attributes:bb.a
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %.body90 unwind label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.fp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECshbKHpCRGxgC_16deltalake_derive.exit.i89: ; preds = %bb.dc
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECshbKHpCRGxgC_16deltalake_derive.exit93 unwind label %bb.df

bb.df:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECshbKHpCRGxgC_16deltalake_derive.exit.i89
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %.body90

.body90:                                          ; preds = %bb.dd, %bb.df
  %eh.lpad-body91 = phi { ptr, i32 } [ %i.fq, %bb.df ], [ %i.fo, %bb.dd ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  br label %.body53

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECshbKHpCRGxgC_16deltalake_derive.exit93: ; preds = %bb.db, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECshbKHpCRGxgC_16deltalake_derive.exit.i89
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %._crit_edge.thread

.thread:                                          ; preds = %bb.ck, %.body53, %.thread109
  %.pn45102 = phi { ptr, i32 } [ %.pn43, %.body53 ], [ %i.ex, %.thread109 ], [ %i.ew, %bb.ck ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(24) %i.w) #18
          to label %bb.dg unwind label %bb.z

bb.dg:                                            ; preds = %.thread, %bb.co, %bb.cq
  %.pn45.pn.ph = phi { ptr, i32 } [ %.pn45102, %.thread ], [ %i.fd, %bb.cq ], [ %i.fb, %bb.co ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(24) %i.x) #18
          to label %bb.dh unwind label %bb.z

bb.dh:                                            ; preds = %bb.dg, %bb.cr, %bb.cu
  %.pn45.pn.pn.ph = phi { ptr, i32 } [ %.pn45.pn.ph, %bb.dg ], [ %i.fg, %bb.cu ], [ %i.fe, %bb.cr ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(24) %i.y) #18
          to label %common.resume unwind label %bb.z
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsK_NtCsbvkFyIu7lgC_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt(ptr noalias nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @80, i64 noundef 5)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write10write_char(ptr noalias noundef align 8 dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1315, !noundef !4 ; 2 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i32 %1, 128            ; 2 uses
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i32 %1, 2048
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp samesign ult i32 %1, 65536
  %..i = select i1 %i.f, i64 3, i64 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.0.0.i = phi i64 [ 2, %bb.b ], [ %..i, %bb.c ], [ 1, %bb.a ] ; 2 uses
  tail call void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.sroa.0.0.i)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !1315, !nonnull !4, !noundef !4
  %i.i = load i64, ptr %i.a, align 8, !alias.scope !1315, !noundef !4 ; 2 uses
  %i.j = icmp sgt i64 %i.i, -1
  tail call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.i ; 10 uses
  br i1 %i.d, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = icmp samesign ult i32 %1, 2048
  %i.m = trunc i32 %1 to i8
  %i.n = and i8 %i.m, 63
  %i.o = or disjoint i8 %i.n, -128                ; 3 uses
  %i.p = lshr i32 %1, 6
  %i.q = trunc i32 %i.p to i8                     ; 2 uses
  %i.r = and i8 %i.q, 63
  %i.s = or disjoint i8 %i.r, -128                ; 2 uses
  %i.t = lshr i32 %1, 12
  %i.u = trunc i32 %i.t to i8                     ; 2 uses
  %i.v = and i8 %i.u, 63
  %i.w = or disjoint i8 %i.v, -128
  %i.x = lshr i32 %1, 18
  %i.y = trunc nuw nsw i32 %i.x to i8
  %i.z = or disjoint i8 %i.y, -16
  br i1 %i.l, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.aa = trunc nuw nsw i32 %1 to i8
  store i8 %i.aa, ptr %i.k, align 1
  br label %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String4push.exit

bb.g:                                             ; preds = %bb.e
  %i.ab = or disjoint i8 %i.q, -64
  store i8 %i.ab, ptr %i.k, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  store i8 %i.o, ptr %i.ac, align 1
  br label %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String4push.exit

bb.h:                                             ; preds = %bb.e
  %i.ad = icmp samesign ult i32 %1, 65536
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ae = or disjoint i8 %i.u, -32
  store i8 %i.ae, ptr %i.k, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  store i8 %i.s, ptr %i.af, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  store i8 %i.o, ptr %i.ag, align 1
  br label %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String4push.exit

bb.j:                                             ; preds = %bb.h
  store i8 %i.z, ptr %i.k, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  store i8 %i.w, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  store i8 %i.s, ptr %i.ai, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 3
  store i8 %i.o, ptr %i.aj, align 1
  br label %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String4push.exit

_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String4push.exit: ; preds = %bb.f, %bb.g, %bb.i, %bb.j
  %i.ak = add nuw i64 %.sroa.0.0.i, %i.b
  store i64 %i.ak, ptr %i.a, align 8, !alias.scope !1315
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write9write_str(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #3 {
bb.a:
  tail call void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %2), !noalias !1318
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1321, !noalias !1318, !noundef !4 ; 3 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String8push_str.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !1321, !noalias !1318, !nonnull !4, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %.pre.i.i = load i64, ptr %i.a, align 8, !alias.scope !1321, !noalias !1318
  br label %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String8push_str.exit

_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String8push_str.exit: ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %.pre.i.i, %bb.b ], [ %i.b, %bb.a ]
  %i.h = add i64 %i.g, %2
  store i64 %i.h, ptr %i.a, align 8, !alias.scope !1321, !noalias !1318
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCsbvkFyIu7lgC_4core3fmteNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXst_NtNtCsbvkFyIu7lgC_4core3str7patternReNtB5_7Pattern15is_contained_in(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 3, 9) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 12 uses
  %i.b = alloca [104 x i8], align 8               ; 19 uses
  %i.c = icmp ult i64 %1, %3
  br i1 %i.c, label %bb.c, label %bb.b

_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit.thread: ; preds = %.split.us.i.i, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CshbKHpCRGxgC_16deltalake_derive.exit.backedge.us.i.i, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CshbKHpCRGxgC_16deltalake_derive.exit.backedge.us.i.i.preheader, %.lr.ph.split.us.i.i, %bb.u, %bb.b, %bb.bk, %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit
  %.sroa.0.0 = phi i8 [ 0, %bb.b ], [ %i.kr, %bb.bk ], [ %.sroa.0.025, %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit ], [ %.sroa.014.5.i, %bb.u ], [ 1, %.lr.ph.split.us.i.i ], [ 0, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CshbKHpCRGxgC_16deltalake_derive.exit.backedge.us.i.i.preheader ], [ 0, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CshbKHpCRGxgC_16deltalake_derive.exit.backedge.us.i.i ], [ 1, %.split.us.i.i ]
  %i.d = trunc nuw i8 %.sroa.0.0 to i1
  ret i1 %i.d

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %1, %3
  br i1 %i.e, label %bb.bk, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit.thread

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1325)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1328)
  %i.f = load i8, ptr %0, align 1, !alias.scope !1325, !noalias !1328, !noundef !4 ; 9 uses
  %i.g = add nsw i64 %1, -1                       ; 2 uses
  %i.h = tail call i64 @llvm.usub.sat.i64(i64 range(i64 3, 9) %1, i64 4) ; 8 uses
  %4 = icmp samesign ult i64 %i.h, %1
  br i1 %4, label %.lr.ph, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit

bb.d:                                             ; preds = %.lr.ph
  %i.i = icmp ult i64 %i.h, %7
  br i1 %i.i, label %.lr.ph.1, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit

.lr.ph.1:                                         ; preds = %bb.d
  %i.j = add nsw i64 %1, -2                       ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !alias.scope !1325, !noalias !1330, !noundef !4 ; 2 uses
  %.not.i.not.i.i.1 = icmp eq i8 %i.l, %i.f
  br i1 %.not.i.not.i.i.1, label %bb.e, label %bb.l

bb.e:                                             ; preds = %.lr.ph.1
  %i.m = icmp ult i64 %i.h, %i.j
  br i1 %i.m, label %.lr.ph.2, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit

.lr.ph.2:                                         ; preds = %bb.e
  %i.n = add nsw i64 %1, -3                       ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !alias.scope !1325, !noalias !1330, !noundef !4 ; 2 uses
  %.not.i.not.i.i.2 = icmp eq i8 %i.p, %i.f
  br i1 %.not.i.not.i.i.2, label %bb.f, label %bb.l

bb.f:                                             ; preds = %.lr.ph.2
  %i.q = icmp ult i64 %i.h, %i.n
  br i1 %i.q, label %.lr.ph.3, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit

.lr.ph.3:                                         ; preds = %bb.f
  %i.r = add nsw i64 %1, -4                       ; 4 uses
  %i.s = icmp samesign ugt i64 %1, 3
  br i1 %i.s, label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CshbKHpCRGxgC_16deltalake_derive.exit.i.i.3, label %bb.k

_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CshbKHpCRGxgC_16deltalake_derive.exit.i.i.3: ; preds = %.lr.ph.3
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %i.r
  %i.u = load i8, ptr %i.t, align 1, !alias.scope !1325, !noalias !1330, !noundef !4 ; 2 uses
  %.not.i.not.i.i.3 = icmp eq i8 %i.u, %i.f
  br i1 %.not.i.not.i.i.3, label %bb.g, label %bb.l

bb.g:                                             ; preds = %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CshbKHpCRGxgC_16deltalake_derive.exit.i.i.3
  %i.v = icmp ult i64 %i.h, %i.r
  br i1 %i.v, label %.lr.ph.4, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit

.lr.ph.4:                                         ; preds = %bb.g
  %i.w = add nsw i64 %1, -5                       ; 4 uses
  %.not319 = icmp eq i64 %1, 4
  br i1 %.not319, label %bb.k, label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CshbKHpCRGxgC_16deltalake_derive.exit.i.i.4

_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CshbKHpCRGxgC_16deltalake_derive.exit.i.i.4: ; preds = %.lr.ph.4
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !alias.scope !1325, !noalias !1330, !noundef !4 ; 2 uses
  %.not.i.not.i.i.4 = icmp eq i8 %i.y, %i.f
  br i1 %.not.i.not.i.i.4, label %bb.h, label %bb.l

bb.h:                                             ; preds = %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CshbKHpCRGxgC_16deltalake_derive.exit.i.i.4
  %i.z = icmp ult i64 %i.h, %i.w
  br i1 %i.z, label %.lr.ph.5, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit

.lr.ph.5:                                         ; preds = %bb.h
  %i.aa = add nsw i64 %1, -6                      ; 4 uses
  %i.ab = icmp samesign ugt i64 %1, 5
  br i1 %i.ab, label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CshbKHpCRGxgC_16deltalake_derive.exit.i.i.5, label %bb.k

_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CshbKHpCRGxgC_16deltalake_derive.exit.i.i.5: ; preds = %.lr.ph.5
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %i.aa
  %i.ad = load i8, ptr %i.ac, align 1, !alias.scope !1325, !noalias !1330, !noundef !4 ; 2 uses
  %.not.i.not.i.i.5 = icmp eq i8 %i.ad, %i.f
  br i1 %.not.i.not.i.i.5, label %bb.i, label %bb.l

bb.i:                                             ; preds = %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CshbKHpCRGxgC_16deltalake_derive.exit.i.i.5
  %i.ae = icmp ult i64 %i.h, %i.aa
  br i1 %i.ae, label %.lr.ph.6, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit

.lr.ph.6:                                         ; preds = %bb.i
  %i.af = add nsw i64 %1, -7                      ; 4 uses
  %.not320 = icmp eq i64 %1, 6
  br i1 %.not320, label %bb.k, label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CshbKHpCRGxgC_16deltalake_derive.exit.i.i.6

_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CshbKHpCRGxgC_16deltalake_derive.exit.i.i.6: ; preds = %.lr.ph.6
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !alias.scope !1325, !noalias !1330, !noundef !4 ; 2 uses
  %.not.i.not.i.i.6 = icmp eq i8 %i.ah, %i.f
  br i1 %.not.i.not.i.i.6, label %bb.j, label %bb.l

bb.j:                                             ; preds = %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CshbKHpCRGxgC_16deltalake_derive.exit.i.i.6
  %i.ai = icmp ult i64 %i.h, %i.af
  br i1 %i.ai, label %.lr.ph.7, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit

.lr.ph.7:                                         ; preds = %bb.j
  %i.aj = add nsw i64 %1, -8                      ; 3 uses
  %i.ak = icmp samesign ugt i64 %1, 7
  br i1 %i.ak, label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CshbKHpCRGxgC_16deltalake_derive.exit.i.i.7, label %bb.k

_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CshbKHpCRGxgC_16deltalake_derive.exit.i.i.7: ; preds = %.lr.ph.7
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 %i.aj
  %6 = load i8, ptr %5, align 1, !alias.scope !1325, !noalias !1330, !noundef !4 ; 2 uses
  %.not.i.not.i.i.7 = icmp eq i8 %6, %i.f
  br i1 %.not.i.not.i.i.7, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit, label %bb.l

.lr.ph:                                           ; preds = %bb.c
  %7 = add nsw i64 %1, -1                         ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 %7
  %i.am = load i8, ptr %i.al, align 1, !alias.scope !1325, !noalias !1330, !noundef !4 ; 2 uses
  %.not.i.not.i.i.a = icmp eq i8 %i.am, %i.f
  br i1 %.not.i.not.i.i.a, label %bb.d, label %bb.l

bb.k:                                             ; preds = %.lr.ph.7, %.lr.ph.6, %.lr.ph.5, %.lr.ph.4, %.lr.ph.3
  %.lcssa314 = phi i64 [ %i.aj, %.lr.ph.7 ], [ %i.af, %.lr.ph.6 ], [ %i.aa, %.lr.ph.5 ], [ %i.r, %.lr.ph.3 ], [ %i.w, %.lr.ph.4 ]
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %.lcssa314, i64 noundef range(i64 3, 9) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #20, !noalias !1338
  unreachable

bb.l:                                             ; preds = %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CshbKHpCRGxgC_16deltalake_derive.exit.i.i.7, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CshbKHpCRGxgC_16deltalake_derive.exit.i.i.6, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CshbKHpCRGxgC_16deltalake_derive.exit.i.i.5, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CshbKHpCRGxgC_16deltalake_derive.exit.i.i.4, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CshbKHpCRGxgC_16deltalake_derive.exit.i.i.3, %.lr.ph.2, %.lr.ph.1, %.lr.ph
  %.lcssa317 = phi i8 [ %i.am, %.lr.ph ], [ %i.l, %.lr.ph.1 ], [ %i.p, %.lr.ph.2 ], [ %i.u, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CshbKHpCRGxgC_16deltalake_derive.exit.i.i.3 ], [ %i.y, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CshbKHpCRGxgC_16deltalake_derive.exit.i.i.4 ], [ %i.ad, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CshbKHpCRGxgC_16deltalake_derive.exit.i.i.5 ], [ %i.ah, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CshbKHpCRGxgC_16deltalake_derive.exit.i.i.6 ], [ %6, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CshbKHpCRGxgC_16deltalake_derive.exit.i.i.7 ]
  %.lcssa315 = phi i64 [ %7, %.lr.ph ], [ %i.j, %.lr.ph.1 ], [ %i.n, %.lr.ph.2 ], [ %i.r, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CshbKHpCRGxgC_16deltalake_derive.exit.i.i.3 ], [ %i.w, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CshbKHpCRGxgC_16deltalake_derive.exit.i.i.4 ], [ %i.aa, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CshbKHpCRGxgC_16deltalake_derive.exit.i.i.5 ], [ %i.af, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CshbKHpCRGxgC_16deltalake_derive.exit.i.i.6 ], [ %i.aj, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CshbKHpCRGxgC_16deltalake_derive.exit.i.i.7 ] ; 6 uses
  %i.an = add nuw nsw i64 %1, 15                  ; 3 uses
  %i.ao = icmp ult i64 %3, %i.an
  br i1 %i.ao, label %.lr.ph.split.us.i.i, label %bb.m

.lr.ph.split.us.i.i:                              ; preds = %bb.l
  %bcmp.i.i.us23.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %2, ptr noundef nonnull readonly dereferenceable(1) %0, i64 range(i64 3, 9) %1), !alias.scope !1339, !noalias !1340
  %i.ap = icmp eq i32 %bcmp.i.i.us23.i.i, 0
  br i1 %i.ap, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit.thread, label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CshbKHpCRGxgC_16deltalake_derive.exit.backedge.us.i.i.preheader

_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CshbKHpCRGxgC_16deltalake_derive.exit.backedge.us.i.i.preheader: ; preds = %.lr.ph.split.us.i.i
  %i.aq = add nsw i64 %3, -1                      ; 2 uses
  %.not28.i.i275 = icmp ugt i64 %1, %i.aq
  br i1 %.not28.i.i275, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit.thread, label %.split.us.i.i

.split.us.i.i:                                    ; preds = %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CshbKHpCRGxgC_16deltalake_derive.exit.backedge.us.i.i.preheader, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CshbKHpCRGxgC_16deltalake_derive.exit.backedge.us.i.i
  %i.ar = phi i64 [ %i.au, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CshbKHpCRGxgC_16deltalake_derive.exit.backedge.us.i.i ], [ %i.aq, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CshbKHpCRGxgC_16deltalake_derive.exit.backedge.us.i.i.preheader ]
  %.pn.i276 = phi ptr [ %i.as, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CshbKHpCRGxgC_16deltalake_derive.exit.backedge.us.i.i ], [ %2, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CshbKHpCRGxgC_16deltalake_derive.exit.backedge.us.i.i.preheader ]
  %i.as = getelementptr inbounds nuw i8, ptr %.pn.i276, i64 1 ; 2 uses
  %bcmp.i.i.us.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.as, ptr noundef nonnull readonly dereferenceable(1) %0, i64 range(i64 3, 9) %1), !alias.scope !1339, !noalias !1340
  %i.at = icmp eq i32 %bcmp.i.i.us.i.i, 0
  br i1 %i.at, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit.thread, label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CshbKHpCRGxgC_16deltalake_derive.exit.backedge.us.i.i

_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CshbKHpCRGxgC_16deltalake_derive.exit.backedge.us.i.i: ; preds = %.split.us.i.i
  %i.au = add nsw i64 %i.ar, -1                   ; 2 uses
  %.not28.i.i = icmp ugt i64 %1, %i.au
  br i1 %.not28.i.i, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit.thread, label %.split.us.i.i

bb.m:                                             ; preds = %bb.l
  %i.av = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.aw = shufflevector <16 x i8> %i.av, <16 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.ax = insertelement <16 x i8> poison, i8 %.lcssa317, i64 0
  %i.ay = shufflevector <16 x i8> %i.ax, <16 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1339
  store ptr %2, ptr %i.a, align 8, !noalias !1339
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %3, ptr %i.ba, align 8, !noalias !1339
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.az, ptr %i.bb, align 8, !noalias !1339
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.g, ptr %i.bc, align 8, !noalias !1339
  %i.bd = add nuw nsw i64 %1, 63                  ; 2 uses
  %.not.i = icmp ult i64 %i.bd, %3
  br i1 %.not.i, label %.lr.ph.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.q, %bb.m
  %.sroa.06.0.lcssa.i = phi i64 [ 0, %bb.m ], [ %i.cy, %bb.q ] ; 2 uses
  %.sroa.014.0.lcssa.i = phi i8 [ 0, %bb.m ], [ %.sroa.014.2.3.i, %bb.q ] ; 2 uses
  %i.be = add i64 %.sroa.06.0.lcssa.i, %i.an
  %i.bf = icmp uge i64 %i.be, %3
  %i.bg = trunc nuw i8 %.sroa.014.0.lcssa.i to i1 ; 2 uses
  %or.cond3100.i = select i1 %i.bf, i1 true, i1 %i.bg
  br i1 %or.cond3100.i, label %._crit_edge.i, label %.lr.ph102.i

.lr.ph.i:                                         ; preds = %bb.m, %bb.q
  %.sroa.06.098.i = phi i64 [ %i.cy, %bb.q ], [ 0, %bb.m ] ; 6 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.06.098.i ; 5 uses
  %.sroa.0.0.copyload.i.i = load <16 x i8>, ptr %i.bh, align 1, !alias.scope !1328, !noalias !1344
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.lcssa315
  %.sroa.02.0.copyload.i.i = load <16 x i8>, ptr %i.bi, align 1, !alias.scope !1328, !noalias !1344
  %i.bj = icmp eq <16 x i8> %.sroa.0.0.copyload.i.i, %i.aw
  %i.bk = icmp eq <16 x i8> %.sroa.02.0.copyload.i.i, %i.ay
  %i.bl = and <16 x i1> %i.bj, %i.bk
  %i.bm = bitcast <16 x i1> %i.bl to i16          ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i.1.i = load <16 x i8>, ptr %i.bn, align 1, !alias.scope !1328, !noalias !1344
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %.lcssa315
  %.sroa.02.0.copyload.i.1.i = load <16 x i8>, ptr %i.bo, align 1, !alias.scope !1328, !noalias !1344
  %i.bp = icmp eq <16 x i8> %.sroa.0.0.copyload.i.1.i, %i.aw
  %i.bq = icmp eq <16 x i8> %.sroa.02.0.copyload.i.1.i, %i.ay
  %i.br = and <16 x i1> %i.bp, %i.bq
  %i.bs = bitcast <16 x i1> %i.br to i16          ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bh, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i.2.i = load <16 x i8>, ptr %i.bt, align 1, !alias.scope !1328, !noalias !1344
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.lcssa315
  %.sroa.02.0.copyload.i.2.i = load <16 x i8>, ptr %i.bu, align 1, !alias.scope !1328, !noalias !1344
  %i.bv = icmp eq <16 x i8> %.sroa.0.0.copyload.i.2.i, %i.aw
  %i.bw = icmp eq <16 x i8> %.sroa.02.0.copyload.i.2.i, %i.ay
  %i.bx = and <16 x i1> %i.bv, %i.bw
  %i.by = bitcast <16 x i1> %i.bx to i16          ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bh, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i.3.i = load <16 x i8>, ptr %i.bz, align 1, !alias.scope !1328, !noalias !1344
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %.lcssa315
  %.sroa.02.0.copyload.i.3.i = load <16 x i8>, ptr %i.ca, align 1, !alias.scope !1328, !noalias !1344
  %i.cb = icmp eq <16 x i8> %.sroa.0.0.copyload.i.3.i, %i.aw
  %i.cc = icmp eq <16 x i8> %.sroa.02.0.copyload.i.3.i, %i.ay
  %i.cd = and <16 x i1> %i.cb, %i.cc
  %i.ce = bitcast <16 x i1> %i.cd to i16          ; 2 uses
  %i.cf = icmp eq i16 %i.bm, 0
  br i1 %i.cf, label %.preheader91.1.i, label %bb.r

.preheader91.1.i:                                 ; preds = %bb.r, %.lr.ph.i
  %.sroa.014.2.i = phi i8 [ 0, %.lr.ph.i ], [ %i.dd, %bb.r ] ; 3 uses
  %i.cg = icmp eq i16 %i.bs, 0
  br i1 %i.cg, label %.preheader91.2.i, label %bb.n

bb.n:                                             ; preds = %.preheader91.1.i
  %i.ch = or disjoint i64 %.sroa.06.098.i, 16
  %i.ci = trunc nuw i8 %.sroa.014.2.i to i1
  %i.cj = call fastcc noundef zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0CshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.ch, i16 noundef %i.bs, i1 noundef zeroext %i.ci) #22
  %i.ck = zext i1 %i.cj to i8
  %i.cl = or i8 %.sroa.014.2.i, %i.ck
  br label %.preheader91.2.i

.preheader91.2.i:                                 ; preds = %bb.n, %.preheader91.1.i
  %.sroa.014.2.1.i = phi i8 [ %.sroa.014.2.i, %.preheader91.1.i ], [ %i.cl, %bb.n ] ; 3 uses
  %i.cm = icmp eq i16 %i.by, 0
  br i1 %i.cm, label %.preheader91.3.i, label %bb.o

bb.o:                                             ; preds = %.preheader91.2.i
  %i.cn = or disjoint i64 %.sroa.06.098.i, 32
  %i.co = trunc nuw i8 %.sroa.014.2.1.i to i1
  %i.cp = call fastcc noundef zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0CshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.cn, i16 noundef %i.by, i1 noundef zeroext %i.co) #22
  %i.cq = zext i1 %i.cp to i8
  %i.cr = or i8 %.sroa.014.2.1.i, %i.cq
  br label %.preheader91.3.i

.preheader91.3.i:                                 ; preds = %bb.o, %.preheader91.2.i
  %.sroa.014.2.2.i = phi i8 [ %.sroa.014.2.1.i, %.preheader91.2.i ], [ %i.cr, %bb.o ] ; 3 uses
  %i.cs = icmp eq i16 %i.ce, 0
  br i1 %i.cs, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.preheader91.3.i
  %i.ct = or disjoint i64 %.sroa.06.098.i, 48
  %i.cu = trunc nuw i8 %.sroa.014.2.2.i to i1
  %i.cv = call fastcc noundef zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0CshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.ct, i16 noundef %i.ce, i1 noundef zeroext %i.cu) #22
  %i.cw = zext i1 %i.cv to i8
  %i.cx = or i8 %.sroa.014.2.2.i, %i.cw
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.preheader91.3.i
  %.sroa.014.2.3.i = phi i8 [ %.sroa.014.2.2.i, %.preheader91.3.i ], [ %i.cx, %bb.p ] ; 2 uses
  %i.cy = add i64 %.sroa.06.098.i, 64             ; 3 uses
  %i.cz = add i64 %i.cy, %i.bd
  %i.da = icmp uge i64 %i.cz, %3
  %i.db = trunc nuw i8 %.sroa.014.2.3.i to i1
  %or.cond.i = select i1 %i.da, i1 true, i1 %i.db
  br i1 %or.cond.i, label %.preheader.i, label %.lr.ph.i

bb.r:                                             ; preds = %.lr.ph.i
  %i.dc = call fastcc noundef zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0CshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.sroa.06.098.i, i16 noundef %i.bm, i1 noundef zeroext false) #22
  %i.dd = zext i1 %i.dc to i8
  br label %.preheader91.1.i

._crit_edge.i:                                    ; preds = %bb.s, %.preheader.i
  %.sroa.014.3.lcssa.i = phi i8 [ %.sroa.014.0.lcssa.i, %.preheader.i ], [ %.sroa.014.4.i, %bb.s ] ; 2 uses
  %.lcssa.i = phi i1 [ %i.bg, %.preheader.i ], [ %i.dx, %bb.s ]
  %i.de = sub nuw i64 %3, %i.g
  %i.df = add i64 %i.de, -16                      ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 %i.df ; 2 uses
  %.sroa.0.0.copyload.i58.i = load <16 x i8>, ptr %i.dg, align 1, !alias.scope !1328, !noalias !1347
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 %.lcssa315
  %.sroa.02.0.copyload.i59.i = load <16 x i8>, ptr %i.dh, align 1, !alias.scope !1328, !noalias !1347
  %i.di = icmp eq <16 x i8> %.sroa.0.0.copyload.i58.i, %i.aw
  %i.dj = icmp eq <16 x i8> %.sroa.02.0.copyload.i59.i, %i.ay
  %i.dk = and <16 x i1> %i.di, %i.dj
  %i.dl = bitcast <16 x i1> %i.dk to i16          ; 2 uses
  %i.dm = icmp eq i16 %i.dl, 0
  br i1 %i.dm, label %bb.u, label %bb.v

.lr.ph102.i:                                      ; preds = %.preheader.i, %bb.s
  %.sroa.06.1101.i = phi i64 [ %i.du, %bb.s ], [ %.sroa.06.0.lcssa.i, %.preheader.i ] ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.06.1101.i ; 2 uses
  %.sroa.0.0.copyload.i60.i = load <16 x i8>, ptr %i.dn, align 1, !alias.scope !1328, !noalias !1350
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 %.lcssa315
  %.sroa.02.0.copyload.i61.i = load <16 x i8>, ptr %i.do, align 1, !alias.scope !1328, !noalias !1350
  %i.dp = icmp eq <16 x i8> %.sroa.0.0.copyload.i60.i, %i.aw
  %i.dq = icmp eq <16 x i8> %.sroa.02.0.copyload.i61.i, %i.ay
  %i.dr = and <16 x i1> %i.dp, %i.dq
  %i.ds = bitcast <16 x i1> %i.dr to i16          ; 2 uses
  %i.dt = icmp eq i16 %i.ds, 0
  br i1 %i.dt, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.t, %.lr.ph102.i
  %.sroa.014.4.i = phi i8 [ 0, %.lr.ph102.i ], [ %i.dz, %bb.t ] ; 2 uses
  %i.du = add i64 %.sroa.06.1101.i, 16            ; 2 uses
  %i.dv = add i64 %i.du, %i.an
  %i.dw = icmp uge i64 %i.dv, %3
  %i.dx = trunc nuw i8 %.sroa.014.4.i to i1       ; 2 uses
  %or.cond3.i = or i1 %i.dw, %i.dx
  br i1 %or.cond3.i, label %._crit_edge.i, label %.lr.ph102.i

bb.t:                                             ; preds = %.lr.ph102.i
  %i.dy = call fastcc noundef zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0CshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.sroa.06.1101.i, i16 noundef %i.ds, i1 noundef zeroext false) #22
  %i.dz = zext i1 %i.dy to i8
  br label %bb.s

bb.u:                                             ; preds = %bb.v, %._crit_edge.i
  %.sroa.014.5.i = phi i8 [ %.sroa.014.3.lcssa.i, %._crit_edge.i ], [ %i.ec, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1339
  br label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit.thread

bb.v:                                             ; preds = %._crit_edge.i
  %i.ea = call fastcc noundef zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0CshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.df, i16 noundef %i.dl, i1 noundef zeroext %.lcssa.i) #22
  %i.eb = zext i1 %i.ea to i8
  %i.ec = or i8 %.sroa.014.3.lcssa.i, %i.eb
  br label %bb.u

_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit: ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CshbKHpCRGxgC_16deltalake_derive.exit.i.i.7, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsu_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcher3new(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1353)
  %i.ed = load i64, ptr %i.b, align 8, !range !450, !alias.scope !1353, !noalias !1356, !noundef !4
  %i.ee = trunc nuw i64 %i.ed to i1
  %i.ef = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  br i1 %i.ee, label %bb.af, label %.preheader.i4

.preheader.i4:                                    ; preds = %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit
  %i.eg = getelementptr inbounds nuw i8, ptr %i.b, i64 26
  %i.eh = load i8, ptr %i.eg, align 2, !range !1358, !alias.scope !1359, !noalias !1362, !noundef !4
  %i.ei = trunc nuw i8 %i.eh to i1
  br i1 %i.ei, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %.lr.ph.i5

.lr.ph.i5:                                        ; preds = %.preheader.i4
  %.promoted.i = load i64, ptr %i.ef, align 8, !alias.scope !1353, !noalias !1356 ; 12 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ek = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.el = load ptr, ptr %i.ek, align 8, !alias.scope !1359, !noalias !1362, !nonnull !4, !noundef !4 ; 5 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.en = load i64, ptr %i.em, align 8, !alias.scope !1359, !noalias !1362, !noundef !4 ; 14 uses
  %.promoted26.i = load i8, ptr %i.ej, align 8, !alias.scope !1359, !noalias !1362 ; 2 uses
  %i.eo = trunc nuw i8 %.promoted26.i to i1
  %i.ep = icmp eq i64 %.promoted.i, 0
  br i1 %i.ep, label %bb.y, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i5
  %.not.i.i.i.peel = icmp ult i64 %.promoted.i, %i.en
  br i1 %.not.i.i.i.peel, label %bb.x, label %.split.i.i.i.peel

.split.i.i.i.peel:                                ; preds = %bb.w
  %i.eq = icmp eq i64 %.promoted.i, %i.en
  br i1 %i.eq, label %bb.y, label %.loopexit

bb.x:                                             ; preds = %bb.w
  %i.er = getelementptr inbounds nuw i8, ptr %i.el, i64 %.promoted.i
  %i.es = load i8, ptr %i.er, align 1, !alias.scope !1364, !noalias !1367, !noundef !4
  %i.et = icmp sgt i8 %i.es, -65
  br i1 %i.et, label %bb.y, label %.loopexit

bb.y:                                             ; preds = %bb.x, %.split.i.i.i.peel, %.lr.ph.i5
  %i.eu = getelementptr inbounds nuw i8, ptr %i.el, i64 %.promoted.i ; 4 uses
  %i.ev = icmp samesign eq i64 %.promoted.i, %i.en
  br i1 %i.ev, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ew = load i8, ptr %i.eu, align 1, !noalias !1369, !noundef !4 ; 5 uses
  %i.ex = icmp sgt i8 %i.ew, -1
  br i1 %i.ex, label %bb.aa, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit12.i.i.i.peel

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit12.i.i.i.peel: ; preds = %bb.z
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eu, i64 1
  %i.ez = and i8 %i.ew, 31
  %i.fa = zext nneg i8 %i.ez to i32               ; 3 uses
  %i.fb = add nuw nsw i64 %.promoted.i, 1
  %i.fc = icmp samesign ne i64 %i.fb, %i.en
  tail call void @llvm.assume(i1 %i.fc)
  %i.fd = load i8, ptr %i.ey, align 1, !noalias !1369, !noundef !4
  %i.fe = shl nuw nsw i32 %i.fa, 6
  %i.ff = and i8 %i.fd, 63
  %i.fg = zext nneg i8 %i.ff to i32               ; 2 uses
  %i.fh = or disjoint i32 %i.fe, %i.fg
  %i.fi = icmp samesign ugt i8 %i.ew, -33
  br i1 %i.fi, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit14.i.i.i.peel, label %bb.ab

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit14.i.i.i.peel: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit12.i.i.i.peel
  %i.fj = getelementptr inbounds nuw i8, ptr %i.eu, i64 2
  %i.fk = add nuw nsw i64 %.promoted.i, 2
  %i.fl = icmp samesign ne i64 %i.fk, %i.en
  tail call void @llvm.assume(i1 %i.fl)
  %i.fm = load i8, ptr %i.fj, align 1, !noalias !1369, !noundef !4
  %i.fn = shl nuw nsw i32 %i.fg, 6
  %i.fo = and i8 %i.fm, 63
  %i.fp = zext nneg i8 %i.fo to i32
  %i.fq = or disjoint i32 %i.fn, %i.fp            ; 2 uses
  %i.fr = shl nuw nsw i32 %i.fa, 12
  %i.fs = or disjoint i32 %i.fq, %i.fr
  %i.ft = icmp samesign ugt i8 %i.ew, -17
  br i1 %i.ft, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit16.i.i.i.peel, label %bb.ab

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit16.i.i.i.peel: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit14.i.i.i.peel
  %i.fu = getelementptr inbounds nuw i8, ptr %i.eu, i64 3
  %i.fv = add nuw nsw i64 %.promoted.i, 3
  %i.fw = icmp samesign ne i64 %i.fv, %i.en
  tail call void @llvm.assume(i1 %i.fw)
  %i.fx = load i8, ptr %i.fu, align 1, !noalias !1369, !noundef !4
  %i.fy = shl nuw nsw i32 %i.fa, 18
  %i.fz = and i32 %i.fy, 1835008
  %i.ga = shl nuw nsw i32 %i.fq, 6
  %i.gb = and i8 %i.fx, 63
  %i.gc = zext nneg i8 %i.gb to i32
  %i.gd = or disjoint i32 %i.ga, %i.gc
  %i.ge = or disjoint i32 %i.gd, %i.fz
  br label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.gf = zext nneg i8 %i.ew to i32
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit16.i.i.i.peel, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit14.i.i.i.peel, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit12.i.i.i.peel
  %.sroa.4.0.i.ph.i.i.peel = phi i32 [ %i.fs, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit14.i.i.i.peel ], [ %i.ge, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit16.i.i.i.peel ], [ %i.fh, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit12.i.i.i.peel ], [ %i.gf, %bb.aa ] ; 4 uses
  %i.gg = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 1114112
  tail call void @llvm.assume(i1 %i.gg)
  br i1 %i.eo, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gh = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 128
  br i1 %i.gh, label %bb.ag, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gi = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 2048
  br i1 %i.gi, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gj = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 65536
  %..i.i.peel = select i1 %i.gj, i64 3, i64 4
  br label %bb.ag

bb.af:                                            ; preds = %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit
  %i.gk = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.gl = load i64, ptr %i.gk, align 8, !alias.scope !1353, !noalias !1356, !noundef !4 ; 2 uses
  %i.gm = icmp eq i64 %i.gl, -1
  %i.gn = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.go = load ptr, ptr %i.gn, align 8, !alias.scope !1353, !noalias !1356, !nonnull !4, !noundef !4 ; 6 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.gq = load i64, ptr %i.gp, align 8, !alias.scope !1353, !noalias !1356, !noundef !4 ; 14 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.gs = load ptr, ptr %i.gr, align 8, !alias.scope !1353, !noalias !1356, !nonnull !4, !noundef !4 ; 4 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.gu = load i64, ptr %i.gt, align 8, !alias.scope !1353, !noalias !1356, !noundef !4 ; 12 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.gw = add nsw i64 %i.gu, -1                   ; 4 uses
  br i1 %i.gm, label %bb.al, label %bb.ax

bb.ag:                                            ; preds = %bb.ac, %bb.ad, %bb.ae
  %.sroa.01.0.i.i.peel = phi i64 [ 2, %bb.ad ], [ %..i.i.peel, %bb.ae ], [ 1, %bb.ac ]
  %i.gx = add i64 %.sroa.01.0.i.i.peel, %.promoted.i ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1372)
  %i.gy = icmp eq i64 %i.gx, 0
  br i1 %i.gy, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %.not.i.i.i = icmp ult i64 %i.gx, %i.en
  br i1 %.not.i.i.i, label %bb.ai, label %.split.i.i.i

.split.i.i.i:                                     ; preds = %bb.ah
  %i.gz = icmp eq i64 %i.gx, %i.en
  br i1 %i.gz, label %bb.aj, label %.loopexit

bb.ai:                                            ; preds = %bb.ah
  %i.ha = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.gx
  %i.hb = load i8, ptr %i.ha, align 1, !alias.scope !1364, !noalias !1373, !noundef !4
  %i.hc = icmp sgt i8 %i.hb, -65
  br i1 %i.hc, label %bb.aj, label %.loopexit

bb.aj:                                            ; preds = %bb.ai, %.split.i.i.i, %bb.ag
  %i.hd = icmp samesign eq i64 %i.gx, %i.en
  br i1 %i.hd, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.he = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.gx
  %i.hf = load i8, ptr %i.he, align 1, !noalias !1374, !noundef !4 ; 3 uses
  %i.hg = icmp sgt i8 %i.hf, -1
  br i1 %i.hg, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit12.i.i.i

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit12.i.i.i: ; preds = %bb.ak
  %i.hh = add nuw nsw i64 %i.gx, 1
  %i.hi = icmp samesign ne i64 %i.hh, %i.en
  tail call void @llvm.assume(i1 %i.hi)
  %i.hj = icmp samesign ugt i8 %i.hf, -33
  br i1 %i.hj, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit14.i.i.i, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit14.i.i.i: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit12.i.i.i
  %i.hk = add nuw nsw i64 %i.gx, 2
  %i.hl = icmp samesign ne i64 %i.hk, %i.en
  tail call void @llvm.assume(i1 %i.hl)
  %i.hm = icmp samesign ugt i8 %i.hf, -17
  br i1 %i.hm, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit16.i.i.i, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit16.i.i.i: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit14.i.i.i
  %i.hn = add nuw nsw i64 %i.gx, 3
  %i.ho = icmp samesign ne i64 %i.hn, %i.en
  tail call void @llvm.assume(i1 %i.ho)
  br label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.loopexit:                                        ; preds = %bb.ai, %.split.i.i.i, %bb.x, %.split.i.i.i.peel
  %.lcssa144 = phi i64 [ %.promoted.i, %.split.i.i.i.peel ], [ %.promoted.i, %bb.x ], [ %i.gx, %.split.i.i.i ], [ %i.gx, %bb.ai ]
  tail call void @_RNvNtCsbvkFyIu7lgC_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.el, i64 noundef %i.en, i64 noundef %.lcssa144, i64 noundef %i.en, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #20, !noalias !1373
  unreachable

bb.al:                                            ; preds = %bb.af
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1375)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1378)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1380)
  %.promoted.i11 = load i64, ptr %i.gv, align 8, !alias.scope !1375, !noalias !1382 ; 2 uses
  %i.hp = add i64 %.promoted.i11, %i.gw           ; 2 uses
  %i.hq = icmp ult i64 %i.hp, %i.gq
  br i1 %i.hq, label %.lr.ph.i14, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.lr.ph.i14:                                       ; preds = %bb.al
end_hunk_0
