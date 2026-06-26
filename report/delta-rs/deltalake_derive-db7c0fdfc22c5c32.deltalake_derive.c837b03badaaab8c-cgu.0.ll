inline.NumInlined: 757
inline.NumDeleted: 277
begin_hunk_0_@_RNvCshbKHpCRGxgC_16deltalake_derive24extract_field_attributes:bb.a
bb.db:                                            ; preds = %bb.cy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.fm = load i64, ptr %i.w, align 8, !range !111, !alias.scope !1312, !noundef !4
  %i.fn = icmp eq i64 %i.fm, -9223372036854775808
  br i1 %i.fn, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECshbKHpCRGxgC_16deltalake_derive.exit94, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECshbKHpCRGxgC_16deltalake_derive.exit.i90 unwind label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.fo = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %.body91 unwind label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.fp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECshbKHpCRGxgC_16deltalake_derive.exit.i90: ; preds = %bb.dc
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECshbKHpCRGxgC_16deltalake_derive.exit94 unwind label %bb.df

bb.df:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECshbKHpCRGxgC_16deltalake_derive.exit.i90
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %.body91

.body91:                                          ; preds = %bb.dd, %bb.df
  %eh.lpad-body92 = phi { ptr, i32 } [ %i.fq, %bb.df ], [ %i.fo, %bb.dd ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  br label %.body54

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECshbKHpCRGxgC_16deltalake_derive.exit94: ; preds = %bb.db, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECshbKHpCRGxgC_16deltalake_derive.exit.i90
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %._crit_edge.thread

.thread:                                          ; preds = %bb.ck, %.body54, %.thread110
  %.pn45103 = phi { ptr, i32 } [ %.pn43, %.body54 ], [ %i.ex, %.thread110 ], [ %i.ew, %bb.ck ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(24) %i.w) #18
          to label %bb.dg unwind label %bb.z

bb.dg:                                            ; preds = %.thread, %bb.co, %bb.cq
  %.pn45.pn.ph = phi { ptr, i32 } [ %.pn45103, %.thread ], [ %i.fd, %bb.cq ], [ %i.fb, %bb.co ]
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

.loopexit.a:                                      ; preds = %.lr.ph279, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CshbKHpCRGxgC_16deltalake_derive.exit.backedge.us.i.i, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CshbKHpCRGxgC_16deltalake_derive.exit.backedge.us.i.i.preheader, %.lr.ph.split.us.i.i, %bb.u, %bb.b, %bb.bm, %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit
  %.sroa.0.0 = phi i8 [ 0, %bb.b ], [ %i.kv, %bb.bm ], [ %.sroa.0.025, %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit ], [ %.sroa.014.5.i, %bb.u ], [ 1, %.lr.ph.split.us.i.i ], [ 0, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CshbKHpCRGxgC_16deltalake_derive.exit.backedge.us.i.i.preheader ], [ 0, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CshbKHpCRGxgC_16deltalake_derive.exit.backedge.us.i.i ], [ 1, %.lr.ph279 ]
  %i.d = trunc nuw i8 %.sroa.0.0 to i1
  ret i1 %i.d

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %1, %3
  br i1 %i.e, label %bb.bm, label %.loopexit.a

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1325)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1328)
  %i.f = load i8, ptr %0, align 1, !alias.scope !1325, !noalias !1328, !noundef !4 ; 9 uses
  %i.g = add nsw i64 %1, -1                       ; 2 uses
  %i.h = tail call i64 @llvm.usub.sat.i64(i64 range(i64 3, 9) %1, i64 4) ; 8 uses
  %i.i = icmp samesign ult i64 %i.h, %1
  br i1 %i.i, label %.lr.ph, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit

bb.d:                                             ; preds = %.lr.ph
  %i.j = icmp ult i64 %i.h, %i.ao
  br i1 %i.j, label %.lr.ph.1, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit

.lr.ph.1:                                         ; preds = %bb.d
  %i.k = add nsw i64 %1, -2                       ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !alias.scope !1325, !noalias !1330, !noundef !4 ; 2 uses
  %.not.i.not.i.i.1 = icmp eq i8 %i.m, %i.f
  br i1 %.not.i.not.i.i.1, label %bb.e, label %bb.l

bb.e:                                             ; preds = %.lr.ph.1
  %i.n = icmp ult i64 %i.h, %i.k
  br i1 %i.n, label %.lr.ph.2, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit

.lr.ph.2:                                         ; preds = %bb.e
  %i.o = add nsw i64 %1, -3                       ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !alias.scope !1325, !noalias !1330, !noundef !4 ; 2 uses
  %.not.i.not.i.i.2 = icmp eq i8 %i.q, %i.f
  br i1 %.not.i.not.i.i.2, label %bb.f, label %bb.l

bb.f:                                             ; preds = %.lr.ph.2
  %i.r = icmp ult i64 %i.h, %i.o
  br i1 %i.r, label %.lr.ph.3, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit

.lr.ph.3:                                         ; preds = %bb.f
  %i.s = add nsw i64 %1, -4                       ; 4 uses
  %i.t = icmp samesign ugt i64 %1, 3
  br i1 %i.t, label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CshbKHpCRGxgC_16deltalake_derive.exit.i.i.3, label %bb.k

_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CshbKHpCRGxgC_16deltalake_derive.exit.i.i.3: ; preds = %.lr.ph.3
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %i.s
  %i.v = load i8, ptr %i.u, align 1, !alias.scope !1325, !noalias !1330, !noundef !4 ; 2 uses
  %.not.i.not.i.i.3 = icmp eq i8 %i.v, %i.f
  br i1 %.not.i.not.i.i.3, label %bb.g, label %bb.l

bb.g:                                             ; preds = %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CshbKHpCRGxgC_16deltalake_derive.exit.i.i.3
  %i.w = icmp ult i64 %i.h, %i.s
  br i1 %i.w, label %.lr.ph.4, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit

.lr.ph.4:                                         ; preds = %bb.g
  %i.x = add nsw i64 %1, -5                       ; 4 uses
  %.not322 = icmp eq i64 %1, 4
  br i1 %.not322, label %bb.k, label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CshbKHpCRGxgC_16deltalake_derive.exit.i.i.4

_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CshbKHpCRGxgC_16deltalake_derive.exit.i.i.4: ; preds = %.lr.ph.4
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !alias.scope !1325, !noalias !1330, !noundef !4 ; 2 uses
  %.not.i.not.i.i.4 = icmp eq i8 %i.z, %i.f
  br i1 %.not.i.not.i.i.4, label %bb.h, label %bb.l

bb.h:                                             ; preds = %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CshbKHpCRGxgC_16deltalake_derive.exit.i.i.4
  %i.aa = icmp ult i64 %i.h, %i.x
  br i1 %i.aa, label %.lr.ph.5, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit

.lr.ph.5:                                         ; preds = %bb.h
  %i.ab = add nsw i64 %1, -6                      ; 4 uses
  %i.ac = icmp samesign ugt i64 %1, 5
  br i1 %i.ac, label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CshbKHpCRGxgC_16deltalake_derive.exit.i.i.5, label %bb.k

_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CshbKHpCRGxgC_16deltalake_derive.exit.i.i.5: ; preds = %.lr.ph.5
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %i.ab
  %i.ae = load i8, ptr %i.ad, align 1, !alias.scope !1325, !noalias !1330, !noundef !4 ; 2 uses
  %.not.i.not.i.i.5 = icmp eq i8 %i.ae, %i.f
  br i1 %.not.i.not.i.i.5, label %bb.i, label %bb.l

bb.i:                                             ; preds = %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CshbKHpCRGxgC_16deltalake_derive.exit.i.i.5
  %i.af = icmp ult i64 %i.h, %i.ab
  br i1 %i.af, label %.lr.ph.6, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit

.lr.ph.6:                                         ; preds = %bb.i
  %i.ag = add nsw i64 %1, -7                      ; 4 uses
  %.not323 = icmp eq i64 %1, 6
  br i1 %.not323, label %bb.k, label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CshbKHpCRGxgC_16deltalake_derive.exit.i.i.6

_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CshbKHpCRGxgC_16deltalake_derive.exit.i.i.6: ; preds = %.lr.ph.6
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !alias.scope !1325, !noalias !1330, !noundef !4 ; 2 uses
  %.not.i.not.i.i.6 = icmp eq i8 %i.ai, %i.f
  br i1 %.not.i.not.i.i.6, label %bb.j, label %bb.l

bb.j:                                             ; preds = %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CshbKHpCRGxgC_16deltalake_derive.exit.i.i.6
  %i.aj = icmp ult i64 %i.h, %i.ag
  br i1 %i.aj, label %.lr.ph.7, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit

.lr.ph.7:                                         ; preds = %bb.j
  %i.ak = add nsw i64 %1, -8                      ; 3 uses
  %i.al = icmp samesign ugt i64 %1, 7
  br i1 %i.al, label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CshbKHpCRGxgC_16deltalake_derive.exit.i.i.7, label %bb.k

_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CshbKHpCRGxgC_16deltalake_derive.exit.i.i.7: ; preds = %.lr.ph.7
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 %i.ak
  %i.an = load i8, ptr %i.am, align 1, !alias.scope !1325, !noalias !1330, !noundef !4 ; 2 uses
  %.not.i.not.i.i.7 = icmp eq i8 %i.an, %i.f
  br i1 %.not.i.not.i.i.7, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit, label %bb.l

.lr.ph:                                           ; preds = %bb.c
  %i.ao = add nsw i64 %1, -1                      ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !alias.scope !1325, !noalias !1330, !noundef !4 ; 2 uses
  %.not.i.not.i.i = icmp eq i8 %i.aq, %i.f
  br i1 %.not.i.not.i.i, label %bb.d, label %bb.l

bb.k:                                             ; preds = %.lr.ph.7, %.lr.ph.6, %.lr.ph.5, %.lr.ph.4, %.lr.ph.3
  %.lcssa317 = phi i64 [ %i.ak, %.lr.ph.7 ], [ %i.ag, %.lr.ph.6 ], [ %i.ab, %.lr.ph.5 ], [ %i.s, %.lr.ph.3 ], [ %i.x, %.lr.ph.4 ]
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %.lcssa317, i64 noundef range(i64 3, 9) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #20, !noalias !1338
  unreachable

bb.l:                                             ; preds = %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CshbKHpCRGxgC_16deltalake_derive.exit.i.i.7, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CshbKHpCRGxgC_16deltalake_derive.exit.i.i.6, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CshbKHpCRGxgC_16deltalake_derive.exit.i.i.5, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CshbKHpCRGxgC_16deltalake_derive.exit.i.i.4, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CshbKHpCRGxgC_16deltalake_derive.exit.i.i.3, %.lr.ph.2, %.lr.ph.1, %.lr.ph
  %.lcssa320 = phi i8 [ %i.aq, %.lr.ph ], [ %i.m, %.lr.ph.1 ], [ %i.q, %.lr.ph.2 ], [ %i.v, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CshbKHpCRGxgC_16deltalake_derive.exit.i.i.3 ], [ %i.z, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CshbKHpCRGxgC_16deltalake_derive.exit.i.i.4 ], [ %i.ae, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CshbKHpCRGxgC_16deltalake_derive.exit.i.i.5 ], [ %i.ai, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CshbKHpCRGxgC_16deltalake_derive.exit.i.i.6 ], [ %i.an, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CshbKHpCRGxgC_16deltalake_derive.exit.i.i.7 ]
  %.lcssa318 = phi i64 [ %i.ao, %.lr.ph ], [ %i.k, %.lr.ph.1 ], [ %i.o, %.lr.ph.2 ], [ %i.s, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CshbKHpCRGxgC_16deltalake_derive.exit.i.i.3 ], [ %i.x, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CshbKHpCRGxgC_16deltalake_derive.exit.i.i.4 ], [ %i.ab, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CshbKHpCRGxgC_16deltalake_derive.exit.i.i.5 ], [ %i.ag, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CshbKHpCRGxgC_16deltalake_derive.exit.i.i.6 ], [ %i.ak, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CshbKHpCRGxgC_16deltalake_derive.exit.i.i.7 ] ; 6 uses
  %i.ar = add nuw nsw i64 %1, 15                  ; 3 uses
  %i.as = icmp ult i64 %3, %i.ar
  br i1 %i.as, label %.lr.ph.split.us.i.i, label %bb.m

.lr.ph.split.us.i.i:                              ; preds = %bb.l
  %bcmp.i.i.us23.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %2, ptr noundef nonnull readonly dereferenceable(1) %0, i64 range(i64 3, 9) %1), !alias.scope !1339, !noalias !1340
  %i.at = icmp eq i32 %bcmp.i.i.us23.i.i, 0
  br i1 %i.at, label %.loopexit.a, label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CshbKHpCRGxgC_16deltalake_derive.exit.backedge.us.i.i.preheader

_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CshbKHpCRGxgC_16deltalake_derive.exit.backedge.us.i.i.preheader: ; preds = %.lr.ph.split.us.i.i
  %i.au = add nsw i64 %3, -1                      ; 2 uses
  %.not28.i.i277 = icmp ugt i64 %1, %i.au
  br i1 %.not28.i.i277, label %.loopexit.a, label %.lr.ph279

.lr.ph279:                                        ; preds = %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CshbKHpCRGxgC_16deltalake_derive.exit.backedge.us.i.i.preheader, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CshbKHpCRGxgC_16deltalake_derive.exit.backedge.us.i.i
  %i.av = phi i64 [ %i.ay, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CshbKHpCRGxgC_16deltalake_derive.exit.backedge.us.i.i ], [ %i.au, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CshbKHpCRGxgC_16deltalake_derive.exit.backedge.us.i.i.preheader ]
  %.pn.i278 = phi ptr [ %i.aw, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CshbKHpCRGxgC_16deltalake_derive.exit.backedge.us.i.i ], [ %2, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CshbKHpCRGxgC_16deltalake_derive.exit.backedge.us.i.i.preheader ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.pn.i278, i64 1 ; 2 uses
  %bcmp.i.i.us.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.aw, ptr noundef nonnull readonly dereferenceable(1) %0, i64 range(i64 3, 9) %1), !alias.scope !1339, !noalias !1340
  %i.ax = icmp eq i32 %bcmp.i.i.us.i.i, 0
  br i1 %i.ax, label %.loopexit.a, label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CshbKHpCRGxgC_16deltalake_derive.exit.backedge.us.i.i

_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CshbKHpCRGxgC_16deltalake_derive.exit.backedge.us.i.i: ; preds = %.lr.ph279
  %i.ay = add nsw i64 %i.av, -1                   ; 2 uses
  %.not28.i.i = icmp ugt i64 %1, %i.ay
  br i1 %.not28.i.i, label %.loopexit.a, label %.lr.ph279

bb.m:                                             ; preds = %bb.l
  %i.az = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.ba = shufflevector <16 x i8> %i.az, <16 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.bb = insertelement <16 x i8> poison, i8 %.lcssa320, i64 0
  %i.bc = shufflevector <16 x i8> %i.bb, <16 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1339
  store ptr %2, ptr %i.a, align 8, !noalias !1339
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %3, ptr %i.be, align 8, !noalias !1339
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.bd, ptr %i.bf, align 8, !noalias !1339
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.g, ptr %i.bg, align 8, !noalias !1339
  %i.bh = add nuw nsw i64 %1, 63                  ; 2 uses
  %.not.i = icmp ult i64 %i.bh, %3
  br i1 %.not.i, label %.lr.ph.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.q, %bb.m
  %.sroa.06.0.lcssa.i = phi i64 [ 0, %bb.m ], [ %i.dc, %bb.q ] ; 2 uses
  %.sroa.014.0.lcssa.i = phi i8 [ 0, %bb.m ], [ %.sroa.014.2.3.i, %bb.q ] ; 2 uses
  %i.bi = add i64 %.sroa.06.0.lcssa.i, %i.ar
  %i.bj = icmp uge i64 %i.bi, %3
  %i.bk = trunc nuw i8 %.sroa.014.0.lcssa.i to i1 ; 2 uses
  %or.cond3100.i = select i1 %i.bj, i1 true, i1 %i.bk
  br i1 %or.cond3100.i, label %._crit_edge.i, label %.lr.ph102.i

.lr.ph.i:                                         ; preds = %bb.m, %bb.q
  %.sroa.06.098.i = phi i64 [ %i.dc, %bb.q ], [ 0, %bb.m ] ; 6 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.06.098.i ; 5 uses
  %.sroa.0.0.copyload.i.i = load <16 x i8>, ptr %i.bl, align 1, !alias.scope !1328, !noalias !1344
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %.lcssa318
  %.sroa.02.0.copyload.i.i = load <16 x i8>, ptr %i.bm, align 1, !alias.scope !1328, !noalias !1344
  %i.bn = icmp eq <16 x i8> %.sroa.0.0.copyload.i.i, %i.ba
  %i.bo = icmp eq <16 x i8> %.sroa.02.0.copyload.i.i, %i.bc
  %i.bp = and <16 x i1> %i.bn, %i.bo
  %i.bq = bitcast <16 x i1> %i.bp to i16          ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bl, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i.1.i = load <16 x i8>, ptr %i.br, align 1, !alias.scope !1328, !noalias !1344
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %.lcssa318
  %.sroa.02.0.copyload.i.1.i = load <16 x i8>, ptr %i.bs, align 1, !alias.scope !1328, !noalias !1344
  %i.bt = icmp eq <16 x i8> %.sroa.0.0.copyload.i.1.i, %i.ba
  %i.bu = icmp eq <16 x i8> %.sroa.02.0.copyload.i.1.i, %i.bc
  %i.bv = and <16 x i1> %i.bt, %i.bu
  %i.bw = bitcast <16 x i1> %i.bv to i16          ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bl, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i.2.i = load <16 x i8>, ptr %i.bx, align 1, !alias.scope !1328, !noalias !1344
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %.lcssa318
  %.sroa.02.0.copyload.i.2.i = load <16 x i8>, ptr %i.by, align 1, !alias.scope !1328, !noalias !1344
  %i.bz = icmp eq <16 x i8> %.sroa.0.0.copyload.i.2.i, %i.ba
  %i.ca = icmp eq <16 x i8> %.sroa.02.0.copyload.i.2.i, %i.bc
  %i.cb = and <16 x i1> %i.bz, %i.ca
  %i.cc = bitcast <16 x i1> %i.cb to i16          ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bl, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i.3.i = load <16 x i8>, ptr %i.cd, align 1, !alias.scope !1328, !noalias !1344
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.lcssa318
  %.sroa.02.0.copyload.i.3.i = load <16 x i8>, ptr %i.ce, align 1, !alias.scope !1328, !noalias !1344
  %i.cf = icmp eq <16 x i8> %.sroa.0.0.copyload.i.3.i, %i.ba
  %i.cg = icmp eq <16 x i8> %.sroa.02.0.copyload.i.3.i, %i.bc
  %i.ch = and <16 x i1> %i.cf, %i.cg
  %i.ci = bitcast <16 x i1> %i.ch to i16          ; 2 uses
  %i.cj = icmp eq i16 %i.bq, 0
  br i1 %i.cj, label %.preheader91.1.i, label %bb.r

.preheader91.1.i:                                 ; preds = %bb.r, %.lr.ph.i
  %.sroa.014.2.i = phi i8 [ 0, %.lr.ph.i ], [ %i.dh, %bb.r ] ; 3 uses
  %i.ck = icmp eq i16 %i.bw, 0
  br i1 %i.ck, label %.preheader91.2.i, label %bb.n

bb.n:                                             ; preds = %.preheader91.1.i
  %i.cl = or disjoint i64 %.sroa.06.098.i, 16
  %i.cm = trunc nuw i8 %.sroa.014.2.i to i1
  %i.cn = call fastcc noundef zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0CshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.cl, i16 noundef %i.bw, i1 noundef zeroext %i.cm) #22
  %i.co = zext i1 %i.cn to i8
  %i.cp = or i8 %.sroa.014.2.i, %i.co
  br label %.preheader91.2.i

.preheader91.2.i:                                 ; preds = %bb.n, %.preheader91.1.i
  %.sroa.014.2.1.i = phi i8 [ %.sroa.014.2.i, %.preheader91.1.i ], [ %i.cp, %bb.n ] ; 3 uses
  %i.cq = icmp eq i16 %i.cc, 0
  br i1 %i.cq, label %.preheader91.3.i, label %bb.o

bb.o:                                             ; preds = %.preheader91.2.i
  %i.cr = or disjoint i64 %.sroa.06.098.i, 32
  %i.cs = trunc nuw i8 %.sroa.014.2.1.i to i1
  %i.ct = call fastcc noundef zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0CshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.cr, i16 noundef %i.cc, i1 noundef zeroext %i.cs) #22
  %i.cu = zext i1 %i.ct to i8
  %i.cv = or i8 %.sroa.014.2.1.i, %i.cu
  br label %.preheader91.3.i

.preheader91.3.i:                                 ; preds = %bb.o, %.preheader91.2.i
  %.sroa.014.2.2.i = phi i8 [ %.sroa.014.2.1.i, %.preheader91.2.i ], [ %i.cv, %bb.o ] ; 3 uses
  %i.cw = icmp eq i16 %i.ci, 0
  br i1 %i.cw, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.preheader91.3.i
  %i.cx = or disjoint i64 %.sroa.06.098.i, 48
  %i.cy = trunc nuw i8 %.sroa.014.2.2.i to i1
  %i.cz = call fastcc noundef zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0CshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.cx, i16 noundef %i.ci, i1 noundef zeroext %i.cy) #22
  %i.da = zext i1 %i.cz to i8
  %i.db = or i8 %.sroa.014.2.2.i, %i.da
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.preheader91.3.i
  %.sroa.014.2.3.i = phi i8 [ %.sroa.014.2.2.i, %.preheader91.3.i ], [ %i.db, %bb.p ] ; 2 uses
  %i.dc = add i64 %.sroa.06.098.i, 64             ; 3 uses
  %i.dd = add i64 %i.dc, %i.bh
  %i.de = icmp uge i64 %i.dd, %3
  %i.df = trunc nuw i8 %.sroa.014.2.3.i to i1
  %or.cond.i = select i1 %i.de, i1 true, i1 %i.df
  br i1 %or.cond.i, label %.preheader.i, label %.lr.ph.i

bb.r:                                             ; preds = %.lr.ph.i
  %i.dg = call fastcc noundef zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0CshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.sroa.06.098.i, i16 noundef %i.bq, i1 noundef zeroext false) #22
  %i.dh = zext i1 %i.dg to i8
  br label %.preheader91.1.i

._crit_edge.i:                                    ; preds = %bb.s, %.preheader.i
  %.sroa.014.3.lcssa.i = phi i8 [ %.sroa.014.0.lcssa.i, %.preheader.i ], [ %.sroa.014.4.i, %bb.s ] ; 2 uses
  %.lcssa.i = phi i1 [ %i.bk, %.preheader.i ], [ %i.eb, %bb.s ]
  %i.di = sub nuw i64 %3, %i.g
  %i.dj = add i64 %i.di, -16                      ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 %i.dj ; 2 uses
  %.sroa.0.0.copyload.i58.i = load <16 x i8>, ptr %i.dk, align 1, !alias.scope !1328, !noalias !1347
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 %.lcssa318
  %.sroa.02.0.copyload.i59.i = load <16 x i8>, ptr %i.dl, align 1, !alias.scope !1328, !noalias !1347
  %i.dm = icmp eq <16 x i8> %.sroa.0.0.copyload.i58.i, %i.ba
  %i.dn = icmp eq <16 x i8> %.sroa.02.0.copyload.i59.i, %i.bc
  %i.do = and <16 x i1> %i.dm, %i.dn
  %i.dp = bitcast <16 x i1> %i.do to i16          ; 2 uses
  %i.dq = icmp eq i16 %i.dp, 0
  br i1 %i.dq, label %bb.u, label %bb.v

.lr.ph102.i:                                      ; preds = %.preheader.i, %bb.s
  %.sroa.06.1101.i = phi i64 [ %i.dy, %bb.s ], [ %.sroa.06.0.lcssa.i, %.preheader.i ] ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.06.1101.i ; 2 uses
  %.sroa.0.0.copyload.i60.i = load <16 x i8>, ptr %i.dr, align 1, !alias.scope !1328, !noalias !1350
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.lcssa318
  %.sroa.02.0.copyload.i61.i = load <16 x i8>, ptr %i.ds, align 1, !alias.scope !1328, !noalias !1350
  %i.dt = icmp eq <16 x i8> %.sroa.0.0.copyload.i60.i, %i.ba
  %i.du = icmp eq <16 x i8> %.sroa.02.0.copyload.i61.i, %i.bc
  %i.dv = and <16 x i1> %i.dt, %i.du
  %i.dw = bitcast <16 x i1> %i.dv to i16          ; 2 uses
  %i.dx = icmp eq i16 %i.dw, 0
  br i1 %i.dx, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.t, %.lr.ph102.i
  %.sroa.014.4.i = phi i8 [ 0, %.lr.ph102.i ], [ %i.ed, %bb.t ] ; 2 uses
  %i.dy = add i64 %.sroa.06.1101.i, 16            ; 2 uses
  %i.dz = add i64 %i.dy, %i.ar
  %i.ea = icmp uge i64 %i.dz, %3
  %i.eb = trunc nuw i8 %.sroa.014.4.i to i1       ; 2 uses
  %or.cond3.i = or i1 %i.ea, %i.eb
  br i1 %or.cond3.i, label %._crit_edge.i, label %.lr.ph102.i

bb.t:                                             ; preds = %.lr.ph102.i
  %i.ec = call fastcc noundef zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0CshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.sroa.06.1101.i, i16 noundef %i.dw, i1 noundef zeroext false) #22
  %i.ed = zext i1 %i.ec to i8
  br label %bb.s

bb.u:                                             ; preds = %bb.v, %._crit_edge.i
  %.sroa.014.5.i = phi i8 [ %.sroa.014.3.lcssa.i, %._crit_edge.i ], [ %i.eg, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1339
  br label %.loopexit.a

bb.v:                                             ; preds = %._crit_edge.i
  %i.ee = call fastcc noundef zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0CshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.dj, i16 noundef %i.dp, i1 noundef zeroext %.lcssa.i) #22
  %i.ef = zext i1 %i.ee to i8
  %i.eg = or i8 %.sroa.014.3.lcssa.i, %i.ef
  br label %bb.u

_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit: ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CshbKHpCRGxgC_16deltalake_derive.exit.i.i.7, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsu_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcher3new(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1353)
  %i.eh = load i64, ptr %i.b, align 8, !range !450, !alias.scope !1353, !noalias !1356, !noundef !4
  %i.ei = trunc nuw i64 %i.eh to i1
  %i.ej = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  br i1 %i.ei, label %bb.ag, label %.preheader.i4

.preheader.i4:                                    ; preds = %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit
  %i.ek = getelementptr inbounds nuw i8, ptr %i.b, i64 26
  %i.el = load i8, ptr %i.ek, align 2, !range !1358, !alias.scope !1359, !noalias !1362, !noundef !4
  %i.em = trunc nuw i8 %i.el to i1
  br i1 %i.em, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %.lr.ph.i5

.lr.ph.i5:                                        ; preds = %.preheader.i4
  %.promoted.i = load i64, ptr %i.ej, align 8, !alias.scope !1353, !noalias !1356 ; 12 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.eo = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.ep = load ptr, ptr %i.eo, align 8, !alias.scope !1359, !noalias !1362, !nonnull !4, !noundef !4 ; 5 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.er = load i64, ptr %i.eq, align 8, !alias.scope !1359, !noalias !1362, !noundef !4 ; 14 uses
  %.promoted26.i = load i8, ptr %i.en, align 8, !alias.scope !1359, !noalias !1362 ; 2 uses
  %i.es = trunc nuw i8 %.promoted26.i to i1
  %i.et = icmp eq i64 %.promoted.i, 0
  br i1 %i.et, label %bb.z, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i5
  %.not.i.i.i.peel = icmp ult i64 %.promoted.i, %i.er
  br i1 %.not.i.i.i.peel, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.eu = icmp eq i64 %.promoted.i, %i.er
  br i1 %i.eu, label %bb.z, label %.loopexit152

bb.y:                                             ; preds = %bb.w
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ep, i64 %.promoted.i
  %i.ew = load i8, ptr %i.ev, align 1, !alias.scope !1364, !noalias !1367, !noundef !4
  %i.ex = icmp sgt i8 %i.ew, -65
  br i1 %i.ex, label %bb.z, label %.loopexit152

bb.z:                                             ; preds = %bb.y, %bb.x, %.lr.ph.i5
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ep, i64 %.promoted.i ; 4 uses
  %i.ez = icmp samesign eq i64 %.promoted.i, %i.er
  br i1 %i.ez, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fa = load i8, ptr %i.ey, align 1, !noalias !1369, !noundef !4 ; 5 uses
  %i.fb = icmp sgt i8 %i.fa, -1
  br i1 %i.fb, label %bb.ab, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit12.i.i.i.peel

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit12.i.i.i.peel: ; preds = %bb.aa
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ey, i64 1
  %i.fd = and i8 %i.fa, 31
  %i.fe = zext nneg i8 %i.fd to i32               ; 3 uses
  %i.ff = add nuw nsw i64 %.promoted.i, 1
  %i.fg = icmp samesign ne i64 %i.ff, %i.er
  tail call void @llvm.assume(i1 %i.fg)
  %i.fh = load i8, ptr %i.fc, align 1, !noalias !1369, !noundef !4
  %i.fi = shl nuw nsw i32 %i.fe, 6
  %i.fj = and i8 %i.fh, 63
  %i.fk = zext nneg i8 %i.fj to i32               ; 2 uses
  %i.fl = or disjoint i32 %i.fi, %i.fk
  %i.fm = icmp samesign ugt i8 %i.fa, -33
  br i1 %i.fm, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit14.i.i.i.peel, label %bb.ac

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit14.i.i.i.peel: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit12.i.i.i.peel
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ey, i64 2
  %i.fo = add nuw nsw i64 %.promoted.i, 2
  %i.fp = icmp samesign ne i64 %i.fo, %i.er
  tail call void @llvm.assume(i1 %i.fp)
  %i.fq = load i8, ptr %i.fn, align 1, !noalias !1369, !noundef !4
  %i.fr = shl nuw nsw i32 %i.fk, 6
  %i.fs = and i8 %i.fq, 63
  %i.ft = zext nneg i8 %i.fs to i32
  %i.fu = or disjoint i32 %i.fr, %i.ft            ; 2 uses
  %i.fv = shl nuw nsw i32 %i.fe, 12
  %i.fw = or disjoint i32 %i.fu, %i.fv
  %i.fx = icmp samesign ugt i8 %i.fa, -17
  br i1 %i.fx, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit16.i.i.i.peel, label %bb.ac

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit16.i.i.i.peel: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit14.i.i.i.peel
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ey, i64 3
  %i.fz = add nuw nsw i64 %.promoted.i, 3
  %i.ga = icmp samesign ne i64 %i.fz, %i.er
  tail call void @llvm.assume(i1 %i.ga)
  %i.gb = load i8, ptr %i.fy, align 1, !noalias !1369, !noundef !4
  %i.gc = shl nuw nsw i32 %i.fe, 18
  %i.gd = and i32 %i.gc, 1835008
  %i.ge = shl nuw nsw i32 %i.fu, 6
  %i.gf = and i8 %i.gb, 63
  %i.gg = zext nneg i8 %i.gf to i32
  %i.gh = or disjoint i32 %i.ge, %i.gg
  %i.gi = or disjoint i32 %i.gh, %i.gd
  br label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.gj = zext nneg i8 %i.fa to i32
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit16.i.i.i.peel, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit14.i.i.i.peel, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit12.i.i.i.peel
  %.sroa.4.0.i.ph.i.i.peel = phi i32 [ %i.fw, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit14.i.i.i.peel ], [ %i.gi, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit16.i.i.i.peel ], [ %i.fl, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit12.i.i.i.peel ], [ %i.gj, %bb.ab ] ; 4 uses
  %i.gk = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 1114112
  tail call void @llvm.assume(i1 %i.gk)
  br i1 %i.es, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gl = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 128
  br i1 %i.gl, label %bb.ah, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gm = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 2048
  br i1 %i.gm, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gn = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 65536
  %..i.i.peel = select i1 %i.gn, i64 3, i64 4
  br label %bb.ah

bb.ag:                                            ; preds = %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit
  %i.go = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.gp = load i64, ptr %i.go, align 8, !alias.scope !1353, !noalias !1356, !noundef !4 ; 2 uses
  %i.gq = icmp eq i64 %i.gp, -1
  %i.gr = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.gs = load ptr, ptr %i.gr, align 8, !alias.scope !1353, !noalias !1356, !nonnull !4, !noundef !4 ; 6 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.gu = load i64, ptr %i.gt, align 8, !alias.scope !1353, !noalias !1356, !noundef !4 ; 14 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.gw = load ptr, ptr %i.gv, align 8, !alias.scope !1353, !noalias !1356, !nonnull !4, !noundef !4 ; 4 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.gy = load i64, ptr %i.gx, align 8, !alias.scope !1353, !noalias !1356, !noundef !4 ; 12 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.ha = add nsw i64 %i.gy, -1                   ; 4 uses
  br i1 %i.gq, label %bb.an, label %bb.az

bb.ah:                                            ; preds = %bb.ad, %bb.ae, %bb.af
  %.sroa.01.0.i.i.peel = phi i64 [ 2, %bb.ae ], [ %..i.i.peel, %bb.af ], [ 1, %bb.ad ]
  %i.hb = add i64 %.sroa.01.0.i.i.peel, %.promoted.i ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1372)
  %i.hc = icmp eq i64 %i.hb, 0
  br i1 %i.hc, label %bb.al, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %.not.i.i.i = icmp ult i64 %i.hb, %i.er
  br i1 %.not.i.i.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.hd = icmp eq i64 %i.hb, %i.er
  br i1 %i.hd, label %bb.al, label %.loopexit152

bb.ak:                                            ; preds = %bb.ai
  %i.he = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.hb
  %i.hf = load i8, ptr %i.he, align 1, !alias.scope !1364, !noalias !1373, !noundef !4
  %i.hg = icmp sgt i8 %i.hf, -65
  br i1 %i.hg, label %bb.al, label %.loopexit152

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.ah
  %i.hh = icmp samesign eq i64 %i.hb, %i.er
  br i1 %i.hh, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.hi = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.hb
  %i.hj = load i8, ptr %i.hi, align 1, !noalias !1374, !noundef !4 ; 3 uses
  %i.hk = icmp sgt i8 %i.hj, -1
  br i1 %i.hk, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit12.i.i.i

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit12.i.i.i: ; preds = %bb.am
  %i.hl = add nuw nsw i64 %i.hb, 1
  %i.hm = icmp samesign ne i64 %i.hl, %i.er
  tail call void @llvm.assume(i1 %i.hm)
  %i.hn = icmp samesign ugt i8 %i.hj, -33
  br i1 %i.hn, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit14.i.i.i, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit14.i.i.i: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit12.i.i.i
  %i.ho = add nuw nsw i64 %i.hb, 2
  %i.hp = icmp samesign ne i64 %i.ho, %i.er
  tail call void @llvm.assume(i1 %i.hp)
  %i.hq = icmp samesign ugt i8 %i.hj, -17
  br i1 %i.hq, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit16.i.i.i, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit16.i.i.i: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit14.i.i.i
  %i.hr = add nuw nsw i64 %i.hb, 3
  %i.hs = icmp samesign ne i64 %i.hr, %i.er
  tail call void @llvm.assume(i1 %i.hs)
  br label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.loopexit152:                                     ; preds = %bb.ak, %bb.aj, %bb.y, %bb.x
  %.lcssa145 = phi i64 [ %.promoted.i, %bb.x ], [ %.promoted.i, %bb.y ], [ %i.hb, %bb.aj ], [ %i.hb, %bb.ak ]
  tail call void @_RNvNtCsbvkFyIu7lgC_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ep, i64 noundef %i.er, i64 noundef %.lcssa145, i64 noundef %i.er, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #20, !noalias !1373
  unreachable

bb.an:                                            ; preds = %bb.ag
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1375)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1378)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1380)
  %.promoted.i11 = load i64, ptr %i.gz, align 8, !alias.scope !1375, !noalias !1382 ; 2 uses
  %i.ht = add i64 %.promoted.i11, %i.ha           ; 2 uses
  %i.hu = icmp ult i64 %i.ht, %i.gu
  br i1 %i.hu, label %.lr.ph.i14, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.lr.ph.i14:                                       ; preds = %bb.an
  %i.hv = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.hw = load i64, ptr %i.hv, align 8, !alias.scope !1375, !noalias !1382, !noundef !4
  %i.hx = load i64, ptr %i.ej, align 8, !alias.scope !1375, !noalias !1382 ; 8 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.hz = load i64, ptr %i.hy, align 8, !alias.scope !1375, !noalias !1382
  %umax54.i17 = tail call i64 @llvm.umax.i64(i64 %i.hx, i64 range(i64 0, -9223372036854775808) %i.gy)
  %i.ia = add i64 %i.hx, -1
  %.first_iter = icmp ult i64 %i.ia, %i.gy
  %exitcond.not.i19271.not = icmp ult i64 %i.hx, %i.gy
  %invariant.op356 = sub i64 1, %i.hx
  %.not274 = icmp eq i64 %i.hx, 0
  br label %bb.ao

bb.ao:                                            ; preds = %bb.aq, %.lr.ph.i14
  %i.ib = phi i64 [ %.promoted.i11, %.lr.ph.i14 ], [ %i.il, %bb.aq ] ; 6 uses
  %i.ic = phi i64 [ %i.ht, %.lr.ph.i14 ], [ %i.im, %bb.aq ]
  %i.id = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.ic
  %i.ie = load i8, ptr %i.id, align 1, !alias.scope !1378, !noalias !1384, !noundef !4
  %i.if = and i8 %i.ie, 63
  %i.ig = zext nneg i8 %i.if to i64
  %i.ih = shl nuw i64 1, %i.ig
  %i.ii = and i64 %i.ih, %i.hw
  %i.ij = icmp eq i64 %i.ii, 0
  br i1 %i.ij, label %bb.ap, label %.preheader91.preheader

.preheader91.preheader:                           ; preds = %bb.ao
  br i1 %exitcond.not.i19271.not, label %.lr.ph273, label %.preheader.preheader

bb.ap:                                            ; preds = %bb.ao
  %i.ik = add i64 %i.ib, %i.gy
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ay, %bb.av, %bb.ap
  %i.il = phi i64 [ %i.je, %bb.ay ], [ %i.ik, %bb.ap ], [ %i.iy, %bb.av ] ; 2 uses
  %i.im = add i64 %i.il, %i.ha                    ; 2 uses
  %i.in = icmp ult i64 %i.im, %i.gu
  br i1 %i.in, label %bb.ao, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.preheader91:                                     ; preds = %bb.aw
  %i.io = add i64 %.sroa.04.0.i18272, 1           ; 2 uses
  %exitcond.not.i19 = icmp eq i64 %i.io, %umax54.i17
  br i1 %exitcond.not.i19, label %.preheader.preheader, label %.lr.ph273

.preheader.preheader:                             ; preds = %.preheader91, %.preheader91.preheader
  br i1 %.not274, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %.lr.ph276

.lr.ph273:                                        ; preds = %.preheader91.preheader, %.preheader91
  %.sroa.04.0.i18272 = phi i64 [ %i.io, %.preheader91 ], [ %i.hx, %.preheader91.preheader ] ; 4 uses
  %i.ip = add i64 %.sroa.04.0.i18272, %i.ib       ; 2 uses
  %i.iq = icmp ult i64 %i.ip, %i.gu
  br i1 %i.iq, label %bb.aw, label %bb.ax

.preheader:                                       ; preds = %bb.at
  %.not = icmp eq i64 %i.ir, 0
  br i1 %.not, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %.lr.ph276

.lr.ph276:                                        ; preds = %.preheader.preheader, %.preheader
  %.sroa.2.0.i22275 = phi i64 [ %i.ir, %.preheader ], [ %i.hx, %.preheader.preheader ]
  %i.ir = add i64 %.sroa.2.0.i22275, -1           ; 5 uses
  br i1 %.first_iter, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %.lr.ph276
  %i.is = add i64 %i.ir, %i.ib                    ; 3 uses
  %i.it = icmp ult i64 %i.is, %i.gu
  br i1 %i.it, label %bb.at, label %bb.au

bb.as:                                            ; preds = %.lr.ph276
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.ir, i64 noundef range(i64 0, -9223372036854775808) %i.gy, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #20, !noalias !1385
  unreachable

bb.at:                                            ; preds = %bb.ar
  %i.iu = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.ir
  %i.iv = load i8, ptr %i.iu, align 1, !alias.scope !1380, !noalias !1386, !noundef !4
  %i.iw = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.is
  %i.ix = load i8, ptr %i.iw, align 1, !alias.scope !1378, !noalias !1384, !noundef !4
  %.not.i23 = icmp eq i8 %i.iv, %i.ix
  br i1 %.not.i23, label %.preheader, label %bb.av

bb.au:                                            ; preds = %bb.ar
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.is, i64 noundef range(i64 0, -9223372036854775808) %i.gu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #20, !noalias !1385
  unreachable

bb.av:                                            ; preds = %bb.at
  %i.iy = add i64 %i.ib, %i.hz
  br label %bb.aq

bb.aw:                                            ; preds = %.lr.ph273
  %i.iz = getelementptr inbounds nuw i8, ptr %i.gw, i64 %.sroa.04.0.i18272
  %i.ja = load i8, ptr %i.iz, align 1, !alias.scope !1380, !noalias !1386, !noundef !4
  %i.jb = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.ip
  %i.jc = load i8, ptr %i.jb, align 1, !alias.scope !1378, !noalias !1384, !noundef !4
  %.not23.i21 = icmp eq i8 %i.ja, %i.jc
  br i1 %.not23.i21, label %.preheader91, label %bb.ay

bb.ax:                                            ; preds = %.lr.ph273
  %i.jd = add i64 %i.ib, %i.hx
  %umax.i20 = tail call i64 @llvm.umax.i64(i64 range(i64 0, -9223372036854775808) %i.gu, i64 %i.jd)
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %umax.i20, i64 noundef range(i64 0, -9223372036854775808) %i.gu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #20, !noalias !1385
  unreachable

bb.ay:                                            ; preds = %bb.aw
  %.reass230.reass = add i64 %i.ib, %invariant.op356
  %i.je = add i64 %.reass230.reass, %.sroa.04.0.i18272
  br label %bb.aq

bb.az:                                            ; preds = %bb.ag
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1387)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1390)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1392)
  %.promoted.i6 = load i64, ptr %i.gz, align 8, !alias.scope !1387, !noalias !1394 ; 2 uses
  %i.jf = add i64 %.promoted.i6, %i.ha            ; 2 uses
  %i.jg = icmp ult i64 %i.jf, %i.gu
  br i1 %i.jg, label %.lr.ph.i9, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.lr.ph.i9:                                        ; preds = %bb.az
  %i.jh = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ji = load i64, ptr %i.jh, align 8, !alias.scope !1387, !noalias !1394, !noundef !4
  %i.jj = load i64, ptr %i.ej, align 8, !alias.scope !1387, !noalias !1394 ; 4 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.jl = load i64, ptr %i.jk, align 8, !alias.scope !1387, !noalias !1394 ; 2 uses
  %i.jm = sub i64 %i.gy, %i.jl
  %invariant.op = sub i64 1, %i.jj
  br label %bb.ba

bb.ba:                                            ; preds = %.sink.split.i, %.lr.ph.i9
  %i.jn = phi i64 [ %.promoted.i6, %.lr.ph.i9 ], [ %.ph76.i, %.sink.split.i ] ; 6 uses
  %i.jo = phi i64 [ %i.gp, %.lr.ph.i9 ], [ %.sink.i, %.sink.split.i ] ; 3 uses
  %i.jp = phi i64 [ %i.jf, %.lr.ph.i9 ], [ %i.jy, %.sink.split.i ]
  %i.jq = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.jp
  %i.jr = load i8, ptr %i.jq, align 1, !alias.scope !1390, !noalias !1396, !noundef !4
  %i.js = and i8 %i.jr, 63
  %i.jt = zext nneg i8 %i.js to i64
  %i.ju = shl nuw i64 1, %i.jt
  %i.jv = and i64 %i.ju, %i.ji
  %i.jw = icmp eq i64 %i.jv, 0
  br i1 %i.jw, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.jx = add i64 %i.jn, %i.gy
  br label %.sink.split.i

bb.bc:                                            ; preds = %bb.ba
  %.sroa.0.0.i.i = tail call i64 @llvm.umax.i64(i64 %i.jo, i64 %i.jj) ; 4 uses
  %umax54.i = tail call i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i, i64 range(i64 0, -9223372036854775808) %i.gy)
  %exitcond.not.i266.not = icmp ult i64 %.sroa.0.0.i.i, %i.gy
  br i1 %exitcond.not.i266.not, label %.lr.ph268.a, label %.preheader30.preheader

.sink.split.i:                                    ; preds = %bb.bl, %bb.bi, %bb.bb
  %.sink.i = phi i64 [ %i.jm, %bb.bi ], [ 0, %bb.bl ], [ 0, %bb.bb ]
  %.ph76.i = phi i64 [ %i.kn, %bb.bi ], [ %i.kt, %bb.bl ], [ %i.jx, %bb.bb ] ; 2 uses
  %i.jy = add i64 %.ph76.i, %i.ha                 ; 2 uses
  %i.jz = icmp ult i64 %i.jy, %i.gu
  br i1 %i.jz, label %bb.ba, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

bb.bd:                                            ; preds = %bb.bj
  %i.ka = add i64 %.sroa.04.0.i267, 1             ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ka, %umax54.i
  br i1 %exitcond.not.i, label %.preheader30.preheader, label %.lr.ph268.a

.preheader30.preheader:                           ; preds = %bb.bd, %bb.bc
  %i.kb = icmp ult i64 %i.jo, %i.jj
  br i1 %i.kb, label %.lr.ph270, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.lr.ph268.a:                                      ; preds = %bb.bc, %bb.bd
  %.sroa.04.0.i267 = phi i64 [ %i.ka, %bb.bd ], [ %.sroa.0.0.i.i, %bb.bc ] ; 4 uses
  %i.kc = add i64 %.sroa.04.0.i267, %i.jn         ; 2 uses
  %i.kd = icmp ult i64 %i.kc, %i.gu
  br i1 %i.kd, label %bb.bj, label %bb.bk

.preheader30:                                     ; preds = %bb.bg
  %i.ke = icmp ult i64 %i.jo, %i.kf
  br i1 %i.ke, label %.lr.ph270, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.lr.ph270:                                        ; preds = %.preheader30.preheader, %.preheader30
  %.sroa.2.0.i269 = phi i64 [ %i.kf, %.preheader30 ], [ %i.jj, %.preheader30.preheader ]
  %i.kf = add i64 %.sroa.2.0.i269, -1             ; 6 uses
  %i.kg = icmp ult i64 %i.kf, %i.gy
  br i1 %i.kg, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %.lr.ph270
  %i.kh = add i64 %i.kf, %i.jn                    ; 3 uses
  %i.ki = icmp ult i64 %i.kh, %i.gu
  br i1 %i.ki, label %bb.bg, label %bb.bh

bb.bf:                                            ; preds = %.lr.ph270
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.kf, i64 noundef range(i64 0, -9223372036854775808) %i.gy, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #20, !noalias !1397
  unreachable

bb.bg:                                            ; preds = %bb.be
  %i.kj = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.kf
  %i.kk = load i8, ptr %i.kj, align 1, !alias.scope !1392, !noalias !1398, !noundef !4
  %i.kl = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.kh
  %i.km = load i8, ptr %i.kl, align 1, !alias.scope !1390, !noalias !1396, !noundef !4
  %.not.i10 = icmp eq i8 %i.kk, %i.km
  br i1 %.not.i10, label %.preheader30, label %bb.bi

bb.bh:                                            ; preds = %bb.be
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.kh, i64 noundef range(i64 0, -9223372036854775808) %i.gu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #20, !noalias !1397
  unreachable

bb.bi:                                            ; preds = %bb.bg
  %i.kn = add i64 %i.jn, %i.jl
  br label %.sink.split.i

bb.bj:                                            ; preds = %.lr.ph268.a
  %i.ko = getelementptr inbounds nuw i8, ptr %i.gw, i64 %.sroa.04.0.i267
  %i.kp = load i8, ptr %i.ko, align 1, !alias.scope !1392, !noalias !1398, !noundef !4
  %i.kq = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.kc
  %i.kr = load i8, ptr %i.kq, align 1, !alias.scope !1390, !noalias !1396, !noundef !4
  %.not23.i = icmp eq i8 %i.kp, %i.kr
  br i1 %.not23.i, label %bb.bd, label %bb.bl

bb.bk:                                            ; preds = %.lr.ph268.a
  %i.ks = add i64 %i.jn, %.sroa.0.0.i.i
  %umax.i = tail call i64 @llvm.umax.i64(i64 range(i64 0, -9223372036854775808) %i.gu, i64 %i.ks)
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %umax.i, i64 noundef range(i64 0, -9223372036854775808) %i.gu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #20, !noalias !1397
  unreachable

bb.bl:                                            ; preds = %bb.bj
  %.reass.reass = add i64 %i.jn, %invariant.op
  %i.kt = add i64 %.reass.reass, %.sroa.04.0.i267
  br label %.sink.split.i

_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit: ; preds = %.sink.split.i, %.preheader30.preheader, %.preheader30, %bb.aq, %.preheader.preheader, %.preheader, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit16.i.i.i, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit14.i.i.i, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit12.i.i.i, %bb.am, %bb.z, %bb.az, %bb.an, %bb.ac, %bb.al, %.preheader.i4
  %.sroa.0.025 = phi i8 [ 1, %.preheader ], [ 0, %bb.an ], [ 0, %.preheader.i4 ], [ 1, %bb.al ], [ 1, %.preheader.preheader ], [ 1, %bb.ac ], [ 1, %.preheader30 ], [ 0, %bb.az ], [ %.promoted26.i, %bb.z ], [ 1, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit16.i.i.i ], [ 1, %bb.am ], [ 1, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit12.i.i.i ], [ 1, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit14.i.i.i ], [ 0, %bb.aq ], [ 0, %.sink.split.i ], [ 1, %.preheader30.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.loopexit.a

bb.bm:                                            ; preds = %bb.b
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %2, i64 %1)
  %i.ku = icmp eq i32 %bcmp, 0
  %i.kv = zext i1 %i.ku to i8
  br label %.loopexit.a
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtCsbjGuDcEILED_11proc_macro211TokenStreamENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtCsjJ0p09o2jmV_10proc_macro9TokenTreeENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs7nQiqFc7Txl_3syn4attr9AttributeENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs7nQiqFc7Txl_3syn4expr3ArmENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs7nQiqFc7Txl_3syn4stmt4StmtENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs7nQiqFc7Txl_3syn5error12ErrorMessageENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecRNtNtCs7nQiqFc7Txl_3syn4data5FieldENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecTNtNtCs7nQiqFc7Txl_3syn2ty4TypeNtNtBK_5token5CommaEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecTNtNtCs7nQiqFc7Txl_3syn2ty9BareFnArgNtNtBK_5token5CommaEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecTNtNtCs7nQiqFc7Txl_3syn3pat3PatNtNtBK_5token2OrEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecTNtNtCs7nQiqFc7Txl_3syn3pat3PatNtNtBK_5token5CommaEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecTNtNtCs7nQiqFc7Txl_3syn3pat8FieldPatNtNtBK_5token5CommaEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecTNtNtCs7nQiqFc7Txl_3syn4data5FieldNtNtBK_5token5CommaEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecTNtNtCs7nQiqFc7Txl_3syn4data7VariantNtNtBK_5token5CommaEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecTNtNtCs7nQiqFc7Txl_3syn4expr10FieldValueNtNtBK_5token5CommaEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecTNtNtCs7nQiqFc7Txl_3syn4expr4ExprNtNtBK_5token5CommaEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecTNtNtCs7nQiqFc7Txl_3syn4path11PathSegmentNtNtBK_5token7PathSepEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecTNtNtCs7nQiqFc7Txl_3syn4path15GenericArgumentNtNtBK_5token5CommaEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecTNtNtCs7nQiqFc7Txl_3syn8generics12GenericParamNtNtBK_5token5CommaEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecTNtNtCs7nQiqFc7Txl_3syn8generics13CapturedParamNtNtBK_5token5CommaEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecTNtNtCs7nQiqFc7Txl_3syn8generics14TypeParamBoundNtNtBK_5token4PlusEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecTNtNtCs7nQiqFc7Txl_3syn8generics14WherePredicateNtNtBK_5token5CommaEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecTNtNtCs7nQiqFc7Txl_3syn8lifetime8LifetimeNtNtBK_5token4PlusEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtCsbjGuDcEILED_11proc_macro211TokenStreamENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtCsjJ0p09o2jmV_10proc_macro9TokenTreeENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs7nQiqFc7Txl_3syn4attr9AttributeENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs7nQiqFc7Txl_3syn4expr3ArmENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs7nQiqFc7Txl_3syn4stmt4StmtENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs7nQiqFc7Txl_3syn5error12ErrorMessageENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecRNtNtCs7nQiqFc7Txl_3syn4data5FieldENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecTNtNtCs7nQiqFc7Txl_3syn2ty4TypeNtNtBR_5token5CommaEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecTNtNtCs7nQiqFc7Txl_3syn2ty9BareFnArgNtNtBR_5token5CommaEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecTNtNtCs7nQiqFc7Txl_3syn3pat3PatNtNtBR_5token2OrEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecTNtNtCs7nQiqFc7Txl_3syn3pat3PatNtNtBR_5token5CommaEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecTNtNtCs7nQiqFc7Txl_3syn3pat8FieldPatNtNtBR_5token5CommaEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecTNtNtCs7nQiqFc7Txl_3syn4data5FieldNtNtBR_5token5CommaEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecTNtNtCs7nQiqFc7Txl_3syn4data7VariantNtNtBR_5token5CommaEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecTNtNtCs7nQiqFc7Txl_3syn4expr10FieldValueNtNtBR_5token5CommaEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecTNtNtCs7nQiqFc7Txl_3syn4expr4ExprNtNtBR_5token5CommaEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecTNtNtCs7nQiqFc7Txl_3syn4path11PathSegmentNtNtBR_5token7PathSepEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecTNtNtCs7nQiqFc7Txl_3syn4path15GenericArgumentNtNtBR_5token5CommaEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecTNtNtCs7nQiqFc7Txl_3syn8generics12GenericParamNtNtBR_5token5CommaEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecTNtNtCs7nQiqFc7Txl_3syn8generics13CapturedParamNtNtBR_5token5CommaEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecTNtNtCs7nQiqFc7Txl_3syn8generics14TypeParamBoundNtNtBR_5token4PlusEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecTNtNtCs7nQiqFc7Txl_3syn8generics14WherePredicateNtNtBR_5token5CommaEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecTNtNtCs7nQiqFc7Txl_3syn8lifetime8LifetimeNtNtBR_5token4PlusEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs7nQiqFc7Txl_3syn4attr4MetaENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs0_NtCsbjGuDcEILED_11proc_macro28fallbackNtB5_11TokenStreamNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs0_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6clientNtB5_11TokenStreamNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef align 4 dereferenceable(4)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCshbKHpCRGxgC_16deltalake_derive(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull, ptr noundef, ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #8

; Function Attrs: nonlazybind uwtable
end_hunk_0
