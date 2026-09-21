Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_derive-db7c0fdfc22c5c32.deltalake_derive.c837b03badaaab8c-cgu.0?download=true
inline.NumInlined: 757
inline.NumDeleted: 277
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvCshbKHpCRGxgC_16deltalake_derive24extract_field_attributes:bb.a
bb.dd:                                            ; preds = %bb.dc
  %i.fo = landingpad { ptr, i32 }
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
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1317, !noundef !12 ; 2 uses
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
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !1317, !nonnull !12, !noundef !12
  %i.i = load i64, ptr %i.a, align 8, !alias.scope !1317, !noundef !12 ; 2 uses
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
  store i64 %i.ak, ptr %i.a, align 8, !alias.scope !1317
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write9write_str(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #3 {
bb.a:
  tail call void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %2), !noalias !1323
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1324, !noalias !1323, !noundef !12 ; 3 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String8push_str.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !1324, !noalias !1323, !nonnull !12, !noundef !12
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %.pre.i.i = load i64, ptr %i.a, align 8, !alias.scope !1324, !noalias !1323
  br label %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String8push_str.exit

_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String8push_str.exit: ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %.pre.i.i, %bb.b ], [ %i.b, %bb.a ]
  %i.h = add i64 %i.g, %2
  store i64 %i.h, ptr %i.a, align 8, !alias.scope !1324, !noalias !1323
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !12, !noundef !12
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !12
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

_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit.thread: ; preds = %.split.us.i.i, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CshbKHpCRGxgC_16deltalake_derive.exit.backedge.us.i.i, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CshbKHpCRGxgC_16deltalake_derive.exit.backedge.us.i.i.preheader, %.lr.ph.split.us.i.i, %bb.q, %bb.b, %bb.bg, %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit
  %.sroa.0.0 = phi i8 [ 0, %bb.b ], [ %i.kd, %bb.bg ], [ %.sroa.0.025, %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit ], [ %.sroa.014.5.i, %bb.q ], [ 1, %.lr.ph.split.us.i.i ], [ 0, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CshbKHpCRGxgC_16deltalake_derive.exit.backedge.us.i.i.preheader ], [ 0, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CshbKHpCRGxgC_16deltalake_derive.exit.backedge.us.i.i ], [ 1, %.split.us.i.i ]
  %i.d = trunc nuw i8 %.sroa.0.0 to i1
  ret i1 %i.d

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %1, %3
  br i1 %i.e, label %bb.bg, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit.thread

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1365)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1366)
  %i.f = load i8, ptr %0, align 1, !alias.scope !1365, !noalias !1366, !noundef !12 ; 5 uses
  %i.g = add nsw i64 %1, -1                       ; 2 uses
  %i.h = tail call i64 @llvm.usub.sat.i64(i64 range(i64 3, 9) %1, i64 4) ; 4 uses
  %i.i = icmp samesign ult i64 %i.h, %1
  br i1 %i.i, label %.lr.ph, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit

bb.d:                                             ; preds = %.lr.ph
  %i.j = icmp ult i64 %i.h, %i.w
  br i1 %i.j, label %.lr.ph.1, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit

.lr.ph.1:                                         ; preds = %bb.d
  %i.k = add nsw i64 %1, -2                       ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !alias.scope !1365, !noalias !1367, !noundef !12 ; 2 uses
  %.not.i.not.i.i.1 = icmp eq i8 %i.m, %i.f
  br i1 %.not.i.not.i.i.1, label %bb.e, label %bb.h

bb.e:                                             ; preds = %.lr.ph.1
  %i.n = icmp ult i64 %i.h, %i.k
  br i1 %i.n, label %.lr.ph.2, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit

.lr.ph.2:                                         ; preds = %bb.e
  %i.o = add nsw i64 %1, -3                       ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !alias.scope !1365, !noalias !1367, !noundef !12 ; 2 uses
  %.not.i.not.i.i.2 = icmp eq i8 %i.q, %i.f
  br i1 %.not.i.not.i.i.2, label %bb.f, label %bb.h

bb.f:                                             ; preds = %.lr.ph.2
  %i.r = icmp ult i64 %i.h, %i.o
  br i1 %i.r, label %.lr.ph.3, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit

.lr.ph.3:                                         ; preds = %bb.f
  %i.s = add nsw i64 %1, -4                       ; 3 uses
  %i.t = icmp samesign ugt i64 %1, 3
  br i1 %i.t, label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CshbKHpCRGxgC_16deltalake_derive.exit.i.i.7, label %bb.g

_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CshbKHpCRGxgC_16deltalake_derive.exit.i.i.7: ; preds = %.lr.ph.3
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %i.s
  %i.v = load i8, ptr %i.u, align 1, !alias.scope !1365, !noalias !1367, !noundef !12 ; 2 uses
  %.not.i.not.i.i.7 = icmp eq i8 %i.v, %i.f
  br i1 %.not.i.not.i.i.7, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit, label %bb.h

.lr.ph:                                           ; preds = %bb.c
  %i.w = add nsw i64 %1, -1                       ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !alias.scope !1365, !noalias !1367, !noundef !12 ; 2 uses
  %.not.i.not.i.i = icmp eq i8 %i.y, %i.f
  br i1 %.not.i.not.i.i, label %bb.d, label %bb.h

bb.g:                                             ; preds = %.lr.ph.3
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.s, i64 noundef range(i64 3, 9) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #20, !noalias !1368
  unreachable

bb.h:                                             ; preds = %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CshbKHpCRGxgC_16deltalake_derive.exit.i.i.7, %.lr.ph.2, %.lr.ph.1, %.lr.ph
  %.lcssa317 = phi i8 [ %i.y, %.lr.ph ], [ %i.m, %.lr.ph.1 ], [ %i.q, %.lr.ph.2 ], [ %i.v, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CshbKHpCRGxgC_16deltalake_derive.exit.i.i.7 ]
  %.lcssa315 = phi i64 [ %i.w, %.lr.ph ], [ %i.k, %.lr.ph.1 ], [ %i.o, %.lr.ph.2 ], [ %i.s, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CshbKHpCRGxgC_16deltalake_derive.exit.i.i.7 ] ; 6 uses
  %i.z = add nuw nsw i64 %1, 15                   ; 3 uses
  %i.aa = icmp ult i64 %3, %i.z
  br i1 %i.aa, label %.lr.ph.split.us.i.i, label %bb.i

.lr.ph.split.us.i.i:                              ; preds = %bb.h
  %bcmp.i.i.us23.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %2, ptr noundef nonnull readonly dereferenceable(1) %0, i64 range(i64 3, 9) %1), !alias.scope !1369, !noalias !1370
  %i.ab = icmp eq i32 %bcmp.i.i.us23.i.i, 0
  br i1 %i.ab, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit.thread, label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CshbKHpCRGxgC_16deltalake_derive.exit.backedge.us.i.i.preheader

_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CshbKHpCRGxgC_16deltalake_derive.exit.backedge.us.i.i.preheader: ; preds = %.lr.ph.split.us.i.i
  %i.ac = add nsw i64 %3, -1                      ; 2 uses
  %.not28.i.i275 = icmp ugt i64 %1, %i.ac
  br i1 %.not28.i.i275, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit.thread, label %.split.us.i.i

.split.us.i.i:                                    ; preds = %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CshbKHpCRGxgC_16deltalake_derive.exit.backedge.us.i.i.preheader, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CshbKHpCRGxgC_16deltalake_derive.exit.backedge.us.i.i
  %i.ad = phi i64 [ %i.ag, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CshbKHpCRGxgC_16deltalake_derive.exit.backedge.us.i.i ], [ %i.ac, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CshbKHpCRGxgC_16deltalake_derive.exit.backedge.us.i.i.preheader ]
  %.pn.i276 = phi ptr [ %i.ae, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CshbKHpCRGxgC_16deltalake_derive.exit.backedge.us.i.i ], [ %2, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CshbKHpCRGxgC_16deltalake_derive.exit.backedge.us.i.i.preheader ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.pn.i276, i64 1 ; 2 uses
  %bcmp.i.i.us.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.ae, ptr noundef nonnull readonly dereferenceable(1) %0, i64 range(i64 3, 9) %1), !alias.scope !1369, !noalias !1370
  %i.af = icmp eq i32 %bcmp.i.i.us.i.i, 0
  br i1 %i.af, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit.thread, label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CshbKHpCRGxgC_16deltalake_derive.exit.backedge.us.i.i

_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CshbKHpCRGxgC_16deltalake_derive.exit.backedge.us.i.i: ; preds = %.split.us.i.i
  %i.ag = add nsw i64 %i.ad, -1                   ; 2 uses
  %.not28.i.i = icmp ugt i64 %1, %i.ag
  br i1 %.not28.i.i, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit.thread, label %.split.us.i.i

bb.i:                                             ; preds = %bb.h
  %i.ah = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.ai = shufflevector <16 x i8> %i.ah, <16 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.aj = insertelement <16 x i8> poison, i8 %.lcssa317, i64 0
  %i.ak = shufflevector <16 x i8> %i.aj, <16 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1369
  store ptr %2, ptr %i.a, align 8, !noalias !1369
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %3, ptr %i.am, align 8, !noalias !1369
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.al, ptr %i.an, align 8, !noalias !1369
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.g, ptr %i.ao, align 8, !noalias !1369
  %i.ap = add nuw nsw i64 %1, 63                  ; 2 uses
  %.not.i = icmp ult i64 %i.ap, %3
  br i1 %.not.i, label %.lr.ph.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.m, %bb.i
  %.sroa.014.0.lcssa.i = phi i8 [ 0, %bb.i ], [ %.sroa.014.2.3.i, %bb.m ] ; 2 uses
  %.sroa.06.0.lcssa.i = phi i64 [ 0, %bb.i ], [ %i.ck, %bb.m ] ; 2 uses
  %i.aq = add i64 %.sroa.06.0.lcssa.i, %i.z
  %i.ar = icmp uge i64 %i.aq, %3
  %i.as = trunc nuw i8 %.sroa.014.0.lcssa.i to i1 ; 2 uses
  %or.cond3100.i = select i1 %i.ar, i1 true, i1 %i.as
  br i1 %or.cond3100.i, label %._crit_edge.i, label %.lr.ph102.i

.lr.ph.i:                                         ; preds = %bb.i, %bb.m
  %.sroa.06.098.i = phi i64 [ %i.ck, %bb.m ], [ 0, %bb.i ] ; 6 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.06.098.i ; 5 uses
  %.sroa.0.0.copyload.i.i = load <16 x i8>, ptr %i.at, align 1, !alias.scope !1366, !noalias !1371
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %.lcssa315
  %.sroa.02.0.copyload.i.i = load <16 x i8>, ptr %i.au, align 1, !alias.scope !1366, !noalias !1371
  %i.av = icmp eq <16 x i8> %.sroa.0.0.copyload.i.i, %i.ai
  %i.aw = icmp eq <16 x i8> %.sroa.02.0.copyload.i.i, %i.ak
  %i.ax = and <16 x i1> %i.av, %i.aw
  %i.ay = bitcast <16 x i1> %i.ax to i16          ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i.1.i = load <16 x i8>, ptr %i.az, align 1, !alias.scope !1366, !noalias !1371
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %.lcssa315
  %.sroa.02.0.copyload.i.1.i = load <16 x i8>, ptr %i.ba, align 1, !alias.scope !1366, !noalias !1371
  %i.bb = icmp eq <16 x i8> %.sroa.0.0.copyload.i.1.i, %i.ai
  %i.bc = icmp eq <16 x i8> %.sroa.02.0.copyload.i.1.i, %i.ak
  %i.bd = and <16 x i1> %i.bb, %i.bc
  %i.be = bitcast <16 x i1> %i.bd to i16          ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.at, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i.2.i = load <16 x i8>, ptr %i.bf, align 1, !alias.scope !1366, !noalias !1371
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %.lcssa315
  %.sroa.02.0.copyload.i.2.i = load <16 x i8>, ptr %i.bg, align 1, !alias.scope !1366, !noalias !1371
  %i.bh = icmp eq <16 x i8> %.sroa.0.0.copyload.i.2.i, %i.ai
  %i.bi = icmp eq <16 x i8> %.sroa.02.0.copyload.i.2.i, %i.ak
  %i.bj = and <16 x i1> %i.bh, %i.bi
  %i.bk = bitcast <16 x i1> %i.bj to i16          ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.at, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i.3.i = load <16 x i8>, ptr %i.bl, align 1, !alias.scope !1366, !noalias !1371
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %.lcssa315
  %.sroa.02.0.copyload.i.3.i = load <16 x i8>, ptr %i.bm, align 1, !alias.scope !1366, !noalias !1371
  %i.bn = icmp eq <16 x i8> %.sroa.0.0.copyload.i.3.i, %i.ai
  %i.bo = icmp eq <16 x i8> %.sroa.02.0.copyload.i.3.i, %i.ak
  %i.bp = and <16 x i1> %i.bn, %i.bo
  %i.bq = bitcast <16 x i1> %i.bp to i16          ; 2 uses
  %i.br = icmp eq i16 %i.ay, 0
  br i1 %i.br, label %.preheader91.1.i, label %bb.n

.preheader91.1.i:                                 ; preds = %bb.n, %.lr.ph.i
  %.sroa.014.2.i = phi i8 [ 0, %.lr.ph.i ], [ %i.cp, %bb.n ] ; 3 uses
  %i.bs = icmp eq i16 %i.be, 0
  br i1 %i.bs, label %.preheader91.2.i, label %bb.j

bb.j:                                             ; preds = %.preheader91.1.i
  %i.bt = or disjoint i64 %.sroa.06.098.i, 16
  %i.bu = trunc nuw i8 %.sroa.014.2.i to i1
  %i.bv = call fastcc noundef zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0CshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.bt, i16 noundef %i.be, i1 noundef zeroext %i.bu) #22
  %i.bw = zext i1 %i.bv to i8
  %i.bx = or i8 %.sroa.014.2.i, %i.bw
  br label %.preheader91.2.i

.preheader91.2.i:                                 ; preds = %bb.j, %.preheader91.1.i
  %.sroa.014.2.1.i = phi i8 [ %.sroa.014.2.i, %.preheader91.1.i ], [ %i.bx, %bb.j ] ; 3 uses
  %i.by = icmp eq i16 %i.bk, 0
  br i1 %i.by, label %.preheader91.3.i, label %bb.k

bb.k:                                             ; preds = %.preheader91.2.i
  %i.bz = or disjoint i64 %.sroa.06.098.i, 32
  %i.ca = trunc nuw i8 %.sroa.014.2.1.i to i1
  %i.cb = call fastcc noundef zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0CshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.bz, i16 noundef %i.bk, i1 noundef zeroext %i.ca) #22
  %i.cc = zext i1 %i.cb to i8
  %i.cd = or i8 %.sroa.014.2.1.i, %i.cc
  br label %.preheader91.3.i

.preheader91.3.i:                                 ; preds = %bb.k, %.preheader91.2.i
  %.sroa.014.2.2.i = phi i8 [ %.sroa.014.2.1.i, %.preheader91.2.i ], [ %i.cd, %bb.k ] ; 3 uses
  %i.ce = icmp eq i16 %i.bq, 0
  br i1 %i.ce, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.preheader91.3.i
  %i.cf = or disjoint i64 %.sroa.06.098.i, 48
  %i.cg = trunc nuw i8 %.sroa.014.2.2.i to i1
  %i.ch = call fastcc noundef zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0CshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.cf, i16 noundef %i.bq, i1 noundef zeroext %i.cg) #22
  %i.ci = zext i1 %i.ch to i8
  %i.cj = or i8 %.sroa.014.2.2.i, %i.ci
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.preheader91.3.i
  %.sroa.014.2.3.i = phi i8 [ %.sroa.014.2.2.i, %.preheader91.3.i ], [ %i.cj, %bb.l ] ; 2 uses
  %i.ck = add i64 %.sroa.06.098.i, 64             ; 3 uses
  %i.cl = add i64 %i.ck, %i.ap
  %i.cm = icmp uge i64 %i.cl, %3
  %i.cn = trunc nuw i8 %.sroa.014.2.3.i to i1
  %or.cond.i = select i1 %i.cm, i1 true, i1 %i.cn
  br i1 %or.cond.i, label %.preheader.i, label %.lr.ph.i

bb.n:                                             ; preds = %.lr.ph.i
  %i.co = call fastcc noundef zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0CshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.sroa.06.098.i, i16 noundef %i.ay, i1 noundef zeroext false) #22
  %i.cp = zext i1 %i.co to i8
  br label %.preheader91.1.i

._crit_edge.i:                                    ; preds = %bb.o, %.preheader.i
  %.sroa.014.3.lcssa.i = phi i8 [ %.sroa.014.0.lcssa.i, %.preheader.i ], [ %.sroa.014.4.i, %bb.o ] ; 2 uses
  %.lcssa.i = phi i1 [ %i.as, %.preheader.i ], [ %i.dj, %bb.o ]
  %i.cq = sub nuw i64 %3, %i.g
  %i.cr = add i64 %i.cq, -16                      ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 %i.cr ; 2 uses
  %.sroa.0.0.copyload.i58.i = load <16 x i8>, ptr %i.cs, align 1, !alias.scope !1366, !noalias !1372
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.lcssa315
  %.sroa.02.0.copyload.i59.i = load <16 x i8>, ptr %i.ct, align 1, !alias.scope !1366, !noalias !1372
  %i.cu = icmp eq <16 x i8> %.sroa.0.0.copyload.i58.i, %i.ai
  %i.cv = icmp eq <16 x i8> %.sroa.02.0.copyload.i59.i, %i.ak
  %i.cw = and <16 x i1> %i.cu, %i.cv
  %i.cx = bitcast <16 x i1> %i.cw to i16          ; 2 uses
  %i.cy = icmp eq i16 %i.cx, 0
  br i1 %i.cy, label %bb.q, label %bb.r

.lr.ph102.i:                                      ; preds = %.preheader.i, %bb.o
  %.sroa.06.1101.i = phi i64 [ %i.dg, %bb.o ], [ %.sroa.06.0.lcssa.i, %.preheader.i ] ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.06.1101.i ; 2 uses
  %.sroa.0.0.copyload.i60.i = load <16 x i8>, ptr %i.cz, align 1, !alias.scope !1366, !noalias !1373
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 %.lcssa315
  %.sroa.02.0.copyload.i61.i = load <16 x i8>, ptr %i.da, align 1, !alias.scope !1366, !noalias !1373
  %i.db = icmp eq <16 x i8> %.sroa.0.0.copyload.i60.i, %i.ai
  %i.dc = icmp eq <16 x i8> %.sroa.02.0.copyload.i61.i, %i.ak
  %i.dd = and <16 x i1> %i.db, %i.dc
  %i.de = bitcast <16 x i1> %i.dd to i16          ; 2 uses
  %i.df = icmp eq i16 %i.de, 0
  br i1 %i.df, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.p, %.lr.ph102.i
  %.sroa.014.4.i = phi i8 [ 0, %.lr.ph102.i ], [ %i.dl, %bb.p ] ; 2 uses
  %i.dg = add i64 %.sroa.06.1101.i, 16            ; 2 uses
  %i.dh = add i64 %i.dg, %i.z
  %i.di = icmp uge i64 %i.dh, %3
  %i.dj = trunc nuw i8 %.sroa.014.4.i to i1       ; 2 uses
  %or.cond3.i = or i1 %i.di, %i.dj
  br i1 %or.cond3.i, label %._crit_edge.i, label %.lr.ph102.i

bb.p:                                             ; preds = %.lr.ph102.i
  %i.dk = call fastcc noundef zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0CshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.sroa.06.1101.i, i16 noundef %i.de, i1 noundef zeroext false) #22
  %i.dl = zext i1 %i.dk to i8
  br label %bb.o

bb.q:                                             ; preds = %bb.r, %._crit_edge.i
  %.sroa.014.5.i = phi i8 [ %.sroa.014.3.lcssa.i, %._crit_edge.i ], [ %i.do, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1369
  br label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit.thread

bb.r:                                             ; preds = %._crit_edge.i
  %i.dm = call fastcc noundef zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0CshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.cr, i16 noundef %i.cx, i1 noundef zeroext %.lcssa.i) #22
  %i.dn = zext i1 %i.dm to i8
  %i.do = or i8 %.sroa.014.3.lcssa.i, %i.dn
  br label %bb.q

_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit: ; preds = %bb.d, %bb.e, %bb.f, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CshbKHpCRGxgC_16deltalake_derive.exit.i.i.7, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsu_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcher3new(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1374)
  %i.dp = load i64, ptr %i.b, align 8, !range !25, !alias.scope !1374, !noalias !1375, !noundef !12
  %i.dq = trunc nuw i64 %i.dp to i1
  %i.dr = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  br i1 %i.dq, label %bb.ab, label %.preheader.i4

.preheader.i4:                                    ; preds = %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit
  %i.ds = getelementptr inbounds nuw i8, ptr %i.b, i64 26
  %i.dt = load i8, ptr %i.ds, align 2, !range !1376, !alias.scope !1377, !noalias !1378, !noundef !12
  %i.du = trunc nuw i8 %i.dt to i1
  br i1 %i.du, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %.lr.ph.i5

.lr.ph.i5:                                        ; preds = %.preheader.i4
  %.promoted.i = load i64, ptr %i.dr, align 8, !alias.scope !1374, !noalias !1375 ; 12 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.dw = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.dx = load ptr, ptr %i.dw, align 8, !alias.scope !1377, !noalias !1378, !nonnull !12, !noundef !12 ; 5 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.dz = load i64, ptr %i.dy, align 8, !alias.scope !1377, !noalias !1378, !noundef !12 ; 14 uses
  %.promoted26.i = load i8, ptr %i.dv, align 8, !alias.scope !1377, !noalias !1378 ; 2 uses
  %i.ea = trunc nuw i8 %.promoted26.i to i1
  %i.eb = icmp eq i64 %.promoted.i, 0
  br i1 %i.eb, label %bb.u, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i5
  %.not.i.i.i.peel = icmp ult i64 %.promoted.i, %i.dz
  br i1 %.not.i.i.i.peel, label %bb.t, label %.split.i.i.i.peel

.split.i.i.i.peel:                                ; preds = %bb.s
  %i.ec = icmp eq i64 %.promoted.i, %i.dz
  br i1 %i.ec, label %bb.u, label %.loopexit

bb.t:                                             ; preds = %bb.s
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dx, i64 %.promoted.i
  %i.ee = load i8, ptr %i.ed, align 1, !alias.scope !1379, !noalias !1380, !noundef !12
  %i.ef = icmp sgt i8 %i.ee, -65
  br i1 %i.ef, label %bb.u, label %.loopexit

bb.u:                                             ; preds = %bb.t, %.split.i.i.i.peel, %.lr.ph.i5
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dx, i64 %.promoted.i ; 4 uses
  %i.eh = icmp samesign eq i64 %.promoted.i, %i.dz
  br i1 %i.eh, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ei = load i8, ptr %i.eg, align 1, !noalias !1381, !noundef !12 ; 5 uses
  %i.ej = icmp sgt i8 %i.ei, -1
  br i1 %i.ej, label %bb.w, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit12.i.i.i.peel

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit12.i.i.i.peel: ; preds = %bb.v
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eg, i64 1
  %i.el = and i8 %i.ei, 31
  %i.em = zext nneg i8 %i.el to i32               ; 3 uses
  %i.en = add nuw nsw i64 %.promoted.i, 1
  %i.eo = icmp samesign ne i64 %i.en, %i.dz
  tail call void @llvm.assume(i1 %i.eo)
  %i.ep = load i8, ptr %i.ek, align 1, !noalias !1381, !noundef !12
  %i.eq = shl nuw nsw i32 %i.em, 6
  %i.er = and i8 %i.ep, 63
  %i.es = zext nneg i8 %i.er to i32               ; 2 uses
  %i.et = or disjoint i32 %i.eq, %i.es
  %i.eu = icmp samesign ugt i8 %i.ei, -33
  br i1 %i.eu, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit14.i.i.i.peel, label %bb.x

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit14.i.i.i.peel: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit12.i.i.i.peel
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eg, i64 2
  %i.ew = add nuw nsw i64 %.promoted.i, 2
  %i.ex = icmp samesign ne i64 %i.ew, %i.dz
  tail call void @llvm.assume(i1 %i.ex)
  %i.ey = load i8, ptr %i.ev, align 1, !noalias !1381, !noundef !12
  %i.ez = shl nuw nsw i32 %i.es, 6
  %i.fa = and i8 %i.ey, 63
  %i.fb = zext nneg i8 %i.fa to i32
  %i.fc = or disjoint i32 %i.ez, %i.fb            ; 2 uses
  %i.fd = shl nuw nsw i32 %i.em, 12
  %i.fe = or disjoint i32 %i.fc, %i.fd
  %i.ff = icmp samesign ugt i8 %i.ei, -17
  br i1 %i.ff, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit16.i.i.i.peel, label %bb.x

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit16.i.i.i.peel: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit14.i.i.i.peel
  %i.fg = getelementptr inbounds nuw i8, ptr %i.eg, i64 3
  %i.fh = add nuw nsw i64 %.promoted.i, 3
  %i.fi = icmp samesign ne i64 %i.fh, %i.dz
  tail call void @llvm.assume(i1 %i.fi)
  %i.fj = load i8, ptr %i.fg, align 1, !noalias !1381, !noundef !12
  %i.fk = shl nuw nsw i32 %i.em, 18
  %i.fl = and i32 %i.fk, 1835008
  %i.fm = shl nuw nsw i32 %i.fc, 6
  %i.fn = and i8 %i.fj, 63
  %i.fo = zext nneg i8 %i.fn to i32
  %i.fp = or disjoint i32 %i.fm, %i.fo
  %i.fq = or disjoint i32 %i.fp, %i.fl
  br label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.fr = zext nneg i8 %i.ei to i32
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit16.i.i.i.peel, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit14.i.i.i.peel, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit12.i.i.i.peel
  %.sroa.4.0.i.ph.i.i.peel = phi i32 [ %i.fe, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit14.i.i.i.peel ], [ %i.fq, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit16.i.i.i.peel ], [ %i.et, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit12.i.i.i.peel ], [ %i.fr, %bb.w ] ; 4 uses
  %i.fs = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 1114112
  tail call void @llvm.assume(i1 %i.fs)
  br i1 %i.ea, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ft = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 128
  br i1 %i.ft, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fu = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 2048
  br i1 %i.fu, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fv = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 65536
  %..i.i.peel = select i1 %i.fv, i64 3, i64 4
  br label %bb.ac

bb.ab:                                            ; preds = %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit
  %i.fw = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.fx = load i64, ptr %i.fw, align 8, !alias.scope !1374, !noalias !1375, !noundef !12 ; 2 uses
  %i.fy = icmp eq i64 %i.fx, -1
  %i.fz = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.ga = load ptr, ptr %i.fz, align 8, !alias.scope !1374, !noalias !1375, !nonnull !12, !noundef !12 ; 6 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.gc = load i64, ptr %i.gb, align 8, !alias.scope !1374, !noalias !1375, !noundef !12 ; 14 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.ge = load ptr, ptr %i.gd, align 8, !alias.scope !1374, !noalias !1375, !nonnull !12, !noundef !12 ; 4 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.gg = load i64, ptr %i.gf, align 8, !alias.scope !1374, !noalias !1375, !noundef !12 ; 12 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.gi = add nsw i64 %i.gg, -1                   ; 4 uses
  br i1 %i.fy, label %bb.ah, label %bb.at

bb.ac:                                            ; preds = %bb.y, %bb.z, %bb.aa
  %.sroa.01.0.i.i.peel = phi i64 [ 2, %bb.z ], [ %..i.i.peel, %bb.aa ], [ 1, %bb.y ]
  %i.gj = add i64 %.sroa.01.0.i.i.peel, %.promoted.i ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1382)
  %i.gk = icmp eq i64 %i.gj, 0
  br i1 %i.gk, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.not.i.i.i = icmp ult i64 %i.gj, %i.dz
  br i1 %.not.i.i.i, label %bb.ae, label %.split.i.i.i

.split.i.i.i:                                     ; preds = %bb.ad
  %i.gl = icmp eq i64 %i.gj, %i.dz
  br i1 %i.gl, label %bb.af, label %.loopexit

bb.ae:                                            ; preds = %bb.ad
  %i.gm = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.gj
  %i.gn = load i8, ptr %i.gm, align 1, !alias.scope !1379, !noalias !1383, !noundef !12
  %i.go = icmp sgt i8 %i.gn, -65
  br i1 %i.go, label %bb.af, label %.loopexit

bb.af:                                            ; preds = %bb.ae, %.split.i.i.i, %bb.ac
  %i.gp = icmp samesign eq i64 %i.gj, %i.dz
  br i1 %i.gp, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gq = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.gj
  %i.gr = load i8, ptr %i.gq, align 1, !noalias !1384, !noundef !12 ; 3 uses
  %i.gs = icmp sgt i8 %i.gr, -1
  br i1 %i.gs, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit12.i.i.i

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit12.i.i.i: ; preds = %bb.ag
  %i.gt = add nuw nsw i64 %i.gj, 1
  %i.gu = icmp samesign ne i64 %i.gt, %i.dz
  tail call void @llvm.assume(i1 %i.gu)
  %i.gv = icmp samesign ugt i8 %i.gr, -33
  br i1 %i.gv, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit14.i.i.i, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit14.i.i.i: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit12.i.i.i
  %i.gw = add nuw nsw i64 %i.gj, 2
  %i.gx = icmp samesign ne i64 %i.gw, %i.dz
  tail call void @llvm.assume(i1 %i.gx)
  %i.gy = icmp samesign ugt i8 %i.gr, -17
  br i1 %i.gy, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit16.i.i.i, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit16.i.i.i: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit14.i.i.i
  %i.gz = add nuw nsw i64 %i.gj, 3
  %i.ha = icmp samesign ne i64 %i.gz, %i.dz
  tail call void @llvm.assume(i1 %i.ha)
  br label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.loopexit:                                        ; preds = %bb.ae, %.split.i.i.i, %bb.t, %.split.i.i.i.peel
  %.lcssa144 = phi i64 [ %.promoted.i, %.split.i.i.i.peel ], [ %.promoted.i, %bb.t ], [ %i.gj, %.split.i.i.i ], [ %i.gj, %bb.ae ]
  tail call void @_RNvNtCsbvkFyIu7lgC_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.dx, i64 noundef %i.dz, i64 noundef %.lcssa144, i64 noundef %i.dz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #20, !noalias !1383
  unreachable

bb.ah:                                            ; preds = %bb.ab
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1385)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1386)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1387)
  %.promoted.i11 = load i64, ptr %i.gh, align 8, !alias.scope !1385, !noalias !1388 ; 2 uses
  %i.hb = add i64 %.promoted.i11, %i.gi           ; 2 uses
  %i.hc = icmp ult i64 %i.hb, %i.gc
  br i1 %i.hc, label %.lr.ph.i14, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.lr.ph.i14:                                       ; preds = %bb.ah
end_hunk_0
